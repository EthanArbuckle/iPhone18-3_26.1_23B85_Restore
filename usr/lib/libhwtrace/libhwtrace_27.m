void sub_298C3B968(uint64_t *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = *v3;
  v12 = 3;
  __p[0] = v4;
  sub_298B89CC0(v2, "UncompressedOffset", 0x12uLL);
  sub_298B891F0(v2, &v12);
  --*(v2 + 8);
  if (v12 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v12 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v12 == 6 && v14 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *a1;
  v6 = *(v3 + 8);
  v12 = 3;
  __p[0] = v6;
  sub_298B89CC0(v5, "CompressedOffset", 0x10uLL);
  sub_298B891F0(v5, &v12);
  --*(v5 + 8);
  if (v12 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v12 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v12 == 6 && v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a1;
  v8 = *(v3 + 16);
  v12 = 3;
  __p[0] = v8;
  sub_298B89CC0(v7, "CompressedSize", 0xEuLL);
  sub_298B891F0(v7, &v12);
  --*(v7 + 8);
  if (v12 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v12 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v12 == 6 && v14 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *a1;
  v10 = *(v3 + 24);
  v12 = 3;
  __p[0] = v10;
  sub_298B89CC0(v9, "UncompressedSize", 0x10uLL);
  sub_298B891F0(v9, &v12);
  --*(v9 + 8);
  if (v12 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v12 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v12 == 6 && v14 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C3BBE4(uint64_t *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  LOWORD(v13) = 3;
  __p[0] = 1;
  sub_298B89CC0(v2, "Version", 7uLL);
  sub_298B891F0(v2, &v13);
  --*(v2 + 8);
  if (v13 == 8)
  {
    sub_298B8A314(__p);
    v4 = *a1;
    v5 = *v3;
    if (v5 != 2)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v13 == 7)
  {
    sub_298B8A370(__p);
    goto LABEL_8;
  }

  if (v13 != 6 || (v15 & 0x80000000) == 0)
  {
LABEL_8:
    v4 = *a1;
    v5 = *v3;
    if (v5 != 2)
    {
      goto LABEL_9;
    }

LABEL_16:
    v7 = "LZFSE";
    v6 = 5;
    goto LABEL_17;
  }

  operator delete(__p[0]);
  v4 = *a1;
  v5 = *v3;
  if (v5 == 2)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v5 == 1)
  {
    v6 = 7;
  }

  else
  {
    v6 = 3;
  }

  if (v5 == 1)
  {
    v7 = "LZ4_RAW";
  }

  else
  {
    v7 = "LZ4";
  }

LABEL_17:
  sub_298BBB6E0(&v13, v7, v6);
  sub_298B89CC0(v4, "CompressionType", 0xFuLL);
  sub_298B891F0(v4, &v13);
  --*(v4 + 8);
  if (v13 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v13 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v13 == 6 && v15 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *a1;
  sub_298B89CC0(v8, "Chunks", 6uLL);
  sub_298B89A80(v8);
  v9 = *(v3 + 1);
  for (i = *(v3 + 2); v9 != i; v9 += 32)
  {
    v13 = v8;
    __p[0] = v9;
    sub_298B89BA0(v8);
    sub_298C3B968(&v13);
    sub_298B89C2C(v8);
  }

  result = sub_298B89B0C(v8);
  --*(v8 + 8);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C3BE18(void *a1@<X8>)
{
  sub_298C3BEA0(v2);
  sub_298C3C758(v2, a1);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(v4[3]);
  }

  sub_298BCE714(v4, v4[1]);
  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_298C3BEA0(uint64_t a1@<X8>)
{
  *(a1 + 23) = 9;
  strcpy(a1, "<unknown>");
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 56) = 0;
  v2 = a1 + 56;
  *(a1 + 80) = 0;
  MEMORY[0x29C294300](a1, "libhwtrace @ tag libhwtrace-133.40.7");
  *(a1 + 24) = 458781;
  *(a1 + 28) = 1;
  sub_298C3C038(&__p);
  sub_298C3D4A8(a1 + 32, &__p);
  sub_298BCE714(&__p, __p.__r_.__value_.__l.__size_);
  v3 = sub_298C3C108(0);
  if (v3 >= 0x100u)
  {
    v5 = sub_298C3C108(0);
    v6 = "LZ4";
    v7 = 3;
    if (v5 == 1)
    {
      v7 = 7;
      v6 = "LZ4_RAW";
    }

    if (v5 == 2)
    {
      v8 = 5;
    }

    else
    {
      v8 = v7;
    }

    if (v5 == 2)
    {
      v9 = "LZFSE";
    }

    else
    {
      v9 = v6;
    }

    std::string::__init(&v10, v9, v8);
    __p = v10;
    memset(&v10, 0, sizeof(v10));
    v4 = 1;
  }

  else
  {
    v4 = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
  }

  v12 = v4;
  sub_298C3D0DC(v2, &__p);
  if (v12 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v3 >= 0x100u && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_298C3C038(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::string::__init(&v2, "LZ4", 3uLL);
  sub_298C3D328(a1, &v2.__r_.__value_.__l.__data_);
  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }

  std::string::__init(&v2, "LZ4_RAW", 7uLL);
  sub_298C3D328(a1, &v2.__r_.__value_.__l.__data_);
  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }

  std::string::__init(&v2, "LZFSE", 5uLL);
  sub_298C3D328(a1, &v2.__r_.__value_.__l.__data_);
  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_298C3C108(char a1)
{
  if ((a1 & 1) == 0)
  {
    v8 = sub_298B21768(0, 0, "compressed-decoding");
    v5 = 0;
    v6 = 0;
    if (!v8)
    {
      return v5 | (v6 << 8);
    }
  }

  sub_298B2184C(v9);
  v1 = v10;
  v2 = v9[0];
  if (v10 >= 0)
  {
    v3 = v9;
  }

  else
  {
    v3 = v9[0];
  }

  if (v10 >= 0)
  {
    v4 = v10;
  }

  else
  {
    v4 = v9[1];
  }

  switch(v4)
  {
    case 7:
      if (!memcmp("LZ4_RAW", v3, 7uLL))
      {
        v5 = 1;
        goto LABEL_13;
      }

      break;
    case 5:
      if (!memcmp("LZFSE", v3, 5uLL))
      {
        v5 = 2;
        goto LABEL_13;
      }

      break;
    case 3:
      memcmp("LZ4", v3, 3uLL);
      break;
  }

  v5 = 0;
LABEL_13:
  if (v1 < 0)
  {
    operator delete(v2);
  }

  v6 = 1;
  return v5 | (v6 << 8);
}

uint64_t sub_298C3C1EC(uint64_t a1)
{
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    sub_298BCE714(a1 + 32, *(a1 + 40));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    sub_298BCE714(a1 + 32, *(a1 + 40));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(*a1);
  return a1;
}

void sub_298C3C26C(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x29EDCA608];
  v31[17] = 0;
  v31[18] = a2;
  v31[19] = 2;
  v31[16] = 0;
  v29 = v31;
  v30 = 0x1000000001;
  v31[0] = 0;
  sub_298B89BA0(&v29);
  if (*(a1 + 23) < 0)
  {
    sub_298AFE11C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v24 = *(a1 + 16);
  }

  LOWORD(v32) = 6;
  if (v24 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v24 >= 0)
  {
    v4 = SHIBYTE(v24);
  }

  else
  {
    v4 = __p[1];
  }

  if (!sub_298B88E98(v3, v4, 0))
  {
    if (v24 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if (v24 >= 0)
    {
      v20 = SHIBYTE(v24);
    }

    else
    {
      v20 = __p[1];
    }

    sub_298B88F28(v19, v20, &v27);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v27;
    v24 = v28;
  }

  v33 = *__p;
  v34 = v24;
  __p[1] = 0;
  v24 = 0;
  __p[0] = 0;
  sub_298B89CC0(&v29, "lib_ver", 7uLL);
  sub_298B891F0(&v29, &v32);
  LODWORD(v30) = v30 - 1;
  sub_298B8802C(&v32);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a1 + 24);
  LOWORD(v32) = 3;
  *&v33 = v5;
  sub_298B89CC0(&v29, "api_ver", 7uLL);
  sub_298B891F0(&v29, &v32);
  LODWORD(v30) = v30 - 1;
  sub_298B8802C(&v32);
  v6 = *(a1 + 26);
  LOWORD(v32) = 3;
  *&v33 = v6;
  sub_298B89CC0(&v29, "format_maj_ver", 0xEuLL);
  sub_298B891F0(&v29, &v32);
  LODWORD(v30) = v30 - 1;
  sub_298B8802C(&v32);
  v7 = *(a1 + 28);
  LOWORD(v32) = 3;
  *&v33 = v7;
  sub_298B89CC0(&v29, "format_min_ver", 0xEuLL);
  sub_298B891F0(&v29, &v32);
  LODWORD(v30) = v30 - 1;
  sub_298B8802C(&v32);
  sub_298B89CC0(&v29, "compression_algs", 0x10uLL);
  sub_298B89A80(&v29);
  v8 = *(a1 + 32);
  if (v8 != (a1 + 40))
  {
    do
    {
      if (*(v8 + 55) < 0)
      {
        sub_298AFE11C(v25, v8[4], v8[5]);
      }

      else
      {
        *v25 = *(v8 + 2);
        v26 = v8[6];
      }

      LOWORD(v32) = 6;
      if (v26 >= 0)
      {
        v9 = v25;
      }

      else
      {
        v9 = v25[0];
      }

      if (v26 >= 0)
      {
        v10 = SHIBYTE(v26);
      }

      else
      {
        v10 = v25[1];
      }

      if (!sub_298B88E98(v9, v10, 0))
      {
        if (v26 >= 0)
        {
          v14 = v25;
        }

        else
        {
          v14 = v25[0];
        }

        if (v26 >= 0)
        {
          v15 = SHIBYTE(v26);
        }

        else
        {
          v15 = v25[1];
        }

        sub_298B88F28(v14, v15, &v27);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        *v25 = v27;
        v26 = v28;
      }

      v33 = *v25;
      v34 = v26;
      v25[1] = 0;
      v26 = 0;
      v25[0] = 0;
      sub_298B891F0(&v29, &v32);
      sub_298B8802C(&v32);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
        v11 = v8[1];
        if (v11)
        {
          do
          {
LABEL_30:
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
          goto LABEL_15;
        }
      }

      else
      {
        v11 = v8[1];
        if (v11)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v12 = v8[2];
        v13 = *v12 == v8;
        v8 = v12;
      }

      while (!v13);
LABEL_15:
      v8 = v12;
    }

    while (v12 != (a1 + 40));
  }

  sub_298B89B0C(&v29);
  LODWORD(v30) = v30 - 1;
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      sub_298AFE11C(v25, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      *v25 = *(a1 + 56);
      v26 = *(a1 + 72);
    }

    LOWORD(v32) = 6;
    if (v26 >= 0)
    {
      v16 = v25;
    }

    else
    {
      v16 = v25[0];
    }

    if (v26 >= 0)
    {
      v17 = SHIBYTE(v26);
    }

    else
    {
      v17 = v25[1];
    }

    if (!sub_298B88E98(v16, v17, 0))
    {
      if (v26 >= 0)
      {
        v21 = v25;
      }

      else
      {
        v21 = v25[0];
      }

      if (v26 >= 0)
      {
        v22 = SHIBYTE(v26);
      }

      else
      {
        v22 = v25[1];
      }

      sub_298B88F28(v21, v22, &v27);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      *v25 = v27;
      v26 = v28;
    }

    v33 = *v25;
    v34 = v26;
    v25[1] = 0;
    v26 = 0;
    v25[0] = 0;
    sub_298B89CC0(&v29, "default_compression_alg", 0x17uLL);
    sub_298B891F0(&v29, &v32);
    LODWORD(v30) = v30 - 1;
    sub_298B8802C(&v32);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  sub_298B89C2C(&v29);
  if (v29 != v31)
  {
    free(v29);
  }

  v18 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C3C758@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 0;
  v11 = a2;
  v10 = 0;
  v3 = &unk_2A1F1E040;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_298C3C26C(a1, &v3);
  return sub_298B9AE14(&v3);
}

void **sub_298C3C7C8@<X0>(std::string::size_type a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  sub_298B8806C(a2, a3, &v27);
  if (v28[24])
  {
    v6 = v27;
    v27 = 0;
    *a4 = v6;
    if (v6)
    {
      goto LABEL_28;
    }

    v7 = 0;
  }

  else
  {
    *a4 = 0;
    if (v27 == 7)
    {
      v7 = v28;
    }

    else
    {
      v7 = 0;
    }
  }

  sub_298B87AE0(v7, "lib_ver", 7, &__s);
  if (__s.__r_.__value_.__s.__data_[16] == 1)
  {
    size = __s.__r_.__value_.__l.__size_;
    v8 = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v10 >= 0)
    {
      size = *(a1 + 23);
    }

    else
    {
      size = *(a1 + 8);
    }
  }

  MEMORY[0x29C294310](a1, v8, size);
  v11 = sub_298B878FC(v7, "api_ver", 7);
  if ((v12 & 1) == 0)
  {
    v11 = *(a1 + 24);
  }

  *(a1 + 24) = v11;
  v13 = sub_298B878FC(v7, "format_maj_ver", 14);
  if ((v14 & 1) == 0)
  {
    v13 = *(a1 + 26);
  }

  *(a1 + 26) = v13;
  v15 = sub_298B878FC(v7, "format_min_ver", 14);
  if ((v16 & 1) == 0)
  {
    v15 = *(a1 + 28);
  }

  *(a1 + 28) = v15;
  v17 = sub_298B87C7C(v7, "compression_algs", 16);
  if (v17)
  {
    v20 = *v17;
    v21 = *(v17 + 8);
    while (v20 != v21)
    {
      v22 = *v20;
      if (v22 == 6)
      {
        v23 = *(v20 + 31);
        if ((v23 & 0x8000000000000000) == 0)
        {
          v24 = (v20 + 4);
LABEL_37:
          std::string::__init(&__s, v24, v23);
          goto LABEL_38;
        }
      }

      else if (v22 != 5)
      {
        goto LABEL_40;
      }

      v24 = *(v20 + 1);
      if (v24)
      {
        v23 = *(v20 + 2);
        goto LABEL_37;
      }

      memset(&__s, 0, sizeof(__s));
LABEL_38:
      sub_298C3D328(a1 + 32, &__s.__r_.__value_.__l.__data_);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

LABEL_40:
      v20 += 16;
    }
  }

  sub_298B87AE0(v7, "default_compression_alg", 23, &__s);
  if (__s.__r_.__value_.__s.__data_[16] == 1)
  {
    if (__s.__r_.__value_.__r.__words[0])
    {
      std::string::__init(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
    }

    sub_298C3CA24((a1 + 56), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *a4 = 0;
LABEL_28:
  result = sub_298C30640(&v27);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

std::string *sub_298C3CA24(std::string *result, const std::string *a2)
{
  if (result[1].__r_.__value_.__s.__data_[0] == 1)
  {
    v2 = result;
    std::string::operator=(result, a2);
    return v2;
  }

  else if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = result;
    sub_298AFE11C(result, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    result = v4;
    v4[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    v3 = *&a2->__r_.__value_.__l.__data_;
    result->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    *&result->__r_.__value_.__l.__data_ = v3;
    result[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return result;
}

uint64_t sub_298C3CAAC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v16 = 9;
  strcpy(&v15, "<unknown>");
  v17 = -1;
  v18 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v21 = 0;
  v22 = 0;
  sub_298C3C7C8(&v15, a1, a2, &v14);
  v4 = v14;
  if (v14)
  {
    v5 = sub_298B00584(a3, "Failed to parse version info from producer: ");
    v12 = v4;
    sub_298B851B0(&v12, &__p);
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

    v8 = sub_298B9BCEC(v5, p_p, size);
    sub_298B00584(v8, "\n");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v9 = 0;
  }

  else
  {
    sub_298C3D194(v11, &v15);
    v9 = sub_298C3CC04(v11, a3);
    sub_298C3C1EC(v11);
  }

  sub_298C3C1EC(&v15);
  return v9;
}

uint64_t sub_298C3CC04(uint64_t a1, uint64_t a2)
{
  sub_298C3BEA0(v16);
  v15[0] = a2;
  v15[1] = a1;
  v15[2] = v16;
  if (*(a1 + 26) == v18)
  {
    if (*(a1 + 28) <= v19)
    {
      if (*(a1 + 80) != 1)
      {
LABEL_16:
        v7 = 1;
        if (v24 != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }

      for (i = v21; i; i = *i)
      {
        if (!sub_298C3D2BC((a1 + 56), i + 4))
        {
          if (!sub_298C3D2BC(i + 4, (a1 + 56)))
          {
            goto LABEL_16;
          }

          i += 8;
        }
      }

      v9 = *(a2 + 32);
      if ((*(a2 + 24) - v9) > 0x13)
      {
        *(v9 + 16) = 544433523;
        *v9 = *"Trace producer uses ";
        *(a2 + 32) += 20;
      }

      else
      {
        sub_298B9BCEC(a2, "Trace producer uses ", 0x14uLL);
      }

      v10 = *(a1 + 79);
      if (v10 >= 0)
      {
        v11 = (a1 + 56);
      }

      else
      {
        v11 = *(a1 + 56);
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 79);
      }

      else
      {
        v12 = *(a1 + 64);
      }

      sub_298B9BCEC(a2, v11, v12);
      v13 = *(a2 + 32);
      if (*(a2 + 24) - v13 > 0x23uLL)
      {
        qmemcpy(v13, ", but consumer does not support it.\n", 36);
        v4 = (*(a2 + 32) + 36);
        *(a2 + 32) = v4;
      }

      else
      {
        sub_298B9BCEC(a2, ", but consumer does not support it.\n", 0x24uLL);
        v4 = *(a2 + 32);
      }

      v5 = *(a2 + 24);
    }

    else
    {
      sub_298C3CEF0(v15);
      v5 = *(a2 + 24);
      v4 = *(a2 + 32);
    }

    v6 = v5 - v4;
  }

  else
  {
    sub_298C3CEF0(v15);
    v4 = *(a2 + 32);
    v6 = *(a2 + 24) - v4;
    if (v18 > *(a1 + 26))
    {
      if (v6 > 0x5B)
      {
        v7 = 0;
        qmemcpy(v4, "Suggestion: Upgrade the OS installation on the target device where the trace was collected.\n", 92);
        *(a2 + 32) += 92;
        if (v24 != 1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_298B9BCEC(a2, "Suggestion: Upgrade the OS installation on the target device where the trace was collected.\n", 0x5CuLL);
        v7 = 0;
        if (v24 != 1)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_36;
    }
  }

  if (v6 > 0x37)
  {
    v7 = 0;
    qmemcpy(v4, "Suggestion: Upgrade the developer tools on this device.\n", 56);
    *(a2 + 32) += 56;
    if (v24 != 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_298B9BCEC(a2, "Suggestion: Upgrade the developer tools on this device.\n", 0x38uLL);
    v7 = 0;
    if (v24 != 1)
    {
      goto LABEL_38;
    }
  }

LABEL_36:
  if (v23 < 0)
  {
    operator delete(__p);
  }

LABEL_38:
  sub_298BCE714(&v20, v21);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  return v7;
}

uint64_t sub_298C3CEF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (*(*a1 + 24) - v3 > 0x19uLL)
  {
    qmemcpy(v3, "Trace producer has format ", 26);
    v2[4] += 26;
  }

  else
  {
    sub_298B9BCEC(*a1, "Trace producer has format ", 0x1AuLL);
  }

  sub_298B8FC48(v2, *(a1[1] + 26), 0, 0, 0);
  v4 = v2[4];
  if (v2[3] == v4)
  {
    sub_298B9BCEC(v2, ".", 1uLL);
  }

  else
  {
    *v4 = 46;
    ++v2[4];
  }

  sub_298B8FC48(v2, *(a1[1] + 28), 0, 0, 0);
  v5 = v2[4];
  if (v2[3] - v5 > 0x19uLL)
  {
    qmemcpy(v5, ", but consumer has format ", 26);
    v2[4] += 26;
  }

  else
  {
    sub_298B9BCEC(v2, ", but consumer has format ", 0x1AuLL);
  }

  sub_298B8FC48(v2, *(a1[2] + 26), 0, 0, 0);
  v6 = v2[4];
  if (v2[3] == v6)
  {
    sub_298B9BCEC(v2, ".", 1uLL);
  }

  else
  {
    *v6 = 46;
    ++v2[4];
  }

  result = sub_298B8FC48(v2, *(a1[2] + 28), 0, 0, 0);
  v8 = v2[4];
  if (v2[3] - v8 > 1uLL)
  {
    *v8 = 2606;
    v2[4] += 2;
  }

  else
  {

    return sub_298B9BCEC(v2, ".\n", 2uLL);
  }

  return result;
}

__n128 sub_298C3D0DC(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        v2 = a1;
        v3 = a2;
        operator delete(*a1);
        a2 = v3;
        a1 = v2;
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      v5 = a1;
      operator delete(*a1);
      a1 = v5;
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_298C3D194(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  v5 = *(a2 + 6);
  v6 = *(a2 + 14);
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 28) = v6;
  *(a1 + 24) = v5;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  if (v7 != (a2 + 40))
  {
    do
    {
      sub_298BCD5B0((a1 + 32), (a1 + 40), v7 + 4);
      v10 = v7[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != (a2 + 40));
  }

  *(a1 + 56) = 0;
  v8 = (a1 + 56);
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 79) < 0)
    {
      sub_298AFE11C(v8, *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v9 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 9);
      *v8 = v9;
    }

    *(a1 + 80) = 1;
  }

  return a1;
}

BOOL sub_298C3D2BC(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void *sub_298C3D328(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_28:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_28;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_28;
    }
  }
}

void sub_298C3D4A8(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_298BCE714(a1, *(a1 + 8));
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

void sub_298C3D748(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == *"???" ? (v5 = *(a3 + 2) == asc_298EAE9A9[2]) : (v5 = 0), v5))
  {
    dyld_for_each_installed_shared_cache();
    if (*(a1 + 128))
    {
      return;
    }
  }

  else
  {
    dyld_shared_cache_for_file();
    if (*(a1 + 128))
    {
      return;
    }
  }

  std::mutex::lock((a1 + 16));
  *(a1 + 8) = 1;
  std::condition_variable::notify_one((a1 + 80));
  std::mutex::unlock((a1 + 16));
  m = (a1 + 144);
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 144));
  if (*(a1 + 137))
  {
LABEL_13:
    std::mutex::unlock(m);
    return;
  }

  do
  {
    std::condition_variable::wait((a1 + 208), &__lk);
  }

  while (*(a1 + 137) != 1);
  if (__lk.__owns_)
  {
    m = __lk.__m_;
    goto LABEL_13;
  }
}

void sub_298C3D890(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 128);
    dyld_shared_cache_unpin_mapping();
  }

  std::mutex::lock((a1 + 144));
  *(a1 + 137) = 1;
  std::condition_variable::notify_one((a1 + 208));
  std::mutex::unlock((a1 + 144));
  std::thread::join(a1);
  v3 = *(a1 + 272);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::condition_variable::~condition_variable((a1 + 208));
  std::mutex::~mutex((a1 + 144));
  std::condition_variable::~condition_variable((a1 + 80));
  std::mutex::~mutex((a1 + 16));

  std::thread::~thread(a1);
}

uint64_t sub_298C3D948(uint64_t a1, const unsigned __int8 *a2)
{
  v41[2] = *MEMORY[0x29EDCA608];
  v41[0] = 0;
  v41[1] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2000000000;
  v39[3] = v41;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v3 = *(a1 + 128);
  v23 = MEMORY[0x29EDCA5F8];
  v24 = 1107296256;
  v25 = sub_298C3DC48;
  v26 = &unk_2A1F1FAC8;
  v27 = &v35;
  v28 = v39;
  v29 = &v31;
  v30 = a2;
  dyld_shared_cache_for_each_image();
  if ((v36[3] & 1) == 0)
  {
    std::generic_category();
    v11[0] = "Dyld.cpp";
    v11[2] = ":";
    v12 = 771;
    v10 = 2;
    strcpy(v9, "94");
    v13[0] = v11;
    v13[2] = v9;
    v14 = 1026;
    v15[0] = v13;
    v15[2] = ": ";
    v16 = 770;
    v17[0] = v15;
    v17[2] = "No match for UUID ";
    v18 = 770;
    v7[1] = 0;
    v7[2] = 0;
    v7[0] = a2;
    sub_298B1FB90(v7, __p);
    v19[0] = v17;
    v19[2] = __p;
    v20 = 1026;
    v21[0] = v19;
    v21[2] = " in shared cache";
    v22 = 770;
    sub_298B996A4(v21, &v40);
    operator new();
  }

  v4 = v32[3];
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t sub_298C3DC48(uint64_t result, uint64_t a2)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v3 = result;
    v4 = *(*(*(result + 40) + 8) + 24);
    result = dyld_image_copy_uuid();
    if (result)
    {
      result = uuid_compare(*(v3 + 56), *(*(*(v3 + 40) + 8) + 24));
      *(*(*(v3 + 32) + 8) + 24) = result == 0;
    }

    if (*(*(*(v3 + 32) + 8) + 24) == 1)
    {
      result = sub_298C3DCE4(a2);
      *(*(*(v3 + 48) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t sub_298C3DCE4(uint64_t a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 1107296256;
  v20 = sub_298C3F11C;
  v21 = &unk_2A1F1FB88;
  v23 = &v29;
  v24 = a1;
  v22 = &v25;
  dyld_image_for_each_segment_info();
  if ((v26[3] & 1) == 0)
  {
    std::generic_category();
    v6[0] = "Dyld.cpp";
    v6[2] = ":";
    v7 = 771;
    v5 = 2;
    strcpy(__p, "71");
    v8[0] = v6;
    v8[2] = __p;
    v9 = 1026;
    v10[0] = v8;
    v10[2] = ": ";
    v11 = 770;
    *&v12 = v10;
    *&v13 = "No r-x segments in image ";
    LOWORD(v14) = 770;
    installname = dyld_image_get_installname();
    if (*installname)
    {
      *&v15 = &v12;
      *&v16 = installname;
      LOWORD(v17) = 770;
    }

    else
    {
      v15 = v12;
      v16 = v13;
      v17 = v14;
    }

    sub_298B996A4(&v15, &v33);
    operator new();
  }

  v1 = v30[3];
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v1;
}

void sub_298C3DF68(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x4002000000;
  v35 = sub_298C3E178;
  v36 = sub_298C3E19C;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4002000000;
  v27 = sub_298C3E1B4;
  v28 = sub_298C3E1D8;
  __p = 0;
  v30 = 0;
  v31 = 0;
  v5 = *(a1 + 128);
  dyld_shared_cache_for_each_image();
  v7 = v33[5];
  v8 = v33[6];
  v9 = 126 - 2 * __clz(v8 - v7);
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_298C3F430(v7, v8, v10, 1, v6);
  v12 = v33;
  v13 = v33[5];
  v14 = v33[6];
  if ((v14 - v13) >= 0x11)
  {
    v15 = 2;
    v16 = 1;
    do
    {
      if (*(v13 + 16 * v16) - (*(v13 + 16 * (v15 - 2) + 8) + *(v13 + 16 * (v15 - 2))) >= 0x1000uLL)
      {
        a2(a3, v11);
        v12 = v33;
      }

      v16 = v15;
      v13 = v12[5];
      v14 = v12[6];
      ++v15;
    }

    while (v16 < (v14 - v13) >> 4);
  }

  v17 = *(v14 - 8) + *(v14 - 16);
  v18 = v25[5];
  v19 = v25[6];
  v20 = -1;
  while (v18 != v19)
  {
    v22 = *v18++;
    v21 = v22;
    if (v22 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    if (v21 > v17)
    {
      v20 = v23;
    }
  }

  (a2)(a3, v17, v20, v11);
  _Block_object_dispose(&v24, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v32, 8);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

__n128 sub_298C3E178(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_298C3E19C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 sub_298C3E1B4(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_298C3E1D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_298C3E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a3;
  if (a5 == 5)
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = v5[6];
    v7 = v5[7];
    if (v6 >= v7)
    {
      v9 = v5[5];
      v10 = v6 - v9;
      v11 = v10 >> 4;
      v12 = (v10 >> 4) + 1;
      if (v12 >> 60)
      {
        sub_298ADDDA0();
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

      if (v14)
      {
        if (!(v14 >> 60))
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v15 = (16 * v11);
      *v15 = a3;
      v15[1] = a4;
      v8 = 16 * v11 + 16;
      memcpy(0, v9, v10);
      v5[5] = 0;
      v5[6] = v8;
      v5[7] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v6 = a3;
      *(v6 + 1) = a4;
      v8 = (v6 + 16);
    }

    v5[6] = v8;
  }

  else
  {
    sub_298AFB228(*(*(a1 + 32) + 8) + 40, &v16);
  }
}

void sub_298C3E3BC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void sub_298C3E40C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t sub_298C3E450(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  installname = dyld_image_get_installname();
  v5 = installname;
  if (!installname)
  {
    v6 = 0;
    v13 = 0;
    v14 = 0;
    result = dyld_image_copy_uuid();
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = strlen(installname);
  v13 = 0;
  v14 = 0;
  result = dyld_image_copy_uuid();
  if (result)
  {
LABEL_3:
    v8 = sub_298C3DCE4(a2);
    v12[1] = 0;
    v12[2] = 0;
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12[0] = &v13;
    result = v10(v9, v5, v6, v12, v8);
  }

LABEL_4:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C3E534(uint64_t a1@<X0>, _BYTE *a2@<X1>, size_t a3@<X2>, void *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x4802000000;
  v49 = sub_298C3EBD0;
  v50 = sub_298C3EC0C;
  LOBYTE(v51) = 0;
  v53 = 0;
  v11 = *(a1 + 128);
  v39 = MEMORY[0x29EDCA5F8];
  v40 = 1107296256;
  v41 = sub_298C3EC2C;
  v42 = &unk_2A1F1FB58;
  v45 = a5;
  v43 = &v46;
  v44 = a4;
  dyld_shared_cache_for_each_file();
  if ((v47[8] & 1) == 0)
  {
    std::generic_category();
    v26[0] = "Dyld.cpp";
    v27 = ":";
    v28 = 771;
    v25 = 3;
    LODWORD(v24[0]) = 3225393;
    v29[0] = v26;
    p_p = v24;
    v31 = 1026;
    v32[0] = v29;
    v33 = ": ";
    v35 = 770;
    v36[0] = v32;
    v37 = "Did not find dyld shared cache files";
    v38 = 770;
    sub_298B996A4(v36, v54);
    operator new();
  }

  v12 = a4[4];
  if (a4[3] - v12 > 0x21uLL)
  {
    qmemcpy(v12, "Extracting dyld shared cache into ", 34);
    v14 = a4[3];
    v13 = (a4[4] + 34);
    a4[4] = v13;
    if (a3 <= v14 - v13)
    {
LABEL_4:
      if (a3)
      {
        memcpy(v13, a2, a3);
        v13 = (a4[4] + a3);
        a4[4] = v13;
      }

      if (a4[3] - v13 <= 0x1EuLL)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_298B9BCEC(a4, "Extracting dyld shared cache into ", 0x22uLL);
    v13 = a4[4];
    if (a3 <= a4[3] - v13)
    {
      goto LABEL_4;
    }
  }

  sub_298B9BCEC(a4, a2, a3);
  v13 = a4[4];
  if (a4[3] - v13 <= 0x1EuLL)
  {
LABEL_7:
    sub_298B9BCEC(a4, " (this might take a minute)...\n", 0x1FuLL);
    goto LABEL_12;
  }

LABEL_11:
  qmemcpy(v13, " (this might take a minute)...\n", 31);
  a4[4] += 31;
LABEL_12:
  v32[0] = "/usr/local/bin/dyld_shared_cache_util -extract ";
  v33 = a2;
  v34 = a3;
  v35 = 1283;
  v36[0] = v32;
  v37 = " ";
  v38 = 770;
  v55.__r_.__value_.__r.__words[0] = v36;
  v55.__r_.__value_.__r.__words[2] = (v47 + 5);
  v57 = 1026;
  sub_298B996A4(&v55, v24);
  v15 = a4[4];
  if (!a5)
  {
    goto LABEL_24;
  }

  if ((a4[3] - v15) > 8)
  {
    *(v15 + 8) = 32;
    *v15 = *"Running: ";
    a4[4] += 9;
  }

  else
  {
    sub_298B9BCEC(a4, "Running: ", 9uLL);
  }

  if (v25 >= 0)
  {
    v16 = v24;
  }

  else
  {
    v16 = v24[0];
  }

  if (v25 >= 0)
  {
    v17 = v25;
  }

  else
  {
    v17 = v24[1];
  }

  sub_298B9BCEC(a4, v16, v17);
  v18 = a4[4];
  if (a4[3] != v18)
  {
    *v18 = 10;
    v15 = a4[4] + 1;
    a4[4] = v15;
LABEL_24:
    v19 = a4[2];
    if (v15 == v19)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  sub_298B9BCEC(a4, "\n", 1uLL);
  v19 = a4[2];
  if (a4[4] != v19)
  {
LABEL_25:
    a4[4] = v19;
    sub_298B9BB84(a4);
  }

LABEL_26:
  if (v25 >= 0)
  {
    v20 = v24;
  }

  else
  {
    v20 = v24[0];
  }

  LODWORD(v36[0]) = 0;
  sub_298BC0EB0(v20, v36, &v55);
  if (v56 == 1 && SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (LODWORD(v36[0]))
  {
    std::generic_category();
    v26[0] = "Dyld.cpp";
    v27 = ":";
    v28 = 771;
    v23 = 3;
    LODWORD(__p) = 3291185;
    v29[0] = v26;
    p_p = &__p;
    v31 = 1026;
    v32[0] = v29;
    v33 = ": ";
    v35 = 770;
    v36[0] = v32;
    v37 = "Dyld shared cache extraction failed";
    v38 = 770;
    sub_298B996A4(v36, v54);
    operator new();
  }

  v21 = a4[4];
  if ((a4[3] - v21) > 5)
  {
    *(v21 + 4) = 2593;
    *v21 = 1701736260;
    a4[4] += 6;
  }

  else
  {
    sub_298B9BCEC(a4, "Done!\n", 6uLL);
  }

  *a6 = 0;
  if (v25 < 0)
  {
    operator delete(v24[0]);
    _Block_object_dispose(&v46, 8);
    if (v53 != 1)
    {
      return;
    }
  }

  else
  {
    _Block_object_dispose(&v46, 8);
    if (v53 != 1)
    {
      return;
    }
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }
}

__n128 sub_298C3EBD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    result = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = result;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(a1 + 64) = 1;
  }

  return result;
}

void sub_298C3EC0C(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_298C3EC2C(uint64_t a1, char *__s)
{
  if (*(*(*(a1 + 32) + 8) + 64))
  {
    goto LABEL_9;
  }

  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v4;
  if (v4)
  {
    memcpy(&v12, __s, v4);
  }

  *(&v12 + v5) = 0;
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 64) == 1)
  {
    if (*(v6 + 63) < 0)
    {
      operator delete(*(v6 + 40));
    }

    *(v6 + 40) = v12;
    *(v6 + 56) = v13;
LABEL_9:
    if (*(a1 + 48) != 1)
    {
      return;
    }

    goto LABEL_10;
  }

  *(v6 + 40) = v12;
  *(v6 + 56) = v13;
  *(v6 + 64) = 1;
  if (*(a1 + 48) != 1)
  {
    return;
  }

LABEL_10:
  v7 = *(a1 + 40);
  v8 = *(v7 + 32);
  if ((*(v7 + 24) - v8) > 0x12)
  {
    *(v8 + 15) = 540697964;
    *v8 = *"Shared cache file: ";
    v9 = (*(v7 + 32) + 19);
    *(v7 + 32) = v9;
    if (!__s)
    {
      goto LABEL_20;
    }

LABEL_14:
    v10 = strlen(__s);
    v11 = v10;
    if (v10 <= *(v7 + 24) - v9)
    {
      if (v10)
      {
        memcpy(v9, __s, v10);
        v9 = (*(v7 + 32) + v11);
        *(v7 + 32) = v9;
      }
    }

    else
    {
      sub_298B9BCEC(v7, __s, v10);
      v9 = *(v7 + 32);
    }

    goto LABEL_20;
  }

  sub_298B9BCEC(v7, "Shared cache file: ", 0x13uLL);
  v9 = *(v7 + 32);
  if (__s)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (*(v7 + 24) == v9)
  {

    sub_298B9BCEC(v7, "\n", 1uLL);
  }

  else
  {
    *v9 = 10;
    ++*(v7 + 32);
  }
}

void sub_298C3EE80(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if ((*(v3 + 137) & 1) == 0)
  {
    v5 = (a1 + 40);
    *uu2 = 0;
    v21 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2000000000;
    v19[3] = uu2;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v6 = *(a1 + 48);
    if (v6 == 1)
    {
      __lk.__m_ = MEMORY[0x29EDCA5F8];
      *&__lk.__owns_ = 1107296256;
      v10 = sub_298C3F314;
      v11 = &unk_2A1F1FBB8;
      v12 = &v15;
      v13 = v19;
      v14 = a1 + 40;
      dyld_shared_cache_for_each_image();
      v2 = *(v16 + 24);
    }

    else if (!v6)
    {
      dyld_shared_cache_copy_uuid();
      v2 = uuid_compare(*v5, uu2) == 0;
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(v19, 8);
    if (v2)
    {
      *(v3 + 128) = a2;
      *(v3 + 136) = 0;
      dyld_shared_cache_for_each_image();
      std::mutex::lock((v3 + 16));
      *(v3 + 8) = 1;
      std::condition_variable::notify_one((v3 + 80));
      std::mutex::unlock((v3 + 16));
      m = (v3 + 144);
      __lk.__m_ = (v3 + 144);
      __lk.__owns_ = 1;
      std::mutex::lock((v3 + 144));
      if (*(v3 + 137))
      {
LABEL_11:
        std::mutex::unlock(m);
        goto LABEL_12;
      }

      do
      {
        std::condition_variable::wait((v3 + 208), &__lk);
      }

      while (*(v3 + 137) != 1);
      if (__lk.__owns_)
      {
        m = __lk.__m_;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v8 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C3F090(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  *src = 0;
  v6 = 0;
  result = dyld_image_copy_uuid();
  if (result)
  {
    memset(dst, 0, sizeof(dst));
    uuid_copy(dst, src);
    result = sub_298C2B3C8((v1 + 256), dst);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C3F11C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 == 5)
  {
    if (*(*(*(result + 32) + 8) + 24) == 1)
    {
      v30[8] = v10;
      v30[9] = v9;
      v30[10] = v8;
      v30[11] = v7;
      v30[12] = v6;
      v30[13] = v5;
      v30[14] = v11;
      v30[15] = v12;
      v13 = result;
      std::generic_category();
      v18[0] = "Dyld.cpp";
      v18[2] = ":";
      v19 = 771;
      v17 = 2;
      strcpy(__p, "63");
      v20[0] = v18;
      v20[2] = __p;
      v21 = 1026;
      v22[0] = v20;
      v22[2] = ": ";
      v23 = 770;
      *&v24 = v22;
      *&v25 = "Multiple r-x segments in image ";
      LOWORD(v26) = 770;
      v14 = *(v13 + 48);
      installname = dyld_image_get_installname();
      if (*installname)
      {
        *&v27 = &v24;
        *&v28 = installname;
        LOWORD(v29) = 770;
      }

      else
      {
        v27 = v24;
        v28 = v25;
        v29 = v26;
      }

      sub_298B996A4(&v27, v30);
      operator new();
    }

    *(*(*(result + 40) + 8) + 24) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_298C3F314(uint64_t result)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = *(*(*(result + 40) + 8) + 24);
    result = dyld_image_copy_uuid();
    if (result)
    {
      result = uuid_compare(**(v1 + 48), *(*(*(v1 + 40) + 8) + 24));
      *(*(*(v1 + 32) + 8) + 24) = result == 0;
    }
  }

  return result;
}

uint64_t sub_298C3F388(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    v8 = MEMORY[0x29C2943C0]();
    MEMORY[0x29C2945F0](v8, 0x20C4093837F09);
  }

  MEMORY[0x29C2945F0](a1, 0x10F0C4075285802);
  return 0;
}

__n128 sub_298C3F430(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v60 = (v12 + 16);
        v61 = *(v12 + 16);
        v63 = a2[-1].n128_u64[0];
        v58 = a2 - 1;
        v62 = v63;
        if (v61 < *v12)
        {
          if (v62 >= v61)
          {
            v135 = *v12;
            *v12 = *v60;
            result = v135;
            *v60 = v135;
            if (v58->n128_u64[0] < *(v12 + 16))
            {
              result = *v60;
              *v60 = *v58;
              *v58 = result;
            }

            return result;
          }

LABEL_109:
          v131 = *v12;
          *v12 = *v58;
          result = v131;
          *v58 = v131;
          return result;
        }

        if (v62 >= v61)
        {
          return result;
        }

        result = *v60;
        *v60 = *v58;
        *v58 = result;
LABEL_190:
        if (*(v12 + 16) < *v12)
        {
          v137 = *v12;
          *v12 = *v60;
          result = v137;
          *v60 = v137;
        }

        return result;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {

          result.n128_u64[0] = sub_298C3FFAC(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
          return result;
        }

        goto LABEL_9;
      }

      v60 = (v12 + 16);
      v64 = *(v12 + 16);
      v65 = (v12 + 32);
      v66 = *(v12 + 32);
      if (v64 >= *v12)
      {
        if (v66 < v64)
        {
          result = *v60;
          *v60 = *v65;
          *v65 = result;
          if (*(v12 + 16) < *v12)
          {
            v134 = *v12;
            *v12 = *v60;
            result = v134;
            *v60 = v134;
          }
        }

        goto LABEL_187;
      }

      if (v66 >= v64)
      {
        v136 = *v12;
        *v12 = *v60;
        result = v136;
        *v60 = v136;
        if (v66 >= *(v12 + 16))
        {
          goto LABEL_187;
        }

        result = *v60;
        *v60 = *v65;
      }

      else
      {
        v132 = *v12;
        *v12 = *v65;
        result = v132;
      }

      *v65 = result;
LABEL_187:
      if (v9->n128_u64[0] >= v65->n128_u64[0])
      {
        return result;
      }

      result = *v65;
      *v65 = *v9;
      *v9 = result;
      if (v65->n128_u64[0] >= v60->n128_u64[0])
      {
        return result;
      }

      result = *v60;
      *v60 = *v65;
      *v65 = result;
      goto LABEL_190;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v59 = a2[-1].n128_u64[0];
      v58 = a2 - 1;
      if (v59 >= *v12)
      {
        return result;
      }

      goto LABEL_109;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v67 = (v12 + 16);
      v69 = v12 == a2 || v67 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v69)
        {
          do
          {
            v107 = v67;
            v108 = a1[1].n128_u64[0];
            if (v108 < a1->n128_u64[0])
            {
              v109 = a1[1].n128_u64[1];
              v110 = v107;
              do
              {
                result = v110[-1];
                *v110 = result;
                v111 = v110[-2].n128_u64[0];
                --v110;
              }

              while (v108 < v111);
              v110->n128_u64[0] = v108;
              v110->n128_u64[1] = v109;
            }

            v67 = v107 + 1;
            a1 = v107;
          }

          while (&v107[1] != a2);
        }

        return result;
      }

      if (v69)
      {
        return result;
      }

      v70 = 0;
      v71 = v12;
      while (1)
      {
        v73 = v67;
        v74 = v71[2];
        if (v74 < *v71)
        {
          v75 = v71[3];
          v76 = v70;
          do
          {
            result = *(v12 + v76);
            *(v12 + v76 + 16) = result;
            if (!v76)
            {
              v72 = v12;
              goto LABEL_123;
            }

            v77 = *(v12 + v76 - 16);
            v76 -= 16;
          }

          while (v74 < v77);
          v72 = (v12 + v76 + 16);
LABEL_123:
          *v72 = v74;
          v72[1] = v75;
        }

        v67 = v73 + 1;
        v70 += 16;
        v71 = v73;
        if (&v73[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = v12 + 16 * (v13 >> 1);
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 < 0x81)
    {
      v18 = *v12;
      if (*v12 < *v14)
      {
        if (v16 >= v18)
        {
          v120 = *v14;
          *v14 = *v12;
          result = v120;
          *v12 = v120;
          if (v9->n128_u64[0] >= *v12)
          {
            goto LABEL_37;
          }

          v113 = *v12;
          *v12 = *v9;
        }

        else
        {
          v113 = *v14;
          *v14 = *v9;
        }

        result = v113;
        *v9 = v113;
LABEL_37:
        --a3;
        v19 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v116 = *v12;
      *v12 = *v9;
      result = v116;
      *v9 = v116;
      if (*v12 >= *v14)
      {
        goto LABEL_37;
      }

      v117 = *v14;
      *v14 = *v12;
      result = v117;
      *v12 = v117;
      --a3;
      v19 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 16) < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= v9->n128_u64[0])
      {
        v51 = v12 + 16;
        do
        {
          v12 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (v19 >= *v12);
      }

      else
      {
        do
        {
          v50 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v53);
      }

      v54 = a1->n128_u64[1];
      while (v12 < v52)
      {
        v130 = *v12;
        *v12 = *v52;
        result = v130;
        *v52 = v130;
        do
        {
          v55 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v55);
        do
        {
          v56 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v56);
      }

      v57 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v57;
        *a1 = *v57;
      }

      a4 = 0;
      *(v12 - 16) = v19;
      *(v12 - 8) = v54;
    }

    else
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v114 = *v14;
          *v14 = *v9;
          *v9 = v114;
          if (*v14 < *v12)
          {
            v115 = *v12;
            *v12 = *v14;
            *v14 = v115;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v118 = *v12;
          *v12 = *v14;
          *v14 = v118;
          if (v9->n128_u64[0] >= *v14)
          {
            goto LABEL_28;
          }

          v112 = *v14;
          *v14 = *v9;
        }

        else
        {
          v112 = *v12;
          *v12 = *v9;
        }

        *v9 = v112;
      }

LABEL_28:
      v20 = (v12 + 16);
      v21 = (v14 - 16);
      v22 = *(v14 - 16);
      v23 = v10->n128_u64[0];
      if (v22 >= *(v12 + 16))
      {
        if (v23 < v22)
        {
          v119 = *v21;
          *v21 = *v10;
          *v10 = v119;
          if (v21->n128_u64[0] < v20->n128_u64[0])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v26 = *v20;
          *v20 = *v21;
          *v21 = v26;
          if (v10->n128_u64[0] >= v21->n128_u64[0])
          {
            goto LABEL_42;
          }

          v121 = *v21;
          *v21 = *v10;
          v24 = v121;
        }

        else
        {
          v24 = *v20;
          *v20 = *v10;
        }

        *v10 = v24;
      }

LABEL_42:
      v27 = (v12 + 32);
      v30 = *(v14 + 16);
      v28 = (v14 + 16);
      v29 = v30;
      v31 = v11->n128_u64[0];
      if (v30 >= *(v12 + 32))
      {
        if (v31 < v29)
        {
          v122 = *v28;
          *v28 = *v11;
          *v11 = v122;
          if (v28->n128_u64[0] < v27->n128_u64[0])
          {
            v33 = *v27;
            *v27 = *v28;
            *v28 = v33;
          }
        }
      }

      else
      {
        if (v31 >= v29)
        {
          v34 = *v27;
          *v27 = *v28;
          *v28 = v34;
          if (v11->n128_u64[0] >= v28->n128_u64[0])
          {
            goto LABEL_51;
          }

          v123 = *v28;
          *v28 = *v11;
          v32 = v123;
        }

        else
        {
          v32 = *v27;
          *v27 = *v11;
        }

        *v11 = v32;
      }

LABEL_51:
      v35 = *v15;
      v36 = v28->n128_u64[0];
      if (*v15 >= v21->n128_u64[0])
      {
        if (v36 < v35)
        {
          v125 = *v15;
          *v15 = *v28;
          *v28 = v125;
          if (*v15 < v21->n128_u64[0])
          {
            v126 = *v21;
            *v21 = *v15;
            *v15 = v126;
          }
        }
      }

      else
      {
        if (v36 >= v35)
        {
          v127 = *v21;
          *v21 = *v15;
          *v15 = v127;
          if (v28->n128_u64[0] >= *v15)
          {
            goto LABEL_60;
          }

          v124 = *v15;
          *v15 = *v28;
        }

        else
        {
          v124 = *v21;
          *v21 = *v28;
        }

        *v28 = v124;
      }

LABEL_60:
      v128 = *v12;
      *v12 = *v15;
      result = v128;
      *v15 = v128;
      --a3;
      v19 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v37 = 0;
      v38 = *(v12 + 8);
      do
      {
        v39 = *(v12 + v37 + 16);
        v37 += 16;
      }

      while (v39 < v19);
      v40 = v12 + v37;
      v41 = a2;
      if (v37 == 16)
      {
        v41 = a2;
        do
        {
          if (v40 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v19);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v19);
      }

      v12 += v37;
      if (v40 < v41)
      {
        v44 = v41;
        do
        {
          v129 = *v12;
          *v12 = *v44;
          result = v129;
          *v44 = v129;
          do
          {
            v45 = *(v12 + 16);
            v12 += 16;
          }

          while (v45 < v19);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v19);
        }

        while (v12 < v44);
      }

      v47 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      *(v12 - 16) = v19;
      *(v12 - 8) = v38;
      if (v40 < v41)
      {
LABEL_81:
        sub_298C3F430(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v48 = sub_298C40130(a1, (v12 - 16), result);
        if (sub_298C40130(v12, a2, v49))
        {
          a2 = (v12 - 16);
          if (v48)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v48)
        {
          goto LABEL_81;
        }
      }
    }
  }

  if (v12 == a2)
  {
    return result;
  }

  v78 = (v13 - 2) >> 1;
  v79 = v78;
  while (2)
  {
    if (v78 >= v79)
    {
      v81 = (2 * (v79 & 0xFFFFFFFFFFFFFFFLL)) | 1;
      v82 = (v12 + 16 * v81);
      if (2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v13)
      {
        v85 = (v12 + 16 * v79);
        v86 = *v85;
        if (*v82 >= *v85)
        {
LABEL_143:
          v87 = v85[1];
          while (1)
          {
            v90 = v85;
            v85 = v82;
            *v90 = *v82;
            if (v78 < v81)
            {
              break;
            }

            v91 = (2 * (v81 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v82 = (v12 + 16 * v91);
            v81 = 2 * v81 + 2;
            if (v81 < v13)
            {
              v88 = *v82;
              v89 = v82[2];
              if (*v82 <= v89)
              {
                v88 = v82[2];
              }

              if (*v82 >= v89)
              {
                v81 = v91;
              }

              else
              {
                v82 += 2;
              }

              if (v88 < v86)
              {
                break;
              }
            }

            else
            {
              v81 = v91;
              if (*v82 < v86)
              {
                break;
              }
            }
          }

          *v85 = v86;
          v85[1] = v87;
        }
      }

      else
      {
        v83 = v82[2];
        v84 = *v82 >= v83;
        if (*v82 > v83)
        {
          v83 = *v82;
        }

        if (!v84)
        {
          v82 += 2;
          v81 = 2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2;
        }

        v85 = (v12 + 16 * v79);
        v86 = *v85;
        if (v83 >= *v85)
        {
          goto LABEL_143;
        }
      }
    }

    v80 = v79-- <= 0;
    if (!v80)
    {
      continue;
    }

    break;
  }

  do
  {
    v92 = 0;
    v133 = *v12;
    v93 = (v13 - 2) >> 1;
    n128_u64 = v12;
    do
    {
      while (1)
      {
        v98 = &n128_u64[v92];
        v97 = v98 + 1;
        v99 = (2 * v92) | 1;
        v92 = 2 * v92 + 2;
        if (v92 < v13)
        {
          break;
        }

        v92 = v99;
        *n128_u64 = *v97;
        n128_u64 = v98[1].n128_u64;
        if (v99 > v93)
        {
          goto LABEL_163;
        }
      }

      v96 = v98[2].n128_u64[0];
      v95 = v98 + 2;
      if (v95[-1].n128_u64[0] >= v96)
      {
        v92 = v99;
      }

      else
      {
        v97 = v95;
      }

      *n128_u64 = *v97;
      n128_u64 = v97;
    }

    while (v92 <= v93);
LABEL_163:
    if (v97 == --a2)
    {
      result = v133;
      *v97 = v133;
    }

    else
    {
      *v97 = *a2;
      result = v133;
      *a2 = v133;
      v100 = (&v97[1] - v12) >> 4;
      v80 = v100 < 2;
      v101 = v100 - 2;
      if (!v80)
      {
        v102 = v101 >> 1;
        v103 = (v12 + 16 * v102);
        v104 = v97->n128_u64[0];
        if (v103->n128_u64[0] < v97->n128_u64[0])
        {
          v105 = v97->n128_u64[1];
          do
          {
            v106 = v97;
            v97 = v103;
            result = *v103;
            *v106 = *v103;
            if (!v102)
            {
              break;
            }

            v102 = (v102 - 1) >> 1;
            v103 = (v12 + 16 * v102);
          }

          while (v103->n128_u64[0] < v104);
          v97->n128_u64[0] = v104;
          v97->n128_u64[1] = v105;
        }
      }
    }

    v80 = v13-- <= 2;
  }

  while (!v80);
  return result;
}

__n128 sub_298C3FFAC(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_298C40130(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v4->n128_u64[0] < *(a1 + 16))
          {
            v30 = *v7;
            *v7 = *v4;
            *v4 = v30;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v4;
      *v4 = v24;
LABEL_49:
      if (*(a1 + 16) < *a1)
      {
        v43 = *a1;
        *a1 = *v7;
        *v7 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_298C3FFAC(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v7 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = *(a1 + 32);
    v21 = a2 - 1;
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        v27 = *v7;
        *v7 = *v19;
        *v19 = v27;
        if (v7->n128_u64[0] < v22)
        {
          v28 = *a1;
          *a1 = *v7;
          *v7 = v28;
        }
      }

      goto LABEL_46;
    }

    if (v20 >= v18)
    {
      v40 = *a1;
      *a1 = *v7;
      *v7 = v40;
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_46;
      }

      v23 = *v7;
      *v7 = *v19;
    }

    else
    {
      v23 = *a1;
      *a1 = *v19;
    }

    *v19 = v23;
LABEL_46:
    if (v21->n128_u64[0] >= v19->n128_u64[0])
    {
      return 1;
    }

    v41 = *v19;
    *v19 = *v21;
    *v21 = v41;
    if (v19->n128_u64[0] >= v7->n128_u64[0])
    {
      return 1;
    }

    v42 = *v7;
    *v7 = *v19;
    *v19 = v42;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v11 = *a1;
    *a1 = *v4;
    *v4 = v11;
    return 1;
  }

LABEL_13:
  v12 = (a1 + 32);
  v13 = *(a1 + 32);
  v14 = (a1 + 16);
  v15 = *(a1 + 16);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v25 = *v14;
      *v14 = *v12;
      *v12 = v25;
      if (v14->n128_u64[0] < v16)
      {
        v26 = *a1;
        *a1 = *v14;
        *v14 = v26;
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      v31 = *a1;
      *a1 = *v14;
      *v14 = v31;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v17 = *v14;
      *v14 = *v12;
    }

    else
    {
      v17 = *a1;
      *a1 = *v12;
    }

    *v12 = v17;
  }

LABEL_32:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (v32->n128_u64[0] < v12->n128_u64[0])
    {
      break;
    }

LABEL_41:
    v12 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }

  v36 = v32->n128_i64[1];
  v37 = v33;
  do
  {
    *(a1 + v37 + 48) = *(a1 + v37 + 32);
    if (v37 == -32)
    {
      *a1 = v35;
      *(a1 + 8) = v36;
      if (++v34 != 8)
      {
        goto LABEL_41;
      }

      return &v32[1] == a2;
    }

    v38 = *(a1 + v37 + 16);
    v37 -= 16;
  }

  while (v35 < v38);
  v39 = a1 + v37;
  *(v39 + 48) = v35;
  *(v39 + 56) = v36;
  if (++v34 != 8)
  {
    goto LABEL_41;
  }

  return &v32[1] == a2;
}

uint64_t sub_298C404B4@<X0>(uint64_t a1@<X8>)
{
  AssertionID = 0;
  result = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.libhwtrace.active-trace", &AssertionID);
  if (result)
  {
    std::generic_category();
    v5[0] = "Kernel.cpp";
    v5[2] = ":";
    v6 = 771;
    v4 = 2;
    strcpy(__p, "42");
    v7[0] = v5;
    v7[2] = __p;
    v8 = 1026;
    v9[0] = v7;
    v9[2] = ": ";
    v10 = 770;
    v11[0] = v9;
    v11[2] = "IOPMAssertionCreateWithName failed";
    v12 = 770;
    sub_298B996A4(v11, &v14);
    operator new();
  }

  *(a1 + 8) &= ~1u;
  *a1 = AssertionID;
  return result;
}

uint64_t sub_298C406A4@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v14 = a1;
  result = sysctlbyname("kern.suspend_cluster_powerdown", 0, 0, &v14, 4uLL);
  if (result)
  {
    std::generic_category();
    v6[0] = "Kernel.cpp";
    v6[2] = ":";
    v7 = 771;
    v5 = 2;
    strcpy(__p, "51");
    v8[0] = v6;
    v8[2] = __p;
    v9 = 1026;
    v10[0] = v8;
    v10[2] = ": ";
    v11 = 770;
    v12[0] = v10;
    v12[2] = "kern.suspend_cluster_powerdown failed";
    v13 = 770;
    sub_298B996A4(v12, &v15);
    operator new();
  }

  *a2 = 0;
  return result;
}

void sub_298C40868(uint64_t a1)
{
  v1 = &unk_29EEB6500;
  v2 = 208;
  do
  {
    while (1)
    {
      v4 = *(v1 - 1);
      v3 = *v1;
      if (v4)
      {
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_37;
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        *(&v14.__r_.__value_.__s + 23) = *v1;
        if (v3)
        {
          memmove(&v14, v4, v3);
        }

        v14.__r_.__value_.__s.__data_[v3] = 0;
      }

      else
      {
        memset(&v14, 0, sizeof(v14));
      }

      v5 = std::string::insert(&v14, 0, "machdep.cpu.sysreg_");
      v6 = v5->__r_.__value_.__r.__words[2];
      *__p = *&v5->__r_.__value_.__l.__data_;
      v16 = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      v12 = 8;
      v13 = 0;
      v7 = v16 >= 0 ? __p : __p[0];
      if (sysctlbyname(v7, &v13, &v12, 0, 0))
      {
        v8 = 0;
        v13 = 0;
        if (!v4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v8 = v13;
        if (!v4)
        {
LABEL_23:
          memset(&v14, 0, sizeof(v14));
          goto LABEL_18;
        }
      }

      if (v3 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_37:
        sub_298ADDDA0();
      }

      if (v3 >= 0x17)
      {
        operator new();
      }

      *(&v14.__r_.__value_.__s + 23) = v3;
      if (v3)
      {
        memmove(&v14, v4, v3);
      }

      v14.__r_.__value_.__s.__data_[v3] = 0;
LABEL_18:
      v17 = &v14;
      sub_298C2F984(a1, &v14.__r_.__value_.__l.__data_)[7] = v8;
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (SHIBYTE(v16) < 0)
      {
        goto LABEL_25;
      }

LABEL_20:
      v1 += 2;
      v2 -= 16;
      if (!v2)
      {
        goto LABEL_32;
      }
    }

    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    operator delete(__p[0]);
    v1 += 2;
    v2 -= 16;
  }

  while (v2);
LABEL_32:
  HIBYTE(v16) = 8;
  strcpy(__p, "VBAR_EL1");
  v14.__r_.__value_.__r.__words[0] = __p;
  v9 = sub_298C2F984(a1, __p)[7];
  *(&v14.__r_.__value_.__s + 23) = 8;
  strcpy(&v14, "VBAR_EL2");
  v17 = &v14;
  sub_298C2F984(a1, &v14.__r_.__value_.__l.__data_)[7] = v9;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if (SHIBYTE(v16) < 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_39:
    operator delete(__p[0]);
  }

LABEL_34:
  HIBYTE(v16) = 8;
  strcpy(__p, "VBAR_GL1");
  v14.__r_.__value_.__r.__words[0] = __p;
  v10 = sub_298C2F984(a1, __p)[7];
  *(&v14.__r_.__value_.__s + 23) = 8;
  strcpy(&v14, "VBAR_GL2");
  v17 = &v14;
  sub_298C2F984(a1, &v14.__r_.__value_.__l.__data_)[7] = v10;
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(__p[0]);
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_41;
  }
}

uint64_t sub_298C40C18@<X0>(uint64_t a1@<X8>)
{
  *&v46[23] = *MEMORY[0x29EDCA608];
  v43 = 8;
  v44 = 0;
  result = kas_info();
  if (result)
  {
    v3 = result;
    std::generic_category();
    v4 = 0;
    v18[0] = "Kernel.cpp";
    v18[2] = ":";
    v19 = 771;
    v17 = 2;
    strcpy(__p, "81");
    v20[0] = v18;
    v20[2] = __p;
    v21 = 1026;
    v22[0] = v20;
    v22[2] = ": ";
    v23 = 770;
    v24[0] = v22;
    v24[2] = "Expected<uint64_t> llvm::applehwtrace::getXnuTextSlide()";
    v25 = 770;
    v26[0] = v24;
    v26[2] = ": ";
    v27 = 770;
    v28[0] = v26;
    v28[2] = "kernel slide recovery failed";
    v29 = 770;
    v30[0] = v28;
    v30[2] = " (err=";
    v5 = v3;
    v31 = 770;
    v6 = v46;
    do
    {
      *--v6 = a0123456789abcd_1[v5 & 0xF];
      ++v4;
      v7 = v5 >= 0x10;
      v5 >>= 4;
    }

    while (v7);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v4 > 0x16)
    {
      operator new();
    }

    v15 = v4;
    if (v4)
    {
      memcpy(&__dst, v6, v4);
    }

    *(&__dst + v4) = 0;
    v32[0] = v30;
    v32[2] = &__dst;
    v33 = 1026;
    *&v34 = v32;
    *&v35 = ") ";
    LOWORD(v36) = 770;
    if (mach_error_string(v3))
    {
      v10 = mach_error_string(v3);
      if (*v10)
      {
LABEL_13:
        *&v37 = &v34;
        *&v38 = v10;
        LOWORD(v39) = 770;
        v11 = 2;
        v12 = &v37;
LABEL_14:
        v40[0] = v12;
        v40[1] = v9;
        v40[2] = "\n";
        v13 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      v10 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_13;
      }
    }

    v37 = v34;
    v38 = v35;
    v39 = v36;
    v11 = v36;
    if (v36)
    {
      if (v36 != 1)
      {
        v9 = *(&v37 + 1);
        v12 = &v37;
        if (BYTE1(v39) == 1)
        {
          v12 = v37;
        }

        else
        {
          v11 = 2;
        }

        goto LABEL_14;
      }

      v40[0] = "\n";
      v13 = 1;
      v11 = 3;
    }

    else
    {
      v13 = 1;
    }

LABEL_15:
    v41 = v11;
    v42 = v13;
    sub_298B996A4(v40, &v45);
    operator new();
  }

  *(a1 + 8) &= ~1u;
  *a1 = v44;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C41068(UInt8 *buffer, CFIndex bufLen)
{
  v35 = *MEMORY[0x29EDCA608];
  if (CFURLCreateFromFileSystemRepresentation(0, buffer, bufLen, 0))
  {
    if (AMSupportCreateDataFromFileURL())
    {
      std::generic_category();
      v14[0] = "Kernel.cpp";
      v15 = ":";
      v16 = 771;
      v24 = 3;
      LODWORD(__p[0]) = 3749169;
      v17[0] = v14;
      v18 = __p;
      v19 = 1026;
      v20[0] = v17;
      v21 = ": ";
      v22 = 770;
      __dst = v20;
      v26 = "invalid AMSupport data for path: ";
      v28 = 770;
      dst_buffer = &__dst;
      *(&__n + 1) = buffer;
      v31 = bufLen;
      v32 = 1282;
      sub_298B996A4(&dst_buffer, v11);
      operator new();
    }

    CFDataGetBytePtr(0);
    CFDataGetLength(0);
    if (Img4DecodeInitPayload())
    {
      CFDataGetBytePtr(0);
      CFDataGetLength(0);
      if (Img4DecodeInit())
      {
        v11[0] = "Kernel.cpp";
        v12 = ":";
        v13 = 771;
        std::generic_category();
        v10 = 3;
        v9[0] = 3224625;
        v14[0] = v11;
        v15 = v9;
        v16 = 1026;
        v17[0] = v14;
        v18 = ": ";
        v19 = 770;
        v20[0] = v17;
        v21 = "payload format neither im4p nor img4: ";
        v22 = 770;
        __dst = v20;
        v26 = buffer;
        v27 = bufLen;
        v28 = 1282;
        sub_298B996A4(&__dst, __p);
        operator new();
      }
    }

    v4 = 0;
    v5 = v33;
    v6 = v34;
    v7 = 4 * v34;
    dst_buffer = &v31;
    __n = xmmword_298D1B6C0;
    while (1)
    {
      if (v4 != v7)
      {
        if (v4 <= v7)
        {
          if (*(&__n + 1) < v7)
          {
            sub_298B90C08(&dst_buffer, &v31, v7, 1);
            v4 = __n;
          }

          if (v7 != v4)
          {
            bzero(&dst_buffer[v4], v7 - v4);
          }
        }

        *&__n = v7;
        v4 = v7;
      }

      v8 = compression_decode_buffer(dst_buffer, v4, v5, v6, 0, COMPRESSION_LZFSE);
      if (!v8)
      {
        std::generic_category();
        v11[0] = "Kernel.cpp";
        v12 = ":";
        v13 = 771;
        v10 = 3;
        v9[0] = 3618609;
        v14[0] = v11;
        v15 = v9;
        v16 = 1026;
        v17[0] = v14;
        v18 = ": ";
        v19 = 770;
        v20[0] = v17;
        v21 = "error when decompressing kernelcache";
        v22 = 770;
        sub_298B996A4(v20, __p);
        operator new();
      }

      v4 = __n;
      v7 *= 2;
      if (v8 < __n)
      {
        operator new();
      }
    }
  }

  std::generic_category();
  v14[0] = "Kernel.cpp";
  v15 = ":";
  v16 = 771;
  v24 = 3;
  LODWORD(__p[0]) = 3355953;
  v17[0] = v14;
  v18 = __p;
  v19 = 1026;
  v20[0] = v17;
  v21 = ": ";
  v22 = 770;
  __dst = v20;
  v26 = "invalid URL to input path: ";
  v28 = 770;
  dst_buffer = &__dst;
  *(&__n + 1) = buffer;
  v31 = bufLen;
  v32 = 1282;
  sub_298B996A4(&dst_buffer, v11);
  operator new();
}

void sub_298C4198C(uint64_t a1, const char **a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(dst, 0, sizeof(dst));
  v6 = *a2;
  if (v6)
  {
    uuid_copy(dst, v6);
    v9 = *(a3 + 8);
    v7 = a3 + 8;
    v8 = v9;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    uuid_parse(a2[1], dst);
    v10 = *(a3 + 8);
    v7 = a3 + 8;
    v8 = v10;
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v11 = v7;
  do
  {
    v12 = uuid_compare((v8 + 32), dst);
    if (v12 >= 0)
    {
      v11 = v8;
    }

    v8 = *(v8 + ((v12 >> 28) & 8));
  }

  while (v8);
  if (v11 != v7 && (uuid_compare(dst, (v11 + 32)) & 0x80000000) == 0)
  {
    if (*(v11 + 71) < 0)
    {
      sub_298AFE11C(a1, *(v11 + 48), *(v11 + 56));
    }

    else
    {
      v17 = *(v11 + 48);
      *(a1 + 16) = *(v11 + 64);
      *a1 = v17;
    }

    *(a1 + 24) = 1;
    goto LABEL_32;
  }

LABEL_13:
  sub_298B1EF68(dst);
  if ((v28 & 1) != 0 && (v13 = *dst, *dst = 0, v13))
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    (*(*v13 + 8))(v13);
  }

  else
  {
    v19 = *a2;
    v20 = a2[2];
    sub_298B1FA0C(dst, &v19, 2, __p);
    v21 = 260;
    *&v19 = __p;
    if (sub_298BAB3F0(&v19, 0))
    {
      *a1 = 0;
      v14 = SHIBYTE(v23);
      *(a1 + 24) = 0;
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a1 = *__p;
      *(a1 + 16) = v23;
      *(a1 + 24) = 1;
    }
  }

  if (v28)
  {
    v15 = *dst;
    *dst = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  else
  {
    if (v27 != -1)
    {
      HIDWORD(v20) = 2;
      v19 = 0uLL;
      if (fcntl(v27, 8, &v19) == -1)
      {
        __error();
      }
    }

    v16 = v26;
    v26 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (v25 < 0)
    {
      operator delete(*dst);
    }
  }

LABEL_32:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_298C41C14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v112 = *MEMORY[0x29EDCA608];
  v45[0] = a2;
  v45[1] = a3;
  v96 = 0u;
  v97 = 0u;
  *__s = 0u;
  v95 = 0u;
  v44 = 64;
  if (sysctlbyname("kern.filesetuuid", __s, &v44, 0, 0))
  {
    a4[8] &= ~1u;
    *a4 = 0;
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

  v42[0] = 0;
  v42[1] = __s;
  v43 = strlen(__s);
  v41[0] = v42;
  v41[1] = v45;
  *&v62 = 0;
  *(&v62 + 1) = __s;
  *&v63 = v43;
  sub_298C4198C(v38, &v62, a1);
  if (v40 != 1)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v44 = 512;
    if (sysctlbyname("kern.bootobjectspath", &v62, &v44, 0, 0))
    {
      std::generic_category();
      v59 = "Kernel.cpp";
      v60 = ":";
      v61 = 771;
      HIBYTE(v50) = 3;
      LODWORD(__p) = 3289395;
      v98[0] = &v59;
      p_p = &__p;
      LOWORD(v101) = 1026;
      v46 = v98;
      *&v47 = ": ";
      LOWORD(v48) = 770;
      v103 = &v46;
      *(&v104 + 1) = "kern.bootobjectspath failed";
      LOWORD(v106) = 770;
      sub_298B996A4(&v103, v56);
      operator new();
    }

    *(&v36 + 1) = 0;
    v37 = 0;
    *&v36 = v38;
    *v109 = "/private/preboot";
    v111 = 259;
    v9 = 1;
    BYTE1(v106) = 1;
    if (v62)
    {
      v103 = &v62;
      v9 = 3;
    }

    LOBYTE(v106) = v9;
    v46 = "System/Library/Caches";
    LOWORD(v48) = 259;
    LOWORD(v101) = 257;
    sub_298BA8944(&v36, 0, v109, &v103, &v46, v98);
    *(&v34 + 1) = 0;
    v35 = 0;
    *&v34 = &v36;
    v111 = 261;
    *v109 = v36;
    v103 = "com.apple.kernelcaches/kernelcache";
    LOWORD(v106) = 259;
    LOWORD(v48) = 257;
    LOWORD(v101) = 257;
    sub_298BA8944(&v34, 0, v109, &v103, &v46, v98);
    v111 = 261;
    *v109 = v34;
    if (sub_298BAB3F0(v109, 0))
    {
      std::generic_category();
      v56[0] = "Kernel.cpp";
      v57 = ":";
      v58 = 771;
      v55 = 3;
      LODWORD(v53) = 3289651;
      v59 = v56;
      v60 = &v53;
      v61 = 1026;
      v98[0] = &v59;
      p_p = ": ";
      LOWORD(v101) = 770;
      v46 = v98;
      v47 = v34;
      LOWORD(v48) = 1282;
      v103 = &v46;
      *(&v104 + 1) = " does not exist";
      LOWORD(v106) = 770;
      sub_298B996A4(&v103, &__p);
      operator new();
    }

    v10 = strlen(__s);
    v11 = v34;
    sub_298B1EF68(v98);
    if (v102)
    {
      v12 = v98[0];
      v98[0] = 0;
      if (v12)
      {
        a4[8] |= 1u;
        *a4 = v12;
        v28 = v34;
        if (v34 == &v36)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }
    }

    *v109 = 0;
    *&v109[8] = __s;
    *&v109[16] = v10;
    sub_298B1FA0C(v98, v109, 0, &__p);
    if (v50 >= 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if (v50 >= 0)
    {
      v14 = SHIBYTE(v50);
    }

    else
    {
      v14 = *(&__p + 1);
    }

    *v109 = 257;
    v109[2] = 1;
    if (v13)
    {
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_298ADDDA0();
      }

      v15 = v10;
      if (v14 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v110) = v14;
      if (v14)
      {
        memmove(&v109[8], v13, v14);
      }

      v109[v14 + 8] = 0;
    }

    else
    {
      v15 = v10;
      *&v109[8] = 0;
      *&v109[16] = 0;
      v110 = 0;
    }

    LOWORD(v103) = *v109;
    BYTE2(v103) = v109[2];
    v104 = *&v109[8];
    v105 = v110;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    sub_298AFF468(&v103, v56);
    if (!v56[0])
    {
      v105 = 0;
      v104 = 0uLL;
      v17 = v108;
      v108 = 0;
      v56[0] = v17;
      sub_298C39D18(v56);
    }

    v54 |= 1u;
    v53 = v56[0];
    v16 = v108;
    v108 = 0;
    if (v16)
    {
      (*(*v16 + 16))(v16);
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(v104);
      v18 = v53;
      if (v54)
      {
LABEL_37:
        v52 = v18;
        sub_298AE72FC(&v52, v56);
        if (v52)
        {
          (*(*v52 + 8))(v52);
        }

        goto LABEL_50;
      }
    }

    else
    {
      v18 = v53;
      if (v54)
      {
        goto LABEL_37;
      }
    }

    v56[0] = 0;
    v56[1] = __s;
    v57 = v15;
    sub_298C4454C(&v51, v18[2], v18[3], v13, v14, v56, "kc", 2uLL, "boot kernel collection", 0x16uLL);
    if (v51)
    {
      v52 = v51;
      sub_298AE72FC(&v52, v56);
      if (v52)
      {
        (*(*v52 + 8))(v52);
      }

      v19 = v18[1];
      v18[1] = 0;
      if (v19)
      {
        v20 = *(v19 + 40);
        *(v19 + 40) = 0;
        if (v20)
        {
          MEMORY[0x29C2945C0](v20, 0x1000C8077774924);
        }

        MEMORY[0x29C2945F0](v19, 0x1070C4001F9CED1);
      }

      v21 = *v18;
      *v18 = 0;
      if (v21)
      {
        (*(*v21 + 16))(v21);
      }

      MEMORY[0x29C2945F0](v18, 0x1070C401CED0764);
LABEL_50:
      sub_298C41068(v11, *(&v11 + 1));
    }

    v22 = v18[1];
    v18[1] = 0;
    if (v22)
    {
      v23 = *(v22 + 40);
      *(v22 + 40) = 0;
      if (v23)
      {
        MEMORY[0x29C2945C0](v23, 0x1000C8077774924);
      }

      MEMORY[0x29C2945F0](v22, 0x1070C4001F9CED1);
    }

    v24 = *v18;
    *v18 = 0;
    if (v24)
    {
      (*(*v24 + 16))(v24);
    }

    MEMORY[0x29C2945F0](v18, 0x1070C401CED0764);
    LOBYTE(v110) = 0;
    *v109 = __p;
    *&v109[16] = v50;
    if (v102)
    {
      v25 = v98[0];
      v98[0] = 0;
      if (v25)
      {
        (*(*v25 + 8))(v25);
        v26 = *v109;
        goto LABEL_70;
      }
    }

    else
    {
      if (v101 != -1)
      {
        HIDWORD(v104) = 2;
        v103 = 0;
        *&v104 = 0;
        if (fcntl(v101, 8, &v103) == -1)
        {
          __error();
        }
      }

      v27 = v100;
      v100 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      if (SHIBYTE(p_p) < 0)
      {
        operator delete(v98[0]);
        v26 = *v109;
LABEL_70:
        if (v109[23] >= 0)
        {
          v29 = v109;
        }

        else
        {
          v29 = v26;
        }

        if (v109[23] >= 0)
        {
          v30 = v109[23];
        }

        else
        {
          v30 = *&v109[8];
        }

        sub_298C42C94(a4, v41, v29, v30);
        if (v110)
        {
          v31 = *v109;
          *v109 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
            v28 = v34;
            if (v34 == &v36)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }
        }

        else if ((v109[23] & 0x80000000) != 0)
        {
          operator delete(*v109);
          v28 = v34;
          if (v34 == &v36)
          {
LABEL_83:
            if (v36 != v38)
            {
              free(v36);
            }

            goto LABEL_85;
          }

LABEL_82:
          free(v28);
          goto LABEL_83;
        }

        v28 = v34;
        if (v34 == &v36)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }
    }

    v26 = *v109;
    goto LABEL_70;
  }

  if (v39 >= 0)
  {
    v7 = v38;
  }

  else
  {
    v7 = v38[0];
  }

  if (v39 >= 0)
  {
    v8 = v39;
  }

  else
  {
    v8 = v38[1];
  }

  sub_298C42C94(a4, v41, v7, v8);
LABEL_85:
  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38[0]);
    v33 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v32 = *MEMORY[0x29EDCA608];
  }
}

void sub_298C42C94(uint64_t a1, __int128 **a2, _BYTE *a3, size_t a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v22 = 257;
  v23 = 1;
  if (a3)
  {
    if (a4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v26) = a4;
    if (a4)
    {
      memmove(&__p, a3, a4);
    }

    *(&__p + a4) = 0;
  }

  else
  {
    __p = 0;
    v25 = 0;
    v26 = 0;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_298AFF468(&v22, &v30);
  if (!v30)
  {
    v25 = 0;
    v26 = 0;
    __p = 0;
    v9 = v29;
    v29 = 0;
    *&v30 = v9;
    sub_298C39D18(&v30);
  }

  v33 |= 1u;
  v32 = v30;
  v8 = v29;
  v29 = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
    v10 = v32;
    if (v33)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = v32;
    if (v33)
    {
LABEL_13:
      *(a1 + 8) |= 1u;
      *a1 = v10;
      goto LABEL_25;
    }
  }

  v19 = *(*a2 + 2);
  v30 = **a2;
  v31 = v19;
  sub_298C4454C(&v21, v10[2], v10[3], a3, a4, &v30, "kc", 2uLL, "boot kernel collection", 0x16uLL);
  v11 = v21;
  if (v21)
  {
    *(a1 + 8) |= 1u;
    *a1 = v11;
    v12 = v10[1];
    v10[1] = 0;
    if (!v12)
    {
      goto LABEL_22;
    }

LABEL_19:
    v16 = *(v12 + 40);
    *(v12 + 40) = 0;
    if (v16)
    {
      MEMORY[0x29C2945C0](v16, 0x1000C8077774924);
    }

    MEMORY[0x29C2945F0](v12, 0x1070C4001F9CED1);
    goto LABEL_22;
  }

  v13 = a2[1];
  v20 = *(*a2 + 2);
  v15 = *v13;
  v14 = *(v13 + 1);
  v30 = **a2;
  v31 = v20;
  v15(v14, a3, a4, &v30);
  *(a1 + 8) &= ~1u;
  *a1 = 1;
  v12 = v10[1];
  v10[1] = 0;
  if (v12)
  {
    goto LABEL_19;
  }

LABEL_22:
  v17 = *v10;
  *v10 = 0;
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  MEMORY[0x29C2945F0](v10, 0x1070C401CED0764);
LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_298C43004(uint64_t a1@<X8>)
{
  v78 = *MEMORY[0x29EDCA608];
  v74 = 0;
  v71 = 0uLL;
  v72 = 0;
  v73 = 4;
  if (sysctlbyname("kern.static_if_abi", &v74, &v73, 0, 0))
  {
    std::generic_category();
    v57[0] = "Kernel.cpp";
    p_p = ":";
    v59 = 771;
    HIBYTE(v52) = 3;
    LODWORD(v51[0]) = 3421235;
    *&v60 = v57;
    *&v61 = v51;
    LOWORD(v62) = 1026;
    *&v63 = &v60;
    *&v64 = ": ";
    LOWORD(v65) = 770;
    v66[0] = &v63;
    *&v67 = "kern.static_if_abi sysctl failed";
    v68 = 770;
    sub_298B996A4(v66, v54);
    operator new();
  }

  v2 = v74;
  if (v74 != 1)
  {
    std::generic_category();
    v54[0] = "Kernel.cpp";
    v55 = ":";
    v56 = 771;
    HIBYTE(v49) = 3;
    LODWORD(v48[0]) = 3617843;
    v57[0] = v54;
    p_p = v48;
    v59 = 1026;
    *&v60 = v57;
    *&v61 = ": ";
    LOWORD(v62) = 770;
    *&v63 = &v60;
    *&v64 = "kern.static_if_abi unsupported: ";
    LOWORD(v65) = 770;
    if (v2)
    {
      v6 = 20;
      do
      {
        *(&v75[3] + v6--) = (v2 % 0xA) | 0x30;
        v7 = v2 > 9;
        v2 /= 0xAuLL;
      }

      while (v7);
      v8 = v6 + 1;
      v9 = 20 - v6;
      if ((20 - v6) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v77 = 48;
      v8 = 20;
      v9 = 1;
    }

    if (v9 <= 0x16)
    {
      HIBYTE(v46) = v9;
      if (v8 != 21)
      {
        memcpy(__dst, &v75[3] + v8, v9);
      }

      *(__dst + v9) = 0;
      v66[0] = &v63;
      *&v67 = __dst;
      v68 = 1026;
      sub_298B996A4(v66, v51);
      operator new();
    }

    operator new();
  }

  if (sysctlbyname("kern.static_if_modified_keys", 0, &v73, 0, 0))
  {
    if (*__error())
    {
      std::generic_category();
      v36[0] = "Kernel.cpp";
      v37 = ":";
      v38 = 771;
      v35 = 3;
      v34[0] = 3290419;
      v39[0] = v36;
      v40 = v34;
      v41 = 1026;
      v42[0] = v39;
      v43 = ": ";
      v44 = 770;
      __dst[0] = v42;
      v46 = "Expected<std::vector<uint64_t>> llvm::applehwtrace::getXnuRootStaticIfEntryOffsets()";
      v47 = 770;
      v48[0] = __dst;
      v49 = ": ";
      v50 = 770;
      v51[0] = v48;
      v52 = "kern.static_if_modified_keys sizing failed";
      v53 = 770;
      v54[0] = v51;
      v55 = " (err=";
      v56 = 770;
      v3 = *__error();
      if (v3)
      {
        v4 = 16;
        do
        {
          *(&v75[3] + v4--) = a0123456789abcd_1[v3 & 0xF];
          v12 = v3 >= 0x10;
          v3 >>= 4;
        }

        while (v12);
        v5 = v4 + 1;
      }

      else
      {
        v76 = 48;
        v5 = 16;
      }

      v17 = 17 - v5;
      if ((17 - v5) <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v17 > 0x16)
        {
          operator new();
        }

        v33 = 17 - v5;
        if (v5 != 17)
        {
          memcpy(&__p, &v75[3] + v5, 17 - v5);
        }

        *(&__p + v17) = 0;
        v57[0] = v54;
        p_p = &__p;
        v59 = 1026;
        *&v60 = v57;
        *&v61 = ") ";
        LOWORD(v62) = 770;
        v18 = __error();
        if (mach_error_string(*v18))
        {
          v20 = __error();
          v21 = mach_error_string(*v20);
          if (*v21)
          {
LABEL_43:
            *&v63 = &v60;
            *&v64 = v21;
LABEL_61:
            LOWORD(v65) = 770;
            v22 = 2;
            v27 = &v63;
LABEL_62:
            v66[0] = v27;
            v66[1] = v19;
            *&v67 = "\n";
            LOBYTE(v68) = v22;
            HIBYTE(v68) = 3;
            goto LABEL_63;
          }
        }

        else
        {
          v21 = "unknown error";
          if (aUnknownError[0])
          {
            goto LABEL_43;
          }
        }

        v63 = v60;
        v64 = v61;
        v65 = v62;
        v22 = v62;
        if (v62 != 1)
        {
          if (!v62)
          {
LABEL_47:
            v68 = 256;
            goto LABEL_63;
          }

LABEL_69:
          v19 = *(&v63 + 1);
          v27 = &v63;
          if (BYTE1(v65) == 1)
          {
            v27 = v63;
          }

          else
          {
            v22 = 2;
          }

          goto LABEL_62;
        }

        goto LABEL_72;
      }

      goto LABEL_73;
    }
  }

  else
  {
    v10 = v71;
    v11 = (*(&v71 + 1) - v71) >> 3;
    v12 = v73 >> 3 >= v11;
    v13 = (v73 >> 3) - v11;
    if (v13 != 0 && v12)
    {
      sub_298C360E8(&v71, v13);
      v10 = v71;
    }

    else if (!v12)
    {
      *(&v71 + 1) = v71 + 8 * (v73 >> 3);
    }

    if (!sysctlbyname("kern.static_if_modified_keys", v10, &v73, 0, 0))
    {
      *(a1 + 24) &= ~1u;
      *a1 = v71;
      *(a1 + 16) = v72;
      goto LABEL_66;
    }

    if (*__error())
    {
      std::generic_category();
      v36[0] = "Kernel.cpp";
      v37 = ":";
      v38 = 771;
      v35 = 3;
      v34[0] = 3159603;
      v39[0] = v36;
      v40 = v34;
      v41 = 1026;
      v42[0] = v39;
      v43 = ": ";
      v44 = 770;
      __dst[0] = v42;
      v46 = "Expected<std::vector<uint64_t>> llvm::applehwtrace::getXnuRootStaticIfEntryOffsets()";
      v47 = 770;
      v48[0] = __dst;
      v49 = ": ";
      v50 = 770;
      v51[0] = v48;
      v52 = "kern.static_if_modified_keys retrieval failed";
      v53 = 770;
      v54[0] = v51;
      v55 = " (err=";
      v56 = 770;
      v14 = *__error();
      if (v14)
      {
        v15 = 16;
        do
        {
          *(&v75[3] + v15--) = a0123456789abcd_1[v14 & 0xF];
          v12 = v14 >= 0x10;
          v14 >>= 4;
        }

        while (v12);
        v16 = v15 + 1;
      }

      else
      {
        v76 = 48;
        v16 = 16;
      }

      v23 = 17 - v16;
      if ((17 - v16) <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v23 > 0x16)
        {
          operator new();
        }

        v33 = 17 - v16;
        if (v16 != 17)
        {
          memcpy(&__p, &v75[3] + v16, 17 - v16);
        }

        *(&__p + v23) = 0;
        v57[0] = v54;
        p_p = &__p;
        v59 = 1026;
        *&v60 = v57;
        *&v61 = ") ";
        LOWORD(v62) = 770;
        v24 = __error();
        if (mach_error_string(*v24))
        {
          v25 = __error();
          v26 = mach_error_string(*v25);
        }

        else
        {
          v26 = "unknown error";
        }

        if (*v26)
        {
          *&v63 = &v60;
          *&v64 = v26;
          goto LABEL_61;
        }

        v63 = v60;
        v64 = v61;
        v65 = v62;
        v22 = v62;
        if (v62 != 1)
        {
          if (!v62)
          {
            goto LABEL_47;
          }

          goto LABEL_69;
        }

LABEL_72:
        v66[0] = "\n";
        v67 = v31;
        v68 = 259;
        v69 = v29;
        v70 = v30;
LABEL_63:
        sub_298B996A4(v66, v75);
        operator new();
      }

LABEL_73:
      sub_298ADDDA0();
    }
  }

  *(a1 + 24) |= 1u;
  *a1 = 0;
  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

LABEL_66:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_298C43B54(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, void, char *, size_t, void **, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v86 = *MEMORY[0x29EDCA608];
  v74 = a2;
  kas_info();
  v73 = a2;
  v77 = 8;
  kas_info();
  v9 = v74;
  v46 = a2;
  *values = xmmword_29EEB65C8;
  v10 = *MEMORY[0x29EDB8ED8];
  v11 = MEMORY[0x29EDB9000];
  v12 = CFArrayCreate(*MEMORY[0x29EDB8ED8], values, 2, MEMORY[0x29EDB9000]);
  *v84 = xmmword_29EEB65D8;
  v13 = CFArrayCreate(v10, v84, 2, v11);
  theDict = OSKextCopyLoadedKextInfo();
  if (!theDict)
  {
    std::generic_category();
    v63[0] = "Kernel.cpp";
    p_p = ":";
    v65 = 771;
    v57 = 3;
    strcpy(__s, "440");
    v66[0] = v63;
    v67 = __s;
    v68 = 1026;
    v69[0] = v66;
    v70 = ": ";
    v72 = 770;
    v80 = v69;
    v82 = "Could not find sptm/txm ASLR details (OSKextCopyLoadedKextInfo failed)";
    v83 = 770;
    sub_298B996A4(&v80, v59);
    operator new();
  }

  v39 = a3;
  v40 = a4;
  v41 = v13;
  v42 = v12;
  v14 = 0;
  v15 = values;
  v16 = 1;
  v17 = theDict;
  do
  {
    v18 = v16;
    v19 = *(&qword_298CF7888 + v14);
    value = 0;
    if (!CFDictionaryGetValueIfPresent(v17, *v15, &value))
    {
      goto LABEL_4;
    }

    v77 = 0;
    if (!CFDictionaryGetValueIfPresent(value, @"OSBundleTextUUID", &v77) || (BytePtr = CFDataGetBytePtr(v77)) == 0)
    {
      std::generic_category();
      v59[0] = "Kernel.cpp";
      v60 = ":";
      v61 = 771;
      v36 = 3;
      v76 = 3;
      LODWORD(v75[0]) = 3421492;
      v63[0] = v59;
      p_p = v75;
      v65 = 1026;
      v66[0] = v63;
      v67 = ": ";
      v68 = 770;
      if (v18)
      {
        v36 = 4;
      }

      v37 = "txm";
      if (v18)
      {
        v37 = "sptm";
      }

      v69[0] = v66;
      v70 = v37;
      v71 = v36;
      v72 = 1282;
      v80 = v69;
      v81 = v36;
      v82 = " is present but its UUID is unavailable";
      v83 = 770;
      sub_298B996A4(&v80, __s);
      operator new();
    }

    v21 = BytePtr;
    v77 = BytePtr;
    v78 = 0;
    v79 = 0;
    sub_298C4198C(__s, &v77, a1);
    if (v58 == 1)
    {
      if (v57 < 0)
      {
        CStringPtr = *__s;
        if (!*__s)
        {
          goto LABEL_30;
        }
      }

      else
      {
        CStringPtr = __s;
      }
    }

    else
    {
      v77 = 0;
      if (!CFDictionaryGetValueIfPresent(value, @"OSBundleExecutablePath", &v77) || (CStringPtr = CFStringGetCStringPtr(v77, 0x8000100u)) == 0)
      {
LABEL_30:
        std::generic_category();
        v59[0] = "Kernel.cpp";
        v60 = ":";
        v61 = 771;
        v28 = 3;
        v55 = 3;
        LODWORD(__p) = 3552820;
        v63[0] = v59;
        p_p = &__p;
        v65 = 1026;
        v66[0] = v63;
        v67 = ": ";
        v68 = 770;
        v29 = "txm";
        if (v18)
        {
          v29 = "sptm";
          v28 = 4;
        }

        v69[0] = v66;
        v70 = v29;
        v71 = v28;
        v72 = 1282;
        v80 = v69;
        v83 = 770;
        sub_298B996A4(&v80, v75);
        operator new();
      }
    }

    v23 = strlen(CStringPtr);
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = v23;
    if (v18)
    {
      v25 = 4;
    }

    else
    {
      v25 = 3;
    }

    if (v18)
    {
      v26 = "sptm";
    }

    else
    {
      v26 = "txm";
    }

    v47 = 257;
    v48 = 1;
    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    v43 = v19;
    if (v23 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v50) = v23;
    memmove(v49, CStringPtr, v23);
    *(v49 + v24) = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    sub_298AFF468(&v47, &v77);
    if (!v77)
    {
      v49[1] = 0;
      v50 = 0;
      v49[0] = 0;
      v30 = v53;
      v53 = 0;
      v77 = v30;
      sub_298C39D18(&v77);
    }

    LOBYTE(v81) = v81 | 1;
    v80 = v77;
    v27 = v53;
    v53 = 0;
    if (v27)
    {
      (*(*v27 + 16))(v27);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
      if (v81)
      {
LABEL_37:
        v31 = 0;
        *a5 = v80;
        v17 = theDict;
        if (v58 != 1)
        {
          goto LABEL_3;
        }

LABEL_49:
        if (v57 < 0)
        {
          operator delete(*__s);
        }

        goto LABEL_3;
      }
    }

    else if (v81)
    {
      goto LABEL_37;
    }

    *a5 = 0;
    v32 = v80;
    v77 = v21;
    v78 = 0;
    v79 = 0;
    sub_298C4454C(a5, v80[2], v80[3], CStringPtr, v24, &v77, "image", 5uLL, v26, v25);
    v31 = *a5 == 0;
    if (!*a5)
    {
      v78 = 0;
      v79 = 0;
      v77 = v21;
      v39(v40, v43, CStringPtr, v24, &v77, v9);
    }

    v33 = v32[1];
    v32[1] = 0;
    v17 = theDict;
    if (v33)
    {
      v34 = *(v33 + 40);
      *(v33 + 40) = 0;
      if (v34)
      {
        MEMORY[0x29C2945C0](v34, 0x1000C8077774924);
      }

      MEMORY[0x29C2945F0](v33, 0x1070C4001F9CED1);
    }

    v35 = *v32;
    *v32 = 0;
    if (v35)
    {
      (*(*v35 + 16))(v35);
    }

    MEMORY[0x29C2945F0](v32, 0x1070C401CED0764);
    if (v58 == 1)
    {
      goto LABEL_49;
    }

LABEL_3:
    if (!v31)
    {
      goto LABEL_59;
    }

LABEL_4:
    v16 = 0;
    v15 = &values[1];
    v9 = v46;
    v14 = 1;
  }

  while ((v18 & 1) != 0);
  *a5 = 0;
LABEL_59:
  CFRelease(v17);
  CFRelease(v41);
  CFRelease(v42);
  v38 = *MEMORY[0x29EDCA608];
}

BOOL sub_298C4454C(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4, size_t a5, const unsigned __int8 **a6, _BYTE *a7, size_t a8, _BYTE *a9, size_t a10)
{
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = 32;
    if (a3 < 0x20)
    {
      v17 = a3;
    }

    v18 = a3 - v17;
    v19 = (a2 + v17);
    while (*v19 != 27)
    {
      v20 = v19[1];
      if (v18 < v20)
      {
        v20 = v18;
      }

      v18 -= v20;
      v19 = (v19 + v20);
      if (!--v16)
      {
        goto LABEL_12;
      }
    }

    v46 = 0uLL;
    v16 = (v19 + 2);
  }

  else
  {
    v16 = 0;
  }

LABEL_12:
  v55 = v16;
  v56 = v46;
  result = sub_298BDC880(a6, &v55);
  if (!result)
  {
    memset(v54, 0, sizeof(v54));
    DWORD2(v46) = 0;
    v50 = 0;
    v51 = 0;
    v52 = 1;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    *&v46 = &unk_2A1F1E040;
    v53 = v54;
    sub_298ADDDB0(&v46);
    if ((v48 - v49) > 3)
    {
      *v49 = 543516756;
      v22 = v49 + 1;
      v49 = v22;
      if (a10 <= v48 - v22)
      {
LABEL_16:
        if (a10)
        {
          memcpy(v22, a9, a10);
          v22 = (v49 + a10);
          v49 = (v49 + a10);
        }

        if ((v48 - v22) <= 0x1E)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_298B9BCEC(&v46, "The ", 4uLL);
      v22 = v49;
      if (a10 <= v48 - v49)
      {
        goto LABEL_16;
      }
    }

    sub_298B9BCEC(&v46, a9, a10);
    v22 = v49;
    if ((v48 - v49) <= 0x1E)
    {
LABEL_19:
      sub_298B9BCEC(&v46, " we were able to find has UUID ", 0x1FuLL);
      goto LABEL_23;
    }

LABEL_22:
    qmemcpy(v22, " we were able to find has UUID ", 31);
    v49 = (v49 + 31);
LABEL_23:
    sub_298B1FB90(&v55, v43);
    if (SHIBYTE(v44) >= 0)
    {
      v23 = v43;
    }

    else
    {
      v23 = v43[0];
    }

    if (SHIBYTE(v44) >= 0)
    {
      v24 = HIBYTE(v44);
    }

    else
    {
      v24 = v43[1];
    }

    sub_298B9BCEC(&v46, v23, v24);
    if ((v48 - v49) > 1)
    {
      *v49 = 10272;
      v25 = v49 + 2;
      v49 = v25;
      if (a5 <= v48 - v25)
      {
LABEL_31:
        if (a5)
        {
          memcpy(v25, a4, a5);
          v25 = v49 + a5;
          v49 = (v49 + a5);
        }

        if ((v48 - v25) <= 2)
        {
LABEL_34:
          sub_298B9BCEC(&v46, "), ", 3uLL);
          v26 = v49;
          if ((v48 - v49) > 0x1F)
          {
LABEL_35:
            qmemcpy(v26, "but we need the one with UUID = ", 32);
            v49 += 8;
            goto LABEL_40;
          }

LABEL_39:
          sub_298B9BCEC(&v46, "but we need the one with UUID = ", 0x20uLL);
LABEL_40:
          sub_298B1FB90(a6, __p);
          if (SHIBYTE(v41) >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          if (SHIBYTE(v41) >= 0)
          {
            v28 = HIBYTE(v41);
          }

          else
          {
            v28 = __p[1];
          }

          sub_298B9BCEC(&v46, v27, v28);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v44) & 0x80000000) == 0)
            {
LABEL_48:
              v29 = v49;
              if ((v48 - v49) <= 0x1C)
              {
                goto LABEL_49;
              }

              goto LABEL_65;
            }
          }

          else if ((SHIBYTE(v44) & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          operator delete(v43[0]);
          v29 = v49;
          if ((v48 - v49) <= 0x1C)
          {
LABEL_49:
            sub_298B9BCEC(&v46, ": if you're running a custom ", 0x1DuLL);
            v30 = v49;
            if (a8 <= v48 - v49)
            {
              goto LABEL_50;
            }

            goto LABEL_66;
          }

LABEL_65:
          qmemcpy(v29, ": if you're running a custom ", 29);
          v30 = (v49 + 29);
          v49 = v30;
          if (a8 <= v48 - v30)
          {
LABEL_50:
            if (a8)
            {
              memcpy(v30, a7, a8);
              v30 = (v49 + a8);
              v49 = (v49 + a8);
            }

            if ((v48 - v30) <= 9)
            {
LABEL_53:
              sub_298B9BCEC(&v46, ", include ", 0xAuLL);
              v31 = v49;
              if ((v48 - v49) > 1)
              {
                goto LABEL_54;
              }

              goto LABEL_68;
            }

LABEL_67:
            v30[4] = 8293;
            *v30 = *", include ";
            v31 = v49 + 5;
            v49 = v31;
            if ((v48 - v31) > 1)
            {
LABEL_54:
              *v31 = 11616;
              v32 = (v49 + 2);
              v49 = v32;
              if (a8 <= v48 - v32)
              {
                goto LABEL_55;
              }

              goto LABEL_69;
            }

LABEL_68:
            v32 = v49;
            if (a8 <= v48 - v49)
            {
LABEL_55:
              if (a8)
              {
                memcpy(v32, a7, a8);
                v32 = (v49 + a8);
                v49 = (v49 + a8);
              }

              if ((v48 - v32) <= 0xD)
              {
LABEL_58:
                sub_298B9BCEC(&v46, "=path/to/your/", 0xEuLL);
                v33 = v49;
                if (a8 <= v48 - v49)
                {
                  goto LABEL_59;
                }

                goto LABEL_71;
              }

LABEL_70:
              qmemcpy(v32, "=path/to/your/", 14);
              v33 = v49 + 14;
              v49 = v33;
              if (a8 <= v48 - v33)
              {
LABEL_59:
                if (a8)
                {
                  memcpy(v33, a7, a8);
                  v33 = v49 + a8;
                  v49 = (v49 + a8);
                }

                if ((v48 - v33) <= 0x74)
                {
                  goto LABEL_62;
                }

                goto LABEL_72;
              }

LABEL_71:
              sub_298B9BCEC(&v46, a7, a8);
              v33 = v49;
              if ((v48 - v49) <= 0x74)
              {
LABEL_62:
                goto LABEL_73;
              }

LABEL_72:
              v49 = v33 + 117;
LABEL_73:
              sub_298B9AE14(&v46);
              std::generic_category();
              v36[0] = "Kernel.cpp";
              v36[2] = ":";
              v37 = 771;
              v35 = 3;
              LODWORD(v34) = 3224113;
              v38[0] = v36;
              v38[2] = &v34;
              v39 = 1026;
              __p[0] = v38;
              v41 = ": ";
              v42 = 770;
              v43[0] = __p;
              v44 = v54;
              v45 = 1026;
              sub_298B996A4(v43, &v57);
              operator new();
            }

LABEL_69:
            sub_298B9BCEC(&v46, a7, a8);
            v32 = v49;
            if ((v48 - v49) <= 0xD)
            {
              goto LABEL_58;
            }

            goto LABEL_70;
          }

LABEL_66:
          sub_298B9BCEC(&v46, a7, a8);
          v30 = v49;
          if ((v48 - v49) <= 9)
          {
            goto LABEL_53;
          }

          goto LABEL_67;
        }

LABEL_38:
        v25[2] = 32;
        *v25 = 11305;
        v26 = v49 + 3;
        v49 = v26;
        if ((v48 - v26) > 0x1F)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      }
    }

    else
    {
      sub_298B9BCEC(&v46, " (", 2uLL);
      v25 = v49;
      if (a5 <= v48 - v49)
      {
        goto LABEL_31;
      }
    }

    sub_298B9BCEC(&v46, a4, a5);
    v25 = v49;
    if ((v48 - v49) <= 2)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  *a1 = 0;
  return result;
}

uint64_t sub_298C44D74(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1FBF8;
  a2[1] = v2;
  return result;
}

void *sub_298C44DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = **(a1 + 8);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  result = *(a2 + 32);
  if (v5 > *(a2 + 24) - result)
  {
    result = sub_298B9BCEC(a2, v6, v5);
LABEL_3:
    *a3 = 0;
    return result;
  }

  if (!v5)
  {
    goto LABEL_3;
  }

  v9 = *(v4 + 24);
  result = memcpy(result, v6, v5);
  *(a2 + 32) += v9;
  *a3 = 0;
  return result;
}

void sub_298C44E28(uint64_t a1, uint64_t a2)
{
  if (ktrace_file_open())
  {

    sub_298C45008();
  }

  v4 = std::generic_category();
  v24 = "Ktrace.cpp";
  v25 = 259;
  v22 = ":";
  v23 = 259;
  sub_298ADC860(&v24, &v22, v26);
  sub_298AFB090(0x36uLL, 0, __p);
  v21 = 260;
  v20 = __p;
  sub_298ADC860(v26, &v20, v27);
  v17 = ": ";
  v18 = 259;
  sub_298ADC860(v27, &v17, v28);
  v15 = "Couldn't open ktrace file for reading at ";
  v16 = 259;
  sub_298ADC860(v28, &v15, v29);
  v14 = 261;
  v13[0] = a1;
  v13[1] = a2;
  sub_298ADC860(v29, v13, v30);
  v11 = ": ";
  v12 = 259;
  sub_298ADC860(v30, &v11, v31);
  v5 = __error();
  v6 = strerror(*v5);
  v7 = 1;
  v10 = 1;
  if (*v6)
  {
    v8 = v6;
    v7 = 3;
  }

  v9 = v7;
  sub_298ADC860(v31, &v8, v32);
  sub_298ADDCA4(45, v4, v32);
}

uint64_t sub_298C453C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0;
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_298C453D8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_298C45408(void *a1, size_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  if (ktrace_chunk_tag() == 65546)
  {
    v4 = ktrace_chunk_version_major();
    if (v4)
    {
      v23 = *(a1[4] + 8);
      v48[6] = *(v23 + 40);
      *(v23 + 40) = 0;
      v24 = v4;
      v25 = std::generic_category();
      v45[0] = "Ktrace.cpp";
      v46 = 259;
      v43[0] = ":";
      v44 = 259;
      sub_298ADC860(v45, v43, v47);
      sub_298AFB090(0x52uLL, 0, v40);
      v42 = 260;
      v41[0] = v40;
      sub_298ADC860(v47, v41, v48);
      v38[0] = ": ";
      v39 = 259;
      sub_298ADC860(v48, v38, v54);
      v36[0] = "HWTrace chunk has unknown version ";
      v37 = 259;
      sub_298ADC860(v54, v36, &v55);
      sub_298AFB090(v24, 0, v33);
      v35 = 260;
      __p[0] = v33;
      sub_298ADC860(&v55, __p, &v49);
      sub_298ADDCA4(45, v25, &v49);
    }

    v5 = a1[6];
    v6 = ktrace_chunk_copy_data();
    if (v6)
    {
      v26 = *(a1[4] + 8);
      v32 = *(v26 + 40);
      *(v26 + 40) = 0;
      v27 = v6;
      v28 = std::generic_category();
      v45[0] = "Ktrace.cpp";
      v46 = 259;
      v43[0] = ":";
      v44 = 259;
      sub_298ADC860(v45, v43, v47);
      sub_298AFB090(0x5EuLL, 0, v40);
      v42 = 260;
      v41[0] = v40;
      sub_298ADC860(v47, v41, v48);
      v38[0] = ": ";
      v39 = 259;
      sub_298ADC860(v48, v38, v54);
      v36[0] = "ktrace_chunk_copy_data failed with: ";
      v37 = 259;
      sub_298ADC860(v54, v36, &v55);
      v29 = strerror(v27);
      v30 = 1;
      HIBYTE(v35) = 1;
      if (*v29)
      {
        __p[0] = v29;
        v30 = 3;
      }

      LOBYTE(v35) = v30;
      sub_298ADC860(&v55, __p, &v49);
      sub_298ADDCA4(45, v28, &v49);
    }

    v7 = a1[6];
    v8 = 0x4000;
    do
    {
      v9 = v8;
      if (!v8)
      {
        break;
      }

      --v8;
    }

    while (!v7->i8[v9 - 1]);
    LOBYTE(v49) = 0;
    LOBYTE(v50) = 0;
    v51 = v7;
    v52 = v7;
    v53 = &v7->i8[v9];
    LOWORD(v54[0]) = 0;
    if (v9)
    {
      v10 = 0;
      while ((v7->i8[v10] & 0x80000000) == 0)
      {
        if (v9 == ++v10)
        {
          goto LABEL_11;
        }
      }

      v55 = v7;
      if (!sub_298B84A30(&v55, &v7->u8[v9]))
      {
        v52 = v55;
        sub_298B8B6E4(&v49);
      }
    }

LABEL_11:
    if (sub_298B881B4(&v49, v54) && sub_298B88D94(&v49))
    {
      v57 = 0;
      sub_298B87D1C(&v55, v54);
    }

    else
    {
      v11 = v49;
      v49 = 0;
      v57 = -1;
      v55 = v11;
    }

    sub_298B88E18(v54);
    if (v50 == 1 && v49)
    {
      (*(v49->i64[0] + 8))(v49);
    }

    if (v57)
    {
      v12 = v55;
      v55 = 0;
      if (v12)
      {
        v13 = *(a1[4] + 8);
        v31 = *(v13 + 40);
        *(v13 + 40) = 0;
        v14 = std::generic_category();
        v45[0] = "Ktrace.cpp";
        v46 = 259;
        v43[0] = ":";
        v44 = 259;
        sub_298ADC860(v45, v43, v47);
        sub_298AFB090(0x6AuLL, 0, __p);
        v42 = 260;
        v41[0] = __p;
        sub_298ADC860(v47, v41, v48);
        v38[0] = ": ";
        v39 = 259;
        sub_298ADC860(v48, v38, v54);
        v36[0] = "HWTrace subchunk contains unparseable json";
        v37 = 259;
        sub_298ADC860(v54, v36, &v49);
        sub_298ADDCA4(45, v14, &v49);
      }

      v15 = 0;
    }

    else if (v55 == 7)
    {
      v15 = &v56;
    }

    else
    {
      v15 = 0;
    }

    sub_298B87AE0(v15, "Key", 3, &v49);
    if (v51 == 1)
    {
      v16 = *(*(a1[5] + 8) + 24);
      v17 = v49;
      v18 = v50;
      v19 = sub_298BA724C(v49, v50);
      (*sub_298C47978((v16 + 48), v17, v18, v19))[1] = a2;
    }

    if (v57)
    {
      v20 = v55;
      v55 = 0;
      if (v20)
      {
        (*(v20->i64[0] + 8))(v20);
      }
    }

    else
    {
      sub_298B8802C(&v55);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return 1;
}

void sub_298C45B54(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

uint64_t sub_298C45BA4(uint64_t a1)
{
  v2 = sub_298C45C88(a1 + 72);
  v4 = *(a1 + 72) + 24 * *(a1 + 88);
  if (v4 != v2)
  {
    v5 = v2;
    v6 = v3;
    do
    {
      v7 = v5[1];
      v8 = v5[2];
      v9 = *v5;
      ktrace_chunk_unmap_data();
      do
      {
        v5 += 3;
      }

      while (v5 != v6 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v5 != v4);
  }

  if (*(a1 + 40))
  {
    v10 = *(a1 + 32);
    ktrace_file_close();
  }

  MEMORY[0x29C2945E0](*(a1 + 72), 8);
  sub_298C478FC(a1 + 48);
  *a1 = &unk_2A1F1F810;
  v12 = (a1 + 8);
  sub_298C471A8(&v12);
  return a1;
}

void *sub_298C45C88(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  v4 = *(a1 + 16);
  v5 = &result[3 * v4];
  if (!v2)
  {
    return v5;
  }

  if (v4)
  {
    v6 = 24 * v4;
    while ((*result | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      result += 3;
      v6 -= 24;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

void sub_298C45CD8(uint64_t a1)
{
  sub_298C45BA4(a1);

  JUMPOUT(0x29C2945F0);
}

BOOL sub_298C45D10(uint64_t a1, int8x16_t *a2, void *a3)
{
  if (*(a1 + 48) + 8 * *(a1 + 56) != sub_298C45DAC(a1 + 48, a2, a3))
  {
    return 1;
  }

  v10 = 261;
  v9[0] = a2->i64;
  v9[1] = a3;
  v5 = sub_298BA9D1C(v9, 0);
  result = 0;
  if (v5)
  {
    v8 = 261;
    v7[0] = a2;
    v7[1] = a3;
    return sub_298BAB3F0(v7, 0) == 0;
  }

  return result;
}

uint64_t sub_298C45DAC(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = sub_298BA724C(a2, a3);
  v7 = sub_298B965F8(a1, a2, a3, v6);
  if (v7 == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = v7;
  }

  return *a1 + 8 * v8;
}

uint64_t sub_298C45E18@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_298BA724C(a2, a3);
  v11 = *(a1 + 56);
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11 - 1;
  v13 = (v11 - 1) & v10;
  v14 = *(a1 + 48);
  v15 = v14 + 8 * v11 + 8;
  if (a3)
  {
    for (i = 1; ; ++i)
    {
      v17 = *(v14 + 8 * v13);
      if (!v17)
      {
        break;
      }

      if (v17 != -8 && *(v15 + 4 * v13) == v10 && a3 == *v17)
      {
        v46 = v10;
        v47 = v13;
        v44 = v15;
        v45 = i;
        v23 = memcmp(a2, v17 + *(a1 + 68), a3);
        i = v45;
        v15 = v44;
        v24 = v23;
        v10 = v46;
        v13 = v47;
        if (!v24)
        {
          goto LABEL_20;
        }
      }

      v13 = (v13 + i) & v12;
    }

    goto LABEL_5;
  }

  for (j = 1; ; ++j)
  {
    v22 = *(v14 + 8 * v13);
    if (!v22)
    {
      goto LABEL_5;
    }

    if (v22 != -8 && *(v15 + 4 * v13) == v10 && !*v22)
    {
      break;
    }

    v13 = (v13 + j) & v12;
  }

  v47 = v13;
LABEL_20:
  if (v47 != -1 && v47 != v11)
  {
    v25 = *(*(v14 + 8 * v47) + 8);
    v48 = v25;
    v26 = ktrace_chunk_size();
    if (!a4)
    {
      sub_298C4667C();
    }

    v27 = v26;
    v30 = *(a1 + 72);
    v29 = (a1 + 72);
    v28 = v30;
    v31 = v29[4];
    if (v31)
    {
      v32 = v31 - 1;
      v33 = v32 & ((v25 >> 4) ^ (v25 >> 9));
      v34 = (v28 + 24 * v33);
      v35 = *v34;
      if (v25 == *v34)
      {
        goto LABEL_25;
      }

      v39 = 0;
      v40 = 1;
      while (v35 != -4096)
      {
        if (v39)
        {
          v42 = 0;
        }

        else
        {
          v42 = v35 == -8192;
        }

        if (v42)
        {
          v39 = v34;
        }

        v43 = v33 + v40++;
        v33 = v43 & v32;
        v34 = (v28 + 24 * v33);
        v35 = *v34;
        if (v25 == *v34)
        {
          goto LABEL_25;
        }
      }

      if (v39)
      {
        v41 = v39;
      }

      else
      {
        v41 = v34;
      }
    }

    else
    {
      v41 = 0;
    }

    v34 = sub_298C47AF4(v29, &v48, v41);
    v34[1] = 0;
    v34[2] = 0;
    *v34 = v25;
LABEL_25:
    if (v34[2] == v27)
    {
      v36 = v34[1];
    }

    else
    {
      v37 = ktrace_chunk_map_data();
      if (!v37)
      {
        v38 = std::generic_category();
        v63[0] = "Ktrace.cpp";
        v64 = 259;
        v61[0] = ":";
        v62 = 259;
        sub_298ADC860(v63, v61, v65);
        sub_298AFB090(0x9DuLL, 0, __p);
        v60 = 260;
        v59[0] = __p;
        sub_298ADC860(v65, v59, v66);
        v56[0] = ": ";
        v57 = 259;
        sub_298ADC860(v66, v56, v67);
        v54[0] = "Key ";
        v55 = 259;
        sub_298ADC860(v67, v54, v68);
        v53 = 261;
        v51 = a2;
        v52 = a3;
        sub_298ADC860(v68, &v51, v69);
        v49[0] = "Failed to map ktrace chunk!";
        v50 = 259;
        sub_298ADC860(v69, v49, &v70);
        sub_298ADDCA4(45, v38, &v70);
      }

      v34[1] = v37;
      v34[2] = v27;
    }

    operator new();
  }

LABEL_5:
  LOWORD(v73) = 261;
  v70 = a2;
  *&v71 = a3;
  if (!sub_298BA9D1C(&v70, 0))
  {
    v20 = std::generic_category();
    v63[0] = "Ktrace.cpp";
    v64 = 259;
    v61[0] = ":";
    v62 = 259;
    sub_298ADC860(v63, v61, v65);
    sub_298AFB090(0x91uLL, 0, __p);
    v60 = 260;
    v59[0] = __p;
    sub_298ADC860(v65, v59, v66);
    v56[0] = ": ";
    v57 = 259;
    sub_298ADC860(v66, v56, v67);
    v54[0] = "Key ";
    v55 = 259;
    sub_298ADC860(v67, v54, v68);
    v53 = 261;
    v51 = a2;
    v52 = a3;
    sub_298ADC860(v68, &v51, v69);
    v49[0] = " is not present in the manifest: local filesystem fallback disabled due to relpath";
    v50 = 259;
    sub_298ADC860(v69, v49, &v70);
    sub_298ADDCA4(45, v20, &v70);
  }

  sub_298C46484(&v70, a2, a3, a4);
  *(a5 + 56) &= ~1u;
  *a5 = v70;
  *(a5 + 2) = BYTE2(v70);
  v18 = v74;
  *(a5 + 24) = v72;
  *(a5 + 8) = v71;
  v71 = 0uLL;
  *(a5 + 32) = v73;
  v72 = 0;
  v74 = 0;
  *(a5 + 48) = v18;
  return sub_298BDC2AC(&v70);
}

char *sub_298C46484(char *result, const void *a2, size_t __len, char a4)
{
  v4 = result;
  *result = a4;
  *(result + 1) = 257;
  v5 = result + 8;
  if (a2)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    result[31] = __len;
    if (__len)
    {
      result = memmove(v5, a2, __len);
    }

    *(v5 + __len) = 0;
    v4[4] = 0;
    v4[5] = 0;
    v4[6] = 0;
  }

  else
  {
    *v5 = 0;
    *(result + 2) = 0;
    *(result + 3) = 0;
    *(result + 4) = 0;
    *(result + 5) = 0;
    *(result + 6) = 0;
  }

  return result;
}

double sub_298C46564(uint64_t a1, const void *a2, size_t __len, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  if (a2)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v9) = __len;
    if (__len)
    {
      memmove(&v8, a2, __len);
    }

    *(&v8 + __len) = 0;
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  *(a1 + 56) &= ~1u;
  *a1 = 256;
  *(a1 + 2) = 1;
  result = *&v8;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  return result;
}

void sub_298C466C8(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v65[20] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  appended = ktrace_file_append_start();
  if (appended)
  {
    v8 = *(a1 + 32);
    DWORD2(v49) = 0;
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0uLL;
    v48 = 0;
    *&v49 = &unk_2A1F1FCC8;
    v55 = v8;
    v56 = appended;
    v57 = 0;
    v58 = 0;
    v46 = 0;
    v47 = 0;
    DWORD2(v39) = 0;
    v42 = 0;
    v43 = 0;
    v44 = 1;
    v41 = 0;
    v40 = 0uLL;
    *&v39 = &unk_2A1F1E040;
    v45 = &v46;
    sub_298ADDDB0(&v39);
    v65[17] = 0;
    v65[18] = &v39;
    v65[19] = 0;
    v65[16] = 0;
    v65[0] = 0;
    v63 = v65;
    v64 = 0x1000000001;
    sub_298B89BA0(&v63);
    sub_298BBB6E0(v60, a2, a3);
    sub_298B89CC0(&v63, "Key", 3uLL);
    sub_298B891F0(&v63, v60);
    LODWORD(v64) = v64 - 1;
    sub_298B8802C(v60);
    sub_298B89C2C(&v63);
    v9 = a3;
    v10 = a2;
    if (v63 != v65)
    {
      free(v63);
    }

    sub_298B9AE14(&v39);
    if (v48 >= 0)
    {
      v11 = &v46;
    }

    else
    {
      v11 = v46;
    }

    if (v48 >= 0)
    {
      v12 = HIBYTE(v48);
    }

    else
    {
      v12 = v47;
    }

    sub_298B9BCEC(&v49, v11, v12);
    v13 = v57;
    if (v57 > 0x4000)
    {
      v14 = 0;
      v23[0] = "Ktrace.cpp";
      v23[2] = ":";
      v24 = 771;
      v22 = 3;
      LODWORD(v21) = 3289906;
      v25[0] = v23;
      v25[2] = &v21;
      v26 = 1026;
      __p[0] = v25;
      v28 = ": ";
      v29 = 770;
      v30[0] = __p;
      v30[2] = "ktrace chunk header for ";
      v31 = 770;
      v32[0] = v30;
      v33 = v10;
      v34 = v9;
      v35 = 1282;
      v36[0] = v32;
      v37 = " is too big @ ";
      v38 = 770;
      v15 = v65 + 5;
      do
      {
        *--v15 = (v13 % 0xA) | 0x30;
        ++v14;
        v16 = v13 > 9;
        v13 /= 0xAuLL;
      }

      while (v16);
      std::generic_category();
      if (v14 < 0x7FFFFFFFFFFFFFF8)
      {
        if (v14 <= 0x16)
        {
          v20 = v14;
          if (v14)
          {
            memcpy(&__dst, v15, v14);
          }

          *(&__dst + v14) = 0;
          v60[0] = v36;
          p_dst = &__dst;
          v62 = 1026;
          *&v39 = v60;
          *&v40 = " bytes";
          LOWORD(v41) = 770;
          sub_298B996A4(&v39, &v59);
          operator new();
        }

        operator new();
      }

      sub_298ADDDA0();
    }

    if (v57 != 0x4000)
    {
      operator new[]();
    }

    getpagesize();
    if (v51 != v50)
    {
      v51 = v50;
      sub_298B9BB84(&v49);
    }

    operator new[]();
  }

  std::generic_category();
  v32[0] = "Ktrace.cpp";
  v33 = ":";
  v35 = 771;
  HIBYTE(v28) = 3;
  LODWORD(__p[0]) = 3618098;
  v36[0] = v32;
  v37 = __p;
  v38 = 1026;
  v60[0] = v36;
  p_dst = ": ";
  v62 = 770;
  *&v39 = v60;
  *&v40 = "could not append chunk to ktrace file: ";
  LOWORD(v41) = 770;
  v17 = __error();
  v18 = strerror(*v17);
  if (*v18)
  {
    *&v49 = &v39;
    *&v50 = v18;
    LOWORD(v51) = 770;
  }

  else
  {
    v49 = v39;
    v50 = v40;
    v51 = v41;
  }

  sub_298B996A4(&v49, v30);
  operator new();
}

void sub_298C471A8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298C471FC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_298C471FC(void *result)
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
      result = (*(*result + 16))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_298C47270(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(*(a1 + 88));
    a1 = v3;
    v1 = vars8;
  }

  return sub_298B9AE14(a1);
}

void sub_298C472D4(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_298B9AE14(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298C47348(uint64_t result, uint64_t a2, unint64_t a3)
{
  *&v71[19] = *MEMORY[0x29EDCA608];
  if (!*(result + 88))
  {
    for (i = result; ; i[10] += v6)
    {
      if (!a3)
      {
        goto LABEL_2;
      }

      v6 = a3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3;
      v7 = i[8];
      v8 = i[9];
      result = ktrace_file_append_data();
      if (result)
      {
        break;
      }

      a3 -= v6;
    }

    std::generic_category();
    v9 = 0;
    v42[0] = "Ktrace.cpp";
    v42[2] = ":";
    v43 = 771;
    v41 = 3;
    LODWORD(__p) = 3485746;
    v44[0] = v42;
    v44[2] = &__p;
    v45 = 1026;
    v46[0] = v44;
    v46[2] = ": ";
    v47 = 770;
    v48[0] = v46;
    v48[2] = "appending ";
    v10 = v71;
    v49 = 770;
    do
    {
      *--v10 = (v6 % 0xA) | 0x30;
      ++v9;
      v11 = v6 > 9;
      v6 /= 0xAuLL;
    }

    while (v11);
    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_62;
    }

    if (v9 > 0x16)
    {
      operator new();
    }

    v39 = v9;
    if (v9)
    {
      memcpy(&__dst, v10, v9);
    }

    *(&__dst + v9) = 0;
    v12 = v49;
    if (v49 == 1)
    {
      p_dst = &__dst;
      v50 = &__dst;
      v53 = 260;
      v16 = 4;
      v17 = v51;
    }

    else
    {
      if (!v49)
      {
        v53 = 256;
        v57 = 0;
        v58 = 1;
        v13 = i[10];
        if (!v13)
        {
LABEL_21:
          v70 = 48;
          v14 = 20;
          goto LABEL_30;
        }

LABEL_27:
        v19 = 20;
        do
        {
          *(&v69[3] + v19--) = (v13 % 0xA) | 0x30;
          v11 = v13 > 9;
          v13 /= 0xAuLL;
        }

        while (v11);
        v14 = v19 + 1;
LABEL_30:
        v20 = 21 - v14;
        if ((21 - v14) <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v20 > 0x16)
          {
            operator new();
          }

          v37 = 21 - v14;
          if (v14 != 21)
          {
            memcpy(&v36, &v69[3] + v14, 21 - v14);
          }

          *(&v36 + v20) = 0;
          v21 = v57;
          if (v57 == 1)
          {
            v25 = &v36;
            v59 = &v36;
            v62 = 260;
            v23 = 4;
            v26 = v60;
            v22 = v35;
          }

          else
          {
            v22 = v35;
            if (!v57)
            {
              v23 = 0;
              v62 = 256;
              v24 = 1;
              goto LABEL_44;
            }

            v25 = &v59;
            v27 = v54;
            v23 = 2;
            if (v58 != 1)
            {
              v21 = 2;
              v27 = &v54;
            }

            v59 = v27;
            v60 = v55;
            v61 = &v36;
            LOBYTE(v62) = v21;
            v26 = 4;
            HIBYTE(v62) = 4;
          }

          *&v63 = v25;
          *(&v63 + 1) = v26;
          v24 = 3;
          *&v64 = " to ktrace chunk failed: ";
LABEL_44:
          LOBYTE(v65) = v23;
          BYTE1(v65) = v24;
          v28 = __error();
          v29 = strerror(*v28);
          v30 = *v29;
          if (*v29)
          {
            v22 = v29;
          }

          v31 = v65;
          if (v65 == 1)
          {
            *&v66 = v22;
            if (v30)
            {
              v32 = 3;
            }

            else
            {
              v32 = 1;
            }

            LOBYTE(v68) = v32;
            v33 = 1;
          }

          else
          {
            if (!v65)
            {
              LOWORD(v68) = 256;
              goto LABEL_60;
            }

            if (!*v29)
            {
              v66 = v63;
              v67 = v64;
              v68 = v65;
LABEL_60:
              sub_298B996A4(&v66, v69);
              operator new();
            }

            if (BYTE1(v65) != 1)
            {
              v31 = 2;
            }

            v34 = &v63;
            if (BYTE1(v65) == 1)
            {
              v34 = v63;
            }

            *&v66 = v34;
            *(&v66 + 1) = *(&v63 + 1);
            *&v67 = v29;
            LOBYTE(v68) = v31;
            v33 = 3;
          }

          BYTE1(v68) = v33;
          goto LABEL_60;
        }

LABEL_62:
        sub_298ADDDA0();
      }

      p_dst = &v50;
      v18 = v48[0];
      v16 = 2;
      if (HIBYTE(v49) != 1)
      {
        v12 = 2;
        v18 = v48;
      }

      v50 = v18;
      v51 = v48[1];
      v52 = &__dst;
      LOBYTE(v53) = v12;
      v17 = 4;
      HIBYTE(v53) = 4;
    }

    v54 = p_dst;
    v55 = v17;
    v56 = " bytes at Pos=";
    v57 = v16;
    v58 = 3;
    v13 = i[10];
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_2:
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C478FC(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8 * v3;
      do
      {
        v6 = *(*a1 + v4);
        if (v6 != -8 && v6 != 0)
        {
          MEMORY[0x29C2945E0]();
        }

        v4 += 8;
      }

      while (v5 != v4);
    }
  }

  free(*a1);
  return a1;
}

size_t **sub_298C47978(_DWORD *a1, void *a2, size_t a3, uint64_t a4)
{
  v7 = sub_298B96440(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --a1[4];
  }

  else if (v9)
  {
    while (v9 == -8 || !v9)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  v12 = operator new(a3 + 17, 8uLL);
  v13 = v12;
  v14 = (v12 + 2);
  if (a3)
  {
    memcpy(v12 + 2, a2, a3);
  }

  v14[a3] = 0;
  *v13 = a3;
  v13[1] = 0;
  *i = v13;
  ++a1[3];
    ;
  }

  return i;
}

uint64_t sub_298C47A68(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 24 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
LABEL_3:
      *a4 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 24 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a4 = v6;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *sub_298C47AF4(_DWORD *a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v4 = a1[2];
  v5 = a1[4];
  if (4 * v4 + 4 >= 3 * v5)
  {
    v7 = a2;
    v5 *= 2;
  }

  else
  {
    if (v5 + ~v4 - a1[3] > v5 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a2;
  }

  v8 = a1;
  sub_298C47BB4(a1, v5);
  sub_298C47A68(*v8, v8[4], *v7, &v9);
  a1 = v8;
  v4 = v8[2];
  a3 = v9;
LABEL_3:
  a1[2] = v4 + 1;
  if (*a3 != -4096)
  {
    --a1[3];
  }

  return a3;
}

void *sub_298C47BB4(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298C47CE4(a1, v4, &v4[3 * v3]);

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 24 * v10 - 24;
    v13 = vdupq_n_s64(v12 / 0x18);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_298D1A120)));
      if (v14.i8[0])
      {
        *result = -4096;
      }

      if (v14.i8[4])
      {
        result[3] = -4096;
      }

      v11 += 2;
      result += 6;
    }

    while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
  }

  return result;
}

uint64_t sub_298C47CE4(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    if (v5 < 0x18)
    {
      v7 = *result;
LABEL_6:
      v10 = &v4[3 * v3];
      do
      {
        *v7 = -4096;
        v7 += 3;
      }

      while (v7 != v10);
      goto LABEL_8;
    }

    v6 = v5 / 0x18 + 1;
    v7 = &v4[3 * (v6 & 0x1FFFFFFFFFFFFFFELL)];
    v8 = *result;
    v9 = v6 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v8 = -4096;
      v8[3] = -4096;
      v8 += 6;
      v9 -= 2;
    }

    while (v9);
    if (v6 != (v6 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  while (a2 != a3)
  {
    v11 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v12 = *(result + 16) - 1;
      v13 = v12 & ((v11 >> 4) ^ (v11 >> 9));
      v14 = *result + 24 * v13;
      v15 = *v14;
      if (v11 != *v14)
      {
        v16 = 0;
        v17 = 1;
        while (v15 != -4096)
        {
          if (v16)
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 == -8192;
          }

          if (v18)
          {
            v16 = v14;
          }

          v19 = v13 + v17++;
          v13 = v19 & v12;
          v14 = *result + 24 * (v19 & v12);
          v15 = *v14;
          if (v11 == *v14)
          {
            goto LABEL_11;
          }
        }

        if (v16)
        {
          v14 = v16;
        }
      }

LABEL_11:
      *v14 = v11;
      *(v14 + 8) = *(a2 + 1);
      ++*(result + 8);
    }

    a2 += 3;
  }

  return result;
}

void sub_298C47E34()
{
  v17[8] = *MEMORY[0x29EDCA608];
  stackshot_config_create();
  stackshot_config_set_flags();
  v0 = stackshot_capture_with_config();
  if (v0)
  {
    v1 = v0;
    std::generic_category();
    v5[0] = "Stackshot.cpp";
    v6 = ":";
    v7 = 771;
    v4 = 2;
    strcpy(__p, "46");
    v8[0] = v5;
    v9 = __p;
    v10 = 1026;
    *&v11 = v8;
    *&v12 = ": ";
    LOWORD(v13) = 770;
    v2 = strerror(v1);
    if (*v2)
    {
      *&v14 = &v11;
      *&v15 = v2;
      LOWORD(v16) = 770;
    }

    else
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
    }
  }

  else
  {
    if (stackshot_config_get_stackshot_buffer())
    {
      stackshot_config_get_stackshot_size();
      operator new();
    }

    std::generic_category();
    v5[0] = "Stackshot.cpp";
    v6 = ":";
    v7 = 771;
    v4 = 2;
    strcpy(__p, "51");
    v8[0] = v5;
    v9 = __p;
    v10 = 1026;
    *&v11 = v8;
    *&v12 = ": ";
    LOWORD(v13) = 770;
    *&v14 = &v11;
    *&v15 = "stackshot_config_get_stackshot_buffer failed";
    LOWORD(v16) = 770;
  }

  sub_298B996A4(&v14, v17);
  operator new();
}

void sub_298C48218(uint64_t a1)
{
  v4[3] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *(a1 + 31);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  v4[0] = v3;
  sub_298C39D18(v4);
}

void sub_298C4835C(unint64_t *a1@<X0>, void (*a2)(uint64_t, uint64_t, void)@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v205 = *MEMORY[0x29EDCA608];
  memset(v199, 0, 44);
  LOBYTE(__p) = 0;
  v198 = 0;
  LOBYTE(v192) = 0;
  v195 = 0;
  v190 = 0;
  v189 = 0;
  v191 = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 + 16;
  if (v9 > v8)
  {
    goto LABEL_214;
  }

  v151 = 0;
  do
  {
    v13 = *(v7 + 4);
    if (v9 + v13 > v8)
    {
      break;
    }

    v14 = *v7;
    if (*v7 == -242132755)
    {
      break;
    }

    v15 = v14 & 0xFFFFFFF0;
    if ((v14 & 0xFFFFFFF0) == 0x20)
    {
      v16 = 17;
    }

    else
    {
      v16 = *v7;
    }

    if (v16 > 2309)
    {
      if (v16 == 2312)
      {
        if (v13 == 32 && (*(v7 + 8) & 0x8F) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v16 == 2310 && v13 == 112 && (*(v7 + 8) & 0x8F) == 0)
      {
LABEL_3:
        a2(a3, v151, *(v7 + 16));
        goto LABEL_4;
      }
    }

    else
    {
      v17 = v16 == 17 || v16 == 19;
      v18 = *(v7 + 4);
      if (v17)
      {
        goto LABEL_16;
      }
    }

    v20 = *(v7 + 8) & 0xF;
    v21 = v13 >= v20;
    v22 = v13 - v20;
    if (!v21)
    {
      v22 = 0;
    }

    if (v16 > 2309)
    {
      if (v16 > 2384)
      {
        if (v16 == 2385)
        {
          if ((v198 & 1) == 0)
          {
            std::generic_category();
            v178 = "Stackshot.cpp";
            v180 = ":";
            v181 = 771;
            HIBYTE(v171) = 3;
            LODWORD(v169) = 3616819;
            v182[0] = &v178;
            v183 = &v169;
            v184 = 1026;
            v201[0] = v182;
            v202 = ": ";
            v203 = 770;
            v109 = "unattached STACKSHOT_KCTYPE_EXCLAVE_ADDRESSSPACE_NAME";
            goto LABEL_317;
          }

          v21 = v13 >= (*(v7 + 8) & 0xFu);
          v45 = v13 - (*(v7 + 8) & 0xF);
          if (v21)
          {
            v46 = v45;
          }

          else
          {
            v46 = 0;
          }

          if (strnlen((v7 + 16), v46) >= v46)
          {
            v47 = 0;
          }

          else
          {
            v47 = v7 + 16;
          }

          MEMORY[0x29C294300](&__p, v47);
        }

        else if (v16 == 2387)
        {
          if ((v195 & 1) == 0)
          {
            std::generic_category();
            v178 = "Stackshot.cpp";
            v180 = ":";
            v181 = 771;
            HIBYTE(v171) = 3;
            LODWORD(v169) = 3617075;
            v182[0] = &v178;
            v183 = &v169;
            v184 = 1026;
            v201[0] = v182;
            v202 = ": ";
            v203 = 770;
            v109 = "unattached STACKSHOT_KCTYPE_EXCLAVE_TEXTLAYOUT_INFO";
            goto LABEL_317;
          }

          v192 = *(v7 + 16);
        }

        goto LABEL_4;
      }

      if (v16 == 2310)
      {
        goto LABEL_3;
      }

      if (v16 != 2384)
      {
        goto LABEL_4;
      }

      if ((v198 & 1) == 0)
      {
        std::generic_category();
        v178 = "Stackshot.cpp";
        v180 = ":";
        v181 = 771;
        HIBYTE(v171) = 3;
        LODWORD(v169) = 3356466;
        v182[0] = &v178;
        v183 = &v169;
        v184 = 1026;
        v201[0] = v182;
        v202 = ": ";
        v203 = 770;
        v109 = "unattached STACKSHOT_KCTYPE_EXCLAVE_ADDRESSSPACE_INFO";
        goto LABEL_317;
      }

      if (v22 <= 0x27)
      {
        std::generic_category();
        v178 = "Stackshot.cpp";
        v180 = ":";
        v181 = 771;
        HIBYTE(v171) = 3;
        LODWORD(v169) = 3684146;
        v182[0] = &v178;
        v183 = &v169;
        v184 = 1026;
        v201[0] = v182;
        v202 = ": ";
        v203 = 770;
        v109 = "stackshot uses old STACKSHOT_KCTYPE_EXCLAVE_ADDRESSSPACE_INFO format";
        goto LABEL_317;
      }

      v23 = *(v7 + 48);
      *(&v197[0] + 1) = *(v7 + 16);
      *&v197[1] = v23;
      DWORD2(v197[1]) = v23;
      v197[2] = *(v7 + 32);
      if (v191)
      {
        v24 = (v191 - 1) & (37 * v23);
        v25 = (v189 + 16 * v24);
        v26 = *v25;
        if (*v25 == v23)
        {
LABEL_110:
          if (*(v25 + 1))
          {
            std::generic_category();
            v161[0] = "Stackshot.cpp";
            v161[2] = ":";
            v162 = 771;
            v160 = 3;
            LODWORD(v159) = 3619122;
            v163[0] = v161;
            v163[2] = &v159;
            v164 = 1026;
            v165[0] = v163;
            v165[2] = ": ";
            v166 = 770;
            v167[0] = v165;
            v167[2] = "Metadata error: low 32-bits of ASRoot for asid=";
            v168 = 770;
            v110 = *(v7 + 16);
            if (v110)
            {
              v111 = 20;
              do
              {
                v204.__r_.__value_.__s.__data_[v111--] = (v110 % 0xA) | 0x30;
                v112 = v110 > 9;
                v110 /= 0xAuLL;
              }

              while (v112);
              v113 = v111 + 1;
            }

            else
            {
              v204.__r_.__value_.__s.__data_[20] = 48;
              v113 = 20;
            }

            v114 = 21 - v113;
            if ((21 - v113) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_320;
            }

            if (v114 > 0x16)
            {
              operator new();
            }

            v158 = 21 - v113;
            if (v113 != 21)
            {
              memcpy(&__dst, &v204 + v113, 21 - v113);
            }

            *(&__dst + v114) = 0;
            v115 = v168;
            if (v168 == 1)
            {
              p_dst = &__dst;
              v169 = &__dst;
              v172 = 260;
              v116 = 4;
              v119 = v170;
            }

            else
            {
              if (!v168)
              {
                v116 = 0;
                v172 = 256;
                v117 = 1;
                goto LABEL_261;
              }

              v120 = v167[0];
              v116 = 2;
              if (HIBYTE(v168) != 1)
              {
                v115 = 2;
                v120 = v167;
              }

              v169 = v120;
              v170 = v167[1];
              v119 = &__dst;
              v171 = &__dst;
              LOBYTE(v172) = v115;
              HIBYTE(v172) = 4;
              p_dst = &v169;
            }

            v173 = p_dst;
            v174 = v119;
            v175 = " (";
            v117 = 3;
LABEL_261:
            v176 = v116;
            v177 = v117;
            v121 = *(v7 + 48);
            *(&v204.__r_.__value_.__s + 23) = 2;
            strcpy(&v204, "0x");
            if (v121)
            {
              v122 = 16;
              do
              {
                *(v201 + v122--) = a0123456789abcd_1[v121 & 0xF] | 0x20;
                v21 = v121 >= 0x10;
                v121 >>= 4;
              }

              while (v21);
              v123 = v122 + 1;
            }

            else
            {
              LOBYTE(v202) = 48;
              v123 = 16;
            }

            v124 = 17 - v123;
            if ((17 - v123) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_320;
            }

            if (v124 > 0x16)
            {
              operator new();
            }

            HIBYTE(v187) = 17 - v123;
            if (v123 != 17)
            {
              memcpy(&v185, v201 + v123, 17 - v123);
            }

            *(&v185 + v124) = 0;
            if (SHIBYTE(v187) >= 0)
            {
              v125 = &v185;
            }

            else
            {
              v125 = v185;
            }

            if (SHIBYTE(v187) >= 0)
            {
              v126 = HIBYTE(v187);
            }

            else
            {
              v126 = v186;
            }

            v127 = std::string::append(&v204, v125, v126);
            v128 = v127->__r_.__value_.__r.__words[2];
            *v155 = *&v127->__r_.__value_.__l.__data_;
            v156 = v128;
            v127->__r_.__value_.__l.__size_ = 0;
            v127->__r_.__value_.__r.__words[2] = 0;
            v127->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v187) < 0)
            {
              operator delete(v185);
              if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_288;
              }

LABEL_280:
              LODWORD(v129) = v176;
              if (v176 != 1)
              {
                goto LABEL_281;
              }

LABEL_289:
              v129 = v155;
              v178 = v155;
              v181 = 260;
              v132 = 4;
              v133 = v179;
            }

            else
            {
              if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_280;
              }

LABEL_288:
              operator delete(v204.__r_.__value_.__l.__data_);
              LODWORD(v129) = v176;
              if (v176 == 1)
              {
                goto LABEL_289;
              }

LABEL_281:
              if (!v129)
              {
                v181 = 256;
                v184 = 256;
                v130 = 1;
LABEL_291:
                LOBYTE(v203) = v129;
                HIBYTE(v203) = v130;
                v135 = *(v25 + 1);
                if (v135)
                {
                  v136 = 20;
                  do
                  {
                    v204.__r_.__value_.__s.__data_[v136--] = (v135 % 0xA) | 0x30;
                    v112 = v135 > 9;
                    v135 /= 0xAuLL;
                  }

                  while (v112);
                  v137 = v136 + 1;
                }

                else
                {
                  v204.__r_.__value_.__s.__data_[20] = 48;
                  v137 = 20;
                }

                v138 = 21 - v137;
                if ((21 - v137) <= 0x7FFFFFFFFFFFFFF7)
                {
                  if (v138 <= 0x16)
                  {
                    v154 = 21 - v137;
                    if (v137 != 21)
                    {
                      memcpy(&v153, &v204 + v137, 21 - v137);
                    }

                    *(&v153 + v138) = 0;
                    v139 = v203;
                    if (v203)
                    {
                      if (v203 == 1)
                      {
                        v185 = &v153;
                        v140 = 1;
                        v139 = 4;
                      }

                      else
                      {
                        if (HIBYTE(v203) != 1)
                        {
                          v139 = 2;
                        }

                        v141 = v201;
                        if (HIBYTE(v203) == 1)
                        {
                          v141 = v201[0];
                        }

                        v185 = v141;
                        v186 = v201[1];
                        v187 = &v153;
                        v140 = 4;
                      }
                    }

                    else
                    {
                      v140 = 1;
                    }

                    LOBYTE(v188) = v139;
                    HIBYTE(v188) = v140;
                    sub_298B996A4(&v185, &v200);
                    operator new();
                  }

                  operator new();
                }

LABEL_320:
                sub_298ADDDA0();
              }

              v131 = v173;
              v132 = 2;
              if (v177 != 1)
              {
                LOBYTE(v129) = 2;
                v131 = &v173;
              }

              v178 = v131;
              v179 = v174;
              v133 = v155;
              v180 = v155;
              LOBYTE(v181) = v129;
              HIBYTE(v181) = 4;
              v129 = &v178;
            }

            v182[0] = v129;
            v182[1] = v133;
            v183 = ") ";
            LOBYTE(v184) = v132;
            v130 = 3;
            HIBYTE(v184) = 3;
            LOBYTE(v129) = 2;
            v201[0] = v182;
            v202 = "collides with the truncated ASRoot for asid=";
            goto LABEL_291;
          }

          *(v25 + 1) = *(v7 + 16);
          goto LABEL_4;
        }

        v27 = 0;
        v28 = 1;
        while (v26 != -1)
        {
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = v26 == -2;
          }

          if (v29)
          {
            v27 = v25;
          }

          v30 = v24 + v28++;
          v24 = v30 & (v191 - 1);
          v25 = (v189 + 16 * v24);
          v26 = *v25;
          if (*v25 == v23)
          {
            goto LABEL_110;
          }
        }

        if (v27)
        {
          v25 = v27;
        }

        if (4 * v190 + 4 >= 3 * v191)
        {
          goto LABEL_179;
        }

        if (v191 + ~v190 - HIDWORD(v190) > v191 >> 3)
        {
LABEL_107:
          LODWORD(v190) = v190 + 1;
          if (*v25 != -1)
          {
            --HIDWORD(v190);
          }

          *v25 = DWORD2(v197[1]);
          *(v25 + 1) = 0;
          goto LABEL_110;
        }

        v148 = a4;
        v150 = a5;
        v87 = a6;
        sub_298C49F0C(&v189, v191);
        if (v191)
        {
          v94 = (37 * DWORD2(v197[1])) & (v191 - 1);
          v25 = (v189 + 16 * v94);
          v95 = *v25;
          if (DWORD2(v197[1]) != *v25)
          {
            v90 = 0;
            v96 = 1;
            while (v95 != -1)
            {
              if (v90)
              {
                v97 = 0;
              }

              else
              {
                v97 = v95 == -2;
              }

              if (v97)
              {
                v90 = v25;
              }

              v98 = v94 + v96++;
              v94 = v98 & (v191 - 1);
              v25 = (v189 + 16 * v94);
              v95 = *v25;
              a6 = v87;
              a4 = v148;
              a5 = v150;
              if (DWORD2(v197[1]) == *v25)
              {
                goto LABEL_107;
              }
            }

LABEL_209:
            if (v90)
            {
              v25 = v90;
            }
          }

          goto LABEL_208;
        }
      }

      else
      {
LABEL_179:
        v148 = a4;
        v150 = a5;
        v87 = a6;
        sub_298C49F0C(&v189, 2 * v191);
        if (v191)
        {
          v88 = (37 * DWORD2(v197[1])) & (v191 - 1);
          v25 = (v189 + 16 * v88);
          v89 = *v25;
          if (DWORD2(v197[1]) != *v25)
          {
            v90 = 0;
            v91 = 1;
            while (v89 != -1)
            {
              if (v90)
              {
                v92 = 0;
              }

              else
              {
                v92 = v89 == -2;
              }

              if (v92)
              {
                v90 = v25;
              }

              v93 = v88 + v91++;
              v88 = v93 & (v191 - 1);
              v25 = (v189 + 16 * v88);
              v89 = *v25;
              a6 = v87;
              a4 = v148;
              a5 = v150;
              if (DWORD2(v197[1]) == *v25)
              {
                goto LABEL_107;
              }
            }

            goto LABEL_209;
          }

LABEL_208:
          a6 = v87;
          a4 = v148;
          a5 = v150;
          goto LABEL_107;
        }
      }

      v25 = 0;
      goto LABEL_208;
    }

LABEL_16:
    if (v16 <= 19)
    {
      if (v16 == 17)
      {
        v31 = *(v7 + 8);
        if (v14 != 17 && (v31 & 0xFFFFFFFF00000000) == 0x95400000000)
        {
          if (v31)
          {
            v32 = *v7 & 0xF;
            v33 = v13 - v32;
            if ((v13 - v32) / v31 == 24)
            {
              if (v15 != 32 || v13 < v32 || v33 < v31 || v33 != 24 * v31)
              {
                std::generic_category();
                v178 = "Stackshot.cpp";
                v180 = ":";
                v181 = 771;
                HIBYTE(v171) = 3;
                v134 = 3355443;
                goto LABEL_313;
              }

              if ((v195 & 1) == 0)
              {
                std::generic_category();
                v178 = "Stackshot.cpp";
                v180 = ":";
                v181 = 771;
                HIBYTE(v171) = 3;
                v142 = 3683123;
                goto LABEL_316;
              }

              v143 = a3;
              if (0x8F9C18F9C18F9C19 * (v194 - v193) < v31)
              {
                operator new();
              }

              v34 = 24 * v31;
              v35 = v7 + 16;
              v36 = *(&v193 + 1);
              do
              {
                while (1)
                {
                  *&v204.__r_.__value_.__l.__data_ = v35;
                  v204.__r_.__value_.__r.__words[2] = 0;
                  v37 = (2 * *(v35 + 16));
                  v185 = v37;
                  LOBYTE(v201[0]) = 10;
                  if (v36 < v194)
                  {
                    break;
                  }

                  v36 = sub_298C4A108(&v193, &v204, &v185, v201);
                  *(&v193 + 1) = v36;
                  v35 += 24;
                  v34 -= 24;
                  if (!v34)
                  {
                    goto LABEL_75;
                  }
                }

                *(v36 + 16) = v37;
                *(v36 + 24) = 10;
                *(v36 + 25) = xmmword_298D1B1F0;
                uuid_copy(v36, v35);
                v36 += 41;
                *(&v193 + 1) = v36;
                v35 += 24;
                v34 -= 24;
              }

              while (v34);
LABEL_75:
              v31 = *(v7 + 8);
              a3 = v143;
            }
          }
        }

        if (HIDWORD(v31) == 2388 && *v7 != 17)
        {
          if (v31)
          {
            v38 = *(v7 + 4);
            v39 = v38 - (*v7 & 0xF);
            if (v39 / v31 == 32)
            {
              if (v39 < v31 || (*v7 & 0xFu) > v38 || (*v7 & 0xFFFFFFF0) != 0x20 || v9 + v38 > v8 || v39 != 32 * v31)
              {
                std::generic_category();
                v178 = "Stackshot.cpp";
                v180 = ":";
                v181 = 771;
                HIBYTE(v171) = 3;
                v134 = 3159603;
LABEL_313:
                LODWORD(v169) = v134;
                v182[0] = &v178;
                v183 = &v169;
                v184 = 1026;
                v201[0] = v182;
                v202 = ": ";
                v203 = 770;
                v109 = "invalid stackshot array";
                goto LABEL_317;
              }

              if ((v195 & 1) == 0)
              {
                std::generic_category();
                v178 = "Stackshot.cpp";
                v180 = ":";
                v181 = 771;
                HIBYTE(v171) = 3;
                v142 = 3487283;
LABEL_316:
                LODWORD(v169) = v142;
                v182[0] = &v178;
                v183 = &v169;
                v184 = 1026;
                v201[0] = v182;
                v202 = ": ";
                v203 = 770;
                v109 = "unattached STACKSHOT_KCTYPE_EXCLAVE_TEXTLAYOUT_SEGMENTS";
LABEL_317:
                v185 = v201;
                v187 = v109;
                v188 = 770;
                sub_298B996A4(&v185, &v173);
                operator new();
              }

              v144 = a3;
              v146 = a4;
              if (0x8F9C18F9C18F9C19 * (v194 - v193) < v31)
              {
                operator new();
              }

              v40 = 32 * v31;
              v41 = *(&v193 + 1);
              v42 = (v7 + 40);
              do
              {
                while (1)
                {
                  *&v204.__r_.__value_.__l.__data_ = (v42 - 24);
                  v204.__r_.__value_.__r.__words[2] = 0;
                  v48 = (2 * *v42);
                  v185 = v48;
                  LOBYTE(v201[0]) = 10;
                  if (v41 < v194)
                  {
                    break;
                  }

                  v41 = sub_298C4A108(&v193, &v204, &v185, v201);
                  *(&v193 + 1) = v41;
                  v42 += 32;
                  v40 -= 32;
                  if (!v40)
                  {
                    goto LABEL_104;
                  }
                }

                *(v41 + 16) = v48;
                *(v41 + 24) = 10;
                *(v41 + 25) = xmmword_298D1B1F0;
                uuid_copy(v41, v42 - 24);
                v41 += 41;
                *(&v193 + 1) = v41;
                v42 += 32;
                v40 -= 32;
              }

              while (v40);
LABEL_104:
              a4 = v146;
              a3 = v144;
            }
          }
        }
      }

      else if (v16 == 19)
      {
        if (v13 < 4 || v14 != 19)
        {
          std::generic_category();
          v178 = "Stackshot.cpp";
          v180 = ":";
          v181 = 771;
          HIBYTE(v171) = 3;
          LODWORD(v169) = 3224626;
          v182[0] = &v178;
          v183 = &v169;
          v184 = 1026;
          v201[0] = v182;
          v202 = ": ";
          v203 = 770;
          v109 = "invalid stackshot container";
          goto LABEL_317;
        }

        v19 = *(v7 + 16);
        if (v19 == 2386)
        {
          v192 = 0;
          if (v195 == 1)
          {
            if (v193)
            {
              operator delete(v193);
            }

            v193 = 0uLL;
            v194 = 0;
          }

          else
          {
            v193 = 0uLL;
            v194 = 0;
            v195 = 1;
          }
        }

        else if (v19 == 2383)
        {
          if (v198 == 1)
          {
            if (SBYTE7(v197[0]) < 0)
            {
              operator delete(__p);
            }

            memset(v197, 0, sizeof(v197));
            __p = 0u;
          }

          else
          {
            memset(v197, 0, sizeof(v197));
            __p = 0u;
            v198 = 1;
          }
        }
      }

      goto LABEL_4;
    }

    if (v16 != 20)
    {
      if (v16 == 2309)
      {
        v151 = *(v7 + 100);
      }

      goto LABEL_4;
    }

    if (v198 != 1)
    {
      goto LABEL_159;
    }

    v149 = a5;
    v43 = v199[1];
    if (v199[1] >= v199[2])
    {
      v145 = a6;
      v147 = a4;
      v49 = v199[0];
      v50 = (v199[1] - v199[0]) >> 6;
      v51 = v50 + 1;
      if ((v50 + 1) >> 58)
      {
        sub_298ADDDA0();
      }

      v44 = a3;
      v52 = v199[2] - v199[0];
      if ((v199[2] - v199[0]) >> 5 > v51)
      {
        v51 = v52 >> 5;
      }

      if (v52 >= 0x7FFFFFFFFFFFFFC0)
      {
        v53 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        if (!(v53 >> 58))
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v67 = v50 << 6;
      if (SBYTE7(v197[0]) < 0)
      {
        sub_298AFE11C(v67, __p, *(&__p + 1));
        v43 = v199[1];
        v49 = v199[0];
        v50 = (v199[1] - v199[0]) >> 6;
      }

      else
      {
        *v67 = __p;
        *((v50 << 6) + 0x10) = *&v197[0];
      }

      *(v67 + 24) = *(v197 + 8);
      *(v67 + 40) = *(&v197[1] + 8);
      *(v67 + 56) = *(&v197[2] + 1);
      v68 = v67 - (v50 << 6);
      if (v49 != v43)
      {
        v69 = v49;
        v70 = v68;
        do
        {
          v71 = *v69;
          *(v70 + 16) = *(v69 + 2);
          *v70 = v71;
          *(v69 + 1) = 0;
          *(v69 + 2) = 0;
          *v69 = 0;
          v72 = *(v69 + 24);
          v73 = *(v69 + 40);
          *(v70 + 56) = *(v69 + 7);
          *(v70 + 40) = v73;
          *(v70 + 24) = v72;
          v69 += 4;
          v70 += 64;
        }

        while (v69 != v43);
        do
        {
          if (*(v49 + 23) < 0)
          {
            operator delete(*v49);
          }

          v49 += 4;
        }

        while (v49 != v43);
        v49 = v199[0];
      }

      v199[0] = v68;
      v199[1] = v67 + 64;
      v199[2] = 0;
      a5 = v149;
      if (v49)
      {
        operator delete(v49);
      }

      a6 = v145;
      a4 = v147;
      v199[1] = v67 + 64;
      v58 = v199[5];
      if (!LODWORD(v199[5]))
      {
LABEL_153:
        v74 = 0;
        a3 = v44;
        goto LABEL_154;
      }
    }

    else
    {
      v44 = a3;
      if (SBYTE7(v197[0]) < 0)
      {
        sub_298AFE11C(v199[1], __p, *(&__p + 1));
      }

      else
      {
        v54 = __p;
        *(v199[1] + 16) = *&v197[0];
        *v43 = v54;
      }

      v55 = *(v197 + 8);
      v56 = *(&v197[1] + 8);
      *(v43 + 56) = *(&v197[2] + 1);
      *(v43 + 40) = v56;
      *(v43 + 24) = v55;
      v57 = v43 + 64;
      a5 = v149;
      v199[1] = v57;
      v58 = v199[5];
      if (!LODWORD(v199[5]))
      {
        goto LABEL_153;
      }
    }

    v59 = v58 - 1;
    v60 = (37 * LODWORD(v197[2])) & v59;
    v61 = (v199[3] + 40 * v60);
    v62 = *v61;
    a3 = v44;
    if (*&v197[2] == *v61)
    {
      goto LABEL_155;
    }

    v63 = 0;
    v64 = 1;
    while (v62 != -1)
    {
      if (v63)
      {
        v65 = 0;
      }

      else
      {
        v65 = v62 == -2;
      }

      if (v65)
      {
        v63 = v61;
      }

      v66 = v60 + v64++;
      v60 = v66 & v59;
      v61 = (v199[3] + 40 * v60);
      v62 = *v61;
      if (*&v197[2] == *v61)
      {
        goto LABEL_155;
      }
    }

    if (v63)
    {
      v74 = v63;
    }

    else
    {
      v74 = v61;
    }

LABEL_154:
    v75 = sub_298C4A2CC(&v199[3], &v197[2], v74);
    *v75 = *&v197[2];
    *(v75 + 3) = 0u;
    *(v75 + 1) = 0u;
LABEL_155:
    if (v198 == 1)
    {
      if (SBYTE7(v197[0]) < 0)
      {
        operator delete(__p);
      }

      v198 = 0;
    }

LABEL_159:
    if (v195 == 1)
    {
      v76 = a3;
      v77 = v192;
      if (LODWORD(v199[5]))
      {
        v78 = (37 * v192) & (LODWORD(v199[5]) - 1);
        v79 = (v199[3] + 40 * v78);
        v80 = *v79;
        if (v192 != *v79)
        {
          v81 = 0;
          v82 = 1;
          while (v80 != -1)
          {
            if (v81)
            {
              v83 = 0;
            }

            else
            {
              v83 = v80 == -2;
            }

            if (v83)
            {
              v81 = v79;
            }

            v84 = v78 + v82++;
            v78 = v84 & (LODWORD(v199[5]) - 1);
            v79 = (v199[3] + 40 * v78);
            v80 = *v79;
            if (v192 == *v79)
            {
              goto LABEL_173;
            }
          }

          if (v81)
          {
            v85 = v81;
          }

          else
          {
            v85 = v79;
          }

LABEL_172:
          v79 = sub_298C4A2CC(&v199[3], &v192, v85);
          *v79 = v77;
          *(v79 + 1) = 0u;
          *(v79 + 3) = 0u;
        }

LABEL_173:
        v79[1] = v77;
        v86 = v79[2];
        if (v86)
        {
          v79[3] = v86;
          operator delete(v86);
        }

        *(v79 + 1) = v193;
        v79[4] = v194;
        v195 = 0;
        v194 = 0;
        v193 = 0uLL;
        a3 = v76;
        goto LABEL_4;
      }

      v85 = 0;
      goto LABEL_172;
    }

LABEL_4:
    v7 = v9 + *(v7 + 4);
    v9 = v7 + 16;
  }

  while (v7 + 16 <= v8);
  if (v199[0] != v199[1])
  {
    a4(a5, v199);
  }

LABEL_214:
  *a6 = 0;
  MEMORY[0x29C2945E0](v189, 8);
  if (v195 == 1 && v193)
  {
    operator delete(v193);
  }

  if (v198 == 1 && SBYTE7(v197[0]) < 0)
  {
    operator delete(__p);
    v99 = LODWORD(v199[5]);
    v100 = v199[3];
    if (LODWORD(v199[5]))
    {
      goto LABEL_220;
    }
  }

  else
  {
    v99 = LODWORD(v199[5]);
    v100 = v199[3];
    if (LODWORD(v199[5]))
    {
LABEL_220:
      v101 = 40 * v99;
      v102 = (v100 + 24);
      do
      {
        if (*(v102 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v103 = *(v102 - 1);
          if (v103)
          {
            *v102 = v103;
            operator delete(v103);
          }
        }

        v102 += 5;
        v101 -= 40;
      }

      while (v101);
      v100 = v199[3];
    }
  }

  MEMORY[0x29C2945E0](v100, 8);
  v104 = v199[0];
  if (v199[0])
  {
    v105 = v199[1];
    v106 = v199[0];
    if (v199[1] != v199[0])
    {
      do
      {
        v107 = *(v105 - 41);
        v105 -= 8;
        if (v107 < 0)
        {
          operator delete(*v105);
        }
      }

      while (v105 != v104);
      v106 = v199[0];
    }

    v199[1] = v104;
    operator delete(v106);
  }

  v108 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C49CD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1FD40;
  a2[1] = v2;
  return result;
}

uint64_t sub_298C49D04(uint64_t a1)
{
  v2 = *(a1 + 8);
  stackshot_config_dealloc_buffer();
  v3 = *(a1 + 8);

  return MEMORY[0x2A1C764C0](v3);
}

uint64_t sub_298C49D40@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 24);
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = *(result + 24);
  }

  v6 = *(result + 16) + v5;
  v7 = v4 - v5;
  *(a4 + 16) &= ~1u;
  if (v7 >= a3)
  {
    v7 = a3;
  }

  *a4 = v6;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_298C49D70(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = *(a1 + 56);
    if (v3 == a1 + 32)
    {
      (*(*v3 + 32))(v3);
      return a1;
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      return a1;
    }
  }

  else
  {
    v5 = sub_298AE761C();
    return sub_298C49E30(v5);
  }
}

uint64_t sub_298C49E30(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = *(a1 + 56);
    if (v3 == a1 + 32)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    JUMPOUT(0x29C2945F0);
  }

  v4 = sub_298AE761C();
  return sub_298C49F04(v4);
}

_DWORD *sub_298C49F0C(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -1;
        *v13 = -1;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 4;
        }

        while (v10 != &result[4 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if (*v17 <= 0xFFFFFFFD)
        {
          v25 = (37 * v24) & v16;
          v23 = &result[4 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[4 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          *(v23 + 1) = *(v17 + 1);
          *(a1 + 2) = ++v15;
        }

        v17 += 4;
      }

      while (v17 != &v4[4 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v18 = *(a1 + 4);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 4;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 4) = -1;
      *v20 = -1;
      v20 += 8;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[4 * v18];
      do
      {
        *v10 = -1;
        v10 += 4;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t sub_298C4A108(void *a1, uint64_t a2, void *a3, char *a4)
{
  v4 = 0x8F9C18F9C18F9C19 * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x63E7063E7063E70)
  {
    sub_298ADDDA0();
  }

  if (0x1F3831F3831F3832 * (a1[2] - *a1) > v5)
  {
    v5 = 0x1F3831F3831F3832 * (a1[2] - *a1);
  }

  if (0x8F9C18F9C18F9C19 * (a1[2] - *a1) >= 0x31F3831F3831F38)
  {
    v8 = 0x63E7063E7063E70;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (v8 <= 0x63E7063E7063E70)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v9 = a1[1] - *a1;
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *a4;
  *(v9 + 16) = *a3;
  *(v9 + 24) = v12;
  *(v9 + 25) = xmmword_298D1B1F0;
  if (v11)
  {
    uuid_copy((41 * v4), v11);
  }

  else
  {
    uuid_parse(v10, (41 * v4));
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = v9 - &v14[-*a1];
  v16 = v9 + 41;
  if (v14 != *a1)
  {
    v17 = 0;
    v18 = 41 * v4 - &v14[-*a1];
    do
    {
      v19 = v18 + v17;
      v20 = *&v13[v17 + 16];
      *(v19 + 24) = v13[v17 + 24];
      v21 = *&v13[v17 + 25];
      *(v19 + 16) = v20;
      *(v19 + 25) = v21;
      uuid_copy((v18 + v17), &v13[v17]);
      v17 += 41;
    }

    while (&v13[v17] != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v16;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v16;
}

void *sub_298C4A2CC(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (4 * v3 + 4 >= 3 * v4)
  {
    v7 = a1;
    sub_298C4A46C(a1, 2 * v4);
    v9 = *a2;
    v10 = *(v7 + 16) - 1;
    v11 = (37 * *a2) & v10;
    a3 = (*v7 + 40 * v11);
    v12 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_17;
    }

    v13 = 0;
    v14 = 1;
    while (v12 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == -2;
      }

      if (v15)
      {
        v13 = a3;
      }

      v16 = v11 + v14++;
      v11 = v16 & v10;
      a3 = (*v7 + 40 * v11);
      v12 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v4 + ~v3 - *(a1 + 12) > v4 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a1;
    sub_298C4A46C(a1, *(a1 + 16));
    v9 = *a2;
    v18 = *(v7 + 16) - 1;
    v19 = (37 * *a2) & v18;
    a3 = (*v7 + 40 * v19);
    v20 = *a3;
    if (*a2 == *a3)
    {
LABEL_17:
      a1 = v7;
      ++*(v7 + 8);
      if (v9 == -1)
      {
        return a3;
      }

      goto LABEL_4;
    }

    v13 = 0;
    v21 = 1;
    while (v20 != -1)
    {
      if (v13)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20 == -2;
      }

      if (v22)
      {
        v13 = a3;
      }

      v23 = v19 + v21++;
      v19 = v23 & v18;
      a3 = (*v7 + 40 * v19);
      v20 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  if (v13)
  {
    a3 = v13;
  }

  a1 = v7;
LABEL_3:
  v5 = *a3;
  ++*(a1 + 8);
  if (v5 != -1)
  {
LABEL_4:
    --*(a1 + 12);
  }

  return a3;
}

void *sub_298C4A46C(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v10 = *(a1 + 4);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 40 * v10 - 40;
    if (v11 >= 0x28)
    {
      v16 = v11 / 0x28 + 1;
      v12 = &result[5 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -1;
        v17[5] = -1;
        v17 += 10;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if (*v20 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v27 = *(a1 + 4) - 1;
              v28 = v27 & (37 * v26);
              v25 = (*a1 + 40 * v28);
              v29 = *v25;
              if (v26 != *v25)
              {
                v30 = 0;
                v31 = 1;
                while (v29 != -1)
                {
                  if (v30)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 == -2;
                  }

                  if (v32)
                  {
                    v30 = v25;
                  }

                  v33 = v28 + v31++;
                  v28 = v33 & v27;
                  v25 = (*a1 + 40 * (v33 & v27));
                  v29 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v30)
                {
                  v25 = v30;
                }
              }

LABEL_26:
              *v25 = v26;
              v25[1] = v20[1];
              v25[2] = 0;
              v25[3] = 0;
              v25[4] = 0;
              *(v25 + 1) = *(v20 + 1);
              v25[4] = v20[4];
              v20[2] = 0;
              v20[3] = 0;
              v20[4] = 0;
              ++*(a1 + 2);
            }

            v20 += 5;
          }

          while (v20 != &v4[5 * v3]);
        }

        JUMPOUT(0x29C2945E0);
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[5 * v10];
    do
    {
      *v12 = -1;
      v12 += 5;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  a1[1] = 0;
  v13 = *(a1 + 4);
  if (v13)
  {
    v14 = 40 * v13 - 40;
    if (v14 < 0x28)
    {
      v15 = result;
LABEL_21:
      v24 = &result[5 * v13];
      do
      {
        *v15 = -1;
        v15 += 5;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x28 + 1;
    v15 = &result[5 * (v21 & 0xFFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -1;
      v22[5] = -1;
      v22 += 10;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}