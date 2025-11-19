void *sub_275CB3C24(void *a1, uint64_t *a2)
{
  v3 = sub_275CB3A2C(a1, *a2);
  sub_275C8FAB8((v3 + 4));
  return a1;
}

void sub_275CB3C58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

double sub_275CB3F9C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *a1 = &unk_2884CB690;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 0u;
  *(a1 + 32) = a1 + 40;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = a1 + 64;
  *(a1 + 80) = a1 + 88;
  *(a1 + 112) = 0u;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = a1 + 136;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0u;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 200) = a1 + 208;
  *(a1 + 224) = a1 + 232;
  *(a1 + 256) = 0u;
  *(a1 + 248) = a1 + 256;
  *(a1 + 280) = 0u;
  *(a1 + 272) = a1 + 280;
  *(a1 + 304) = 0u;
  *(a1 + 296) = a1 + 304;
  *(a1 + 328) = 0u;
  *(a1 + 320) = a1 + 328;
  *(a1 + 352) = 0u;
  *(a1 + 344) = a1 + 352;
  *(a1 + 376) = 0u;
  *(a1 + 368) = a1 + 376;
  *(a1 + 400) = 0u;
  *(a1 + 392) = a1 + 400;
  *(a1 + 424) = 0u;
  *(a1 + 416) = a1 + 424;
  *(a1 + 448) = 0u;
  *(a1 + 440) = a1 + 448;
  *(a1 + 472) = 0u;
  *(a1 + 464) = a1 + 472;
  *(a1 + 496) = 0u;
  *(a1 + 488) = a1 + 496;
  *(a1 + 520) = 0u;
  *(a1 + 512) = a1 + 520;
  *(a1 + 544) = 0u;
  *(a1 + 536) = a1 + 544;
  return result;
}

void sub_275CB40D4(uint64_t a1)
{
  sub_275CB410C(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CB410C(uint64_t a1)
{
  *a1 = &unk_2884CB690;
  sub_275CB4260(a1 + 536, *(a1 + 544));
  sub_275C8EC0C(a1 + 512, *(a1 + 520));
  sub_275C8EC0C(a1 + 488, *(a1 + 496));
  sub_275C8EC0C(a1 + 464, *(a1 + 472));
  sub_275C8EC0C(a1 + 440, *(a1 + 448));
  sub_275C8EC0C(a1 + 416, *(a1 + 424));
  sub_275C8EC0C(a1 + 392, *(a1 + 400));
  sub_275C8EC0C(a1 + 368, *(a1 + 376));
  sub_275C8EC0C(a1 + 344, *(a1 + 352));
  sub_275C8EC0C(a1 + 320, *(a1 + 328));
  sub_275C8EC0C(a1 + 296, *(a1 + 304));
  sub_275CB42F0(a1 + 272, *(a1 + 280));
  sub_275CB42F0(a1 + 248, *(a1 + 256));
  sub_275CB42F0(a1 + 224, *(a1 + 232));
  sub_275CB42F0(a1 + 200, *(a1 + 208));
  sub_275C8EC0C(a1 + 176, *(a1 + 184));
  sub_275C8EC0C(a1 + 152, *(a1 + 160));
  sub_275C8EC0C(a1 + 128, *(a1 + 136));
  sub_275CB4354(a1 + 104, *(a1 + 112));
  sub_275CB43B4(a1 + 80, *(a1 + 88));
  sub_275CB42F0(a1 + 56, *(a1 + 64));
  sub_275C8EC0C(a1 + 32, *(a1 + 40));
  sub_275C8EC0C(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_275CB4260(uint64_t a1, const void **a2)
{
  if (a2)
  {
    sub_275CB4260(a1, *a2);
    sub_275CB4260(a1, a2[1]);
    sub_275CB42BC(a2 + 6);

    operator delete(a2);
  }
}

const void **sub_275CB42BC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_275CB42F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_275CB42F0(a1, *a2);
    sub_275CB42F0(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_275CB4354(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_275CB4354(a1, *a2);
    sub_275CB4354(a1, *(a2 + 1));
    v4 = (a2 + 48);
    sub_275C97BF0(&v4);
    operator delete(a2);
  }
}

void sub_275CB43B4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_275CB43B4(a1, *a2);
    sub_275CB43B4(a1, *(a2 + 1));
    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

uint64_t sub_275CB4AC0(uint64_t result)
{
  for (i = 0; i != 128; i += 16)
  {
    v2 = result + i;
    *v2 = 1;
    *(v2 + 8) = 0;
  }

  for (j = 0; j != 128; j += 16)
  {
    v4 = result + j;
    *(v4 + 128) = 1;
    *(v4 + 136) = 0;
  }

  for (k = 0; k != 128; k += 16)
  {
    v6 = result + k;
    *(v6 + 256) = 1;
    *(v6 + 264) = 0;
  }

  do
  {
    v7 = result + k;
    *(v7 - 128) = 0;
    *(v7 - 120) = 0;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 128) = 0;
    k += 16;
    *(v7 + 136) = 0;
  }

  while (k != 256);
  return result;
}

double sub_275CB4B4C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *a2;
  if (*a2 <= 2)
  {
    if (v5)
    {
      if (v5 >= 1)
      {
        ++v5;
      }
    }

    else
    {
      v5 = *(a2 + 8) ^ 1;
    }
  }

  else
  {
    v5 = 3;
  }

  v6 = (a1 + 16 * (*(a2 + 9) | (2 * (v5 & ~(v5 >> 63)))));
  if ((*v6 & 0xFFFFFFFD) != 0)
  {
    v7 = sub_275CBB140(v6, *(a2 + 16), a3);
  }

  else
  {
    v7 = 0.0;
  }

  if ((v6[32] & 0xFFFFFFFD) != 0)
  {
    v8 = sub_275CBB140((v6 + 32), *(a2 + 16), a3);
    if (v7 < v8)
    {
      v7 = v8;
    }
  }

  if ((v6[64] & 0xFFFFFFFD) != 0)
  {
    v9 = sub_275CBB140((v6 + 32), *(a2 + 16), a3);
    if (v7 > v9)
    {
      return v9;
    }
  }

  return v7;
}

uint64_t sub_275CB4C38(const std::string *a1, __int128 *a2)
{
  sub_275CB4AC0(&v83);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v5->__r_.__value_.__s.__data_[v6];
    v12 = v7 > 0x20;
    v8 = (1 << v7) & 0x100000600;
    if (v12 || v8 == 0)
    {
      break;
    }

    if (size == ++v6)
    {
      return 0;
    }
  }

  if (v6 == -1)
  {
    return 0;
  }

  v77 = a2;
  v79 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v11 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    v12 = v11 < 0;
    if (v11 >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = a1->__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      v14 = a1->__r_.__value_.__l.__size_;
    }

    else
    {
      v14 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    if (v14 <= v6)
    {
LABEL_33:
      v18 = -1;
    }

    else
    {
      v15 = (v13 + v14);
      v16 = (v13 + v6);
LABEL_24:
      v17 = 0;
      while (*v16 != asc_275D3016D[v17])
      {
        if (++v17 == 3)
        {
          if (++v16 != v15)
          {
            goto LABEL_24;
          }

          goto LABEL_33;
        }
      }

      if (v16 == v15)
      {
        goto LABEL_33;
      }

      v18 = &v16[-v13];
      v19 = &v16[-v13 - v6];
      if (v18 != -1)
      {
        v14 = v19;
      }
    }

    std::string::basic_string(&__str, a1, v6, v14, &v81);
    v20 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v20 & 0x80u) == 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = a1->__r_.__value_.__r.__words[0];
    }

    if ((v20 & 0x80u) != 0)
    {
      v20 = a1->__r_.__value_.__l.__size_;
    }

    if (v20 <= v18)
    {
LABEL_45:
      v6 = -1;
    }

    else
    {
      while (1)
      {
        v22 = v21->__r_.__value_.__s.__data_[v18];
        v12 = v22 > 0x20;
        v23 = (1 << v22) & 0x100000600;
        if (v12 || v23 == 0)
        {
          break;
        }

        if (v20 == ++v18)
        {
          goto LABEL_45;
        }
      }

      v6 = v18;
    }

    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = __str.__r_.__value_.__l.__size_;
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (!v26)
    {
      goto LABEL_58;
    }

    v27 = 0;
    while (p_str->__r_.__value_.__s.__data_[0] != 61)
    {
      p_str = (p_str + 1);
      if (-v26 == --v27)
      {
        goto LABEL_58;
      }
    }

    if (!(v27 + v26))
    {
LABEL_58:
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v28 = -1;
      goto LABEL_59;
    }

    v28 = -v27;
    if (v27)
    {
      if (v28 == -1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        goto LABEL_59;
      }

      v29 = HIBYTE(p_str[-1].__r_.__value_.__r.__words[2]) == 39;
    }

    else
    {
      v29 = 0;
    }

    std::string::basic_string(&v81, &__str, 0, (v29 << 63 >> 63) - v27, &v80);
    if ((*(&v81.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      if (HIBYTE(v81.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v81.__r_.__value_.__r.__words[2]) != 3)
        {
          if (HIBYTE(v81.__r_.__value_.__r.__words[2]) != 4)
          {
            goto LABEL_168;
          }

          if (LODWORD(v81.__r_.__value_.__l.__data_) == 1852403012)
          {
            goto LABEL_118;
          }

          if (LODWORD(v81.__r_.__value_.__l.__data_) == 2019650884)
          {
LABEL_136:
            v32 = 0;
            v31 = 0;
            v30 = 1;
            goto LABEL_172;
          }

          goto LABEL_100;
        }

        if (LOWORD(v81.__r_.__value_.__l.__data_) == 26989 && v81.__r_.__value_.__s.__data_[2] == 110)
        {
          goto LABEL_118;
        }

LABEL_96:
        if (LOWORD(v81.__r_.__value_.__l.__data_) == 24941 && v81.__r_.__value_.__s.__data_[2] == 120)
        {
          goto LABEL_136;
        }

LABEL_100:
        if (HIBYTE(v81.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_168;
        }

LABEL_139:
        if (LODWORD(v81.__r_.__value_.__l.__data_) == 1852403028)
        {
LABEL_140:
          v30 = 0;
          v31 = 1;
LABEL_157:
          v32 = 2;
          goto LABEL_172;
        }

LABEL_144:
        if (LODWORD(v81.__r_.__value_.__l.__data_) == 2019650900)
        {
          goto LABEL_156;
        }

LABEL_145:
        if (HIBYTE(v81.__r_.__value_.__r.__words[2]) == 1)
        {
          goto LABEL_149;
        }

        if (HIBYTE(v81.__r_.__value_.__r.__words[2]) == 4)
        {
          if (LODWORD(v81.__r_.__value_.__l.__data_) == 1852403027)
          {
            goto LABEL_182;
          }

LABEL_164:
          v48 = &v81;
LABEL_167:
          if (LODWORD(v48->__r_.__value_.__l.__data_) != 2019650899)
          {
            goto LABEL_168;
          }

          v31 = 0;
          v30 = 1;
LABEL_184:
          v32 = 4;
          goto LABEL_172;
        }

        goto LABEL_168;
      }

      v43 = v81.__r_.__value_.__s.__data_[0];
      if (v81.__r_.__value_.__s.__data_[0] == 68)
      {
        goto LABEL_138;
      }

      goto LABEL_142;
    }

    if (v81.__r_.__value_.__l.__size_ == 1 && *v81.__r_.__value_.__l.__data_ == 68)
    {
LABEL_138:
      v32 = 0;
      v31 = 0;
      v30 = 0;
      goto LABEL_172;
    }

    if (v81.__r_.__value_.__l.__size_ == 4 && *v81.__r_.__value_.__l.__data_ == 1852403012)
    {
      goto LABEL_118;
    }

    v41 = v81.__r_.__value_.__l.__size_;
    if (v81.__r_.__value_.__l.__size_ == 4)
    {
      if (*v81.__r_.__value_.__l.__data_ == 2019650884)
      {
        goto LABEL_136;
      }

      v41 = v81.__r_.__value_.__l.__size_;
    }

    if (v41 == 3)
    {
      if (*v81.__r_.__value_.__l.__data_ == 26989 && *(v81.__r_.__value_.__r.__words[0] + 2) == 110)
      {
LABEL_118:
        v32 = 0;
        v30 = 0;
        v31 = 1;
LABEL_172:
        v47 = 1;
        goto LABEL_173;
      }

      if ((*(&v81.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        if (HIBYTE(v81.__r_.__value_.__r.__words[2]) != 1)
        {
          if (HIBYTE(v81.__r_.__value_.__r.__words[2]) == 4)
          {
            goto LABEL_139;
          }

          if (HIBYTE(v81.__r_.__value_.__r.__words[2]) != 3)
          {
            goto LABEL_168;
          }

          goto LABEL_96;
        }

        v43 = v81.__r_.__value_.__s.__data_[0];
LABEL_142:
        if (v43 == 84)
        {
LABEL_143:
          v31 = 0;
          v30 = 0;
          v47 = 1;
          v32 = 2;
          goto LABEL_173;
        }

LABEL_149:
        if (v81.__r_.__value_.__s.__data_[0] == 83)
        {
          goto LABEL_155;
        }

        goto LABEL_168;
      }
    }

    v44 = v81.__r_.__value_.__l.__size_;
    if (v81.__r_.__value_.__l.__size_ == 3)
    {
      if (*v81.__r_.__value_.__l.__data_ == 24941 && *(v81.__r_.__value_.__r.__words[0] + 2) == 120)
      {
        goto LABEL_136;
      }

      v44 = v81.__r_.__value_.__l.__size_;
    }

    if (v44 == 1)
    {
      if (*v81.__r_.__value_.__l.__data_ == 84)
      {
        goto LABEL_143;
      }

      if ((*(&v81.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_145;
      }
    }

    v46 = v81.__r_.__value_.__l.__size_;
    if (v81.__r_.__value_.__l.__size_ == 4)
    {
      if (*v81.__r_.__value_.__l.__data_ == 1852403028)
      {
        goto LABEL_140;
      }

      if ((*(&v81.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        if (HIBYTE(v81.__r_.__value_.__r.__words[2]) == 1)
        {
          goto LABEL_149;
        }

        if (HIBYTE(v81.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_168;
        }

        goto LABEL_144;
      }

      if (*v81.__r_.__value_.__l.__data_ == 2019650900)
      {
LABEL_156:
        v31 = 0;
        v30 = 1;
        goto LABEL_157;
      }

      v46 = v81.__r_.__value_.__l.__size_;
    }

    if (v46 == 1)
    {
      if (*v81.__r_.__value_.__l.__data_ == 83)
      {
LABEL_155:
        v31 = 0;
        v30 = 0;
        v47 = 1;
        v32 = 4;
        goto LABEL_173;
      }

      if ((*(&v81.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_168;
      }

      v46 = v81.__r_.__value_.__l.__size_;
    }

    if (v46 != 4)
    {
      goto LABEL_165;
    }

    if (*v81.__r_.__value_.__l.__data_ == 1852403027)
    {
LABEL_182:
      v30 = 0;
      v31 = 1;
      goto LABEL_184;
    }

    if ((*(&v81.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_165:
      if (v81.__r_.__value_.__l.__size_ == 4)
      {
        v48 = v81.__r_.__value_.__r.__words[0];
        goto LABEL_167;
      }
    }

    else if (HIBYTE(v81.__r_.__value_.__r.__words[2]) == 4)
    {
      goto LABEL_164;
    }

LABEL_168:
    if (!sub_275CB5558(&v81, "SS"))
    {
      if (!sub_275CB5558(&v81, "SSmin"))
      {
        v52 = sub_275CB5558(&v81, "SSmax");
        v30 = v52;
        v31 = 0;
        if (v52)
        {
          v32 = 6;
        }

        else
        {
          v32 = 0;
        }

        v47 = v52;
        goto LABEL_173;
      }

      v30 = 0;
      v31 = 1;
      v32 = 6;
      goto LABEL_172;
    }

    v31 = 0;
    v30 = 0;
    v47 = 1;
    v32 = 6;
LABEL_173:
    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      v78 = v28;
      v49 = v29;
      v50 = v47;
      operator delete(v81.__r_.__value_.__l.__data_);
      v51 = v50;
      LODWORD(v29) = v49;
      v28 = v78;
      if (!v51)
      {
LABEL_177:
        v37 = 0;
        goto LABEL_75;
      }
    }

    else if (!v47)
    {
      goto LABEL_177;
    }

    v29 = v29;
LABEL_59:
    std::string::basic_string(&v81, &__str, v28 + 1, 0xFFFFFFFFFFFFFFFFLL, &v80);
    sub_275CBB09C(&v80, &v81, 1);
    if ((v80 & 0xFFFFFFFD) != 0)
    {
      v33 = v79;
      if (v32 + v29 >= v79)
      {
        v34 = v79;
      }

      else
      {
        v34 = v32 + v29;
      }

      if (v79 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = v32 + v29;
      }

      v35 = 256;
      if (!v30)
      {
        v35 = 0;
      }

      if (v31)
      {
        v35 = 128;
      }

      v36 = &v83 + v35;
      if (((v31 | v30) & 1) == 0)
      {
        v33 = v34;
      }

      v79 = v33;
      *&v36[16 * v32 + 16 * v29] = v80;
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    v37 = 1;
LABEL_75:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v6 == -1)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }
  }

  while ((v38 & 1) != 0);
  if (v79)
  {
    v53 = 0;
  }

  else
  {
    v53 = v37;
  }

  if (v53 != 1)
  {
    return 0;
  }

  if (!v84)
  {
    v84 = v83;
  }

  v54 = 0;
  v55 = 0;
  v56 = v85;
  v57 = 1;
  do
  {
    v58 = v57;
    if (!*v56)
    {
      *v56 = *(&v83 + 2 * v55);
      v58 = v55;
    }

    v59 = v57;
    if (!*(v56 + 4))
    {
      if (v57 == v58)
      {
        v60 = v56;
      }

      else
      {
        v60 = &v83 + 2 * v54 + 1;
      }

      if (v57 == v58)
      {
        v59 = v57;
      }

      else
      {
        v59 = v54;
      }

      v56[1] = *v60;
    }

    ++v57;
    v56 += 2;
    v54 = v59;
    v55 = v58;
  }

  while (v57 != 4);
  if (&v83 != v77)
  {
    v61 = v85[3];
    v77[4] = v85[2];
    v77[5] = v61;
    v62 = v85[5];
    v77[6] = v85[4];
    v77[7] = v62;
    v63 = v84;
    *v77 = v83;
    v77[1] = v63;
    v64 = v85[1];
    v77[2] = v85[0];
    v77[3] = v64;
    v65 = v85[6];
    v66 = v85[7];
    v67 = v85[9];
    v77[10] = v85[8];
    v77[11] = v67;
    v77[8] = v65;
    v77[9] = v66;
    v68 = v85[10];
    v69 = v85[11];
    v70 = v85[13];
    v77[14] = v85[12];
    v77[15] = v70;
    v77[12] = v68;
    v77[13] = v69;
    v71 = v85[14];
    v72 = v85[15];
    v73 = v85[17];
    v77[18] = v85[16];
    v77[19] = v73;
    v77[16] = v71;
    v77[17] = v72;
    v74 = v85[18];
    v75 = v85[19];
    v76 = v85[21];
    v77[22] = v85[20];
    v77[23] = v76;
    v77[20] = v74;
    v77[21] = v75;
  }

  return 1;
}

void sub_275CB5520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275CB5558(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_275CB59C4();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

__CFString *sub_275CB55DC(int a1)
{
  if ((a1 - 11) > 0x15)
  {
    return 0;
  }

  else
  {
    return off_27A6776F8[a1 - 11];
  }
}

void sub_275CB5974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_275CB59DC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_275CB5A38(exception, a1);
  __cxa_throw(exception, off_27A675A58, MEMORY[0x277D825F8]);
}

std::logic_error *sub_275CB5A38(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t sub_275CB5A8C(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = 0;
      while (xmlNodeIsText(v1) || *(v1 + 8) == 8)
      {
        v1 = *(v1 + 48);
        v2 = 1;
        v3 = 1;
        if (!v1)
        {
          return v3 & v2;
        }
      }

      v3 = 0;
      return v3 & v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *sub_275CB5AF8(uint64_t a1, uint64_t a2, char *__s2)
{
  result = 0;
  if (a1 && __s2)
  {
    if (*(a1 + 8) == 1 && *(a1 + 72) == a2)
    {
      result = *(a1 + 16);
      if (result)
      {
        return (strcmp(result, __s2) == 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_275CB5B58(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    return *(result + 8) == 1 && *(result + 72) == a2;
  }

  return result;
}

BOOL sub_275CB5B80(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 1;
  }

  return result;
}

void sub_275CB5B94(const xmlNode *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v6 = xmlBufferCreate();
  xmlNodeBufGetContent(v6, a1);
  if (a2)
  {
    v7 = xmlBufferContent(v6);
    sub_275CA6274(&__str, v7);
    v8 = __p;
    sub_275CA6274(__p, " \t\n");
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v8 = __p[0];
      v11 = __p[1];
    }

    if (!size)
    {
      goto LABEL_24;
    }

    v12 = p_str;
    if (v11)
    {
      v13 = size;
      v12 = p_str;
      while (memchr(v8, v12->__r_.__value_.__s.__data_[0], v11))
      {
        v12 = (v12 + 1);
        if (!--v13)
        {
          goto LABEL_24;
        }
      }
    }

    v15 = v12 - p_str;
    if (v15 == -1)
    {
LABEL_24:
      sub_275CA6274(a3, "");
    }

    else
    {
      v16 = size - 1;
      do
      {
        v17 = v16;
        if (v16 == -1)
        {
          break;
        }

        if (!v11)
        {
          break;
        }

        v18 = memchr(v8, p_str->__r_.__value_.__s.__data_[v16], v11);
        v16 = v17 - 1;
      }

      while (v18);
      std::string::basic_string(a3, &__str, v15, v17 - v15 + 1, &v22);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = xmlBufferContent(v6);
    sub_275CA6274(a3, v14);
  }

  xmlBufferFree(v6);
}

void sub_275CB5D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CB5D70(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1)
  {
    if (a2)
    {
      String = xmlNodeListGetString(*(a1 + 64), *(a2 + 24), 1);
      if (String)
      {
        MEMORY[0x277C8CD20](a3, String);

        free(String);
      }
    }
  }
}

void sub_275CB5DE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CB5E00(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_275CB5EC8;
  v4[3] = &unk_27A6777A8;
  v4[4] = a1;
  sub_275CC8348(a2, v4);
  return a1;
}

void sub_275CB5EAC(_Unwind_Exception *a1)
{
  sub_275CAF5D8(v2);
  sub_275CAF5D8(v1);
  _Unwind_Resume(a1);
}

void sub_275CB5EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a2 + 23) >= 0)
  {
    v10 = objc_msgSend_initWithUTF8String_(v7, v8, a2, v9);
  }

  else
  {
    v10 = objc_msgSend_initWithUTF8String_(v7, v8, *a2, v9);
  }

  v14 = v10;
  v15 = sub_275C95134(v10, v11, v12, v13);
  if (v15)
  {
    v16 = v15;
    v17 = *(a4 + 48);
    if ((v17 & 2) != 0)
    {
      v19 = v15;
      sub_275CB5F7C(v6 + 5, &v19);
      v17 = *(a4 + 48);
    }

    if (v17)
    {
      v18 = v16;
      sub_275CB5F7C(v6, &v18);
    }
  }
}

uint64_t sub_275CB5F70(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = result;
  *(a2 + 16) = result + 40;
  return result;
}

uint64_t *sub_275CB5F7C(void *a1, int *a2)
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
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
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
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_275CB6328(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  return result;
}

uint64_t sub_275CB633C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = objc_msgSend_initWithObjectsAndKeys_(v5, v6, a3, v7, *MEMORY[0x277CC4838], *MEMORY[0x277CBED28], *MEMORY[0x277CC49C8], &unk_2884D33C0, *MEMORY[0x277CC4AD0], 0);
  v9 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = objc_msgSend_initWithString_attributes_(v9, v10, a2, v8);

  return v11;
}

uint64_t sub_275CB63F8(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 - 0x10000) >> 20)
  {
    v6 = 1;
    LOWORD(v5) = a2;
  }

  else
  {
    v5 = ((a2 - 0x10000) >> 10) | 0xFFFFD800;
    v12[1] = a2 & 0x3FF | 0xDC00;
    v6 = 2;
  }

  v12[0] = v5;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = objc_msgSend_initWithCharacters_length_(v7, v8, v12, v6);
  v10 = (*(*a1 + 144))(a1, v9, a3);

  return v10;
}

void *sub_275CB64B8(void *result)
{
  *result = 0;
  result[1] = -1;
  return result;
}

uint64_t sub_275CB64C4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    *a1 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 8) = *(a2 + 8);
  }

  return a1;
}

const void **sub_275CB6518(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_275CB6550(CFStringRef name@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = -1;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2)
  {
    LOWORD(v24) = a2;
    sub_275CB6798(&v29, &v24);
  }

  if (a3)
  {
    LOWORD(v24) = a3;
    sub_275CB6798(&v29, &v24);
  }

  if (a4)
  {
    LOWORD(v24) = a4;
    sub_275CB6798(&v29, &v24);
  }

  if (a5)
  {
    LOWORD(v24) = a5;
    sub_275CB6798(&v29, &v24);
  }

  if (name)
  {
    v13 = v29;
    v12 = v30;
    v14 = CTFontCreateWithName(name, 12.0, 0);
    v15 = v14;
    if (v12 != v13 && v14)
    {
      MEMORY[0x28223BE20]();
      v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (CTFontGetGlyphsForCharacters(v15, v29, v17, v18))
      {
        if (a2)
        {
          v19 = *v17;
          v20 = 1;
          if (a3)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v20 = 0;
          v19 = -1;
          if (a3)
          {
LABEL_15:
            v21 = v17[v20++];
            if (a4)
            {
              goto LABEL_16;
            }

            goto LABEL_22;
          }
        }

        v21 = -1;
        if (a4)
        {
LABEL_16:
          v22 = v17[v20++];
          if (a5)
          {
LABEL_17:
            v23 = v17[v20];
LABEL_24:
            v25 = v19;
            v26 = v21;
            v27 = v22;
            v28 = v23;
            v24 = name;
            CFRetain(name);
            sub_275CB64C4(a6, &v24);
            sub_275CB6518(&v24);
            goto LABEL_25;
          }

LABEL_23:
          v23 = -1;
          goto LABEL_24;
        }

LABEL_22:
        v22 = -1;
        if (a5)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

LABEL_25:
      CFRelease(v15);
      goto LABEL_26;
    }

    if (v14)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_275CB6750(_Unwind_Exception *a1)
{
  sub_275CB6518((v2 - 128));
  v4 = *(v2 - 112);
  if (v4)
  {
    *(v2 - 104) = v4;
    operator delete(v4);
  }

  sub_275CB6518(v1);
  _Unwind_Resume(a1);
}

void sub_275CB6798(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_275C8D77C();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_275CB6874(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_275CB6874(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CB6C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a2, a4);
  }

  else
  {
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *a2, a4);
  }

  v9 = v5;
  v10 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v6, v7, v8);
  v13 = objc_msgSend_stringByTrimmingCharactersInSet_(v9, v11, v10, v12);
  v14 = objc_alloc(MEMORY[0x277CCAC80]);
  v17 = objc_msgSend_initWithString_(v14, v15, v13, v16);
  if (objc_msgSend_scanString_intoString_(v17, v18, @"+", 0))
  {
    v22 = 2;
  }

  else if (objc_msgSend_scanString_intoString_(v17, v19, @"-", 0))
  {
    v22 = 3;
  }

  else
  {
    if (objc_msgSend_isAtEnd(v17, v19, v20, v21))
    {
      *(a1 + 16) = 0;
      goto LABEL_12;
    }

    v22 = 1;
  }

  *(a1 + 16) = v22;
LABEL_12:
  v23 = objc_msgSend_string(v17, v19, v20, v21);
  v27 = objc_msgSend_scanLocation(v17, v24, v25, v26);
  v30 = objc_msgSend_substringFromIndex_(v23, v28, v27, v29);
  v34 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v31, v32, v33);
  v37 = objc_msgSend_stringByTrimmingCharactersInSet_(v30, v35, v34, v36);
  v41 = objc_msgSend_UTF8String(v37, v38, v39, v40);
  sub_275CA6274(&v75, v41);

  sub_275CA6274(v73, "height");
  sub_275CA6274(v71, "depth");
  sub_275CA6274(__p, "width");
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &v75;
  }

  else
  {
    v42 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  if ((v74 & 0x80u) == 0)
  {
    v44 = v73;
  }

  else
  {
    v44 = v73[0];
  }

  if ((v74 & 0x80u) == 0)
  {
    v45 = v74;
  }

  else
  {
    v45 = v73[1];
  }

  if (!v45)
  {
    v49 = 0;
LABEL_44:
    v50 = 1;
    goto LABEL_61;
  }

  v46 = v42 + size;
  if (size >= v45)
  {
    v51 = *v44;
    v52 = size;
    v53 = v42;
    do
    {
      v54 = v52 - v45;
      if (v54 == -1)
      {
        break;
      }

      v55 = memchr(v53, v51, v54 + 1);
      if (!v55)
      {
        break;
      }

      v56 = v55;
      if (!memcmp(v55, v44, v45))
      {
        if (v56 != v46)
        {
          v49 = v56 - v42;
          if (v56 - v42 != -1)
          {
            goto LABEL_44;
          }
        }

        break;
      }

      v53 = (v56 + 1);
      v52 = v46 - (v56 + 1);
    }

    while (v52 >= v45);
  }

  if ((v72 & 0x80u) == 0)
  {
    v47 = v71;
  }

  else
  {
    v47 = v71[0];
  }

  if ((v72 & 0x80u) == 0)
  {
    v45 = v72;
  }

  else
  {
    v45 = v71[1];
  }

  if (!v45)
  {
    v49 = 0;
LABEL_52:
    v50 = 2;
    goto LABEL_61;
  }

  if (size >= v45)
  {
    v57 = *v47;
    v58 = size;
    v59 = v42;
    do
    {
      v60 = v58 - v45;
      if (v60 == -1)
      {
        break;
      }

      v61 = memchr(v59, v57, v60 + 1);
      if (!v61)
      {
        break;
      }

      v62 = v61;
      if (!memcmp(v61, v47, v45))
      {
        if (v62 != v46)
        {
          v49 = v62 - v42;
          if (v62 - v42 != -1)
          {
            goto LABEL_52;
          }
        }

        break;
      }

      v59 = (v62 + 1);
      v58 = v46 - (v62 + 1);
    }

    while (v58 >= v45);
  }

  if ((v70 & 0x80u) == 0)
  {
    v48 = __p;
  }

  else
  {
    v48 = __p[0];
  }

  if ((v70 & 0x80u) == 0)
  {
    v45 = v70;
  }

  else
  {
    v45 = __p[1];
  }

  if (!v45)
  {
    v49 = 0;
LABEL_60:
    v50 = 3;
LABEL_61:
    *(a1 + 20) = v50;
    std::string::erase(&v75, v49, v45);
    goto LABEL_62;
  }

  if (size >= v45)
  {
    v64 = *v48;
    v65 = v42;
    do
    {
      if (size - v45 == -1)
      {
        break;
      }

      v66 = memchr(v65, v64, size - v45 + 1);
      if (!v66)
      {
        break;
      }

      v67 = v66;
      if (!memcmp(v66, v48, v45))
      {
        if (v67 != v46)
        {
          v49 = v67 - v42;
          if (v67 - v42 != -1)
          {
            goto LABEL_60;
          }
        }

        break;
      }

      v65 = (v67 + 1);
      size = v46 - (v67 + 1);
    }

    while (size >= v45);
  }

  *(a1 + 20) = 0;
LABEL_62:
  sub_275CBB09C(&v68, &v75, 1);
  *a1 = v68;
  if (*(a1 + 20) && (*a1 | 2) != 6)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_275CB6FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

double sub_275CB7060(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 20);
  switch(v5)
  {
    case 3:
      v6 = *(a1 + 8) * a5;
      break;
    case 2:
      v6 = *(a1 + 8) * a4;
      break;
    case 1:
      v6 = *(a1 + 8) * a3;
      break;
    default:
      return a2;
  }

  if (*a1 == 4)
  {
    v6 = v6 / 100.0;
  }

  v7 = *(a1 + 16);
  if (v7 != 1)
  {
    if (v7 == 3)
    {
      return a2 - v6;
    }

    if (v7 == 2)
    {
      return v6 + a2;
    }

    return a2;
  }

  return v6;
}

double sub_275CB70EC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = a3;
  v11 = sub_275CBB0A0(a1, a2, a3);
  if (*(a1 + 20))
  {

    return sub_275CB7060(a1, v9, a4, a5, a6);
  }

  else
  {
    v13 = *(a1 + 16);
    switch(v13)
    {
      case 1:
        return v11;
      case 3:
        return v9 - v11;
      case 2:
        return v11 + v9;
    }

    return v9;
  }
}

uint64_t sub_275CB787C(uint64_t a1, uint64_t a2, CFTypeRef cf, char a4, double a5, double a6)
{
  *a1 = &unk_2884CB6D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  *(a1 + 17) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
  *(a1 + 40) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 48) = a5;
  *(a1 + 80) = a6;
  *(a1 + 72) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 56) = 0x3FE6B851EB851EB8;
  *(a1 + 64) = fmin(a5, 8.0);
  bzero((a1 + 120), 1uLL);
  bzero((a1 + 128), 0x18uLL);
  return a1;
}

uint64_t sub_275CB7948(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884CB6D0;
  sub_275CAEA6C(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 88);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = v4;
  v5 = *(a2 + 112);
  *(a1 + 112) = v5;
  v6 = *(a2 + 96);
  *(a1 + 96) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v7;
  if (v6)
  {
    CFRetain(v6);
    v5 = *(a1 + 112);
  }

  if (v5)
  {
    CFRetain(v5);
  }

  return a1;
}

uint64_t sub_275CB7A18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, int a7)
{
  *a1 = &unk_2884CB6D0;
  *(a1 + 8) = 0;
  v13 = a1 + 8;
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0x4028000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a3 + 24);
  *(a1 + 56) = *(a3 + 56);
  v14 = (a1 + 56);
  *(a1 + 80) = *(a3 + 80);
  v15 = sub_275CA342C(a2, a2, a3, a4);
  *(a1 + 96) = 0;
  *(a1 + 88) = v15;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 72) = a4;
  v52 = 0;
  v53 = 1;
  v16 = *(a2 + 616);
  v45 = a4;
  v46 = 9;
  v17 = sub_275CB8370(v16, v16 + 296, &v45, &v52);
  v18 = *(a3 + 8);
  if (v17)
  {
    v19 = sub_275C955A4(&v52, *(a3 + 8));
    v18 = *(a3 + 8);
  }

  else
  {
    v19 = v18 + a5;
  }

  v20 = *(a2 + 616);
  v45 = a4;
  v46 = 42;
  sub_275CB844C(v20, v20 + 440, &v45, v14);
  LODWORD(v51) = 1;
  *(&v51 + 1) = 0;
  v21 = *(a2 + 616);
  v45 = a4;
  v46 = 43;
  if (sub_275CAF228(v21, v21 + 32, &v45, &v51))
  {
    *(a1 + 64) = sub_275CBB0A0(&v51, a3, fmin(*(a1 + 48), 8.0));
  }

  *&v51 = 0;
  v22 = *(a2 + 616);
  v45 = a4;
  v46 = 44;
  if (sub_275CB851C(v22, v22 + 536, &v45, &v51))
  {
    v23 = v51;
  }

  else
  {
    v23 = *(a3 + 112);
  }

  *(a1 + 112) = v23;
  if (v23)
  {
    CFRetain(v23);
  }

  sub_275CB42BC(&v51);
  LODWORD(v51) = 0;
  v24 = *(a2 + 616);
  v45 = a4;
  v46 = 17;
  if (sub_275C8D3A8(v24, v24 + 368, &v45, &v51) & 1) == 0 && (objc_opt_respondsToSelector())
  {
    LODWORD(v51) = objc_msgSend_scriptVariant(*(a1 + 72), v25, v26, v27);
  }

  if (objc_opt_respondsToSelector())
  {
    v31 = objc_msgSend_scriptContext(*(a1 + 72), v28, v29, v30);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(a1 + 48);
  v36 = v32 * pow(*(a1 + 56), (v19 - v18));
  if (v36 <= *(a1 + 64))
  {
    v37 = *(a1 + 64);
  }

  else
  {
    v37 = v36;
  }

  v38 = objc_msgSend_operatorCore(a4, v33, v34, v35);
  if (v38 == a4)
  {
    v39 = sub_275CABFF4(a2, v38);
  }

  else
  {
    v39 = 0;
  }

  if (a7 == 2)
  {
    v40 = 0;
  }

  else if (a7 == 1)
  {
    v40 = 1;
  }

  else
  {
    v40 = *(a3 + 17);
  }

  v41 = *(a3 + 40);
  v45 = v19;
  LOBYTE(v46) = a6;
  BYTE1(v46) = v40 & 1;
  BYTE2(v46) = v39;
  v47 = v51;
  v48 = v37;
  v49 = v31;
  v50 = v41;
  if (v41)
  {
    CFRetain(v41);
  }

  sub_275CADCE4(v13, &v45);
  sub_275CAEAD0(&v45);
  if (*(a1 + 24) == *(a3 + 24) && *(a1 + 20) == *(a3 + 20))
  {
    v42 = *(a3 + 96);
    *(a1 + 96) = v42;
    if (v42)
    {
      CFRetain(v42);
    }
  }

  bzero((a1 + 120), 1uLL);
  return a1;
}

uint64_t sub_275CB7DB0(uint64_t a1)
{
  *a1 = &unk_2884CB6D0;
  sub_275CB7E08(a1);
  CGColorRelease(*(a1 + 112));
  sub_275CAEAD0(a1 + 8);
  return a1;
}

void sub_275CB7E08(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 104) = 0;
  }
}

void sub_275CB7E4C(uint64_t a1)
{
  sub_275CB7DB0(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CB7E84(uint64_t a1)
{
  result = *(a1 + 96);
  if (!result)
  {
    result = (*(**(a1 + 88) + 56))(*(a1 + 88), a1 + 8);
    *(a1 + 96) = result;
  }

  return result;
}

const __CTFont *sub_275CB7F0C(uint64_t a1)
{
  v23[3] = *MEMORY[0x277D85DE8];
  result = *(a1 + 104);
  if (!result)
  {
    *(a1 + 104) = CTFontCreateWithName(*(a1 + 40), *(a1 + 80), 0);
    v3 = sub_275CB8098(a1 + 8);
    result = *(a1 + 104);
    if (v3)
    {
      v4 = CTFontCopyTraits(result);
      v5 = *MEMORY[0x277CC4948];
      if (objc_msgSend_objectForKeyedSubscript_(v4, v6, *MEMORY[0x277CC4948], v7) != v3)
      {
        v8 = CTFontCopyFamilyName(*(a1 + 104));
        v9 = *MEMORY[0x277CC48B8];
        v23[0] = v8;
        v10 = *MEMORY[0x277CC4938];
        v22[0] = v9;
        v22[1] = v10;
        v23[1] = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v11, v12, v13, *(a1 + 80));
        v22[2] = *MEMORY[0x277CC4950];
        v20 = v5;
        v21 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v14, v3, v15);
        v23[2] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, &v21, &v20, 1);
        v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v23, v22, 3);
        v19 = CTFontDescriptorCreateWithAttributes(v18);
        CFRelease(*(a1 + 104));
        *(a1 + 104) = CTFontCreateWithFontDescriptor(v19, *(a1 + 80), 0);
        CFRelease(v19);
        CFRelease(v8);
      }

      CFRelease(v4);
      return *(a1 + 104);
    }
  }

  return result;
}

uint64_t sub_275CB8098(uint64_t a1)
{
  v1 = *(a1 + 12) - 2;
  if (v1 > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_275D0BF64[v1];
  }
}

double sub_275CB80E8(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 || (v2 = (*(**(a1 + 88) + 56))(*(a1 + 88), a1 + 8), (*(a1 + 96) = v2) != 0))
  {
    v3 = objc_alloc(MEMORY[0x277CBEAC0]);
    v2 = objc_msgSend_initWithObjectsAndKeys_(v3, v4, v2, v5, *MEMORY[0x277CC4838], 0);
  }

  v6 = objc_alloc(MEMORY[0x277CCA898]);
  v8 = objc_msgSend_initWithString_attributes_(v6, v7, @"−", v2);
  v9 = CTLineCreateWithAttributedString(v8);
  v10 = sub_275C95064();
  ImageBounds = CTLineGetImageBounds(v9, v10);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;
  CFRelease(v9);

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  *(a1 + 136) = CGRectGetMidY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  *(a1 + 128) = CGRectGetHeight(v18);
  *(a1 + 120) |= 3u;
  return *(a1 + 136);
}

CGFloat sub_275CB8228(uint64_t a1)
{
  *(a1 + 120) |= 4u;
  v2 = *(a1 + 96);
  if (!v2)
  {
    v2 = (*(**(a1 + 88) + 56))(*(a1 + 88), a1 + 8);
    *(a1 + 96) = v2;
  }

  SlantAngle = CTFontGetSlantAngle(v2);
  result = (SlantAngle + SlantAngle) * 3.14159265 / 360.0;
  *(a1 + 144) = result;
  return result;
}

double sub_275CB82B0(uint64_t a1, int a2)
{
  v3 = 1.0;
  if (a2 != 2)
  {
    if (a2 == 5)
    {
      if ((*(a1 + 120) & 1) == 0)
      {
        sub_275CB80E8(a1);
      }

      return *(a1 + 128);
    }

    else if (a2 == 3)
    {
      return *(a1 + 24);
    }

    return v3;
  }

  v5 = *(a1 + 96);
  if (!v5)
  {
    v5 = (*(**(a1 + 88) + 56))(*(a1 + 88), a1 + 8);
    *(a1 + 96) = v5;
    if (!v5)
    {
      return v3;
    }
  }

  return CTFontGetXHeight(v5);
}

uint64_t sub_275CB8370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    v11 = v7[6];
    v12 = *(v7 + 56);
LABEL_3:
    *(a4 + 8) = v12;
    *a4 = v11;
    return 1;
  }

  result = objc_msgSend_isAttributeDefaultInheritableFromStyle_(*a3, v8, *(a3 + 8), v9);
  if (result)
  {
    result = objc_msgSend_parent(*a3, v14, v15, v16);
    if (result)
    {
      v20 = result;
      while (1)
      {
        v21 = objc_msgSend_layoutStyleNode(v20, v17, v18, v19);
        if (v21)
        {
          v26 = v21;
          v27 = *(a3 + 8);
          v25 = sub_275C8D478(a2, &v26);
          if (v10 != v25)
          {
            break;
          }
        }

        result = objc_msgSend_parent(v20, v22, v23, v24);
        v20 = result;
        if (!result)
        {
          return result;
        }
      }

      v11 = v25[6];
      v12 = *(v25 + 56);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275CB844C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    v11 = v7[6];
LABEL_3:
    *a4 = v11;
    return 1;
  }

  result = objc_msgSend_isAttributeDefaultInheritableFromStyle_(*a3, v8, *(a3 + 8), v9);
  if (result)
  {
    result = objc_msgSend_parent(*a3, v13, v14, v15);
    if (result)
    {
      v19 = result;
      while (1)
      {
        v20 = objc_msgSend_layoutStyleNode(v19, v16, v17, v18);
        if (v20)
        {
          v25 = v20;
          v26 = *(a3 + 8);
          v24 = sub_275C8D478(a2, &v25);
          if (v10 != v24)
          {
            break;
          }
        }

        result = objc_msgSend_parent(v19, v21, v22, v23);
        v19 = result;
        if (!result)
        {
          return result;
        }
      }

      v11 = v24[6];
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275CB851C(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v7 = sub_275C8D478(a2, a3);
  v10 = v7;
  if ((a2 + 8) != v7)
  {
    v11 = (v7 + 6);
LABEL_3:
    sub_275CB85F0(a4, v11);
    return 1;
  }

  result = objc_msgSend_isAttributeDefaultInheritableFromStyle_(*a3, v8, *(a3 + 8), v9);
  if (result)
  {
    result = objc_msgSend_parent(*a3, v13, v14, v15);
    if (result)
    {
      v19 = result;
      while (1)
      {
        v20 = objc_msgSend_layoutStyleNode(v19, v16, v17, v18);
        if (v20)
        {
          v25 = v20;
          v26 = *(a3 + 8);
          v24 = sub_275C8D478(a2, &v25);
          if (v10 != v24)
          {
            break;
          }
        }

        result = objc_msgSend_parent(v19, v21, v22, v23);
        v19 = result;
        if (!result)
        {
          return result;
        }
      }

      v11 = (v24 + 6);
      goto LABEL_3;
    }
  }

  return result;
}

const void **sub_275CB85F0(const void **a1, CFTypeRef *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    v5 = CFRetain(v5);
  }

  *a1 = v5;
  return a1;
}

uint64_t sub_275CB89E8()
{
  result = qword_280A389B0;
  if (!qword_280A389B0)
  {
    v1 = objc_alloc(MEMORY[0x277CBEA60]);
    v4 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v2, @"$", v3, @"$", 0);
    v7 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v5, @"$$", v6, @"$$", 0);
    v10 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v8, @"\\("), v9, CFSTR("\\)", 0);
    v13 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v11, @"\\[", v12, @"\\]", 0);
    v16 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v14, @"\\begin{math}", v15, @"\\end{math}", 0);
    v19 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v17, @"\\begin{displaymath}", v18, @"\\end{displaymath}", 0);
    v22 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v20, @"\\begin{equation}", v21, @"\\end{equation}", 0);
    v25 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v23, @"\\begin{equation*}", v24, @"\\end{equation*}", 0);
    result = objc_msgSend_initWithObjects_(v1, v26, v4, v27, v7, v10, v13, v16, v19, v22, v25, 0);
    qword_280A389B0 = result;
  }

  return result;
}

void sub_275CB8E9C(uint64_t a1, void *a2)
{
  __p[4] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = sub_275C950F4(v4, a1);
  v6 = sub_275CBA7F8();
  v9 = sub_275CBA6CC(a2, v6, v7, v8);
  v13 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v10, v11, v12);
  v16 = objc_msgSend_stringByTrimmingCharactersInSet_(a2, v14, v13, v15);
  v17 = sub_275CB89E8();
  v43 = 0u;
  v44 = 0u;
  __dst = 0u;
  v42 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &__dst, &v45, 16);
  if (v22)
  {
    v23 = *v42;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v26 = sub_275CBA420(*(*(&__dst + 1) + 8 * i), v16, 1, v21);
        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = objc_msgSend_substringWithRange_(v16, v25, v26, v25);
          goto LABEL_11;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v25, &__dst, &v45, 16);
    }

    while (v22);
  }

LABEL_11:
  v48 = 0;
  v45 = 0;
  v49 = 1;
  v50 = 1;
  v51 = 256;
  v52 = 0;
  *v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(__p, 0, 26);
  v46 = 1;
  v47 = v9 ^ 1;
  v27 = objc_msgSend_blahtexConfig(v5, v19, v20, v21);
  sub_275CB5F70(v27, &v46);
  v30 = objc_msgSend_dataUsingEncoding_(v16, v28, 2617245952, v29);
  v34 = objc_msgSend_bytes(v30, v31, v32, v33);
  v38 = objc_msgSend_length(v30, v35, v36, v37);
  if (v38 < 0xFFFFFFFFFFFFFFE0)
  {
    v39 = v38 >> 2;
    if (v38 < 0x14)
    {
      BYTE7(v42) = v38 >> 2;
      if (v38 >= 4)
      {
        memmove(&__dst, v34, v38 & 0xFFFFFFFFFFFFFFFCLL);
      }

      *(&__dst + v39) = 0;
      blahtex::Interface::ProcessInput();
    }

    if ((v39 | 1) == 5)
    {
      v40 = 7;
    }

    else
    {
      v40 = (v39 | 1) + 1;
    }

    sub_275C8DFE0(&__dst, v40);
  }

  sub_275C8EE7C();
}

void sub_275CB9324(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_275CBA9EC(va);
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    if (v13 && !*v13)
    {
      v20 = v16;
      v21 = MEMORY[0x277CCA9B8];
      v22 = MEMORY[0x277CBEAC0];
      v23 = MEMORY[0x277CCACA8];
      v24 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v17, v18, v19);
      v26 = objc_msgSend_localizedStringForKey_value_table_(v24, v25, @"Converting from LaTeX to MathML resulted in a syntax error: %@", &stru_2884CC9F8, 0);
      sub_275CBA8B4(v20);
      v29 = objc_msgSend_stringWithFormat_(v23, v27, v26, v28);
      v32 = objc_msgSend_dictionaryWithObjectsAndKeys_(v22, v30, v29, v31);
      *v13 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v33, @"EQKitErrorDomain", 7, v32);
    }

    __cxa_end_catch();
    JUMPOUT(0x275CB92D0);
  }

  _Unwind_Resume(a1);
}

void sub_275CB9418(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x275CB9420);
  }

  sub_275C8B394(a1);
}

uint64_t sub_275CB9430()
{
  if (qword_280A39218 != -1)
  {
    sub_275D01FC8();
  }

  return 0;
}

uint64_t sub_275CB97F0(xmlTextWriter *a1, const xmlChar *a2, uint64_t a3, _DWORD *a4)
{
  if (*(a3 + 8) != 1)
  {
    return 1;
  }

  if (xmlTextWriterStartElementNS(a1, a2, *(a3 + 16), 0) == -1)
  {
LABEL_17:
    LOBYTE(v11) = 0;
  }

  else
  {
    v8 = *(a3 + 88);
    if (v8)
    {
      while (1)
      {
        if (*(v8 + 8) == 2)
        {
          v9 = *(v8 + 24);
          if (!v9)
          {
            goto LABEL_17;
          }

          v10 = *(v9 + 8);
          if (v10 != 5)
          {
            if (v10 != 3)
            {
              goto LABEL_17;
            }

            v11 = xmlTextWriterWriteAttribute(a1, *(v8 + 16), *(v9 + 80)) != -1;
            goto LABEL_13;
          }

          v12 = sub_275CD67B0(0, *(v9 + 16));
          if (!v12)
          {
            goto LABEL_17;
          }

          content = v12->content;
          if (!content || xmlTextWriterWriteAttribute(a1, *(v8 + 16), content) == -1)
          {
            goto LABEL_17;
          }
        }

        v11 = 1;
LABEL_13:
        v8 = *(v8 + 48);
        if (!v8 || (v11 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    v11 = 1;
LABEL_19:
    v15 = *(a3 + 24);
    if (v15)
    {
      v16 = v11 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      do
      {
        v17 = *(v15 + 8);
        if (v17 == 3)
        {
          v18 = *(v15 + 80);
          if (v18)
          {
            sub_275CA6274(&__str, v18);
            sub_275CA6274(__p, " \t\n");
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            else
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            if ((v32 & 0x80u) == 0)
            {
              v21 = __p;
            }

            else
            {
              v21 = __p[0];
            }

            if ((v32 & 0x80u) == 0)
            {
              v22 = v32;
            }

            else
            {
              v22 = __p[1];
            }

            if (!size)
            {
              goto LABEL_52;
            }

            v23 = p_str;
            if (v22)
            {
              v24 = size;
              v23 = p_str;
              while (memchr(v21, v23->__r_.__value_.__s.__data_[0], v22))
              {
                v23 = (v23 + 1);
                if (!--v24)
                {
                  goto LABEL_52;
                }
              }
            }

            v25 = v23 - p_str;
            if (v25 == -1)
            {
LABEL_52:
              sub_275CA6274(&v33, "");
            }

            else
            {
              v26 = size - 1;
              do
              {
                v27 = v26;
                if (v26 == -1)
                {
                  break;
                }

                if (!v22)
                {
                  break;
                }

                v28 = memchr(v21, p_str->__r_.__value_.__s.__data_[v26], v22);
                v26 = v27 - 1;
              }

              while (v28);
              std::string::basic_string(&v33, &__str, v25, v27 - v25 + 1, &v35);
            }

            if (v32 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v33.__r_.__value_.__l.__size_)
              {
                v29 = v33.__r_.__value_.__r.__words[0];
                goto LABEL_60;
              }

              LOBYTE(v11) = 1;
LABEL_67:
              operator delete(v33.__r_.__value_.__l.__data_);
            }

            else if (*(&v33.__r_.__value_.__s + 23))
            {
              v29 = &v33;
LABEL_60:
              v30 = xmlTextWriterWriteString(a1, v29);
              LOBYTE(v11) = v30 != -1;
              if (v30 != -1 && a4)
              {
                *a4 += xmlStrlen(v29);
                LOBYTE(v11) = 1;
              }

              if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_67;
              }
            }

            else
            {
              LOBYTE(v11) = 1;
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            goto LABEL_70;
          }
        }

        else if (v17 == 1)
        {
          LOBYTE(v11) = sub_275CB97F0(a1, a2, v15, a4);
          goto LABEL_70;
        }

        LOBYTE(v11) = 1;
LABEL_70:
        v15 = *(v15 + 48);
      }

      while (v15 && (v11 & 1) != 0);
    }
  }

  return (xmlTextWriterEndElement(a1) != -1) & v11;
}

void sub_275CB9AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t sub_275CBA420(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = objc_msgSend_length(a2, a2, a3, a4);
  if (objc_msgSend_count(a1, v8, v9, v10) != 4)
  {
    v36 = objc_msgSend_objectAtIndex_(a1, v11, 0, v12);
    v46 = objc_msgSend_objectAtIndex_(a1, v48, 1, v49);
    goto LABEL_16;
  }

  v13 = objc_msgSend_objectAtIndex_(a1, v11, 1, v12);
  v15 = objc_msgSend_rangeOfString_options_range_(a2, v14, v13, 0, 0, v7);
  if (!v16)
  {
    v36 = 0;
    v50 = 0;
LABEL_25:
    v51 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_26;
  }

  v18 = v15;
  v19 = objc_msgSend_objectAtIndex_(a1, v16, 0, v17);
  v21 = objc_msgSend_rangeOfString_options_range_(a2, v20, v19, 0, 0, v18);
  v23 = 0;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  if (v22 && v21 < v18)
  {
    v23 = 0;
    do
    {
      if (v18 > &v22[v21])
      {
        v23 = v18 - &v22[v21];
        v24 = &v22[v21];
      }

      v21 = objc_msgSend_rangeOfString_options_range_(a2, v22, v19, 0, &v22[v21], v18 - &v22[v21]);
      if (v22)
      {
        v25 = v21 >= v18;
      }

      else
      {
        v25 = 1;
      }
    }

    while (!v25);
  }

  if (!v23)
  {
    v36 = 0;
    v50 = 0;
    goto LABEL_25;
  }

  v26 = objc_msgSend_substringWithRange_(a2, v22, v24, v23);
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v30 = objc_msgSend_objectAtIndex_(a1, v28, 0, v29);
  v33 = objc_msgSend_objectAtIndex_(a1, v31, 1, v32);
  v36 = objc_msgSend_initWithFormat_(v27, v34, @"%@%@%@", v35, v30, v26, v33);
  v37 = objc_alloc(MEMORY[0x277CCACA8]);
  v40 = objc_msgSend_objectAtIndex_(a1, v38, 2, v39);
  v43 = objc_msgSend_objectAtIndex_(a1, v41, 3, v42);
  v46 = objc_msgSend_initWithFormat_(v37, v44, @"%@%@%@", v45, v40, v26, v43);
LABEL_16:
  v50 = v46;
  v51 = 0x7FFFFFFFFFFFFFFFLL;
  if (v36)
  {
    if (v46)
    {
      v52 = objc_msgSend_rangeOfString_options_range_(a2, v47, v36, 0, 0, v7);
      if (v53)
      {
        v54 = v52;
        v55 = &v53[v52];
        v56 = objc_msgSend_rangeOfString_options_range_(a2, v53, v50, 0, &v53[v52], v7 - &v53[v52]);
        if (v56 > v54)
        {
          if (v57)
          {
            v58 = &v57[v56];
            objc_msgSend_rangeOfString_options_range_(a2, v57, v36, 0, &v57[v56], v7 - &v57[v56]);
            if (!v59)
            {
              if (v54)
              {
                v61 = 0;
              }

              else
              {
                v61 = v7 == v58;
              }

              v62 = !v61;
              if ((v4 & v62) == 0)
              {
                v51 = v55;
              }
            }
          }
        }
      }
    }
  }

LABEL_26:

  return v51;
}

uint64_t sub_275CBA6CC(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], a2, a3, a4);
  v9 = objc_msgSend_stringByTrimmingCharactersInSet_(a1, v7, v6, v8);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v10, &v19, v23, 16);
  if (!v11)
  {
    return 0;
  }

  v13 = v11;
  v14 = *v20;
LABEL_3:
  v15 = 0;
  while (1)
  {
    if (*v20 != v14)
    {
      objc_enumerationMutation(a2);
    }

    v16 = 1;
    if (sub_275CBA420(*(*(&v19 + 1) + 8 * v15), v9, 1, v12) != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v16;
    }

    if (v13 == ++v15)
    {
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v17, &v19, v23, 16);
      if (v13)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t sub_275CBA7F8()
{
  result = qword_280A389B8;
  if (!qword_280A389B8)
  {
    v1 = objc_alloc(MEMORY[0x277CBEA60]);
    v4 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v2, @"$", v3, @"$", 0);
    v7 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v5, @"\\("), v6, CFSTR("\\)", 0);
    v10 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v8, @"\\begin{math}", v9, @"\\end{math}", 0);
    result = objc_msgSend_initWithObjects_(v1, v11, v4, v12, v7, v10, 0);
    qword_280A389B8 = result;
  }

  return result;
}

id sub_275CBA8B4(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  v3 = 4 * v1;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_msgSend_initWithBytes_length_encoding_(v4, v5, v2, v3, 2617245952);

  return v6;
}

uint64_t **sub_275CBA91C(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v6 = (v2 + 6);
    sub_275C97BF0(&v6);
    if (*(v2 + 47) < 0)
    {
      operator delete(v2[3]);
    }

    v3 = v2[1];
    v2[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    MEMORY[0x277C8CFC0](v2, 0x1032C408BA9FD94);
  }

  return a1;
}

uint64_t **sub_275CBA9EC(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return sub_275CBA91C(a1);
}

uint64_t sub_275CBAA50()
{
  result = TSULogCreateCategory();
  qword_280A38020 = result;
  return result;
}

uint64_t *sub_275CBAA78(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = objc_msgSend_unsignedIntegerValue(a2, a2, a3, a4);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return a1;
}

BOOL sub_275CBAAB4(uint64_t a1, uint64_t *a2)
{
  sub_275CBAB1C();
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v6[0] = v4;
  v6[1] = v3;
  return sub_275C977C4(qword_280A389C0, v6) != &qword_280A389C0[1];
}

void sub_275CBAB1C()
{
  if ((atomic_load_explicit(&qword_280A389D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280A389D8))
    {
      sub_275CBB4A8(qword_280A389C0, &off_27A6777C8, &unk_27A677918);
      __cxa_guard_release(&qword_280A389D8);
    }
  }
}

uint64_t sub_275CBABA4(uint64_t a1, uint64_t *a2)
{
  sub_275CBAB1C();
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v6[0] = v4;
  v6[1] = v3;
  if (sub_275C977C4(qword_280A389C0, v6) == &qword_280A389C0[1])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_275CBAC28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a2, a4);
  }

  else
  {
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *a2, a4);
  }

  v9 = v5;
  v10 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v6, v7, v8);
  v13 = objc_msgSend_stringByTrimmingCharactersInSet_(v9, v11, v10, v12);
  v14 = objc_alloc(MEMORY[0x277CCAC80]);
  v17 = objc_msgSend_initWithString_(v14, v15, v13, v16);
  v57 = 0.0;
  objc_msgSend_scanFloat_(v17, v18, &v57, v19);
  *(a1 + 8) = v57;
  v23 = objc_msgSend_string(v17, v20, v21, v22);
  v27 = objc_msgSend_scanLocation(v17, v24, v25, v26);
  v30 = objc_msgSend_substringFromIndex_(v23, v28, v27, v29);
  v34 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v31, v32, v33);
  v37 = objc_msgSend_stringByTrimmingCharactersInSet_(v30, v35, v34, v36);
  v41 = objc_msgSend_UTF8String(v37, v38, v39, v40);
  v42 = strlen(v41);
  if (v42 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    operator new();
  }

  v56 = v42;
  if (v42)
  {
    memmove(&__p, v41, v42);
  }

  *(&__p + v43) = 0;

  if ((v56 & 0x80000000) == 0)
  {
    if (v56 != 1)
    {
      if (v56 != 2)
      {
        if (v56 == 4 && __p == 1701606770)
        {
          goto LABEL_37;
        }

        goto LABEL_42;
      }

      if (__p == 29808)
      {
LABEL_50:
        v45 = 1;
        goto LABEL_51;
      }

      if (__p != 30821)
      {
        if (__p == 28005)
        {
          goto LABEL_59;
        }

        goto LABEL_34;
      }

LABEL_38:
      v45 = 2;
      goto LABEL_51;
    }

    if (__p != 37)
    {
      goto LABEL_42;
    }

LABEL_36:
    v45 = 4;
LABEL_51:
    *a1 = v45;
    goto LABEL_52;
  }

  if (v55 == 1 && *__p == 37)
  {
    goto LABEL_36;
  }

  if (v55 == 2 && *__p == 29808)
  {
    goto LABEL_50;
  }

  if (v55 == 2 && *__p == 30821)
  {
    goto LABEL_38;
  }

  if (v55 != 2)
  {
    goto LABEL_32;
  }

  if (*__p == 28005)
  {
LABEL_59:
    v45 = 3;
    goto LABEL_51;
  }

  if (v56 < 0)
  {
LABEL_32:
    if (v55 != 4)
    {
      goto LABEL_39;
    }

    if (*__p == 1701606770)
    {
LABEL_37:
      v45 = 5;
      goto LABEL_51;
    }

    if (v56 < 0)
    {
LABEL_39:
      if (v55 != 2)
      {
        goto LABEL_42;
      }

      p_p = __p;
      goto LABEL_41;
    }
  }

  if (v56 != 2)
  {
    goto LABEL_42;
  }

LABEL_34:
  p_p = &__p;
LABEL_41:
  if (*p_p == 28003)
  {
    v46 = *(a1 + 8);
    goto LABEL_44;
  }

LABEL_42:
  if (sub_275CB5558(&__p, "mm"))
  {
    v46 = *(a1 + 8) / 10.0;
LABEL_44:
    v47 = 2.54;
LABEL_45:
    v48 = v46 / v47;
LABEL_48:
    v49 = 72.0;
LABEL_49:
    *(a1 + 8) = v48 * v49;
    goto LABEL_50;
  }

  if (sub_275CB5558(&__p, "in"))
  {
    v48 = *(a1 + 8);
    goto LABEL_48;
  }

  if (sub_275CB5558(&__p, "px"))
  {
    v46 = *(a1 + 8);
    v47 = 96.0;
    goto LABEL_45;
  }

  if (sub_275CB5558(&__p, "pc"))
  {
    v48 = *(a1 + 8);
    v49 = 12.0;
    goto LABEL_49;
  }

  if (!sub_275CB5558(&__p, "ch") && !sub_275CB5558(&__p, "rem") && !sub_275CB5558(&__p, "vw") && !sub_275CB5558(&__p, "vh"))
  {
    v51 = sub_275CB5558(&__p, "vmin");
    if (!v51)
    {
      v52 = sub_275CBAAB4(v51, &__p);
      if (v52)
      {
        *a1 = sub_275CBABA4(v52, &__p);
        *(a1 + 8) = v53;
      }

      else
      {
        if (sub_275CB5558(&__p, ""))
        {
          v45 = 6;
          goto LABEL_51;
        }

        *a1 = 0;
      }
    }
  }

LABEL_52:
  if (v56 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_275CBB07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_275CBB0A0(double *a1, uint64_t a2, double a3)
{
  v3 = a1[1];
  v4 = *a1;
  if (v4 > 4)
  {
    if (v4 == 6)
    {
      return v3 * a3;
    }

    if (v4 != 5)
    {
      return v3;
    }

LABEL_7:
    a3 = (*(*a2 + 16))(a2, v4);
    return v3 * a3;
  }

  if ((v4 - 2) < 2)
  {
    goto LABEL_7;
  }

  if (v4 == 4)
  {
    return v3 * a3 / 100.0;
  }

  return v3;
}

double sub_275CBB140(uint64_t a1, double a2, double a3)
{
  result = *(a1 + 8);
  v5 = *a1;
  if (*a1 <= 3)
  {
    if (v5 == 1)
    {
      return result;
    }

    if (v5 == 3)
    {
      return result * a2;
    }

    return 0.0;
  }

  if (v5 == 4)
  {
    return result * a2 / 100.0;
  }

  if (v5 != 5)
  {
    if (v5 == 6)
    {
      return result * a2;
    }

    return 0.0;
  }

  return result * a3;
}

uint64_t sub_275CBB1A8(std::string *__str, uint64_t a2)
{
  v3 = 0;
  __p = 0;
  v42 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v43 = 0;
  v38 = 1;
  while (v3 < size)
  {
    v5 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v5 >= 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if (v5 >= 0)
    {
      v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __str->__r_.__value_.__l.__size_;
    }

    if (v7 > v3)
    {
      v8 = v6 + v7;
      v9 = v6 + v3;
LABEL_14:
      v10 = 0;
      while (*v9 != asc_275D3016D[v10])
      {
        if (++v10 == 3)
        {
          if (++v9 != v8)
          {
            goto LABEL_14;
          }

          goto LABEL_21;
        }
      }

      if (v9 != v8)
      {
        v11 = v9 - v6;
        if (v9 - v6 != -1)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_21:
    v11 = size;
LABEL_22:
    std::string::basic_string(&v40, __str, v3, v11 - v3, &v39);
    sub_275CBAC28(&v39, &v40, 0, v12);
    v13 = v39;
    if (v39)
    {
      v14 = v42;
      if (v42 >= v43)
      {
        v16 = (v42 - __p) >> 4;
        v17 = v16 + 1;
        if ((v16 + 1) >> 60)
        {
          sub_275C8D77C();
        }

        v18 = v43 - __p;
        if ((v43 - __p) >> 3 > v17)
        {
          v17 = v18 >> 3;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v19 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_275C9A8F4(&__p, v19);
        }

        v20 = (16 * v16);
        *v20 = v39;
        v15 = 16 * v16 + 16;
        v21 = (16 * v16 - (v42 - __p));
        memcpy(v20 - (v42 - __p), __p, v42 - __p);
        v22 = __p;
        __p = v21;
        v42 = v15;
        v43 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v42 = v39;
        v15 = (v14 + 16);
      }

      v42 = v15;
      if (v11 >= size)
      {
        goto LABEL_51;
      }

      v23 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
      v24 = v23 >= 0 ? __str : __str->__r_.__value_.__r.__words[0];
      v25 = v23 >= 0 ? HIBYTE(__str->__r_.__value_.__r.__words[2]) : __str->__r_.__value_.__l.__size_;
      if (v25 <= v11)
      {
        goto LABEL_49;
      }

      while (1)
      {
        v26 = v24->__r_.__value_.__s.__data_[v11];
        v27 = v26 > 0x20;
        v28 = (1 << v26) & 0x100000600;
        if (v27 || v28 == 0)
        {
          break;
        }

        if (v25 == ++v11)
        {
          goto LABEL_49;
        }
      }

      if (v11 == -1)
      {
LABEL_49:
        v3 = size;
      }

      else
      {
LABEL_51:
        v3 = v11;
      }
    }

    else
    {
      v38 = 0;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
      if (!v13)
      {
        break;
      }
    }

    else if (!v13)
    {
      break;
    }
  }

  v30 = __p;
  if (v38)
  {
    v31 = v42;
    if (__p != v42)
    {
      v32 = *a2;
      *a2 = __p;
      *(a2 + 8) = v31;
      v33 = v43;
      v34 = *(a2 + 16);
      __p = v32;
      v43 = v34;
      *(a2 + 16) = v33;
      v35 = 1;
      v30 = v32;
      if (!v32)
      {
        return v35;
      }

      goto LABEL_61;
    }
  }

  v35 = 0;
  if (__p)
  {
LABEL_61:
    v42 = v30;
    operator delete(v30);
  }

  return v35;
}

void sub_275CBB470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275CBB4A8(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_275C97498(a1, v4, v6);
      v6 += 24;
    }

    while (v6 != a3);
  }

  return a1;
}

void sub_275CBB558(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  if (v6 > (a1[1] - *a1) >> 3)
  {
    v14 = 0;
    sub_275C9E05C(a1, v6, &v14);
    v14 = 0;
    sub_275C9E05C(a1 + 3, v6, &v14);
  }

  if (v4 != v5)
  {
    v7 = 0;
    v8 = 0;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v9 = *a2;
      v10 = *a1;
      v11 = sub_275CD94C4(*a2 + v7);
      if (*(v10 + 8 * v8) >= v11)
      {
        v11 = *(v10 + 8 * v8);
      }

      *(*a1 + 8 * v8) = v11;
      v12 = a1[3];
      v13 = sub_275CD950C(v9 + v7);
      if (*(v12 + 8 * v8) >= v13)
      {
        v13 = *(v12 + 8 * v8);
      }

      *(a1[3] + 8 * v8++) = v13;
      v7 += 24;
    }

    while (v6 != v8);
  }
}

double sub_275CBB658(void *a1, uint64_t a2, unint64_t a3)
{
  result = 0.0;
  if (a3 < (a1[1] - *a1) >> 3)
  {
    v4 = *(*a1 + 8 * a3);
    return v4 - sub_275CD94C4(a2);
  }

  return result;
}

double sub_275CBB69C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 24);
  result = 0.0;
  if (a3 < (*(a1 + 32) - v3) >> 3)
  {
    v5 = *(v3 + 8 * a3);
    return v5 - sub_275CD950C(a2);
  }

  return result;
}

double sub_275CBB6E0(void *a1, uint64_t a2)
{
  v2 = a2 + 1;
  v3 = a1[1];
  result = 0.0;
  if (a2 + 1 < ((v3 - *a1) >> 3))
  {
    v5 = 8 * v2;
    v6 = (*a1 + 8 * v2);
    v7 = 0.0;
    if (v6 != v3)
    {
      v8 = 0.0;
      do
      {
        v9 = *v6++;
        v8 = v9 + v8;
      }

      while (v6 != v3);
      v7 = v8 + 0.0;
    }

    v10 = a1[4];
    v11 = (v5 + a1[3]);
    if (v11 != v10)
    {
      v12 = 0.0;
      do
      {
        v13 = *v11++;
        v12 = v13 + v12;
      }

      while (v11 != v10);
      result = v12;
    }

    return v7 + result;
  }

  return result;
}

void sub_275CBB990(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  pthread_rwlock_rdlock((a1 + 9));
  v6 = sub_275CC1234(a1 + 1, a2);
  v7 = v6;
  if (v6)
  {
    v6[8] = **a1;
    v8 = v6[6];
    v9 = v6[7];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v9 = 0;
  }

  pthread_rwlock_unlock((a1 + 9));
  if (!v7 && (a1[34][2])())
  {
    pthread_rwlock_wrlock((a1 + 9));
    v10 = sub_275CC1234(a1 + 1, a2);
    if (v10)
    {
      v10[8] = **a1;
      v11 = v10[6];
      v12 = v10[7];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v15 = **a1;
      v13 = sub_275CC1338(a1 + 1, a2);
      v14 = v13[7];
      v13[6] = 0;
      v13[7] = 0;
      if (v14)
      {
        sub_275C9B8F0(v14);
      }

      v13[8] = v15;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      v11 = 0;
      v12 = 0;
    }

    *a3 = v11;
    a3[1] = v12;
    if (v9)
    {
      sub_275C9B8F0(v9);
    }

    pthread_rwlock_unlock((a1 + 9));
  }
}

void sub_275CBBB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_275C9B8F0(a11);
  }

  if (v11)
  {
    sub_275C9B8F0(v11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275CBBB60(uint64_t a1, CGGlyph *a2, const __CTFont **a3, double *a4, double *a5)
{
  if (!*a3)
  {
    return 0;
  }

  v8 = sub_275C98C14(*a2, *a3);
  if (!*a3)
  {
    v10 = 0.0;
    if (v8)
    {
      goto LABEL_4;
    }

    return 0;
  }

  SlantAngle = CTFontGetSlantAngle(*a3);
  v10 = fabs(tan(SlantAngle * 3.14159265 / 180.0));
  if (!v8)
  {
    return 0;
  }

LABEL_4:
  v11 = *v8 != 0;
  if (*v8)
  {
    if (v10 == 0.0)
    {
      *a4 = 0.0;
      *a5 = 0.0;
    }

    else
    {
      sub_275C98CD0(v8);
      v12 = v8[1];
      v13 = v8[2];
      if (v12 == v13)
      {
        v18 = 0.0;
        v15 = 2.22507386e-308;
        v16 = 1.79769313e308;
        v17 = 2.22507386e-308;
        v19 = 1.79769313e308;
        v25 = 1.79769313e308;
      }

      else
      {
        v14 = 0.0;
        v15 = 2.22507386e-308;
        v16 = 1.79769313e308;
        v17 = 2.22507386e-308;
        v18 = 0.0;
        v19 = 1.79769313e308;
        v20 = v8[1];
        do
        {
          v22 = *v20;
          v21 = v20[1];
          if (v21 > v15)
          {
            v15 = v20[1];
          }

          if (v21 < v16)
          {
            v16 = v20[1];
          }

          if (v22 < v19 || (v22 == v19 ? (v23 = v21 < v14) : (v23 = 0), v23))
          {
            v19 = *v20;
            v14 = v20[1];
          }

          if (v22 > v17 || (v22 == v17 ? (v24 = v21 < v18) : (v24 = 0), v24))
          {
            v18 = v20[1];
            v17 = *v20;
          }

          v20 += 2;
        }

        while (v20 != v13);
        if (v12 == v13)
        {
          v25 = 1.79769313e308;
        }

        else
        {
          v25 = 1.79769313e308;
          do
          {
            v26 = v12[1];
            if (v26 <= v14)
            {
              v27 = *v12 + (v26 - v16) * v10;
              if (v27 < v25)
              {
                v25 = v27;
              }
            }

            v12 += 2;
          }

          while (v12 != v13);
        }
      }

      v28 = v17 + (v18 - v16) * v10;
      v29 = (v19 + v17) * 0.5;
      *a5 = (v28 + v25) * 0.5 - v29;
      *a4 = (v28 - (v15 - v16) * v10 + v25 - (v15 - v16) * v10) * 0.5 - v29;
    }
  }

  v30 = sub_275C98A80(v8);
  MEMORY[0x277C8CFC0](v30, 0x1070C40036CD406);
  return v11;
}

uint64_t sub_275CBBD68(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 72));
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v6;
  if (*(a1 + 32) > a2)
  {
    *(a1 + 48) = 1;
  }

  pthread_rwlock_unlock((a1 + 72));

  return sub_275CBCC4C(a1);
}

uint64_t sub_275CBBDDC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 72));
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v6;
  if (*(a1 + 32) > a2)
  {
    *(a1 + 48) = 1;
  }

  pthread_rwlock_unlock((a1 + 72));

  return sub_275CBCDF0(a1);
}

void sub_275CBC468(_Unwind_Exception *a1)
{
  sub_275CC0EF4(v1 + 304, *v4);
  sub_275CC0EF4(v1 + 280, *v3);
  sub_275CBFE20(v2);
  sub_275CBFE20(v1 + 168);
  _Unwind_Resume(a1);
}

void sub_275CBC524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 328);
  if (v4)
  {
    v5 = *(a2 + 20);
    if (*a2)
    {
      v6 = objc_msgSend_UTF8String(*a2, a2, a3, a4);
    }

    else
    {
      v6 = "";
    }

    sub_275CA6274(v7, v6);
    v9[0] = v5;
    v9[1] = 13;
    if (SHIBYTE(v8) < 0)
    {
      sub_275CAF534(&__p, v7[0], v7[1]);
    }

    else
    {
      __p = *v7;
      v11 = v8;
    }

    sub_275CC0CC4(v4 + 48, v9);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  operator new();
}

void sub_275CBC680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CBC6C8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_275CBB990(*(*(a1 + 32) + 384), a2, &v6);
  v4 = v6;
  if (v6)
  {
    v4 = *v6;
  }

  *a3 = v4;
  if (v7)
  {
    sub_275C9B8F0(v7);
  }

  return 1;
}

uint64_t sub_275CBC720(uint64_t a1, uint64_t a2, double *a3)
{
  if (*a2)
  {
    v5 = CTFontCreateWithName(*a2, *(a2 + 8), 0);
    v14 = v5;
    if (v5)
    {
      v6 = v5;
      v12 = 0.0;
      v13 = 0.0;
      v11 = *(a2 + 16);
      v7 = sub_275CBBB60(v5, &v11, &v14, &v13, &v12);
      v9 = v12;
      v8 = v13;
      if (!v7)
      {
        v9 = 0.0;
        v8 = 0.0;
      }

      *a3 = v8;
      a3[1] = v9;
      CFRelease(v6);
    }
  }

  return 1;
}

uint64_t sub_275CBC7BC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 208)) = a2[1];
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = sub_275CC0E9C(v4);
    MEMORY[0x277C8CFC0](v5, 0x1072C402C72566ELL);
    *(a1 + 8) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = sub_275CC0E9C(v6);
    MEMORY[0x277C8CFC0](v7, 0x1072C402C72566ELL);
    *(a1 + 24) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = sub_275CC0E9C(v8);
    MEMORY[0x277C8CFC0](v9, 0x1072C402C72566ELL);
    *(a1 + 16) = 0;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = sub_275CC0E9C(v10);
    MEMORY[0x277C8CFC0](v11, 0x1072C402C72566ELL);
    *(a1 + 32) = 0;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = sub_275CC0E9C(v12);
    MEMORY[0x277C8CFC0](v13, 0x1072C402C72566ELL);
    *(a1 + 56) = 0;
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    v15 = sub_275CC0E9C(v14);
    MEMORY[0x277C8CFC0](v15, 0x1072C402C72566ELL);
    *(a1 + 72) = 0;
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = sub_275CC0E9C(v16);
    MEMORY[0x277C8CFC0](v17, 0x1072C402C72566ELL);
    *(a1 + 64) = 0;
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = sub_275CC0E9C(v18);
    MEMORY[0x277C8CFC0](v19, 0x1072C402C72566ELL);
    *(a1 + 80) = 0;
  }

  v20 = *(a1 + 88);
  if (v20)
  {
    v21 = sub_275CC0E9C(v20);
    MEMORY[0x277C8CFC0](v21, 0x1072C402C72566ELL);
    *(a1 + 88) = 0;
  }

  v22 = *(a1 + 96);
  if (v22)
  {
    v23 = sub_275CC0E9C(v22);
    MEMORY[0x277C8CFC0](v23, 0x1072C402C72566ELL);
    *(a1 + 96) = 0;
  }

  v24 = *(a1 + 104);
  if (v24)
  {
    v25 = sub_275CC0E9C(v24);
    MEMORY[0x277C8CFC0](v25, 0x1072C402C72566ELL);
    *(a1 + 104) = 0;
  }

  v26 = *(a1 + 112);
  if (v26)
  {
    v27 = sub_275CC0E9C(v26);
    MEMORY[0x277C8CFC0](v27, 0x1072C402C72566ELL);
    *(a1 + 112) = 0;
  }

  v28 = *(a1 + 120);
  if (v28)
  {
    v29 = sub_275CC0E9C(v28);
    MEMORY[0x277C8CFC0](v29, 0x1072C402C72566ELL);
    *(a1 + 120) = 0;
  }

  v30 = *(a1 + 128);
  if (v30)
  {
    v31 = sub_275CC0E9C(v30);
    MEMORY[0x277C8CFC0](v31, 0x1072C402C72566ELL);
    *(a1 + 128) = 0;
  }

  v32 = *(a1 + 136);
  if (v32)
  {
    v33 = sub_275CC0E9C(v32);
    MEMORY[0x277C8CFC0](v33, 0x1072C402C72566ELL);
    *(a1 + 136) = 0;
  }

  v34 = *(a1 + 144);
  if (v34)
  {
    v35 = sub_275CC0E9C(v34);
    MEMORY[0x277C8CFC0](v35, 0x1072C402C72566ELL);
    *(a1 + 144) = 0;
  }

  v36 = *(a1 + 152);
  if (v36)
  {
    v37 = sub_275CC0E9C(v36);
    MEMORY[0x277C8CFC0](v37, 0x1072C402C72566ELL);
    *(a1 + 152) = 0;
  }

  v38 = *(a1 + 160);
  if (v38)
  {
    v39 = sub_275CC0E9C(v38);
    MEMORY[0x277C8CFC0](v39, 0x1072C402C72566ELL);
    *(a1 + 160) = 0;
  }

  v40 = *(a1 + 40);
  if (v40)
  {
    v41 = sub_275CC0E9C(v40);
    MEMORY[0x277C8CFC0](v41, 0x1072C402C72566ELL);
    *(a1 + 40) = 0;
  }

  v42 = *(a1 + 48);
  if (v42)
  {
    v43 = sub_275CC0E9C(v42);
    MEMORY[0x277C8CFC0](v43, 0x1072C402C72566ELL);
    *(a1 + 48) = 0;
  }

  v44 = *(a1 + 328);
  if (v44)
  {
    v45 = sub_275CC0D48(v44);
    MEMORY[0x277C8CFC0](v45, 0x1020C40FA75F7B4);
  }

  v46 = *(a1 + 336);
  if (v46)
  {
    MEMORY[0x277C8CFC0](v46, 0x1000C404B66DB26);
  }

  v47 = *(a1 + 344);
  if (v47)
  {
    sub_275C8EC0C(*(a1 + 344), *(v47 + 8));
    MEMORY[0x277C8CFC0](v47, 0x1020C4062D53EE8);
  }

  v48 = *(a1 + 352);
  if (v48)
  {
    sub_275C8EC0C(*(a1 + 352), *(v48 + 8));
    MEMORY[0x277C8CFC0](v48, 0x1020C4062D53EE8);
  }

  v49 = *(a1 + 360);
  if (v49)
  {
    v50 = *v49;
    if (*v49)
    {
      *(v49 + 8) = v50;
      operator delete(v50);
    }

    MEMORY[0x277C8CFC0](v49, 0x10C402FEFCB83);
  }

  v51 = *(a1 + 368);
  if (v51)
  {
    v52 = *v51;
    if (*v51)
    {
      *(v51 + 8) = v52;
      operator delete(v52);
    }

    MEMORY[0x277C8CFC0](v51, 0x10C402FEFCB83);
  }

  v53 = *(a1 + 384);
  if (v53)
  {
    v54 = sub_275CC1B7C(v53);
    MEMORY[0x277C8CFC0](v54, 0x10E0C40B27302BALL);
  }

  v55 = *(a1 + 376);
  if (v55)
  {
    v56 = sub_275CC1BBC(v55);
    MEMORY[0x277C8CFC0](v56, 0x10E0C40B27302BALL);
  }

  v57 = *(a1 + 392);
  if (v57)
  {
    v58 = sub_275CC1BFC(v57);
    MEMORY[0x277C8CFC0](v58, 0x10E0C40B27302BALL);
  }

  sub_275CC0EF4(a1 + 304, *(a1 + 312));
  sub_275CC0EF4(a1 + 280, *(a1 + 288));
  sub_275CBFE20(a1 + 224);
  sub_275CBFE20(a1 + 168);
  return a1;
}

void sub_275CBCBC0(uint64_t a1)
{
  sub_275CBC7BC(a1, &off_2884CB8D0);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CBCC00(uint64_t ***a1)
{
  sub_275CBCC4C(a1[48]);
  sub_275CBCDF0(a1[47]);
  sub_275CBFE84(a1[27]);
  v2 = a1[34];

  return sub_275CBFE84(v2);
}

uint64_t sub_275CBCC4C(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      v16 = 0;
      v5 = 0uLL;
      v15 = 0u;
      v6 = a1[3];
      if (v6)
      {
        do
        {
          v7 = v6[8];
          sub_275C8FFF4(v14, v6 + 2);
          v14[4] = (v4 - v7);
          sub_275CC1C3C(&v15, v14);
          sub_275C90098(v14);
          v6 = *v6;
        }

        while (v6);
        v5 = v15;
      }

      v8 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v5 + 1) - v5) >> 3));
      v17 = sub_275CC1CAC;
      if (*(&v5 + 1) == v5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      sub_275CC1F4C(v5, *(&v5 + 1), &v17, v9, 1);
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v15 + 1) - v15) >> 3);
      v11 = a1[8];
      v12 = v10 - v11;
      if (v10 > v11)
      {
        v13 = 40 * v11;
        do
        {
          if (sub_275CC1234(a1 + 1, v15 + v13))
          {
            sub_275CC3684(a1 + 1, v15 + v13);
          }

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      *(a1 + 48) = 0;
      v14[0] = &v15;
      sub_275CC36D0(v14);
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_275CBCDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  sub_275CC36D0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_275CBCDF0(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      v16 = 0;
      v5 = 0uLL;
      v15 = 0u;
      v6 = a1[3];
      if (v6)
      {
        do
        {
          v7 = v6[7];
          sub_275C8FFF4(v14, v6 + 2);
          v14[4] = (v4 - v7);
          sub_275CC1C3C(&v15, v14);
          sub_275C90098(v14);
          v6 = *v6;
        }

        while (v6);
        v5 = v15;
      }

      v8 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v5 + 1) - v5) >> 3));
      v17 = sub_275CC3754;
      if (*(&v5 + 1) == v5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      sub_275CC1F4C(v5, *(&v5 + 1), &v17, v9, 1);
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v15 + 1) - v15) >> 3);
      v11 = a1[8];
      v12 = v10 - v11;
      if (v10 > v11)
      {
        v13 = 40 * v11;
        do
        {
          if (sub_275CC1234(a1 + 1, v15 + v13))
          {
            sub_275CC3768(a1 + 1, v15 + v13);
          }

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      *(a1 + 48) = 0;
      v14[0] = &v15;
      sub_275CC36D0(v14);
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_275CBCF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  sub_275CC36D0(&a10);
  _Unwind_Resume(a1);
}

void sub_275CBCF94(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sub_275CC0E9C(v2);
    MEMORY[0x277C8CFC0](v3, 0x1072C402C72566ELL);
    *a1 = 0;
  }

  operator new();
}

uint64_t sub_275CBD01C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 328);
  if (v4)
  {
    v7[0] = a4;
    v7[1] = a2;
    if (*(a3 + 23) < 0)
    {
      sub_275CAF534(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v9 = *(a3 + 16);
    }

    v5 = sub_275CC0CC4(v4 + 24, v7);
    if (v4 + 32 == v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = v5 + 64;
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

void sub_275CBD0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CBD0C4(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  v6 = *(a1 + 328);
  if (v6)
  {
    v10[0] = a4;
    v10[1] = a2;
    if (*(a3 + 23) < 0)
    {
      sub_275CAF534(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v12 = *(a3 + 16);
    }

    v7 = sub_275CC0CC4(v6, v10);
    v8 = v6 + 8;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 != v7)
    {
      a5 = *(v7 + 64);
    }
  }

  return a5 & 1;
}

void sub_275CBD160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_275CBD17C(uint64_t a1, unsigned int a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 336);
  if (v4)
  {
    return sub_275CB4B4C(v4 + 384 * a2, a3, a4);
  }

  else
  {
    return 0.0;
  }
}

double sub_275CBD19C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    return *(v2 + 8 * a2 + 12672);
  }

  else
  {
    return 0.0;
  }
}

CTFontRef sub_275CBD1B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_275CBD214(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 16);

  return CTFontCreateCopyWithAttributes(v4, v5, 0, 0);
}

uint64_t sub_275CBD248(uint64_t a1, UTF32Char a2, uint64_t a3)
{
  v5 = sub_275CB8098(a3) & 3;
  v6 = *(a1 + (8 * v5) + 8);
  if (!v6 || (v7 = *(v6 + 8)) == 0 || !CFCharacterSetIsLongCharacterMember(v7, a2))
  {
    if ((v5 - 1) < 2)
    {
      v8 = &dword_275D0BFF4;
      v9 = 1;
LABEL_9:
      v10 = a1 + 8;
      v11 = 1;
      while (1)
      {
        v12 = *v8++;
        v6 = *(v10 + 8 * (v12 & 3));
        if (!v6)
        {
          goto LABEL_14;
        }

        v13 = *(v6 + 8);
        if (v13)
        {
          break;
        }

        v6 = 0;
LABEL_15:
        if (v11++ >= v9)
        {
          return v6;
        }
      }

      if (!CFCharacterSetIsLongCharacterMember(v13, a2))
      {
        v6 = 0;
      }

LABEL_14:
      if (v6)
      {
        return v6;
      }

      goto LABEL_15;
    }

    if (v5)
    {
      v8 = &dword_275D0BFF8;
      v9 = 3;
      goto LABEL_9;
    }

    return 0;
  }

  return v6;
}

uint64_t sub_275CBD334(uint64_t a1, UTF32Char a2, uint64_t a3)
{
  v5 = sub_275CB8098(a3) & 3;
  v6 = *(a1 + (8 * v5) + 56);
  if (!v6 || (v7 = *(v6 + 8)) == 0 || !CFCharacterSetIsLongCharacterMember(v7, a2))
  {
    if ((v5 - 1) < 2)
    {
      v8 = &dword_275D0BFF4;
      v9 = 1;
LABEL_9:
      v10 = a1 + 56;
      v11 = 1;
      while (1)
      {
        v12 = *v8++;
        v6 = *(v10 + 8 * (v12 & 3));
        if (!v6)
        {
          goto LABEL_14;
        }

        v13 = *(v6 + 8);
        if (v13)
        {
          break;
        }

        v6 = 0;
LABEL_15:
        if (v11++ >= v9)
        {
          return v6;
        }
      }

      if (!CFCharacterSetIsLongCharacterMember(v13, a2))
      {
        v6 = 0;
      }

LABEL_14:
      if (v6)
      {
        return v6;
      }

      goto LABEL_15;
    }

    if (v5)
    {
      v8 = &dword_275D0BFF8;
      v9 = 3;
      goto LABEL_9;
    }

    return 0;
  }

  return v6;
}

const __CFCharacterSet *sub_275CBD420(uint64_t *a1, UTF32Char a2, uint64_t a3)
{
  v4 = a1 + 17;
  v3 = a1[17];
  if (!v3)
  {
    return 0;
  }

  result = *(v3 + 8);
  if (!result)
  {
    return result;
  }

  if (!CFCharacterSetIsLongCharacterMember(result, a2))
  {
    return 0;
  }

  v9 = sub_275CB8098(a3);
  if (*a3)
  {
    v10 = a1 + 19;
    if ((v9 & 2) != 0)
    {
      v10 = a1 + 20;
    }

    v11 = a1 + 13;
    v12 = a1 + 14;
LABEL_18:
    if ((v9 & 2) != 0)
    {
      v11 = v12;
    }

    goto LABEL_20;
  }

  if (*(a3 + 8) != 1 || *(a3 + 10) != 1)
  {
    v10 = a1 + 18;
    if ((v9 & 2) == 0)
    {
      v10 = v4;
    }

    v11 = a1 + 1;
    v12 = a1 + 3;
    goto LABEL_18;
  }

  v10 = a1 + 15;
  if ((v9 & 2) != 0)
  {
    v10 = a1 + 16;
  }

  v13 = 12;
  if ((v9 & 2) == 0)
  {
    v13 = 11;
  }

  v11 = &a1[v13];
LABEL_20:
  if (v9)
  {
    v10 = v11;
  }

  v14 = *v10;
  if (!*v10)
  {
    return 0;
  }

  result = *(v14 + 8);
  if (result)
  {
    if (CFCharacterSetIsLongCharacterMember(result, a2))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFCharacterSet *sub_275CBD524(void *a1, UTF32Char theChar, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
    if (*(a4 + 24))
    {
      return 0;
    }

    v11 = a1[45];
    if (!v11)
    {
      return 0;
    }

    v12 = *v11;
    v13 = *(v11 + 8);
    if (v13 == v12)
    {
      return 0;
    }

    v14 = v13 - v12;
    do
    {
      v15 = v14 >> 1;
      v16 = &v12[v14 >> 1];
      v18 = *v16;
      v17 = v16 + 1;
      v14 += ~(v14 >> 1);
      if (v18 < theChar)
      {
        v12 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
    if (v12 == v13 || *v12 != theChar)
    {
      return 0;
    }
  }

  v6 = *(a4 + 12);
  if (v6 == 4 || v6 == 2)
  {
    v8 = a1[6];
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        if (CFCharacterSetIsLongCharacterMember(v9, theChar))
        {
          return a1[6];
        }
      }
    }
  }

  v19 = a1[5];
  if (!v19)
  {
    return 0;
  }

  result = *(v19 + 8);
  if (!result)
  {
    return result;
  }

  if (CFCharacterSetIsLongCharacterMember(result, theChar))
  {
    return a1[5];
  }

  else
  {
    return 0;
  }
}

const __CFCharacterSet *sub_275CBD60C(uint64_t a1, UTF32Char a2, uint64_t a3)
{
  if (*(a3 + 10) != 1 || *(a3 + 8) != 1)
  {
    return 0;
  }

  v5 = sub_275CB8098(a3);
  v6 = 224;
  if ((v5 & 2) == 0)
  {
    v6 = 168;
  }

  v7 = *(a1 + v6 + 8);
  if (!v7 || (v8 = v7[1]) == 0)
  {
    if ((v5 & 2) == 0)
    {
      return 0;
    }

    goto LABEL_15;
  }

  IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(v8, a2);
  if (IsLongCharacterMember)
  {
    result = v7;
  }

  else
  {
    result = 0;
  }

  if ((v5 & 2) != 0 && !IsLongCharacterMember)
  {
LABEL_15:
    v11 = *(a1 + 176);
    if (v11)
    {
      result = *(v11 + 8);
      if (result)
      {
        if (CFCharacterSetIsLongCharacterMember(result, a2))
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

uint64_t sub_275CBD6D8(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2 > 120075)
  {
    if (a2 > 120132)
    {
      if (a2 <= 120135)
      {
        if (a2 == 120133)
        {
          return 8469;
        }

        else if (a2 == 120135)
        {
          return 8473;
        }
      }

      else
      {
        switch(a2)
        {
          case 0x1D548:
            return 8474;
          case 0x1D549:
            return 8477;
          case 0x1D551:
            return 8484;
        }
      }
    }

    else if (a2 <= 120092)
    {
      if (a2 == 120076)
      {
        return 8465;
      }

      else if (a2 == 120085)
      {
        return 8476;
      }
    }

    else
    {
      switch(a2)
      {
        case 0x1D51D:
          return 8488;
        case 0x1D53A:
          return 8450;
        case 0x1D53F:
          return 8461;
      }
    }
  }

  else if (a2 > 119974)
  {
    if (a2 <= 119980)
    {
      if (a2 == 119975)
      {
        return 8466;
      }

      else if (a2 == 119976)
      {
        return 8499;
      }
    }

    else
    {
      switch(a2)
      {
        case 0x1D4AD:
          return 8475;
        case 0x1D506:
          return 8493;
        case 0x1D50B:
          return 8460;
      }
    }
  }

  else if (a2 <= 119968)
  {
    if (a2 == 119965)
    {
      return 8492;
    }

    else if (a2 == 119968)
    {
      return 8496;
    }
  }

  else
  {
    switch(a2)
    {
      case 0x1D4A1:
        return 8497;
      case 0x1D4A3:
        return 8459;
      case 0x1D4A4:
        return 8464;
    }
  }

  return result;
}

uint64_t sub_275CBD92C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == 39)
  {
    if (!*(a3 + 24))
    {
      return 8242;
    }
  }

  else if (a2 == 45)
  {
    if (*(a3 + 24) == 1)
    {
      return 8208;
    }

    else
    {
      return 8722;
    }
  }

  if ((a2 - 65) >= 0x1A && (a2 - 97) > 0x19)
  {
    if ((a2 - 48) <= 9)
    {
      v5 = *(a3 + 12) - 5;
      if (v5 <= 9)
      {
        v4 = a2;
        if ((0x3E1u >> v5))
        {
          return (dword_275D0C11C[v5] + a2 - 48);
        }

        return v4;
      }

      return a2;
    }

    v9 = *(a1 + 344);
    if (v9)
    {
      v12 = *(v9 + 8);
      v10 = v9 + 8;
      v11 = v12;
      v4 = a2;
      if (v12)
      {
        v13 = v10;
        do
        {
          v14 = *(v11 + 28);
          v15 = v14 >= a2;
          v16 = v14 < a2;
          if (v15)
          {
            v13 = v11;
          }

          v11 = *(v11 + 8 * v16);
        }

        while (v11);
        v4 = a2;
        if (v13 != v10)
        {
          v4 = a2;
          if (*(v13 + 28) <= a2)
          {
            v4 = *(v13 + 32);
          }
        }
      }

      goto LABEL_40;
    }

    v4 = a2;
    if (*(a1 + 352))
    {
LABEL_40:
      if (!a4)
      {
        return v4;
      }

      v17 = *(a1 + 352);
      if (!v17 || v4 != a2)
      {
        return v4;
      }

      v20 = *(v17 + 8);
      v19 = v17 + 8;
      v18 = v20;
      if (v20)
      {
        v21 = v19;
        do
        {
          v22 = *(v18 + 28);
          v15 = v22 >= a2;
          v23 = v22 < a2;
          if (v15)
          {
            v21 = v18;
          }

          v18 = *(v18 + 8 * v23);
        }

        while (v18);
        if (v21 != v19)
        {
          v4 = a2;
          if (*(v21 + 28) <= a2)
          {
            return *(v21 + 32);
          }

          return v4;
        }
      }
    }

    return a2;
  }

  v6 = *(a3 + 12);
  if (v6 > 9)
  {
    if (v6 <= 11)
    {
      if (v6 == 10)
      {
        v8 = 120250;
        v7 = 120224;
      }

      else
      {
        v8 = 120250;
        v7 = 120276;
      }
    }

    else
    {
      switch(v6)
      {
        case 12:
          v7 = 120328;
          v8 = 120354;
          break;
        case 13:
          v7 = 120380;
          v8 = 120406;
          break;
        case 14:
          v7 = 120432;
          v8 = 120458;
          break;
        default:
          return a2;
      }
    }
  }

  else if (v6 <= 6)
  {
    if (v6 == 5)
    {
      v7 = 120120;
      v8 = 120146;
    }

    else
    {
      if (v6 != 6)
      {
        return a2;
      }

      v7 = 120172;
      v8 = 120198;
    }
  }

  else if (v6 == 7)
  {
    v7 = 119964;
    v8 = 119990;
  }

  else if (v6 == 8)
  {
    v7 = 120016;
    v8 = 120042;
  }

  else
  {
    v7 = 120068;
    v8 = 120094;
  }

  if ((a2 - 65) >= 0x1A)
  {
    v25 = -97;
  }

  else
  {
    v8 = v7;
    v25 = -65;
  }

  return sub_275CBD6D8(a1, (v25 + a2 + v8));
}

const __CFCharacterSet *sub_275CBDBCC(uint64_t *a1, UTF32Char a2, uint64_t a3, uint64_t a4, const __CFCharacterSet **a5)
{
  result = sub_275CBD420(a1, a2, a4);
  if (result)
  {
    return result;
  }

  result = sub_275CBD60C(a1, a2, a4);
  if (result)
  {
    return result;
  }

  result = sub_275CBD524(a1, a2, a3, a4);
  if (!a5 || result)
  {
    if (result)
    {
      return result;
    }
  }

  else
  {
    v11 = a5[1];
    if (v11)
    {
      IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(v11, a2);
      result = a5;
      if (IsLongCharacterMember)
      {
        return result;
      }
    }
  }

  result = sub_275CBD248(a1, a2, a4);
  if (result)
  {
    return result;
  }

  v13 = a1[22];
  if (!v13)
  {
    goto LABEL_15;
  }

  result = *(v13 + 8);
  if (result)
  {
    if (CFCharacterSetIsLongCharacterMember(result, a2))
    {
      result = a1[22];
      goto LABEL_16;
    }

LABEL_15:
    result = 0;
  }

LABEL_16:
  if ((a2 - 57344) >> 11 <= 2 && !result)
  {

    return sub_275CBD334(a1, a2, a4);
  }

  return result;
}

const __CFCharacterSet *sub_275CBDCEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_275CBD92C(a1, a2, a3, 0);
  result = sub_275CBDBCC(a1, v6, 0, a3, 0);
  if (result)
  {
    return (result + 16);
  }

  if (v6 == v4)
  {
    return 0;
  }

  result = sub_275CBDBCC(a1, v4, 0, a3, 0);
  if (result)
  {
    return (result + 16);
  }

  return result;
}

uint64_t sub_275CBDD78(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_length(a2, a2, a3, a4);
  v7 = v5;
  v8 = 4 * v5;
  if (v5 >= 0x40)
  {
    v9 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v9 = v51;
  }

  v48 = 0;
  if (objc_msgSend_getBytes_maxLength_usedLength_encoding_options_range_remainingRange_(a2, v6, v9, v8, &v48, 2617245952, 0, 0, v7, 0))
  {
    v10 = v48;
    v11 = v48 >> 2;
    v47 = 0;
    v45 = sub_275CBD214(a1, a3);
    v41 = v10;
    if (v10 < 4)
    {
      v15 = 0;
      v43 = 0;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
      if (v16 || v41 < 4 || !v15 || (v43 & 1) != 0)
      {
        v24 = 0;
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_88;
        }

        v14 = v11 - v16;
        if (v11 <= v16 || !v15)
        {
          goto LABEL_88;
        }

        sub_275CBE40C(&v47, v9, v16, v14, v15, *(a3 + 16));
      }

      else if (*v15)
      {
        CopyWithAttributes = CTFontCreateCopyWithAttributes(*v15, *(a3 + 16), 0, 0);
        v18 = CopyWithAttributes;
        if (CopyWithAttributes)
        {
          v19 = *MEMORY[0x277CC49C8];
          v49[0] = *MEMORY[0x277CC4838];
          v49[1] = v19;
          v20 = *MEMORY[0x277CBED28];
          v50[0] = CopyWithAttributes;
          v50[1] = v20;
          v49[2] = *MEMORY[0x277CC4AD0];
          v50[2] = &unk_2884D33D8;
          v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v50, v49, 3);
          v22 = objc_alloc(MEMORY[0x277CCA898]);
          v24 = objc_msgSend_initWithString_attributes_(v22, v23, a2, v21);
          CFRelease(v18);
          goto LABEL_88;
        }
      }

      v24 = 0;
LABEL_88:
      v39 = v47;
      if (!v24 && v47)
      {
        v24 = objc_msgSend_copy(v47, v12, v13, v14);
      }

      goto LABEL_92;
    }

    v43 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v44 = v11;
    while (1)
    {
      v28 = *&v9[4 * v26];
      v29 = v26 + 1;
      v30 = v26 + 1 >= v11 ? 0 : sub_275CB1A60(*&v9[4 * v29]);
      v31 = sub_275CBD92C(a1, v28, a3, 0);
      v32 = sub_275CBDBCC(a1, v31, v30, a3, v45);
      v15 = v32;
      if (!v32 || v28 == v31)
      {
        if (!v32)
        {
          v15 = sub_275CBDBCC(a1, v28, 0, a3, v45);
          if (!v15)
          {
            if (v28 > 8197)
            {
              if (v28 <= 8201)
              {
                if (v28 != 8198 && v28 != 8201)
                {
                  goto LABEL_77;
                }

                v34 = 0.166666657;
                goto LABEL_72;
              }

              if (v28 == 8202)
              {
                v34 = 0.0833333284;
                goto LABEL_72;
              }

              if (v28 == 8287)
              {
                v34 = 0.222222224;
                goto LABEL_72;
              }

LABEL_77:
              if (*(a3 + 32))
              {
                operator new();
              }

              if (!v26)
              {
                goto LABEL_80;
              }
            }

            else
            {
              if (v28 > 8195)
              {
                if (v28 == 8196)
                {
                  v34 = 0.333333343;
                }

                else
                {
                  v34 = 0.25;
                }
              }

              else
              {
                v34 = 1.0;
                if (v28 != 0x2000 && v28 != 8194)
                {
                  goto LABEL_77;
                }
              }

LABEL_72:
              v38 = v47;
              if (!v47)
              {
                v38 = objc_alloc_init(MEMORY[0x277CCAB48]);
                v47 = v38;
              }

              objc_msgSend_appendSpaceToAttributedString_ascent_descent_width_(EQKitAdjustableSpace, v12, v38, v14, 0.0, 0.0, v34 * *(a3 + 16));
              if (!v26)
              {
LABEL_80:
                v15 = 0;
                if (!v30)
                {
                  v29 = v26;
                }

                goto LABEL_56;
              }
            }

            if (v27 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_80;
            }

            v15 = 0;
            v36 = v26 - v27;
LABEL_47:
            v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_50:
            if (v27 != 0x7FFFFFFFFFFFFFFFLL && v25)
            {
              sub_275CBE40C(&v47, v9, v27, v36, v25, *(a3 + 16));
            }

            if (!v30)
            {
LABEL_58:
              v29 = v26;
              goto LABEL_59;
            }

            goto LABEL_54;
          }
        }
      }

      else
      {
        *&v9[4 * v26] = v31;
        v43 = 1;
      }

      if (v31 == 8242)
      {
        break;
      }

      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = v26;
        if (!v30)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v25 != v15)
        {
          v36 = v26 - v27;
          v16 = v26;
          goto LABEL_50;
        }

        v16 = v27;
        v15 = v25;
        if (!v30)
        {
          goto LABEL_58;
        }
      }

LABEL_54:
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_275CBE40C(&v47, v9, v16, v29 - v16, v15, *(a3 + 16));
        v15 = 0;
      }

LABEL_56:
      v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_59:
      v26 = v29 + 1;
      v27 = v16;
      v25 = v15;
      v11 = v44;
      if (v29 + 1 >= v44)
      {
        goto LABEL_7;
      }
    }

    v35 = *(a3 + 16);
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0;
    }

    else
    {
      v36 = v26 - v27;
      if (!v25)
      {
LABEL_40:
        v37 = v47;
        if (!v47)
        {
          v37 = objc_alloc_init(MEMORY[0x277CCAB48]);
          v47 = v37;
        }

        if (v35 * 0.0 != 0.0)
        {
          objc_msgSend_appendSpaceToAttributedString_ascent_descent_width_(EQKitAdjustableSpace, v12, v37, v14, 0.0, 0.0, v35 * 0.0);
        }

        sub_275CBE40C(&v47, v9, v26, 1, v15, *(a3 + 16));
        if (v35 * -0.111111111 != 0.0)
        {
          objc_msgSend_appendSpaceToAttributedString_ascent_descent_width_(EQKitAdjustableSpace, v12, v47, v14, 0.0, 0.0, v35 * -0.111111111);
        }

        v15 = 0;
        goto LABEL_47;
      }

      sub_275CBE40C(&v47, v9, v27, v26 - v27, v25, *(a3 + 16));
    }

    v36 = 0;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_40;
  }

  v24 = 0;
LABEL_92:
  if (v9 != v51)
  {
    free(v9);
  }

  return v24;
}

void sub_275CBE40C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, CTFontRef *a5, CGFloat a6)
{
  v27[3] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (!*a1)
    {
      *a1 = objc_alloc_init(MEMORY[0x277CCAB48]);
    }

    if (*a5)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(*a5, a6, 0, 0);
      if (CopyWithAttributes)
      {
        v13 = CopyWithAttributes;
        v14 = objc_alloc(MEMORY[0x277CCACA8]);
        v16 = objc_msgSend_initWithBytes_length_encoding_(v14, v15, a2 + 4 * a3, 4 * a4, 2617245952);
        v17 = *MEMORY[0x277CC49C8];
        v26[0] = *MEMORY[0x277CC4838];
        v26[1] = v17;
        v18 = *MEMORY[0x277CBED28];
        v27[0] = v13;
        v27[1] = v18;
        v26[2] = *MEMORY[0x277CC4AD0];
        v27[2] = &unk_2884D33F0;
        v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v27, v26, 3);
        v21 = objc_alloc(MEMORY[0x277CCA898]);
        v23 = objc_msgSend_initWithString_attributes_(v21, v22, v16, v20);
        objc_msgSend_appendAttributedString_(*a1, v24, v23, v25);

        CFRelease(v13);
      }
    }
  }
}

CTFontRef sub_275CBE588(uint64_t *a1, unsigned int *a2, int a3, uint64_t a4, double a5)
{
  v10 = sub_275CB8098(a4);
  v11 = (a1 + 21);
  if ((v10 & 2) != 0)
  {
    v12 = (a1 + 28);
  }

  else
  {
    v12 = (a1 + 21);
  }

  v13 = sub_275CBD92C(a1, *a2, a4, 1);
  v14 = v13;
  *a2 = v13;
  if (a3 == 1)
  {
    v21 = a1[39];
    if (!v21)
    {
LABEL_21:
      v24 = a1[47];
      sub_275CBE828(a1, v13, a4, a3, v27);
      v25 = sub_275CBE720(v24, v27) != a3;
      sub_275C90098(v27);
      v14 = *a2;
      goto LABEL_22;
    }

    v16 = a1 + 39;
    v17 = a1 + 39;
    do
    {
      v22 = *(v21 + 32);
      v19 = v22 >= v13;
      v23 = v22 < v13;
      if (v19)
      {
        v17 = v21;
      }

      v21 = *(v21 + 8 * v23);
    }

    while (v21);
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_21;
    }

    v15 = a1[36];
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = a1 + 36;
    v17 = a1 + 36;
    do
    {
      v18 = *(v15 + 32);
      v19 = v18 >= v13;
      v20 = v18 < v13;
      if (v19)
      {
        v17 = v15;
      }

      v15 = *(v15 + 8 * v20);
    }

    while (v15);
  }

  if (v17 == v16 || v13 < *(v17 + 8))
  {
    goto LABEL_21;
  }

  v25 = 0;
LABEL_22:
  result = sub_275CBE998(v12, v14, a3, a4, v25, a5);
  if (!result && (v10 & 2) != 0)
  {
    return sub_275CBE998(v11, *a2, a3, a4, v25, a5);
  }

  return result;
}

uint64_t sub_275CBE720(uint64_t **a1, uint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 9));
  v4 = sub_275CC1234(a1 + 1, a2);
  if (v4)
  {
    goto LABEL_2;
  }

  pthread_rwlock_unlock((a1 + 9));
  v8 = 0;
  v9 = 0;
  v5 = 0;
  if (!(a1[34][2])())
  {
    return v5;
  }

  pthread_rwlock_wrlock((a1 + 9));
  v4 = sub_275CC1234(a1 + 1, a2);
  if (v4)
  {
LABEL_2:
    v4[7] = **a1;
    v5 = *(v4 + 12);
  }

  else
  {
    v9 = **a1;
    v10 = a2;
    v7 = sub_275CC3800(a1 + 1, a2);
    v5 = v8;
    *(v7 + 12) = v8;
    v7[7] = v9;
    if (a1[4] > a1[7])
    {
      *(a1 + 48) = 1;
    }
  }

  pthread_rwlock_unlock((a1 + 9));
  return v5;
}

void sub_275CBE828(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_275CB8098(a3) & 2;
  if (v10)
  {
    v11 = (a1 + 28);
  }

  else
  {
    v11 = (a1 + 21);
  }

  v12 = sub_275CBF608(v11, a2, a4, a3, 1, 1.79769313e308);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 == 0;
  }

  if (!v13)
  {
    v12 = sub_275CBF608((a1 + 21), a2, a4, a3, 1, 1.79769313e308);
  }

  if (v12)
  {
    sub_275C8FF34(a5);
  }

  else
  {
    v12 = sub_275CBDBCC(a1, a2, 0, a3, 0);
    sub_275C8FF34(a5);
    if (!v12)
    {
      return;
    }
  }

  if (*v12)
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(*v12, *(a3 + 16), 0, 0);
    if (CopyWithAttributes)
    {
      v15 = sub_275CBF548(a1, a3);
      sub_275C90134(CopyWithAttributes, a2, v16, v15);
      sub_275C8FFF8(a5, v16);
      sub_275C90098(v16);
      CFRelease(CopyWithAttributes);
    }
  }
}

void sub_275CBE970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275C90098(&a9);
  sub_275C90098(v9);
  _Unwind_Resume(a1);
}

CTFontRef sub_275CBE998(uint64_t a1, unsigned int a2, int a3, uint64_t a4, int a5, double a6)
{
  v7 = sub_275CBF608(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  v9 = *(a4 + 16);

  return CTFontCreateCopyWithAttributes(v8, v9, 0, 0);
}

uint64_t sub_275CBE9F4(uint64_t a1, unsigned int a2, int a3)
{
  if (a3 == 1)
  {
    v9 = *(a1 + 312);
    if (!v9)
    {
      return 0;
    }

    v4 = a1 + 312;
    v5 = a1 + 312;
    do
    {
      v10 = *(v9 + 32);
      v7 = v10 >= a2;
      v11 = v10 < a2;
      if (v7)
      {
        v5 = v9;
      }

      v9 = *(v9 + 8 * v11);
    }

    while (v9);
  }

  else
  {
    if (a3 != 2)
    {
      return 0;
    }

    v3 = *(a1 + 288);
    if (!v3)
    {
      return 0;
    }

    v4 = a1 + 288;
    v5 = a1 + 288;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
  }

  if (v5 == v4)
  {
    return 0;
  }

  v12 = *(v5 + 32);
  v13 = v5 + 40;
  if (v12 <= a2)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

double sub_275CBEA7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = 0.0;
  v3 = sub_275CBEAB8(a1, a2, a3, &v6, &v5);
  result = v6;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_275CBEAB8(uint64_t a1, uint64_t a2, uint64_t *a3, double *a4, double *a5)
{
  v10 = *(a3 + 4);
  v11 = *(a3 + 10);
  v12 = *(a3 + 3);
  v13 = *(a3 + 6);
  v14 = a3[4];
  v42 = *a3;
  v43 = v10;
  v44 = v11;
  v45 = v12;
  size = 12.0;
  v47 = v13;
  v48 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = sub_275CBDBCC(a1, a2, 0, &v42, 0);
  if (v15)
  {
    v16 = *v15;
    if (v16)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v16, size, 0, 0);
      if (CopyWithAttributes)
      {
        sub_275CC0B5C(v41, CopyWithAttributes, a2);
        v21 = sub_275CBEDB8(*(a1 + 392), v41);
        v23 = v22;
        if (v41[0])
        {
          v24 = objc_msgSend_UTF8String(v41[0], v18, v19, v20);
        }

        else
        {
          v24 = "";
        }

        sub_275CA6274(__p, v24);
        v26 = (*(*a1 + 24))(a1, 2, __p, a2);
        v30 = v26;
        if (v40 < 0)
        {
          operator delete(__p[0]);
          if (!v30)
          {
            goto LABEL_15;
          }
        }

        else if (!v26)
        {
LABEL_15:
          *a4 = v21;
          *a4 = v21 * (*(a3 + 2) / size);
          if (v41[0])
          {
            v32 = objc_msgSend_UTF8String(v41[0], v27, v28, v29);
          }

          else
          {
            v32 = "";
          }

          sub_275CA6274(v37, v32);
          v33 = (*(*a1 + 24))(a1, 1, v37, a2);
          v34 = v33;
          if (v38 < 0)
          {
            operator delete(v37[0]);
            if (!v34)
            {
LABEL_23:
              *a5 = v23;
              *a5 = v23 * (*(a3 + 2) / size);
              CFRelease(CopyWithAttributes);
              sub_275CC0C08(v41);
              v25 = 1;
              goto LABEL_24;
            }
          }

          else if (!v33)
          {
            goto LABEL_23;
          }

          v35 = CTFontGetSize(CopyWithAttributes);
          v23 = sub_275CBB138(v34, v35);
          goto LABEL_23;
        }

        v31 = CTFontGetSize(CopyWithAttributes);
        v21 = sub_275CBB138(v30, v31);
        goto LABEL_15;
      }
    }
  }

  v25 = 0;
LABEL_24:
  sub_275CAEAD0(&v42);
  return v25;
}

void sub_275CBED20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_275CC0C08(&a21);
  sub_275CAEAD0(&a24);
  _Unwind_Resume(a1);
}

double sub_275CBED7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = 0.0;
  v3 = sub_275CBEAB8(a1, a2, a3, &v6, &v5);
  result = v5;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

double sub_275CBEDB8(uint64_t **a1, uint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 9));
  v4 = sub_275CC3B0C(a1 + 1, a2);
  if (v4)
  {
    *(v4 + 7) = **a1;
    v5 = v4[5];
LABEL_10:
    pthread_rwlock_unlock((a1 + 9));
    return v5;
  }

  pthread_rwlock_unlock((a1 + 9));
  v11 = 0;
  v10 = 0uLL;
  v5 = 0.0;
  if ((a1[34][2])())
  {
    pthread_rwlock_wrlock((a1 + 9));
    v6 = sub_275CC3B0C(a1 + 1, a2);
    if (v6)
    {
      v6[7] = **a1;
      v7 = (v6 + 5);
    }

    else
    {
      v11 = **a1;
      v12 = a2;
      v8 = sub_275CC3C10(a1 + 1, a2);
      *(v8 + 5) = v10;
      v8[7] = v11;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      v7 = &v10;
    }

    v5 = *v7;
    goto LABEL_10;
  }

  return v5;
}

double sub_275CBEEF0(uint64_t a1, CTFontRef font)
{
  if (!a1 || !font)
  {
    return 0.0;
  }

  Size = CTFontGetSize(font);

  return sub_275CBB138(a1, Size);
}

uint64_t sub_275CBEF3C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = *(a4 + 4);
  v8 = *(a4 + 10);
  v9 = *(a4 + 3);
  v10 = *(a4 + 6);
  v11 = a4[4];
  v32 = *a4;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v36 = 0x4028000000000000;
  v37 = v10;
  v38 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = sub_275CBD92C(a1, a2, &v32, 1);
  v13 = v12;
  if (a3 == 1)
  {
    v20 = *(a1 + 312);
    if (!v20)
    {
      goto LABEL_20;
    }

    v15 = a1 + 312;
    v16 = a1 + 312;
    do
    {
      v21 = *(v20 + 32);
      v18 = v21 >= v12;
      v22 = v21 < v12;
      if (v18)
      {
        v16 = v20;
      }

      v20 = *(v20 + 8 * v22);
    }

    while (v20);
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_20;
    }

    v14 = *(a1 + 288);
    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = a1 + 288;
    v16 = a1 + 288;
    do
    {
      v17 = *(v14 + 32);
      v18 = v17 >= v12;
      v19 = v17 < v12;
      if (v18)
      {
        v16 = v14;
      }

      v14 = *(v14 + 8 * v19);
    }

    while (v14);
  }

  if (v16 != v15 && v12 >= *(v16 + 32))
  {
    goto LABEL_21;
  }

LABEL_20:
  v23 = *(a1 + 376);
  sub_275CBE828(a1, v12, &v32, a3, v29);
  LODWORD(v23) = sub_275CBE720(v23, v29);
  sub_275C90098(v29);
  if (v23 == a3)
  {
LABEL_21:
    v24 = 1;
    goto LABEL_30;
  }

  v27[0] = v13;
  sub_275CC0168(*(a1 + 216), v27, v29);
  if (v31 - 1 > 0xFD)
  {
    v39 = v13;
    sub_275CC0168(*(a1 + 272), &v39, v27);
    v25 = v28 - 1 < 0xFE && v27[12] == a3;
  }

  else
  {
    v25 = v30 == a3;
  }

  v24 = v25;
LABEL_30:
  sub_275CAEAD0(&v32);
  return v24;
}

BOOL sub_275CBF11C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275CBD248(a1, a2, a3);
  v7 = sub_275CBD92C(a1, a2, a3, 0);
  v8 = sub_275CBDBCC(a1, v7, 0, a3, v6);
  if (!v8)
  {
    if (v7 == a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_275CBDBCC(a1, a2, 0, a3, 0);
    }
  }

  if (v8 == a1[14] || v8 == a1[13] || v8 == a1[18] || v8 == a1[17] || v8 == a1[20] || v8 == a1[19])
  {
    v6 = v8;
  }

  return v6 == v8;
}

BOOL sub_275CBF20C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275CBD248(a1, a2, a3);
  v7 = sub_275CBD92C(a1, a2, a3, 0);
  v8 = sub_275CBDBCC(a1, v7, 0, a3, v6);
  if (!v8)
  {
    if (v7 == a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_275CBDBCC(a1, a2, 0, a3, 0);
    }
  }

  if (v6 != v8)
  {
    return 0;
  }

  v10 = a1[46];
  if (!v10)
  {
    return 1;
  }

  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == v11)
  {
    return 1;
  }

  v13 = v12 - v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v11[v13 >> 1];
    v17 = *v15;
    v16 = v15 + 1;
    v13 += ~(v13 >> 1);
    if (v17 < a2)
    {
      v11 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  return v11 == v12 || *v11 != a2;
}

BOOL sub_275CBF314(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275CBD248(a1, a2, a3);
  v7 = sub_275CBD92C(a1, a2, a3, 0);
  v8 = sub_275CBDBCC(a1, v7, 0, a3, v6);
  if (!v8)
  {
    if (v7 == a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_275CBDBCC(a1, a2, 0, a3, 0);
    }
  }

  if (v6 != v8)
  {
    return 0;
  }

  v10 = a1[46];
  if (!v10)
  {
    return 1;
  }

  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == v11)
  {
    return 1;
  }

  v13 = v12 - v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v11[v13 >> 1];
    v17 = *v15;
    v16 = v15 + 1;
    v13 += ~(v13 >> 1);
    if (v17 < a2)
    {
      v11 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  return v11 == v12 || *v11 != a2;
}

CGFloat sub_275CBF41C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_275CBD92C(a1, a2, a3, 0);
  v7 = sub_275CBDBCC(a1, v6, 0, a3, 0);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  boundingRects.origin = *MEMORY[0x277CBF3A0];
  boundingRects.size = v8;
  if (v7)
  {
    v9 = *v7;
    if (v9)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v9, *(a3 + 16), 0, 0);
      v17 = -1;
      if (CopyWithAttributes)
      {
        v11 = CopyWithAttributes;
        if ((v4 - 0x10000) >> 20)
        {
          v13 = 1;
          LOWORD(v12) = v4;
        }

        else
        {
          v12 = ((v4 - 0x10000) >> 10) | 0xFFFFD800;
          characters[1] = v4 & 0x3FF | 0xDC00;
          v13 = 2;
        }

        characters[0] = v12;
        if (CTFontGetGlyphsForCharacters(CopyWithAttributes, characters, glyphs, v13))
        {
          v17 = glyphs[0];
          if (glyphs[0] != 0xFFFF)
          {
            CTFontGetBoundingRectsForGlyphs(v11, kCTFontOrientationHorizontal, &v17, &boundingRects, 1);
            boundingRects.origin.y = -CGRectGetMaxY(boundingRects);
          }
        }

        CFRelease(v11);
      }
    }
  }

  return boundingRects.origin.x;
}

double sub_275CBF548(uint64_t *a1, uint64_t a2)
{
  v3 = sub_275CBDBCC(a1, 0x2212u, 0, a2, 0);
  v4 = 0.0;
  if (v3)
  {
    v5 = *v3;
    if (v5)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v5, *(a2 + 16), 0, 0);
      if (CopyWithAttributes)
      {
        v7 = CopyWithAttributes;
        v8 = sub_275C98B34(0x2212u, CopyWithAttributes);
        if (v8)
        {
          v9 = v8;
          if (*(v8 + 120) == 1)
          {
            v10 = (v8 + 88);
          }

          else
          {
            v10 = sub_275C98D24(v8);
          }

          v4 = v10[3];
          v11 = sub_275C98A80(v9);
          MEMORY[0x277C8CFC0](v11, 0x1070C40036CD406);
        }

        CFRelease(v7);
      }
    }
  }

  return v4;
}

uint64_t sub_275CBF608(uint64_t a1, unsigned int a2, int a3, uint64_t a4, int a5, double a6)
{
  v16 = a2;
  sub_275CC0168(*(a1 + 48), &v16, v15);
  if (v15[12] != a3)
  {
    return 0;
  }

  v11 = *(a4 + 16);
  if (v11 == 0.0)
  {
    return 0;
  }

  v12 = sub_275CC00C8(v15, a5, a6 * 12.0 / v11, 0.0);
  if (v12 > 5)
  {
    return 0;
  }

  v13 = *(a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  if (*v13)
  {
    return *(a1 + 8 * v12);
  }

  return 0;
}

CGPath *sub_275CBF6BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = sub_275CB8098(a4);
  if ((v12 & 2) != 0)
  {
    v13 = (a1 + 28);
  }

  else
  {
    v13 = (a1 + 21);
  }

  v34 = *MEMORY[0x277CBF3A8];
  if (a3 == 2)
  {
    v14 = a1[42];
    if (v14)
    {
      v15 = sub_275CB4B4C(v14 + 10752, a4, 0.0);
    }

    else
    {
      v15 = 0.0;
    }

    a6 = v15 + a6;
  }

  v16 = sub_275CBD92C(a1, a2, a4, 1);
  v17 = sub_275CBF608(v13, v16, a3, a4, 1, a6);
  if (!v17 && (v12 & 2) != 0)
  {
    v17 = sub_275CBF608((a1 + 21), v16, a3, a4, 1, a6);
  }

  if (!v17)
  {
    v17 = sub_275CBDBCC(a1, v16, 0, a4, 0);
  }

  v18 = (*(*a1 + 96))(a1, v16, a3);
  width_low = -1;
  v19 = 0.0;
  if (!v17)
  {
    goto LABEL_19;
  }

  if (!*v17)
  {
    LODWORD(v17) = 0;
LABEL_19:
    v21 = 0;
    goto LABEL_33;
  }

  CopyWithAttributes = CTFontCreateCopyWithAttributes(*v17, *(a4 + 16), 0, 0);
  v21 = CopyWithAttributes;
  v22 = (v16 - 0x10000) >> 20;
  if (v22)
  {
    LOWORD(v23) = v16;
  }

  else
  {
    v23 = ((v16 - 0x10000) >> 10) | 0xFFFFD800;
    WORD1(characters[0].origin.x) = v16 & 0x3FF | 0xDC00;
  }

  LOWORD(characters[0].origin.x) = v23;
  if (!CopyWithAttributes)
  {
    LODWORD(v17) = 0;
LABEL_33:
    v25 = 0.0;
    MinX = 0.0;
    if (!v18)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  if (!CTFontGetGlyphsForCharacters(CopyWithAttributes, characters, &glyphs, v24) || (width_low = LOWORD(glyphs.width), LOWORD(glyphs.width) == 0xFFFF))
  {
    LODWORD(v17) = 1;
    goto LABEL_33;
  }

  CTFontGetBoundingRectsForGlyphs(v21, kCTFontOrientationHorizontal, &width_low, characters, 1);
  CTFontGetAdvancesForGlyphs(v21, kCTFontOrientationHorizontal, &width_low, &glyphs, 1);
  v25 = 0.0;
  MinX = 0.0;
  if (a3 == 2)
  {
    MinX = CGRectGetMinX(characters[0]);
    width = glyphs.width;
    v25 = width - CGRectGetWidth(characters[0]) - MinX;
    v19 = -CGRectGetMinY(characters[0]);
  }

  LODWORD(v17) = 1;
  if (v18)
  {
LABEL_34:
    sub_275CB1EEC(characters, a4, a3, v18);
    v18 = sub_275CB2618(characters, &v34, a6);
    sub_275CB2048(characters);
  }

LABEL_35:
  v28 = v17 ^ 1;
  if (v18)
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    v29 = a1[48];
    sub_275CBE828(a1, v16, a4, a3, characters);
    sub_275CBB990(v29, characters, &glyphs);
    sub_275C90098(characters);
    if (*&glyphs.width && **&glyphs.width == a3)
    {
      v18 = sub_275C91284(*&glyphs.width, &v34, a6);
    }

    else
    {
      v18 = 0;
    }

    if (*&glyphs.height)
    {
      sub_275C9B8F0(*&glyphs.height);
    }
  }

  if (v18)
  {
    *a5 = v34;
    *(a5 + 16) = MinX;
    *(a5 + 24) = v25;
    *(a5 + 32) = v19;
  }

  if (v17)
  {
    CFRelease(v21);
  }

  return v18;
}

void sub_275CBFA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_275C9B8F0(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CBFB8C(uint64_t result, UTF32Char theChar, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v31[11] = *MEMORY[0x277D85DE8];
  v9 = &v30;
  v10 = MEMORY[0x277CBF3A8];
  do
  {
    *v9 = *v10;
    v11 = *(a3 + 8 * v8);
    if (v11)
    {
      result = *(v11 + 8);
      if (result)
      {
        result = CFCharacterSetIsLongCharacterMember(result, theChar);
        if (result)
        {
          if (*v11)
          {
            result = sub_275C98B34(theChar, *v11);
            if (result)
            {
              v12 = result;
              if (*(result + 120) == 1)
              {
                v13 = (result + 88);
              }

              else
              {
                v13 = sub_275C98D24(result);
              }

              *v9 = *(v13 + 1);
              v7 |= 1 << v8;
              ++v6;
              v14 = sub_275C98A80(v12);
              result = MEMORY[0x277C8CFC0](v14, 0x1070C40036CD406);
            }
          }
        }
      }
    }

    ++v8;
    v9 += 16;
  }

  while (v8 != 6);
  *(v5 + 52) = 0;
  *(v5 + 48) = 0;
  if (v6 > 1)
  {
    v15 = 0;
    v16 = *v10;
    v17 = v10[1];
    v18 = v31;
    v19 = 1;
    v20 = *v10;
    v21 = v17;
    do
    {
      if ((v7 >> v15))
      {
        v16 = *(v18 - 1);
        v17 = *v18;
        if (v19)
        {
          v21 = *v18;
          v20 = *(v18 - 1);
        }

        v19 = 0;
      }

      ++v15;
      v18 += 2;
    }

    while (v15 != 6);
    v22 = v16 - v20;
    v23 = v17 - v21;
    v24 = v22 > 0.0;
    if (v22 <= 0.0 || v23 <= 0.0)
    {
      if (v23 > 0.0 && v22 <= 0.0)
      {
        v25 = 2;
      }

      else
      {
        v25 = v22 > 0.0;
      }

      if (v22 <= 0.0 && v23 <= 0.0)
      {
        return result;
      }
    }

    else
    {
      v24 = v22 > v23;
      if (v22 > v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }
    }

    v26 = 0;
    *(v5 + 48) = v25;
    *(v5 + 52) = v7;
    v27 = &v30;
    do
    {
      v28 = v27 + 8;
      if (v24)
      {
        v28 = v27;
      }

      *(v5 + v26) = *v28;
      v26 += 8;
      v27 += 16;
    }

    while (v26 != 48);
  }

  return result;
}

uint64_t sub_275CBFDAC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 72));
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v6;
  if (*(a1 + 32) > a2)
  {
    *(a1 + 48) = 1;
  }

  pthread_rwlock_unlock((a1 + 72));

  return sub_275CBFE84(a1);
}

uint64_t sub_275CBFE20(uint64_t a1)
{
  for (i = 0; i != 48; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      v4 = sub_275CC0E9C(v3);
      MEMORY[0x277C8CFC0](v4, 0x1072C402C72566ELL);
      *(a1 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_275CBFE84(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      __src = 0;
      v28 = 0;
      v29 = 0;
      v5 = a1[3];
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = v4 - v5[10];
          v8 = *(v5 + 4);
          if (v6 >= v29)
          {
            v9 = __src;
            v10 = v6 - __src;
            v11 = (v6 - __src) >> 4;
            v12 = v11 + 1;
            if ((v11 + 1) >> 60)
            {
              sub_275C8D77C();
            }

            v13 = v29 - __src;
            if ((v29 - __src) >> 3 > v12)
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

            if (v14)
            {
              sub_275C9A8F4(&__src, v14);
            }

            v15 = v11;
            v16 = 16 * v11;
            *v16 = v8;
            *(v16 + 8) = v7;
            v6 = 16 * v11 + 16;
            v17 = (v16 - 16 * v15);
            memcpy(v17, v9, v10);
            v18 = __src;
            __src = v17;
            v28 = v6;
            v29 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v6 = v8;
            *(v6 + 8) = v7;
            v6 += 16;
          }

          v28 = v6;
          v5 = *v5;
        }

        while (v5);
        v19 = __src;
      }

      else
      {
        v6 = 0;
        v19 = 0;
      }

      v20 = 126 - 2 * __clz((v6 - v19) >> 4);
      v30 = sub_275CC4030;
      if (v6 == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      sub_275CC4044(v19, v6, &v30, v21, 1);
      v22 = __src;
      v23 = (v28 - __src) >> 4;
      v24 = a1[8];
      v25 = v23 - v24;
      if (v23 > v24)
      {
        v26 = 16 * v24;
        do
        {
          if (sub_275CC5870(a1 + 1, (__src + v26)))
          {
            sub_275CC5924(a1 + 1, (__src + v26));
          }

          v26 += 16;
          --v25;
        }

        while (v25);
        v22 = __src;
      }

      *(a1 + 48) = 0;
      if (v22)
      {
        v28 = v22;
        operator delete(v22);
      }
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_275CC00A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CC00C8(uint64_t a1, int a2, double a3, double a4)
{
  v4 = 0;
  v5 = 0.0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    if (((*(a1 + 52) >> v4) & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 8 * v4);
    if (v8 + a4 <= a3)
    {
      v7 = v4;
LABEL_7:
      v8 = v5;
      v9 = v6;
      goto LABEL_8;
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v7 = v4;
    v9 = v4;
LABEL_8:
    ++v4;
    v6 = v9;
    v5 = v8;
    if (v4 == 6)
    {
      goto LABEL_12;
    }
  }

  v7 = v4;
  v9 = v4;
  if (vabdd_f64(v5, a3) >= vabdd_f64(v8, a3))
  {
    goto LABEL_8;
  }

  v9 = v6;
  v7 = v4;
LABEL_12:
  if (a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_275CC0168@<X0>(uint64_t **a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 52) = -1;
  pthread_rwlock_rdlock((a1 + 9));
  v6 = sub_275CC5870(a1 + 1, a2);
  if (!v6)
  {
    pthread_rwlock_unlock((a1 + 9));
    v19 = 0;
    v20 = -1;
    v21 = 0;
    result = (a1[34][2])();
    if (!result)
    {
      return result;
    }

    pthread_rwlock_wrlock((a1 + 9));
    v10 = sub_275CC5870(a1 + 1, a2);
    if (v10)
    {
      v10[10] = **a1;
      v11 = (v10 + 3);
      if (v10 + 3 == a3)
      {
        return pthread_rwlock_unlock((a1 + 9));
      }

      *(a3 + 48) = *(v10 + 18);
      v12 = v10 + 76;
    }

    else
    {
      v21 = **a1;
      v22 = a2;
      v13 = sub_275CC595C(a1 + 1, a2);
      if (v13 + 3 != v18)
      {
        *(v13 + 18) = v19;
        *(v13 + 76) = v20;
        v15 = v18[1];
        v14 = v18[2];
        *(v13 + 3) = v18[0];
        *(v13 + 5) = v15;
        *(v13 + 7) = v14;
      }

      v13[10] = v21;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      if (v18 == a3)
      {
        return pthread_rwlock_unlock((a1 + 9));
      }

      v12 = &v20;
      *(a3 + 48) = v19;
      v11 = v18;
    }

    *(a3 + 52) = *v12;
    v16 = *v11;
    v17 = v11[2];
    *(a3 + 16) = v11[1];
    *(a3 + 32) = v17;
    *a3 = v16;
    return pthread_rwlock_unlock((a1 + 9));
  }

  v6[10] = **a1;
  if (v6 + 3 != a3)
  {
    *(a3 + 48) = *(v6 + 18);
    *(a3 + 52) = *(v6 + 76);
    v7 = *(v6 + 3);
    v8 = *(v6 + 7);
    *(a3 + 16) = *(v6 + 5);
    *(a3 + 32) = v8;
    *a3 = v7;
  }

  return pthread_rwlock_unlock((a1 + 9));
}

CGPath *sub_275CC035C(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double a5, double a6, CGFloat a7)
{
  v63 = 8730;
  sub_275C98870(&v59, 0);
  v57[0] = 0;
  v57[1] = 0;
  v58 = 0;
  v14 = (*(*a1 + 80))(a1, &v63, 2, a2, a5);
  if (v14)
  {
    sub_275C98A1C(v54, v14, v63);
    sub_275C98A84(&v59, v54);
    sub_275C98A80(v54);
    if (v59)
    {
      v15 = CTFontCopyPostScriptName(v14);
      v19 = objc_msgSend_UTF8String(v15, v16, v17, v18);
      MEMORY[0x277C8CD20](v57, v19);
      CFRelease(v15);
      v20 = v62 == 1 ? v61 : sub_275C98D24(&v59);
      v64.origin.x = *v20;
      v64.origin.y = v20[1];
      v21 = v20[2];
      v22 = v20[3];
      v64.size.width = v21;
      v64.size.height = v22;
      MaxY = CGRectGetMaxY(v64);
      *a4 = v21;
      *(a4 + 8) = v22;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = MaxY;
      if (v59)
      {
        goto LABEL_12;
      }
    }

    CFRelease(v14);
  }

  else if (v59)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v14 = (*(*a1 + 88))(a1, v63, 2, a2, a4, a5);
  if (v14)
  {
    sub_275C98870(v54, v14);
    sub_275C98A84(&v59, v54);
    sub_275C98A80(v54);
    CFRelease(v14);
    MEMORY[0x277C8CD20](v57, "STIXSizeOneSym-Regular");
    v63 = 9143;
    v14 = CTFontCreateWithName(@"STIXSizeOneSym-Regular", *(a2 + 16), 0);
  }

LABEL_12:
  if (v62 == 1)
  {
    v24 = v61;
  }

  else
  {
    v24 = sub_275C98D24(&v59);
  }

  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  if (SHIBYTE(v58) < 0)
  {
    sub_275CAF534(__p, v57[0], v57[1]);
  }

  else
  {
    *__p = *v57;
    v53 = v58;
  }

  v29 = (*(*a1 + 24))(a1, 4, __p, v63);
  *a3 = sub_275CBEEF0(v29, v14);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    sub_275CAF534(__dst, v57[0], v57[1]);
  }

  else
  {
    *__dst = *v57;
    v51 = v58;
  }

  v30 = (*(*a1 + 24))(a1, 5, __dst, v63);
  a3[1] = sub_275CBEEF0(v30, v14);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    sub_275CAF534(v48, v57[0], v57[1]);
  }

  else
  {
    *v48 = *v57;
    v49 = v58;
  }

  v31 = (*(*a1 + 24))(a1, 6, v48, v63);
  a3[2] = sub_275CBEEF0(v31, v14);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    sub_275CAF534(v46, v57[0], v57[1]);
  }

  else
  {
    *v46 = *v57;
    v47 = v58;
  }

  v32 = (*(*a1 + 24))(a1, 7, v46, v63);
  a3[3] = sub_275CBEEF0(v32, v14);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    sub_275CAF534(v44, v57[0], v57[1]);
  }

  else
  {
    *v44 = *v57;
    v45 = v58;
  }

  v33 = (*(*a1 + 24))(a1, 8, v44, v63);
  a3[4] = sub_275CBEEF0(v33, v14);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  *a3 = *(a4 + 32) + *a3;
  v65.origin.x = v25;
  v65.origin.y = v26;
  v65.size.width = v27;
  v65.size.height = v28;
  a3[1] = a3[1] - CGRectGetMinX(v65);
  v66.origin.x = v25;
  v66.origin.y = v26;
  v66.size.width = v27;
  v66.size.height = v28;
  a3[2] = a3[2] - CGRectGetMinX(v66);
  if (v14)
  {
    CFRelease(v14);
  }

  v34 = a3[3];
  v35 = a3[4];
  sub_275C9A36C(&v59, 1u, v54);
  if (v54[0] == 1)
  {
    sub_275C98CD0(&v59);
    v36 = (v60 + 16 * v55);
    v38 = *v36;
    v37 = v36[1];
    sub_275C98CD0(&v59);
    v39 = *(v60 + 16 * v56);
    if (v38 >= v39)
    {
      v40 = *(v60 + 16 * v56);
    }

    else
    {
      v40 = v38;
    }

    if (v38 > v39)
    {
      v39 = v38;
    }

    sub_275C9A1B8(&v59, v40, v37, v34 + v35 + a6 + v39 - v40, a7);
  }

  Mutable = CGPathCreateMutable();
  memset(&v43, 0, sizeof(v43));
  CGAffineTransformMakeTranslation(&v43, -v25, -v26);
  sub_275C99C28(&v59, Mutable, &v43, 0);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

  sub_275C98A80(&v59);
  return Mutable;
}

void sub_275CC0928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  sub_275C98A80(&a61);
  _Unwind_Resume(a1);
}

CGPath *sub_275CC09FC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v18.origin.x = (*(*a1 + 136))(a1, 10188, a2);
  MaxY = CGRectGetMaxY(v18);
  v15 = *MEMORY[0x277CBF3A8];
  v16 = 0;
  v17 = 0;
  v9 = (*(*a1 + 88))(a1, 10188, 2, a2, &v15, a3 - MaxY);
  sub_275C98870(v14, v9);
  CGPathRelease(v9);
  sub_275C9A36C(v14, 2u, v13);
  if (v13[0] == 1)
  {
    Mutable = CGPathCreateMutable();
    v12 = *MEMORY[0x277CBF348];
    sub_275C9A6A0(v14, Mutable, &v12, 0, v13, a4);
  }

  else
  {
    Mutable = 0;
  }

  sub_275C98A80(v14);
  return Mutable;
}

void sub_275CC0B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_275C98A80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC0B5C(uint64_t a1, CTFontRef font, int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 20) = a3;
  if (font)
  {
    if ((a3 - 0x10000) >> 20)
    {
      v6 = 1;
      LOWORD(v5) = a3;
    }

    else
    {
      v5 = ((a3 - 0x10000) >> 10) | 0xFFFFD800;
      characters[1] = a3 & 0x3FF | 0xDC00;
      v6 = 2;
    }

    characters[0] = v5;
    if (CTFontGetGlyphsForCharacters(font, characters, glyphs, v6))
    {
      *(a1 + 16) = glyphs[0];
    }

    *a1 = CTFontCopyPostScriptName(font);
    *(a1 + 8) = CTFontGetSize(font);
  }

  return a1;
}

const void **sub_275CC0C08(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL sub_275CC0C3C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  if (*a1 == v3)
  {
    return 1;
  }

  result = 0;
  if (v2 && v3)
  {
    return CFStringCompare(v2, v3, 0) == kCFCompareEqualTo;
  }

  return result;
}

uint64_t sub_275CC0CC4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_275CB397C(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_275CB397C(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

char **sub_275CC0D48(char **a1)
{
  sub_275CC0D90((a1 + 6), a1[7]);
  sub_275CC0D90((a1 + 3), a1[4]);
  sub_275CC0D90(a1, a1[1]);
  return a1;
}

void sub_275CC0D90(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_275CC0D90(a1, *a2);
    sub_275CC0D90(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_275CC0DF4(uint64_t a1, CFStringRef name)
{
  *(a1 + 8) = 0u;
  v3 = (a1 + 8);
  *(a1 + 24) = 0u;
  v4 = CTFontCreateWithName(name, 12.0, 0);
  *a1 = v4;
  if (v4)
  {
    v5 = CTFontCopyPostScriptName(v4);
    v9 = v5;
    if (v5)
    {
      v10 = objc_msgSend_UTF8String(v5, v6, v7, v8);
      MEMORY[0x277C8CD20](v3 + 1, v10);
      CFRelease(v9);
    }

    *v3 = CTFontCopyCharacterSet(*a1);
  }

  return a1;
}

void sub_275CC0E7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v2 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CC0E9C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_275CC0EF4(uint64_t a1, const void **a2)
{
  if (a2)
  {
    sub_275CC0EF4(a1, *a2);
    sub_275CC0EF4(a1, a2[1]);
    sub_275CB654C(a2 + 5);

    operator delete(a2);
  }
}

void sub_275CC0F50(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_275CC0FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CC0FE4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_275CC0FE4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_275C908DC();
    MEMORY[0x277C8CFC0](v3, 0x1020C40FC009922);
  }

  return a1;
}

void sub_275CC1030(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CC1068(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_275C908DC();

    JUMPOUT(0x277C8CFC0);
  }

  return result;
}

uint64_t sub_275CC10AC(uint64_t a1, uint64_t a2)
{
  if (sub_275C9BC50(a2, &unk_2884CB968))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275CC10EC(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_275D0B8C0;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t sub_275CC1174(uint64_t a1)
{
  sub_275CC11B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_275CC11B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_275CC11F4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_275CC11F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_275C9B8F0(v2);
  }

  return sub_275C90098(a1);
}

void *sub_275CC1234(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(a2 + 16);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(a2 + 16);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_275C9009C((v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_275CC1338(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 16);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    sub_275CC15B4();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!sub_275C9009C((v12 + 2), a2))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_275CC15A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CC1644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC1644(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_275CC11F4(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_275CC1690(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_275D0B8C0;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t sub_275CC1718(uint64_t a1)
{
  sub_275CC1754(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_275CC1754(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_275C90098(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_275CC1798(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_275D0B8C0;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t sub_275CC1820(uint64_t a1)
{
  sub_275CC185C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_275CC185C(uint64_t a1, const void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_275CC0C08(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_275CC18A0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_275CC1968();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_275CC19E8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_275CB654C(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_275CC1A34(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_275CC1AFC();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_275CC1B7C(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  sub_275CC1174(a1 + 8);
  return a1;
}

uint64_t sub_275CC1BBC(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  sub_275CC1718(a1 + 8);
  return a1;
}

uint64_t sub_275CC1BFC(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  sub_275CC1820(a1 + 8);
  return a1;
}

uint64_t sub_275CC1C3C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_275CC1CC0(a1, a2);
  }

  else
  {
    sub_275C8FFF4(a1[1], a2);
    *(v4 + 32) = *(a2 + 32);
    result = v4 + 40;
    a1[1] = v4 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_275CC1CC0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_275C8D77C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_275CC1DF8(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  v15 = 40 * v2;
  *(sub_275C8FFF4(40 * v2, a2) + 32) = *(a2 + 32);
  *&v15 = v15 + 40;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_275CC1E50(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_275CC1EFC(&v13);
  return v12;
}

void sub_275CC1DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275CC1EFC(va);
  _Unwind_Resume(a1);
}

void sub_275CC1DF8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CC1E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_275C8FFF4(a4, v8);
      *(a4 + 32) = *(v8 + 32);
      v8 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_275C90098(v6);
      v6 += 40;
    }
  }

  return result;
}

void sub_275CC1ED8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = sub_275C90098(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CC1EFC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_275C90098(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_275CC1F4C(uint64_t result, unint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v45 = a2;
  v46 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v43 = *a3;
        v45 = v7 - 40;
        result = (v43)(v7 - 40);
        if (result)
        {
          v42 = &v46;
          v44 = &v45;
          return sub_275CC2618(v42, v44);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v45 = v7 - 40;
      return sub_275CC2694(v8, v8 + 40, v8 + 80, v7 - 40, a3);
    }

    if (v11 == 5)
    {
      v45 = v7 - 40;
      v50 = v8 + 40;
      v51[0] = v8;
      v48 = v8 + 120;
      v49 = v8 + 80;
      v47 = v7 - 40;
      sub_275CC2694(v8, v8 + 40, v8 + 80, v8 + 120, a3);
      result = (*a3)(v7 - 40, v8 + 120);
      if (result)
      {
        sub_275CC2618(&v48, &v47);
        result = (*a3)(v48, v8 + 80);
        if (result)
        {
          sub_275CC2618(&v49, &v48);
          result = (*a3)(v49, v8 + 40);
          if (result)
          {
            sub_275CC2618(&v50, &v49);
            result = (*a3)(v50, v8);
            goto LABEL_92;
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v10 <= 959)
    {
      if (a5)
      {
        return sub_275CC27D4(v8, v7, a3);
      }

      else
      {
        return sub_275CC28F8(v8, v7, a3);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return sub_275CC30D8(v8, v7, v7, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = v8 + 40 * (v11 >> 1);
    v14 = v7 - 40;
    if (v10 < 0x1401)
    {
      v50 = v8;
      v51[0] = v8 + 40 * (v11 >> 1);
      v49 = v14;
      v18 = (*a3)(v8, v13);
      v19 = (*a3)(v14, v8);
      if (v18)
      {
        if (v19)
        {
          v20 = v51;
          goto LABEL_37;
        }

        sub_275CC2618(v51, &v50);
        if ((*a3)(v49, v50))
        {
          v20 = &v50;
LABEL_37:
          v22 = &v49;
LABEL_38:
          sub_275CC2618(v20, v22);
        }
      }

      else if (v19)
      {
        sub_275CC2618(&v50, &v49);
        if ((*a3)(v50, v51[0]))
        {
          v20 = v51;
          v22 = &v50;
          goto LABEL_38;
        }
      }

      v8 = v46;
      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v50 = v8 + 40 * (v11 >> 1);
    v51[0] = v8;
    v49 = v14;
    v15 = (*a3)(v13, v8);
    v16 = (*a3)(v14, v13);
    if (v15)
    {
      if (v16)
      {
        v17 = v51;
      }

      else
      {
        sub_275CC2618(v51, &v50);
        if (!(*a3)(v49, v50))
        {
          goto LABEL_29;
        }

        v17 = &v50;
      }

      v21 = &v49;
      goto LABEL_28;
    }

    if (v16)
    {
      sub_275CC2618(&v50, &v49);
      if ((*a3)(v50, v51[0]))
      {
        v17 = v51;
        v21 = &v50;
LABEL_28:
        sub_275CC2618(v17, v21);
      }
    }

LABEL_29:
    v8 = v46;
    v23 = v46 + 40 * v12;
    v50 = v23 - 40;
    v51[0] = v46 + 40;
    v49 = v45 - 80;
    v24 = (*a3)(v23 - 40);
    v25 = (*a3)(v45 - 80, v23 - 40);
    if (v24)
    {
      if (v25)
      {
        v26 = v51;
      }

      else
      {
        sub_275CC2618(v51, &v50);
        if (!(*a3)(v49, v50))
        {
          goto LABEL_45;
        }

        v26 = &v50;
      }

      v27 = &v49;
      goto LABEL_44;
    }

    if (v25)
    {
      sub_275CC2618(&v50, &v49);
      if ((*a3)(v50, v51[0]))
      {
        v26 = v51;
        v27 = &v50;
LABEL_44:
        sub_275CC2618(v26, v27);
      }
    }

LABEL_45:
    v50 = v23 + 40;
    v51[0] = v46 + 80;
    v49 = v45 - 120;
    v28 = (*a3)(v23 + 40);
    v29 = (*a3)(v45 - 120, v23 + 40);
    if (v28)
    {
      if (v29)
      {
        sub_275CC2618(v51, &v49);
        goto LABEL_54;
      }

      sub_275CC2618(v51, &v50);
      if ((*a3)(v49, v50))
      {
        v30 = &v50;
        v31 = &v49;
        goto LABEL_53;
      }
    }

    else if (v29)
    {
      sub_275CC2618(&v50, &v49);
      if ((*a3)(v50, v51[0]))
      {
        v30 = v51;
        v31 = &v50;
LABEL_53:
        sub_275CC2618(v30, v31);
      }
    }

LABEL_54:
    v50 = v46 + 40 * v12;
    v51[0] = v23 - 40;
    v49 = v23 + 40;
    v32 = (*a3)(v23, v23 - 40);
    v33 = (*a3)(v23 + 40, v23);
    if (v32)
    {
      if (v33)
      {
        v34 = v51;
      }

      else
      {
        sub_275CC2618(v51, &v50);
        if (!(*a3)(v49, v50))
        {
          goto LABEL_64;
        }

        v34 = &v50;
      }

      v35 = &v49;
      goto LABEL_63;
    }

    if (v33)
    {
      sub_275CC2618(&v50, &v49);
      if ((*a3)(v50, v51[0]))
      {
        v34 = v51;
        v35 = &v50;
LABEL_63:
        sub_275CC2618(v34, v35);
      }
    }

LABEL_64:
    sub_275C8FFF4(v51, v46);
    sub_275C8FFF8(v46, v23);
    sub_275C8FFF8(v23, v51);
    sub_275C90098(v51);
    v36 = *(v46 + 32);
    *(v46 + 32) = *(v23 + 32);
    *(v23 + 32) = v36;
    if (a5)
    {
LABEL_40:
      v7 = v45;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v45;
    if (((*a3)(v8 - 40, v8) & 1) == 0)
    {
      result = sub_275CC29E0(v8, v45, a3);
      v8 = result;
      goto LABEL_75;
    }

LABEL_66:
    v37 = sub_275CC2B98(v8, v7, a3);
    if ((v38 & 1) == 0)
    {
      goto LABEL_73;
    }

    v39 = sub_275CC2D44(v8, v37, a3);
    result = sub_275CC2D44(v37 + 40, v7, a3);
    if (result)
    {
      if (v39)
      {
        return result;
      }

      v45 = v37;
      v7 = v37;
    }

    else
    {
      if (!v39)
      {
LABEL_73:
        result = sub_275CC1F4C(v8, v37, a3, -i, a5 & 1);
        v8 = v37 + 40;
LABEL_75:
        a5 = 0;
        v46 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v46 = v37 + 40;
      v8 = v37 + 40;
    }
  }

  v40 = v8 + 40;
  v45 = v7 - 40;
  v50 = v8 + 40;
  v51[0] = v8;
  v49 = v7 - 40;
  v41 = (*a3)(v8 + 40, v8);
  result = (*a3)(v7 - 40, v40);
  if (v41)
  {
    if (result)
    {
      v42 = v51;
    }

    else
    {
      sub_275CC2618(v51, &v50);
      result = (*a3)(v49, v50);
      if (!result)
      {
        return result;
      }

      v42 = &v50;
    }

    v44 = &v49;
    return sub_275CC2618(v42, v44);
  }

  if (result)
  {
    sub_275CC2618(&v50, &v49);
    result = (*a3)(v50, v51[0]);
LABEL_92:
    if (result)
    {
      v42 = v51;
      v44 = &v50;
      return sub_275CC2618(v42, v44);
    }
  }

  return result;
}

void sub_275CC2604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_275C90098(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC2618(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_275C8FFF4(v6, *a1);
  sub_275C8FFF8(v2, v3);
  sub_275C8FFF8(v3, v6);
  result = sub_275C90098(v6);
  v5 = *(v2 + 32);
  *(v2 + 32) = *(v3 + 32);
  *(v3 + 32) = v5;
  return result;
}

uint64_t sub_275CC2694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v17 = a2;
  v18 = a1;
  v15 = a4;
  v16 = a3;
  v20 = a2;
  v21 = a1;
  v19 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v21;
LABEL_9:
      v13 = &v19;
      goto LABEL_10;
    }

    sub_275CC2618(&v21, &v20);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_275CC2618(&v20, &v19);
    if ((*a5)(v20, v21))
    {
      v12 = &v21;
      v13 = &v20;
LABEL_10:
      sub_275CC2618(v12, v13);
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    sub_275CC2618(&v16, &v15);
    result = (*a5)(v16, a2);
    if (result)
    {
      sub_275CC2618(&v17, &v16);
      result = (*a5)(v17, a1);
      if (result)
      {
        return sub_275CC2618(&v18, &v17);
      }
    }
  }

  return result;
}

uint64_t sub_275CC27D4(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 40;
    if (result + 40 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v5, v8);
        if (result)
        {
          sub_275C8FFF4(v13, v9);
          v14 = *(v8 + 72);
          v10 = v7;
          while (1)
          {
            sub_275C8FFF8(v4 + v10 + 40, v4 + v10);
            *(v4 + v10 + 72) = *(v4 + v10 + 32);
            if (!v10)
            {
              break;
            }

            v11 = (*a3)(v13, v4 + v10 - 40);
            v10 -= 40;
            if ((v11 & 1) == 0)
            {
              v12 = v4 + v10 + 40;
              goto LABEL_10;
            }
          }

          v12 = v4;
LABEL_10:
          sub_275C8FFF8(v12, v13);
          *(v12 + 32) = v14;
          result = sub_275C90098(v13);
        }

        v5 = v9 + 40;
        v7 += 40;
        v8 = v9;
      }

      while (v9 + 40 != a2);
    }
  }

  return result;
}

void sub_275CC28E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C90098(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CC28F8(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 40;
    if (result + 40 != a2)
    {
      do
      {
        v7 = v5;
        result = (*a3)(v5, v4);
        if (result)
        {
          sub_275C8FFF4(v8, v7);
          v9 = *(v4 + 72);
          do
          {
            sub_275C8FFF8(v4 + 40, v4);
            *(v4 + 72) = *(v4 + 32);
            v4 -= 40;
          }

          while (((*a3)(v8, v4) & 1) != 0);
          sub_275C8FFF8(v4 + 40, v8);
          *(v4 + 72) = v9;
          result = sub_275C90098(v8);
        }

        v5 = v7 + 40;
        v4 = v7;
      }

      while (v7 + 40 != a2);
    }
  }

  return result;
}

void sub_275CC29C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C90098(va);
  _Unwind_Resume(a1);
}

unint64_t sub_275CC29E0(uint64_t a1, unint64_t a2, unsigned int (**a3)(_BYTE *))
{
  v15 = a1;
  v14 = a2;
  sub_275C8FFF4(v12, a1);
  v13 = *(a1 + 32);
  if ((*a3)(v12, a2 - 40))
  {
    v6 = a1;
    do
    {
      v6 += 40;
      v15 = v6;
    }

    while (((*a3)(v12, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 40;
    do
    {
      v6 = v7;
      v15 = v7;
      if (v7 >= v14)
      {
        break;
      }

      v8 = (*a3)(v12, v7);
      v7 = v6 + 40;
    }

    while (!v8);
  }

  v9 = v14;
  if (v6 < v14)
  {
    do
    {
      v9 -= 40;
      v14 = v9;
    }

    while (((*a3)(v12, v9) & 1) != 0);
    v6 = v15;
  }

  if (v6 < v9)
  {
    do
    {
      sub_275CC2618(&v15, &v14);
      do
      {
        v15 += 40;
      }

      while (!(*a3)(v12));
      do
      {
        v14 -= 40;
      }

      while (((*a3)(v12) & 1) != 0);
      v6 = v15;
    }

    while (v15 < v14);
  }

  if (v6 - 40 != a1)
  {
    sub_275C8FFF8(a1, v6 - 40);
    *(a1 + 32) = *(v6 - 8);
  }

  sub_275C8FFF8(v6 - 40, v12);
  *(v6 - 8) = v13;
  v10 = v15;
  sub_275C90098(v12);
  return v10;
}

void sub_275CC2B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C90098(va);
  _Unwind_Resume(a1);
}

unint64_t sub_275CC2B98(uint64_t a1, unint64_t a2, uint64_t (**a3)(void))
{
  v15 = a2;
  sub_275C8FFF4(v13, a1);
  v5 = 0;
  v14 = *(a1 + 32);
  do
  {
    v16 = a1 + v5 + 40;
    v5 += 40;
  }

  while (((*a3)() & 1) != 0);
  v6 = v15;
  if (v5 == 40)
  {
    v9 = a1 + 40;
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v10 = *a3;
      v6 -= 40;
      v15 = v6;
    }

    while (((v10)(v6, v13) & 1) == 0);
  }

  else
  {
    v7 = v15 - 40;
    do
    {
      v15 = v7;
      v8 = (*a3)(v7, v13);
      v7 -= 40;
    }

    while (!v8);
    v9 = v16;
  }

  v11 = v9;
  if (v9 < v15)
  {
    do
    {
      sub_275CC2618(&v16, &v15);
      do
      {
        v16 += 40;
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v15 -= 40;
      }

      while (!(*a3)());
      v11 = v16;
    }

    while (v16 < v15);
  }

  if (v11 - 40 != a1)
  {
    sub_275C8FFF8(a1, v11 - 40);
    *(a1 + 32) = *(v11 - 8);
  }

  sub_275C8FFF8(v11 - 40, v13);
  *(v11 - 8) = v14;
  sub_275C90098(v13);
  return v11 - 40;
}