void sub_213CB9ABC(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = v1 + *(a1 + 32);
  }

  else
  {
    v2 = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 48) = v2;
  *(a1 + 56) = v1;
  *(a1 + 70) = 0;
  *(a1 + 72) = 1;
  v3 = *(a1 + 88);
  if (v3)
  {
    sub_213C9843C(*(v3 + 8));
    *v3 = v3 + 8;
    *(v3 + 16) = 0;
    *(v3 + 8) = 0;
  }
}

uint64_t sub_213CB9B2C()
{
  sub_213C98FF0(v1);
  MEMORY[0x21604D0C0](&v2, 4);
  std::stringbuf::str();
  sub_213C993D8(v1, MEMORY[0x277D82818]);
  return MEMORY[0x21604D160](&v3);
}

uint64_t sub_213CB9B98@<X0>(int a1@<W0>, std::string *a2@<X8>, double a3@<D0>)
{
  sub_213C98FF0(v23);
  v6 = v24[0];
  *(&v24[1] + *(v24[0] - 24)) = *(&v24[1] + *(v24[0] - 24)) & 0xFFFFFEFB | 4;
  *(&v24[2] + *(v6 - 24)) = a1;
  MEMORY[0x21604D080](a3);
  std::stringbuf::str();
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v8 = a2->__r_.__value_.__r.__words[0];
  if (size >= 0)
  {
    v8 = a2;
  }

  if (size < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v9 = v8 + size;
  v10 = -size;
  while (v10)
  {
    v11 = *--v9;
    ++v10;
    if (v11 != 48)
    {
      if (v10 != 1)
      {
        v12 = *v9 == 46;
        v13 = 1;
        if (v12)
        {
          v13 = 2;
        }

        std::string::resize(a2, v13 - v10, 0);
      }

      break;
    }
  }

  v22 = 0.0;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2->__r_.__value_.__r.__words[0];
  }

  sub_213CBED98(&v22, v15);
  if (v22 != a3)
  {
    sub_213C98FF0(v19);
    v16 = v20[0];
    *(&v20[1] + *(v20[0] - 24)) = *(&v20[1] + *(v20[0] - 24)) & 0xFFFFFEFB | 0x100;
    *(&v20[2] + *(v16 - 24)) = 17;
    MEMORY[0x21604D080](a3);
    std::stringbuf::str();
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a2->__r_.__value_.__l.__data_);
    }

    *&a2->__r_.__value_.__l.__data_ = v17;
    a2->__r_.__value_.__r.__words[2] = v18;
    sub_213C993D8(v19, MEMORY[0x277D82818]);
    MEMORY[0x21604D160](&v21);
  }

  sub_213C993D8(v23, MEMORY[0x277D82818]);
  return MEMORY[0x21604D160](&v25);
}

uint64_t flatbuffers::RPCCall::Deserialize(uint64_t a1, uint64_t a2, const std::string::value_type *a3)
{
  v6 = *a3;
  if (*&a3[-v6] < 5u)
  {
    v7 = 0;
  }

  else
  {
    v7 = *&a3[-v6 + 4];
    LODWORD(v6) = *&a3[*&a3[-v6 + 4]];
  }

  std::string::__init(&v27, &a3[v7 + 4 + v6], *&a3[v7 + v6]);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v27;
  v8 = &a3[-*a3];
  if (*v8 >= 0xBu && (v9 = *(v8 + 5)) != 0)
  {
    v10 = &a3[v9 + *&a3[v9]];
  }

  else
  {
    v10 = 0;
  }

  result = sub_213C95E7C(a1 + 72, a2, v10);
  if (result)
  {
    v12 = &a3[-*a3];
    if (*v12 >= 0xDu && (v13 = *(v12 + 6)) != 0)
    {
      v14 = &a3[v13 + *&a3[v13]];
    }

    else
    {
      v14 = 0;
    }

    flatbuffers::DeserializeDoc((a1 + 48), v14);
    v15 = &a3[-*a3];
    if (*v15 < 7u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 3);
      if (v16)
      {
        v16 = &v16[a3 + *&v16[a3]];
      }
    }

    v17 = *v16;
    if (*&v16[-v17] < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *&v16[-v17 + 4];
      LODWORD(v17) = *&v16[*&v16[-v17 + 4]];
    }

    std::string::__init(&v27, &v16[v18 + 4 + v17], *&v16[v18 + v17]);
    v19 = sub_213C9DFB8(a2 + 128, &v27);
    if (a2 + 136 == v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v19 + 56);
    }

    *(a1 + 152) = v20;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v21 = &a3[-*a3];
    if (*v21 < 9u)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v21 + 4);
      if (v22)
      {
        v22 = &v22[a3 + *&v22[a3]];
      }
    }

    v23 = *v22;
    if (*&v22[-v23] < 5u)
    {
      v24 = 0;
    }

    else
    {
      v24 = *&v22[-v23 + 4];
      LODWORD(v23) = *&v22[*&v22[-v23 + 4]];
    }

    std::string::__init(&v27, &v22[v24 + 4 + v23], *&v22[v24 + v23]);
    v25 = sub_213C9DFB8(a2 + 128, &v27);
    if (a2 + 136 == v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(v25 + 56);
    }

    *(a1 + 160) = v26;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    return *(a1 + 152) && *(a1 + 160) != 0;
  }

  return result;
}

void flatbuffers::ServiceDef::Deserialize(uint64_t a1, uint64_t a2, const std::string::value_type *a3)
{
  v3 = *a3;
  if (*&a3[-v3] < 5u)
  {
    v4 = 0;
  }

  else
  {
    v4 = *&a3[-v3 + 4];
    LODWORD(v3) = *&a3[*&a3[-v3 + 4]];
  }

  std::string::__init(&__p, &a3[v4 + 4 + v3], *&a3[v4 + v3]);
  flatbuffers::Parser::UnqualifiedName();
}

uint64_t flatbuffers::Parser::Deserialize(flatbuffers::Parser *this, const char *a2, uint64_t a3)
{
  v3 = a2;
  v7[0] = a2;
  v7[1] = a3;
  v8 = xmmword_213CC7C70;
  v9 = 0;
  v10 = 1;
  v5 = (a2 + 4);
  if (!strncmp(a2 + 4, "BFBS", 4uLL))
  {
    if (sub_213CBEF78(v7, 0))
    {
      return flatbuffers::Parser::Deserialize(this, &v3[*v3]);
    }

    return 0;
  }

  if (strncmp(v3 + 8, "BFBS", 4uLL))
  {
    return 0;
  }

  result = sub_213CBA350(v7);
  v3 = v5;
  if (result)
  {
    return flatbuffers::Parser::Deserialize(this, &v3[*v3]);
  }

  return result;
}

uint64_t sub_213CBA380(char **a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = **a1;
  for (i = 128; (i & v4) != 0; i >>= 1)
  {
    if (++v2 == 6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (((v4 << v2) & 0x80) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2)
  {
    result = 0xFFFFFFFFLL;
    if (v2 != 1 && v2 <= 4)
    {
      v7 = v2 - 1;
      v8 = v3 + 1;
      *a1 = v3 + 1;
      LODWORD(result) = *v3 & ~(-1 << (7 - v2));
      while ((*v8 & 0xC0) == 0x80)
      {
        v9 = result;
        *a1 = v8 + 1;
        result = *v8++ & 0x3Fu | (result << 6);
        if (!--v7)
        {
          if ((v9 & 0x3FFFFE0) == 0x360)
          {
            return 0xFFFFFFFFLL;
          }

          v10 = v9 << 6;
          if (v2 == 4)
          {
            if ((v10 - 1114112) < 0xFFF00000)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else if (v2 == 3)
          {
            if ((v10 - 0x10000) < 0xFFFF0800)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else if ((v10 - 2048) < 0xFFFFF880)
          {
            return 0xFFFFFFFFLL;
          }

          return result;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *a1 = v3 + 1;
    return *v3;
  }

  return result;
}

uint64_t sub_213CBA48C(_BYTE *a1)
{
  v1 = -2128831035;
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    do
    {
      v1 = (16777619 * v1) ^ v2;
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return (v1 ^ HIWORD(v1));
}

uint64_t sub_213CBA4C4(_BYTE *a1)
{
  v1 = -2128831035;
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    do
    {
      v1 = 16777619 * (v1 ^ v2);
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return (v1 ^ HIWORD(v1));
}

uint64_t flatbuffers::HashFnv1<unsigned int>(_BYTE *a1)
{
  result = 2166136261;
  v3 = *a1;
  if (*a1)
  {
    v4 = a1 + 1;
    do
    {
      result = (16777619 * result) ^ v3;
      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t flatbuffers::HashFnv1a<unsigned int>(_BYTE *a1)
{
  result = 2166136261;
  v3 = *a1;
  if (*a1)
  {
    v4 = a1 + 1;
    do
    {
      result = 16777619 * (result ^ v3);
      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t flatbuffers::HashFnv1<unsigned long long>(_BYTE *a1)
{
  result = 0xCBF29CE484222645;
  v3 = *a1;
  if (*a1)
  {
    v4 = a1 + 1;
    do
    {
      result = (0x100000001B3 * result) ^ v3;
      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t flatbuffers::HashFnv1a<unsigned long long>(_BYTE *a1)
{
  result = 0xCBF29CE484222645;
  v3 = *a1;
  if (*a1)
  {
    v4 = a1 + 1;
    do
    {
      result = 0x100000001B3 * (result ^ v3);
      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_213CBA5E4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  if (*(a2 + 55) < 0)
  {
    sub_213C9D958((a1 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v5;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  sub_213C9DCE4(a1 + 56, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  return a1;
}

void sub_213CBA66C(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 128) = a1 + 136;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 224) = a1 + 232;
  *(a1 + 344) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 352) = xmmword_213CC7BD0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 1;
  *(a1 + 416) = 256;
  *(a1 + 424) = 0;
  sub_213C98488((a1 + 432));
}

uint64_t sub_213CBB034(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = v4;
  if (*(a2 + 55) < 0)
  {
    sub_213C9D958((a1 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_213C9D958((a1 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 20);
  if (*(a2 + 111) < 0)
  {
    sub_213C9D958((a1 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v7;
  }

  if (*(a2 + 135) < 0)
  {
    sub_213C9D958((a1 + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v8 = a2[7];
    *(a1 + 128) = *(a2 + 16);
    *(a1 + 112) = v8;
  }

  v9 = *(a2 + 68);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 136) = v9;
  if (*(a2 + 167) < 0)
  {
    sub_213C9D958((a1 + 144), *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(a1 + 160) = *(a2 + 20);
    *(a1 + 144) = v10;
  }

  v11 = *(a2 + 42);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 168) = v11;
  if (*(a2 + 199) < 0)
  {
    sub_213C9D958((a1 + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v12 = a2[11];
    *(a1 + 192) = *(a2 + 24);
    *(a1 + 176) = v12;
  }

  if (*(a2 + 223) < 0)
  {
    sub_213C9D958((a1 + 200), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v13 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 200) = v13;
  }

  *(a1 + 224) = *(a2 + 56);
  if (*(a2 + 255) < 0)
  {
    sub_213C9D958((a1 + 232), *(a2 + 29), *(a2 + 30));
  }

  else
  {
    v14 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 31);
    *(a1 + 232) = v14;
  }

  v15 = *(a2 + 128);
  *(a1 + 258) = *(a2 + 258);
  *(a1 + 256) = v15;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  sub_213C9DCE4(a1 + 264, *(a2 + 33), *(a2 + 34), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 34) - *(a2 + 33)) >> 3));
  if (*(a2 + 311) < 0)
  {
    sub_213C9D958((a1 + 288), *(a2 + 36), *(a2 + 37));
  }

  else
  {
    v16 = a2[18];
    *(a1 + 304) = *(a2 + 38);
    *(a1 + 288) = v16;
  }

  v17 = (a1 + 312);
  if (*(a2 + 335) < 0)
  {
    sub_213C9D958(v17, *(a2 + 39), *(a2 + 40));
  }

  else
  {
    v18 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 41);
    *v17 = v18;
  }

  if (*(a2 + 359) < 0)
  {
    sub_213C9D958((a1 + 336), *(a2 + 42), *(a2 + 43));
  }

  else
  {
    v19 = a2[21];
    *(a1 + 352) = *(a2 + 44);
    *(a1 + 336) = v19;
  }

  v20 = (a1 + 360);
  if (*(a2 + 383) < 0)
  {
    sub_213C9D958(v20, *(a2 + 45), *(a2 + 46));
  }

  else
  {
    v21 = *(a2 + 360);
    *(a1 + 376) = *(a2 + 47);
    *v20 = v21;
  }

  v22 = a2[24];
  *(a1 + 400) = *(a2 + 200);
  *(a1 + 384) = v22;
  return a1;
}

uint64_t sub_213CBB2CC(uint64_t a1)
{
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v3 = (a1 + 264);
  sub_213C9DC58(&v3);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_213CBB3F8(uint64_t *a1, void *a2, void *a3)
{
  if (a1[2])
  {
    v6 = *a1;
    v7 = a1[1];
    *a1 = (a1 + 1);
    *(v7 + 16) = 0;
    a1[2] = 0;
    a1[1] = 0;
    v8 = *(v6 + 8) ? *(v6 + 8) : v6;
    if (v8)
    {
      v9 = sub_213CBB674(v8);
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v8;
          v8 = v9;
          std::string::operator=((v12 + 32), (v11 + 4));
          *(v12 + 56) = v11[7];
          sub_213CBB560(a1, v12);
          if (v9)
          {
            v9 = sub_213CBB674(v9);
          }

          v13 = v11[1];
          if (v13)
          {
            do
            {
              a2 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v14 = *a2 == v11;
              v11 = a2;
            }

            while (!v14);
          }

          if (!v8)
          {
            break;
          }

          v11 = a2;
        }

        while (a2 != a3);
      }

      sub_213CBB6C8(v8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *(v9 + 2);
        }

        while (v9);
        sub_213CBB6C8(v10);
      }
    }
  }

  if (a2 != a3)
  {
    sub_213CBB724();
  }
}

uint64_t *sub_213CBB560(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_213CBB5D4(a1, &v8, (a2 + 32));
  v5 = v8;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = v5;
  *v4 = v2;
  v6 = **a1;
  if (v6)
  {
    *a1 = v6;
    v2 = *v4;
  }

  result = sub_213C98758(*(a1 + 8), v2);
  ++*(a1 + 16);
  return result;
}

void *sub_213CBB5D4(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        v9 = v4[4];
        v7 = v4 + 4;
        v8 = v9;
        v10 = *(v7 + 23);
        if (v10 >= 0)
        {
          v8 = v7;
        }

        v11 = v7[1];
        if (v10 >= 0)
        {
          v11 = v10;
        }

        v13[0] = v8;
        v13[1] = v11;
        if ((sub_213C986FC(a3, v13) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_10;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_10:
  *a2 = v5;
  return result;
}

void *sub_213CBB674(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void sub_213CBB6C8(char *a1)
{
  if (a1)
  {
    sub_213CBB6C8(*a1);
    sub_213CBB6C8(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_213CBB7AC(uint64_t a1)
{
  v3 = *(a1 + 272);
  for (i = *(a1 + 280); v3 != i; ++v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v7 = *v3;
      sub_213C9DC58(&v7);
      MEMORY[0x21604D1A0](v4, 0x1020C4016EE4530);
      i = *(a1 + 280);
    }
  }

  v7 = (a1 + 1176);
  sub_213C98AD0(&v7);
  if (*(a1 + 1175) < 0)
  {
    operator delete(*(a1 + 1152));
  }

  sub_213CBB2CC(a1 + 728);
  sub_213C98B5C(*(a1 + 712));
  v7 = (a1 + 680);
  sub_213C9DC58(&v7);
  sub_213CBB920(*(a1 + 664));
  sub_213CBB99C(*(a1 + 640));
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  sub_213CBBA38(a1 + 432);
  sub_213C98328((a1 + 336));
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v5 = *(a1 + 272);
  if (v5)
  {
    *(a1 + 280) = v5;
    operator delete(v5);
  }

  sub_213CBBAE0(a1 + 224);
  sub_213CBBBF4(a1 + 176);
  sub_213CBBC88(a1 + 128);
  sub_213C98BBC(a1 + 80);
  v7 = (a1 + 56);
  sub_213C9DC58(&v7);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_213CBB920(char *a1)
{
  if (a1)
  {
    sub_213CBB920(*a1);
    sub_213CBB920(*(a1 + 1));
    sub_213CA1DC8((a1 + 56), *(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_213CBB99C(void *a1)
{
  if (a1)
  {
    sub_213CBB99C(*a1);
    sub_213CBB99C(a1[1]);
    sub_213CBB9F4((a1 + 4));

    operator delete(a1);
  }
}

uint64_t sub_213CBB9F4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_213CBBA38(uint64_t a1)
{
  sub_213CBBA90(*(a1 + 104));
  sub_213CBBA90(*(a1 + 72));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_213CBBA90(void *a1)
{
  if (a1)
  {
    sub_213CBBA90(*a1);
    sub_213CBBA90(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_213CBBAE0(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v5 = *v3;
      if (*v3)
      {
        sub_213CBFA18(v5 + 152);
        v6 = sub_213C997D8(v5);
        MEMORY[0x21604D1A0](v6, 0x10B2C401A85D49FLL);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  sub_213CBBB84(*(a1 + 8));
  return a1;
}

void sub_213CBBB84(char *a1)
{
  if (a1)
  {
    sub_213CBBB84(*a1);
    sub_213CBBB84(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_213CBBBF4(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        sub_213C9D898(v4 + 184);
        v5 = sub_213C997D8(v4);
        MEMORY[0x21604D1A0](v5, 0x10B2C409EE52067);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  sub_213CBB6C8(*(a1 + 8));
  return a1;
}

uint64_t sub_213CBBC88(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        sub_213C8D018((v4 + 224), 0);
        sub_213C99840(v4 + 152);
        v5 = sub_213C997D8(v4);
        MEMORY[0x21604D1A0](v5, 0x10B2C4058EA06FBLL);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  sub_213CBB6C8(*(a1 + 8));
  return a1;
}

uint64_t sub_213CBBD28(uint64_t a1, uint64_t *a2)
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
    v6 = *(a2 + 23);
    v7 = *a2;
    if (v6 >= 0)
    {
      v7 = a2;
    }

    if (v6 < 0)
    {
      v6 = a2[1];
    }

    v13 = v7;
    v14 = v6;
    v8 = sub_213C986FC((v3 + 32), &v13);
    if (v8 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v8 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  v9 = *(v5 + 32);
  v10 = *(v5 + 55);
  if (v10 >= 0)
  {
    v9 = (v5 + 32);
  }

  v11 = *(v5 + 40);
  if (v10 >= 0)
  {
    v11 = *(v5 + 55);
  }

  v13 = v9;
  v14 = v11;
  if ((sub_213C986FC(a2, &v13) & 0x80000000) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_213CBBDEC(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 216) - *(*(a1 + 8) + 208);
  if ((v1 & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  v3 = (v1 >> 3) - 1;
  do
  {
    v4 = *(*(*(a1 + 8) + 208) + 8 * v3);
    v11 = 13;
    strcpy(__p, "bit_flags_set");
    v5 = sub_213C9E148(v4 + 88, __p);
    v6 = v4 + 96 == v5 || *(v5 + 56) == 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = -1;
    }

    v8 = v3-- != 0;
  }

  while (v8 && v7 == -1);
  if (v7 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(*(a1 + 8) + 208) + 8 * v7);
  }
}

uint64_t sub_213CBBEF4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_213C9D958(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(a1 + 80) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a3;
  return a1;
}

void sub_213CBBF78(_WORD *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  switch(*(a2[1] + 152))
  {
    case 0xFFFFFFFD:

      goto LABEL_4;
    case 0xFFFFFFFE:

      goto LABEL_7;
    case 0xFFFFFFFF:

      goto LABEL_26;
    case 1:

      goto LABEL_10;
    case 2:

      goto LABEL_10;
    case 3:

      sub_213CBC8B8(a1, a2, a3, a4);
      return;
    case 4:

LABEL_10:
      sub_213CBC70C(a1, a2, a3, a4);
      break;
    case 5:

      sub_213CBCA68(a1, a2, a3, a4);
      break;
    case 6:

LABEL_26:
      sub_213CBC560(a1, a2, a3, a4);
      break;
    case 7:

      sub_213CBCC18(a1, a2, a3, a4);
      break;
    case 8:

LABEL_7:
      sub_213CBC3B8(a1, a2, a3, a4);
      break;
    case 9:

      sub_213CBCDC4(a1, a2, a3, a4);
      break;
    case 0xA:

LABEL_4:
      sub_213CBC214(a1, a2, a3, a4);
      break;
    default:
      v4 = *a2;
      operator new();
  }
}

void sub_213CBC214(_WORD *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  if (__CFADD__(*a3, a4))
  {
    v6 = *a2;
    sub_213C8CE90(-1);
    v7 = std::string::insert(&v19, 0, "enum value does not fit, ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (a4)
    {
      v9 = " + 1";
    }

    else
    {
      v9 = "";
    }

    v10 = std::string::append(&v20, v9);
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v21, " out of ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD280(&__p);
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v22, p_p, size);
    v17 = v16->__r_.__value_.__r.__words[2];
    v23 = *&v16->__r_.__value_.__l.__data_;
    v24 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(v6, a1);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 += a4;
    *a1 = 0;
  }
}

void sub_213CBC3B8(_WORD *a1, uint64_t *a2, unint64_t *a3, unsigned int a4)
{
  v6 = *a3;
  if ((*a3 & 0x8000000000000000) != 0 || v6 > (a4 ^ 0xFFFFFFFFuLL))
  {
    v7 = *a2;
    sub_213C8A670(v6);
    v8 = std::string::insert(&v20, 0, "enum value does not fit, ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (a4)
    {
      v10 = " + 1";
    }

    else
    {
      v10 = "";
    }

    v11 = std::string::append(&v21, v10);
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v22, " out of ");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD3C8(&__p);
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v23, p_p, size);
    v18 = v17->__r_.__value_.__r.__words[2];
    v24 = *&v17->__r_.__value_.__l.__data_;
    v25 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(v7, a1);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = v6 + a4;
    *a1 = 0;
  }
}

void sub_213CBC560(_WORD *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v6 = *a3;
  if (*a3 < 0 || v6 > 0xFFFFLL - a4)
  {
    v7 = *a2;
    sub_213C8A670(v6);
    v8 = std::string::insert(&v20, 0, "enum value does not fit, ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (a4)
    {
      v10 = " + 1";
    }

    else
    {
      v10 = "";
    }

    v11 = std::string::append(&v21, v10);
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v22, " out of ");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD510(&__p);
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v23, p_p, size);
    v18 = v17->__r_.__value_.__r.__words[2];
    v24 = *&v17->__r_.__value_.__l.__data_;
    v25 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(v7, a1);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = v6 + a4;
    *a1 = 0;
  }
}

void sub_213CBC70C(_WORD *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v6 = *a3;
  if (*a3 < 0 || v6 > 255 - a4)
  {
    v7 = *a2;
    sub_213C8A670(v6);
    v8 = std::string::insert(&v20, 0, "enum value does not fit, ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (a4)
    {
      v10 = " + 1";
    }

    else
    {
      v10 = "";
    }

    v11 = std::string::append(&v21, v10);
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v22, " out of ");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD658(&__p);
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v23, p_p, size);
    v18 = v17->__r_.__value_.__r.__words[2];
    v24 = *&v17->__r_.__value_.__l.__data_;
    v25 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(v7, a1);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = v6 + a4;
    *a1 = 0;
  }
}

void sub_213CBC8B8(_WORD *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v6 = *a3;
  if (*a3 < -128 || v6 > 127 - a4)
  {
    v7 = *a2;
    sub_213C8A670(v6);
    v8 = std::string::insert(&v20, 0, "enum value does not fit, ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (a4)
    {
      v10 = " + 1";
    }

    else
    {
      v10 = "";
    }

    v11 = std::string::append(&v21, v10);
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v22, " out of ");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD7A0(&__p);
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v23, p_p, size);
    v18 = v17->__r_.__value_.__r.__words[2];
    v24 = *&v17->__r_.__value_.__l.__data_;
    v25 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(v7, a1);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = v6 + a4;
    *a1 = 0;
  }
}

void sub_213CBCA68(_WORD *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v6 = *a3;
  if (*a3 < -32768 || v6 > 0x7FFFLL - a4)
  {
    v7 = *a2;
    sub_213C8A670(v6);
    v8 = std::string::insert(&v20, 0, "enum value does not fit, ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (a4)
    {
      v10 = " + 1";
    }

    else
    {
      v10 = "";
    }

    v11 = std::string::append(&v21, v10);
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v22, " out of ");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_213CBD8E8(&__p);
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v23, p_p, size);
    v18 = v17->__r_.__value_.__r.__words[2];
    v24 = *&v17->__r_.__value_.__l.__data_;
    v25 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(v7, a1);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = v6 + a4;
    *a1 = 0;
  }
}

void sub_213CBCC18(_WORD *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v5 = *a3;
  if (*a3 >= 0xFFFFFFFF80000000 && v5 <= (a4 ^ 0x7FFFFFFFLL))
  {
    *a3 = v5 + a4;
    *a1 = 0;
  }

  else
  {
    v8 = *a2;
    sub_213C8A670(v5);
    v9 = std::string::insert(&v21, 0, "enum value does not fit, ");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (a4)
    {
      v11 = " + 1";
    }

    else
    {
      v11 = "";
    }

    v12 = std::string::append(&v22, v11);
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v23, " out of ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_213CBDA30(&__p);
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v24, p_p, size);
    v19 = v18->__r_.__value_.__r.__words[2];
    v25 = *&v18->__r_.__value_.__l.__data_;
    v26 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(v8, a1);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }
}

void sub_213CBCDC4(_WORD *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  if (*a3 > (a4 ^ 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = *a2;
    sub_213C8A670(0x7FFFFFFFFFFFFFFFLL);
    v7 = std::string::insert(&v19, 0, "enum value does not fit, ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (a4)
    {
      v9 = " + 1";
    }

    else
    {
      v9 = "";
    }

    v10 = std::string::append(&v20, v9);
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v21, " out of ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_213CBDB78(&__p);
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v22, p_p, size);
    v17 = v16->__r_.__value_.__r.__words[2];
    v23 = *&v16->__r_.__value_.__l.__data_;
    v24 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    flatbuffers::Parser::Error(v6, a1);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 += a4;
    *a1 = 0;
  }
}

float sub_213CBCF6C(__int16 a1)
{
  v1 = a1 & 0x7FFF;
  v2 = __clz(v1);
  v3 = (v1 << (v2 - 8)) ^ 0x800000 | (1124073472 - (v2 << 23));
  if ((a1 & 0x7FFF) == 0)
  {
    v3 = 0;
  }

  if ((a1 & 0x7FFF) >> 10 >= 0x1Fu)
  {
    v4 = (v1 << 13) | 0x7F800000;
  }

  else
  {
    v4 = v3;
  }

  v5 = (v1 << 13) + 939524096;
  if (((a1 & 0x7FFFu) - 1024) >> 11 > 0xE)
  {
    v5 = v4;
  }

  LODWORD(result) = v5 | ((a1 & 0x8000) << 16);
  return result;
}

uint64_t sub_213CBCFD0@<X0>(int a1@<W0>, std::string *a2@<X8>, float a3@<S0>)
{
  sub_213C98FF0(v23);
  v6 = v24[0];
  *(&v24[1] + *(v24[0] - 24)) = *(&v24[1] + *(v24[0] - 24)) & 0xFFFFFEFB | 4;
  *(&v24[2] + *(v6 - 24)) = a1;
  std::ostream::operator<<();
  std::stringbuf::str();
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v8 = a2->__r_.__value_.__r.__words[0];
  if (size >= 0)
  {
    v8 = a2;
  }

  if (size < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v9 = v8 + size;
  v10 = -size;
  while (v10)
  {
    v11 = *--v9;
    ++v10;
    if (v11 != 48)
    {
      if (v10 != 1)
      {
        v12 = *v9 == 46;
        v13 = 1;
        if (v12)
        {
          v13 = 2;
        }

        std::string::resize(a2, v13 - v10, 0);
      }

      break;
    }
  }

  v22 = 0.0;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2->__r_.__value_.__r.__words[0];
  }

  sub_213CBD204(&v22, v15);
  if (v22 != a3)
  {
    sub_213C98FF0(v19);
    v16 = v20[0];
    *(&v20[1] + *(v20[0] - 24)) = *(&v20[1] + *(v20[0] - 24)) & 0xFFFFFEFB | 0x100;
    *(&v20[2] + *(v16 - 24)) = 9;
    std::ostream::operator<<();
    std::stringbuf::str();
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a2->__r_.__value_.__l.__data_);
    }

    *&a2->__r_.__value_.__l.__data_ = v17;
    a2->__r_.__value_.__r.__words[2] = v18;
    sub_213C993D8(v19, MEMORY[0x277D82818]);
    MEMORY[0x21604D160](&v21);
  }

  sub_213C993D8(v23, MEMORY[0x277D82818]);
  return MEMORY[0x21604D160](&v25);
}

uint64_t sub_213CBD204(flatbuffers::ClassicLocale *a1, char *a2)
{
  v6 = a2;
  v4 = flatbuffers::ClassicLocale::Get(a1);
  *a1 = strtof_l(a2, &v6, v4);
  if (v6 != a2 && !*v6)
  {
    return 1;
  }

  result = 0;
  *a1 = 0;
  return result;
}

void sub_213CBD280(std::string *a1)
{
  sub_213C8CE90(0);
  v2 = std::string::insert(&v13, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v14, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213C8CE90(-1);
  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v15, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v16, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_213CBD3C8(std::string *a1)
{
  sub_213C8B69C(0);
  v2 = std::string::insert(&v13, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v14, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213C8B69C(0xFFFFFFFFLL);
  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v15, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v16, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_213CBD510(std::string *a1)
{
  sub_213CB5FD8(0);
  v2 = std::string::insert(&v13, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v14, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213CB5FD8(0xFFFFLL);
  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v15, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v16, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_213CBD658(std::string *a1)
{
  sub_213C8A4E8(0);
  v2 = std::string::insert(&v13, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v14, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213C8A4E8(255);
  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v15, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v16, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_213CBD7A0(std::string *a1)
{
  sub_213C8A4E8(4294967168);
  v2 = std::string::insert(&v13, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v14, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213C8A4E8(127);
  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v15, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v16, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_213CBD8E8(std::string *a1)
{
  sub_213CB5F68(4294934528);
  v2 = std::string::insert(&v13, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v14, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213CB5F68(0x7FFFLL);
  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v15, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v16, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_213CBDA30(std::string *a1)
{
  sub_213C8A4E8(0x80000000);
  v2 = std::string::insert(&v13, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v14, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213C8A4E8(0x7FFFFFFFLL);
  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v15, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v16, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_213CBDB78(std::string *a1)
{
  sub_213C8A670(0x8000000000000000);
  v2 = std::string::insert(&v13, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v14, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213C8A670(0x7FFFFFFFFFFFFFFFLL);
  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v15, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v16, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_213CBDCC0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = a6;
  v8 = a3;
  if (HIDWORD(a3))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (a3 >= 0x10000)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (a3 < 0x100)
  {
    v12 = 0;
  }

  if (*(a1 + 56) <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(a1 + 56);
  }

  if (a6)
  {
    v15 = sub_213CBE3D0(a6, *(a1 + 8) - *a1, 0);
    if (v13 <= v15)
    {
      v13 = v15;
    }

    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v16 = *(a1 + 24);
  v17 = (*(a1 + 32) - v16) >> 4;
  v19 = *a1;
  v18 = *(a1 + 8);
  v53 = a4;
  if (v17 > a2)
  {
    v48 = v8;
    v49 = v6;
    v20 = 0;
    v46 = *a1;
    v47 = *(a1 + 8);
    v21 = &v18[-v19];
    v22 = v16 + 16 * a2;
    v23 = v14 + a2;
    v24 = 16 * a4;
    v51 = v22;
    do
    {
      v25 = sub_213CBE3D0(v22, v21, v23 + v20);
      if (v13 <= v25)
      {
        v13 = v25;
      }

      if (!v20 && a5)
      {
        v26 = *(v51 + 8);
      }

      v20 += v53;
      v22 += v24;
    }

    while (a2 + v20 < v17);
    v8 = v48;
    v6 = v49;
    v19 = v46;
    v18 = v47;
  }

  LOBYTE(__src) = 0;
  sub_213CBE508(a1, v18, (v19 - v18) & ((1 << v13) - 1), &__src);
  if (v6)
  {
    v27 = *(a1 + 8);
    v28 = (1 << v13);
    __src = &v27[-*v6 - *a1];
    sub_213C9AA34(a1, v27, &__src, &__src + v28, v28);
    __src = 1 << *(v6 + 12);
    sub_213C9AA34(a1, *(a1 + 8), &__src, &__src + v28, v28);
  }

  else
  {
    v28 = (1 << v13);
  }

  __src = v8;
  sub_213C9AA34(a1, *(a1 + 8), &__src, &__src + v28, v28);
  v29 = *a1;
  v30 = *(a1 + 8);
  v31 = *(a1 + 24);
  v32 = *(a1 + 32);
  if (a2 < (v32 - v31) >> 4)
  {
    v50 = *a1;
    v33 = *(a1 + 8);
    v34 = 16 * a2;
    v35 = a2;
    do
    {
      sub_213CBE464(a1, v31 + v34, (1 << v13));
      v35 += v53;
      v31 = *(a1 + 24);
      v32 = *(a1 + 32);
      v34 += 16 * v53;
    }

    while (v35 < (v32 - v31) >> 4);
    v29 = v50;
  }

  if ((a5 & 1) == 0 && a2 < (v32 - v31) >> 4)
  {
    v37 = v29;
    v38 = 16 * a2;
    do
    {
      LODWORD(__src) = v13;
      v39 = v31 + v38;
      v40 = *(v31 + v38 + 8);
      p_src = (v39 + 12);
      v42 = v40 < 4 || v40 == 26;
      if (v42 && *p_src < v13)
      {
        p_src = &__src;
      }

      v43 = *p_src | (4 * v40);
      LOBYTE(__src) = v43;
      v44 = *(a1 + 8);
      if (v44 >= *(a1 + 16))
      {
        v45 = sub_213C9AC5C(a1, &__src);
      }

      else
      {
        *v44 = v43;
        v45 = v44 + 1;
      }

      *(a1 + 8) = v45;
      a2 += v53;
      v31 = *(a1 + 24);
      v38 += 16 * v53;
    }

    while (a2 < (*(a1 + 32) - v31) >> 4);
    v29 = v37;
  }

  return v30 - v29;
}

void sub_213CBDFE8(unint64_t a1, _OWORD *a2, uint64_t **a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = a2 - 2;
LABEL_2:
    for (i = 1 - a4; ; ++i)
    {
      v12 = (a2 - a1) >> 5;
      if (v12 > 2)
      {
        switch(v12)
        {
          case 3uLL:

            sub_213C99920(a1, (a1 + 32), a2 - 2, a3);
            return;
          case 4uLL:

            sub_213C99A54(a1, a1 + 32, (a1 + 64), a2 - 2, a3);
            return;
          case 5uLL:

            sub_213C99B4C(a1, a1 + 32, (a1 + 64), (a1 + 96), a2 - 2, a3);
            return;
        }
      }

      else
      {
        if (v12 < 2)
        {
          return;
        }

        if (v12 == 2)
        {
          if (**a3 == (*a3)[1])
          {
            v23 = 0;
          }

          else
          {
            v23 = **a3;
          }

          if (strcmp((v23 + *v10), (v23 + *a1)) < 0)
          {
            v26 = *a1;
            v28 = *(a1 + 16);
            v24 = *(a2 - 1);
            *a1 = *v10;
            *(a1 + 16) = v24;
            *v10 = v26;
            *(a2 - 1) = v28;
          }

          return;
        }
      }

      if (v12 <= 23)
      {
        if (a5)
        {

          sub_213C99D38(a1, a2, a3);
        }

        else
        {

          sub_213C99E78(a1, a2, a3);
        }

        return;
      }

      if (i == 1)
      {
        if (a1 != a2)
        {

          sub_213C9A594(a1, a2, a2, a3);
        }

        return;
      }

      v13 = v12 >> 1;
      v14 = a1 + 32 * (v12 >> 1);
      if (v12 < 0x81)
      {
        sub_213C99920((a1 + 32 * (v12 >> 1)), a1, a2 - 2, a3);
      }

      else
      {
        sub_213C99920(a1, (a1 + 32 * (v12 >> 1)), a2 - 2, a3);
        sub_213C99920((a1 + 32), (v14 - 32), a2 - 4, a3);
        sub_213C99920((a1 + 64), (a1 + 32 + 32 * v13), a2 - 6, a3);
        sub_213C99920((v14 - 32), v14, (a1 + 32 + 32 * v13), a3);
        v25 = *a1;
        v27 = *(a1 + 16);
        v15 = *(v14 + 16);
        *a1 = *v14;
        *(a1 + 16) = v15;
        *v14 = v25;
        *(v14 + 16) = v27;
      }

      if ((a5 & 1) == 0)
      {
        v16 = **a3 == (*a3)[1] ? 0 : **a3;
        if ((strcmp((v16 + *(a1 - 32)), (v16 + *a1)) & 0x80000000) == 0)
        {
          v22 = sub_213C99F90(a1, a2, a3);
          goto LABEL_22;
        }
      }

      v18 = sub_213C9A124(a1, a2, a3);
      v19 = v17;
      if ((v20 & 1) == 0)
      {
        goto LABEL_53;
      }

      v21 = sub_213C9A2B0(a1, v17, a3);
      v22 = (v19 + 2);
      if (sub_213C9A2B0((v19 + 2), a2, a3))
      {
        break;
      }

      if (!v21)
      {
LABEL_53:
        a4 = -i;
        sub_213CBDFE8(a1, v19, a3, -i, a5 & 1, v18);
        a5 = 0;
        a1 = (v19 + 2);
        goto LABEL_2;
      }

LABEL_22:
      a1 = v22;
    }

    a4 = -i;
    a2 = v19;
    if (!v21)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_213CBE3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 < 4 || v3 == 26;
  if (v4)
  {
    return *(a1 + 12);
  }

  v6 = a2 - *a1;
  for (i = 1; ; i *= 2)
  {
    v8 = v6 + i * a3 + ((i - 1) & -a2);
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        result = HIDWORD(v8) ? 3 : 2;
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = 0;
    }

    if (1 << result == i)
    {
      break;
    }

    v9 = i >= 4;
    v4 = i == 4;
    if (!v4 && v9)
    {
      return 3;
    }
  }

  return result;
}

char *sub_213CBE464(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
      goto LABEL_13;
    }

LABEL_11:
    v7 = a3;
    __src = *a2;
    v8 = *(a1 + 8);
    return sub_213C9AA34(a1, v8, &__src, &__src + a3, v7);
  }

  if (v3 == 2 || v3 == 26)
  {
    goto LABEL_11;
  }

  if (v3 != 3)
  {
LABEL_13:
    v9 = *a2;
    v8 = *(a1 + 8);
    v7 = a3;
    __src = (v8 - &v9[*a1]);
    return sub_213C9AA34(a1, v8, &__src, &__src + a3, v7);
  }

  v5 = *a2;

  return sub_213CBE708(a1, a3, v5);
}

char *sub_213CBE508(uint64_t a1, char *a2, size_t a3, char *a4)
{
  v4 = a2;
  if (a3)
  {
    v5 = a4;
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8 - v9 >= a3)
    {
      v19 = v9 - a2;
      if (a3 <= v9 - a2)
      {
        v20 = *(a1 + 8);
        v21 = a3;
      }

      else
      {
        memset(*(a1 + 8), *a4, a3 - (v9 - a2));
        v20 = &v4[a3];
        *(a1 + 8) = &v4[a3];
        if (!v19)
        {
          return v4;
        }

        v21 = v9 - v4;
      }

      v22 = &v4[a3];
      v23 = v20;
      if (&v20[-a3] < v9)
      {
        if (a3 <= v19)
        {
          v24 = v9 - v4;
        }

        else
        {
          v24 = a3;
        }

        v25 = &v4[-a3];
        v26 = v4;
        do
        {
          v26[v24] = v25[v24];
          ++v25;
          ++v26;
        }

        while (&v25[v24] != v9);
        if (a3 <= v19)
        {
          v27 = v9 - v4;
        }

        else
        {
          v27 = a3;
        }

        v23 = &v26[v27];
      }

      *(a1 + 8) = v23;
      if (v20 != v22)
      {
        memmove(&v4[a3], v4, v20 - v22);
      }

      if (v4 <= v5)
      {
        if (*(a1 + 8) <= v5)
        {
          v28 = 0;
        }

        else
        {
          v28 = a3;
        }

        v5 += v28;
      }

      memset(v4, *v5, v21);
    }

    else
    {
      v10 = *a1;
      v11 = &v9[a3 - *a1];
      if (v11 < 0)
      {
        sub_213C97BD4();
      }

      v12 = (a2 - v10);
      v13 = v8 - v10;
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      if (v14)
      {
        operator new();
      }

      v29 = a2 - v10;
      memset(v12, *a4, a3);
      v15 = &v12[a3];
      v16 = v9 - v4;
      memcpy(v15, v4, v9 - v4);
      *(a1 + 8) = v4;
      v17 = &v12[v10 - v4];
      memcpy(v17, v10, v29);
      *a1 = v17;
      *(a1 + 8) = &v15[v16];
      *(a1 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      return v12;
    }
  }

  return v4;
}

char *sub_213CBE708(char *result, int a2, double a3)
{
  if (a2 == 4)
  {
    v7 = a3;
    *(&v9 + 1) = v7;
    v3 = *(result + 1);
    v4 = (&v9 + 4);
    v5 = &vars0;
    v6 = 4;
  }

  else
  {
    if (a2 != 8)
    {
      return result;
    }

    v8 = a3;
    v3 = *(result + 1);
    v4 = &v8;
    v5 = &v9;
    v6 = 8;
  }

  return sub_213C9AA34(result, v3, v4, v5, v6);
}

void sub_213CBE770(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      sub_213C97BD4();
    }

    v9 = v4 - v6;
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

      sub_213C97BD4();
    }

    v12 = v7 >> 4;
    v11 = (16 * (v7 >> 4));
    bzero(v11, 16 * a2);
    memcpy(&v11[-16 * v12], v6, v7);
    *a1 = &v11[-16 * v12];
    *(a1 + 8) = v7 + 16 * a2;
    *(a1 + 16) = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_213CBE8CC(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = sub_213CBE994(a1, a2, a3);
  if ((*(a1 + 52) & 2) != 0)
  {
    v8 = v7;
    v9 = sub_213CBEA90(a1 + 96, v7, a3);
    if (a1 + 104 == v9)
    {
      sub_213C9AE28(a1 + 96, v8, a3);
    }

    else
    {
      v10 = v9;
      v11 = *(a1 + 8) - *a1;
      if (v5 - v6 > v11)
      {
        sub_213CBEBA4(a1, v5 - v6 - v11);
      }

      else if (v5 - v6 < v11)
      {
        *(a1 + 8) = *a1 + v5 - v6;
      }

      *(*(a1 + 32) - 16) = *(v10 + 32);
    }
  }
}

char *sub_213CBE994(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  if (HIDWORD(a3))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (a3 < 0x10000)
  {
    v6 = 1;
  }

  if (a3 >= 0x100)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = (1 << v7);
  v9 = *(a1 + 8);
  v10 = *a1 - v9;
  LOBYTE(v16) = 0;
  sub_213CBE508(a1, v9, v10 & (v8 - 1), &v16);
  *&v16 = a3;
  sub_213C9AA34(a1, *(a1 + 8), &v16, &v16 + v8, v8);
  v11 = *(a1 + 8);
  v12 = &v11[-*a1];
  sub_213C9AA34(a1, v11, a2, &a2[a3 + 1], a3 + 1);
  *&v16 = v12;
  DWORD2(v16) = 5;
  HIDWORD(v16) = v7;
  v13 = *(a1 + 32);
  if (v13 >= *(a1 + 40))
  {
    v14 = sub_213C9AD38(a1 + 24, &v16);
  }

  else
  {
    *v13 = v16;
    v14 = (v13 + 1);
  }

  *(a1 + 32) = v14;
  return v12;
}

uint64_t sub_213CBEA90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1 + 8;
  v7 = sub_213CBEB1C(a1, a2, a3, *(a1 + 8), a1 + 8);
  if (v6 == v7)
  {
    return v6;
  }

  v8 = v7;
  v9 = *(a1 + 24);
  v10 = *v9 == v9[1] ? 0 : *v9;
  v11 = *(v7 + 40);
  if (v11 >= a3)
  {
    v11 = a3;
  }

  if (strncmp((v10 + a2), (v10 + *(v7 + 32)), v11 + 1) < 0)
  {
    return v6;
  }

  return v8;
}

uint64_t sub_213CBEB1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a4;
    v9 = *(a1 + 24);
    if (*v9 == v9[1])
    {
      v10 = 0;
    }

    else
    {
      v10 = *v9;
    }

    do
    {
      v11 = *(v6 + 40);
      if (a3 < v11)
      {
        v11 = a3;
      }

      v12 = strncmp((v10 + *(v6 + 32)), (v10 + a2), v11 + 1);
      if (v12 >= 0)
      {
        a5 = v6;
      }

      v6 = *(v6 + ((v12 >> 28) & 8));
    }

    while (v6);
  }

  return a5;
}

void sub_213CBEBA4(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_213C97BD4();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_213CBECD8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v9 = *(a1 + 24);
    if (*v9 == v9[1])
    {
      v10 = 0;
    }

    else
    {
      v10 = *v9;
    }

    do
    {
      while (1)
      {
        v11 = v5;
        v13 = v5[4];
        v12 = v5[5];
        v14 = v12 >= a4 ? a4 : v12;
        if ((strncmp((v10 + a3), (v10 + v13), v14 + 1) & 0x80000000) == 0)
        {
          break;
        }

        v5 = *v11;
        v6 = v11;
        if (!*v11)
        {
          goto LABEL_15;
        }
      }

      if ((strncmp((v10 + v13), (v10 + a3), v14 + 1) & 0x80000000) == 0)
      {
        break;
      }

      v6 = v11 + 1;
      v5 = v11[1];
    }

    while (v5);
  }

  else
  {
    v11 = (a1 + 8);
  }

LABEL_15:
  *a2 = v11;
  return v6;
}

uint64_t sub_213CBED98(flatbuffers::ClassicLocale *a1, char *a2)
{
  v6 = a2;
  v4 = flatbuffers::ClassicLocale::Get(a1);
  *a1 = strtod_l(a2, &v6, v4);
  if (v6 != a2 && !*v6)
  {
    return 1;
  }

  result = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_213CBEE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  sub_213C97EDC(a1, 4 * a3, 4uLL);
  sub_213C97EDC(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      v10 = *(v7 + 4 * v8);
      sub_213C8C398(a1, 4uLL);
      sub_213C8C524(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40) - v10 + 4);
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return sub_213C8C524(a1, a3);
}

uint64_t *sub_213CBEEDC(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    result = sub_213C8C398(result, 4uLL);
    v6 = *(v5 + 32) - *(v5 + 48) + *(v5 + 40) - v3;
    if (v6 != -4 || *(v5 + 80) == 1)
    {
      v7 = sub_213C8C524(v5, v6 + 4);

      return sub_213C982A0(v5, a2, v7);
    }
  }

  return result;
}

BOOL sub_213CBEF78(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 < 8)
  {
    return 0;
  }

  v5 = (*a1 + a2);
  if (strncmp(v5 + 4, "BFBS", 4uLL))
  {
    return 0;
  }

  v6 = v2 - 4;
  if ((a2 & 3) != 0)
  {
    if (v6 < a2 || (*(a1 + 40) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v6 < a2)
  {
    return 0;
  }

  v7 = *v5;
  if (v7 < 1 || v2 - 1 < v7 + a2)
  {
    return 0;
  }

  return sub_213CBF03C(&v5[v7], a1);
}

BOOL sub_213CBF03C(int *a1, uint64_t a2)
{
  result = sub_213C9C85C(a2, a1);
  if (result)
  {
    result = sub_213C9C6E4(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
        if (!sub_213CBF350(a2, v7))
        {
          return 0;
        }

        if (*v7)
        {
          v8 = 0;
          v9 = v7 + 1;
          while (sub_213C9C918((v9 + *v9), a2))
          {
            ++v8;
            ++v9;
            if (v8 >= *v7)
            {
              goto LABEL_10;
            }
          }

          return 0;
        }
      }

      else if (!sub_213CBF350(a2, 0))
      {
        return 0;
      }

LABEL_10:
      result = sub_213C9C6E4(a1, a2, 6u);
      if (!result)
      {
        return result;
      }

      v10 = (a1 - *a1);
      if (*v10 >= 7u && (v11 = v10[3]) != 0)
      {
        v12 = (a1 + v11 + *(a1 + v11));
        if (!sub_213CBF350(a2, v12))
        {
          return 0;
        }

        if (*v12)
        {
          v13 = 0;
          v14 = v12 + 1;
          while (sub_213C9D248((v14 + *v14), a2))
          {
            ++v13;
            ++v14;
            if (v13 >= *v12)
            {
              goto LABEL_18;
            }
          }

          return 0;
        }
      }

      else if (!sub_213CBF350(a2, 0))
      {
        return 0;
      }

LABEL_18:
      result = sub_213C9C758(a1, a2, 8u);
      if (result)
      {
        v15 = (a1 - *a1);
        if (*v15 >= 9u && (v16 = v15[4]) != 0)
        {
          v17 = (a1 + v16 + *(a1 + v16));
        }

        else
        {
          v17 = 0;
        }

        result = sub_213C9C7DC(a2, v17);
        if (result)
        {
          result = sub_213C9C758(a1, a2, 0xAu);
          if (result)
          {
            v18 = (a1 - *a1);
            if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
            {
              v20 = (a1 + v19 + *(a1 + v19));
            }

            else
            {
              v20 = 0;
            }

            result = sub_213C9C7DC(a2, v20);
            if (result)
            {
              result = sub_213C9C758(a1, a2, 0xCu);
              if (result)
              {
                v21 = (a1 - *a1);
                if (*v21 < 0xDu || (v22 = v21[6]) == 0 || (result = sub_213C9C918((a1 + v22 + *(a1 + v22)), a2)))
                {
                  result = sub_213C9C758(a1, a2, 0xEu);
                  if (result)
                  {
                    v23 = (a1 - *a1);
                    if (*v23 >= 0xFu && (v24 = v23[7]) != 0)
                    {
                      v25 = a1 + v24;
                      v26 = *(a1 + v24);
                      if (sub_213CBF350(a2, (a1 + v24 + v26)))
                      {
                        if (!*&v25[v26])
                        {
LABEL_37:
                          --*(a2 + 16);
                          return 1;
                        }

                        v27 = v24;
                        v28 = 0;
                        v29 = (a1 + v26 + v27 + 4);
                        while (sub_213CBF49C((v29 + *v29), a2))
                        {
                          ++v28;
                          ++v29;
                          if (v28 >= *&v25[v26])
                          {
                            goto LABEL_37;
                          }
                        }
                      }
                    }

                    else if (sub_213CBF350(a2, 0))
                    {
                      goto LABEL_37;
                    }

                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_213CBF350(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 5 || v3 - 4 < v2)
  {
    return 0;
  }

  v5 = *a2;
  if (v5 > 0x1FFFFFFE)
  {
    return 0;
  }

  v6 = 4 * v5 + 4;
  v7 = v3 > v6;
  v8 = v3 - v6;
  return v7 && v8 >= v2;
}

BOOL sub_213CBF3B8(int *a1, uint64_t a2)
{
  result = sub_213C9C85C(a2, a1);
  if (result)
  {
    result = sub_213C9C6E4(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_213C9C7DC(a2, v7);
      if (result)
      {
        result = sub_213C9C758(a1, a2, 6u);
        if (result)
        {
          v8 = (a1 - *a1);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = (a1 + v9 + *(a1 + v9));
          }

          else
          {
            v10 = 0;
          }

          result = sub_213C9C7DC(a2, v10);
          if (result)
          {
            --*(a2 + 16);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_213CBF49C(int *a1, uint64_t a2)
{
  result = sub_213C9C85C(a2, a1);
  if (result)
  {
    result = sub_213C9C6E4(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_213C9C7DC(a2, v7);
      if (result)
      {
        result = sub_213C9C758(a1, a2, 6u);
        if (result)
        {
          v8 = (a1 - *a1);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v15 = (a1 + v9 + *(a1 + v9));
            if (!sub_213CBF72C(a2, v15))
            {
              return 0;
            }

            if (*v15)
            {
              v16 = 0;
              v17 = v15 + 1;
              while (sub_213CBF794((v17 + *v17), a2))
              {
                ++v16;
                ++v17;
                if (v16 >= *v15)
                {
                  goto LABEL_13;
                }
              }

              return 0;
            }
          }

          else if (!sub_213CBF72C(a2, 0))
          {
            return 0;
          }

LABEL_13:
          result = sub_213C9C758(a1, a2, 8u);
          if (!result)
          {
            return result;
          }

          v10 = (a1 - *a1);
          if (*v10 >= 9u && (v11 = v10[4]) != 0)
          {
            v12 = (a1 + v11 + *(a1 + v11));
            if (!sub_213C9D0A8(a2, v12))
            {
              return 0;
            }

            if (*v12)
            {
              v13 = 0;
              v14 = v12 + 1;
              while (sub_213CBF3B8((v14 + *v14), a2))
              {
                ++v13;
                ++v14;
                if (v13 >= *v12)
                {
                  goto LABEL_29;
                }
              }

              return 0;
            }
          }

          else if (!sub_213C9D0A8(a2, 0))
          {
            return 0;
          }

LABEL_29:
          result = sub_213C9C758(a1, a2, 0xAu);
          if (!result)
          {
            return result;
          }

          v18 = (a1 - *a1);
          if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
          {
            v20 = (a1 + v19 + *(a1 + v19));
          }

          else
          {
            v20 = 0;
          }

          result = sub_213C9D0A8(a2, v20);
          if (!result)
          {
            return result;
          }

          v21 = (a1 - *a1);
          if (*v21 < 0xBu || (v22 = v21[5]) == 0 || (v23 = (a1 + v22 + *(a1 + v22)), !*v23))
          {
LABEL_41:
            --*(a2 + 16);
            return 1;
          }

          v24 = 0;
          v25 = v23 + 1;
          while (sub_213C9C7DC(a2, (v25 + *v25)))
          {
            ++v24;
            ++v25;
            if (v24 >= *v23)
            {
              goto LABEL_41;
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

BOOL sub_213CBF72C(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 5 || v3 - 4 < v2)
  {
    return 0;
  }

  v5 = *a2;
  if (v5 > 0x1FFFFFFE)
  {
    return 0;
  }

  v6 = 4 * v5 + 4;
  v7 = v3 > v6;
  v8 = v3 - v6;
  return v7 && v8 >= v2;
}

BOOL sub_213CBF794(int *a1, uint64_t a2)
{
  result = sub_213C9C85C(a2, a1);
  if (!result)
  {
    return result;
  }

  result = sub_213C9C6E4(a1, a2, 4u);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  if (*v5 >= 5u && (v6 = v5[2]) != 0)
  {
    v7 = (a1 + v6 + *(a1 + v6));
  }

  else
  {
    v7 = 0;
  }

  result = sub_213C9C7DC(a2, v7);
  if (!result)
  {
    return result;
  }

  result = sub_213C9C6E4(a1, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (a1 - *a1);
  if (*v8 >= 7u)
  {
    v9 = v8[3];
    if (v9)
    {
      result = sub_213C9C918((a1 + v9 + *(a1 + v9)), a2);
      if (!result)
      {
        return result;
      }
    }
  }

  result = sub_213C9C6E4(a1, a2, 8u);
  if (!result)
  {
    return result;
  }

  v10 = (a1 - *a1);
  if (*v10 >= 9u)
  {
    v11 = v10[4];
    if (v11)
    {
      result = sub_213C9C918((a1 + v11 + *(a1 + v11)), a2);
      if (!result)
      {
        return result;
      }
    }
  }

  result = sub_213C9C758(a1, a2, 0xAu);
  if (!result)
  {
    return result;
  }

  v12 = (a1 - *a1);
  if (*v12 >= 0xBu)
  {
    v13 = v12[5];
    if (v13)
    {
      v14 = (a1 + v13 + *(a1 + v13));
      if (sub_213C9D0A8(a2, v14))
      {
        if (*v14)
        {
          v15 = 0;
          v16 = v14 + 1;
          while (sub_213CBF3B8((v16 + *v16), a2))
          {
            ++v15;
            ++v16;
            if (v15 >= *v14)
            {
              goto LABEL_26;
            }
          }

          return 0;
        }

        goto LABEL_26;
      }

      return 0;
    }
  }

  if (!sub_213C9D0A8(a2, 0))
  {
    return 0;
  }

LABEL_26:
  result = sub_213C9C758(a1, a2, 0xCu);
  if (result)
  {
    v17 = (a1 - *a1);
    if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
    {
      v19 = (a1 + v18 + *(a1 + v18));
    }

    else
    {
      v19 = 0;
    }

    result = sub_213C9D0A8(a2, v19);
    if (result)
    {
      v20 = (a1 - *a1);
      if (*v20 < 0xDu || (v21 = v20[6]) == 0 || (v22 = (a1 + v21 + *(a1 + v21)), !*v22))
      {
LABEL_38:
        --*(a2 + 16);
        return 1;
      }

      v23 = 0;
      v24 = v22 + 1;
      while (sub_213C9C7DC(a2, (v24 + *v24)))
      {
        ++v23;
        ++v24;
        if (v23 >= *v22)
        {
          goto LABEL_38;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_213CBFA18(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        v4 = sub_213C997D8(*v3);
        MEMORY[0x21604D1A0](v4, 0x10B2C40EE200C30);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  sub_213CBB6C8(*(a1 + 8));
  return a1;
}

uint64_t sub_213CBFAA0(size_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_213C97BD4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v13[4] = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_213C97BD4();
  }

  v6 = 24 * v2;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1] - *a1;
  v10 = v6 - v9;
  memcpy((v6 - v9), *a1, v9);
  *a1 = v10;
  a1[1] = v7;
  v11 = a1[2];
  a1[2] = 0;
  v13[2] = v8;
  v13[3] = v11;
  v13[0] = v8;
  v13[1] = v8;
  sub_213C9DE90(v13);
  return v7;
}

void *sub_213CBFBD0(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_213C97BD4();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_213C97BD4();
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

uint64_t sub_213CBFCBC(uint64_t a1, uint64_t a2)
{
  v2 = *sub_213CBFD60(a1, &v4, a2);
  if (!v2)
  {
    sub_213C9E480();
  }

  return v2;
}

void *sub_213CBFD60(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v9 = v4 + 4;
        v8 = v4[4];
        v10 = *(v9 + 23);
        if (v10 >= 0)
        {
          v8 = v9;
        }

        if (v10 < 0)
        {
          v10 = v9[1];
        }

        v14 = v8;
        v15 = v10;
        if ((sub_213C986FC(a3, &v14) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_17;
        }
      }

      v11 = *(a3 + 23);
      v12 = *a3;
      if (v11 >= 0)
      {
        v12 = a3;
      }

      if (v11 < 0)
      {
        v11 = *(a3 + 8);
      }

      v14 = v12;
      v15 = v11;
      if ((sub_213C986FC(v9, &v14) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_17:
  *a2 = v7;
  return v5;
}

void sub_213CBFE38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0x8E38E38E38E38E39 * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0x38E38E38E38E38ELL)
    {
      sub_213C97BD4();
    }

    v12 = 0x8E38E38E38E38E39 * ((v7 - v10) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    v20 = a1;
    if (v13)
    {
      if (v13 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_213C97BD4();
    }

    v16 = 0;
    v17 = 8 * ((a2 - v10) >> 3);
    v18 = v17;
    v19 = 0;
    sub_213C9E508(&v16, a3);
    sub_213CC011C(a1, &v16, a2);
    sub_213CC02A0(&v16);
  }

  else if (a2 == v6)
  {
    v8 = *(a3 + 16);
    *v6 = *a3;
    *(v6 + 16) = v8;
    v9 = *(a3 + 32);
    *(v6 + 48) = *(a3 + 48);
    *(v6 + 32) = v9;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    *(v6 + 56) = *(a3 + 56);
    *(v6 + 64) = *(a3 + 64);
    a1[1] = v6 + 72;
  }

  else
  {
    sub_213CC0010(a1, a2, v6, a2 + 72);
    v14 = *a3;
    *(a2 + 10) = *(a3 + 10);
    *a2 = v14;
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }

    v15 = *(a3 + 32);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 32) = v15;
    *(a3 + 55) = 0;
    *(a3 + 32) = 0;
    *(a2 + 56) = *(a3 + 56);
    *(a2 + 64) = *(a3 + 64);
  }
}

__n128 sub_213CC0010(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      v8 = *(v6 + 16);
      *v7 = *v6;
      *(v7 + 16) = v8;
      result = *(v6 + 32);
      *(v7 + 48) = *(v6 + 48);
      *(v7 + 32) = result;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      *(v7 + 56) = *(v6 + 56);
      *(v7 + 64) = *(v6 + 64);
      v6 += 72;
      v7 += 72;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v10 = 0;
    v11 = a4 - v4;
    do
    {
      v12 = v5 + v10;
      v13 = v4 + v10;
      v14 = *(v5 + v10 - 72);
      *(v13 - 62) = *(v5 + v10 - 62);
      *(v13 - 72) = v14;
      v15 = (v4 + v10 - 40);
      if (*(v4 + v10 - 17) < 0)
      {
        operator delete(*v15);
      }

      result = *(v12 - 40);
      *(v4 + v10 - 24) = *(v12 - 24);
      *v15 = result;
      *(v12 - 17) = 0;
      *(v12 - 40) = 0;
      *(v13 - 16) = *(v12 - 16);
      *(v13 - 8) = *(v12 - 8);
      v10 -= 72;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t sub_213CC011C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  v8 = v6;
  v9 = a3;
  if (v7 != a3)
  {
    v10 = a2[2];
    v11 = a3;
    do
    {
      v12 = *(v11 + 16);
      *v10 = *v11;
      *(v10 + 16) = v12;
      v13 = *(v11 + 32);
      *(v10 + 48) = *(v11 + 48);
      *(v10 + 32) = v13;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 32) = 0;
      *(v10 + 56) = *(v11 + 56);
      *(v10 + 64) = *(v11 + 64);
      v11 += 72;
      v10 += 72;
    }

    while (v11 != v7);
    v14 = a3;
    do
    {
      if (*(v14 + 55) < 0)
      {
        operator delete(*(v14 + 32));
      }

      v14 += 72;
    }

    while (v14 != v7);
    v9 = a1[1];
    v8 = a2[1];
  }

  a2[2] += v9 - a3;
  a1[1] = a3;
  v15 = *a1;
  v16 = v8 + *a1 - a3;
  if (*a1 != a3)
  {
    v17 = *a1;
    v18 = v16;
    do
    {
      v19 = *(v17 + 16);
      *v18 = *v17;
      *(v18 + 16) = v19;
      v20 = *(v17 + 32);
      *(v18 + 48) = *(v17 + 48);
      *(v18 + 32) = v20;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 32) = 0;
      *(v18 + 56) = *(v17 + 56);
      *(v18 + 64) = *(v17 + 64);
      v17 += 72;
      v18 += 72;
    }

    while (v17 != a3);
    do
    {
      if (*(v15 + 55) < 0)
      {
        operator delete(*(v15 + 32));
      }

      v15 += 72;
    }

    while (v15 != a3);
  }

  a2[1] = v16;
  v21 = *a1;
  *a1 = v16;
  a1[1] = v21;
  a2[1] = v21;
  v22 = a1[1];
  a1[1] = a2[2];
  a2[2] = v22;
  v23 = a1[2];
  a1[2] = a2[3];
  a2[3] = v23;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_213CC02A0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 72;
      *(a1 + 16) = v2 - 72;
      if (*(v2 - 17) < 0)
      {
        operator delete(*(v2 - 40));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_213CC0304(flatbuffers::ClassicLocale *a1, char *a2)
{
  v7 = a2;
  v4 = flatbuffers::ClassicLocale::Get(a1);
  v5 = strtof_l(a2, &v7, v4);
  *a1 = sub_213CC0384(v5);
  if (v7 != a2 && !*v7)
  {
    return 1;
  }

  result = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_213CC0384(float a1)
{
  v1 = LODWORD(a1) & 0x7FFFFFFF;
  if ((LODWORD(a1) & 0x7FFFFFFFu) - 947912704 >= (LODWORD(a1) & 0x7FFFFFFFu) - 1199570944)
  {
    if (v1 < 0x7F800001)
    {
      if (v1 >> 23 <= 0x8E)
      {
        if (HIBYTE(v1) >= 0x2Du)
        {
          v4 = LODWORD(a1) & 0x7FFFFF | 0x800000;
          v5 = v4 << ((v1 >> 23) - 81) != 0;
          v6 = v4 >> (113 - (v1 >> 23));
          v7 = v6 >> 13;
          v8 = v6 & 0x1FFF | v5;
          v2 = ((v6 >> 13) & 1) + (v6 >> 13);
          if (v8 != 4096)
          {
            LOWORD(v2) = v7;
          }

          if (v8 > 0x1000)
          {
            LOWORD(v2) = v7 + 1;
          }
        }

        else
        {
          LOWORD(v2) = 0;
        }
      }

      else
      {
        LOWORD(v2) = 31744;
      }
    }

    else
    {
      v2 = (LODWORD(a1) >> 13) & 0x1FF | 0x7E00;
    }
  }

  else
  {
    v2 = (LODWORD(a1) >> 13) + 0x4000;
    if ((LOWORD(a1) & 0x1FFF) == 0x1000)
    {
      LOWORD(v2) = ((LODWORD(a1) >> 13) & 1) + v2;
    }

    if ((LOWORD(a1) & 0x1FFFu) > 0x1000)
    {
      LOWORD(v2) = (LODWORD(a1) >> 13) + 16385;
    }
  }

  return (v2 | (LODWORD(a1) >> 31 << 15));
}

void sub_213CC0470(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v9;
      v10 = *(v7 + 32);
      *(v8 + 48) = *(v7 + 48);
      *(v8 + 32) = v10;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      *(v8 + 56) = *(v7 + 56);
      *(v8 + 64) = *(v7 + 64);
      v7 += 72;
      v8 += 72;
    }

    while (v7 != v4);
    do
    {
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      v5 += 72;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_213CC0558(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_213C97BD4();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v11[4] = a1;
  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_213C97BD4();
  }

  v7 = v2 << 6;
  v11[0] = 0;
  v11[1] = v7;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = *(a2 + 56);
  v11[2] = (v2 << 6) + 64;
  v11[3] = 0;
  sub_213CC0658(a1, v11);
  v9 = a1[1];
  sub_213CC0738(v11);
  return v9;
}

void sub_213CC0658(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v9;
      v10 = *(v7 + 32);
      *(v8 + 48) = *(v7 + 48);
      *(v8 + 32) = v10;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      *(v8 + 56) = *(v7 + 56);
      v7 += 64;
      v8 += 64;
    }

    while (v7 != v4);
    do
    {
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      v5 += 64;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_213CC0738(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 64;
      *(a1 + 16) = v2 - 64;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_213CC079C(uint64_t a1, const void **a2)
{
  v2 = *sub_213C9EAFC(a1, &v4, a2);
  if (!v2)
  {
    sub_213C9E480();
  }

  return v2;
}

void *sub_213CC0840(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_213C97BD4();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_213C97BD4();
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void *sub_213CC092C(uint64_t a1, void *a2, int a3, unint64_t a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 32);
        if (v8 <= a3)
        {
          break;
        }

LABEL_3:
        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_12;
        }
      }

      if (v8 >= a3)
      {
        v9 = v7[5];
        if (v9 > a4)
        {
          goto LABEL_3;
        }

        if (v9 >= a4)
        {
          goto LABEL_12;
        }
      }

      result = v7 + 1;
      v5 = v7[1];
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = result;
LABEL_12:
  *a2 = v7;
  return result;
}

uint64_t sub_213CC0988(uint64_t result, uint64_t *a2, uint64_t (**a3)(void), uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = a2 - 1;
LABEL_3:
    for (i = 1 - a4; ; ++i)
    {
      v12 = a2 - v9;
      if (v12 > 2)
      {
        switch(v12)
        {
          case 3uLL:

            return sub_213CA0AE8(v9, v9 + 1, a2 - 1, a3);
          case 4uLL:

            return sub_213CA0BCC(v9, v9 + 1, v9 + 2, a2 - 1, a3);
          case 5uLL:

            return sub_213CA0D20(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
        }
      }

      else
      {
        if (v12 < 2)
        {
          return result;
        }

        if (v12 == 2)
        {
          result = (*a3)(*v10, *v9);
          if (result)
          {
            v20 = *v9;
            *v9 = *v10;
            *v10 = v20;
          }

          return result;
        }
      }

      if (v12 <= 23)
      {
        v21 = v9 + 1;
        v23 = v9 == a2 || v21 == a2;
        if (a5)
        {
          if (!v23)
          {
            v24 = 0;
            v25 = v9;
            do
            {
              v27 = *v25;
              v26 = v25[1];
              v25 = v21;
              result = (*a3)(v26, v27);
              if (result)
              {
                v28 = *v25;
                v29 = v24;
                while (1)
                {
                  *(v9 + v29 + 8) = *(v9 + v29);
                  if (!v29)
                  {
                    break;
                  }

                  result = (*a3)(v28, *(v9 + v29 - 8));
                  v29 -= 8;
                  if ((result & 1) == 0)
                  {
                    v30 = (v9 + v29 + 8);
                    goto LABEL_50;
                  }
                }

                v30 = v9;
LABEL_50:
                *v30 = v28;
              }

              v21 = v25 + 1;
              v24 += 8;
            }

            while (v25 + 1 != a2);
          }
        }

        else if (!v23)
        {
          do
          {
            v32 = *v9;
            v31 = v9[1];
            v9 = v21;
            result = (*a3)(v31, v32);
            if (result)
            {
              v33 = *v9;
              v34 = v9;
              do
              {
                v35 = v34;
                v36 = *--v34;
                *v35 = v36;
                result = (*a3)(v33, *(v35 - 2));
              }

              while ((result & 1) != 0);
              *v34 = v33;
            }

            v21 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }

        return result;
      }

      if (i == 1)
      {
        if (v9 != a2)
        {

          return sub_213CA1324(v9, a2, a2, a3);
        }

        return result;
      }

      v13 = v12 >> 1;
      v14 = &v9[v12 >> 1];
      if (v12 < 0x81)
      {
        sub_213CA0AE8(&v9[v12 >> 1], v9, a2 - 1, a3);
      }

      else
      {
        sub_213CA0AE8(v9, &v9[v12 >> 1], a2 - 1, a3);
        sub_213CA0AE8(v9 + 1, v14 - 1, a2 - 2, a3);
        sub_213CA0AE8(v9 + 2, &v9[v13 + 1], a2 - 3, a3);
        sub_213CA0AE8(v14 - 1, v14, &v9[v13 + 1], a3);
        v15 = *v9;
        *v9 = *v14;
        *v14 = v15;
      }

      if ((a5 & 1) == 0 && ((*a3)(*(v9 - 1), *v9) & 1) == 0)
      {
        result = sub_213CA0DFC(v9, a2, a3);
        v19 = result;
        goto LABEL_20;
      }

      v16 = sub_213CA0F0C(v9, a2, a3);
      if ((v17 & 1) == 0)
      {
        goto LABEL_66;
      }

      v18 = sub_213CA1028(v9, v16, a3);
      v19 = v16 + 1;
      result = sub_213CA1028(v16 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v18)
      {
LABEL_66:
        a4 = -i;
        result = sub_213CC0988(v9, v16, a3, -i, a5 & 1);
        a5 = 0;
        v9 = v16 + 1;
        goto LABEL_3;
      }

LABEL_20:
      v9 = v19;
    }

    a4 = -i;
    a2 = v16;
    if (!v18)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_213CC0DA4(uint64_t a1, uint64_t a2)
{
  v2 = *sub_213CC0E48(a1, &v4, a2);
  if (!v2)
  {
    sub_213C9E480();
  }

  return v2;
}

void *sub_213CC0E48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v9 = v4 + 4;
        v8 = v4[4];
        v10 = *(v9 + 23);
        if (v10 >= 0)
        {
          v8 = v9;
        }

        if (v10 < 0)
        {
          v10 = v9[1];
        }

        v14 = v8;
        v15 = v10;
        if ((sub_213C986FC(a3, &v14) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v11 = *(a3 + 23);
      v12 = *a3;
      if (v11 >= 0)
      {
        v12 = a3;
      }

      if (v11 < 0)
      {
        v11 = *(a3 + 8);
      }

      v14 = v12;
      v15 = v11;
      if ((sub_213C986FC(v9, &v14) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_13:
  *a2 = v7;
  return v5;
}

_OWORD *sub_213CC0F20(uint64_t a1, char *__src, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = &v5[-*a1];
  v13 = v6;
  sub_213C9AA34(a1, v5, __src, &__src[a3 + 1], a3 + 1);
  if (*(a1 + 52))
  {
    v9 = sub_213CC1014(a1 + 64, v6);
    if (a1 + 72 == v9)
    {
      sub_213CA18A0(a1 + 64, v6);
    }

    else
    {
      v10 = v9;
      v11 = *(a1 + 8) - *a1;
      if (v6 > v11)
      {
        sub_213CBEBA4(a1, v6 - v11);
      }

      else if (v6 < v11)
      {
        *(a1 + 8) = *a1 + v6;
      }

      v6 = *(v10 + 32);
    }
  }

  *&v12 = v6;
  *(&v12 + 1) = 4;
  v7 = *(a1 + 32);
  if (v7 >= *(a1 + 40))
  {
    result = sub_213C9AD38(a1 + 24, &v12);
  }

  else
  {
    *v7 = v12;
    result = v7 + 1;
  }

  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213CC1014(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = *(a1 + 24);
  v6 = *v5 == v5[1] ? 0 : *v5;
  v7 = a1 + 8;
  do
  {
    v8 = strcmp((v6 + *(v3 + 32)), (v6 + a2));
    if (v8 >= 0)
    {
      v7 = v3;
    }

    v3 = *(v3 + ((v8 >> 28) & 8));
  }

  while (v3);
  if (v7 == v2 || strcmp((v6 + a2), (v6 + *(v7 + 32))) < 0)
  {
    return v2;
  }

  return v7;
}

void *sub_213CC10B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = *(a1 + 24);
    if (*v7 == v7[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v10 = v4[4];
        if ((strcmp((v8 + a3), (v8 + v10)) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_12;
        }
      }

      if ((strcmp((v8 + v10), (v8 + a3)) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_12:
  *a2 = v9;
  return v5;
}

void sub_213CC1154(uint64_t **a1, uint64_t a2)
{
  sub_213CC119C(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
}

uint64_t *sub_213CC119C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return sub_213CA1A50(v6, a2);
}

uint64_t sub_213CC11F0(uint64_t a1, uint64_t a2)
{
  v2 = *sub_213CBFD60(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_213CC12C8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_213CC1334(a1, a2);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_213C9D958(a1[1], *a2, *(a2 + 8));
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 16);
      *v3 = v4;
    }

    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_213CC1334(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_213C97BD4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v13[4] = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_213C97BD4();
  }

  v6 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_213C9D958(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  v7 = v6 + 24;
  v8 = *a1;
  v9 = a1[1] - *a1;
  v10 = (v6 - v9);
  memcpy(v10, *a1, v9);
  *a1 = v10;
  a1[1] = v7;
  v11 = a1[2];
  a1[2] = 0;
  v13[2] = v8;
  v13[3] = v11;
  v13[0] = v8;
  v13[1] = v8;
  sub_213C9DE90(v13);
  return v7;
}

void *sub_213CC147C(uint64_t a1, const void **a2)
{
  result = sub_213CC1518(a1, &v3, a2);
  if (!*result)
  {
    sub_213CA1E30();
  }

  return result;
}

void *sub_213CC1518(uint64_t a1, void *a2, const void **a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v14 = a2;
    while (1)
    {
      v13 = result;
      v16 = v4;
      v9 = v4[4];
      v8 = v4 + 4;
      v7 = v9;
      v10 = *(v8 + 23);
      if (v10 >= 0)
      {
        v7 = v8;
      }

      if (v10 < 0)
      {
        v10 = v8[1];
      }

      v17 = v7;
      v18 = v10;
      if ((sub_213C986FC(a3, &v17) & 0x80000000) != 0)
      {
        v6 = v16;
        v4 = *v16;
        result = v16;
      }

      else
      {
        v11 = a3;
        v12 = *(a3 + 23);
        if (v12 < 0)
        {
          v11 = *a3;
        }

        if (v12 < 0)
        {
          v12 = a3[1];
        }

        v17 = v11;
        v18 = v12;
        if ((sub_213C986FC(v8, &v17) & 0x80000000) == 0)
        {
          result = v13;
          a2 = v14;
          v6 = v16;
          goto LABEL_3;
        }

        v6 = v16;
        result = v16 + 1;
        v4 = v16[1];
      }

      a2 = v14;
      if (!v4)
      {
        goto LABEL_3;
      }
    }
  }

  v6 = result;
LABEL_3:
  *a2 = v6;
  return result;
}

void sub_213CC15EC(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_213CBBD28(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    sub_213CC119C(a1, v3);
    sub_213CBB9F4((v4 + 4));

    operator delete(v4);
  }
}

uint64_t sub_213CC1654(uint64_t a1, const void **a2)
{
  v2 = *sub_213C985F4(a1, &v4, a2);
  if (!v2)
  {
    sub_213CA1EC4();
  }

  return v2;
}

void sub_213CC16F8(uint64_t a1, uint64_t a2, std::string *a3)
{
  v6 = *(a1 + 12);
  if (v6 < 5)
  {
    if (v6 > 1)
    {
      if (v6 == 4)
      {
        v7 = *a1;
        v8 = *(a1 + 8);
        if (v8 > 3)
        {
          if (v8 > 7)
          {
            v9 = *v7;
          }

          else
          {
            v9 = *v7;
          }
        }

        else if (v8 > 1)
        {
          v9 = *v7;
        }

        else
        {
          v9 = *v7;
        }

        v20 = v7 - v9;
        if (a2)
        {
          v18 = strlen(v7 - v9);
          v16 = v20;
LABEL_50:

          sub_213CA5030(v16, v18, a3, 1, 0);
          return;
        }

        v14 = a3;
        v13 = v7 - v9;
        goto LABEL_14;
      }

      if (v6 != 2)
      {
        goto LABEL_29;
      }

      goto LABEL_55;
    }

    if (!v6)
    {
      v13 = "null";
LABEL_13:
      v14 = a3;
LABEL_14:

      std::string::append(v14, v13);
      return;
    }

    if (v6 != 1)
    {
      goto LABEL_40;
    }

LABEL_57:
    v22 = sub_213CC5D78(a1);
    sub_213C8A670(v22);
LABEL_58:
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (v6 <= 5)
  {
    v10 = *a1;
    v11 = *(a1 + 8);
    if (v11 > 3)
    {
      if (v11 > 7)
      {
        v12 = *v10;
      }

      else
      {
        v12 = *v10;
      }
    }

    else if (v11 > 1)
    {
      v12 = *v10;
    }

    else
    {
      v12 = *v10;
    }

    v16 = v10 - v12;
    v17 = *(a1 + 9);
    if (v17 > 3)
    {
      if (v17 > 7)
      {
        v18 = *(v16 - v17);
      }

      else
      {
        v18 = *(v16 - v17);
      }
    }

    else if (v17 > 1)
    {
      v18 = *(v16 - v17);
    }

    else
    {
      v18 = *(v16 - v17);
    }

    goto LABEL_50;
  }

  if (v6 <= 7)
  {
    if (v6 != 6)
    {
LABEL_55:
      v21 = sub_213CC606C(a1);
      sub_213C8CE90(v21);
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v6 == 8)
  {
LABEL_29:
    v15 = sub_213CC6360(a1);
    sub_213CB9B98(12, &__p, v15);
    goto LABEL_58;
  }

  if (v6 != 9)
  {
    if (v6 == 26)
    {
      if (sub_213CC665C(a1))
      {
        v13 = "true";
      }

      else
      {
        v13 = "false";
      }

      goto LABEL_13;
    }

LABEL_40:
    if ((v6 - 9) <= 1)
    {
      sub_213CC6878(&__p, a1);
      sub_213CC6780(a3, &__p, a2);
      return;
    }

    if (v6 <= 0x24 && ((1 << v6) & 0x100000F800) != 0)
    {
      sub_213CC6A10(&__p, a1);
      sub_213CC6930(a3, &__p, a2);
      return;
    }

    v19 = v6 - 16;
    if ((v6 - 16) <= 8)
    {
      v38 = v6 - 16;
      v39 = (v6 - 16) / 3u + 2;
      v40 = (v19 - 3 * (v38 / 3u) + 1);
      v41 = *a1;
      v42 = *(a1 + 8);
      if (v42 > 3)
      {
        if (v42 > 7)
        {
          v43 = *v41;
        }

        else
        {
          v43 = *v41;
        }
      }

      else if (v42 > 1)
      {
        v43 = *v41;
      }

      else
      {
        v43 = *v41;
      }

      v44 = v41 - v43;
      v45 = *(a1 + 9);
      __p.__r_.__value_.__r.__words[0] = v44;
      __p.__r_.__value_.__s.__data_[8] = v45;
      HIDWORD(__p.__r_.__value_.__r.__words[1]) = v40;
      __p.__r_.__value_.__s.__data_[16] = v39;
      sub_213CC6AE4(a3, &__p, a2);
      return;
    }

    if (v6 == 25)
    {
      sub_213CC6BC4(&__p, a1);
      sub_213CA5030(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2], a3, 1, 0);
      return;
    }

    v13 = "(?)";
    goto LABEL_13;
  }

  std::string::append(a3, "{ ");
  if (*(a1 + 12) == 9)
  {
    v25 = *a1;
    v26 = *(a1 + 8);
    if (v26 > 3)
    {
      if (v26 > 7)
      {
        v27 = *v25;
      }

      else
      {
        v27 = *v25;
      }
    }

    else if (v26 > 1)
    {
      v27 = *v25;
    }

    else
    {
      v27 = *v25;
    }

    v28 = v25 - v27;
    v29 = *(a1 + 9);
    if (v29 > 3)
    {
      sub_213CC66CC(&__p, v25 - v27, v29);
      if (v29 >= 8)
      {
        v30 = *&v28[-v29];
      }

      else
      {
        v30 = *&v28[-v29];
      }

      goto LABEL_74;
    }

    if (v29 >= 2)
    {
      sub_213CC66CC(&__p, v25 - v27, v29);
      v30 = *&v28[-v29];
      goto LABEL_74;
    }
  }

  else
  {
    v28 = &unk_213CC7D11;
    LODWORD(v29) = 1;
  }

  sub_213CC66CC(&__p, v28, v29);
  v29 = v29;
  v30 = v28[-v29];
LABEL_74:
  v31 = __p.__r_.__value_.__r.__words[2];
  if (__p.__r_.__value_.__r.__words[2])
  {
    v32 = 0;
    v33 = __p.__r_.__value_.__r.__words[0];
    v34 = __p.__r_.__value_.__s.__data_[8];
    v46 = &v28[v30 * v29];
    v47 = __p.__r_.__value_.__s.__data_[8] | (v51 << 32) | 0x100;
    v35 = __p.__r_.__value_.__r.__words[2] - 1;
    do
    {
      v48 = v33;
      v49 = v47;
      sub_213CC16F8(&v48, a2, a3);
      std::string::append(a3, ": ");
      if (v30 <= v32)
      {
        v37 = 0;
        v36 = 257;
      }

      else
      {
        v36 = ((v46[v32] >> 2) << 32) | ((1 << (v46[v32] & 3)) << 8) | v29;
        v37 = v28;
      }

      v48 = v37;
      v49 = v36;
      sub_213CC16F8(&v48, a2, a3);
      if (v32 < v35)
      {
        std::string::append(a3, ", ");
      }

      ++v32;
      v28 += v29;
      v33 += v34;
    }

    while (v31 != v32);
  }

  std::string::append(a3, " }");
}

void sub_213CC1CB0(std::string **a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v8 = (a3 + v7);
LABEL_3:
    v9 = *v8;
    goto LABEL_4;
  }

  if (*(a2 + 207) >= 0)
  {
    v10 = (a2 + 184);
  }

  else
  {
    v10 = *(a2 + 184);
  }

  sub_213CC0304(&v13, v10);
  v9 = v13;
  v11 = (a3 - *a3);
  if (*v11 > v7)
  {
    v12 = *(v11 + v7);
    if (v12)
    {
      v8 = (a3 + v12);
      goto LABEL_3;
    }
  }

LABEL_4:
  sub_213CC2180(a1, v9, *(a2 + 152), *(a2 + 168));
}

void sub_213CC1D50(std::string **a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v8 = (a3 + v7);
LABEL_3:
    v9 = *v8;
    goto LABEL_4;
  }

  if (*(a2 + 207) >= 0)
  {
    v10 = (a2 + 184);
  }

  else
  {
    v10 = *(a2 + 184);
  }

  v14 = 0;
  v11 = sub_213C98C40(&v14, v10, 0, 0);
  v9 = v14;
  if (v14 >= 0xFFFF)
  {
    v9 = -1;
  }

  if (!v11)
  {
    v9 = 0;
  }

  v12 = (a3 - *a3);
  if (*v12 > v7)
  {
    v13 = *(v12 + v7);
    if (v13)
    {
      v8 = (a3 + v13);
      goto LABEL_3;
    }
  }

LABEL_4:
  sub_213CC2548(a1, v9, *(a2 + 152), *(a2 + 168));
}

void sub_213CC1E0C(std::string **a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v8 = (a3 + v7);
LABEL_3:
    v9 = *v8;
    goto LABEL_4;
  }

  if (*(a2 + 207) >= 0)
  {
    v10 = (a2 + 184);
  }

  else
  {
    v10 = *(a2 + 184);
  }

  v15 = 0;
  v11 = sub_213C98C40(&v15, v10, 0, 0);
  v9 = 0;
  if (v11)
  {
    v12 = 0x8000;
    if (v15 > -32768)
    {
      v12 = v15;
    }

    if (v15 < 0x8000)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0x7FFF;
    }
  }

  v13 = (a3 - *a3);
  if (*v13 > v7)
  {
    v14 = *(v13 + v7);
    if (v14)
    {
      v8 = (a3 + v14);
      goto LABEL_3;
    }
  }

LABEL_4:
  sub_213CC28BC(a1, v9, *(a2 + 152), *(a2 + 168));
}

void sub_213CC1ED4(std::string **a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v8 = (a3 + v7);
LABEL_3:
    v9 = *v8;
    goto LABEL_4;
  }

  if (*(a2 + 207) >= 0)
  {
    v10 = (a2 + 184);
  }

  else
  {
    v10 = *(a2 + 184);
  }

  v15 = 0;
  v11 = sub_213C98C40(&v15, v10, 0, 0);
  v9 = 0;
  if (v11)
  {
    v12 = 0x80000000;
    if (v15 > 0xFFFFFFFF80000000)
    {
      v12 = v15;
    }

    if (v15 <= 0x7FFFFFFF)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0x7FFFFFFFLL;
    }
  }

  v13 = (a3 - *a3);
  if (*v13 > v7)
  {
    v14 = *(v13 + v7);
    if (v14)
    {
      v8 = (a3 + v14);
      goto LABEL_3;
    }
  }

LABEL_4:
  sub_213CC2C2C(a1, v9, *(a2 + 152), *(a2 + 168));
}

void sub_213CC1F98(std::string **a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v8 = (a3 + v7);
LABEL_3:
    v9 = *v8;
    goto LABEL_4;
  }

  v13 = 0;
  if (*(a2 + 207) >= 0)
  {
    v10 = (a2 + 184);
  }

  else
  {
    v10 = *(a2 + 184);
  }

  sub_213C98C40(&v13, v10, 0, 1);
  v9 = v13;
  v11 = (a3 - *a3);
  if (*v11 > v7)
  {
    v12 = *(v11 + v7);
    if (v12)
    {
      v8 = (a3 + v12);
      goto LABEL_3;
    }
  }

LABEL_4:
  sub_213CC2FA8(a1, v9, *(a2 + 152), *(a2 + 168));
}

void sub_213CC2040(std::string **a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v8 = (a3 + v7);
LABEL_3:
    v9 = *v8;
    goto LABEL_4;
  }

  v13 = 0.0;
  if (*(a2 + 207) >= 0)
  {
    v10 = (a2 + 184);
  }

  else
  {
    v10 = *(a2 + 184);
  }

  sub_213CBD204(&v13, v10);
  v9 = v13;
  v11 = (a3 - *a3);
  if (*v11 > v7)
  {
    v12 = *(v11 + v7);
    if (v12)
    {
      v8 = (a3 + v12);
      goto LABEL_3;
    }
  }

LABEL_4:
  sub_213CC3314(a1, *(a2 + 152), *(a2 + 168), v9);
}

void sub_213CC20E0(std::string **a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v8 = (a3 + v7);
LABEL_3:
    v9 = *v8;
    goto LABEL_4;
  }

  v13 = 0.0;
  if (*(a2 + 207) >= 0)
  {
    v10 = (a2 + 184);
  }

  else
  {
    v10 = *(a2 + 184);
  }

  sub_213CBED98(&v13, v10);
  v9 = v13;
  v11 = (a3 - *a3);
  if (*v11 > v7)
  {
    v12 = *(v11 + v7);
    if (v12)
    {
      v8 = (a3 + v12);
      goto LABEL_3;
    }
  }

LABEL_4:
  sub_213CC369C(a1, *(a2 + 152), *(a2 + 168), v9);
}

void sub_213CC2180(std::string **a1, __int16 a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    if (sub_213CBCF6C(a2) == 0.0)
    {
      v6 = "false";
    }

    else
    {
      v6 = "true";
    }

    v7 = a1[1];

    std::string::append(v7, v6);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && a4 != 0)
  {
    v13 = sub_213CBCF6C(a2);
    v14 = flatbuffers::EnumDef::ReverseLookup(a4, v13, 0);
    if (v14)
    {
      v15 = v14;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v16 = *(a4 + 23);
        if (v16 >= 0)
        {
          v17 = a4;
        }

        else
        {
          v17 = *a4;
        }

        if (v16 >= 0)
        {
          v18 = *(a4 + 23);
        }

        else
        {
          v18 = *(a4 + 8);
        }

        std::string::append(a1[1], v17, v18);
      }

      v19 = *(v15 + 23);
      if (v19 >= 0)
      {
        v20 = v15;
      }

      else
      {
        v20 = *v15;
      }

      if (v19 >= 0)
      {
        v21 = *(v15 + 23);
      }

      else
      {
        v21 = *(v15 + 8);
      }

      std::string::append(a1[1], v20, v21);
      v22 = a1[1];

      std::string::push_back(v22, 34);
      return;
    }

    if (sub_213CBCF6C(a2) != 0.0)
    {
      *(&__p.__r_.__value_.__s + 23) = 9;
      strcpy(&__p, "bit_flags");
      v23 = sub_213C9E148(a4 + 72, &__p.__r_.__value_.__l.__data_);
      v24 = a4 + 80 != v23 && *(v23 + 56) != 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v24)
      {
        v25 = a1[1];
        if ((SHIBYTE(v25->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          __n = v25->__r_.__value_.__l.__size_;
        }

        else
        {
          __n = SHIBYTE(v25->__r_.__value_.__r.__words[2]);
        }

        v26 = sub_213CBCF6C(a2);
        std::string::push_back(a1[1], 34);
        v27 = *(a4 + 208);
        v28 = *(a4 + 216);
        if (v27 != v28)
        {
          v29 = 0;
          v45 = v26;
          do
          {
            v30 = *v27;
            *(&__p.__r_.__value_.__s + 23) = 13;
            strcpy(&__p, "bit_flags_set");
            v31 = sub_213C9E148((v30 + 11), &__p.__r_.__value_.__l.__data_);
            v32 = v30 + 12 == v31 || *(v31 + 56) == 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v32)
            {
              v33 = v30[17];
              if ((v33 & v45) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v34 = *(a4 + 23);
                  if (v34 >= 0)
                  {
                    v35 = a4;
                  }

                  else
                  {
                    v35 = *a4;
                  }

                  if (v34 >= 0)
                  {
                    v36 = *(a4 + 23);
                  }

                  else
                  {
                    v36 = *(a4 + 8);
                  }

                  std::string::append(a1[1], v35, v36);
                }

                v29 |= v33;
                v37 = *(*v27 + 23);
                if (v37 >= 0)
                {
                  v38 = *v27;
                }

                else
                {
                  v38 = **v27;
                }

                if (v37 >= 0)
                {
                  v39 = *(*v27 + 23);
                }

                else
                {
                  v39 = (*v27)[1];
                }

                std::string::append(a1[1], v38, v39);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v27;
          }

          while (v27 != v28);
          if (v29 && v29 == v45)
          {
            v40 = a1[1];
            v41 = SHIBYTE(v40->__r_.__value_.__r.__words[2]);
            if (v41 < 0)
            {
              size = v40->__r_.__value_.__l.__size_;
            }

            else
            {
              size = SHIBYTE(v40->__r_.__value_.__r.__words[2]);
            }

            v43 = size - 1;
            if ((v41 & 0x80000000) != 0)
            {
              v40 = v40->__r_.__value_.__r.__words[0];
            }

            v40->__r_.__value_.__s.__data_[v43] = 34;
            return;
          }
        }

        std::string::resize(a1[1], __n, 0);
      }
    }
  }

  v10 = sub_213CBCF6C(a2);
  sub_213CBCFD0(6, &__p, v10);
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
    v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1[1], p_p, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_213CC2548(std::string **a1, uint64_t a2, int a3, flatbuffers::EnumDef *this)
{
  v4 = a2;
  if (a3 == 2)
  {
    if (a2)
    {
      v6 = "true";
    }

    else
    {
      v6 = "false";
    }

    v7 = a1[1];

    std::string::append(v7, v6);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
  {
    v10 = a2;
    v11 = flatbuffers::EnumDef::ReverseLookup(this, a2, 0);
    if (v11)
    {
      v12 = v11;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v13 = *(this + 23);
        if (v13 >= 0)
        {
          v14 = this;
        }

        else
        {
          v14 = *this;
        }

        if (v13 >= 0)
        {
          v15 = *(this + 23);
        }

        else
        {
          v15 = *(this + 1);
        }

        std::string::append(a1[1], v14, v15);
      }

      v16 = *(v12 + 23);
      if (v16 >= 0)
      {
        v17 = v12;
      }

      else
      {
        v17 = *v12;
      }

      if (v16 >= 0)
      {
        v18 = *(v12 + 23);
      }

      else
      {
        v18 = *(v12 + 8);
      }

      std::string::append(a1[1], v17, v18);
      v19 = a1[1];

      std::string::push_back(v19, 34);
      return;
    }

    if (v4)
    {
      v46 = 9;
      strcpy(__p, "bit_flags");
      v20 = sub_213C9E148(this + 72, __p);
      v21 = (this + 80) != v20 && v20[7] != 0;
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21)
      {
        v22 = a1[1];
        size = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v22->__r_.__value_.__l.__size_;
        }

        __n = size;
        v44 = v4;
        std::string::push_back(v22, 34);
        v24 = *(this + 26);
        v25 = *(this + 27);
        if (v24 == v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          do
          {
            v27 = *v24;
            v46 = 13;
            strcpy(__p, "bit_flags_set");
            v28 = sub_213C9E148((v27 + 11), __p);
            v29 = v27 + 12 == v28 || *(v28 + 56) == 0;
            if (v46 < 0)
            {
              operator delete(__p[0]);
            }

            if (v29)
            {
              v30 = v27[17];
              if ((v30 & v10) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v31 = *(this + 23);
                  if (v31 >= 0)
                  {
                    v32 = this;
                  }

                  else
                  {
                    v32 = *this;
                  }

                  if (v31 >= 0)
                  {
                    v33 = *(this + 23);
                  }

                  else
                  {
                    v33 = *(this + 1);
                  }

                  std::string::append(a1[1], v32, v33);
                }

                v26 |= v30;
                v34 = *(*v24 + 23);
                if (v34 >= 0)
                {
                  v35 = *v24;
                }

                else
                {
                  v35 = **v24;
                }

                if (v34 >= 0)
                {
                  v36 = *(*v24 + 23);
                }

                else
                {
                  v36 = (*v24)[1];
                }

                std::string::append(a1[1], v35, v36);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v24;
          }

          while (v24 != v25);
        }

        v37 = a1[1];
        if (v26 == v10)
        {
          v38 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
          if (v38 < 0)
          {
            v39 = v37->__r_.__value_.__l.__size_;
          }

          else
          {
            v39 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
          }

          v40 = v39 - 1;
          if ((v38 & 0x80000000) != 0)
          {
            v37 = v37->__r_.__value_.__r.__words[0];
          }

          v37->__r_.__value_.__s.__data_[v40] = 34;
          return;
        }

        std::string::resize(v37, __n, 0);
        v4 = v44;
      }
    }
  }

  sub_213CB5FD8(v4);
  if (v46 >= 0)
  {
    v41 = __p;
  }

  else
  {
    v41 = __p[0];
  }

  if (v46 >= 0)
  {
    v42 = v46;
  }

  else
  {
    v42 = __p[1];
  }

  std::string::append(a1[1], v41, v42);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_213CC28BC(std::string **a1, uint64_t a2, int a3, flatbuffers::EnumDef *this)
{
  v4 = a2;
  if (a3 == 2)
  {
    if (a2)
    {
      v6 = "true";
    }

    else
    {
      v6 = "false";
    }

    v7 = a1[1];

    std::string::append(v7, v6);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
  {
    v10 = a2;
    v11 = flatbuffers::EnumDef::ReverseLookup(this, a2, 0);
    if (v11)
    {
      v12 = v11;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v13 = *(this + 23);
        if (v13 >= 0)
        {
          v14 = this;
        }

        else
        {
          v14 = *this;
        }

        if (v13 >= 0)
        {
          v15 = *(this + 23);
        }

        else
        {
          v15 = *(this + 1);
        }

        std::string::append(a1[1], v14, v15);
      }

      v16 = *(v12 + 23);
      if (v16 >= 0)
      {
        v17 = v12;
      }

      else
      {
        v17 = *v12;
      }

      if (v16 >= 0)
      {
        v18 = *(v12 + 23);
      }

      else
      {
        v18 = *(v12 + 8);
      }

      std::string::append(a1[1], v17, v18);
      v19 = a1[1];

      std::string::push_back(v19, 34);
      return;
    }

    if (v4)
    {
      v46 = 9;
      strcpy(__p, "bit_flags");
      v20 = sub_213C9E148(this + 72, __p);
      v21 = (this + 80) != v20 && v20[7] != 0;
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21)
      {
        v22 = a1[1];
        size = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v22->__r_.__value_.__l.__size_;
        }

        __n = size;
        v44 = v4;
        std::string::push_back(v22, 34);
        v24 = *(this + 26);
        v25 = *(this + 27);
        if (v24 == v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          do
          {
            v27 = *v24;
            v46 = 13;
            strcpy(__p, "bit_flags_set");
            v28 = sub_213C9E148((v27 + 11), __p);
            v29 = v27 + 12 == v28 || *(v28 + 56) == 0;
            if (v46 < 0)
            {
              operator delete(__p[0]);
            }

            if (v29)
            {
              v30 = v27[17];
              if ((v30 & v10) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v31 = *(this + 23);
                  if (v31 >= 0)
                  {
                    v32 = this;
                  }

                  else
                  {
                    v32 = *this;
                  }

                  if (v31 >= 0)
                  {
                    v33 = *(this + 23);
                  }

                  else
                  {
                    v33 = *(this + 1);
                  }

                  std::string::append(a1[1], v32, v33);
                }

                v26 |= v30;
                v34 = *(*v24 + 23);
                if (v34 >= 0)
                {
                  v35 = *v24;
                }

                else
                {
                  v35 = **v24;
                }

                if (v34 >= 0)
                {
                  v36 = *(*v24 + 23);
                }

                else
                {
                  v36 = (*v24)[1];
                }

                std::string::append(a1[1], v35, v36);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v24;
          }

          while (v24 != v25);
        }

        v37 = a1[1];
        if (v26 == v10)
        {
          v38 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
          if (v38 < 0)
          {
            v39 = v37->__r_.__value_.__l.__size_;
          }

          else
          {
            v39 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
          }

          v40 = v39 - 1;
          if ((v38 & 0x80000000) != 0)
          {
            v37 = v37->__r_.__value_.__r.__words[0];
          }

          v37->__r_.__value_.__s.__data_[v40] = 34;
          return;
        }

        std::string::resize(v37, __n, 0);
        v4 = v44;
      }
    }
  }

  sub_213CB5F68(v4);
  if (v46 >= 0)
  {
    v41 = __p;
  }

  else
  {
    v41 = __p[0];
  }

  if (v46 >= 0)
  {
    v42 = v46;
  }

  else
  {
    v42 = __p[1];
  }

  std::string::append(a1[1], v41, v42);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_213CC2C2C(std::string **a1, uint64_t a2, int a3, flatbuffers::EnumDef *this)
{
  if (a3 == 2)
  {
    if (a2)
    {
      v6 = "true";
    }

    else
    {
      v6 = "false";
    }

    v7 = a1[1];

    std::string::append(v7, v6);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
  {
    v12 = flatbuffers::EnumDef::ReverseLookup(this, a2, 0);
    if (v12)
    {
      v13 = v12;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v14 = *(this + 23);
        if (v14 >= 0)
        {
          v15 = this;
        }

        else
        {
          v15 = *this;
        }

        if (v14 >= 0)
        {
          v16 = *(this + 23);
        }

        else
        {
          v16 = *(this + 1);
        }

        std::string::append(a1[1], v15, v16);
      }

      v17 = *(v13 + 23);
      if (v17 >= 0)
      {
        v18 = v13;
      }

      else
      {
        v18 = *v13;
      }

      if (v17 >= 0)
      {
        v19 = *(v13 + 23);
      }

      else
      {
        v19 = *(v13 + 8);
      }

      std::string::append(a1[1], v18, v19);
      v20 = a1[1];

      std::string::push_back(v20, 34);
      return;
    }

    if (a2)
    {
      v44 = 9;
      strcpy(__p, "bit_flags");
      v21 = sub_213C9E148(this + 72, __p);
      v22 = (this + 80) != v21 && v21[7] != 0;
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      if (v22)
      {
        v23 = a1[1];
        size = SHIBYTE(v23->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v23->__r_.__value_.__l.__size_;
        }

        __n = size;
        std::string::push_back(v23, 34);
        v25 = *(this + 26);
        v26 = *(this + 27);
        if (v25 == v26)
        {
          v42 = 0;
        }

        else
        {
          v42 = 0;
          do
          {
            v27 = *v25;
            v44 = 13;
            strcpy(__p, "bit_flags_set");
            v28 = sub_213C9E148((v27 + 11), __p);
            v29 = v27 + 12 == v28 || *(v28 + 56) == 0;
            if (v44 < 0)
            {
              operator delete(__p[0]);
            }

            if (v29)
            {
              v30 = v27[17];
              if ((v30 & a2) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v31 = *(this + 23);
                  if (v31 >= 0)
                  {
                    v32 = this;
                  }

                  else
                  {
                    v32 = *this;
                  }

                  if (v31 >= 0)
                  {
                    v33 = *(this + 23);
                  }

                  else
                  {
                    v33 = *(this + 1);
                  }

                  std::string::append(a1[1], v32, v33);
                }

                v42 |= v30;
                v34 = *(*v25 + 23);
                if (v34 >= 0)
                {
                  v35 = *v25;
                }

                else
                {
                  v35 = **v25;
                }

                if (v34 >= 0)
                {
                  v36 = *(*v25 + 23);
                }

                else
                {
                  v36 = (*v25)[1];
                }

                std::string::append(a1[1], v35, v36);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v25;
          }

          while (v25 != v26);
        }

        v37 = a1[1];
        if (v42 == a2)
        {
          v38 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
          if (v38 < 0)
          {
            v39 = v37->__r_.__value_.__l.__size_;
          }

          else
          {
            v39 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
          }

          v40 = v39 - 1;
          if ((v38 & 0x80000000) != 0)
          {
            v37 = v37->__r_.__value_.__r.__words[0];
          }

          v37->__r_.__value_.__s.__data_[v40] = 34;
          return;
        }

        std::string::resize(v37, __n, 0);
      }
    }
  }

  sub_213C8A4E8(a2);
  if (v44 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v44 >= 0)
  {
    v11 = v44;
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(a1[1], v10, v11);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_213CC2FA8(std::string **a1, uint64_t a2, int a3, flatbuffers::EnumDef *this)
{
  if (a3 == 2)
  {
    if (a2)
    {
      v6 = "true";
    }

    else
    {
      v6 = "false";
    }

    v7 = a1[1];

    std::string::append(v7, v6);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
  {
    v12 = flatbuffers::EnumDef::ReverseLookup(this, a2, 0);
    if (v12)
    {
      v13 = v12;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v14 = *(this + 23);
        if (v14 >= 0)
        {
          v15 = this;
        }

        else
        {
          v15 = *this;
        }

        if (v14 >= 0)
        {
          v16 = *(this + 23);
        }

        else
        {
          v16 = *(this + 1);
        }

        std::string::append(a1[1], v15, v16);
      }

      v17 = *(v13 + 23);
      if (v17 >= 0)
      {
        v18 = v13;
      }

      else
      {
        v18 = *v13;
      }

      if (v17 >= 0)
      {
        v19 = *(v13 + 23);
      }

      else
      {
        v19 = *(v13 + 8);
      }

      std::string::append(a1[1], v18, v19);
      v20 = a1[1];

      std::string::push_back(v20, 34);
      return;
    }

    if (a2)
    {
      v44 = 9;
      strcpy(__p, "bit_flags");
      v21 = sub_213C9E148(this + 72, __p);
      v22 = (this + 80) != v21 && v21[7] != 0;
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      if (v22)
      {
        v23 = a1[1];
        size = SHIBYTE(v23->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v23->__r_.__value_.__l.__size_;
        }

        __n = size;
        std::string::push_back(v23, 34);
        v25 = *(this + 26);
        v26 = *(this + 27);
        if (v25 == v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = 0;
          do
          {
            v28 = *v25;
            v44 = 13;
            strcpy(__p, "bit_flags_set");
            v29 = sub_213C9E148((v28 + 11), __p);
            v30 = v28 + 12 == v29 || *(v29 + 56) == 0;
            if (v44 < 0)
            {
              operator delete(__p[0]);
            }

            if (v30)
            {
              v31 = v28[17];
              if ((v31 & a2) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v32 = *(this + 23);
                  if (v32 >= 0)
                  {
                    v33 = this;
                  }

                  else
                  {
                    v33 = *this;
                  }

                  if (v32 >= 0)
                  {
                    v34 = *(this + 23);
                  }

                  else
                  {
                    v34 = *(this + 1);
                  }

                  std::string::append(a1[1], v33, v34);
                }

                v27 |= v31;
                v35 = *(*v25 + 23);
                if (v35 >= 0)
                {
                  v36 = *v25;
                }

                else
                {
                  v36 = **v25;
                }

                if (v35 >= 0)
                {
                  v37 = *(*v25 + 23);
                }

                else
                {
                  v37 = (*v25)[1];
                }

                std::string::append(a1[1], v36, v37);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v25;
          }

          while (v25 != v26);
        }

        v38 = a1[1];
        if (v27 == a2)
        {
          v39 = SHIBYTE(v38->__r_.__value_.__r.__words[2]);
          if (v39 < 0)
          {
            v40 = v38->__r_.__value_.__l.__size_;
          }

          else
          {
            v40 = SHIBYTE(v38->__r_.__value_.__r.__words[2]);
          }

          v41 = v40 - 1;
          if ((v39 & 0x80000000) != 0)
          {
            v38 = v38->__r_.__value_.__r.__words[0];
          }

          v38->__r_.__value_.__s.__data_[v41] = 34;
          return;
        }

        std::string::resize(v38, __n, 0);
      }
    }
  }

  sub_213C8A670(a2);
  if (v44 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v44 >= 0)
  {
    v11 = v44;
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(a1[1], v10, v11);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_213CC3314(std::string **a1, int a2, flatbuffers::EnumDef *this, float a4)
{
  if (a2 == 2)
  {
    if (a4 == 0.0)
    {
      v6 = "false";
    }

    else
    {
      v6 = "true";
    }

    v7 = a1[1];

    std::string::append(v7, v6);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
  {
    v10 = flatbuffers::EnumDef::ReverseLookup(this, a4, 0);
    if (v10)
    {
      v11 = v10;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v12 = *(this + 23);
        if (v12 >= 0)
        {
          v13 = this;
        }

        else
        {
          v13 = *this;
        }

        if (v12 >= 0)
        {
          v14 = *(this + 23);
        }

        else
        {
          v14 = *(this + 1);
        }

        std::string::append(a1[1], v13, v14);
      }

      v15 = *(v11 + 23);
      if (v15 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = *v11;
      }

      if (v15 >= 0)
      {
        v17 = *(v11 + 23);
      }

      else
      {
        v17 = *(v11 + 8);
      }

      std::string::append(a1[1], v16, v17);
      v18 = a1[1];

      std::string::push_back(v18, 34);
      return;
    }

    if (a4 != 0.0)
    {
      *(&__p.__r_.__value_.__s + 23) = 9;
      strcpy(&__p, "bit_flags");
      v19 = sub_213C9E148(this + 72, &__p.__r_.__value_.__l.__data_);
      v20 = (this + 80) != v19 && v19[7] != 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v20)
      {
        v21 = a1[1];
        size = SHIBYTE(v21->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v21->__r_.__value_.__l.__size_;
        }

        __n = size;
        std::string::push_back(v21, 34);
        v23 = *(this + 26);
        v24 = *(this + 27);
        if (v23 != v24)
        {
          v25 = 0;
          v26 = a4;
          do
          {
            v27 = *v23;
            *(&__p.__r_.__value_.__s + 23) = 13;
            strcpy(&__p, "bit_flags_set");
            v28 = sub_213C9E148((v27 + 11), &__p.__r_.__value_.__l.__data_);
            v29 = v27 + 12 == v28 || *(v28 + 56) == 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v29)
            {
              v30 = v27[17];
              if ((v30 & v26) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v31 = *(this + 23);
                  if (v31 >= 0)
                  {
                    v32 = this;
                  }

                  else
                  {
                    v32 = *this;
                  }

                  if (v31 >= 0)
                  {
                    v33 = *(this + 23);
                  }

                  else
                  {
                    v33 = *(this + 1);
                  }

                  std::string::append(a1[1], v32, v33);
                }

                v25 |= v30;
                v34 = *(*v23 + 23);
                if (v34 >= 0)
                {
                  v35 = *v23;
                }

                else
                {
                  v35 = **v23;
                }

                if (v34 >= 0)
                {
                  v36 = *(*v23 + 23);
                }

                else
                {
                  v36 = (*v23)[1];
                }

                std::string::append(a1[1], v35, v36);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v23;
          }

          while (v23 != v24);
          if (v25 && v25 == v26)
          {
            v37 = a1[1];
            v38 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
            if (v38 < 0)
            {
              v39 = v37->__r_.__value_.__l.__size_;
            }

            else
            {
              v39 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
            }

            v40 = v39 - 1;
            if ((v38 & 0x80000000) != 0)
            {
              v37 = v37->__r_.__value_.__r.__words[0];
            }

            v37->__r_.__value_.__s.__data_[v40] = 34;
            return;
          }
        }

        std::string::resize(a1[1], __n, 0);
      }
    }
  }

  sub_213CBCFD0(6, &__p, a4);
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
    v42 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1[1], p_p, v42);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_213CC369C(std::string **a1, int a2, flatbuffers::EnumDef *this, double a4)
{
  if (a2 == 2)
  {
    if (a4 == 0.0)
    {
      v6 = "false";
    }

    else
    {
      v6 = "true";
    }

    v7 = a1[1];

    std::string::append(v7, v6);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
  {
    v10 = flatbuffers::EnumDef::ReverseLookup(this, a4, 0);
    if (v10)
    {
      v11 = v10;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v12 = *(this + 23);
        if (v12 >= 0)
        {
          v13 = this;
        }

        else
        {
          v13 = *this;
        }

        if (v12 >= 0)
        {
          v14 = *(this + 23);
        }

        else
        {
          v14 = *(this + 1);
        }

        std::string::append(a1[1], v13, v14);
      }

      v15 = *(v11 + 23);
      if (v15 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = *v11;
      }

      if (v15 >= 0)
      {
        v17 = *(v11 + 23);
      }

      else
      {
        v17 = *(v11 + 8);
      }

      std::string::append(a1[1], v16, v17);
      v18 = a1[1];

      std::string::push_back(v18, 34);
      return;
    }

    if (a4 != 0.0)
    {
      *(&__p.__r_.__value_.__s + 23) = 9;
      strcpy(&__p, "bit_flags");
      v19 = sub_213C9E148(this + 72, &__p.__r_.__value_.__l.__data_);
      v20 = (this + 80) != v19 && v19[7] != 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v20)
      {
        v21 = a1[1];
        size = SHIBYTE(v21->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v21->__r_.__value_.__l.__size_;
        }

        __n = size;
        std::string::push_back(v21, 34);
        v23 = *(this + 26);
        v24 = *(this + 27);
        if (v23 != v24)
        {
          v25 = 0;
          v26 = a4;
          do
          {
            v27 = *v23;
            *(&__p.__r_.__value_.__s + 23) = 13;
            strcpy(&__p, "bit_flags_set");
            v28 = sub_213C9E148((v27 + 11), &__p.__r_.__value_.__l.__data_);
            v29 = v27 + 12 == v28 || *(v28 + 56) == 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v29)
            {
              v30 = v27[17];
              if ((v30 & v26) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v31 = *(this + 23);
                  if (v31 >= 0)
                  {
                    v32 = this;
                  }

                  else
                  {
                    v32 = *this;
                  }

                  if (v31 >= 0)
                  {
                    v33 = *(this + 23);
                  }

                  else
                  {
                    v33 = *(this + 1);
                  }

                  std::string::append(a1[1], v32, v33);
                }

                v25 |= v30;
                v34 = *(*v23 + 23);
                if (v34 >= 0)
                {
                  v35 = *v23;
                }

                else
                {
                  v35 = **v23;
                }

                if (v34 >= 0)
                {
                  v36 = *(*v23 + 23);
                }

                else
                {
                  v36 = (*v23)[1];
                }

                std::string::append(a1[1], v35, v36);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v23;
          }

          while (v23 != v24);
          if (v25 && v25 == v26)
          {
            v37 = a1[1];
            v38 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
            if (v38 < 0)
            {
              v39 = v37->__r_.__value_.__l.__size_;
            }

            else
            {
              v39 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
            }

            v40 = v39 - 1;
            if ((v38 & 0x80000000) != 0)
            {
              v37 = v37->__r_.__value_.__r.__words[0];
            }

            v37->__r_.__value_.__s.__data_[v40] = 34;
            return;
          }
        }

        std::string::resize(a1[1], __n, 0);
      }
    }
  }

  sub_213CB9B98(12, &__p, a4);
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
    v42 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1[1], p_p, v42);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_213CC3A24(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v19 = v10 - 5;
    v14 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (v19 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC2180(a1, *(v15 + 2 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CC3BD8(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    __n_4 = v10 - 5;
    v14 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (__n_4 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CA3CF4(a1, *(v15 + 8 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CC3D8C(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v19 = v10 - 5;
    v14 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (v19 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC2548(a1, *(v15 + 2 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CC3F40(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    __n_4 = v10 - 5;
    v14 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (__n_4 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CA47C0(a1, *(v15 + v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CC40F4(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v19 = v10 - 5;
    v14 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (v19 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC28BC(a1, *(v15 + 2 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CC42A8(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v19 = v10 - 5;
    v14 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (v19 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC2C2C(a1, *(v15 + 4 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CC445C(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v19 = v10 - 5;
    v14 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (v19 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC2FA8(a1, *(v15 + 8 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CC4610(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v19 = v10 - 5;
    v14 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (v19 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC3314(a1, *a4, *(a4 + 16), *(v15 + 4 * v12));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CC47C4(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v19 = v10 - 5;
    v14 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (v19 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC369C(a1, *a4, *(a4 + 16), *(v15 + 8 * v12));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CC4978(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v18 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (v18 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC2180(a1, *(a2 + 2 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

void sub_213CC4B28(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    __n_4 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (__n_4 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CA3CF4(a1, *(a2 + 8 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

void sub_213CC4CD8(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    __n_4 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (__n_4 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CA4080(a1, *(a2 + 4 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

void sub_213CC4E88(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v18 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (v18 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC2548(a1, *(a2 + 2 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

void sub_213CC5038(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    __n_4 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (__n_4 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CA4420(a1, *(a2 + v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

void sub_213CC51E8(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    __n_4 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (__n_4 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CA47C0(a1, *(a2 + v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}

void sub_213CC5398(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v18 = v10 - 5;
    v14 = v10 - 3;
    v15 = 1;
    do
    {
      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v16 = v13 % 0xC;
        if (v18 >= 0xFFFFFFFE && v16)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v16)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CC28BC(a1, *(a2 + 2 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v15++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v17 = a1[1];

  std::string::push_back(v17, 93);
}