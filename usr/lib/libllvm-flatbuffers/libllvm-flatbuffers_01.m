BOOL sub_213C97BE4(flatbuffers::ClassicLocale *a1, char *a2, int a3, int a4)
{
  v7 = a1;
  do
  {
    if (a3 > 0)
    {
      if (a4)
      {
        a1 = __error();
        *a1 = 0;
      }

      v17 = a2;
      v15 = flatbuffers::ClassicLocale::Get(a1);
      *v7 = strtoull_l(a2, &v17, a3, v15);
      if (v17 == a2 || *v17 != 0)
      {
        goto LABEL_14;
      }

      return !a4 || !*__error();
    }

    v8 = a2;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v11 = v10 - 48;
      if (v10)
      {
        v12 = v11 > 9;
      }

      else
      {
        v12 = 0;
      }
    }

    while (v12);
    if (v9 != 48)
    {
      break;
    }

    a3 = 16;
  }

  while ((*v8 & 0xDF) == 0x58);
  if (a4)
  {
    a1 = __error();
    *a1 = 0;
  }

  v17 = a2;
  v13 = flatbuffers::ClassicLocale::Get(a1);
  *v7 = strtoull_l(a2, &v17, 10, v13);
  if (v17 == a2 || *v17)
  {
LABEL_14:
    result = 0;
    *v7 = 0;
    return result;
  }

  return !a4 || !*__error();
}

uint64_t sub_213C97D08(uint64_t a1, void *__src, size_t __n)
{
  if (*(a1 + 72) <= 3uLL)
  {
    *(a1 + 72) = 4;
  }

  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = (*(a1 + 32) + v6);
  v10 = (~__n + v8 - (*(a1 + 32) + v6)) & 3;
  if (v8 - v7 < v10)
  {
    sub_213C97F80(a1, v10);
    *(a1 + 48) -= v10;
  }

  else
  {
    v11 = v8 - v10;
    *(a1 + 48) = v8 - v10;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
  do
  {
    *(*(a1 + 48) + v19++) = 0;
  }

  while (v10 != v19);
  v11 = *(a1 + 48);
  v7 = *(a1 + 56);
LABEL_5:
  if (v11 == v7)
  {
    sub_213C97F80(a1, 1uLL);
    v11 = *(a1 + 48);
  }

  *(a1 + 48) = v11 - 1;
  *(v11 - 1) = 0;
  if (__n)
  {
    v12 = *(a1 + 48);
    if (v12 - *(a1 + 56) < __n)
    {
      sub_213C97F80(a1, __n);
      v12 = *(a1 + 48);
    }

    *(a1 + 48) = v12 - __n;
    memcpy((v12 - __n), __src, __n);
  }

  if (*(a1 + 72) <= 3uLL)
  {
    *(a1 + 72) = 4;
  }

  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = (v13 - (*(a1 + 32) + *(a1 + 40))) & 3;
  if (v13 - v14 < v15)
  {
    sub_213C97F80(a1, (v13 - (*(a1 + 32) + *(a1 + 40))) & 3);
    *(a1 + 48) -= v15;
  }

  else
  {
    v16 = v13 - v15;
    *(a1 + 48) = v16;
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  v20 = 0;
  do
  {
    *(*(a1 + 48) + v20++) = 0;
  }

  while (v15 != v20);
  v16 = *(a1 + 48);
  v14 = *(a1 + 56);
LABEL_15:
  if ((v16 - v14) <= 3)
  {
    sub_213C97F80(a1, 4uLL);
    v16 = *(a1 + 48);
  }

  *(v16 - 4) = __n;
  v17 = v16 - 4;
  *(a1 + 48) = v17;
  return (*(a1 + 32) - v17 + *(a1 + 40));
}

uint64_t sub_213C97EDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  if (*(result + 72) < a3)
  {
    *(result + 72) = a3;
  }

  v4 = *(result + 48);
  v5 = (a3 - 1) & (-a2 - (*(result + 32) - v4 + *(result + 40)));
  if (v4 - *(result + 56) < v5)
  {
    result = sub_213C97F80(result, (a3 - 1) & (-a2 - (*(result + 32) - v4 + *(result + 40))));
    *(v3 + 48) -= v5;
  }

  else
  {
    *(result + 48) = v4 - v5;
    if (!v5)
    {
      return result;
    }
  }

  v6 = 0;
  do
  {
    *(*(v3 + 48) + v6++) = 0;
  }

  while (v5 != v6);
  return result;
}

uint64_t sub_213C97F80(uint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = v4 - a1[6] + v3;
  v6 = a1[7] - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = a1[2];
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (v3 + a1[3] + v7 - 1) & -a1[3];
  a1[4] = v8;
  v9 = *a1;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_282634DD0;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_282634DD0;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + a1[4] - v5;
  a1[5] = result;
  a1[6] = v11;
  a1[7] = result + v6;
  return result;
}

char *sub_213C9817C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*a1 + 16))(a1, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*a1 + 24))(a1, a2, a3);
  return v12;
}

void sub_213C98280(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x21604D180);
  }
}

uint64_t *sub_213C982A0(uint64_t *result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  v6 = result[7];
  if ((result[6] - v6) <= 7)
  {
    result = sub_213C97F80(result, 8uLL);
    v6 = v5[7];
  }

  *v6 = a3 | (a2 << 32);
  v5[7] += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return result;
}

void *sub_213C98328(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    sub_213C9843C(*(v2 + 8));
    MEMORY[0x21604D1A0](v2, 0x1060C40C2B13FB5);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*a1)
    {
      v4 = a1[4];
      (*(**a1 + 24))(*a1);
    }

    else
    {
      MEMORY[0x21604D180](v3, 0x1000C8077774924);
    }
  }

  a1[5] = 0;
  if (*(a1 + 8) == 1 && *a1)
  {
    (*(**a1 + 8))(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

void sub_213C9843C(void *a1)
{
  if (a1)
  {
    sub_213C9843C(*a1);
    sub_213C9843C(a1[1]);

    operator delete(a1);
  }
}

void sub_213C98488(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t sub_213C9852C(uint64_t a1, const void **a2)
{
  v2 = *sub_213C985F4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_213C985F4(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = v11;
        }

        v15 = v10[1];
        if (v13 >= 0)
        {
          v16 = v13;
        }

        else
        {
          v16 = v15;
        }

        if (v16 >= v7)
        {
          v17 = v7;
        }

        else
        {
          v17 = v16;
        }

        v18 = memcmp(v8, v14, v17);
        v19 = v7 < v16;
        if (v18)
        {
          v19 = v18 < 0;
        }

        if (!v19)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_26;
        }
      }

      v20 = memcmp(v14, v8, v17);
      v21 = v16 < v7;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (!v21)
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

LABEL_26:
  *a2 = v9;
  return v5;
}

uint64_t sub_213C986FC(const void **a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  if (v4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  LODWORD(result) = memcmp(a1, v3, v7);
  if (v5 < v4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v4 < v5;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v9;
  }
}

uint64_t *sub_213C98758(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
            }

            v11[2] = v3;
            *(v2[2] + 8 * (*v2[2] != v2)) = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v17 = *(v4 + 8);
          *v3 = v17;
          if (v17)
          {
            *(v17 + 16) = v3;
          }

          v18 = v3[2];
          *(v4 + 16) = v18;
          v18[*v18 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v13 = v10[1];
            *v2 = v13;
            if (v13)
            {
              *(v13 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            *(v2[2] + 8 * (*v2[2] != v2)) = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v14 = v3[1];
          v15 = *v14;
          v3[1] = *v14;
          if (v15)
          {
            *(v15 + 16) = v3;
          }

          v16 = v3[2];
          v14[2] = v16;
          v16[*v16 != v3] = v14;
          *v14 = v3;
          v3[2] = v14;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *sub_213C98980(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }
    }

    sub_213C97BD4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_213C98AD0(void ***a1)
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
        if (*(v4 - 17) < 0)
        {
          operator delete(*(v4 - 5));
        }

        v4 -= 9;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_213C98B5C(char *a1)
{
  if (a1)
  {
    sub_213C98B5C(*a1);
    sub_213C98B5C(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_213C98BBC(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        MEMORY[0x21604D1A0](*v3, 0x1020C4001A1C0B8);
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

BOOL sub_213C98C40(flatbuffers::ClassicLocale *a1, char *a2, int a3, int a4)
{
  v7 = a1;
  do
  {
    if (a3 > 0)
    {
      if (a4)
      {
        a1 = __error();
        *a1 = 0;
      }

      v17 = a2;
      v15 = flatbuffers::ClassicLocale::Get(a1);
      *v7 = strtoll_l(a2, &v17, a3, v15);
      if (v17 == a2 || *v17 != 0)
      {
        goto LABEL_14;
      }

      return !a4 || !*__error();
    }

    v8 = a2;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v11 = v10 - 48;
      if (v10)
      {
        v12 = v11 > 9;
      }

      else
      {
        v12 = 0;
      }
    }

    while (v12);
    if (v9 != 48)
    {
      break;
    }

    a3 = 16;
  }

  while ((*v8 & 0xDF) == 0x58);
  if (a4)
  {
    a1 = __error();
    *a1 = 0;
  }

  v17 = a2;
  v13 = flatbuffers::ClassicLocale::Get(a1);
  *v7 = strtoll_l(a2, &v17, 10, v13);
  if (v17 == a2 || *v17)
  {
LABEL_14:
    result = 0;
    *v7 = 0;
    return result;
  }

  return !a4 || !*__error();
}

uint64_t sub_213C98D6C(uint64_t a1)
{
  sub_213C98DC4(a1 + 88);
  v3 = (a1 + 24);
  sub_213C9DC58(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_213C98DC4(uint64_t a1)
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
        if (*(v5 + 55) < 0)
        {
          operator delete(*(v5 + 32));
        }

        MEMORY[0x21604D1A0](v5, 0x1032C40E9BF265ALL);
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

void sub_213C98EA0(std::string *a1)
{
  sub_213CBCFD0(6, &v12, 0.0);
  v2 = std::string::insert(&v12, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v13, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213CBCFD0(6, &__p, 0.0);
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

  v8 = std::string::append(&v14, p_p, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v15, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_213C98FF0(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 24;
  v3 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v6 = a1 + 24;
  v7 = MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 24);
  v9 = *(MEMORY[0x277D82818] + 16);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  *(a1 + 8) = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, (a1 + 24));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v11 = v7[5];
  v12 = v7[4];
  *(a1 + 16) = v12;
  *(v4 + *(v12 - 24)) = v11;
  v13 = v7[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v7[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  MEMORY[0x21604D120](a1 + 32);
  v15 = MEMORY[0x277D82878] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = v15;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_213C992D0(v6);
  return a1;
}

void sub_213C992D0(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_213C993D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_213C99528(std::string *a1)
{
  sub_213CBCFD0(6, &v12, -3.4028e38);
  v2 = std::string::insert(&v12, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v13, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213CBCFD0(6, &__p, 3.4028e38);
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

  v8 = std::string::append(&v14, p_p, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v15, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_213C99680(std::string *a1)
{
  sub_213CB9B98(12, &v12, -1.79769313e308);
  v2 = std::string::insert(&v12, 0, "[");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v13, "; ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_213CB9B98(12, &__p, 1.79769313e308);
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

  v8 = std::string::append(&v14, p_p, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v15, "]");
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_213C997D8(uint64_t a1)
{
  sub_213C98DC4(a1 + 72);
  v3 = (a1 + 48);
  sub_213C9DC58(&v3);
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

uint64_t sub_213C99840(uint64_t a1)
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
        if (*(v4 + 207) < 0)
        {
          operator delete(*(v4 + 184));
        }

        sub_213C98DC4(v4 + 72);
        v6 = (v4 + 48);
        sub_213C9DC58(&v6);
        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }

        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        MEMORY[0x21604D1A0](v4, 0x10B2C40559199D4);
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

uint64_t sub_213C99920(__int128 *a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  if (**a4 == (*a4)[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = **a4;
  }

  v9 = *a2;
  v10 = strcmp((v8 + *a2), (v8 + *a1));
  result = strcmp((v8 + *a3), (v8 + v9));
  if (v10 < 0)
  {
    if ((result & 0x80000000) != 0)
    {
      v13 = *a1;
      v12 = a1[1];
      v14 = a3[1];
      *a1 = *a3;
      a1[1] = v14;
LABEL_18:
      *a3 = v13;
      a3[1] = v12;
      return result;
    }

    v23 = *a1;
    v22 = a1[1];
    v24 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v24;
    *a2 = v23;
    *(a2 + 1) = v22;
    if (**a4 == (*a4)[1])
    {
      v25 = 0;
    }

    else
    {
      v25 = **a4;
    }

    result = strcmp((v25 + *a3), (v25 + *a2));
    if ((result & 0x80000000) != 0)
    {
      v13 = *a2;
      v12 = *(a2 + 1);
      v26 = a3[1];
      *a2 = *a3;
      *(a2 + 1) = v26;
      goto LABEL_18;
    }
  }

  else if ((result & 0x80000000) != 0)
  {
    v16 = *a2;
    v15 = *(a2 + 1);
    v17 = a3[1];
    *a2 = *a3;
    *(a2 + 1) = v17;
    *a3 = v16;
    a3[1] = v15;
    v18 = **a4 == (*a4)[1] ? 0 : **a4;
    result = strcmp((v18 + *a2), (v18 + *a1));
    if ((result & 0x80000000) != 0)
    {
      v20 = *a1;
      v19 = a1[1];
      v21 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v21;
      *a2 = v20;
      *(a2 + 1) = v19;
    }
  }

  return result;
}

__n128 sub_213C99A54(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t **a5)
{
  sub_213C99920(a1, a2, a3, a5);
  if (**a5 == (*a5)[1])
  {
    v10 = 0;
  }

  else
  {
    v10 = **a5;
  }

  if (strcmp((v10 + *a4), (v10 + *a3)) < 0)
  {
    v13 = *a3;
    v12 = a3[1];
    v14 = a4[1];
    *a3 = *a4;
    a3[1] = v14;
    *a4 = v13;
    a4[1] = v12;
    v15 = **a5 == (*a5)[1] ? 0 : **a5;
    if (strcmp((v15 + *a3), (v15 + *a2)) < 0)
    {
      v17 = *a2;
      v16 = *(a2 + 16);
      v18 = a3[1];
      *a2 = *a3;
      *(a2 + 16) = v18;
      *a3 = v17;
      a3[1] = v16;
      if (**a5 == (*a5)[1])
      {
        v19 = 0;
      }

      else
      {
        v19 = **a5;
      }

      if (strcmp((v19 + *a2), (v19 + *a1)) < 0)
      {
        v20 = *a1;
        result = *(a1 + 16);
        v21 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v21;
        *a2 = v20;
        *(a2 + 16) = result;
      }
    }
  }

  return result;
}

__n128 sub_213C99B4C(__int128 *a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t **a6)
{
  sub_213C99920(a1, a2, a3, a6);
  v12 = **a6;
  v13 = (*a6)[1];
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = **a6;
  }

  if (strcmp((v14 + *a4), (v14 + *a3)) < 0)
  {
    v16 = *a3;
    v15 = a3[1];
    v17 = a4[1];
    *a3 = *a4;
    a3[1] = v17;
    *a4 = v16;
    a4[1] = v15;
    v12 = **a6;
    v13 = (*a6)[1];
    v18 = v12 == v13 ? 0 : **a6;
    if (strcmp((v18 + *a3), (v18 + *a2)) < 0)
    {
      v20 = *a2;
      v19 = *(a2 + 16);
      v21 = a3[1];
      *a2 = *a3;
      *(a2 + 16) = v21;
      *a3 = v20;
      a3[1] = v19;
      v12 = **a6;
      v13 = (*a6)[1];
      v22 = v12 == v13 ? 0 : **a6;
      if (strcmp((v22 + *a2), (v22 + *a1)) < 0)
      {
        v24 = *a1;
        v23 = a1[1];
        v25 = *(a2 + 16);
        *a1 = *a2;
        a1[1] = v25;
        *a2 = v24;
        *(a2 + 16) = v23;
        v12 = **a6;
        v13 = (*a6)[1];
      }
    }
  }

  if (v12 == v13)
  {
    v26 = 0;
  }

  else
  {
    v26 = v12;
  }

  if (strcmp((v26 + *a5), (v26 + *a4)) < 0)
  {
    v29 = *a4;
    v28 = a4[1];
    v30 = a5[1];
    *a4 = *a5;
    a4[1] = v30;
    *a5 = v29;
    a5[1] = v28;
    v31 = **a6 == (*a6)[1] ? 0 : **a6;
    if (strcmp((v31 + *a4), (v31 + *a3)) < 0)
    {
      v33 = *a3;
      v32 = a3[1];
      v34 = a4[1];
      *a3 = *a4;
      a3[1] = v34;
      *a4 = v33;
      a4[1] = v32;
      v35 = **a6 == (*a6)[1] ? 0 : **a6;
      if (strcmp((v35 + *a3), (v35 + *a2)) < 0)
      {
        v37 = *a2;
        v36 = *(a2 + 16);
        v38 = a3[1];
        *a2 = *a3;
        *(a2 + 16) = v38;
        *a3 = v37;
        a3[1] = v36;
        if (**a6 == (*a6)[1])
        {
          v39 = 0;
        }

        else
        {
          v39 = **a6;
        }

        if (strcmp((v39 + *a2), (v39 + *a1)) < 0)
        {
          v40 = *a1;
          result = a1[1];
          v41 = *(a2 + 16);
          *a1 = *a2;
          a1[1] = v41;
          *a2 = v40;
          *(a2 + 16) = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_213C99D38(uint64_t result, uint64_t a2, uint64_t **a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v4 = result;
    v5 = result + 32;
    if (result + 32 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        if (**a3 == (*a3)[1])
        {
          v10 = 0;
        }

        else
        {
          v10 = **a3;
        }

        v11 = *(v8 + 32);
        result = strcmp((v10 + v11), (v10 + *v8));
        if ((result & 0x80000000) != 0)
        {
          v18 = *(v8 + 40);
          v19 = *(v8 + 56);
          v12 = v7;
          while (1)
          {
            v13 = v4 + v12;
            v14 = *(v4 + v12 + 16);
            *(v13 + 32) = *(v4 + v12);
            *(v13 + 48) = v14;
            if (!v12)
            {
              break;
            }

            if (**a3 == (*a3)[1])
            {
              v15 = 0;
            }

            else
            {
              v15 = **a3;
            }

            result = strcmp((v15 + v11), (v15 + *(v13 - 32)));
            v12 -= 32;
            if ((result & 0x80000000) == 0)
            {
              v16 = v4 + v12 + 32;
              goto LABEL_16;
            }
          }

          v16 = v4;
LABEL_16:
          *v16 = v11;
          *(v16 + 8) = v18;
          *(v16 + 24) = v19;
        }

        v5 = v9 + 32;
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 32 != a2);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213C99E78(uint64_t result, _OWORD *a2, uint64_t **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 32);
    if ((result + 32) != a2)
    {
      do
      {
        v7 = v5;
        if (**a3 == (*a3)[1])
        {
          v8 = 0;
        }

        else
        {
          v8 = **a3;
        }

        v9 = *(v4 + 4);
        result = strcmp((v8 + v9), (v8 + *v4));
        if ((result & 0x80000000) != 0)
        {
          v15 = *(v4 + 40);
          v16 = *(v4 + 7);
          v10 = v7;
          do
          {
            v11 = v10 - 2;
            v12 = *(v10 - 1);
            *v10 = *(v10 - 2);
            v10[1] = v12;
            if (**a3 == (*a3)[1])
            {
              v13 = 0;
            }

            else
            {
              v13 = **a3;
            }

            result = strcmp((v13 + v9), (v13 + *(v10 - 8)));
            v10 = v11;
          }

          while ((result & 0x80000000) != 0);
          *v11 = v9;
          *(v11 + 8) = v15;
          *(v11 + 3) = v16;
        }

        v5 = v7 + 2;
        v4 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_213C99F90(unint64_t a1, _OWORD *a2, uint64_t **a3)
{
  v4 = a2;
  v23 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v21 = *(a1 + 8);
  v22 = *(a1 + 24);
  if (**a3 == (*a3)[1])
  {
    v7 = 0;
  }

  else
  {
    v7 = **a3;
  }

  if (strcmp((v7 + v6), (v7 + *(a2 - 4))) < 0)
  {
    v8 = a1;
    do
    {
      v9 = *(v8 + 32);
      v8 += 32;
    }

    while ((strcmp((v7 + v6), (v7 + v9)) & 0x80000000) == 0);
  }

  else
  {
    v10 = a1 + 32;
    do
    {
      v8 = v10;
      if (v10 >= v4)
      {
        break;
      }

      v10 += 32;
    }

    while ((strcmp((v7 + v6), (v7 + *v8)) & 0x80000000) == 0);
  }

  if (v8 < v4)
  {
    do
    {
      v11 = *(v4 - 4);
      v4 -= 2;
    }

    while (strcmp((v7 + v6), (v7 + v11)) < 0);
  }

  while (v8 < v4)
  {
    v19 = *v8;
    v20 = *(v8 + 16);
    v12 = v4[1];
    *v8 = *v4;
    *(v8 + 16) = v12;
    *v4 = v19;
    v4[1] = v20;
    if (**a3 == (*a3)[1])
    {
      v13 = 0;
    }

    else
    {
      v13 = **a3;
    }

    do
    {
      v14 = *(v8 + 32);
      v8 += 32;
    }

    while ((strcmp((v13 + v6), (v13 + v14)) & 0x80000000) == 0);
    do
    {
      v15 = *(v4 - 4);
      v4 -= 2;
    }

    while (strcmp((v13 + v6), (v13 + v15)) < 0);
  }

  if (v8 - 32 != a1)
  {
    v16 = *(v8 - 16);
    *a1 = *(v8 - 32);
    *(a1 + 16) = v16;
  }

  *(v8 - 32) = v6;
  *(v8 - 8) = v22;
  *(v8 - 24) = v21;
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

__n128 sub_213C9A124(uint64_t *a1, _OWORD *a2, uint64_t **a3)
{
  v6 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v25 = a1[3];
  v7 = *a1;
  v24 = *(a1 + 1);
  if (**a3 == (*a3)[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = **a3;
  }

  do
  {
    v9 = strcmp((v8 + a1[v6 + 4]), (v8 + v7));
    v6 += 4;
  }

  while (v9 < 0);
  v10 = &a1[v6];
  if (v6 == 4)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v12 = *(a2 - 4);
      a2 -= 2;
    }

    while ((strcmp((v8 + v12), (v8 + v7)) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2 - 4);
      a2 -= 2;
    }

    while ((strcmp((v8 + v11), (v8 + v7)) & 0x80000000) == 0);
  }

  v13 = &a1[v6];
  if (v10 < a2)
  {
    v14 = a2;
    do
    {
      v15 = *v13;
      v23 = *(v13 + 16);
      v16 = v14[1];
      *v13 = *v14;
      *(v13 + 16) = v16;
      *v14 = v15;
      v14[1] = v23;
      if (**a3 == (*a3)[1])
      {
        v17 = 0;
      }

      else
      {
        v17 = **a3;
      }

      do
      {
        v18 = *(v13 + 32);
        v13 += 32;
      }

      while (strcmp((v17 + v18), (v17 + v7)) < 0);
      do
      {
        v19 = *(v14 - 4);
        v14 -= 2;
      }

      while ((strcmp((v17 + v19), (v17 + v7)) & 0x80000000) == 0);
    }

    while (v13 < v14);
  }

  if ((v13 - 32) != a1)
  {
    v20 = *(v13 - 16);
    *a1 = *(v13 - 32);
    *(a1 + 1) = v20;
  }

  *(v13 - 32) = v7;
  result = v24;
  *(v13 - 8) = v25;
  *(v13 - 24) = v24;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_213C9A2B0(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_213C99920(a1, (a1 + 32), (a2 - 32), a3);
        break;
      case 4:
        sub_213C99920(a1, (a1 + 32), (a1 + 64), a3);
        v25 = *(a2 - 32);
        v24 = (a2 - 32);
        v23 = v25;
        if (**a3 == (*a3)[1])
        {
          v26 = 0;
        }

        else
        {
          v26 = **a3;
        }

        if (strcmp((v26 + v23), (v26 + *(a1 + 64))) < 0)
        {
          v28 = *(a1 + 64);
          v27 = *(a1 + 80);
          v29 = v24[1];
          *(a1 + 64) = *v24;
          *(a1 + 80) = v29;
          *v24 = v28;
          v24[1] = v27;
          v30 = **a3 == (*a3)[1] ? 0 : **a3;
          if (strcmp((v30 + *(a1 + 64)), (v30 + *(a1 + 32))) < 0)
          {
            v32 = *(a1 + 32);
            v31 = *(a1 + 48);
            v33 = *(a1 + 80);
            *(a1 + 32) = *(a1 + 64);
            *(a1 + 48) = v33;
            *(a1 + 64) = v32;
            *(a1 + 80) = v31;
            v34 = **a3 == (*a3)[1] ? 0 : **a3;
            if (strcmp((v34 + *(a1 + 32)), (v34 + *a1)) < 0)
            {
              v36 = *a1;
              v35 = *(a1 + 16);
              v37 = *(a1 + 48);
              *a1 = *(a1 + 32);
              *(a1 + 16) = v37;
              *(a1 + 32) = v36;
              *(a1 + 48) = v35;
            }
          }
        }

        break;
      case 5:
        sub_213C99B4C(a1, a1 + 32, (a1 + 64), (a1 + 96), (a2 - 32), a3);
        break;
      default:
        goto LABEL_14;
    }

LABEL_44:
    result = 1;
    goto LABEL_45;
  }

  if (v6 < 2)
  {
    goto LABEL_44;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 32);
    if (**a3 == (*a3)[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = **a3;
    }

    if (strcmp((v8 + *(a2 - 32)), (v8 + *a1)) < 0)
    {
      v10 = *a1;
      v9 = *(a1 + 16);
      v11 = v7[1];
      *a1 = *v7;
      *(a1 + 16) = v11;
      *v7 = v10;
      v7[1] = v9;
    }

    goto LABEL_44;
  }

LABEL_14:
  v12 = (a1 + 64);
  sub_213C99920(a1, (a1 + 32), (a1 + 64), a3);
  v13 = a1 + 96;
  if (a1 + 96 == a2)
  {
    goto LABEL_44;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = **a3 == (*a3)[1] ? 0 : **a3;
    v17 = *v13;
    if (strcmp((v16 + *v13), (v16 + *v12)) < 0)
    {
      v40 = *(v13 + 8);
      v41 = *(v13 + 24);
      v18 = v14;
      while (1)
      {
        v19 = a1 + v18;
        v20 = *(a1 + v18 + 80);
        *(v19 + 96) = *(a1 + v18 + 64);
        *(v19 + 112) = v20;
        if (v18 == -64)
        {
          break;
        }

        if (**a3 == (*a3)[1])
        {
          v21 = 0;
        }

        else
        {
          v21 = **a3;
        }

        v18 -= 32;
        if ((strcmp((v21 + v17), (v21 + *(v19 + 32))) & 0x80000000) == 0)
        {
          v22 = a1 + v18 + 96;
          goto LABEL_28;
        }
      }

      v22 = a1;
LABEL_28:
      *v22 = v17;
      *(v22 + 8) = v40;
      *(v22 + 24) = v41;
      if (++v15 == 8)
      {
        break;
      }
    }

    v12 = v13;
    v14 += 32;
    v13 += 32;
    if (v13 == a2)
    {
      goto LABEL_44;
    }
  }

  result = v13 + 32 == a2;
LABEL_45:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213C9A594(uint64_t result, _OWORD *a2, _OWORD *a3, uint64_t **a4)
{
  v43 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v6 = a2;
    v7 = result;
    v8 = (a2 - result) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (result + 32 * v9);
      do
      {
        result = sub_213C9A82C(v7, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**a4 == (*a4)[1])
        {
          v13 = 0;
        }

        else
        {
          v13 = **a4;
        }

        result = strcmp((v13 + *v12), (v13 + *v7));
        if ((result & 0x80000000) != 0)
        {
          v15 = *v12;
          v14 = v12[1];
          v16 = *(v7 + 16);
          *v12 = *v7;
          v12[1] = v16;
          *v7 = v15;
          *(v7 + 16) = v14;
          result = sub_213C9A82C(v7, a4, v8, v7);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v17 = 0;
        v39 = *v7;
        v40 = *(v7 + 16);
        v18 = v7;
        do
        {
          v19 = &v18[2 * v17];
          v20 = v19 + 2;
          v21 = (2 * v17) | 1;
          v22 = 2 * v17 + 2;
          if (v22 >= v8)
          {
            v17 = (2 * v17) | 1;
          }

          else
          {
            if (**a4 == (*a4)[1])
            {
              v23 = 0;
            }

            else
            {
              v23 = **a4;
            }

            v25 = *(v19 + 8);
            v24 = v19 + 4;
            result = strcmp((v23 + *(v24 - 4)), (v23 + v25));
            if (result >= 0)
            {
              v17 = v21;
            }

            else
            {
              v20 = v24;
              v17 = v22;
            }
          }

          v26 = v20[1];
          *v18 = *v20;
          v18[1] = v26;
          v18 = v20;
        }

        while (v17 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v20 == v6)
        {
          *v20 = v39;
          v20[1] = v40;
        }

        else
        {
          v27 = v6[1];
          *v20 = *v6;
          v20[1] = v27;
          *v6 = v39;
          v6[1] = v40;
          v28 = (v20 - v7 + 32) >> 5;
          v29 = v28 < 2;
          v30 = v28 - 2;
          if (!v29)
          {
            v31 = v30 >> 1;
            v32 = v7 + 32 * (v30 >> 1);
            v33 = **a4 == (*a4)[1] ? 0 : **a4;
            v34 = *v20;
            result = strcmp((v33 + *v32), (v33 + *v20));
            if ((result & 0x80000000) != 0)
            {
              v42 = *(v20 + 3);
              v41 = *(v20 + 8);
              do
              {
                v35 = v20;
                v20 = v32;
                v36 = *(v32 + 16);
                *v35 = *v32;
                v35[1] = v36;
                if (!v31)
                {
                  break;
                }

                v31 = (v31 - 1) >> 1;
                v32 = v7 + 32 * v31;
                v37 = **a4 == (*a4)[1] ? 0 : **a4;
                result = strcmp((v37 + *v32), (v37 + v34));
              }

              while ((result & 0x80000000) != 0);
              *v20 = v34;
              *(v20 + 8) = v41;
              *(v20 + 3) = v42;
            }
          }
        }

        v29 = v8-- <= 2;
      }

      while (!v29);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213C9A82C(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    v4 = a4;
    v5 = result;
    if (((a3 - 2) >> 1) >= (a4 - result) >> 5)
    {
      v6 = a3;
      v7 = a2;
      v38 = (a3 - 2) >> 1;
      v8 = (a4 - result) >> 4;
      v9 = v8 + 1;
      v10 = (result + 32 * (v8 + 1));
      v11 = v8 + 2;
      v12 = *a2;
      v13 = **a2;
      if (v11 >= a3)
      {
        v17 = v12[1];
        v18 = *v10;
      }

      else
      {
        v39 = v12[1];
        if (v13 == v39)
        {
          v14 = 0;
        }

        else
        {
          v14 = **a2;
        }

        v35 = *v10;
        v15 = v10[4];
        v16 = strcmp((v14 + *v10), (v14 + v15));
        v17 = v39;
        v18 = v35;
        if (v16 < 0)
        {
          v18 = v15;
          v10 += 4;
          v9 = v11;
        }
      }

      if (v13 == v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v13;
      }

      v40 = *v4;
      result = strcmp((v19 + v18), (v19 + *v4));
      v20 = v38;
      if ((result & 0x80000000) == 0)
      {
        v41 = *(v4 + 1);
        v42 = v4[3];
        v36 = v5;
        v37 = v6;
        do
        {
          v21 = v4;
          v4 = v10;
          v22 = *(v10 + 1);
          *v21 = *v10;
          v21[1] = v22;
          if (v20 < v9)
          {
            break;
          }

          v23 = (2 * v9) | 1;
          v10 = (v5 + 32 * v23);
          v9 = 2 * v9 + 2;
          v24 = *v7;
          v25 = **v7;
          if (v9 >= v6)
          {
            v26 = v24[1];
            v32 = *v10;
            v9 = v23;
          }

          else
          {
            v26 = v24[1];
            if (v25 == v26)
            {
              v27 = 0;
            }

            else
            {
              v27 = **v7;
            }

            v28 = v7;
            v29 = *v10;
            v30 = v10[4];
            v31 = strcmp((v27 + *v10), (v27 + v30));
            if (v31 >= 0)
            {
              v32 = v29;
            }

            else
            {
              v32 = v30;
            }

            v7 = v28;
            v6 = v37;
            v20 = v38;
            if (v31 < 0)
            {
              v10 += 4;
            }

            v5 = v36;
            if (v31 >= 0)
            {
              v9 = v23;
            }
          }

          v33 = v25 == v26 ? 0 : v25;
          result = strcmp((v33 + v32), (v33 + v40));
        }

        while ((result & 0x80000000) == 0);
        *v4 = v40;
        v4[3] = v42;
        *(v4 + 1) = v41;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_213C9AA34(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v31 = &__dst[a5];
      v32 = (v18 - a5);
      v33 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v34 = *v32++;
          *v33++ = v34;
        }

        while (v32 != v10);
      }

      *(a1 + 8) = v33;
      if (v19 != v31)
      {
        memmove(&__dst[a5], __dst, v18 - v31);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_213C97BD4();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = v10 - v5;
  memcpy(&v13[a5], v5, v10 - v5);
  *(a1 + 8) = v5;
  v30 = &v13[v11 - v5];
  memcpy(v30, v11, v28);
  *a1 = v30;
  *(a1 + 8) = &v13[a5 + v29];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

_BYTE *sub_213C9AC5C(char **a1, _BYTE *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v2 - *a1);
  v5 = (v4 + 1);
  if ((v4 + 1) < 0)
  {
    sub_213C97BD4();
  }

  v7 = a1[2] - v3;
  if (2 * v7 > v5)
  {
    v5 = 2 * v7;
  }

  if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    operator new();
  }

  *a1;
  *v4 = *a2;
  memcpy(&v4[v3 - v2], v3, v4);
  *a1 = 0;
  a1[1] = v4 + 1;
  a1[2] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v4 + 1;
}

uint64_t sub_213C9AD38(uint64_t a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = v3 >> 4;
  v5 = (v3 >> 4) + 1;
  if (v5 >> 60)
  {
    sub_213C97BD4();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 3 > v5)
  {
    v5 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    sub_213C97BD4();
  }

  *(16 * v4) = *a2;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = 16 * v4 + 16;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 16 * v4 + 16;
}

void *sub_213C9AE28(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_213CBECD8(a1, &v4, a2, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_213C9AED8(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *sub_213C9AF60(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v4 = result;
  if (result[9] <= 3)
  {
    result[9] = 4;
  }

  v5 = result[4];
  v6 = result[5];
  v7 = result[6];
  v8 = (v7 - (v5 + v6)) & 3;
  if (v7 - result[7] < v8)
  {
    v21 = (v7 - (v5 + v6)) & 3;
    v20 = a3;
    result = sub_213C97F80(result, v21);
    v8 = v21;
    LODWORD(a3) = v20;
    v4[6] -= v21;
  }

  else
  {
    v9 = v7 - v8;
    result[6] = v9;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v10 = 0;
  do
  {
    *(v4[6] + v10++) = 0;
  }

  while (v8 != v10);
  v6 = v4[5];
  v9 = v4[6];
  v5 = v4[4];
LABEL_9:
  v11 = v6 - v9 + v5 - a3;
  v12 = v11 + 4;
  if (v11 == -4 && *(v4 + 80) != 1)
  {
    return result;
  }

  if (v4[9] <= 3)
  {
    v4[9] = 4;
  }

  v13 = (v9 - (v5 + v6)) & 3;
  v14 = v4[7];
  if (v9 - v14 < v13)
  {
    v22 = v13;
    result = sub_213C97F80(v4, v13);
    v13 = v22;
    v4[6] -= v22;
LABEL_15:
    v16 = 0;
    do
    {
      *(v4[6] + v16++) = 0;
    }

    while (v13 != v16);
    v15 = v4[6];
    v14 = v4[7];
    goto LABEL_18;
  }

  v15 = v9 - v13;
  v4[6] = v9 - v13;
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v15 - v14 <= 3)
  {
    result = sub_213C97F80(v4, 4uLL);
    v15 = v4[6];
    v14 = v4[7];
  }

  *(v15 - 4) = v12;
  v17 = v15 - 4;
  v4[6] = v17;
  v18 = v4[4] - v17 + v4[5];
  if ((v17 - v14) <= 7)
  {
    result = sub_213C97F80(v4, 8uLL);
    v14 = v4[7];
  }

  *v14 = v18 | (a2 << 32);
  v4[7] += 8;
  ++*(v4 + 16);
  v19 = *(v4 + 34);
  if (v19 <= a2)
  {
    LOWORD(v19) = a2;
  }

  *(v4 + 34) = v19;
  return result;
}

uint64_t *sub_213C9B154(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v4 = result;
  if (result[9] <= 3)
  {
    result[9] = 4;
  }

  v5 = result[4];
  v6 = result[5];
  v7 = result[6];
  v8 = (v7 - (v5 + v6)) & 3;
  if (v7 - result[7] < v8)
  {
    v21 = (v7 - (v5 + v6)) & 3;
    v18 = a3;
    result = sub_213C97F80(result, v21);
    v8 = v21;
    LODWORD(a3) = v18;
    v4[6] -= v21;
  }

  else
  {
    v9 = v7 - v8;
    result[6] = v9;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v19 = 0;
  do
  {
    *(v4[6] + v19++) = 0;
  }

  while (v8 != v19);
  v6 = v4[5];
  v9 = v4[6];
  v5 = v4[4];
LABEL_6:
  v10 = v6 - v9 + v5 - a3;
  v11 = v10 + 4;
  if (v10 == -4 && *(v4 + 80) != 1)
  {
    return result;
  }

  if (v4[9] <= 3)
  {
    v4[9] = 4;
  }

  v12 = (v9 - (v5 + v6)) & 3;
  v13 = v4[7];
  if (v9 - v13 < v12)
  {
    v22 = v12;
    result = sub_213C97F80(v4, v12);
    v12 = v22;
    v4[6] -= v22;
LABEL_24:
    v20 = 0;
    do
    {
      *(v4[6] + v20++) = 0;
    }

    while (v12 != v20);
    v14 = v4[6];
    v13 = v4[7];
    goto LABEL_11;
  }

  v14 = v9 - v12;
  v4[6] = v9 - v12;
  if (v12)
  {
    goto LABEL_24;
  }

LABEL_11:
  if (v14 - v13 <= 3)
  {
    result = sub_213C97F80(v4, 4uLL);
    v14 = v4[6];
    v13 = v4[7];
  }

  *(v14 - 4) = v11;
  v15 = v14 - 4;
  v4[6] = v15;
  v16 = v4[4] - v15 + v4[5];
  if ((v15 - v13) <= 7)
  {
    result = sub_213C97F80(v4, 8uLL);
    v13 = v4[7];
  }

  *v13 = v16 | (a2 << 32);
  v4[7] += 8;
  ++*(v4 + 16);
  v17 = *(v4 + 34);
  if (v17 <= a2)
  {
    LOWORD(v17) = a2;
  }

  *(v4 + 34) = v17;
  return result;
}

uint64_t sub_213C9B34C(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v174 = result;
  while (2)
  {
    v5 = v174;
    v6 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v5;
          v8 = v6 - v5;
          v174 = v7;
          if (v8 <= 2)
          {
            if (v8 < 2)
            {
              return result;
            }

            v6 = a2;
            if (v8 == 2)
            {
              v80 = *(a2 - 1);
              v81 = *(*a3 + 40) + *(*a3 + 32);
              v82 = *v7;
              result = sub_213C9C644((v81 - v80), (v81 - v82));
              if (result)
              {
                *v7 = v80;
                *(a2 - 1) = v82;
              }

              return result;
            }

            goto LABEL_10;
          }

          switch(v8)
          {
            case 3:
              v83 = *(*a3 + 40) + *(*a3 + 32);
              v84 = *v7;
              v85 = v7[1];
              v86 = sub_213C9C644((v83 - v85), (v83 - v84));
              v87 = *(v6 - 1);
              result = sub_213C9C644((v83 - v87), (v83 - v85));
              if (v86)
              {
                if (result)
                {
                  *v7 = v87;
                  *(v6 - 1) = v84;
                }

                else
                {
                  *v7 = v85;
                  v7[1] = v84;
                  v159 = *(v6 - 1);
                  result = sub_213C9C644((v83 - v159), (v83 - v84));
                  if (result)
                  {
                    v7[1] = v159;
                    *(a2 - 1) = v84;
                  }
                }

                return result;
              }

              if (!result)
              {
                return result;
              }

              v7[1] = v87;
              *(a2 - 1) = v85;
              v150 = *v7;
              v149 = v7[1];
              v151 = (v83 - v149);
              v152 = (v83 - v150);
LABEL_197:
              result = sub_213C9C644(v151, v152);
              if (result)
              {
                *v7 = v149;
                v7[1] = v150;
              }

              return result;
            case 4:
              v169 = v7 + 1;
              v88 = *(*a3 + 40) + *(*a3 + 32);
              v173 = v7[1];
              v89 = *v7;
              v90 = sub_213C9C644((v88 - v173), (v88 - v89));
              v91 = v7 + 2;
              v92 = v7[2];
              v93 = -v92;
              v94 = sub_213C9C644((v88 - v92), (v88 - v173));
              if (v90)
              {
                v95 = -v89;
                if (v94)
                {
                  v96 = v7;
                  v97 = v7 + 2;
                  v98 = v89;
LABEL_192:
                  *v96 = v92;
                  *v97 = v89;
                  v93 = v95;
                  goto LABEL_194;
                }

                *v7 = v173;
                v7[1] = v89;
                v160 = sub_213C9C644((v88 - v92), (v88 - v89));
                v96 = v7 + 1;
                v97 = v7 + 2;
                v98 = v89;
                if (v160)
                {
                  goto LABEL_192;
                }
              }

              else if (v94)
              {
                v98 = v173;
                v95 = -v173;
                *v169 = v92;
                *v91 = v173;
                v153 = sub_213C9C644((v88 - v92), (v88 - v89));
                v96 = v7;
                v97 = v7 + 1;
                v93 = -v173;
                if (v153)
                {
                  goto LABEL_192;
                }

LABEL_194:
                v161 = *(a2 - 1);
                result = sub_213C9C644((v88 - v161), (v88 + v93));
                if (!result)
                {
                  return result;
                }

                *v91 = v161;
                *(a2 - 1) = v98;
                v149 = *v91;
                v162 = *v169;
                result = sub_213C9C644((v88 - v149), (v88 - v162));
                if (!result)
                {
                  return result;
                }

                v7[1] = v149;
                v7[2] = v162;
                v150 = *v7;
                v152 = (v88 - v150);
                v151 = (v88 - v149);
                goto LABEL_197;
              }

              v98 = v92;
              goto LABEL_194;
            case 5:
              v78 = *(*a3 + 32);
              v79 = *(*a3 + 40);

              return sub_213C9C030(v7, v7 + 1, v7 + 2, v7 + 3, v6 - 1, v78, v79);
          }

LABEL_10:
          if (v8 <= 23)
          {
            v99 = v7 + 1;
            v100 = v7 == v6 || v99 == v6;
            v101 = v100;
            if (a5)
            {
              if ((v101 & 1) == 0)
              {
                v102 = 0;
                v103 = v7;
                v104 = *(*a3 + 40) + *(*a3 + 32);
                do
                {
                  v106 = *v103;
                  v105 = v103[1];
                  v103 = v99;
                  result = sub_213C9C644((v104 - v105), (v104 - v106));
                  if (result)
                  {
                    v107 = v102;
                    while (1)
                    {
                      *(v7 + v107 + 4) = v106;
                      if (!v107)
                      {
                        break;
                      }

                      v106 = *(v7 + v107 - 4);
                      result = sub_213C9C644((v104 - v105), (v104 - v106));
                      v107 -= 4;
                      if ((result & 1) == 0)
                      {
                        v108 = (v7 + v107 + 4);
                        goto LABEL_130;
                      }
                    }

                    v108 = v7;
LABEL_130:
                    *v108 = v105;
                  }

                  v99 = v103 + 1;
                  v102 += 4;
                }

                while (v103 + 1 != a2);
              }
            }

            else if ((v101 & 1) == 0)
            {
              v154 = *(*a3 + 40) + *(*a3 + 32);
              do
              {
                v156 = *v174;
                v155 = v174[1];
                v157 = v99;
                result = sub_213C9C644((v154 - v155), (v154 - v156));
                if (result)
                {
                  v158 = v157;
                  do
                  {
                    *v158 = v156;
                    v156 = *(v158 - 2);
                    result = sub_213C9C644((v154 - v155), (v154 - v156));
                    --v158;
                  }

                  while ((result & 1) != 0);
                  *v158 = v155;
                }

                v174 = v157;
                v99 = v157 + 1;
              }

              while (v157 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v7 != v6)
            {
              v109 = (v8 - 2) >> 1;
              v110 = v109;
              do
              {
                v111 = v110;
                if (v109 >= v110)
                {
                  v112 = *a3;
                  v113 = (2 * v111) | 1;
                  v114 = &v174[v113];
                  v167 = v111;
                  if (2 * v111 + 2 >= v8)
                  {
                    LODWORD(v118) = *v114;
                    v117 = *(v112 + 32);
                    v116 = *(v112 + 40);
                  }

                  else
                  {
                    v115 = *v114;
                    v117 = *(v112 + 32);
                    v116 = *(v112 + 40);
                    v118 = v114[1];
                    v119 = sub_213C9C644((v116 + v117 - v115), (v116 + v117 - v118));
                    if (v119)
                    {
                      ++v114;
                    }

                    else
                    {
                      LODWORD(v118) = v115;
                    }

                    if (v119)
                    {
                      v113 = 2 * v111 + 2;
                    }
                  }

                  v120 = &v174[v111];
                  v121 = v116 + v117;
                  v165 = *v120;
                  v122 = (v121 - v165);
                  result = sub_213C9C644((v121 - v118), (v121 - v165));
                  if ((result & 1) == 0)
                  {
                    do
                    {
                      *v120 = v118;
                      v120 = v114;
                      if (v109 < v113)
                      {
                        break;
                      }

                      v123 = (2 * v113) | 1;
                      v114 = &v174[v123];
                      v113 = 2 * v113 + 2;
                      if (v113 >= v8)
                      {
                        LODWORD(v118) = *v114;
                        v113 = v123;
                      }

                      else
                      {
                        v118 = *v114;
                        v124 = v122;
                        v125 = v114[1];
                        v126 = sub_213C9C644((v121 - v118), (v121 - v125));
                        if (v126)
                        {
                          LODWORD(v118) = v125;
                        }

                        v122 = v124;
                        v109 = (v8 - 2) >> 1;
                        if (v126)
                        {
                          ++v114;
                        }

                        else
                        {
                          v113 = v123;
                        }
                      }

                      result = sub_213C9C644((v121 - v118), v122);
                    }

                    while (!result);
                    v111 = v167;
                    *v120 = v165;
                  }
                }

                v110 = v111 - 1;
              }

              while (v111);
              do
              {
                v127 = 0;
                v128 = v174;
                v170 = *v174;
                v129 = *a3;
                do
                {
                  v130 = &v128[v127];
                  v131 = v130 + 1;
                  v132 = (2 * v127) | 1;
                  v133 = 2 * v127 + 2;
                  if (v133 >= v8)
                  {
                    v139 = *v131;
                    v127 = (2 * v127) | 1;
                  }

                  else
                  {
                    v136 = v130[2];
                    v135 = v130 + 2;
                    v134 = v136;
                    v137 = *(v135 - 1);
                    v138 = *(v129 + 40) + *(v129 + 32);
                    result = sub_213C9C644((v138 - v137), (v138 - v136));
                    if (result)
                    {
                      v139 = v134;
                    }

                    else
                    {
                      v139 = v137;
                    }

                    if (result)
                    {
                      v131 = v135;
                      v127 = v133;
                    }

                    else
                    {
                      v127 = v132;
                    }
                  }

                  *v128 = v139;
                  v128 = v131;
                }

                while (v127 <= ((v8 - 2) >> 1));
                v140 = a2 - 1;
                v100 = v131 == --a2;
                if (v100)
                {
                  *v131 = v170;
                }

                else
                {
                  *v131 = *v140;
                  *v140 = v170;
                  v141 = (v131 - v174 + 4) >> 2;
                  v142 = v141 < 2;
                  v143 = v141 - 2;
                  if (!v142)
                  {
                    v144 = v143 >> 1;
                    v145 = &v174[v143 >> 1];
                    v146 = *v145;
                    v147 = *(*a3 + 40) + *(*a3 + 32);
                    v148 = *v131;
                    result = sub_213C9C644((v147 - v146), (v147 - v148));
                    if (result)
                    {
                      do
                      {
                        *v131 = v146;
                        v131 = v145;
                        if (!v144)
                        {
                          break;
                        }

                        v144 = (v144 - 1) >> 1;
                        v145 = &v174[v144];
                        v146 = *v145;
                        result = sub_213C9C644((v147 - v146), (v147 - v148));
                      }

                      while ((result & 1) != 0);
                      *v131 = v148;
                    }
                  }
                }

                v142 = v8-- <= 2;
              }

              while (!v142);
            }

            return result;
          }

          v9 = &v7[v8 >> 1];
          v10 = *(*a3 + 40) + *(*a3 + 32);
          v166 = v9;
          if (v8 >= 0x81)
          {
            v11 = *v9;
            v12 = *v7;
            v13 = sub_213C9C644((v10 - v11), (v10 - v12));
            v14 = *(v6 - 1);
            v15 = sub_213C9C644((v10 - v14), (v10 - v11));
            if (v13)
            {
              if (v15)
              {
                *v7 = v14;
                goto LABEL_27;
              }

              *v7 = v11;
              *v9 = v12;
              v25 = *(v6 - 1);
              if (sub_213C9C644((v10 - v25), (v10 - v12)))
              {
                *v9 = v25;
LABEL_27:
                *(v6 - 1) = v12;
              }
            }

            else if (v15)
            {
              *v9 = v14;
              *(v6 - 1) = v11;
              v21 = *v9;
              v22 = *v7;
              if (sub_213C9C644((v10 - v21), (v10 - v22)))
              {
                *v7 = v21;
                *v9 = v22;
              }
            }

            v26 = *(v9 - 1);
            v164 = v9 - 1;
            v27 = v7[1];
            v28 = sub_213C9C644((v10 - v26), (v10 - v27));
            v29 = *(v6 - 2);
            v30 = sub_213C9C644((v10 - v29), (v10 - v26));
            if (v28)
            {
              if (v30)
              {
                v7[1] = v29;
                goto LABEL_39;
              }

              v7[1] = v26;
              *v164 = v27;
              v34 = *(v6 - 2);
              if (sub_213C9C644((v10 - v34), (v10 - v27)))
              {
                *v164 = v34;
LABEL_39:
                *(v6 - 2) = v27;
              }
            }

            else if (v30)
            {
              *v164 = v29;
              *(v6 - 2) = v26;
              v31 = *v164;
              v32 = v7[1];
              if (sub_213C9C644((v10 - v31), (v10 - v32)))
              {
                v7[1] = v31;
                *v164 = v32;
              }
            }

            v37 = v9[1];
            v36 = v9 + 1;
            v35 = v37;
            v38 = v7[2];
            v39 = sub_213C9C644((v10 - v37), (v10 - v38));
            v40 = *(v6 - 3);
            v41 = sub_213C9C644((v10 - v40), (v10 - v37));
            if (v39)
            {
              if (v41)
              {
                v7[2] = v40;
                *(v6 - 3) = v38;
                v42 = &v7[v8 >> 1];
              }

              else
              {
                v7[2] = v35;
                *v36 = v38;
                v45 = *(v6 - 3);
                v42 = &v7[v8 >> 1];
                if (sub_213C9C644((v10 - v45), (v10 - v38)))
                {
                  *v36 = v45;
                  *(v6 - 3) = v38;
                }
              }
            }

            else
            {
              v42 = &v7[v8 >> 1];
              if (v41)
              {
                *v36 = v40;
                *(v6 - 3) = v35;
                v43 = *v36;
                v44 = v7[2];
                if (sub_213C9C644((v10 - v43), (v10 - v44)))
                {
                  v7[2] = v43;
                  *v36 = v44;
                }
              }
            }

            v46 = *v42;
            v47 = *v164;
            v48 = sub_213C9C644((v10 - v46), (v10 - v47));
            v49 = *v36;
            v50 = sub_213C9C644((v10 - v49), (v10 - v46));
            if (v48)
            {
              if (v50)
              {
                v6 = a2;
                v51 = v166;
                goto LABEL_55;
              }

              v51 = v166;
              *v164 = v46;
              *v166 = v47;
              v164 = v166;
              LODWORD(v46) = v49;
              v6 = a2;
              if (sub_213C9C644((v10 - v49), (v10 - v47)))
              {
LABEL_55:
                *v164 = v49;
                *v36 = v47;
              }

              else
              {
                LODWORD(v46) = v47;
              }
            }

            else if (v50)
            {
              v51 = v166;
              *v166 = v49;
              *v36 = v46;
              v36 = v166;
              LODWORD(v46) = v47;
              v6 = a2;
              if (sub_213C9C644((v10 - v49), (v10 - v47)))
              {
                goto LABEL_55;
              }

              LODWORD(v46) = v49;
            }

            else
            {
              v6 = a2;
              v51 = v166;
            }

            v52 = *v7;
            *v7 = v46;
            *v51 = v52;
            goto LABEL_59;
          }

          v16 = *v7;
          v17 = *v9;
          v18 = sub_213C9C644((v10 - v16), (v10 - v17));
          v19 = *(v6 - 1);
          v20 = sub_213C9C644((v10 - v19), (v10 - v16));
          if (v18)
          {
            if (v20)
            {
              *v9 = v19;
LABEL_36:
              *(v6 - 1) = v17;
              goto LABEL_59;
            }

            *v9 = v16;
            *v7 = v17;
            v33 = *(v6 - 1);
            if (sub_213C9C644((v10 - v33), (v10 - v17)))
            {
              *v7 = v33;
              goto LABEL_36;
            }
          }

          else if (v20)
          {
            *v7 = v19;
            *(v6 - 1) = v16;
            v23 = *v7;
            v24 = *v9;
            if (sub_213C9C644((v10 - v23), (v10 - v24)))
            {
              *v9 = v23;
              *v7 = v24;
            }
          }

LABEL_59:
          --a4;
          v53 = *v7;
          if ((a5 & 1) != 0 || sub_213C9C644((v10 - *(v7 - 1)), (v10 - v53)))
          {
            break;
          }

          result = sub_213C9C644((v10 - v53), (v10 - *(v6 - 1)));
          if (result)
          {
            v5 = v7;
            do
            {
              v69 = v5[1];
              ++v5;
              result = sub_213C9C644((v10 - v53), (v10 - v69));
            }

            while ((result & 1) == 0);
          }

          else
          {
            v70 = v7 + 1;
            do
            {
              v5 = v70;
              if (v70 >= v6)
              {
                break;
              }

              ++v70;
              result = sub_213C9C644((v10 - v53), (v10 - *v5));
            }

            while (!result);
          }

          v71 = v6;
          if (v5 < v6)
          {
            v71 = v6;
            do
            {
              v72 = *--v71;
              result = sub_213C9C644((v10 - v53), (v10 - v72));
            }

            while ((result & 1) != 0);
          }

          if (v5 < v71)
          {
            v73 = *v5;
            v74 = *v71;
            do
            {
              *v5 = v74;
              *v71 = v73;
              do
              {
                v75 = v5[1];
                ++v5;
                v73 = v75;
              }

              while (!sub_213C9C644((v10 - v53), (v10 - v75)));
              do
              {
                v76 = *--v71;
                v74 = v76;
                result = sub_213C9C644((v10 - v53), (v10 - v76));
              }

              while ((result & 1) != 0);
            }

            while (v5 < v71);
          }

          v77 = v5 - 1;
          if (v5 - 1 != v7)
          {
            *v7 = *v77;
          }

          a5 = 0;
          *v77 = v53;
        }

        v54 = 0;
        v55 = *(*a3 + 40) + *(*a3 + 32);
        do
        {
          v56 = v7[++v54];
        }

        while (sub_213C9C644((v55 - v56), (v55 - v53)));
        v57 = &v7[v54];
        v58 = v6;
        if (v54 == 1)
        {
          v58 = v6;
          do
          {
            if (v57 >= v58)
            {
              break;
            }

            v60 = *--v58;
          }

          while (!sub_213C9C644((v55 - v60), (v55 - v53)));
        }

        else
        {
          do
          {
            v59 = *--v58;
          }

          while (!sub_213C9C644((v55 - v59), (v55 - v53)));
        }

        if (v57 >= v58)
        {
          v67 = v57 - 1;
        }

        else
        {
          v61 = *v58;
          v62 = v56;
          v63 = &v7[v54];
          v64 = v58;
          do
          {
            *v63 = v61;
            *v64 = v62;
            do
            {
              v65 = v63[1];
              ++v63;
              v62 = v65;
            }

            while (sub_213C9C644((v55 - v65), (v55 - v53)));
            do
            {
              v66 = *--v64;
              v61 = v66;
            }

            while (!sub_213C9C644((v55 - v66), (v55 - v53)));
          }

          while (v63 < v64);
          v67 = v63 - 1;
          v6 = a2;
        }

        if (v67 != v7)
        {
          *v7 = *v67;
        }

        *v67 = v53;
        if (v57 >= v58)
        {
          break;
        }

LABEL_82:
        result = sub_213C9B34C(v7, v67, a3, a4, a5 & 1);
        a5 = 0;
        v5 = v67 + 1;
      }

      v68 = sub_213C9C244(v7, v67, *a3);
      v5 = v67 + 1;
      result = sub_213C9C244(v67 + 1, v6, *a3);
      if (result)
      {
        break;
      }

      if (!v68)
      {
        goto LABEL_82;
      }
    }

    a2 = v67;
    if (!v68)
    {
      continue;
    }

    return result;
  }
}

BOOL sub_213C9C030(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v9 = *a2;
  v10 = a7 + a6;
  v11 = (a7 + a6 - v9);
  v13 = *a1;
  v14 = (a7 + a6 - v13);
  v15 = sub_213C9C644(v11, v14);
  v16 = *a3;
  v17 = sub_213C9C644((v10 - v16), v11);
  if (!v15)
  {
    if (v17)
    {
      *a2 = v16;
      *a3 = v9;
      v20 = *a2;
      v19 = a1;
      v21 = *a1;
      if (sub_213C9C644((v10 - v20), (v10 - v21)))
      {
        *a1 = v20;
        *a2 = v21;
        v16 = *a3;
        v18 = -v16;
      }

      else
      {
        v18 = -v9;
        LODWORD(v16) = v9;
      }
    }

    else
    {
      v18 = -v16;
      v19 = a1;
    }

    goto LABEL_11;
  }

  v18 = -v13;
  v19 = a1;
  if (v17)
  {
    *a1 = v16;
    *a3 = v13;
    LODWORD(v16) = v13;
LABEL_11:
    v22 = a2;
    goto LABEL_12;
  }

  *a1 = v9;
  v22 = a2;
  *a2 = v13;
  v16 = *a3;
  if (sub_213C9C644((v10 - v16), v14))
  {
    *a2 = v16;
    *a3 = v13;
    LODWORD(v16) = v13;
  }

  else
  {
    v18 = -v16;
  }

LABEL_12:
  v23 = *a4;
  if (sub_213C9C644((v10 - v23), (v10 + v18)))
  {
    *a3 = v23;
    *a4 = v16;
    v24 = *a3;
    v25 = *v22;
    if (sub_213C9C644((v10 - v24), (v10 - v25)))
    {
      *v22 = v24;
      *a3 = v25;
      v26 = *v22;
      v27 = *v19;
      if (sub_213C9C644((v10 - v26), (v10 - v27)))
      {
        *v19 = v26;
        *v22 = v27;
      }
    }
  }

  v28 = *a5;
  v29 = *a4;
  result = sub_213C9C644((v10 - v28), (v10 - v29));
  if (result)
  {
    *a4 = v28;
    *a5 = v29;
    v31 = *a4;
    v32 = *a3;
    result = sub_213C9C644((v10 - v31), (v10 - v32));
    if (result)
    {
      *a3 = v31;
      *a4 = v32;
      v33 = *a3;
      v34 = *v22;
      result = sub_213C9C644((v10 - v33), (v10 - v34));
      if (result)
      {
        *v22 = v33;
        *a3 = v34;
        v35 = *v22;
        v36 = *v19;
        result = sub_213C9C644((v10 - v35), (v10 - v36));
        if (result)
        {
          *v19 = v35;
          *v22 = v36;
        }
      }
    }
  }

  return result;
}

BOOL sub_213C9C244(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = *(a3 + 40) + *(a3 + 32);
      v10 = *a1;
      v11 = a1[1];
      v12 = sub_213C9C644((v9 - v11), (v9 - v10));
      v13 = *(a2 - 1);
      v14 = sub_213C9C644((v9 - v13), (v9 - v11));
      if (!v12)
      {
        if (v14)
        {
          a1[1] = v13;
          *(a2 - 1) = v11;
          v37 = *a1;
          v36 = a1[1];
          if (sub_213C9C644((v9 - v36), (v9 - v37)))
          {
            *a1 = v36;
            a1[1] = v37;
          }
        }

        return 1;
      }

      if (v14)
      {
        *a1 = v13;
      }

      else
      {
        *a1 = v11;
        a1[1] = v10;
        v50 = *(a2 - 1);
        if (!sub_213C9C644((v9 - v50), (v9 - v10)))
        {
          return 1;
        }

        a1[1] = v50;
      }

      *(a2 - 1) = v10;
      return 1;
    }

    if (v5 != 4)
    {
      if (v5 != 5)
      {
        goto LABEL_13;
      }

      sub_213C9C030(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *(a3 + 32), *(a3 + 40));
      return 1;
    }

    v58 = a1[1];
    v60 = a1 + 1;
    v25 = *(a3 + 40) + *(a3 + 32);
    v26 = *a1;
    v27 = (v25 - v26);
    v28 = sub_213C9C644((v25 - v58), (v25 - v26));
    v30 = a1 + 2;
    v29 = a1[2];
    v31 = sub_213C9C644((v25 - v29), (v25 - v58));
    if (v28)
    {
      v32 = -v26;
      if (v31)
      {
        v33 = a1;
        v34 = a1 + 2;
        v35 = v26;
      }

      else
      {
        *a1 = v58;
        a1[1] = v26;
        v51 = sub_213C9C644((v25 - v29), v27);
        v33 = v60;
        v34 = a1 + 2;
        v35 = v26;
        v49 = -v29;
        if (!v51)
        {
          v35 = v29;
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (!v31)
      {
        v35 = v29;
        v49 = -v29;
        goto LABEL_48;
      }

      v32 = -v58;
      *v60 = v29;
      *v30 = v58;
      v35 = v58;
      v48 = sub_213C9C644((v25 - v29), v27);
      v33 = a1;
      v34 = v60;
      v49 = -v58;
      if (!v48)
      {
        goto LABEL_48;
      }
    }

    *v33 = v29;
    *v34 = v26;
    v49 = v32;
LABEL_48:
    v53 = *(a2 - 1);
    if (sub_213C9C644((v25 - v53), (v25 + v49)))
    {
      *v30 = v53;
      *(a2 - 1) = v35;
      v54 = *v30;
      v55 = *v60;
      if (sub_213C9C644((v25 - v54), (v25 - v55)))
      {
        a1[1] = v54;
        a1[2] = v55;
        v56 = *a1;
        if (sub_213C9C644((v25 - v54), (v25 - v56)))
        {
          *a1 = v54;
          a1[1] = v56;
        }
      }
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *(a3 + 40) + *(a3 + 32);
    v8 = *a1;
    if (sub_213C9C644((v7 - v6), (v7 - v8)))
    {
      *a1 = v6;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_13:
  v15 = a1[1];
  v16 = *(a3 + 40) + *(a3 + 32);
  v59 = *a1;
  v17 = (v16 - v59);
  v18 = sub_213C9C644((v16 - v15), (v16 - v59));
  v19 = a1 + 2;
  v57 = a1[2];
  v20 = (v16 - v57);
  v21 = sub_213C9C644((v16 - v57), (v16 - v15));
  if (v18)
  {
    v22 = a1;
    v23 = a1 + 2;
    if (!v21)
    {
      *a1 = v15;
      a1[1] = v59;
      v24 = sub_213C9C644(v20, v17);
      v22 = a1 + 1;
      v23 = a1 + 2;
      if (!v24)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v22 = v57;
    *v23 = v59;
    goto LABEL_26;
  }

  if (v21)
  {
    a1[1] = v57;
    *v19 = v15;
    v38 = sub_213C9C644(v20, v17);
    v22 = a1;
    v23 = a1 + 1;
    if (v38)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v19;
    if (sub_213C9C644((v16 - v42), (v16 - v43)))
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v46 = sub_213C9C644((v16 - v42), (v16 - v43));
        v44 = v45;
        if (!v46)
        {
          v47 = (a1 + v45);
          goto LABEL_34;
        }
      }

      v47 = a1;
LABEL_34:
      *v47 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v19 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

BOOL sub_213C9C644(int *a1, int *a2)
{
  v2 = (a1 - *a1);
  if (*v2 >= 5u && (v3 = v2[2]) != 0)
  {
    v4 = (a1 + v3 + *(a1 + v3));
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  if (*(a2 - v5) < 5u)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 - v5 + 4);
    LODWORD(v5) = *(a2 + *(a2 - v5 + 4));
  }

  v7 = (a2 + v6 + v5);
  v10 = *v4;
  v8 = v4 + 1;
  v9 = v10;
  v13 = *v7;
  v11 = v7 + 1;
  v12 = v13;
  if (v13 >= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v8, v11, v14);
  if (v15)
  {
    return v15 < 0;
  }

  else
  {
    return v9 < v12;
  }
}

BOOL sub_213C9C6E4(int *a1, uint64_t a2, unsigned int a3)
{
  v3 = (a1 - *a1);
  if (*v3 <= a3)
  {
    return 0;
  }

  v4 = *(v3 + a3);
  if (!v4)
  {
    return 0;
  }

  v5 = a1 + v4 - *a2;
  if (v5 & 3) != 0 && (*(a2 + 40))
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (v6 < 5 || v6 - 4 < v5)
  {
    return 0;
  }

  v8 = *(*a2 + v5);
  return v8 >= 1 && v6 - 1 >= v5 + v8;
}

BOOL sub_213C9C758(int *a1, uint64_t a2, unsigned int a3)
{
  v3 = (a1 - *a1);
  if (*v3 <= a3)
  {
    return 1;
  }

  v5 = *(v3 + a3);
  if (!v5)
  {
    return 1;
  }

  v6 = a1 + v5 - *a2;
  if (v6 & 3) != 0 && (*(a2 + 40))
  {
    return 0;
  }

  result = 0;
  v7 = *(a2 + 8);
  if (v7 >= 5 && v7 - 4 >= v6)
  {
    v8 = *(*a2 + v6);
    if (v8 >= 1)
    {
      return v7 - 1 >= v6 + v8;
    }

    return 0;
  }

  return result;
}

BOOL sub_213C9C7DC(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (((v2 & 3) == 0 || (*(a1 + 40) & 1) == 0) && ((v3 = *(a1 + 8), v3 >= 5) ? (v4 = v3 - 4 >= v2) : (v4 = 0), v4 && (v5 = *a2, v5 <= 0x7FFFFFFE) && ((v6 = v5 + 4, v7 = v2 + v5 + 4, v3 - 1 >= v7) ? (v8 = v3 > v6) : (v8 = 0), v8 ? (v9 = v3 - v6 >= v2) : (v9 = 0), v9)))
  {
    return *(*a1 + v7) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL sub_213C9C85C(uint64_t *a1, int *a2)
{
  v2 = *a1;
  v3 = a2 - *a1;
  if (v3 & 3) != 0 && (a1[5])
  {
    return 0;
  }

  v4 = a1[1];
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(a1 + 5);
  v8 = *(a1 + 4) + 1;
  *(a1 + 4) = v8;
  v9 = *(a1 + 6) + 1;
  *(a1 + 6) = v9;
  if (v8 > v7 || v9 > *(a1 + 7))
  {
    return 0;
  }

  v10 = v3 - v6;
  if (v10)
  {
    v14 = 0;
    if ((a1[5] & 1) != 0 || v4 - 2 < v10)
    {
      return v14;
    }
  }

  else if (v4 - 2 < v10)
  {
    return 0;
  }

  v11 = *(v2 + v10);
  if (v11 & 1) != 0 && (a1[5])
  {
    return 0;
  }

  v5 = v4 >= v11;
  v12 = v4 - v11;
  return v12 != 0 && v5 && v12 >= v10;
}

BOOL sub_213C9C918(int *a1, uint64_t a2)
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

  v8 = *a1;
  v9 = a1 - v8;
  v10 = *(a1 - v8);
  if (v10 < 7)
  {
    if (!sub_213CBF350(a2, 0))
    {
      return 0;
    }

    goto LABEL_49;
  }

  v11 = -v8;
  v12 = *(v9 + 3);
  if (!*(v9 + 3))
  {
    if (!sub_213CBF350(a2, 0))
    {
      return 0;
    }

LABEL_42:
    if (v10 >= 9)
    {
      v35 = a1 + v11;
      if (*(a1 + v11 + 8))
      {
        result = 0;
        v59 = *(a2 + 8);
        if (v59 < 2 || v59 - 1 < a1 + *(a1 + v11 + 8) - *a2)
        {
          return result;
        }
      }

      if (v10 >= 0xB)
      {
        if (*(v35 + 5))
        {
          result = 0;
          v36 = *(a2 + 8);
          if (v36 < 5 || v36 - 4 < a1 + *(v35 + 5) - *a2)
          {
            return result;
          }
        }

        if (v10 >= 0xD)
        {
          v60 = *(v35 + 6);
          if (v60)
          {
            result = 0;
            v61 = *(a2 + 8);
            if (v61 < 5 || v61 - 4 < a1 + v60 - *a2)
            {
              return result;
            }
          }
        }
      }
    }

LABEL_49:
    result = sub_213C9C758(a1, a2, 0xEu);
    if (!result)
    {
      return result;
    }

    v37 = (a1 - v8);
    if (*v37 >= 0xFu && (v62 = v37[7]) != 0)
    {
      v63 = (a1 + v62 + *(a1 + v62));
      if (!sub_213C9D0A8(a2, v63))
      {
        return 0;
      }

      if (*v63)
      {
        v64 = 0;
        v65 = v63 + 1;
        while (sub_213CBF3B8((v65 + *v65), a2))
        {
          ++v64;
          ++v65;
          if (v64 >= *v63)
          {
            goto LABEL_52;
          }
        }

        return 0;
      }
    }

    else if (!sub_213C9D0A8(a2, 0))
    {
      return 0;
    }

LABEL_52:
    result = sub_213C9C758(a1, a2, 0x10u);
    if (!result)
    {
      return result;
    }

    v38 = (a1 - *a1);
    if (*v38 >= 0x11u && (v66 = v38[8]) != 0)
    {
      v39 = (a1 + v66 + *(a1 + v66));
    }

    else
    {
      v39 = 0;
    }

    result = sub_213C9D0A8(a2, v39);
    if (!result)
    {
      return result;
    }

    v40 = (a1 - *a1);
    if (*v40 < 0x11u || (v67 = v40[8]) == 0 || (v68 = (a1 + v67 + *(a1 + v67)), !*v68))
    {
LABEL_57:
      --*(a2 + 16);
      return 1;
    }

    v69 = 0;
    v70 = v68 + 1;
    while (sub_213C9C7DC(a2, (v70 + *v70)))
    {
      ++v69;
      ++v70;
      if (v69 >= *v68)
      {
        goto LABEL_57;
      }
    }

    return 0;
  }

  v13 = *(a1 + v12);
  v14 = (a1 + v12 + v13);
  if (!sub_213CBF350(a2, v14))
  {
    return 0;
  }

  if (!*v14)
  {
    goto LABEL_42;
  }

  v15 = 0;
  v16 = a1 + v13 + v12 + 8;
  while (1)
  {
    v17 = &v14[v15 + 1];
    v18 = *v17;
    v19 = (v17 + v18);
    result = sub_213C9C85C(a2, (v17 + v18));
    if (!result)
    {
      return result;
    }

    result = sub_213C9C6E4(v19, a2, 4u);
    if (!result)
    {
      return result;
    }

    v20 = (v19 - *v19);
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = (v19 + v21 + *(v19 + v21));
    }

    else
    {
      v22 = 0;
    }

    result = sub_213C9C7DC(a2, v22);
    if (!result)
    {
      return result;
    }

    result = sub_213C9C6E4(v19, a2, 6u);
    if (!result)
    {
      return result;
    }

    v23 = *v19;
    v24 = *(v19 - v23);
    if (v24 >= 7)
    {
      if (*(v19 - v23 + 6))
      {
        result = sub_213C9D110((v19 + *(v19 - v23 + 6) + *(v19 + *(v19 - v23 + 6))), a2);
        if (!result)
        {
          return result;
        }

        v23 = *v19;
        v25 = -v23;
        v24 = *(v19 - v23);
      }

      else
      {
        v25 = -v23;
      }

      if (v24 >= 9)
      {
        v26 = (v19 + v25);
        if (v26[4])
        {
          result = 0;
          v27 = *(a2 + 8);
          if (v27 < 3 || v27 - 2 < v19 + v26[4] - *a2)
          {
            return result;
          }
        }

        if (v24 >= 0xB)
        {
          if (v26[5])
          {
            result = 0;
            v28 = *(a2 + 8);
            if (v28 < 3 || v28 - 2 < v19 + v26[5] - *a2)
            {
              return result;
            }
          }

          if (v24 >= 0xD)
          {
            if (v26[6])
            {
              result = 0;
              v41 = *(a2 + 8);
              if (v41 < 9 || v41 - 8 < v19 + v26[6] - *a2)
              {
                return result;
              }
            }

            if (v24 >= 0xF)
            {
              if (v26[7])
              {
                result = 0;
                v42 = *(a2 + 8);
                if (v42 < 9 || v42 - 8 < v19 + v26[7] - *a2)
                {
                  return result;
                }
              }

              if (v24 >= 0x11)
              {
                if (v26[8])
                {
                  result = 0;
                  v43 = *(a2 + 8);
                  if (v43 < 2 || v43 - 1 < v19 + v26[8] - *a2)
                  {
                    return result;
                  }
                }

                if (v24 >= 0x13)
                {
                  if (v26[9])
                  {
                    result = 0;
                    v44 = *(a2 + 8);
                    if (v44 < 2 || v44 - 1 < v19 + v26[9] - *a2)
                    {
                      return result;
                    }
                  }

                  if (v24 >= 0x15)
                  {
                    v45 = v26[10];
                    if (v26[10])
                    {
                      result = 0;
                      v46 = *(a2 + 8);
                      if (v46 < 2 || v46 - 1 < v19 + v45 - *a2)
                      {
                        return result;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    result = sub_213C9C758(v19, a2, 0x16u);
    if (!result)
    {
      return result;
    }

    v29 = (v19 - v23);
    if (*v29 >= 0x17u)
    {
      v47 = v29[11];
      if (v29[11])
      {
        v71 = v19 + v47;
        v72 = *(v19 + v47);
        result = sub_213C9D0A8(a2, (v19 + v47 + v72));
        if (!result)
        {
          return result;
        }

        if (*&v71[v72])
        {
          v48 = 0;
          v49 = (v16 + v18 + v72 + v47);
          while (sub_213CBF3B8((v49 + *v49), a2))
          {
            ++v48;
            ++v49;
            if (v48 >= *&v71[v72])
            {
              goto LABEL_35;
            }
          }

          return 0;
        }
      }
    }

LABEL_35:
    result = sub_213C9C758(v19, a2, 0x18u);
    if (!result)
    {
      return result;
    }

    v30 = (v19 - *v19);
    if (*v30 >= 0x19u && (v50 = v30[12]) != 0)
    {
      v31 = (v19 + v50 + *(v19 + v50));
    }

    else
    {
      v31 = 0;
    }

    result = sub_213C9D0A8(a2, v31);
    if (!result)
    {
      return result;
    }

    v32 = *v19;
    v33 = v19 - v32;
    v34 = *(v19 - v32);
    if (v34 >= 0x19)
    {
      v51 = -v32;
      v52 = *(v33 + 12);
      if (v52)
      {
        v55 = v19 + v52;
        v73 = *(v19 + v52);
        if (*(v19 + v52 + v73))
        {
          v56 = 0;
          v57 = (v16 + v18 + v73 + v52);
          while (sub_213C9C7DC(a2, (v57 + *v57)))
          {
            ++v56;
            ++v57;
            if (v56 >= *&v55[v73])
            {
              v58 = *v19;
              v51 = -v58;
              v34 = *(v19 - v58);
              goto LABEL_91;
            }
          }

          return 0;
        }
      }

LABEL_91:
      if (v34 >= 0x1B)
      {
        v53 = *(v19 + v51 + 26);
        if (v53)
        {
          result = 0;
          v54 = *(a2 + 8);
          if (v54 < 2 || v54 - 1 < v19 + v53 - *a2)
          {
            return result;
          }
        }
      }
    }

    --*(a2 + 16);
    ++v15;
    v16 += 4;
    if (v15 >= *v14)
    {
      v8 = *a1;
      v11 = -v8;
      v10 = *(a1 - v8);
      goto LABEL_42;
    }
  }
}

BOOL sub_213C9D0A8(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = a2 - *a1;
  if (v3 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4 < 5 || v4 - 4 < v3)
  {
    return 0;
  }

  v6 = *a2;
  if (v6 > 0x1FFFFFFE)
  {
    return 0;
  }

  v7 = 4 * v6 + 4;
  v8 = v4 > v7;
  v9 = v4 - v7;
  return v8 && v9 >= v3;
}

BOOL sub_213C9D110(int *a1, uint64_t a2)
{
  result = sub_213C9C85C(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_7;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 2) && v7 - 1 >= a1 + v5[2] - *a2)
    {
      if (v6 < 7 || (!v5[3] || (result = 0, v11 = *(a2 + 8), v11 >= 2) && v11 - 1 >= a1 + v5[3] - *a2) && (v6 < 9 || (!v5[4] || (result = 0, v8 = *(a2 + 8), v8 >= 5) && v8 - 4 >= a1 + v5[4] - *a2) && (v6 < 0xB || (v9 = v5[5]) == 0 || (result = 0, v10 = *(a2 + 8), v10 >= 3) && v10 - 2 >= a1 + v9 - *a2)))
      {
LABEL_7:
        --*(a2 + 16);
        return 1;
      }
    }
  }

  return result;
}

BOOL sub_213C9D248(int *a1, uint64_t a2)
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

  v8 = *a1;
  v9 = a1 - v8;
  v10 = *(a1 - v8);
  if (v10 < 7)
  {
    if (!sub_213CBF350(a2, 0))
    {
      return 0;
    }

    goto LABEL_41;
  }

  v11 = -v8;
  v12 = *(v9 + 3);
  if (!*(v9 + 3))
  {
    if (!sub_213CBF350(a2, 0))
    {
      return 0;
    }

LABEL_39:
    if (v10 >= 9)
    {
      if (*(a1 + v11 + 8))
      {
        result = 0;
        v49 = *(a2 + 8);
        if (v49 < 2 || v49 - 1 < a1 + *(a1 + v11 + 8) - *a2)
        {
          return result;
        }
      }
    }

LABEL_41:
    result = sub_213C9C6E4(a1, a2, 0xAu);
    if (!result)
    {
      return result;
    }

    v34 = (a1 - v8);
    if (*v34 >= 0xBu)
    {
      v35 = v34[5];
      if (v35)
      {
        result = sub_213C9D110((a1 + v35 + *(a1 + v35)), a2);
        if (!result)
        {
          return result;
        }
      }
    }

    result = sub_213C9C758(a1, a2, 0xCu);
    if (!result)
    {
      return result;
    }

    v36 = (a1 - *a1);
    if (*v36 >= 0xDu && (v50 = v36[6]) != 0)
    {
      v51 = (a1 + v50 + *(a1 + v50));
      if (!sub_213C9D0A8(a2, v51))
      {
        return 0;
      }

      if (*v51)
      {
        v52 = 0;
        v53 = v51 + 1;
        while (sub_213CBF3B8((v53 + *v53), a2))
        {
          ++v52;
          ++v53;
          if (v52 >= *v51)
          {
            goto LABEL_48;
          }
        }

        return 0;
      }
    }

    else if (!sub_213C9D0A8(a2, 0))
    {
      return 0;
    }

LABEL_48:
    result = sub_213C9C758(a1, a2, 0xEu);
    if (!result)
    {
      return result;
    }

    v37 = (a1 - *a1);
    if (*v37 >= 0xFu && (v54 = v37[7]) != 0)
    {
      v38 = (a1 + v54 + *(a1 + v54));
    }

    else
    {
      v38 = 0;
    }

    result = sub_213C9D0A8(a2, v38);
    if (!result)
    {
      return result;
    }

    v39 = (a1 - *a1);
    if (*v39 < 0xFu || (v55 = v39[7]) == 0 || (v56 = (a1 + v55 + *(a1 + v55)), !*v56))
    {
LABEL_53:
      --*(a2 + 16);
      return 1;
    }

    v57 = 0;
    v58 = v56 + 1;
    while (sub_213C9C7DC(a2, (v58 + *v58)))
    {
      ++v57;
      ++v58;
      if (v57 >= *v56)
      {
        goto LABEL_53;
      }
    }

    return 0;
  }

  v13 = *(a1 + v12);
  v14 = (a1 + v12 + v13);
  if (!sub_213CBF350(a2, v14))
  {
    return 0;
  }

  if (!*v14)
  {
    goto LABEL_39;
  }

  v15 = 0;
  v16 = a1 + v13 + v12 + 8;
  while (1)
  {
    v17 = &v14[v15 + 1];
    v18 = *v17;
    v19 = (v17 + v18);
    result = sub_213C9C85C(a2, (v17 + v18));
    if (!result)
    {
      return result;
    }

    result = sub_213C9C6E4(v19, a2, 4u);
    if (!result)
    {
      return result;
    }

    v20 = (v19 - *v19);
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = (v19 + v21 + *(v19 + v21));
    }

    else
    {
      v22 = 0;
    }

    result = sub_213C9C7DC(a2, v22);
    if (!result)
    {
      return result;
    }

    v23 = (v19 - *v19);
    v24 = *v23;
    if (v24 >= 7)
    {
      if (v23[3])
      {
        result = 0;
        v25 = *(a2 + 8);
        if (v25 < 9 || v25 - 8 < v19 + v23[3] - *a2)
        {
          return result;
        }
      }
    }

    result = sub_213C9C758(v19, a2, 8u);
    if (!result)
    {
      return result;
    }

    if (v24 >= 9)
    {
      if (v23[4])
      {
        result = sub_213C9C918((v19 + v23[4] + *(v19 + v23[4])), a2);
        if (!result)
        {
          return result;
        }
      }
    }

    result = sub_213C9C758(v19, a2, 0xAu);
    if (!result)
    {
      return result;
    }

    v26 = (v19 - *v19);
    if (*v26 >= 0xBu)
    {
      v27 = v26[5];
      if (v27)
      {
        result = sub_213C9D110((v19 + v27 + *(v19 + v27)), a2);
        if (!result)
        {
          return result;
        }
      }
    }

    result = sub_213C9C758(v19, a2, 0xCu);
    if (!result)
    {
      return result;
    }

    v28 = (v19 - *v19);
    if (*v28 >= 0xDu && (v40 = v28[6]) != 0)
    {
      v29 = (v19 + v40 + *(v19 + v40));
    }

    else
    {
      v29 = 0;
    }

    result = sub_213C9D0A8(a2, v29);
    if (!result)
    {
      return result;
    }

    v30 = (v19 - *v19);
    if (*v30 >= 0xDu)
    {
      v41 = v30[6];
      if (v41)
      {
        v60 = v19 + v41;
        v62 = *(v19 + v41);
        if (*(v19 + v41 + v62))
        {
          v42 = 0;
          v43 = (v16 + v18 + v62 + v41);
          while (sub_213C9C7DC(a2, (v43 + *v43)))
          {
            ++v42;
            ++v43;
            if (v42 >= *&v60[v62])
            {
              goto LABEL_35;
            }
          }

          return 0;
        }
      }
    }

LABEL_35:
    result = sub_213C9C758(v19, a2, 0xEu);
    if (!result)
    {
      return result;
    }

    v31 = *v19;
    v32 = v19 - v31;
    v33 = *(v19 - v31);
    if (v33 >= 0xF)
    {
      v59 = -v31;
      v44 = *(v32 + 7);
      if (*(v32 + 7))
      {
        v61 = v19 + v44;
        v63 = *(v19 + v44);
        result = sub_213C9D0A8(a2, (v19 + v44 + v63));
        if (!result)
        {
          return result;
        }

        if (*&v61[v63])
        {
          v46 = 0;
          v47 = (v16 + v18 + v63 + v44);
          while (sub_213CBF3B8((v47 + *v47), a2))
          {
            ++v46;
            ++v47;
            if (v46 >= *&v61[v63])
            {
              v48 = *v19;
              v59 = -v48;
              v33 = *(v19 - v48);
              goto LABEL_67;
            }
          }

          return 0;
        }
      }

LABEL_67:
      if (v33 >= 0x11)
      {
        if (*(v19 + v59 + 16))
        {
          result = 0;
          v45 = *(a2 + 8);
          if (v45 < 2 || v45 - 1 < v19 + *(v19 + v59 + 16) - *a2)
          {
            return result;
          }
        }
      }
    }

    --*(a2 + 16);
    ++v15;
    v16 += 4;
    if (v15 >= *v14)
    {
      v8 = *a1;
      v11 = -v8;
      v10 = *(a1 - v8);
      goto LABEL_39;
    }
  }
}

uint64_t sub_213C9D898(uint64_t a1)
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
        sub_213C98DC4(v4 + 88);
        v6 = (v4 + 24);
        sub_213C9DC58(&v6);
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        MEMORY[0x21604D1A0](v4, 0x10B2C4072A4B994);
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

  sub_213C98B5C(*(a1 + 8));
  return a1;
}

void *sub_213C9D958(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_213C97BD4();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t sub_213C9D9FC(uint64_t result, int a2, _DWORD *a3, int a4)
{
  v7 = result;
  v9 = *(result + 40);
  v8 = *(result + 48);
  *(result + 56) = v9;
  v10 = -4;
  v11 = -8;
  if (!a4)
  {
    v11 = -4;
  }

  if (!a3)
  {
    v10 = 0;
  }

  v12 = (v11 + v10 - (*(result + 32) + v9 - v8)) & (*(result + 72) - 1);
  if (v8 - v9 < v12)
  {
    result = sub_213C97F80(result, v12);
    *(v7 + 48) -= v12;
  }

  else
  {
    *(result + 48) = v8 - v12;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  do
  {
    *(*(v7 + 48) + v24++) = 0;
  }

  while (v12 != v24);
LABEL_7:
  if (a3)
  {
    v25 = *(v7 + 48);
    if ((v25 - *(v7 + 56)) <= 3)
    {
      result = sub_213C97F80(v7, 4uLL);
      v25 = *(v7 + 48);
    }

    *(v7 + 48) = v25 - 4;
    *(v25 - 4) = *a3;
  }

  if (*(v7 + 72) <= 3uLL)
  {
    *(v7 + 72) = 4;
  }

  v13 = *(v7 + 32);
  v14 = *(v7 + 40);
  v15 = *(v7 + 48);
  v16 = (v15 - (v13 + v14)) & 3;
  if (v15 - *(v7 + 56) < v16)
  {
    result = sub_213C97F80(v7, (v15 - (v13 + v14)) & 3);
    *(v7 + 48) -= v16;
  }

  else
  {
    v17 = v15 - v16;
    *(v7 + 48) = v17;
    if (!v16)
    {
      v18 = v13 + v14 - v17;
      goto LABEL_13;
    }
  }

  v26 = 0;
  do
  {
    *(*(v7 + 48) + v26++) = 0;
  }

  while (v16 != v26);
  v14 = *(v7 + 40);
  v17 = *(v7 + 48);
  v13 = *(v7 + 32);
  v18 = v13 - v17 + v14;
  if (*(v7 + 72) <= 3uLL)
  {
    *(v7 + 72) = 4;
  }

LABEL_13:
  v19 = v18 - a2 + 4;
  v20 = (v17 - (v13 + v14)) & 3;
  v21 = *(v7 + 56);
  if (v17 - v21 < v20)
  {
    result = sub_213C97F80(v7, v20);
    *(v7 + 48) -= v20;
  }

  else
  {
    v22 = v17 - v20;
    *(v7 + 48) = v17 - v20;
    if (!v20)
    {
      goto LABEL_15;
    }
  }

  v27 = 0;
  do
  {
    *(*(v7 + 48) + v27++) = 0;
  }

  while (v20 != v27);
  v22 = *(v7 + 48);
  v21 = *(v7 + 56);
LABEL_15:
  if ((v22 - v21) <= 3)
  {
    result = sub_213C97F80(v7, 4uLL);
    v22 = *(v7 + 48);
  }

  *(v22 - 4) = v19;
  v23 = v22 - 4;
  *(v7 + 48) = v23;
  if (a4)
  {
    result = sub_213C8C524(v7, *(v7 + 40) - v23 + *(v7 + 32));
  }

  *(v7 + 71) = 1;
  return result;
}

void sub_213C9DC58(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_213C9DCE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_213C97BD4();
  }
}

void *sub_213C9DDA4(uint64_t a1, void *a2)
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

uint64_t sub_213C9DE90(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v6 = v3;
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
      v3 = v6;
    }

    while (v5 != v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *sub_213C9DF08(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_213C97BD4();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t sub_213C9DFB8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? a2 : *a2;
  v7 = v5 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v8 = a1 + 8;
  do
  {
    v9 = *(v3 + 55);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = *(v3 + 32);
      v9 = *(v3 + 40);
    }

    else
    {
      v10 = (v3 + 32);
    }

    if (v7 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    v12 = memcmp(v10, v6, v11);
    if (v9 < v7)
    {
      v13 = -1;
    }

    else
    {
      v13 = v7 < v9;
    }

    if (v12)
    {
      v13 = v12;
    }

    if (v13 >= 0)
    {
      v8 = v3;
    }

    v3 = *(v3 + ((v13 >> 28) & 8));
  }

  while (v3);
  if (v8 == v2)
  {
    return v2;
  }

  v14 = *(v8 + 32);
  v15 = *(v8 + 55);
  if (v15 >= 0)
  {
    v14 = v8 + 32;
  }

  v16 = *(v8 + 40);
  if (v15 >= 0)
  {
    v16 = *(v8 + 55);
  }

  v18[0] = v14;
  v18[1] = v16;
  if ((sub_213C986FC(a2, v18) & 0x80000000) != 0)
  {
    return v2;
  }

  return v8;
}

uint64_t sub_213C9E0BC(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_213C97BD4();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_213C9E148(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v14 = a1 + 8;
  v16 = a1 + 8;
  do
  {
    v5 = a2;
    v6 = *(a2 + 23);
    if (v6 < 0)
    {
      v5 = *a2;
    }

    if (v6 < 0)
    {
      v6 = a2[1];
    }

    v17 = v5;
    v18 = v6;
    v7 = v3;
    v8 = sub_213C986FC((v3 + 32), &v17);
    v9 = v16;
    if (v8 >= 0)
    {
      v9 = v7;
    }

    v16 = v9;
    v3 = *(v7 + ((v8 >> 28) & 8));
  }

  while (v3);
  v2 = v14;
  if (v16 == v14)
  {
    return v2;
  }

  v10 = *(v16 + 32);
  v11 = *(v16 + 55);
  if (v11 >= 0)
  {
    v10 = (v16 + 32);
  }

  v12 = *(v16 + 40);
  if (v11 >= 0)
  {
    v12 = *(v16 + 55);
  }

  v17 = v10;
  v18 = v12;
  v13 = sub_213C986FC(a2, &v17);
  result = v16;
  v2 = v14;
  if (v13 < 0)
  {
    return v2;
  }

  return result;
}

void sub_213C9E228(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v21 = a4;
      v22 = *(a1 + 8);
      v23 = *a1;
      if (v22 != v8)
      {
        do
        {
          v24 = *(v22 - 1);
          v22 -= 3;
          if (v24 < 0)
          {
            operator delete(*v22);
          }
        }

        while (v22 != v8);
        v23 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v23);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v21;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_213C97BD4();
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v5++);
      }

      while (v5 != a3);
      v12 = *(a1 + 8);
    }

    while (v12 != v8)
    {
      v20 = *(v12 - 1);
      v12 -= 3;
      if (v20 < 0)
      {
        operator delete(*v12);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (__str + v13);
    if (v12 != v8)
    {
      do
      {
        std::string::operator=(v8++, v5++);
        v13 -= 24;
      }

      while (v13);
      v12 = *(a1 + 8);
    }

    v15 = v12;
    if (v14 != a3)
    {
      v16 = 0;
      do
      {
        v17 = &v14[v16 / 0x18];
        v18 = &v12[v16 / 8];
        if (SHIBYTE(v14[v16 / 0x18].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_213C9D958(v18, *v17, *(v17 + 1));
        }

        else
        {
          v19 = *v17;
          v18[2] = *(v17 + 2);
          *v18 = v19;
        }

        v16 += 24;
      }

      while (&v14[v16 / 0x18] != a3);
      v15 = &v12[v16 / 8];
    }

    *(a1 + 8) = v15;
  }
}

__n128 sub_213C9E508(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      v14 = 0x1C71C71C71C71C72 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v14 = 1;
      }

      v15 = a1[4];
      if (v14 < 0x38E38E38E38E38FLL)
      {
        operator new();
      }

      sub_213C97BD4();
    }

    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3) + 1;
    v7 = v6 / -2;
    if (v5 == v4)
    {
      v4 = v5 - 72 * (v6 / 2);
    }

    else
    {
      v8 = 72 * v7;
      do
      {
        v9 = v5 + v8;
        v10 = *v5;
        *(v9 + 10) = *(v5 + 10);
        *v9 = v10;
        if (*(v5 + v8 + 55) < 0)
        {
          operator delete(*(v9 + 32));
        }

        v11 = v5[2];
        *(v9 + 48) = *(v5 + 6);
        *(v9 + 32) = v11;
        *(v5 + 55) = 0;
        *(v5 + 32) = 0;
        *(v9 + 56) = *(v5 + 28);
        *(v9 + 64) = *(v5 + 8);
        v5 = (v5 + 72);
      }

      while (v5 != v4);
      v4 = v5 + 72 * v7;
      v5 = a1[1];
    }

    a1[1] = v5 + 72 * v7;
    a1[2] = v4;
  }

  v12 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v12;
  result = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(v4 + 56) = *(a2 + 56);
  *(v4 + 64) = *(a2 + 64);
  a1[2] += 72;
  return result;
}

uint64_t *sub_213C9E758(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v8 = 0x8E38E38E38E38E39 * ((v3 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_213C97BD4();
    }

    v10 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1C71C71C71C71C7)
    {
      v11 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = result;
    if (v11)
    {
      if (v11 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_213C97BD4();
    }

    v12 = 72 * v8;
    v14[0] = 0;
    v14[1] = v12;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(v12 + 64) = *(a2 + 64);
    v14[2] = 72 * v8 + 72;
    v14[3] = 0;
    sub_213CC0470(result, v14);
    v7 = v2[1];
    result = sub_213CC02A0(v14);
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 32) = v6;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 64) = *(a2 + 64);
    v7 = v3 + 72;
  }

  v2[1] = v7;
  return result;
}

BOOL sub_213C9E8DC(__int16 *a1, __int16 *a2, int a3)
{
  switch(a3)
  {
    case -4:
      v21 = *a2;
      v22 = sub_213CBCF6C(*a1);
      v9 = v22 < sub_213CBCF6C(v21);
      goto LABEL_27;
    case -3:
    case 10:
      v5 = *a1 >= *a2;
      return !v5;
    case -2:
    case 8:
      v3 = *a1;
      v4 = *a2;
      goto LABEL_6;
    case -1:
    case 6:
      v3 = *a1;
      v4 = *a2;
      goto LABEL_6;
    case 0:
    case 1:
    case 2:
    case 4:
      v3 = *a1;
      v4 = *a2;
LABEL_6:
      v5 = v3 >= v4;
      return !v5;
    case 3:
      v7 = *a1;
      v8 = *a2;
      return v7 < v8;
    case 5:
      v7 = *a1;
      v8 = *a2;
      return v7 < v8;
    case 7:
      v7 = *a1;
      v8 = *a2;
      return v7 < v8;
    case 9:
      return *a1 < *a2;
    case 11:
      v9 = *a1 < *a2;
      goto LABEL_27;
    case 12:
      v9 = *a1 < *a2;
LABEL_27:
      result = v9;
      break;
    case 13:
      v11 = (a1 + *a1);
      v12 = (a2 + *a2);
      v15 = *v11;
      v13 = v11 + 1;
      v14 = v15;
      v18 = *v12;
      v16 = v12 + 1;
      v17 = v18;
      if (v18 >= v14)
      {
        v19 = v14;
      }

      else
      {
        v19 = v17;
      }

      v20 = memcmp(v13, v16, v19);
      if (v20)
      {
        result = v20 < 0;
      }

      else
      {
        result = v14 < v17;
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_213C9EA70(void ***a1)
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
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 4));
        }

        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_213C9EAFC(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = v11;
        }

        v15 = v10[1];
        if (v13 >= 0)
        {
          v16 = v13;
        }

        else
        {
          v16 = v15;
        }

        if (v16 >= v7)
        {
          v17 = v7;
        }

        else
        {
          v17 = v16;
        }

        v18 = memcmp(v8, v14, v17);
        v19 = v7 < v16;
        if (v18)
        {
          v19 = v18 < 0;
        }

        if (!v19)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_24;
        }
      }

      v20 = memcmp(v14, v8, v17);
      v21 = v16 < v7;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (!v21)
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

LABEL_24:
  *a2 = v9;
  return v5;
}

unint64_t sub_213C9EC04(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v87 = *(a2 - 1);
        v88 = *v8;
        if (*(v87 + 136) < *(*v8 + 136))
        {
          *v8 = v87;
          *(a2 - 1) = v88;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v95 = v8 + 1;
      v96 = v8[1];
      v97 = v8 + 2;
      v98 = v8[2];
      v99 = *v8;
      v100 = *(v96 + 136);
      v101 = *(*v8 + 136);
      v102 = *(v98 + 136);
      if (v100 >= v101)
      {
        if (v102 >= v100)
        {
          goto LABEL_180;
        }

        *v95 = v98;
        *v97 = v96;
        v103 = v8;
        v104 = (v8 + 1);
        result = v96;
        if (v102 >= v101)
        {
LABEL_181:
          v152 = *(a2 - 1);
          if (*(v152 + 136) >= *(v96 + 136))
          {
            return result;
          }

          *v97 = v152;
          *(a2 - 1) = v96;
          v153 = *v97;
          v154 = *v95;
          v155 = *(v153 + 136);
          if (v155 >= *(v154 + 136))
          {
            return result;
          }

          v8[1] = v153;
          v8[2] = v154;
          v156 = *v8;
          if (v155 >= *(*v8 + 136))
          {
            return result;
          }

          *v8 = v153;
          goto LABEL_202;
        }
      }

      else
      {
        v103 = v8;
        v104 = (v8 + 2);
        result = *v8;
        if (v102 >= v100)
        {
          *v8 = v96;
          v8[1] = v99;
          v103 = v8 + 1;
          v104 = (v8 + 2);
          result = v99;
          if (v102 >= v101)
          {
LABEL_180:
            v96 = v98;
            goto LABEL_181;
          }
        }
      }

      *v103 = v98;
      *v104 = v99;
      v96 = result;
      goto LABEL_181;
    }

    if (v9 == 5)
    {
      v75 = (v8 + 1);
      v76 = v8[1];
      v78 = (v8 + 2);
      v77 = v8[2];
      v79 = *v8;
      v80 = *(v76 + 136);
      v81 = *(*v8 + 136);
      v82 = *(v77 + 136);
      if (v80 >= v81)
      {
        if (v82 >= v80)
        {
          v85 = *v8;
          v79 = v8[1];
        }

        else
        {
          v83 = v8;
          v84 = (v8 + 1);
          *v75 = v77;
          *v78 = v76;
          v85 = v77;
          result = v79;
          v86 = v76;
          if (v82 < v81)
          {
            goto LABEL_186;
          }

          v85 = v79;
          v79 = v77;
          v77 = v76;
        }
      }

      else
      {
        if (v82 < v80)
        {
          v83 = v8;
          v84 = (v8 + 2);
          v85 = v8[2];
          result = v8[1];
          v86 = *v8;
          goto LABEL_186;
        }

        v83 = v8 + 1;
        v84 = (v8 + 2);
        *v8 = v76;
        v8[1] = v79;
        v85 = v76;
        result = v77;
        v86 = v79;
        if (v82 >= v81)
        {
          v85 = v76;
        }

        else
        {
LABEL_186:
          *v83 = v77;
          *v84 = v79;
          v79 = result;
          v77 = v86;
        }
      }

      v158 = v8[3];
      v159 = *(v158 + 136);
      if (v159 >= *(v77 + 136))
      {
        v77 = v8[3];
      }

      else
      {
        v8[2] = v158;
        v8[3] = v77;
        if (v159 < *(v79 + 136))
        {
          *v75 = v158;
          *v78 = v79;
          if (v159 < *(v85 + 136))
          {
            *v8 = v158;
            v8[1] = v85;
          }
        }
      }

      v160 = *(a2 - 1);
      if (*(v160 + 136) >= *(v77 + 136))
      {
        return result;
      }

      v8[3] = v160;
      *(a2 - 1) = v77;
      v162 = v8[2];
      v161 = v8[3];
      v163 = *(v161 + 136);
      if (v163 >= *(v162 + 136))
      {
        return result;
      }

      v8[2] = v161;
      v8[3] = v162;
      v164 = v8[1];
      if (v163 >= *(v164 + 136))
      {
        return result;
      }

      v8[1] = v161;
      v8[2] = v164;
      v156 = *v8;
      if (v163 >= *(*v8 + 136))
      {
        return result;
      }

      *v8 = v161;
LABEL_202:
      v8[1] = v156;
      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v105 = v8 + 1;
      v107 = v8 == a2 || v105 == a2;
      if (a4)
      {
        if (!v107)
        {
          v108 = 8;
          v109 = v8;
          do
          {
            v111 = *v109;
            v110 = v109[1];
            v109 = v105;
            v112 = *(v110 + 136);
            if (v112 < *(v111 + 136))
            {
              v113 = v108;
              while (1)
              {
                *(v8 + v113) = v111;
                v114 = v113 - 8;
                if (v113 == 8)
                {
                  break;
                }

                v111 = *(v8 + v113 - 16);
                v113 -= 8;
                if (v112 >= *(v111 + 136))
                {
                  v115 = (v8 + v114);
                  goto LABEL_130;
                }
              }

              v115 = v8;
LABEL_130:
              *v115 = v110;
            }

            v105 = v109 + 1;
            v108 += 8;
          }

          while (v109 + 1 != a2);
        }
      }

      else if (!v107)
      {
        do
        {
          v149 = *v7;
          v148 = v7[1];
          v7 = v105;
          v150 = *(v148 + 136);
          if (v150 < *(v149 + 136))
          {
            v151 = v7;
            do
            {
              *v151 = v149;
              v149 = *(v151 - 2);
              --v151;
            }

            while (v150 < *(v149 + 136));
            *v151 = v148;
          }

          v105 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v116 = (v9 - 2) >> 1;
        v117 = v116;
        do
        {
          v118 = v117;
          if (v116 >= v117)
          {
            v119 = (2 * v117) | 1;
            v120 = &v8[v119];
            v121 = *v120;
            if (2 * v118 + 2 < v9 && *(v121 + 136) < *(v120[1] + 136))
            {
              v121 = v120[1];
              ++v120;
              v119 = 2 * v118 + 2;
            }

            result = &v8[v118];
            v122 = *result;
            v123 = *(*result + 136);
            if (*(v121 + 136) >= v123)
            {
              do
              {
                v124 = v120;
                *result = v121;
                if (v116 < v119)
                {
                  break;
                }

                v125 = (2 * v119) | 1;
                v120 = &v8[v125];
                v126 = 2 * v119 + 2;
                v121 = *v120;
                if (v126 < v9 && *(v121 + 136) < *(v120[1] + 136))
                {
                  v121 = v120[1];
                  ++v120;
                  v125 = v126;
                }

                result = v124;
                v119 = v125;
              }

              while (*(v121 + 136) >= v123);
              *v124 = v122;
            }
          }

          v117 = v118 - 1;
        }

        while (v118);
        do
        {
          v127 = 0;
          v128 = *v8;
          v129 = v8;
          do
          {
            v130 = &v129[v127];
            v131 = v130 + 1;
            v132 = v130[1];
            v133 = (2 * v127) | 1;
            v127 = 2 * v127 + 2;
            if (v127 >= v9)
            {
              v127 = v133;
            }

            else
            {
              v136 = v130[2];
              v134 = v130 + 2;
              v135 = v136;
              result = *(v132 + 136);
              if (result >= *(v136 + 136))
              {
                v127 = v133;
              }

              else
              {
                v132 = v135;
                v131 = v134;
              }
            }

            *v129 = v132;
            v129 = v131;
          }

          while (v127 <= ((v9 - 2) >> 1));
          if (v131 == --a2)
          {
            *v131 = v128;
          }

          else
          {
            *v131 = *a2;
            *a2 = v128;
            v137 = (v131 - v8 + 8) >> 3;
            v138 = v137 < 2;
            v139 = v137 - 2;
            if (!v138)
            {
              v140 = v139 >> 1;
              v141 = &v8[v140];
              v142 = *v141;
              v143 = *v131;
              v144 = *(*v131 + 136);
              if (*(*v141 + 136) < v144)
              {
                do
                {
                  v145 = v141;
                  *v131 = v142;
                  if (!v140)
                  {
                    break;
                  }

                  v140 = (v140 - 1) >> 1;
                  v141 = &v8[v140];
                  v142 = *v141;
                  v131 = v145;
                }

                while (*(*v141 + 136) < v144);
                *v145 = v143;
              }
            }
          }

          v138 = v9-- <= 2;
        }

        while (!v138);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 136);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 136);
      v17 = *(*v8 + 136);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 136) < *(*v8 + 136))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 136) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 136);
      v29 = *(v27 + 136);
      v30 = *(a2 - 2);
      v31 = *(v30 + 136);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 136) < *(v32 + 136))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 136) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 136);
      v40 = *(v38 + 136);
      v41 = *(a2 - 3);
      v42 = *(v41 + 136);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 136) < *(v43 + 136))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 136) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 136);
      v48 = *(*v25 + 136);
      v49 = *v35;
      v50 = *(*v35 + 136);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 136);
    v21 = *(*v11 + 136);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 136) < *(*v11 + 136))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 136) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 136);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 136) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 136) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 136) >= v53);
      }

      if (v56 >= v57)
      {
        v8 = (v8 + v54 * 8);
      }

      else
      {
        v60 = *v57;
        v8 = (v8 + v54 * 8);
        v61 = v57;
        do
        {
          *v8 = v60;
          *v61 = v55;
          do
          {
            v62 = v8[1];
            ++v8;
            v55 = v62;
          }

          while (*(v62 + 136) < v53);
          do
          {
            v63 = *--v61;
            v60 = v63;
          }

          while (*(v63 + 136) >= v53);
        }

        while (v8 < v61);
      }

      v64 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v64;
      }

      *v64 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v65 = sub_213C9F6E4(v7, v8 - 1);
      result = sub_213C9F6E4(v8, a2);
      if (result)
      {
        a2 = v8 - 1;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_81:
        result = sub_213C9EC04(v7, v8 - 1, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v53 = *(v52 + 136);
      if (*(*(v8 - 1) + 136) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 136))
      {
        v67 = v8 + 1;
        do
        {
          v8 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v53 >= *(*v8 + 136));
      }

      else
      {
        do
        {
          v66 = v8[1];
          ++v8;
        }

        while (v53 >= *(v66 + 136));
      }

      v68 = a2;
      if (v8 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v53 < *(v69 + 136));
      }

      if (v8 < v68)
      {
        v70 = *v8;
        v71 = *v68;
        do
        {
          *v8 = v71;
          *v68 = v70;
          do
          {
            v72 = v8[1];
            ++v8;
            v70 = v72;
          }

          while (v53 >= *(v72 + 136));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v53 < *(v73 + 136));
        }

        while (v8 < v68);
      }

      v74 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v52;
    }
  }

  v89 = *v8;
  v90 = v8[1];
  v91 = *(v90 + 136);
  v92 = *(*v8 + 136);
  v93 = *(a2 - 1);
  v94 = *(v93 + 136);
  if (v91 >= v92)
  {
    if (v94 < v91)
    {
      v8[1] = v93;
      *(a2 - 1) = v90;
      v147 = *v8;
      v146 = v8[1];
      if (*(v146 + 136) < *(*v8 + 136))
      {
        *v8 = v146;
        v8[1] = v147;
      }
    }
  }

  else
  {
    if (v94 >= v91)
    {
      *v8 = v90;
      v8[1] = v89;
      v157 = *(a2 - 1);
      if (*(v157 + 136) >= v92)
      {
        return result;
      }

      v8[1] = v157;
    }

    else
    {
      *v8 = v93;
    }

    *(a2 - 1) = v89;
  }

  return result;
}

BOOL sub_213C9F6E4(void *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v19 = *a1;
      v20 = a1[1];
      v21 = *(v20 + 136);
      v22 = *(*a1 + 136);
      v23 = *(a2 - 1);
      v24 = *(v23 + 136);
      if (v21 >= v22)
      {
        if (v24 < v21)
        {
          a1[1] = v23;
          *(a2 - 1) = v20;
          v46 = *a1;
          v45 = a1[1];
          if (*(v45 + 136) < *(*a1 + 136))
          {
            *a1 = v45;
            a1[1] = v46;
          }
        }

        return 1;
      }

      if (v24 >= v21)
      {
        *a1 = v20;
        a1[1] = v19;
        v61 = *(a2 - 1);
        if (*(v61 + 136) >= v22)
        {
          return 1;
        }

        a1[1] = v61;
      }

      else
      {
        *a1 = v23;
      }

      *(a2 - 1) = v19;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      v9 = *(v5 + 136);
      v10 = *(*a1 + 136);
      v11 = *(v6 + 136);
      if (v9 >= v10)
      {
        if (v11 >= v9)
        {
          v14 = *a1;
          v8 = a1[1];
          goto LABEL_60;
        }

        v12 = a1;
        v13 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v14 = v6;
        v15 = v8;
        v16 = v5;
        if (v11 >= v10)
        {
          v14 = v8;
          v8 = v6;
          v6 = v5;
LABEL_60:
          v62 = a1[3];
          v63 = *(v62 + 136);
          if (v63 >= *(v6 + 136))
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v62;
            a1[3] = v6;
            if (v63 < *(v8 + 136))
            {
              *v4 = v62;
              *v7 = v8;
              if (v63 < *(v14 + 136))
              {
                *a1 = v62;
                a1[1] = v14;
              }
            }
          }

          v64 = *(a2 - 1);
          if (*(v64 + 136) >= *(v6 + 136))
          {
            return 1;
          }

          a1[3] = v64;
          *(a2 - 1) = v6;
          v66 = a1[2];
          v65 = a1[3];
          v67 = *(v65 + 136);
          if (v67 >= *(v66 + 136))
          {
            return 1;
          }

          a1[2] = v65;
          a1[3] = v66;
          v68 = a1[1];
          if (v67 >= *(v68 + 136))
          {
            return 1;
          }

          a1[1] = v65;
          a1[2] = v68;
          v60 = *a1;
          if (v67 >= *(*a1 + 136))
          {
            return 1;
          }

          *a1 = v65;
LABEL_70:
          a1[1] = v60;
          return 1;
        }
      }

      else if (v11 >= v9)
      {
        v12 = a1 + 1;
        v13 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        if (v11 >= v10)
        {
          v14 = v5;
          goto LABEL_60;
        }
      }

      else
      {
        v12 = a1;
        v13 = a1 + 2;
        v14 = a1[2];
        v15 = a1[1];
        v16 = *a1;
      }

      *v12 = v6;
      *v13 = v8;
      v8 = v15;
      v6 = v16;
      goto LABEL_60;
    }

    v34 = a1 + 1;
    v35 = a1[1];
    v36 = a1 + 2;
    v37 = a1[2];
    v38 = *a1;
    v39 = *(v35 + 136);
    v40 = *(*a1 + 136);
    v41 = *(v37 + 136);
    if (v39 >= v40)
    {
      if (v41 >= v39)
      {
LABEL_47:
        v35 = v37;
LABEL_48:
        v56 = *(a2 - 1);
        if (*(v56 + 136) >= *(v35 + 136))
        {
          return 1;
        }

        *v36 = v56;
        *(a2 - 1) = v35;
        v57 = *v36;
        v58 = *v34;
        v59 = *(v57 + 136);
        if (v59 >= *(v58 + 136))
        {
          return 1;
        }

        a1[1] = v57;
        a1[2] = v58;
        v60 = *a1;
        if (v59 >= *(*a1 + 136))
        {
          return 1;
        }

        *a1 = v57;
        goto LABEL_70;
      }

      *v34 = v37;
      *v36 = v35;
      v42 = a1;
      v43 = a1 + 1;
      v44 = v35;
      if (v41 >= v40)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v42 = a1;
      v43 = a1 + 2;
      v44 = *a1;
      if (v41 >= v39)
      {
        *a1 = v35;
        a1[1] = v38;
        v42 = a1 + 1;
        v43 = a1 + 2;
        v44 = v38;
        if (v41 >= v40)
        {
          goto LABEL_47;
        }
      }
    }

    *v42 = v37;
    *v43 = v38;
    v35 = v44;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v17 = *(a2 - 1);
    v18 = *a1;
    if (*(v17 + 136) < *(*a1 + 136))
    {
      *a1 = v17;
      *(a2 - 1) = v18;
    }

    return 1;
  }

LABEL_16:
  v26 = a1 + 2;
  v25 = a1[2];
  v27 = a1[1];
  v28 = *a1;
  v29 = *(v27 + 136);
  v30 = *(*a1 + 136);
  v31 = *(v25 + 136);
  if (v29 >= v30)
  {
    if (v31 >= v29)
    {
      goto LABEL_30;
    }

    a1[1] = v25;
    *v26 = v27;
    v32 = a1;
    v33 = a1 + 1;
LABEL_28:
    if (v31 >= v30)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v32 = a1;
  v33 = a1 + 2;
  if (v31 >= v29)
  {
    *a1 = v27;
    a1[1] = v28;
    v32 = a1 + 1;
    v33 = a1 + 2;
    goto LABEL_28;
  }

LABEL_29:
  *v32 = v25;
  *v33 = v28;
LABEL_30:
  v47 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v48 = 0;
  for (i = 24; ; i += 8)
  {
    v50 = *v47;
    v51 = *v26;
    v52 = *(*v47 + 136);
    if (v52 < *(v51 + 136))
    {
      v53 = i;
      while (1)
      {
        *(a1 + v53) = v51;
        v54 = v53 - 8;
        if (v53 == 8)
        {
          break;
        }

        v51 = *(a1 + v53 - 16);
        v53 -= 8;
        if (v52 >= *(v51 + 136))
        {
          v55 = (a1 + v54);
          goto LABEL_38;
        }
      }

      v55 = a1;
LABEL_38:
      *v55 = v50;
      if (++v48 == 8)
      {
        break;
      }
    }

    v26 = v47++;
    if (v47 == a2)
    {
      return 1;
    }
  }

  return v47 + 1 == a2;
}

uint64_t sub_213C9FB18(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v87 = *(a2 - 1);
        v88 = *v8;
        if (*(v87 + 136) < *(*v8 + 136))
        {
          *v8 = v87;
          *(a2 - 1) = v88;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v95 = v8 + 1;
      v96 = v8[1];
      v97 = v8 + 2;
      v98 = v8[2];
      v99 = *v8;
      v100 = *(v96 + 136);
      v101 = *(*v8 + 136);
      v102 = *(v98 + 136);
      if (v100 >= v101)
      {
        if (v102 >= v100)
        {
          goto LABEL_180;
        }

        *v95 = v98;
        *v97 = v96;
        v103 = v8;
        v104 = v8 + 1;
        result = v96;
        if (v102 >= v101)
        {
LABEL_181:
          v152 = *(a2 - 1);
          if (*(v152 + 136) >= *(v96 + 136))
          {
            return result;
          }

          *v97 = v152;
          *(a2 - 1) = v96;
          v153 = *v97;
          v154 = *v95;
          v155 = *(v153 + 136);
          if (v155 >= *(v154 + 136))
          {
            return result;
          }

          v8[1] = v153;
          v8[2] = v154;
          v156 = *v8;
          if (v155 >= *(*v8 + 136))
          {
            return result;
          }

          *v8 = v153;
          goto LABEL_202;
        }
      }

      else
      {
        v103 = v8;
        v104 = v8 + 2;
        result = *v8;
        if (v102 >= v100)
        {
          *v8 = v96;
          v8[1] = v99;
          v103 = v8 + 1;
          v104 = v8 + 2;
          result = v99;
          if (v102 >= v101)
          {
LABEL_180:
            v96 = v98;
            goto LABEL_181;
          }
        }
      }

      *v103 = v98;
      *v104 = v99;
      v96 = result;
      goto LABEL_181;
    }

    if (v9 == 5)
    {
      v75 = v8 + 1;
      v76 = v8[1];
      v78 = v8 + 2;
      v77 = v8[2];
      v79 = *v8;
      v80 = *(v76 + 136);
      v81 = *(*v8 + 136);
      v82 = *(v77 + 136);
      if (v80 >= v81)
      {
        if (v82 >= v80)
        {
          v85 = *v8;
          v79 = v8[1];
        }

        else
        {
          v83 = v8;
          v84 = v8 + 1;
          *v75 = v77;
          *v78 = v76;
          v85 = v77;
          result = v79;
          v86 = v76;
          if (v82 < v81)
          {
            goto LABEL_186;
          }

          v85 = v79;
          v79 = v77;
          v77 = v76;
        }
      }

      else
      {
        if (v82 < v80)
        {
          v83 = v8;
          v84 = v8 + 2;
          v85 = v8[2];
          result = v8[1];
          v86 = *v8;
          goto LABEL_186;
        }

        v83 = v8 + 1;
        v84 = v8 + 2;
        *v8 = v76;
        v8[1] = v79;
        v85 = v76;
        result = v77;
        v86 = v79;
        if (v82 >= v81)
        {
          v85 = v76;
        }

        else
        {
LABEL_186:
          *v83 = v77;
          *v84 = v79;
          v79 = result;
          v77 = v86;
        }
      }

      v158 = v8[3];
      v159 = *(v158 + 136);
      if (v159 >= *(v77 + 136))
      {
        v77 = v8[3];
      }

      else
      {
        v8[2] = v158;
        v8[3] = v77;
        if (v159 < *(v79 + 136))
        {
          *v75 = v158;
          *v78 = v79;
          if (v159 < *(v85 + 136))
          {
            *v8 = v158;
            v8[1] = v85;
          }
        }
      }

      v160 = *(a2 - 1);
      if (*(v160 + 136) >= *(v77 + 136))
      {
        return result;
      }

      v8[3] = v160;
      *(a2 - 1) = v77;
      v162 = v8[2];
      v161 = v8[3];
      v163 = *(v161 + 136);
      if (v163 >= *(v162 + 136))
      {
        return result;
      }

      v8[2] = v161;
      v8[3] = v162;
      v164 = v8[1];
      if (v163 >= *(v164 + 136))
      {
        return result;
      }

      v8[1] = v161;
      v8[2] = v164;
      v156 = *v8;
      if (v163 >= *(*v8 + 136))
      {
        return result;
      }

      *v8 = v161;
LABEL_202:
      v8[1] = v156;
      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v105 = v8 + 1;
      v107 = v8 == a2 || v105 == a2;
      if (a4)
      {
        if (!v107)
        {
          v108 = 8;
          v109 = v8;
          do
          {
            v111 = *v109;
            v110 = v109[1];
            v109 = v105;
            v112 = *(v110 + 136);
            if (v112 < *(v111 + 136))
            {
              v113 = v108;
              while (1)
              {
                *(v8 + v113) = v111;
                v114 = v113 - 8;
                if (v113 == 8)
                {
                  break;
                }

                v111 = *(v8 + v113 - 16);
                v113 -= 8;
                if (v112 >= *(v111 + 136))
                {
                  v115 = (v8 + v114);
                  goto LABEL_130;
                }
              }

              v115 = v8;
LABEL_130:
              *v115 = v110;
            }

            v105 = v109 + 1;
            v108 += 8;
          }

          while (v109 + 1 != a2);
        }
      }

      else if (!v107)
      {
        do
        {
          v149 = *v7;
          v148 = v7[1];
          v7 = v105;
          v150 = *(v148 + 136);
          if (v150 < *(v149 + 136))
          {
            v151 = v7;
            do
            {
              *v151 = v149;
              v149 = *(v151 - 2);
              --v151;
            }

            while (v150 < *(v149 + 136));
            *v151 = v148;
          }

          v105 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v116 = (v9 - 2) >> 1;
        v117 = v116;
        do
        {
          v118 = v117;
          if (v116 >= v117)
          {
            v119 = (2 * v117) | 1;
            v120 = &v8[v119];
            v121 = *v120;
            if (2 * v118 + 2 < v9 && *(v121 + 136) < *(v120[1] + 136))
            {
              v121 = v120[1];
              ++v120;
              v119 = 2 * v118 + 2;
            }

            result = &v8[v118];
            v122 = *result;
            v123 = *(*result + 136);
            if (*(v121 + 136) >= v123)
            {
              do
              {
                v124 = v120;
                *result = v121;
                if (v116 < v119)
                {
                  break;
                }

                v125 = (2 * v119) | 1;
                v120 = &v8[v125];
                v126 = 2 * v119 + 2;
                v121 = *v120;
                if (v126 < v9 && *(v121 + 136) < *(v120[1] + 136))
                {
                  v121 = v120[1];
                  ++v120;
                  v125 = v126;
                }

                result = v124;
                v119 = v125;
              }

              while (*(v121 + 136) >= v123);
              *v124 = v122;
            }
          }

          v117 = v118 - 1;
        }

        while (v118);
        do
        {
          v127 = 0;
          v128 = *v8;
          v129 = v8;
          do
          {
            v130 = &v129[v127];
            v131 = v130 + 1;
            v132 = v130[1];
            v133 = (2 * v127) | 1;
            v127 = 2 * v127 + 2;
            if (v127 >= v9)
            {
              v127 = v133;
            }

            else
            {
              v136 = v130[2];
              v134 = v130 + 2;
              v135 = v136;
              result = *(v132 + 136);
              if (result >= *(v136 + 136))
              {
                v127 = v133;
              }

              else
              {
                v132 = v135;
                v131 = v134;
              }
            }

            *v129 = v132;
            v129 = v131;
          }

          while (v127 <= ((v9 - 2) >> 1));
          if (v131 == --a2)
          {
            *v131 = v128;
          }

          else
          {
            *v131 = *a2;
            *a2 = v128;
            v137 = (v131 - v8 + 8) >> 3;
            v138 = v137 < 2;
            v139 = v137 - 2;
            if (!v138)
            {
              v140 = v139 >> 1;
              v141 = &v8[v140];
              v142 = *v141;
              v143 = *v131;
              v144 = *(*v131 + 136);
              if (*(*v141 + 136) < v144)
              {
                do
                {
                  v145 = v141;
                  *v131 = v142;
                  if (!v140)
                  {
                    break;
                  }

                  v140 = (v140 - 1) >> 1;
                  v141 = &v8[v140];
                  v142 = *v141;
                  v131 = v145;
                }

                while (*(*v141 + 136) < v144);
                *v145 = v143;
              }
            }
          }

          v138 = v9-- <= 2;
        }

        while (!v138);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 136);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 136);
      v17 = *(*v8 + 136);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 136) < *(*v8 + 136))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 136) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 136);
      v29 = *(v27 + 136);
      v30 = *(a2 - 2);
      v31 = *(v30 + 136);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 136) < *(v32 + 136))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 136) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 136);
      v40 = *(v38 + 136);
      v41 = *(a2 - 3);
      v42 = *(v41 + 136);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 136) < *(v43 + 136))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 136) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 136);
      v48 = *(*v25 + 136);
      v49 = *v35;
      v50 = *(*v35 + 136);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 136);
    v21 = *(*v11 + 136);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 136) < *(*v11 + 136))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 136) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 136);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 136) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 136) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 136) >= v53);
      }

      if (v56 >= v57)
      {
        v8 = (v8 + v54 * 8);
      }

      else
      {
        v60 = *v57;
        v8 = (v8 + v54 * 8);
        v61 = v57;
        do
        {
          *v8 = v60;
          *v61 = v55;
          do
          {
            v62 = v8[1];
            ++v8;
            v55 = v62;
          }

          while (*(v62 + 136) < v53);
          do
          {
            v63 = *--v61;
            v60 = v63;
          }

          while (*(v63 + 136) >= v53);
        }

        while (v8 < v61);
      }

      v64 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v64;
      }

      *v64 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v65 = sub_213CA05F8(v7, v8 - 1);
      result = sub_213CA05F8(v8, a2);
      if (result)
      {
        a2 = v8 - 1;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_81:
        result = sub_213C9FB18(v7, v8 - 1, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v53 = *(v52 + 136);
      if (*(*(v8 - 1) + 136) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 136))
      {
        v67 = v8 + 1;
        do
        {
          v8 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v53 >= *(*v8 + 136));
      }

      else
      {
        do
        {
          v66 = v8[1];
          ++v8;
        }

        while (v53 >= *(v66 + 136));
      }

      v68 = a2;
      if (v8 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v53 < *(v69 + 136));
      }

      if (v8 < v68)
      {
        v70 = *v8;
        v71 = *v68;
        do
        {
          *v8 = v71;
          *v68 = v70;
          do
          {
            v72 = v8[1];
            ++v8;
            v70 = v72;
          }

          while (v53 >= *(v72 + 136));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v53 < *(v73 + 136));
        }

        while (v8 < v68);
      }

      v74 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v52;
    }
  }

  v89 = *v8;
  v90 = v8[1];
  v91 = *(v90 + 136);
  v92 = *(*v8 + 136);
  v93 = *(a2 - 1);
  v94 = *(v93 + 136);
  if (v91 >= v92)
  {
    if (v94 < v91)
    {
      v8[1] = v93;
      *(a2 - 1) = v90;
      v147 = *v8;
      v146 = v8[1];
      if (*(v146 + 136) < *(*v8 + 136))
      {
        *v8 = v146;
        v8[1] = v147;
      }
    }
  }

  else
  {
    if (v94 >= v91)
    {
      *v8 = v90;
      v8[1] = v89;
      v157 = *(a2 - 1);
      if (*(v157 + 136) >= v92)
      {
        return result;
      }

      v8[1] = v157;
    }

    else
    {
      *v8 = v93;
    }

    *(a2 - 1) = v89;
  }

  return result;
}

BOOL sub_213CA05F8(void *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v19 = *a1;
      v20 = a1[1];
      v21 = *(v20 + 136);
      v22 = *(*a1 + 136);
      v23 = *(a2 - 1);
      v24 = *(v23 + 136);
      if (v21 >= v22)
      {
        if (v24 < v21)
        {
          a1[1] = v23;
          *(a2 - 1) = v20;
          v46 = *a1;
          v45 = a1[1];
          if (*(v45 + 136) < *(*a1 + 136))
          {
            *a1 = v45;
            a1[1] = v46;
          }
        }

        return 1;
      }

      if (v24 >= v21)
      {
        *a1 = v20;
        a1[1] = v19;
        v61 = *(a2 - 1);
        if (*(v61 + 136) >= v22)
        {
          return 1;
        }

        a1[1] = v61;
      }

      else
      {
        *a1 = v23;
      }

      *(a2 - 1) = v19;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      v9 = *(v5 + 136);
      v10 = *(*a1 + 136);
      v11 = *(v6 + 136);
      if (v9 >= v10)
      {
        if (v11 >= v9)
        {
          v14 = *a1;
          v8 = a1[1];
          goto LABEL_60;
        }

        v12 = a1;
        v13 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v14 = v6;
        v15 = v8;
        v16 = v5;
        if (v11 >= v10)
        {
          v14 = v8;
          v8 = v6;
          v6 = v5;
LABEL_60:
          v62 = a1[3];
          v63 = *(v62 + 136);
          if (v63 >= *(v6 + 136))
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v62;
            a1[3] = v6;
            if (v63 < *(v8 + 136))
            {
              *v4 = v62;
              *v7 = v8;
              if (v63 < *(v14 + 136))
              {
                *a1 = v62;
                a1[1] = v14;
              }
            }
          }

          v64 = *(a2 - 1);
          if (*(v64 + 136) >= *(v6 + 136))
          {
            return 1;
          }

          a1[3] = v64;
          *(a2 - 1) = v6;
          v66 = a1[2];
          v65 = a1[3];
          v67 = *(v65 + 136);
          if (v67 >= *(v66 + 136))
          {
            return 1;
          }

          a1[2] = v65;
          a1[3] = v66;
          v68 = a1[1];
          if (v67 >= *(v68 + 136))
          {
            return 1;
          }

          a1[1] = v65;
          a1[2] = v68;
          v60 = *a1;
          if (v67 >= *(*a1 + 136))
          {
            return 1;
          }

          *a1 = v65;
LABEL_70:
          a1[1] = v60;
          return 1;
        }
      }

      else if (v11 >= v9)
      {
        v12 = a1 + 1;
        v13 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        if (v11 >= v10)
        {
          v14 = v5;
          goto LABEL_60;
        }
      }

      else
      {
        v12 = a1;
        v13 = a1 + 2;
        v14 = a1[2];
        v15 = a1[1];
        v16 = *a1;
      }

      *v12 = v6;
      *v13 = v8;
      v8 = v15;
      v6 = v16;
      goto LABEL_60;
    }

    v34 = a1 + 1;
    v35 = a1[1];
    v36 = a1 + 2;
    v37 = a1[2];
    v38 = *a1;
    v39 = *(v35 + 136);
    v40 = *(*a1 + 136);
    v41 = *(v37 + 136);
    if (v39 >= v40)
    {
      if (v41 >= v39)
      {
LABEL_47:
        v35 = v37;
LABEL_48:
        v56 = *(a2 - 1);
        if (*(v56 + 136) >= *(v35 + 136))
        {
          return 1;
        }

        *v36 = v56;
        *(a2 - 1) = v35;
        v57 = *v36;
        v58 = *v34;
        v59 = *(v57 + 136);
        if (v59 >= *(v58 + 136))
        {
          return 1;
        }

        a1[1] = v57;
        a1[2] = v58;
        v60 = *a1;
        if (v59 >= *(*a1 + 136))
        {
          return 1;
        }

        *a1 = v57;
        goto LABEL_70;
      }

      *v34 = v37;
      *v36 = v35;
      v42 = a1;
      v43 = a1 + 1;
      v44 = v35;
      if (v41 >= v40)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v42 = a1;
      v43 = a1 + 2;
      v44 = *a1;
      if (v41 >= v39)
      {
        *a1 = v35;
        a1[1] = v38;
        v42 = a1 + 1;
        v43 = a1 + 2;
        v44 = v38;
        if (v41 >= v40)
        {
          goto LABEL_47;
        }
      }
    }

    *v42 = v37;
    *v43 = v38;
    v35 = v44;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v17 = *(a2 - 1);
    v18 = *a1;
    if (*(v17 + 136) < *(*a1 + 136))
    {
      *a1 = v17;
      *(a2 - 1) = v18;
    }

    return 1;
  }

LABEL_16:
  v26 = a1 + 2;
  v25 = a1[2];
  v27 = a1[1];
  v28 = *a1;
  v29 = *(v27 + 136);
  v30 = *(*a1 + 136);
  v31 = *(v25 + 136);
  if (v29 >= v30)
  {
    if (v31 >= v29)
    {
      goto LABEL_30;
    }

    a1[1] = v25;
    *v26 = v27;
    v32 = a1;
    v33 = a1 + 1;
LABEL_28:
    if (v31 >= v30)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v32 = a1;
  v33 = a1 + 2;
  if (v31 >= v29)
  {
    *a1 = v27;
    a1[1] = v28;
    v32 = a1 + 1;
    v33 = a1 + 2;
    goto LABEL_28;
  }

LABEL_29:
  *v32 = v25;
  *v33 = v28;
LABEL_30:
  v47 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v48 = 0;
  for (i = 24; ; i += 8)
  {
    v50 = *v47;
    v51 = *v26;
    v52 = *(*v47 + 136);
    if (v52 < *(v51 + 136))
    {
      v53 = i;
      while (1)
      {
        *(a1 + v53) = v51;
        v54 = v53 - 8;
        if (v53 == 8)
        {
          break;
        }

        v51 = *(a1 + v53 - 16);
        v53 -= 8;
        if (v52 >= *(v51 + 136))
        {
          v55 = (a1 + v54);
          goto LABEL_38;
        }
      }

      v55 = a1;
LABEL_38:
      *v55 = v50;
      if (++v48 == 8)
      {
        break;
      }
    }

    v26 = v47++;
    if (v47 == a2)
    {
      return 1;
    }
  }

  return v47 + 1 == a2;
}

uint64_t sub_213CA0A2C(uint64_t a1, int a2, unint64_t a3)
{
  if (!*sub_213CC092C(a1, &v4, a2, a3))
  {
    operator new();
  }

  return 0;
}

uint64_t sub_213CA0AE8(void *a1, void *a2, void *a3, uint64_t (**a4)(void))
{
  v8 = (*a4)(*a2, *a1);
  result = (*a4)(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      result = (*a4)(*a3);
      if (result)
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (result)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    result = (*a4)(*a2, *a1);
    if (result)
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  return result;
}

uint64_t sub_213CA0BCC(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_213CA0D20(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned int (**a6)(void))
{
  sub_213CA0BCC(a1, a2, a3, a4, a6);
  result = (*a6)(*a5, *a4);
  if (result)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    result = (*a6)(*a4, *a3);
    if (result)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      result = (*a6)(*a3, *a2);
      if (result)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        result = (*a6)(*a2, *a1);
        if (result)
        {
          v16 = *a1;
          *a1 = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_213CA0DFC(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *sub_213CA0F0C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_213CA1028(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (*a3)(a1[1], *a1);
        v16 = (*a3)(*(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v17;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_213CA0BCC(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_213CA0BCC(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        v10 = a1[1];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v12 = a1[1];
        v11 = a1[2];
        v13 = *a1;
        a1[1] = v11;
        a1[2] = v12;
        v14 = (*a3)(v11, v13);
        break;
      default:
        goto LABEL_17;
    }

    if (v14)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = (*a3)(a1[1], *a1);
  v19 = a1 + 2;
  v20 = (*a3)(a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if ((*a3)(v25))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v23 = a1[1];
    v24 = *a1;
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if ((*a3)(*v26, *v19))
    {
      v29 = *v26;
      v30 = v27;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 24) = *(a1 + v30 + 16);
        if (v30 == -16)
        {
          break;
        }

        v30 -= 8;
        if (((*a3)(v29, *(v31 + 1)) & 1) == 0)
        {
          v32 = (a1 + v30 + 24);
          goto LABEL_40;
        }
      }

      v32 = a1;
LABEL_40:
      *v32 = v29;
      if (++v28 == 8)
      {
        return v26 + 1 == a2;
      }
    }

    v19 = v26;
    v27 += 8;
    if (++v26 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_213CA1324(uint64_t result, void *a2, void *a3, unsigned int (**a4)(void, void))
{
  if (result != a2)
  {
    v6 = a2;
    v7 = result;
    v8 = (a2 - result) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (result + 8 * v9);
      do
      {
        result = sub_213CA1530(v7, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        result = (*a4)(*v12, *v7);
        if (result)
        {
          v13 = *v12;
          *v12 = *v7;
          *v7 = v13;
          result = sub_213CA1530(v7, a4, v8, v7);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = v6;
        v15 = 0;
        v30 = *v7;
        v16 = v7;
        do
        {
          v17 = &v16[v15];
          v18 = v17 + 1;
          v19 = (2 * v15) | 1;
          v20 = 2 * v15 + 2;
          if (v20 >= v8)
          {
            v15 = (2 * v15) | 1;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            result = (*a4)(*(v21 - 1), v22);
            if (result)
            {
              v18 = v21;
              v15 = v20;
            }

            else
            {
              v15 = v19;
            }
          }

          *v16 = *v18;
          v16 = v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        v6 = v14 - 1;
        if (v18 == v14 - 1)
        {
          *v18 = v30;
        }

        else
        {
          *v18 = *v6;
          *v6 = v30;
          v23 = (v18 - v7 + 8) >> 3;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (!v24)
          {
            v26 = v25 >> 1;
            v27 = &v7[v25 >> 1];
            result = (*a4)(*v27, *v18);
            if (result)
            {
              v28 = *v18;
              do
              {
                v29 = v27;
                *v18 = *v27;
                if (!v26)
                {
                  break;
                }

                v26 = (v26 - 1) >> 1;
                v27 = &v7[v26];
                result = (*a4)(*v27, v28);
                v18 = v29;
              }

              while ((result & 1) != 0);
              *v29 = v28;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }
  }

  return result;
}