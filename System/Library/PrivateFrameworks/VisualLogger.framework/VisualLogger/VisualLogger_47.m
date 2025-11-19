uint64_t sub_2714D4920(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE840](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D498C(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE830](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D49F0(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE7F0](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D4A54(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE810](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D4AB8(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE850](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D4B28(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    v6 = *(result + 40);
    do
    {
      if (v6)
      {
        v8 = *(v5 + 24);
        v9 = *(v5 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE7B0](*(v5 + 24), v7);
      v6 = *(v5 + 40) + 1;
      *(v5 + 40) = v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_2714D4BB0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_271839280(a1, v3);
}

uint64_t sub_2714D4BD8(uint64_t result, __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 2 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE820](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 2;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4C60(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 4 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE7E0](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 4;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4CE8(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 8 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE800](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4D70(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 8 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE840](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void sub_2714D4DF8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_2718388F8(a1, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D4E48(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_271838810(a1, a2++);
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2714D4E98(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 2 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE830](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 2;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4F20(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 4 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE7F0](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 4;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D4FA8(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 8 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE810](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2714D5030(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(result + 40);
    v6 = 8 * a3;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        sub_271120E64(v8, &v9, 1);
      }

      v7 = *a2++;
      result = MEMORY[0x2743BE850](*(v4 + 24), v7);
      v5 = *(v4 + 40) + 1;
      *(v4 + 40) = v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void sub_2714D50B8(uint64_t a1, int *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_271838C54(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D5108(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_271838EC0(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D5158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_271839128(a1, a2);
      a2 += 24;
      v5 -= 24;
    }

    while (v5);
  }
}

void *sub_2714D51B4(void *result)
{
  v1 = result;
  if (result[5])
  {
    v2 = result[3];
    v3 = *(v1 + 32);
    result = sub_271120E64(v2, &v3, 1);
    ++v1[5];
  }

  else
  {
    result[5] = 1;
  }

  return result;
}

void *sub_2714D5220(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = result[5];
    do
    {
      while (v4)
      {
        v5 = v3[3];
        v6 = *(v3 + 32);
        result = sub_271120E64(v5, &v6, 1);
        v4 = v3[5] + 1;
        v3[5] = v4;
        if (!--v2)
        {
          return result;
        }
      }

      v4 = 1;
      v3[5] = 1;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2714D52BC(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 40);
    if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_16:
      v6 = result;
      operator delete(*v2);
      return v6;
    }

    v5 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v5;
    v2 = v5;
    if (*(v5 + 23) < 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v3 = result;
        operator delete(*(result + 80));
        result = v3;
      }

      if (*(result + 71) < 0)
      {
        v4 = result;
        operator delete(*(result + 48));
        result = v4;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v2 = (result + 16);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_2714D53D8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      do
      {
        while (1)
        {
          v3 = *v2;
          v4 = v2[6];
          if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v4->__on_zero_shared)(v4);
            std::__shared_weak_count::__release_weak(v4);
          }

          if (*(v2 + 39) < 0)
          {
            break;
          }

          operator delete(v2);
          v2 = v3;
          if (!v3)
          {
            goto LABEL_10;
          }
        }

        operator delete(v2[2]);
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

LABEL_10:
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_2714D54B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void sub_2714D5538(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

__n128 sub_2714D567C(uint64_t **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 456))
  {
    v4 = (v3 + 416);
  }

  else
  {
    v4 = 0;
  }

  sub_2714E9080(v3 + 32, (*a1)[2], *a2, *(v3 + 56), v4, *(v3 + 456), &__p);
  v6 = v2[1];
  if (*(v6 + 32) != v9)
  {
    if (!*(v6 + 32))
    {
      result = *&__p.__r_.__value_.__l.__data_;
      *(v6 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v6 = result;
      memset(&__p, 0, sizeof(__p));
      *(v6 + 24) = v8;
      *(v6 + 32) = 1;
      if (v9 != 1)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    *(v6 + 32) = 0;
LABEL_14:
    if (v9 != 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!*(v6 + 32))
  {
    goto LABEL_14;
  }

  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  result = *&__p.__r_.__value_.__l.__data_;
  *(v6 + 16) = *(&__p.__r_.__value_.__l + 2);
  *v6 = result;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  *(v6 + 24) = v8;
  if (v9 == 1)
  {
LABEL_15:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return result;
}

__n128 sub_2714D5794(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = v2[2];
  v5 = *(*v2 + 56);
  v6 = *v2 + 416;
  v7 = *(*v2 + 456);
  if (!*(*v2 + 456))
  {
    v6 = 0;
  }

  v15 = v6;
  v16 = v7;
  v14 = 6;
  if (!v3)
  {
    sub_27112AFFC();
  }

  (*(*v3 + 48))(__p);
  v9 = v2[1];
  if (*(v9 + 32) != v13)
  {
    if (!*(v9 + 32))
    {
      result = *__p;
      *(v9 + 16) = v11;
      *v9 = result;
      __p[1] = 0;
      v11 = 0;
      __p[0] = 0;
      *(v9 + 24) = v12;
      *(v9 + 32) = 1;
      if (v13 != 1)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    *(v9 + 32) = 0;
    goto LABEL_14;
  }

  if (!*(v9 + 32))
  {
LABEL_14:
    if (v13 != 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  result = *__p;
  *(v9 + 16) = v11;
  *v9 = result;
  HIBYTE(v11) = 0;
  LOBYTE(__p[0]) = 0;
  *(v9 + 24) = v12;
  if (v13 == 1)
  {
LABEL_15:
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void *sub_2714D58E8(void *a1)
{
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[5];
    if (v3 != a1 + 2)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = a1[1];
      if (!v4)
      {
        return a1;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v3 = a1[5];
    if (v3 != a1 + 2)
    {
      goto LABEL_4;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = a1[1];
  if (!v4)
  {
    return a1;
  }

LABEL_10:
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_2714D5A40(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714D5AC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288132438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714D5B14(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    (off_2881323C8[v2])(&v6, a1 + 80);
  }

  *(a1 + 112) = -1;
  v3 = *(a1 + 72);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_2714D5C0C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 != -1)
  {
    (off_2881323C8[v2])(&v7, a1 + 56);
  }

  *(a1 + 88) = -1;
  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 24);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void *sub_2714D5D04(void *a1)
{
  *a1 = &unk_288132498;
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = a1[2];
      if (!v4)
      {
        return a1;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
      goto LABEL_4;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = a1[2];
  if (!v4)
  {
    return a1;
  }

LABEL_10:
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_2714D5E58(void *a1)
{
  *a1 = &unk_288132498;
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = a1[2];
      if (!v4)
      {
LABEL_12:

        JUMPOUT(0x2743BF050);
      }

LABEL_10:
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
      goto LABEL_4;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_12;
  }

  goto LABEL_10;
}

void sub_2714D60C8(_Unwind_Exception *a1)
{
  sub_27112F828(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2714D60E4(void *a1, void *a2)
{
  *a2 = &unk_288132498;
  v4 = a1[2];
  a2[1] = a1[1];
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = a1[6];
  if (!result)
  {
    goto LABEL_6;
  }

  if (result != a1 + 3)
  {
    result = (*(*result + 16))(result);
LABEL_6:
    a2[6] = result;
    goto LABEL_8;
  }

  a2[6] = a2 + 3;
  result = (*(*a1[6] + 24))(a1[6]);
LABEL_8:
  v6 = a1[8];
  a2[7] = a1[7];
  a2[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2714D61F0(void *a1)
{
  sub_2714D6450(a1 + 1);

  operator delete(a1);
}

void sub_2714D622C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  *v6 = *v2;
  *v2 = 0;
  *(v2 + 8) = 0;
  v8[0] = 0;
  v9 = -1;
  v3 = *(v2 + 88);
  if (v3 != -1)
  {
    v7 = v8;
    (off_288132478[v3])(&v7, v2 + 56);
    v9 = v3;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    sub_27112AFFC();
  }

  (*(*v4 + 48))(v4, v6, v2 + 16, v8);
  if (v9 != -1)
  {
    (off_2881323C8[v9])(&v7, v8);
  }

  v9 = -1;
  if (v6[1])
  {
    std::__shared_weak_count::__release_weak(v6[1]);
  }

  std::promise<void>::set_value(*(a1 + 8));
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2714D6354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::exception_ptr a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

uint64_t sub_2714D63D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3esn6thread6detail28DispatchAsyncAndReturnFutureIvNSt3__18functionIFvNS4_8weak_ptrINS_3kit3viz13VDataExporter4ImplEEERKNS8_11ContextDataENS4_7variantIJNS8_17StoragePreferenceENS5_IFNS4_8optionalINS8_12DataLocationEEERKNS4_4__fs10filesystem4pathESE_SG_RNS7_2fs11IFilesystemENS0_11OptionalRefINS8_15ExportFileStateEEEEEEEEEEEENS1_11IWorkQueueTINS5_IFvvEEEEEJRSB_SE_RKSX_EEENS4_6futureIT_EERT1_OT0_DpOT2_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3esn6thread6detail28DispatchAsyncAndReturnFutureIvNSt3__18functionIFvNS4_8weak_ptrINS_3kit3viz13VDataExporter4ImplEEERKNS8_11ContextDataENS4_7variantIJNS8_17StoragePreferenceENS5_IFNS4_8optionalINS8_12DataLocationEEERKNS4_4__fs10filesystem4pathESE_SG_RNS7_2fs11IFilesystemENS0_11OptionalRefINS8_15ExportFileStateEEEEEEEEEEEENS1_11IWorkQueueTINS5_IFvvEEEEEJRSB_SE_RKSX_EEENS4_6futureIT_EERT1_OT0_DpOT2_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3esn6thread6detail28DispatchAsyncAndReturnFutureIvNSt3__18functionIFvNS4_8weak_ptrINS_3kit3viz13VDataExporter4ImplEEERKNS8_11ContextDataENS4_7variantIJNS8_17StoragePreferenceENS5_IFNS4_8optionalINS8_12DataLocationEEERKNS4_4__fs10filesystem4pathESE_SG_RNS7_2fs11IFilesystemENS0_11OptionalRefINS8_15ExportFileStateEEEEEEEEEEEENS1_11IWorkQueueTINS5_IFvvEEEEEJRSB_SE_RKSX_EEENS4_6futureIT_EERT1_OT0_DpOT2_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3esn6thread6detail28DispatchAsyncAndReturnFutureIvNSt3__18functionIFvNS4_8weak_ptrINS_3kit3viz13VDataExporter4ImplEEERKNS8_11ContextDataENS4_7variantIJNS8_17StoragePreferenceENS5_IFNS4_8optionalINS8_12DataLocationEEERKNS4_4__fs10filesystem4pathESE_SG_RNS7_2fs11IFilesystemENS0_11OptionalRefINS8_15ExportFileStateEEEEEEEEEEEENS1_11IWorkQueueTINS5_IFvvEEEEEJRSB_SE_RKSX_EEENS4_6futureIT_EERT1_OT0_DpOT2_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2714D6450(void *a1)
{
  v2 = a1[7];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[5];
    if (v3 != a1 + 2)
    {
      goto LABEL_4;
    }

LABEL_9:
    (*(*v3 + 32))(v3);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }

    goto LABEL_10;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[5];
  if (v3 == a1 + 2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
LABEL_10:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

uint64_t sub_2714D6590(uint64_t a1)
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

void *sub_2714D67F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0x400000001;
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a3 + 24) == 1)
  {
    if (*(a3 + 23) < 0)
    {
      v6 = a4;
      sub_271127178(v11, *a3, *(a3 + 8));
      a4 = v6;
    }

    else
    {
      *v11 = *a3;
      v12 = *(a3 + 16);
    }

    v13 = 1;
  }

  LOBYTE(__p[0]) = 0;
  v10 = 0;
  if (*(a4 + 24) == 1)
  {
    if (*(a4 + 23) < 0)
    {
      sub_271127178(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v9 = *(a4 + 16);
    }

    v10 = 1;
  }

  sub_27183D1E0(a1, &v14, a2, v11, __p, 0, 1);
  if (v10 == 1 && SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  *a1 = &unk_288117648;
  return a1;
}

void sub_2714D693C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714D698C(uint64_t a1)
{
  *a1 = &unk_288117510;
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 136));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 24));
  return a1;
}

void sub_2714D6A1C(uint64_t a1)
{
  *a1 = &unk_288117510;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(*(a1 + 24));
LABEL_4:

      JUMPOUT(0x2743BF050);
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  goto LABEL_9;
}

void sub_2714D6AC4(uint64_t a1)
{
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a1, __p);
    if (v4 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_11:
        v2 = 0;
        if (v4 < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_2;
      }
    }

    else if (v4 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_11;
    }

    v2 = 1;
    if (v4 < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }

LABEL_2:
    if ((v2 & 1) == 0)
    {
      return;
    }
  }
}

double sub_2714D6BCC(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a1, &v5);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
    ++*(a1 + 104);
  }

  return result;
}

void sub_2714D6C68(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_27183C3E0(a1, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D6CB8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_2718397F4(a1, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D6D08(uint64_t a1, _WORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      sub_271839FEC(a1, a2++);
      v5 -= 2;
    }

    while (v5);
  }
}

void sub_2714D6D58(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_27183A66C(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D6DA8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183ACEC(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D6DF8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183B36C(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D6E48(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_271839D90(a1, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D6E98(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      sub_271839B34(a1, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D6EE8(uint64_t a1, _WORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      sub_27183A32C(a1, a2++);
      v5 -= 2;
    }

    while (v5);
  }
}

void sub_2714D6F38(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_27183A9AC(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D6F88(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183B02C(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D6FD8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183B6AC(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D7028(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_27183BD60(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D7078(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_27183C0A0(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D70C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      while (1)
      {
        ++*(a1 + 80);
        if (*(a1 + 128) != 1 || *(a1 + 131) != 1)
        {
          break;
        }

        *(a1 + 132) = 1;
        a2 += 24;
        v5 -= 24;
        if (!v5)
        {
          return;
        }
      }

      sub_27183D78C(a1, &v7);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v6 = v7;
      *(a2 + 16) = v8;
      *a2 = v6;
      a2 += 24;
      ++*(a1 + 104);
      v5 -= 24;
    }

    while (v5);
  }
}

void sub_2714D7194(uint64_t a1)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a1, &__p);
    if (v3 < 0)
    {
      operator delete(__p);
    }

    ++*(a1 + 104);
  }
}

void sub_2714D721C(uint64_t a1, uint64_t *a2)
{
  for (i = *a2; i; --i)
  {
    while (1)
    {
      ++*(a1 + 80);
      if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
      {
        break;
      }

      sub_27183D78C(a1, &__p);
      if (v5 < 0)
      {
        operator delete(__p);
        ++*(a1 + 104);
        if (!--i)
        {
          return;
        }
      }

      else
      {
        ++*(a1 + 104);
        if (!--i)
        {
          return;
        }
      }
    }

    *(a1 + 132) = 1;
  }
}

uint64_t *sub_2714D72D4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_288117510;
    if (*(v2 + 159) < 0)
    {
      operator delete(*(v2 + 136));
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(v2 + 47) & 0x80000000) == 0)
        {
LABEL_5:
          MEMORY[0x2743BF050](v2, 0x10B3C40F5E21753);
          return a1;
        }

LABEL_9:
        operator delete(*(v2 + 24));
        goto LABEL_5;
      }
    }

    else if ((*(v2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v2 + 48));
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return a1;
}

void **sub_2714D737C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 152;
        sub_2714D73E0(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2714D73E0(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    if (*(a1 + 88) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + 88) != 1)
  {
LABEL_8:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_7:
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v2 = *(a1 + 8);

  operator delete(v2);
}

void sub_2714D758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_2714FBE4C(&a9);
  sub_271181F68(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_2714D75A8(uint64_t a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    if (a1 == this)
    {
      return a1;
    }

    v4 = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (*(a1 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v10 = this;
      }

      else
      {
        v10 = this->__pn_.__r_.__value_.__r.__words[0];
      }

      if (v4 >= 0)
      {
        size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = this->__pn_.__r_.__value_.__l.__size_;
      }

      sub_2711289F8(a1, v10, size);
      return a1;
    }

    else
    {
      if ((*(&this->__pn_.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        v5 = *&this->__pn_.__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&this->__pn_.__r_.__value_.__l + 2);
        *a1 = v5;
        return a1;
      }

      sub_271128928(a1, this->__pn_.__r_.__value_.__l.__data_, this->__pn_.__r_.__value_.__l.__size_);
      return a1;
    }
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(a1, 47);
    }

    v7 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v7 >= 0)
    {
      v8 = this;
    }

    else
    {
      v8 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v7 >= 0)
    {
      v9 = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v8, v9);
    return a1;
  }
}

uint64_t sub_2714D7694(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(a1 + 16, (a2 + 16));
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t sub_2714D7700(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      v3 = *(a1 + 184);
      v4 = *(a1 + 176);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *(a1 + 176);
      }

      *(a1 + 184) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if (*(a1 + 136) != 1)
    {
      goto LABEL_16;
    }
  }

  else if (*(a1 + 136) != 1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

LABEL_16:
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_2714D7810(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_2714D78B4(uint64_t a1)
{
  sub_2714D96EC(*(a1 + 344));
  sub_271167834(a1 + 312, *(a1 + 320));
  v2 = *(a1 + 288);
  if (v2)
  {
    v3 = *(a1 + 296);
    v4 = *(a1 + 288);
    if (v3 != v2)
    {
      do
      {
        v3 -= 152;
        sub_2714D73E0(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 288);
    }

    *(a1 + 296) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 272);
  *(a1 + 272) = 0;
  if (v5)
  {
    *v5 = &unk_288117510;
    if (*(v5 + 159) < 0)
    {
      operator delete(*(v5 + 136));
      if ((*(v5 + 71) & 0x80000000) == 0)
      {
LABEL_9:
        if ((*(v5 + 47) & 0x80000000) == 0)
        {
LABEL_10:
          MEMORY[0x2743BF050](v5, 0x10B3C40F5E21753);
          goto LABEL_11;
        }

LABEL_51:
        operator delete(*(v5 + 24));
        goto LABEL_10;
      }
    }

    else if ((*(v5 + 71) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(*(v5 + 48));
    if ((*(v5 + 47) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_11:
  v6 = *(a1 + 264);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    v8 = *(a1 + 232);
    v9 = *(a1 + 224);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 8);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v8 -= 16;
      }

      while (v8 != v7);
      v9 = *(a1 + 224);
    }

    *(a1 + 232) = v7;
    operator delete(v9);
  }

  v11 = *(a1 + 216);
  if (v11 != -1)
  {
    (off_288132520[v11])(&v29, a1 + 200);
  }

  *(a1 + 216) = -1;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v12 = *(a1 + 136);
  if (v12)
  {
    v13 = *(a1 + 144);
    v14 = *(a1 + 136);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 8);
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        v13 -= 16;
      }

      while (v13 != v12);
      v14 = *(a1 + 136);
    }

    *(a1 + 144) = v12;
    operator delete(v14);
  }

  if (*(a1 + 128) != 1)
  {
LABEL_40:
    if (*(a1 + 88) != 1)
    {
      goto LABEL_55;
    }

    goto LABEL_41;
  }

  v16 = *(a1 + 120);
  if (v16 != a1 + 96)
  {
    if (v16)
    {
      (*(*v16 + 40))(v16);
    }

    goto LABEL_40;
  }

  (*(*v16 + 32))(v16);
  if (*(a1 + 88) != 1)
  {
    goto LABEL_55;
  }

LABEL_41:
  v17 = *(a1 + 64);
  if (v17)
  {
    v18 = *(a1 + 72);
    v19 = *(a1 + 64);
    if (v18 != v17)
    {
      v20 = v18 - 32;
      do
      {
        v21 = *(v18 - 8);
        if (v18 - 32 == v21)
        {
          (*(*v21 + 32))(v21);
        }

        else if (v21)
        {
          (*(*v21 + 40))(v21);
        }

        *(v18 - 800) = off_2881327C0;
        sub_271347580(v18 - 784);
        v20 -= 800;
        v18 -= 800;
      }

      while (v18 != v17);
      v19 = *(a1 + 64);
    }

    *(a1 + 72) = v17;
    operator delete(v19);
  }

LABEL_55:
  if (*(a1 + 56) == 1)
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(a1 + 40);
      v24 = *(a1 + 32);
      if (v23 != v22)
      {
        v25 = v23 - 96;
        v26 = v23 - 96;
        do
        {
          (**v26)(v26);
          v25 -= 96;
          v27 = v26 == v22;
          v26 -= 96;
        }

        while (!v27);
        v24 = *(a1 + 32);
      }

      *(a1 + 40) = v22;
      operator delete(v24);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2714D7D18(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (!(a4 >> 60))
    {
      v21 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v21 = a4;
      }

      v22 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v23 = 0xFFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v21;
      }

      if (!(v23 >> 60))
      {
        operator new();
      }
    }

    sub_271135560();
  }

  v13 = *(a1 + 8);
  if (a4 <= (v13 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5;
        v18 = v5[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v8 + 1);
        *v8 = v19;
        *(v8 + 1) = v18;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    for (; v13 != v8; v13 -= 16)
    {
      v27 = *(v13 - 1);
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v14 = (a2 + v13 - v8);
      do
      {
        v16 = *v5;
        v15 = v5[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(v8 + 1);
        *v8 = v16;
        *(v8 + 1) = v15;
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
      v5 = v14;
    }

    v24 = v13;
    if (v5 != a3)
    {
      v24 = v13;
      v25 = v13;
      do
      {
        v26 = v5[1];
        *v25 = *v5;
        *(v25 + 1) = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v5 += 2;
        v25 += 16;
        v24 += 16;
      }

      while (v5 != a3);
    }

    *(a1 + 8) = v24;
  }
}

void sub_2714D82C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714D830C(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  v13 = 0;
  std::to_string(&v14, v3);
  *&v15 = v12;
  *(&v15 + 1) = &v14;
  v16 = v12;
  v17 = &v14;
  v18 = &v14;
  v19 = &v15;
  (off_288132530[0])(&v19, v12);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 == -1)
  {
    sub_2711308D4();
  }

  *&v15 = &v14;
  (off_288132410[v13])(&__p, &v15, v12);
  if (v13 != -1)
  {
    (off_2881323F8[v13])(&v15, v12);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__p.__r_.__value_.__l.__size_ == v5)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

LABEL_11:
      operator new();
    }

    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
    ++__p.__r_.__value_.__l.__size_;
  }

  else
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_11;
    }

    *(&__p.__r_.__value_.__s + 23) = (*(&__p.__r_.__value_.__s + 23) + 1) & 0x7F;
    p_p = &__p;
  }

  *(&p_p->__r_.__value_.__l.__data_ + size) = 32;
  v11 = __p;
  memset(&__p, 0, sizeof(__p));
  sub_27184CC10(1, 1000000000, &v15);
  if (SHIBYTE(v16) >= 0)
  {
    v7 = &v15;
  }

  else
  {
    v7 = v15;
  }

  if (SHIBYTE(v16) >= 0)
  {
    v8 = HIBYTE(v16);
  }

  else
  {
    v8 = *(&v15 + 1);
  }

  v9 = std::string::append(&v11, v7, v8);
  *a2 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__p.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }
}

void sub_2714D85E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2714D8654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714D866C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_271130878(&a16);
  _Unwind_Resume(a1);
}

void sub_2714D86B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106700;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714D8798(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v25[0] = 0;
  v26 = -1;
  v7 = *(a4 + 32);
  if (v7 != -1)
  {
    v13[0] = v25;
    (off_288132478[v7])(v13, a4);
    v26 = v7;
  }

  if (!v5)
  {
    goto LABEL_22;
  }

  v8 = std::__shared_weak_count::lock(v5);
  v24 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  v23 = v6;
  if (v6)
  {
    sub_2714C9440(v13, v6, a3, v25);
    if ((v22 & 1) == 0 && *(v6 + 160) == 1)
    {
      v9 = *(v6 + 152);
      if (!v9)
      {
        sub_27112AFFC();
      }

      (*(*v9 + 48))(v9, v6 + 32, a3 + 16, v13);
    }

    std::mutex::lock((v6 + 352));
    atomic_fetch_add((v6 + 296), 0xFFFFFFFF);
    std::condition_variable::notify_one((v23 + 304));
    std::mutex::unlock((v6 + 352));
    if ((v22 & 1) == 0 && v21 == 1)
    {
      if (v20 == 1)
      {
        if (v19 < 0)
        {
          operator delete(__p);
        }

        if (v17 < 0)
        {
          operator delete(v16);
        }
      }

      if (v15 == 1 && v14 < 0)
      {
        operator delete(v13[2]);
      }
    }

    v8 = v24;
    if (!v24)
    {
      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_22:
    v10 = v26;
    if (v26 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v12 = v8;
  (v8->__on_zero_shared)();
  std::__shared_weak_count::__release_weak(v12);
  v10 = v26;
  if (v26 != -1)
  {
LABEL_23:
    (off_2881323C8[v10])(v13, v25);
  }

LABEL_24:
  v26 = -1;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2714D89D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112E024(&a9);
  sub_27112F828(v10 - 96);
  sub_2714D455C(v10 - 80);
  std::__shared_weak_count::__release_weak(v9);
  _Unwind_Resume(a1);
}

void sub_2714D8A08(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

uint64_t sub_2714D8A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz13VDataExporter4Impl16ExportDataAsynchERKNS1_11ContextDataERKNSt3__17variantIJNS1_17StoragePreferenceENS7_8functionIFNS7_8optionalINS1_12DataLocationEEERKNS7_4__fs10filesystem4pathES6_S9_RNS0_2fs11IFilesystemENS_3esn11OptionalRefINS1_15ExportFileStateEEEEEEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz13VDataExporter4Impl16ExportDataAsynchERKNS1_11ContextDataERKNSt3__17variantIJNS1_17StoragePreferenceENS7_8functionIFNS7_8optionalINS1_12DataLocationEEERKNS7_4__fs10filesystem4pathES6_S9_RNS0_2fs11IFilesystemENS_3esn11OptionalRefINS1_15ExportFileStateEEEEEEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz13VDataExporter4Impl16ExportDataAsynchERKNS1_11ContextDataERKNSt3__17variantIJNS1_17StoragePreferenceENS7_8functionIFNS7_8optionalINS1_12DataLocationEEERKNS7_4__fs10filesystem4pathES6_S9_RNS0_2fs11IFilesystemENS_3esn11OptionalRefINS1_15ExportFileStateEEEEEEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz13VDataExporter4Impl16ExportDataAsynchERKNS1_11ContextDataERKNSt3__17variantIJNS1_17StoragePreferenceENS7_8functionIFNS7_8optionalINS1_12DataLocationEEERKNS7_4__fs10filesystem4pathES6_S9_RNS0_2fs11IFilesystemENS_3esn11OptionalRefINS1_15ExportFileStateEEEEEEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_2714D8A9C(uint64_t a1)
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

void sub_2714D8B28(uint64_t a1, const void **a2, const void **a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_118;
  }

  bzero(*a1, 8 * v6);
  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v65 = (a1 + 16);
  if (a2 != v3)
  {
    if (!v7)
    {
      goto LABEL_118;
    }

    while (1)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *(a2 + 23);
        if (*(v7 + 39) < 0)
        {
          if (v9 >= 0)
          {
            v11 = a2;
          }

          else
          {
            v11 = *a2;
          }

          if (v9 >= 0)
          {
            v12 = *(a2 + 23);
          }

          else
          {
            v12 = a2[1];
          }

          sub_2711289F8(v7 + 2, v11, v12);
        }

        else if ((*(a2 + 23) & 0x80) != 0)
        {
          sub_271128928(v7 + 16, *a2, a2[1]);
        }

        else
        {
          v10 = *a2;
          v7[4] = a2[2];
          *v8 = v10;
        }
      }

      v14 = a2[3];
      v13 = a2[4];
      if (v13)
      {
        atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
      }

      v15 = v7[6];
      v7[5] = v14;
      v7[6] = v13;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        v16 = *v7;
        if ((*(v7 + 39) & 0x80000000) == 0)
        {
LABEL_21:
          *__p = *v8;
          v68 = v7[4];
          goto LABEL_24;
        }
      }

      else
      {
        v16 = *v7;
        if ((*(v7 + 39) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_271127178(__p, v7[2], v7[3]);
LABEL_24:
      if (SHIBYTE(v68) >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      if (SHIBYTE(v68) >= 0)
      {
        v18 = HIBYTE(v68);
      }

      else
      {
        v18 = __p[1];
      }

      v19 = sub_2711284DC(&v69, v17, v18);
      v20 = v19;
      if (SHIBYTE(v68) < 0)
      {
        operator delete(__p[0]);
        v7[1] = v20;
        v21 = *(a1 + 8);
        if (!v21)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v7[1] = v19;
        v21 = *(a1 + 8);
        if (!v21)
        {
          goto LABEL_66;
        }
      }

      v22 = vcnt_s8(v21);
      v22.i16[0] = vaddlv_u8(v22);
      if (v22.u32[0] > 1uLL)
      {
        v23 = v20;
        if (v21 <= v20)
        {
          v23 = v20 % v21;
        }
      }

      else
      {
        v23 = (v21 - 1) & v20;
      }

      v24 = *(*a1 + 8 * v23);
      if (v24)
      {
        v25 = *v24;
        if (*v24)
        {
          if (v22.u32[0] < 2uLL)
          {
            while (1)
            {
              v29 = v25[1];
              if (v29 == v20)
              {
                v30 = *(v7 + 39);
                if (v30 >= 0)
                {
                  v31.__data_ = (v7 + 2);
                }

                else
                {
                  v31.__data_ = v7[2];
                }

                if (v30 >= 0)
                {
                  v31.__size_ = *(v7 + 39);
                }

                else
                {
                  v31.__size_ = v7[3];
                }

                if (!std::__fs::filesystem::path::__compare((v25 + 2), v31))
                {
                  goto LABEL_97;
                }
              }

              else if ((v29 & (v21 - 1)) != v23)
              {
                goto LABEL_66;
              }

              v25 = *v25;
              if (!v25)
              {
                goto LABEL_66;
              }
            }
          }

          do
          {
            v26 = v25[1];
            if (v26 == v20)
            {
              v27 = *(v7 + 39);
              if (v27 >= 0)
              {
                v28.__data_ = (v7 + 2);
              }

              else
              {
                v28.__data_ = v7[2];
              }

              if (v27 >= 0)
              {
                v28.__size_ = *(v7 + 39);
              }

              else
              {
                v28.__size_ = v7[3];
              }

              if (!std::__fs::filesystem::path::__compare((v25 + 2), v28))
              {
                goto LABEL_97;
              }
            }

            else
            {
              if (v26 >= v21)
              {
                v26 %= v21;
              }

              if (v26 != v23)
              {
                break;
              }
            }

            v25 = *v25;
          }

          while (v25);
        }
      }

LABEL_66:
      v32 = (*(a1 + 24) + 1);
      v33 = *(a1 + 32);
      if (!v21 || (v33 * v21) < v32)
      {
        v34 = (v21 & (v21 - 1)) != 0;
        if (v21 < 3)
        {
          v34 = 1;
        }

        v35 = v34 | (2 * v21);
        v36 = vcvtps_u32_f32(v32 / v33);
        if (v35 <= v36)
        {
          prime = v36;
        }

        else
        {
          prime = v35;
        }

        if (prime == 1)
        {
          prime = 2;
        }

        else if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
        }

        v38 = *(a1 + 8);
        if (prime > *&v38)
        {
          goto LABEL_78;
        }

        if (prime < *&v38)
        {
          v39 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
          if (*&v38 < 3uLL || (v40 = vcnt_s8(v38), v40.i16[0] = vaddlv_u8(v40), v40.u32[0] > 1uLL))
          {
            v39 = std::__next_prime(v39);
          }

          else
          {
            v41 = 1 << -__clz(v39 - 1);
            if (v39 >= 2)
            {
              v39 = v41;
            }
          }

          if (prime <= v39)
          {
            prime = v39;
          }

          if (prime < *&v38)
          {
LABEL_78:
            sub_2714D9498(a1, prime);
          }
        }
      }

      v42 = *(a1 + 8);
      v43 = v7[1];
      v44 = vcnt_s8(v42);
      v44.i16[0] = vaddlv_u8(v44);
      if (v44.u32[0] > 1uLL)
      {
        if (v43 >= *&v42)
        {
          v43 %= *&v42;
        }
      }

      else
      {
        v43 &= *&v42 - 1;
      }

      v45 = *a1;
      v46 = *(*a1 + 8 * v43);
      if (v46)
      {
        *v7 = *v46;
      }

      else
      {
        *v7 = *v65;
        *v65 = v7;
        v45[v43] = v65;
        if (!*v7)
        {
          goto LABEL_96;
        }

        v47 = *(*v7 + 1);
        if (v44.u32[0] > 1uLL)
        {
          if (v47 >= *&v42)
          {
            v47 %= *&v42;
          }

          v46 = &v45[v47];
        }

        else
        {
          v46 = &v45[v47 & (*&v42 - 1)];
        }
      }

      *v46 = v7;
LABEL_96:
      ++*(a1 + 24);
LABEL_97:
      a2 += 5;
      if (!v16)
      {
        v3 = a3;
        goto LABEL_118;
      }

      v7 = v16;
      v3 = a3;
      if (a2 == a3)
      {
        goto LABEL_108;
      }
    }
  }

  v16 = v7;
LABEL_108:
  if (v16)
  {
    do
    {
      while (1)
      {
        v48 = *v16;
        v49 = v16[6];
        if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        if (*(v16 + 39) < 0)
        {
          break;
        }

        operator delete(v16);
        v16 = v48;
        if (!v48)
        {
          goto LABEL_118;
        }
      }

      operator delete(v16[2]);
      operator delete(v16);
      v16 = v48;
    }

    while (v48);
  }

LABEL_118:
  if (a2 == v3)
  {
    return;
  }

  do
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(__p, *a2, a2[1]);
    }

    else
    {
      v50 = *a2;
      v68 = a2[2];
      *__p = v50;
    }

    if (SHIBYTE(v68) >= 0)
    {
      v51 = __p;
    }

    else
    {
      v51 = __p[0];
    }

    if (SHIBYTE(v68) >= 0)
    {
      v52 = HIBYTE(v68);
    }

    else
    {
      v52 = __p[1];
    }

    v53 = sub_2711284DC(&v69, v51, v52);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(__p[0]);
      v54 = *(a1 + 8);
      if (!*&v54)
      {
        goto LABEL_165;
      }
    }

    else
    {
      v54 = *(a1 + 8);
      if (!*&v54)
      {
        goto LABEL_165;
      }
    }

    v55 = vcnt_s8(v54);
    v55.i16[0] = vaddlv_u8(v55);
    if (v55.u32[0] > 1uLL)
    {
      v56 = v53;
      if (v53 >= *&v54)
      {
        v56 = v53 % *&v54;
      }
    }

    else
    {
      v56 = (*&v54 - 1) & v53;
    }

    v57 = *(*a1 + 8 * v56);
    if (!v57 || (v58 = *v57) == 0)
    {
LABEL_165:
      operator new();
    }

    if (v55.u32[0] < 2uLL)
    {
      while (1)
      {
        v62 = v58[1];
        if (v62 == v53)
        {
          v63 = *(a2 + 23);
          if (v63 >= 0)
          {
            v64.__data_ = a2;
          }

          else
          {
            v64.__data_ = *a2;
          }

          if (v63 >= 0)
          {
            v64.__size_ = *(a2 + 23);
          }

          else
          {
            v64.__size_ = a2[1];
          }

          if (!std::__fs::filesystem::path::__compare((v58 + 2), v64))
          {
            goto LABEL_163;
          }
        }

        else if ((v62 & (*&v54 - 1)) != v56)
        {
          goto LABEL_165;
        }

        v58 = *v58;
        if (!v58)
        {
          goto LABEL_165;
        }
      }
    }

    while (1)
    {
      v59 = v58[1];
      if (v59 == v53)
      {
        break;
      }

      if (v59 >= *&v54)
      {
        v59 %= *&v54;
      }

      if (v59 != v56)
      {
        goto LABEL_165;
      }

LABEL_141:
      v58 = *v58;
      if (!v58)
      {
        goto LABEL_165;
      }
    }

    v60 = *(a2 + 23);
    if (v60 >= 0)
    {
      v61.__data_ = a2;
    }

    else
    {
      v61.__data_ = *a2;
    }

    if (v60 >= 0)
    {
      v61.__size_ = *(a2 + 23);
    }

    else
    {
      v61.__size_ = a2[1];
    }

    if (std::__fs::filesystem::path::__compare((v58 + 2), v61))
    {
      goto LABEL_141;
    }

LABEL_163:
    a2 += 5;
  }

  while (a2 != a3);
}

void sub_2714D942C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_2714D45B8(v1);
  __cxa_rethrow();
}

void sub_2714D9458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2714D962C(va);
  _Unwind_Resume(a1);
}

void sub_2714D9498(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_2714D962C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 39) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 16));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void sub_2714D96EC(char *a1)
{
  if (a1)
  {
    sub_2714D96EC(*a1);
    sub_2714D96EC(*(a1 + 1));
    sub_2714D9770(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void sub_2714D9770(void *a1)
{
  if (a1)
  {
    sub_2714D9770(*a1);
    sub_2714D9770(a1[1]);

    operator delete(a1);
  }
}

uint64_t *sub_2714D97C0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_2714D9770(*(v1 + 64));
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_2714D981C(void *a1)
{
  *a1 = &unk_288116F00;
  a1[2] = &unk_288117048;
  sub_271841CCC(a1 + 6, 0);
  a1[2] = &unk_288116BC0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2714D98B4()
{
  v1 = 0;
  v3[0] = v0;
  v3[1] = "Failed to parse ";
  v3[2] = v0;
  v3[3] = "Failed to parse ";
  v3[4] = "Failed to parse ";
  v2.__r_.__value_.__r.__words[0] = v3;
  sub_271236FD8(&v2);
  sub_2714D809C();
}

uint64_t sub_2714D9B28(uint64_t a1)
{
  *a1 = &unk_288114DE0;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(a1 + 24))();
  }

  return a1;
}

void sub_2714D9BA0(void *a1)
{
  *a1 = &unk_288116F00;
  a1[2] = &unk_288117048;
  sub_271841CCC(a1 + 6, 0);
  a1[2] = &unk_288116BC0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714D9D18(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(a1 + 48);
    do
    {
      sub_2718402EC(v5, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D9D68(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(a1 + 48);
    do
    {
      sub_27183F6C4(v5, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D9DB8(uint64_t a1, _WORD *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 2 * a3;
    do
    {
      sub_27183F920(v4, a2++);
      v5 -= 2;
    }

    while (v5);
  }
}

void sub_2714D9E08(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 4 * a3;
    do
    {
      sub_27183FACC(v4, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714D9E58(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 8 * a3;
    do
    {
      sub_27183FC78(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D9EA8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 8 * a3;
    do
    {
      sub_27183FE6C(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714D9EF8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(a1 + 48);
    do
    {
      sub_27183F824(v5, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D9F48(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(a1 + 48);
    do
    {
      sub_27183F774(v5, a2++);
      --v3;
    }

    while (v3);
  }
}

void sub_2714D9F98(uint64_t a1, _WORD *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 2 * a3;
    do
    {
      sub_27183F9D0(v4, a2++);
      v5 -= 2;
    }

    while (v5);
  }
}

void sub_2714D9FE8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 4 * a3;
    do
    {
      sub_27183FB7C(v4, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714DA038(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 8 * a3;
    do
    {
      sub_27183FD78(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714DA088(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 8 * a3;
    do
    {
      sub_27183FF6C(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714DA0D8(uint64_t a1, float *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 4 * a3;
    do
    {
      sub_271840060(v4, a2++);
      v5 -= 4;
    }

    while (v5);
  }
}

void sub_2714DA128(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 8 * a3;
    do
    {
      sub_2718401A8(v4, a2++);
      v5 -= 8;
    }

    while (v5);
  }
}

void sub_2714DA178(uint64_t a1, void **a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = 24 * a3;
    do
    {
      sub_2718403E0(v4, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

void sub_2714DA1D8(void *a1)
{
  *(a1 - 2) = &unk_288116F00;
  *a1 = &unk_288117048;
  sub_271841CCC(a1 + 4, 0);
  *a1 = &unk_288116BC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;

    operator delete(v2);
  }
}

void sub_2714DA280(void *a1)
{
  *(a1 - 2) = &unk_288116F00;
  *a1 = &unk_288117048;
  sub_271841CCC(a1 + 4, 0);
  *a1 = &unk_288116BC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714DA334(int **a1)
{
  v3 = 0;
  sub_27183FF6C(a1[4], &v3);
  *&v2 = (*(*a1 + 4))(a1);
  *(&v2 + 1) = v3;
  sub_2713BF82C((a1 + 1), &v2);
}

uint64_t sub_2714DA3A8(void *a1)
{
  v2 = a1[2];
  result = (*(*a1 + 32))(a1);
  v4 = *(v2 - 16) - result + *(v2 - 8);
  if (v4)
  {
    result = (*(*a1 + 40))(a1, v4);
  }

  a1[2] -= 16;
  return result;
}

void sub_2714DA434(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3 > 2)
  {
    v6 = (a1 + 48);
    v5 = *(a1 + 48);
    v21[0] = 0;
    sub_27183FF6C(v5, v21);
    *&v37 = (*(*(a1 + 16) + 32))(a1 + 16);
    *(&v37 + 1) = v21[0];
    sub_2713BF82C(a1 + 24, &v37);
    sub_2718403E0(*v6, a2);
    sub_27183FF6C(*v6, (a2 + 24));
    LODWORD(v37) = 6;
    sub_27183FB7C(*v6, &v37);
    sub_2713BF6F4(&v37, a1, a2 + 32, v37);
    v7 = *(a1 + 32);
    v8 = *(v7 - 16) - (*(*(a1 + 16) + 32))(v6 - 4) + *(v7 - 8);
    if (v8)
    {
      (*(*(a1 + 16) + 40))(v6 - 4, v8);
    }

    *(a1 + 32) -= 16;
    goto LABEL_54;
  }

  LOBYTE(v37) = 0;
  *&v38[7] = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  sub_2718403E0(*(a1 + 48), &v37);
  sub_27183FF6C(*(a1 + 48), &v38[8]);
  if (a3 == 1)
  {
    LODWORD(v21[0]) = 2;
    sub_27183FB7C(*(a1 + 48), v21);
    sub_2713BFE58(v21, a1, &v39 + 1, v21[0]);
  }

  else
  {
    LODWORD(v21[0]) = 6;
    sub_27183FB7C(*(a1 + 48), v21);
    sub_2713BF6F4(v21, a1, &v38[16], v21[0]);
  }

  if ((v38[7] & 0x80000000) != 0)
  {
    sub_271127178(v21, v37, *(&v37 + 1));
  }

  else
  {
    *v21 = v37;
    v22 = *v38;
  }

  v23 = *&v38[8];
  sub_2713B3058(v24, &v38[16]);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *v21;
  v10 = v22;
  v11 = v23;
  HIBYTE(v22) = 0;
  LOBYTE(v21[0]) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  sub_2713BCEE8(a2 + 32, v24);
  if (v36 == 1)
  {
    v12 = __p;
    if (__p)
    {
      v13 = v35;
      v14 = __p;
      if (v35 != __p)
      {
        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v14 = __p;
      }

      v35 = v12;
      operator delete(v14);
    }
  }

  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
    if (v43[97] != 1)
    {
      goto LABEL_43;
    }

LABEL_35:
    v16 = *&v43[73];
    if (*&v43[73])
    {
      v17 = *&v43[81];
      v18 = *&v43[73];
      if (*&v43[81] != *&v43[73])
      {
        do
        {
          v19 = *(v17 - 1);
          v17 -= 3;
          if (v19 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v18 = *&v43[73];
      }

      *&v43[81] = v16;
      operator delete(v18);
    }

    goto LABEL_43;
  }

  if (v43[97] == 1)
  {
    goto LABEL_35;
  }

LABEL_43:
  if (v43[65] == 1 && (v43[64] & 0x80000000) != 0)
  {
    operator delete(*&v43[41]);
  }

  if (v43[33] == 1 && (v43[32] & 0x80000000) != 0)
  {
    operator delete(*&v43[9]);
  }

  if (BYTE9(v41) == 1 && SBYTE8(v41) < 0)
  {
    operator delete(*(&v40 + 1));
  }

  if ((v38[7] & 0x80000000) != 0)
  {
    operator delete(v37);
  }

LABEL_54:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2714DA8AC(uint64_t result)
{
  if (*(result + 128) == 1 && (*(result + 120) & 1) == 0 && *(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(*(result + 80));
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(*(result + 48));
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(*(result + 16));
      return v3;
    }
  }

  return result;
}

uint64_t sub_2714DA96C(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  v4 = v1[1];
  *(v3 + 128) = 1;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 130) = 0;
  *(v3 + 132) = 0;
  LODWORD(v44) = 3;
  sub_27183A9AC(v3, &v44);
  v5 = v44;
  if (v44 > 2)
  {
    ++*(v3 + 80);
    if (*(v3 + 128) == 1 && *(v3 + 131) == 1)
    {
      *(v3 + 132) = 1;
    }

    else
    {
      sub_27183D78C(v3, &v44);
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v6 = v44;
      *(v4 + 16) = *v45;
      *v4 = v6;
      ++*(v3 + 104);
    }

    sub_27183B6AC(v3, (v4 + 24));
    LODWORD(v44) = 6;
    sub_27183A9AC(v3, &v44);
    if (v44 >= 6)
    {
      v7 = 6;
    }

    else
    {
      v7 = v44;
    }

    if (v44 <= 2)
    {
      sub_2713C30AC(&v44, v3, v4 + 32, v7);
      goto LABEL_68;
    }

    sub_2713C32B8(v3, v4 + 32, v7);
    while ((*(v3 + 131) & 1) == 0 && (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) == 0)
    {
      sub_27183D78C(v3, &v44);
      if ((v45[7] & 0x80000000) != 0)
      {
        if (*(&v44 + 1) == 1 && *(v3 + 72) == *v44)
        {
LABEL_25:
          v8 = 0;
          if ((v45[7] & 0x80000000) != 0)
          {
            goto LABEL_28;
          }

          goto LABEL_16;
        }
      }

      else if (v45[7] == 1 && *(v3 + 72) == v44)
      {
        goto LABEL_25;
      }

      v8 = 1;
      if ((v45[7] & 0x80000000) != 0)
      {
LABEL_28:
        operator delete(v44);
      }

LABEL_16:
      if ((v8 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    while (1)
    {
LABEL_68:
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_128;
      }

      sub_27183D78C(v3, &v44);
      if ((v45[7] & 0x80000000) != 0)
      {
        if (*(&v44 + 1) == 1 && *(v3 + 72) == *v44)
        {
LABEL_76:
          v12 = 0;
          if ((v45[7] & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          goto LABEL_67;
        }
      }

      else if (v45[7] == 1 && *(v3 + 72) == v44)
      {
        goto LABEL_76;
      }

      v12 = 1;
      if ((v45[7] & 0x80000000) != 0)
      {
LABEL_79:
        operator delete(v44);
      }

LABEL_67:
      if ((v12 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  LOBYTE(v44) = 0;
  v48 = 0u;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  *&v45[7] = 0u;
  v46 = 0u;
  v47 = 0u;
  ++*(v3 + 80);
  if (*(v3 + 128) == 1 && *(v3 + 131) == 1)
  {
    *(v3 + 132) = 1;
  }

  else
  {
    sub_27183D78C(v3, __p);
    if ((v45[7] & 0x80000000) != 0)
    {
      operator delete(v44);
    }

    v44 = *__p;
    *v45 = v29;
    ++*(v3 + 104);
  }

  sub_27183B6AC(v3, &v45[8]);
  if (v5 != 1)
  {
    LODWORD(__p[0]) = 6;
    sub_27183A9AC(v3, __p);
    if (LODWORD(__p[0]) >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = __p[0];
    }

    if (LODWORD(__p[0]) <= 2)
    {
      sub_2713C30AC(__p, v3, &v45[16], v10);
      goto LABEL_82;
    }

    sub_2713C32B8(v3, &v45[16], v10);
    while (1)
    {
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_82;
      }

      sub_27183D78C(v3, __p);
      if (SHIBYTE(v29) < 0)
      {
        if (__p[1] == 1 && *(v3 + 72) == *__p[0])
        {
LABEL_62:
          v11 = 0;
          if (SHIBYTE(v29) < 0)
          {
            goto LABEL_65;
          }

          goto LABEL_53;
        }
      }

      else if (SHIBYTE(v29) == 1 && *(v3 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_62;
      }

      v11 = 1;
      if (SHIBYTE(v29) < 0)
      {
LABEL_65:
        operator delete(__p[0]);
      }

LABEL_53:
      if ((v11 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  LODWORD(__p[0]) = 2;
  sub_27183A9AC(v3, __p);
  if (LODWORD(__p[0]) > 1)
  {
    sub_27183B36C(v3, (&v46 + 1));
    LOBYTE(__p[0]) = 0;
    sub_271839D90(v3, __p);
    BYTE9(v46) = __p[0];
    while (1)
    {
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_82;
      }

      sub_27183D78C(v3, __p);
      if (SHIBYTE(v29) < 0)
      {
        if (__p[1] == 1 && *(v3 + 72) == *__p[0])
        {
LABEL_44:
          v9 = 0;
          if (SHIBYTE(v29) < 0)
          {
            goto LABEL_47;
          }

          goto LABEL_35;
        }
      }

      else if (SHIBYTE(v29) == 1 && *(v3 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_44;
      }

      v9 = 1;
      if (SHIBYTE(v29) < 0)
      {
LABEL_47:
        operator delete(__p[0]);
      }

LABEL_35:
      if ((v9 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  sub_27183B36C(v3, __p);
  v27 = 0;
  sub_271839D90(v3, &v27);
  *(&v46 + 1) = __p[0];
  BYTE9(v46) = v27;
LABEL_82:
  if ((v45[7] & 0x80000000) != 0)
  {
    sub_271127178(__p, v44, *(&v44 + 1));
  }

  else
  {
    *__p = v44;
    v29 = *v45;
  }

  v30 = *&v45[8];
  sub_2713B3058(v31, &v45[16]);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  v13 = *__p;
  *(v4 + 16) = v29;
  *v4 = v13;
  HIBYTE(v29) = 0;
  LOBYTE(__p[0]) = 0;
  *(v4 + 24) = v30;
  sub_2713BCEE8(v4 + 32, v31);
  if (v43 == 1)
  {
    v14 = v41;
    if (v41)
    {
      v15 = v42;
      v16 = v41;
      if (v42 != v41)
      {
        do
        {
          v17 = *(v15 - 1);
          v15 -= 3;
          if (v17 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v14);
        v16 = v41;
      }

      v42 = v14;
      operator delete(v16);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if (v50[97] != 1)
    {
      goto LABEL_117;
    }

LABEL_109:
    v18 = *&v50[73];
    if (*&v50[73])
    {
      v19 = *&v50[81];
      v20 = *&v50[73];
      if (*&v50[81] != *&v50[73])
      {
        do
        {
          v21 = *(v19 - 1);
          v19 -= 3;
          if (v21 < 0)
          {
            operator delete(*v19);
          }
        }

        while (v19 != v18);
        v20 = *&v50[73];
      }

      *&v50[81] = v18;
      operator delete(v20);
    }

    goto LABEL_117;
  }

  if (v50[97] == 1)
  {
    goto LABEL_109;
  }

LABEL_117:
  if (v50[65] == 1 && (v50[64] & 0x80000000) != 0)
  {
    operator delete(*&v50[41]);
  }

  if (v50[33] == 1 && (v50[32] & 0x80000000) != 0)
  {
    operator delete(*&v50[9]);
  }

  if (BYTE9(v48) == 1 && SBYTE8(v48) < 0)
  {
    operator delete(*(&v47 + 1));
  }

  if ((v45[7] & 0x80000000) != 0)
  {
    operator delete(v44);
  }

LABEL_128:
  result = sub_27183DB7C(v3);
  if (*(v2 + 128) == 1 && (*(v2 + 120) & 1) == 0 && *(v2 + 112) == 1)
  {
    if (*(v2 + 104) == 1)
    {
      if (*(v2 + 103) < 0)
      {
        v23 = result;
        operator delete(*(v2 + 80));
        result = v23;
      }

      if (*(v2 + 71) < 0)
      {
        v24 = result;
        operator delete(*(v2 + 48));
        result = v24;
      }
    }

    if (*(v2 + 40) == 1 && *(v2 + 39) < 0)
    {
      v25 = result;
      operator delete(*(v2 + 16));
      result = v25;
    }
  }

  *v2 = result;
  *(v2 + 120) = 1;
  *(v2 + 128) = 1;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2714DB1E0(std::string *this, void *a2, void *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  while (1)
  {
    if (!a2)
    {
      if (!a3)
      {
        return;
      }

      a2 = 0;
      if (a3[3] != a3[4])
      {
        goto LABEL_20;
      }

      v6 = 1;
      goto LABEL_17;
    }

    if (a2[3] != a2[4])
    {
      if (!a3)
      {
        goto LABEL_20;
      }

      if (a3[3] != a3[4])
      {
        return;
      }

      v6 = 0;
      goto LABEL_17;
    }

    v7 = (*(*a2 + 72))(a2);
    v6 = v7 == -1;
    if (v7 == -1)
    {
      a2 = 0;
    }

    if (a3)
    {
      break;
    }

    if (v7 == -1)
    {
      return;
    }

    a3 = 0;
    v9 = a2[3];
    if (v9 == a2[4])
    {
LABEL_24:
      v10 = (*(*a2 + 72))(a2);
      goto LABEL_25;
    }

LABEL_21:
    v10 = *v9;
LABEL_25:
    std::string::push_back(this, v10);
    v11 = a2[3];
    if (v11 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v11 + 1;
    }
  }

  if (a3[3] != a3[4])
  {
    if (v7 != -1)
    {
      return;
    }

LABEL_20:
    v9 = a2[3];
    if (v9 == a2[4])
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_17:
  v8 = (*(*a3 + 72))(a3);
  if (v8 == -1)
  {
    a3 = 0;
  }

  if (v6 != (v8 == -1))
  {
    goto LABEL_20;
  }
}

void sub_2714DB38C(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void sub_2714DB3BC(uint64_t a1)
{
  *a1 = &unk_288114DE0;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(a1 + 24))();
  }

  JUMPOUT(0x2743BF050);
}

unsigned __int8 *sub_2714DB45C(void *a1, _BYTE *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  result = sub_2715D6D58(v4, &v6);
  *a2 = v6;
  return result;
}

void sub_2714DB4B8(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v5 = 0;
  sub_2715D6A90(v4, &v5);
  *a2 = v5;
}

void sub_2714DB508(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v5 = 0;
  sub_2715D6A90(v4, &v5);
  *a2 = v5;
}

void sub_2714DB568(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v5 = 0;
  sub_2715D693C(v4, &v5);
  *a2 = v5;
}

void sub_2714DB5B8(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v5 = 0;
  sub_2715D693C(v4, &v5);
  *a2 = v5;
}

void sub_2714DB608(void *a1, float *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  *a2 = sub_271833EE4(v4);
}

double sub_2714DB648(void *a1, uint64_t a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D6E6C(v4, &v6);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  return result;
}

void sub_2714DB6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DB6D0(void *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182F798(a1, v3);
}

void sub_2714DB6F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182ED00(v4, v5);
}

void sub_2714DB73C(void *a1, _WORD *a2, _WORD *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182EEF8(v4, v5);
}

void sub_2714DB780(void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F0F0(v4, v5);
}

void sub_2714DB7C4(void *a1, uint64_t a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_271831164(v4, &v17);
  v5 = v17;
  v6 = v18;
  if (v17 != v18)
  {
    v7 = v18 - v17 - 8;
    v8 = a2;
    v9 = v17;
    if (v7 < 0x18)
    {
      goto LABEL_11;
    }

    v10 = (v7 >> 3) + 1;
    v11 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    v8 = (a2 + v11 * 8);
    v9 = &v17[v11];
    v12 = (v17 + 2);
    v13 = (a2 + 16);
    v14 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_11:
      do
      {
        v16 = *v9++;
        *v8++ = v16;
      }

      while (v9 != v6);
    }
  }

  if (v5)
  {
    v18 = v5;
    operator delete(v5);
  }
}

void sub_2714DB894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DB8B0(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_271831164(v4, &v6);
  v5 = v6;
  if (v7 != v6)
  {
    memmove(a2, v6, v7 - v6);
  }

  if (v5)
  {
    v7 = v5;
    operator delete(v5);
  }
}

void sub_2714DB924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DB940(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182D810(v4, v5);
}

void sub_2714DB984(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182EDD8(v4, v5);
}

void sub_2714DB9C8(void *a1, _WORD *a2, _WORD *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F018(v4, v5);
}

void sub_2714DBA0C(void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F1C8(v4, v5);
}

void sub_2714DBA50(void *a1, uint64_t a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_271831430(v4, &v17);
  v5 = v17;
  v6 = v18;
  if (v17 != v18)
  {
    v7 = v18 - v17 - 8;
    v8 = a2;
    v9 = v17;
    if (v7 < 0x18)
    {
      goto LABEL_11;
    }

    v10 = (v7 >> 3) + 1;
    v11 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    v8 = (a2 + v11 * 8);
    v9 = &v17[v11];
    v12 = (v17 + 2);
    v13 = (a2 + 16);
    v14 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_11:
      do
      {
        v16 = *v9++;
        *v8++ = v16;
      }

      while (v9 != v6);
    }
  }

  if (v5)
  {
    v18 = v5;
    operator delete(v5);
  }
}

void sub_2714DBB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DBB3C(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_271831430(v4, &v6);
  v5 = v6;
  if (v7 != v6)
  {
    memmove(a2, v6, v7 - v6);
  }

  if (v5)
  {
    v7 = v5;
    operator delete(v5);
  }
}

void sub_2714DBBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DBBCC(void *a1, float *a2, float *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F4D4(v4, v5);
}

void sub_2714DBC10(void *a1, double *a2, double *a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v4 = sub_27182D6C4(a1);
  ++a1[14];
  sub_27182F5F0(v4, v5);
}

void sub_2714DBC54(void *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182F860(a1, v3);
}

void sub_2714DBC7C(void *a1, void *a2)
{
  v4 = sub_27182D6C4(a1);
  ++a1[14];

  sub_27182D810(v4, a2);
}

void sub_2714DBCCC(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  __p[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  v5 = (a1 + 112);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, __p);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  __p[0] = "version";
  __p[1] = 7;
  *v16 = 3;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, v16);
  v6 = *v16;
  if (*v16 >= 3u)
  {
    v7 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    __p[1] = 0;
    *v16 = 0;
    __p[0] = 0;
    sub_2715D6E6C(v7, __p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = *v16;
    v8 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    __p[0] = 0;
    sub_2715D693C(v8, __p);
    *(a2 + 24) = __p[0];
    sub_2713BB450(a1, a2 + 32);
  }

  LOBYTE(__p[0]) = 0;
  *&v16[7] = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v9 = sub_27182D6C4(a1);
  ++*v5;
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  sub_2715D6E6C(v9, v13);
  if ((v16[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  *__p = *v13;
  *v16 = v14;
  v10 = sub_27182D6C4(a1);
  ++*v5;
  v13[0] = 0;
  sub_2715D693C(v10, v13);
  *&v16[8] = v13[0];
  if (v6 == 1)
  {
    v13[0] = *(a1 + 32);
    v11 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v11;
    sub_27182D194(a1 + 40, v13);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v13[0] = "version";
    v13[1] = 7;
    LODWORD(v14) = 2;
    *(a1 + 88) = "version";
    *(a1 + 96) = 7;
    *(a1 + 104) = 1;
    sub_27182EB6C(a1, &v14);
    if (v14 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v14;
    }

    sub_2713BBD0C(a1, (&v17 + 1), v12);
  }

  sub_2713BB450(a1, &v16[16]);
}

void sub_2714DC3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  (*(*v5 + 8))(v5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2714DC410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2713D8648(v6);
  MEMORY[0x2743BF050](v5, 0x10B3C406BFE9A7DLL);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2714DC444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2714DC458(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 1)
  {

    sub_2714DC58C(a1, a2, a3);
  }

  else
  {
    v8 = 0;
    sub_27183FF6C(*(a1 + 48), &v8);
    *&v7 = (*(*(a1 + 16) + 32))(a1 + 16);
    *(&v7 + 1) = v8;
    sub_2713BF82C(a1 + 24, &v7);
    sub_2714DC58C(a1, a2, 2u);
    v5 = *(a1 + 32);
    v6 = *(v5 - 16) - (*(*(a1 + 16) + 32))(a1 + 16) + *(v5 - 8);
    if (v6)
    {
      (*(*(a1 + 16) + 40))(a1 + 16, v6);
    }

    *(a1 + 32) -= 16;
  }
}

void sub_2714DC58C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    sub_27139A124(&v26, (a2 + 64));
    LODWORD(v19) = 2;
    sub_27183FB7C(*(a1 + 48), &v19);
    sub_2714DCA00(a1, &v26 + 8, v19);
    sub_27139A288(&v26);
    if (v29)
    {
      sub_2711308D4();
    }

    v19 = &unk_28810A5B0;
    v20 = v28;
    LODWORD(v18) = 1;
    sub_27183FB7C(*(a1 + 48), &v18);
    (*(*v20 + 40))(v20, a1, v18);
    sub_2713A0DC8(&v19, &v26);
    sub_2713A0F0C(a2, &v19);
    v9 = __p;
    if (__p)
    {
      v10 = v25;
      v11 = __p;
      if (v25 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v9);
        v11 = __p;
      }

      v25 = v9;
      operator delete(v11);
    }

    if (v23 != -1)
    {
      (off_288132520[v23])(&v18, &v22);
    }

    v23 = -1;
    if (v21 < 0)
    {
      operator delete(v20);
    }

    v13 = v30;
    if (v30)
    {
      v14 = v31;
      v15 = v30;
      if (v31 != v30)
      {
        do
        {
          v16 = *(v14 - 1);
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }

          v14 -= 16;
        }

        while (v14 != v13);
        v15 = v30;
      }

      v31 = v13;
      operator delete(v15);
    }

    if (v29 != -1)
    {
      (off_288132520[v29])(&v19, &v28);
    }

    v29 = -1;
    if (v27 < 0)
    {
      operator delete(*(&v26 + 1));
    }
  }

  else
  {
    LODWORD(v26) = 2;
    sub_27183FB7C(*(a1 + 48), &v26);
    sub_2714DCA00(a1, a2 + 8, v26);
    sub_27139ABFC(a2);
    if (*(a2 + 56))
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 40);
    v19 = &unk_28810A568;
    v20 = v5;
    LODWORD(v26) = 2;
    sub_27183FB7C(*(a1 + 48), &v26);
    v6 = v26;
    v18 = 0;
    sub_27183FF6C(*(a1 + 48), &v18);
    *&v26 = (*(*(a1 + 16) + 32))(a1 + 16);
    *(&v26 + 1) = v18;
    sub_2713BF82C(a1 + 24, &v26);
    (*(*v20 + 40))(v20, a1, v6);
    v7 = *(a1 + 32);
    v8 = *(v7 - 16) - (*(*(a1 + 16) + 32))(a1 + 16) + *(v7 - 8);
    if (v8)
    {
      (*(*(a1 + 16) + 40))(a1 + 16, v8);
    }

    *(a1 + 32) -= 16;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2714DC9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DCA00(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    HIBYTE(v12) = 0;
    LOBYTE(__p[0]) = 0;
    v13 = 0;
    sub_2718403E0(*(a1 + 48), __p);
    sub_27183FB7C(*(a1 + 48), &v13);
    if (SHIBYTE(v12) < 0)
    {
      sub_271127178(&v8, __p[0], __p[1]);
    }

    else
    {
      v8 = *__p;
      v9 = v12;
    }

    v7 = v13;
    v10 = v13;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
      v7 = v10;
    }

    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v7;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v8 = 0;
    sub_27183FF6C(*(a1 + 48), &v8);
    __p[0] = (*(*(a1 + 16) + 32))(a1 + 16);
    __p[1] = v8;
    sub_2713BF82C(a1 + 24, __p);
    sub_2718403E0(*(a1 + 48), a2);
    sub_27183FB7C(*(a1 + 48), (a2 + 24));
    v5 = *(a1 + 32);
    v6 = *(v5 - 16) - (*(*(a1 + 16) + 32))(a1 + 16) + *(v5 - 8);
    if (v6)
    {
      (*(*(a1 + 16) + 40))(a1 + 16, v6);
    }

    *(a1 + 32) -= 16;
  }
}

void sub_2714DCBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714DCBD8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288132520[v6])(&v8, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_2714DCCEC(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  v4 = v1[1];
  *(v3 + 128) = 1;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 130) = 0;
  *(v3 + 132) = 0;
  *__p = 2;
  sub_27183A9AC(v3, __p);
  v5 = *__p;
  if (*__p >= 2u)
  {
    *__p = 2;
    sub_27183A9AC(v3, __p);
    if (*__p > 1u)
    {
      ++*(v3 + 80);
      if (*(v3 + 128) == 1 && *(v3 + 131) == 1)
      {
        *(v3 + 132) = 1;
      }

      else
      {
        sub_27183D78C(v3, __p);
        if (*(v4 + 31) < 0)
        {
          operator delete(*(v4 + 8));
        }

        v21 = *__p;
        *(v4 + 24) = *&__p[16];
        *(v4 + 8) = v21;
        ++*(v3 + 104);
      }

      sub_27183A9AC(v3, (v4 + 32));
      while (1)
      {
        if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_11;
        }

        sub_27183D78C(v3, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          if (*&__p[8] == 1 && *(v3 + 72) == **__p)
          {
LABEL_79:
            v22 = 0;
            if ((__p[23] & 0x80000000) != 0)
            {
              goto LABEL_82;
            }

            goto LABEL_70;
          }
        }

        else if (__p[23] == 1 && *(v3 + 72) == __p[0])
        {
          goto LABEL_79;
        }

        v22 = 1;
        if ((__p[23] & 0x80000000) != 0)
        {
LABEL_82:
          operator delete(*__p);
        }

LABEL_70:
        if ((v22 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    sub_2714DD52C(v3, v4 + 8);
LABEL_11:
    sub_27139ABFC(v4);
    if (*(v4 + 56))
    {
      sub_2711308D4();
    }

    v6 = *(v4 + 40);
    v26[0] = &unk_28810A568;
    v26[1] = v6;
    *__p = 2;
    sub_27183A9AC(v3, __p);
    (*(*v26[1] + 40))(v26[1], v3, *__p);
    while (1)
    {
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_53;
      }

      sub_27183D78C(v3, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        if (*&__p[8] == 1 && *(v3 + 72) == **__p)
        {
LABEL_22:
          v7 = 0;
          if ((__p[23] & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          goto LABEL_13;
        }
      }

      else if (__p[23] == 1 && *(v3 + 72) == __p[0])
      {
        goto LABEL_22;
      }

      v7 = 1;
      if ((__p[23] & 0x80000000) != 0)
      {
LABEL_25:
        operator delete(*__p);
      }

LABEL_13:
      if ((v7 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  sub_27139A124(__p, (v4 + 64));
  LODWORD(v26[0]) = 2;
  sub_27183A9AC(v3, v26);
  if (LODWORD(v26[0]) > 1)
  {
    ++*(v3 + 80);
    if (*(v3 + 128) == 1 && *(v3 + 131) == 1)
    {
      *(v3 + 132) = 1;
    }

    else
    {
      sub_27183D78C(v3, v26);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(*&__p[8]);
      }

      *&__p[8] = *v26;
      v34 = v27;
      ++*(v3 + 104);
    }

    sub_27183A9AC(v3, &v35);
    while (1)
    {
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_27;
      }

      sub_27183D78C(v3, v26);
      if (SHIBYTE(v27) < 0)
      {
        if (v26[1] == 1 && *(v3 + 72) == *v26[0])
        {
LABEL_96:
          v23 = 0;
          if (SHIBYTE(v27) < 0)
          {
            goto LABEL_99;
          }

          goto LABEL_87;
        }
      }

      else if (SHIBYTE(v27) == 1 && *(v3 + 72) == LOBYTE(v26[0]))
      {
        goto LABEL_96;
      }

      v23 = 1;
      if (SHIBYTE(v27) < 0)
      {
LABEL_99:
        operator delete(v26[0]);
      }

LABEL_87:
      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  sub_2714DD52C(v3, &__p[8]);
LABEL_27:
  sub_27139A288(__p);
  if (v37)
  {
    sub_2711308D4();
  }

  v26[0] = &unk_28810A5B0;
  v26[1] = v36;
  v25 = 1;
  sub_27183A9AC(v3, &v25);
  (*(*v26[1] + 40))(v26[1], v3, v25);
  sub_2713A0DC8(v26, __p);
  sub_2713A0F0C(v4, v26);
  v8 = v31;
  if (v31)
  {
    v9 = v32;
    v10 = v31;
    if (v32 != v31)
    {
      do
      {
        v11 = *(v9 - 1);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = v31;
    }

    v32 = v8;
    operator delete(v10);
  }

  if (v30 != -1)
  {
    (off_288132520[v30])(&v25, &v29);
  }

  v30 = -1;
  if (v28 < 0)
  {
    operator delete(v26[1]);
  }

  v12 = v38;
  if (v38)
  {
    v13 = v39;
    v14 = v38;
    if (v39 != v38)
    {
      do
      {
        v15 = *(v13 - 1);
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        v13 -= 16;
      }

      while (v13 != v12);
      v14 = v38;
    }

    v39 = v12;
    operator delete(v14);
  }

  if (v37 != -1)
  {
    (off_288132520[v37])(v26, &v36);
  }

  v37 = -1;
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
LABEL_53:
    if (v5 < 2)
    {
      goto LABEL_54;
    }

    while (1)
    {
LABEL_103:
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_54;
      }

      sub_27183D78C(v3, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        if (*&__p[8] == 1 && *(v3 + 72) == **__p)
        {
LABEL_111:
          v24 = 0;
          if ((__p[23] & 0x80000000) != 0)
          {
            goto LABEL_114;
          }

          goto LABEL_102;
        }
      }

      else if (__p[23] == 1 && *(v3 + 72) == __p[0])
      {
        goto LABEL_111;
      }

      v24 = 1;
      if ((__p[23] & 0x80000000) != 0)
      {
LABEL_114:
        operator delete(*__p);
      }

LABEL_102:
      if ((v24 & 1) == 0)
      {
        goto LABEL_54;
      }
    }
  }

  operator delete(*&__p[8]);
  if (v5 >= 2)
  {
    goto LABEL_103;
  }

LABEL_54:
  result = sub_27183DB7C(v3);
  if (*(v2 + 128) == 1 && (*(v2 + 120) & 1) == 0 && *(v2 + 112) == 1)
  {
    if (*(v2 + 104) == 1)
    {
      if (*(v2 + 103) < 0)
      {
        v17 = result;
        operator delete(*(v2 + 80));
        result = v17;
      }

      if (*(v2 + 71) < 0)
      {
        v18 = result;
        operator delete(*(v2 + 48));
        result = v18;
      }
    }

    if (*(v2 + 40) == 1 && *(v2 + 39) < 0)
    {
      v19 = result;
      operator delete(*(v2 + 16));
      result = v19;
    }
  }

  *v2 = result;
  *(v2 + 120) = 1;
  *(v2 + 128) = 1;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2714DD4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DD52C(uint64_t a1, uint64_t a2)
{
  HIBYTE(v10) = 0;
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
  }

  else
  {
    v3 = a1;
    sub_27183D78C(a1, &v6);
    a1 = v3;
    v4 = *(v3 + 104);
    *__p = v6;
    v10 = v7;
    *(v3 + 104) = v4 + 1;
  }

  sub_27183A9AC(a1, &v11);
  if (SHIBYTE(v10) < 0)
  {
    sub_271127178(&v6, __p[0], __p[1]);
  }

  else
  {
    v6 = *__p;
    v7 = v10;
  }

  v5 = v11;
  v8 = v11;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v5 = v8;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v5;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2714DD63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DD65C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    sub_27139A124(&v34, (a2 + 64));
    v10 = *(a1 + 104);
    *(a1 + 88) = "data_id";
    *(a1 + 96) = 7;
    if ((v10 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_2714DDB4C(a1, &v35);
    sub_27139A288(&v34);
    if (v39)
    {
      sub_2711308D4();
    }

    v24 = &unk_28810A5B0;
    v25 = v38;
    v11 = *(a1 + 104);
    *(a1 + 88) = "data";
    *(a1 + 96) = 4;
    if ((v11 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v26 = *(a1 + 32);
    v12 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v12;
    sub_27182D194(a1 + 40, &v26);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    v26 = "version";
    v27 = 7;
    v28[0] = 1;
    *(a1 + 88) = "version";
    *(a1 + 96) = 7;
    *(a1 + 104) = 1;
    sub_27182EB6C(a1, v28);
    (*(*v25 + 40))(v25, a1, v28[0]);
    v13 = *(a1 + 48);
    *(a1 + 32) = *(v13 - 8);
    v14 = *(a1 + 72);
    *(a1 + 112) = *(v14 - 8);
    *(a1 + 48) = v13 - 8;
    *(a1 + 72) = v14 - 8;
    sub_2713A0DC8(&v26, &v34);
    sub_2713A0F0C(a2, &v26);
    v15 = __p;
    if (__p)
    {
      v16 = v33;
      v17 = __p;
      if (v33 != __p)
      {
        do
        {
          v18 = *(v16 - 1);
          if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
          }

          v16 -= 16;
        }

        while (v16 != v15);
        v17 = __p;
      }

      v33 = v15;
      operator delete(v17);
    }

    if (v31 != -1)
    {
      (off_288132520[v31])(&v24, &v30);
    }

    v31 = -1;
    if (v29 < 0)
    {
      operator delete(v27);
    }

    v19 = v40;
    if (v40)
    {
      v20 = v41;
      v21 = v40;
      if (v41 != v40)
      {
        do
        {
          v22 = *(v20 - 1);
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }

          v20 -= 16;
        }

        while (v20 != v19);
        v21 = v40;
      }

      v41 = v19;
      operator delete(v21);
    }

    if (v39 != -1)
    {
      (off_288132520[v39])(&v26, &v38);
    }

    v39 = -1;
    if (v37 < 0)
    {
      operator delete(v35);
    }
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "data_id";
    *(a1 + 96) = 7;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_2714DDB4C(a1, a2 + 8);
    sub_27139ABFC(a2);
    if (*(a2 + 56))
    {
      sub_2711308D4();
    }

    v6 = *(a2 + 40);
    v26 = &unk_28810A568;
    v27 = v6;
    LOBYTE(v6) = *(a1 + 104);
    *(a1 + 88) = "data";
    *(a1 + 96) = 4;
    if ((v6 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v34 = *(a1 + 32);
    v7 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v7;
    sub_27182D194(a1 + 40, &v34);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    v34 = "version";
    v35 = 7;
    v36[0] = 2;
    *(a1 + 88) = "version";
    *(a1 + 96) = 7;
    *(a1 + 104) = 1;
    sub_27182EB6C(a1, v36);
    (*(*v27 + 40))(v27, a1, v36[0]);
    v8 = *(a1 + 48);
    *(a1 + 32) = *(v8 - 8);
    v9 = *(a1 + 72);
    *(a1 + 112) = *(v9 - 8);
    *(a1 + 48) = v8 - 8;
    *(a1 + 72) = v9 - 8;
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2714DDB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DDB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2714DCBD8(va);
  _Unwind_Resume(a1);
}

void sub_2714DDB4C(uint64_t a1, uint64_t a2)
{
  __p[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, __p);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  __p[0] = "version";
  __p[1] = 7;
  LODWORD(v18) = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v18);
  if (v18 < 2)
  {
    HIBYTE(v18) = 0;
    LOBYTE(__p[0]) = 0;
    v19 = 0;
    v8 = *(a1 + 104);
    *(a1 + 88) = "package_id";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v9 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v15 = 0;
    v14 = 0uLL;
    sub_2715D6E6C(v9, &v14);
    v10 = *(a1 + 104);
    *__p = v14;
    v18 = v15;
    *(a1 + 88) = "type_id";
    *(a1 + 96) = 7;
    if ((v10 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_27182EB6C(a1, &v19);
    if (SHIBYTE(v18) < 0)
    {
      sub_271127178(&v14, __p[0], __p[1]);
    }

    else
    {
      v14 = *__p;
      v15 = v18;
    }

    v11 = v19;
    v16 = v19;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
      v11 = v16;
    }

    *a2 = v14;
    *(a2 + 16) = v15;
    *(a2 + 24) = v11;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "package_id";
    *(a1 + 96) = 10;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    __p[1] = 0;
    v18 = 0;
    __p[0] = 0;
    sub_2715D6E6C(v6, __p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = v18;
    v7 = *(a1 + 104);
    *(a1 + 88) = "type_id";
    *(a1 + 96) = 7;
    if ((v7 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_27182EB6C(a1, (a2 + 24));
  }

  v12 = *(a1 + 48);
  *(a1 + 32) = *(v12 - 8);
  v13 = *(a1 + 72);
  *(a1 + 112) = *(v13 - 8);
  *(a1 + 48) = v12 - 8;
  *(a1 + 72) = v13 - 8;
}

void sub_2714DDDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DE688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v45 = a15;
  a15 = 0;
  if (!v45)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a15, v45);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2714DE7B8(uint64_t a1)
{
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

void *sub_2714DE82C(void *result)
{
  *result = &unk_288116C00;
  v1 = result[3];
  result[2] = &unk_288116D50;
  result[3] = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 80);
    if (v3)
    {
      *(v1 + 88) = v3;
      operator delete(v3);
    }

    if (*(v1 + 72) == 1)
    {
      free(*(v1 + 56));
    }

    if (*(v1 + 40) == 1)
    {
      free(*(v1 + 24));
    }

    MEMORY[0x2743BF050](v1, 0x1030C408C1A3048);
    return v2;
  }

  return result;
}

void sub_2714DE8E4(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 144);
  if ((v4 & 0x10) != 0)
  {
    v6 = *(a1 + 136);
    v7 = *(a1 + 96);
    if (v6 < v7)
    {
      *(a1 + 136) = v7;
      v6 = v7;
    }

    v8 = *(a1 + 88);
    v5 = v6 - v8;
    if (v6 - v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      v5 = 0;
      v25 = 0;
      goto LABEL_12;
    }

    v8 = *(a1 + 64);
    v5 = *(a1 + 80) - v8;
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_25:
      sub_271120DA8();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v25 = v5;
  if (v5)
  {
    memmove(&__dst, v8, v5);
  }

LABEL_12:
  *(&__dst + v5) = 0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  *(a1 + 112) = 0;
  *(a1 + 135) = 0;
  sub_271129318(a1 + 48);
  std::ios_base::clear((a1 + 24 + *(*(a1 + 24) - 24)), 0);
  *(a1 + 312) = 0;
  v9 = v25;
  v10 = v25;
  v11 = v24;
  if ((v25 & 0x80u) == 0)
  {
    v12 = v25;
  }

  else
  {
    v12 = v24;
  }

  if (v12 || (*(a1 + 328) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      sub_271725008(a1, 0x11u, *(a1 + 304), &v26);
      if (*(a2 + 24) == 1)
      {
        v13 = *&v26.__r_.__value_.__r.__words[1];
        *&v26.__r_.__value_.__r.__words[1] = 0uLL;
        v14 = *(a2 + 16);
        *(a2 + 8) = v13;
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      else
      {
        *a2 = &unk_288115240;
        *(a2 + 8) = *&v26.__r_.__value_.__r.__words[1];
        *&v26.__r_.__value_.__r.__words[1] = 0uLL;
        *(a2 + 24) = 1;
      }

      v15 = v26.__r_.__value_.__r.__words[2];
      if (v26.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v26.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      if (!*(a2 + 8))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        if (*(a1 + 23) < 0)
        {
          sub_271127178(&v22, *a1, *(a1 + 8));
        }

        else
        {
          v22.__pn_ = *a1;
        }

        sub_2714D199C("Failed to write to file: ", &v22.__pn_, &v26);
        std::runtime_error::runtime_error(exception, &v26);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v9 = v25;
      v11 = v24;
      v10 = v25;
    }

    if ((v10 & 0x80u) == 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    if (v16)
    {
      (*(**(a2 + 8) + 16))(*(a2 + 8));
      std::ostream::write();
    }

    v17 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v18 = v17 + *(*v17 - 24);
    if ((v18[32] & 5) != 0)
    {
      v19 = -1;
    }

    else
    {
      (*(**(v18 + 5) + 32))(&v26);
      v19 = v27;
    }

    *(a1 + 320) = v19 & ~(v19 >> 63);
    *(a1 + 328) = 1;
    v10 = v25;
  }

  if ((v10 & 0x80) != 0)
  {
    operator delete(__dst);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2714DED1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714DEDA0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_271127178((a1 + 8), *(a2 + 8), *(a2 + 16));
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 40), *(a2 + 40), *(a2 + 48));
LABEL_6:
  if (*(a2 + 119) < 0)
  {
    sub_271127178((a1 + 64), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 112);
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 120);
  return a1;
}

void sub_2714DEE70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2714DEEBC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_271127178((a1 + 8), *(a2 + 8), *(a2 + 16));
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 40), *(a2 + 40), *(a2 + 48));
LABEL_6:
  if (*(a2 + 119) < 0)
  {
    sub_271127178((a1 + 64), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 112);
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 120);
  if (*(a2 + 88) == 1)
  {
    if (*(a2 + 87) < 0)
    {
      sub_271127178((a1 + 96), *(a2 + 64), *(a2 + 72));
    }

    else
    {
      v7 = *(a2 + 64);
      *(a1 + 112) = *(a2 + 80);
      *(a1 + 96) = v7;
    }
  }

  else
  {
    *(a1 + 119) = 0;
    *(a1 + 96) = 0;
  }

  v11 = -1;
  if (*(a2 + 151) < 0)
  {
    sub_271127178(&v9, *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    v10 = *(a2 + 144);
  }

  *(a1 + 120) = v9;
  *(a1 + 136) = v10;
  return a1;
}

void sub_2714DF014(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 40));
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2714DF0B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_271127178((a1 + 8), *(a2 + 8), *(a2 + 16));
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 40), *(a2 + 40), *(a2 + 48));
LABEL_6:
  if (*(a2 + 87) < 0)
  {
    sub_271127178((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 119) = 0;
  *(a1 + 96) = 0;
  *(a1 + 143) = 0;
  return a1;
}

void sub_2714DF194(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void sub_2714DF1E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    sub_271127178(v4, *(a1 + 8), *(a1 + 16));
    *(a2 + 32) = *(a1 + 32);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v4 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 32) = *(a1 + 32);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      *v25 = *(a1 + 40);
      v26 = *(a1 + 56);
      goto LABEL_6;
    }
  }

  sub_271127178(v25, *(a1 + 40), *(a1 + 48));
LABEL_6:
  v5 = (a2 + 40);
  if (*(a1 + 119) < 0)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      sub_271127178(__p, *(a1 + 96), v6);
      goto LABEL_11;
    }

LABEL_12:
    LOBYTE(__p[0]) = 0;
    v24 = 0;
    *v5 = *v25;
    *(a2 + 56) = v26;
    v25[0] = 0;
    v25[1] = 0;
    v26 = 0;
    *(a2 + 64) = 0;
    *(a2 + 88) = 0;
    goto LABEL_13;
  }

  if (!*(a1 + 119))
  {
    goto LABEL_12;
  }

  *__p = *(a1 + 96);
  v23 = *(a1 + 112);
LABEL_11:
  *(a2 + 56) = v26;
  *(a2 + 80) = v23;
  v24 = 1;
  *v5 = *v25;
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  *(a2 + 64) = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  *(a2 + 88) = 1;
LABEL_13:
  v7 = *(a2 + 63);
  v8 = *(a2 + 40);
  if (v7 >= 0)
  {
    v8 = (a2 + 40);
  }

  if (v7 < 0)
  {
    v7 = *(a2 + 48);
  }

  if (!v7)
  {
    goto LABEL_78;
  }

  v9 = v8;
  if (v7 < 8)
  {
LABEL_93:
    v21 = &v8[v7];
    do
    {
      if (*v9 == 58)
      {
        *v9 = 95;
      }

      ++v9;
    }

    while (v9 != v21);
    goto LABEL_78;
  }

  if (v7 < 0x10)
  {
    v10 = 0;
    goto LABEL_21;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFFF0;
  v14 = v8 + 7;
  v15.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
  v15.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
  v16 = v7 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v17 = vceqq_s8(*(v14 - 7), v15);
    if (v17.i8[0])
    {
      *(v14 - 7) = 95;
      if ((v17.i8[1] & 1) == 0)
      {
LABEL_46:
        if ((v17.i8[2] & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_63;
      }
    }

    else if ((v17.i8[1] & 1) == 0)
    {
      goto LABEL_46;
    }

    *(v14 - 6) = 95;
    if ((v17.i8[2] & 1) == 0)
    {
LABEL_47:
      if ((v17.i8[3] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    *(v14 - 5) = 95;
    if ((v17.i8[3] & 1) == 0)
    {
LABEL_48:
      if ((v17.i8[4] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    *(v14 - 4) = 95;
    if ((v17.i8[4] & 1) == 0)
    {
LABEL_49:
      if ((v17.i8[5] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    *(v14 - 3) = 95;
    if ((v17.i8[5] & 1) == 0)
    {
LABEL_50:
      if ((v17.i8[6] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    *(v14 - 2) = 95;
    if ((v17.i8[6] & 1) == 0)
    {
LABEL_51:
      if ((v17.i8[7] & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_68;
    }

LABEL_67:
    *(v14 - 1) = 95;
    if ((v17.i8[7] & 1) == 0)
    {
LABEL_52:
      if ((v17.i8[8] & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }

LABEL_68:
    *v14 = 95;
    if ((v17.i8[8] & 1) == 0)
    {
LABEL_53:
      if ((v17.i8[9] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_70;
    }

LABEL_69:
    v14[1] = 95;
    if ((v17.i8[9] & 1) == 0)
    {
LABEL_54:
      if ((v17.i8[10] & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_71;
    }

LABEL_70:
    v14[2] = 95;
    if ((v17.i8[10] & 1) == 0)
    {
LABEL_55:
      if ((v17.i8[11] & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_72;
    }

LABEL_71:
    v14[3] = 95;
    if ((v17.i8[11] & 1) == 0)
    {
LABEL_56:
      if ((v17.i8[12] & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }

LABEL_72:
    v14[4] = 95;
    if ((v17.i8[12] & 1) == 0)
    {
LABEL_57:
      if ((v17.i8[13] & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_74;
    }

LABEL_73:
    v14[5] = 95;
    if ((v17.i8[13] & 1) == 0)
    {
LABEL_58:
      if (v17.i8[14])
      {
        goto LABEL_75;
      }

      goto LABEL_59;
    }

LABEL_74:
    v14[6] = 95;
    if (v17.i8[14])
    {
LABEL_75:
      v14[7] = 95;
      if ((v17.i8[15] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_76;
    }

LABEL_59:
    if ((v17.i8[15] & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_76:
    v14[8] = 95;
LABEL_43:
    v14 += 16;
    v16 -= 16;
  }

  while (v16);
  if (v7 == v10)
  {
    goto LABEL_78;
  }

  if ((v7 & 8) == 0)
  {
    v9 = &v8[v10];
    goto LABEL_93;
  }

LABEL_21:
  v9 = &v8[v7 & 0xFFFFFFFFFFFFFFF8];
  v11 = v10 - (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = &v8[v10 + 3];
  while (2)
  {
    v13 = vceq_s8(*(v12 - 3), 0x3A3A3A3A3A3A3A3ALL);
    if (v13.i8[0])
    {
      *(v12 - 3) = 95;
      if (v13.i8[1])
      {
        goto LABEL_33;
      }

LABEL_25:
      if ((v13.i8[2] & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_34:
      *(v12 - 1) = 95;
      if (v13.i8[3])
      {
        goto LABEL_35;
      }

LABEL_27:
      if ((v13.i8[4] & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_36:
      v12[1] = 95;
      if (v13.i8[5])
      {
        goto LABEL_37;
      }

LABEL_29:
      if ((v13.i8[6] & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_38:
      v12[3] = 95;
      if (v13.i8[7])
      {
LABEL_39:
        v12[4] = 95;
      }
    }

    else
    {
      if ((v13.i8[1] & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_33:
      *(v12 - 2) = 95;
      if (v13.i8[2])
      {
        goto LABEL_34;
      }

LABEL_26:
      if ((v13.i8[3] & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_35:
      *v12 = 95;
      if (v13.i8[4])
      {
        goto LABEL_36;
      }

LABEL_28:
      if ((v13.i8[5] & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_37:
      v12[2] = 95;
      if (v13.i8[6])
      {
        goto LABEL_38;
      }

LABEL_30:
      if (v13.i8[7])
      {
        goto LABEL_39;
      }
    }

    v12 += 8;
    v11 += 8;
    if (v11)
    {
      continue;
    }

    break;
  }

  if (v7 != (v7 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_93;
  }

LABEL_78:
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v18 = *(a1 + 87);
  if (v18 >= 0)
  {
    v19 = (a1 + 64);
  }

  else
  {
    v19 = *(a1 + 64);
  }

  v20 = *(a1 + 72);
  if (v18 >= 0)
  {
    v20 = *(a1 + 87);
  }

  sub_271171230(a2 + 96, v19, &v19[v20]);
  *(a2 + 120) = *(a1 + 88);
  if (*(a1 + 143) < 0)
  {
    sub_271127178((a2 + 128), *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *(a2 + 128) = *(a1 + 120);
    *(a2 + 144) = *(a1 + 136);
  }

  if (v24 == 1 && SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_2714DF69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 31) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2714DF710(void *a1, char *__s)
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
      sub_271127FEC();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_2714DF79C(unsigned __int8 *a1)
{
  v1 = a1[23];
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v31 = 0;
  v32 = 0;
  __p = 0;
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v3 < 0x17)
  {
    if (v3)
    {
      goto LABEL_16;
    }

LABEL_95:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2714DFD48(&v29, a1);
    std::logic_error::logic_error(exception, &v29);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if ((v3 | 7) == 0x17)
  {
    v4 = 24;
  }

  else
  {
    v4 = v3 | 7;
  }

  sub_27113107C(&__p, v4);
  do
  {
LABEL_16:
    while (1)
    {
      v5 = __tolower(*v2);
      v6 = HIBYTE(v32);
      if (SHIBYTE(v32) < 0)
      {
        break;
      }

      if (HIBYTE(v32) == 22)
      {
        goto LABEL_21;
      }

      HIBYTE(v32) = (HIBYTE(v32) + 1) & 0x7F;
      *(&__p + v6) = v5;
      ++v2;
      if (!--v3)
      {
        goto LABEL_23;
      }
    }

    v7 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v31 == v7)
    {
      if ((v32 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

LABEL_21:
      operator new();
    }

    v8 = v31++;
    v9 = __p + v8;
    *v9 = v5;
    v9[1] = 0;
    ++v2;
    --v3;
  }

  while (v3);
LABEL_23:
  v10 = v32 < 0;
  if (SHIBYTE(v32) < 0)
  {
    if (v31 != 4)
    {
      if (v31 == 5)
      {
        p_p = __p;
        v15 = *__p == 1869834798 && *(__p + 4) == 110;
        v11 = HIBYTE(v32);
        if (v15)
        {
          v16 = 3;
LABEL_86:
          operator delete(p_p);
          return v16;
        }
      }

      else
      {
        v11 = HIBYTE(v32);
      }

LABEL_49:
      if (v31 != 5)
      {
LABEL_56:
        if (v31 != 4)
        {
LABEL_68:
          if (v31 != 5)
          {
LABEL_77:
            if (v31 != 4)
            {
              goto LABEL_95;
            }

            v24 = 1;
            v25 = __p;
            goto LABEL_83;
          }

          v10 = 1;
          v20 = __p;
          goto LABEL_72;
        }

        v10 = 1;
        if (*__p == 1718187054)
        {
          goto LABEL_79;
        }

        goto LABEL_67;
      }

      v10 = 1;
      v13 = __p;
      goto LABEL_51;
    }

    p_p = __p;
    switch(*__p)
    {
      case 0x7461642E:
        v16 = 1;
        goto LABEL_86;
      case 0x7673632E:
        v16 = 2;
        goto LABEL_86;
      case 0x7478742E:
        v16 = 4;
        goto LABEL_86;
      case 0x676E702E:
        v16 = 5;
        goto LABEL_86;
    }

    v11 = HIBYTE(v32);
LABEL_63:
    if (*p_p == 1735420462)
    {
      goto LABEL_79;
    }

    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_49;
  }

  if (HIBYTE(v32) == 4)
  {
    p_p = &__p;
    v11 = 4;
    if (__p > 1954051117)
    {
      if (__p == 1954051118)
      {
        return 4;
      }

      if (__p == 1987273518)
      {
        return 2;
      }
    }

    else
    {
      if (__p == 1735290926)
      {
        return 5;
      }

      if (__p == 1952539694)
      {
        return 1;
      }
    }

    goto LABEL_63;
  }

  v11 = HIBYTE(v32);
  if (HIBYTE(v32) != 5)
  {
    goto LABEL_65;
  }

  if (__p == 1869834798 && BYTE4(__p) == 110)
  {
    return 3;
  }

  v10 = 0;
  v13 = &__p;
  v11 = 5;
LABEL_51:
  v17 = *v13;
  v18 = v13[4];
  if (v17 == 1701866030 && v18 == 103)
  {
LABEL_79:
    v16 = 5;
    if (!v10)
    {
      return v16;
    }

    goto LABEL_85;
  }

  if (v10)
  {
    goto LABEL_56;
  }

LABEL_65:
  if (v11 != 4)
  {
    goto LABEL_70;
  }

  v10 = 0;
  if (__p == 1718187054)
  {
    goto LABEL_79;
  }

LABEL_67:
  if (v10)
  {
    goto LABEL_68;
  }

LABEL_70:
  if (v11 != 5)
  {
    goto LABEL_81;
  }

  v10 = 0;
  v20 = &__p;
LABEL_72:
  v21 = *v20;
  v22 = v20[4];
  if (v21 == 1718187054 && v22 == 102)
  {
    goto LABEL_79;
  }

  if (v10)
  {
    goto LABEL_77;
  }

LABEL_81:
  if (v11 != 4)
  {
    goto LABEL_95;
  }

  v24 = 0;
  v25 = &__p;
LABEL_83:
  if (*v25 != 1784835886)
  {
    goto LABEL_95;
  }

  v16 = 6;
  if (v24)
  {
LABEL_85:
    p_p = __p;
    goto LABEL_86;
  }

  return v16;
}

void sub_2714DFCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      if (a22 < 0)
      {
        operator delete(a17);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void sub_2714DFD48(std::string *a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = "Extension ";
  v5[1] = 10;
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  v5[2] = v3;
  v5[3] = v2;
  v5[4] = " has no supported export file format";
  v5[5] = 36;
  sub_271131230(v5, &v6, 0, 0, a1);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_2714DFDE8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = std::__fs::filesystem::path::__extension(a1);
  if (v6.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v6.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v6.__size_;
  if (v6.__size_)
  {
    memmove(&__dst, v6.__data_, v6.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v6.__size_] = 0;
  v47 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  sub_271171230(&__dst, ".csv", "");
  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7.__data_ = &__dst;
  }

  else
  {
    v7.__data_ = __dst.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7.__size_ = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7.__size_ = __dst.__pn_.__r_.__value_.__l.__size_;
  }

  v8 = std::__fs::filesystem::path::__compare(&v47, v7);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v47.__pn_.__r_.__value_.__l.__data_);
LABEL_15:
  memset(&v39, 0, sizeof(v39));
  memset(&__p, 0, sizeof(__p));
  memset(&v37, 0, sizeof(v37));
  (*(*a2 + 264))(&__dst, a2, a1);
  if ((*(*a2 + 320))(a2, &__dst))
  {
    goto LABEL_44;
  }

  v9 = std::__fs::filesystem::path::__filename(a1);
  if (v9.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v9.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v9.__size_;
  if (v9.__size_)
  {
    memmove(&__dst, v9.__data_, v9.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v9.__size_] = 0;
  size = __dst.__pn_.__r_.__value_.__l.__size_;
  v11 = __dst.__pn_.__r_.__value_.__r.__words[0];
  *v40 = __dst.__pn_.__r_.__value_.__r.__words[2];
  *&v40[3] = *(&__dst.__pn_.__r_.__value_.__r.__words[2] + 3);
  v12 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v47, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
    v13 = HIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]);
    size = v47.__pn_.__r_.__value_.__l.__size_;
  }

  else
  {
    *&v47.__pn_.__r_.__value_.__l.__data_ = *&__dst.__pn_.__r_.__value_.__l.__data_;
    LODWORD(v47.__pn_.__r_.__value_.__r.__words[2]) = *v40;
    *(&v47.__pn_.__r_.__value_.__r.__words[2] + 3) = *&v40[3];
    *(&v47.__pn_.__r_.__value_.__s + 23) = *(&__dst.__pn_.__r_.__value_.__s + 23);
    v13 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  }

  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v14 = size;
  }

  v15 = 4;
  if (v14 < 4)
  {
    v15 = v14;
  }

  if (v14 >= v15)
  {
    v14 = v15;
  }

  if (v14 == 4)
  {
    v16 = &v47;
    if ((v13 & 0x80u) != 0)
    {
      v16 = v47.__pn_.__r_.__value_.__r.__words[0];
    }

    v17 = LODWORD(v16->__pn_.__r_.__value_.__l.__data_) == 1868983913;
    if ((v13 & 0x80) == 0)
    {
LABEL_40:
      if (v12 < 0)
      {
        operator delete(v11);
        if (v17)
        {
LABEL_42:
          operator new();
        }
      }

      else if (v17)
      {
        goto LABEL_42;
      }

LABEL_44:
      if (v8)
      {
        if (&__p != a1)
        {
          v18 = *(a1 + 23);
          if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v18 >= 0)
            {
              v23 = a1;
            }

            else
            {
              v23 = *a1;
            }

            if (v18 >= 0)
            {
              v24 = *(a1 + 23);
            }

            else
            {
              v24 = *(a1 + 8);
            }

            sub_2711289F8(&__p.__pn_.__r_.__value_.__l.__data_, v23, v24);
          }

          else if ((*(a1 + 23) & 0x80) != 0)
          {
            sub_271128928(&__p, *a1, *(a1 + 8));
          }

          else
          {
            __p = *a1;
          }
        }

        memset(&v47, 0, sizeof(v47));
        sub_271171230(&v47, "sequence.csv", "");
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_271127178(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = __p;
        }

        sub_2714D75A8(&__dst, &v47);
        if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__pn_.__r_.__value_.__l.__data_);
        }

        v39 = __dst;
        *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
        __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__pn_.__r_.__value_.__l.__data_);
        }

        memset(&v47, 0, sizeof(v47));
        sub_271171230(&v47, "info.json", "");
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_271127178(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = __p;
        }

        sub_2714D75A8(&__dst, &v47);
        if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__pn_.__r_.__value_.__l.__data_);
        }

        v37 = __dst;
        *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
        __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
        if ((SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_118:
          v35 = *a3;
          v36 = *(a3 + 2);
          *&v40[4] = *a3;
          *&v40[20] = *(a3 + 2);
          *&v41.__r_.__value_.__l.__data_ = xmmword_271893D90;
          v41.__r_.__value_.__s.__data_[16] = 0;
          v47.__pn_.__r_.__value_.__r.__words[0] = 0x300000001;
          sub_2718287A4(&__dst, &v47);
        }

        v25 = v47.__pn_.__r_.__value_.__r.__words[0];
LABEL_117:
        operator delete(v25);
        goto LABEL_118;
      }

      v19 = std::__fs::filesystem::path::__parent_path(a1);
      if (v19.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v19.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__pn_.__r_.__value_.__s + 23) = v19.__size_;
      if (v19.__size_)
      {
        memmove(&__dst, v19.__data_, v19.__size_);
      }

      __dst.__pn_.__r_.__value_.__s.__data_[v19.__size_] = 0;
      v47.__pn_.__r_.__value_.__r.__words[0] = __dst.__pn_.__r_.__value_.__l.__size_;
      v20 = __dst.__pn_.__r_.__value_.__r.__words[0];
      *(v47.__pn_.__r_.__value_.__r.__words + 7) = *(&__dst.__pn_.__r_.__value_.__r.__words[1] + 7);
      v21 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      __p.__pn_.__r_.__value_.__r.__words[0] = v20;
      __p.__pn_.__r_.__value_.__l.__size_ = v47.__pn_.__r_.__value_.__r.__words[0];
      *(&__p.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v47.__pn_.__r_.__value_.__r.__words + 7);
      *(&__p.__pn_.__r_.__value_.__s + 23) = v21;
      if (&v39 != a1)
      {
        v22 = *(a1 + 23);
        if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v22 >= 0)
          {
            v26 = a1;
          }

          else
          {
            v26 = *a1;
          }

          if (v22 >= 0)
          {
            v27 = *(a1 + 23);
          }

          else
          {
            v27 = *(a1 + 8);
          }

          sub_2711289F8(&v39.__pn_.__r_.__value_.__l.__data_, v26, v27);
        }

        else if ((*(a1 + 23) & 0x80) != 0)
        {
          sub_271128928(&v39, *a1, *(a1 + 8));
        }

        else
        {
          v39 = *a1;
        }
      }

      v28 = std::__fs::filesystem::path::__stem(&v39);
      if (v28.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v28.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__pn_.__r_.__value_.__s + 23) = v28.__size_;
      if (v28.__size_)
      {
        memmove(&__dst, v28.__data_, v28.__size_);
      }

      __dst.__pn_.__r_.__value_.__s.__data_[v28.__size_] = 0;
      v29 = __dst.__pn_.__r_.__value_.__l.__size_;
      v30 = __dst.__pn_.__r_.__value_.__r.__words[0];
      LODWORD(v35) = __dst.__pn_.__r_.__value_.__r.__words[2];
      *(&v35 + 3) = *(&__dst.__pn_.__r_.__value_.__r.__words[2] + 3);
      v31 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_271127178(&v41, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
        LOBYTE(v33) = *(&v41.__r_.__value_.__s + 23);
        v29 = v41.__r_.__value_.__l.__size_;
        v32 = v41.__r_.__value_.__r.__words[0];
      }

      else
      {
        *&v41.__r_.__value_.__l.__data_ = *&__dst.__pn_.__r_.__value_.__l.__data_;
        LODWORD(v41.__r_.__value_.__r.__words[2]) = v35;
        *(&v41.__r_.__value_.__r.__words[2] + 3) = *(&v35 + 3);
        *(&v41.__r_.__value_.__s + 23) = *(&__dst.__pn_.__r_.__value_.__s + 23);
        v32 = __dst.__pn_.__r_.__value_.__r.__words[0];
        LOBYTE(v33) = *(&__dst.__pn_.__r_.__value_.__s + 23);
      }

      __dst.__pn_.__r_.__value_.__r.__words[0] = "info_";
      __dst.__pn_.__r_.__value_.__l.__size_ = 5;
      v33 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v33 = v29;
      }

      else
      {
        v32 = &v41;
      }

      __dst.__pn_.__r_.__value_.__r.__words[2] = v32;
      v43 = v33;
      v44 = ".json";
      v45 = 5;
      sub_271131230(&__dst, &__src, 0, 0, &v34);
      *v40 = v34;
      memset(&v34, 0, sizeof(v34));
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_271127178(&v47, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v47 = __p;
      }

      sub_2714D75A8(&v47, v40);
      if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__pn_.__r_.__value_.__l.__data_);
      }

      v37 = v47;
      *(&v47.__pn_.__r_.__value_.__s + 23) = 0;
      v47.__pn_.__r_.__value_.__s.__data_[0] = 0;
      if ((v40[23] & 0x80000000) != 0)
      {
        operator delete(*v40);
        if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_110:
          if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          goto LABEL_115;
        }
      }

      else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      operator delete(v34.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_111:
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_118;
        }

LABEL_116:
        v25 = v30;
        goto LABEL_117;
      }

LABEL_115:
      operator delete(v41.__r_.__value_.__l.__data_);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_116;
    }
  }

  else
  {
    v17 = 0;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_40;
    }
  }

  operator delete(v47.__pn_.__r_.__value_.__l.__data_);
  goto LABEL_40;
}

void sub_2714E1C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  operator delete(v67);
  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  sub_2717255F4(v68 - 224);
  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
    if ((SLOBYTE(STACK[0x277]) & 0x80000000) == 0)
    {
LABEL_7:
      if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
      {
LABEL_12:
        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(STACK[0x280]);
      goto LABEL_12;
    }
  }

  else if ((SLOBYTE(STACK[0x277]) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(STACK[0x260]);
  if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_2714E2284(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = std::__fs::filesystem::path::__extension(a1);
  if (v4.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v4.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v4.__size_;
  if (v4.__size_)
  {
    memmove(&__dst, v4.__data_, v4.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v4.__size_] = 0;
  v37 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  sub_271171230(&__dst, ".csv", "");
  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5.__data_ = &__dst;
  }

  else
  {
    v5.__data_ = __dst.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5.__size_ = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v5.__size_ = __dst.__pn_.__r_.__value_.__l.__size_;
  }

  v6 = std::__fs::filesystem::path::__compare(&v37, v5);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v37.__pn_.__r_.__value_.__l.__data_);
LABEL_15:
  memset(&__p, 0, sizeof(__p));
  memset(&v32, 0, sizeof(v32));
  memset(&v31, 0, sizeof(v31));
  if (v6)
  {
    if (&__p != a1)
    {
      if (*(a1 + 23) < 0)
      {
        sub_271128928(&__p, *a1, *(a1 + 8));
      }

      else
      {
        __p = *a1;
      }
    }

    memset(&v37, 0, sizeof(v37));
    sub_271171230(&v37, "sequence.csv", "");
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    sub_2714D75A8(&__dst, &v37);
    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__pn_.__r_.__value_.__l.__data_);
    }

    v32 = __dst;
    *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
    __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__pn_.__r_.__value_.__l.__data_);
    }

    memset(&v37, 0, sizeof(v37));
    sub_271171230(&v37, "info.json", "");
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    sub_2714D75A8(&__dst, &v37);
    if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__pn_.__r_.__value_.__l.__data_);
    }

    v31 = __dst;
    *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
    __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if ((SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_83:
      (*(*a2 + 264))(&__dst, a2, &v32);
      if ((*(*a2 + 328))(a2, &__dst))
      {
        (*(*a2 + 368))(v30, a2, &v32, 8);
        if (v30[1])
        {
          v28 = 0uLL;
          v29 = 0;
          LOBYTE(v24[0]) = 0;
          v27 = 0;
          (*(*a2 + 264))(&__dst, a2, &v31);
          if ((*(*a2 + 328))(a2, &__dst))
          {
            (*(*a2 + 368))(&v22, a2, &v31, 8);
            v20 = (*(*v23 + 16))(v23);
            sub_2714DB1E0(&v21, *(v20 + *(*v20 - 24) + 40), 0);
            sub_27181A6F8(&v21);
          }

          v28 = xmmword_271893DA0;
          v29 = 9;
          LODWORD(v38) = 0;
          __dst.__pn_.__r_.__value_.__r.__words[0] = &v37;
          __dst.__pn_.__r_.__value_.__l.__size_ = "No info file ";
          __dst.__pn_.__r_.__value_.__r.__words[2] = &v37;
          v41 = "No info file ";
          v42 = "No info file ";
          v34.__r_.__value_.__r.__words[0] = &__dst;
          sub_2711EF0C8(&v34);
          sub_2714D809C();
        }

        LODWORD(v36) = 0;
        v37.__pn_.__r_.__value_.__r.__words[0] = &v35;
        v37.__pn_.__r_.__value_.__l.__size_ = "failed to open file ";
        v37.__pn_.__r_.__value_.__r.__words[2] = &v35;
        v38 = "failed to open file ";
        v39 = "failed to open file ";
        v24[0] = &v37;
        sub_2711E7110(v24);
        sub_2714D809C();
      }

      LODWORD(v36) = 0;
      v37.__pn_.__r_.__value_.__r.__words[0] = &v35;
      v37.__pn_.__r_.__value_.__l.__size_ = "sequence file ";
      v37.__pn_.__r_.__value_.__r.__words[2] = &v35;
      v38 = "sequence file ";
      v39 = "sequence file ";
      v24[0] = &v37;
      sub_2711E8250(v24);
      sub_2714D809C();
    }

    v11 = v37.__pn_.__r_.__value_.__r.__words[0];
LABEL_82:
    operator delete(v11);
    goto LABEL_83;
  }

  v7 = std::__fs::filesystem::path::__parent_path(a1);
  if (v7.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v7.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v7.__size_;
  if (v7.__size_)
  {
    memmove(&__dst, v7.__data_, v7.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v7.__size_] = 0;
  v37.__pn_.__r_.__value_.__r.__words[0] = __dst.__pn_.__r_.__value_.__l.__size_;
  v8 = __dst.__pn_.__r_.__value_.__r.__words[0];
  *(v37.__pn_.__r_.__value_.__r.__words + 7) = *(&__dst.__pn_.__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  __p.__pn_.__r_.__value_.__r.__words[0] = v8;
  __p.__pn_.__r_.__value_.__l.__size_ = v37.__pn_.__r_.__value_.__r.__words[0];
  *(&__p.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v37.__pn_.__r_.__value_.__r.__words + 7);
  *(&__p.__pn_.__r_.__value_.__s + 23) = v9;
  if (&v32 != a1)
  {
    v10 = *(a1 + 23);
    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      if (v10 >= 0)
      {
        v13 = *(a1 + 23);
      }

      else
      {
        v13 = *(a1 + 8);
      }

      sub_2711289F8(&v32.__pn_.__r_.__value_.__l.__data_, v12, v13);
    }

    else if ((*(a1 + 23) & 0x80) != 0)
    {
      sub_271128928(&v32, *a1, *(a1 + 8));
    }

    else
    {
      v32 = *a1;
    }
  }

  v14 = std::__fs::filesystem::path::__stem(&v32);
  if (v14.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v14.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v14.__size_;
  if (v14.__size_)
  {
    memmove(&__dst, v14.__data_, v14.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v14.__size_] = 0;
  size = __dst.__pn_.__r_.__value_.__l.__size_;
  v16 = __dst.__pn_.__r_.__value_.__r.__words[0];
  LODWORD(v30[0]) = __dst.__pn_.__r_.__value_.__r.__words[2];
  *(v30 + 3) = *(&__dst.__pn_.__r_.__value_.__r.__words[2] + 3);
  v17 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(v24, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
    LOBYTE(v19) = v26;
    v18 = v24[0];
    size = v24[1];
  }

  else
  {
    *v24 = *&__dst.__pn_.__r_.__value_.__l.__data_;
    *v25 = v30[0];
    *&v25[3] = *(v30 + 3);
    v26 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
    v18 = __dst.__pn_.__r_.__value_.__r.__words[0];
    LOBYTE(v19) = *(&__dst.__pn_.__r_.__value_.__s + 23);
  }

  __dst.__pn_.__r_.__value_.__r.__words[0] = "info_";
  __dst.__pn_.__r_.__value_.__l.__size_ = 5;
  v19 = v19;
  if (v19 < 0)
  {
    v19 = size;
  }

  else
  {
    v18 = v24;
  }

  __dst.__pn_.__r_.__value_.__r.__words[2] = v18;
  v41 = v19;
  v42 = ".json";
  v43 = 5;
  sub_271131230(&__dst, &v44, 0, 0, &v34);
  v35.__pn_ = v34;
  memset(&v34, 0, sizeof(v34));
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v37, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = __p;
  }

  sub_2714D75A8(&v37, &v35);
  if (SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__pn_.__r_.__value_.__l.__data_);
  }

  v31 = v37;
  *(&v37.__pn_.__r_.__value_.__s + 23) = 0;
  v37.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_80;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
  if ((v26 & 0x80000000) == 0)
  {
LABEL_76:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_81:
    v11 = v16;
    goto LABEL_82;
  }

LABEL_80:
  operator delete(v24[0]);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

  goto LABEL_81;
}

void sub_2714E3F7C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2714E4318(uint64_t a1)
{
  if (*(a1 + 128) != 1)
  {
    goto LABEL_10;
  }

  if (*(a1 + 120) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 119) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = a1;
    operator delete(*(a1 + 64));
    a1 = v4;
    if (*(v4 + 56) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v3 = a1;
  operator delete(*(a1 + 96));
  a1 = v3;
  if (*(v3 + 87) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 56) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(a1 + 55) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 32));
    a1 = v2;
  }

LABEL_10:

  std::runtime_error::~runtime_error(a1);
}

void sub_2714E43D4(std::runtime_error *this)
{
  if (LOBYTE(this[8].__vftable) != 1)
  {
    goto LABEL_10;
  }

  if (LOBYTE(this[7].__imp_.__imp_) == 1)
  {
    if ((SHIBYTE(this[7].__vftable) & 0x80000000) == 0)
    {
      if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(this[4].__vftable);
      if (LOBYTE(this[3].__imp_.__imp_) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    operator delete(this[6].__vftable);
    if (SHIBYTE(this[5].__vftable) < 0)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (LOBYTE(this[3].__imp_.__imp_) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

LABEL_10:
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x2743BF050);
}

void sub_2714E4488(uint64_t a1, uint64_t a2, void *__src, size_t __len, uint64_t a5, char a6)
{
  v35[2] = *MEMORY[0x277D85DE8];
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[__len] = 0;
  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__pn_.__r_.__value_.__l.__size_;
  }

  sub_2713BC7A8(p_dst, size, ".", 1, 0, &v31);
  v29 = a6;
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    v14 = v31;
    v13 = v32;
    memset(v35, 0, 15);
    if (v31 != v32)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = v31;
    v13 = v32;
    memset(v35, 0, 15);
    if (v31 != v32)
    {
LABEL_15:
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v33.__pn_.__r_.__value_.__r.__words[0] = v15;
        v33.__pn_.__r_.__value_.__l.__size_ = v35[0];
        *(&v33.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v35 + 7);
        *(&v33.__pn_.__r_.__value_.__s + 23) = v16;
        memset(v35, 0, 15);
        if (*(v14 + 23) < 0)
        {
          if (!v14[1] || **v14 != 47)
          {
LABEL_26:
            if (std::__fs::filesystem::path::__filename(&v33).__size_)
            {
              if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                v17 = (v33.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v33.__pn_.__r_.__value_.__l.__size_ == v17)
                {
                  if ((v33.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    sub_271120DA8();
                  }

LABEL_32:
                  operator new();
                }

                v18 = v33.__pn_.__r_.__value_.__l.__size_;
                v19 = v33.__pn_.__r_.__value_.__r.__words[0];
                ++v33.__pn_.__r_.__value_.__l.__size_;
              }

              else
              {
                if (HIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) == 22)
                {
                  goto LABEL_32;
                }

                v18 = HIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]);
                *(&v33.__pn_.__r_.__value_.__s + 23) = (*(&v33.__pn_.__r_.__value_.__s + 23) + 1) & 0x7F;
                v19 = &v33;
              }

              *(&v19->__pn_.__r_.__value_.__l.__data_ + v18) = 47;
            }

            goto LABEL_37;
          }
        }

        else if (!*(v14 + 23) || *v14 != 47)
        {
          goto LABEL_26;
        }

        if (v16 < 0)
        {
          *v15 = 0;
          v33.__pn_.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v33.__pn_.__r_.__value_.__s.__data_[0] = 0;
          *(&v33.__pn_.__r_.__value_.__s + 23) = 0;
        }

LABEL_37:
        v20 = *(v14 + 23);
        if (v20 >= 0)
        {
          v21 = v14;
        }

        else
        {
          v21 = *v14;
        }

        if (v20 < 0)
        {
          v20 = v14[1];
        }

        sub_271171230(&v33, v21, &v21[v20]);
        if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_271127178(&__dst, v33.__pn_.__r_.__value_.__l.__data_, v33.__pn_.__r_.__value_.__l.__size_);
          v35[0] = __dst.__pn_.__r_.__value_.__l.__size_;
          v15 = __dst.__pn_.__r_.__value_.__r.__words[0];
          *(v35 + 7) = *(&__dst.__pn_.__r_.__value_.__r.__words[1] + 7);
          v16 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
          *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
          __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__pn_.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          __dst = v33;
          v35[0] = v33.__pn_.__r_.__value_.__l.__size_;
          v15 = v33.__pn_.__r_.__value_.__r.__words[0];
          *(v35 + 7) = *(&v33.__pn_.__r_.__value_.__r.__words[1] + 7);
          v16 = HIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]);
        }

        v14 += 3;
        if (v14 == v13)
        {
          __p.__pn_.__r_.__value_.__r.__words[0] = v15;
          __p.__pn_.__r_.__value_.__l.__size_ = v35[0];
          *(&__p.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v35 + 7);
          *(&__p.__pn_.__r_.__value_.__s + 23) = v16;
          if (v29)
          {
            goto LABEL_46;
          }

LABEL_55:
          if (*(a2 + 23) < 0)
          {
            sub_271127178(a1, *a2, *(a2 + 8));
          }

          else
          {
            *a1 = *a2;
            *(a1 + 16) = *(a2 + 16);
          }

          sub_2714D75A8(a1, &__p);
LABEL_65:
          if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_66;
          }

          goto LABEL_67;
        }
      }
    }
  }

  memset(&__p, 0, sizeof(__p));
  if ((v29 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_46:
  memset(&v33, 0, sizeof(v33));
  v22 = *(a5 + 23);
  if (v22 >= 0)
  {
    v23 = a5;
  }

  else
  {
    v23 = *a5;
  }

  if (v22 < 0)
  {
    v22 = *(a5 + 8);
  }

  sub_271171230(&v33, v23, &v23[v22]);
  if (*(a2 + 23) < 0)
  {
    sub_271127178(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  sub_2714D75A8(&__dst, &v33);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(a1, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *a1 = __dst;
  }

  sub_2714D75A8(a1, &__p);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }
  }

  else if ((SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v33.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_66:
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_67:
  v24 = v31;
  if (v31)
  {
    v25 = v32;
    v26 = v31;
    if (v32 != v31)
    {
      do
      {
        v27 = *(v25 - 1);
        v25 -= 3;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = v31;
    }

    v32 = v24;
    operator delete(v26);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2714E49D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void **a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_7:
      if (a19 < 0)
      {
        operator delete(a14);
      }

      sub_27137F4D0(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a23);
  goto LABEL_7;
}

void sub_2714E4AC4(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50[1] = *MEMORY[0x277D85DE8];
  HIBYTE(v34) = 0;
  LOBYTE(v33[0]) = 0;
  sub_27184BE74("%020llu", &__p, *a3);
  *&v41 = a4;
  *(&v41 + 1) = a5;
  v42 = "_";
  v43 = 1;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v44 = p_p;
  v45 = size;
  v46 = v33;
  v47 = 0;
  v48 = a6;
  v49 = a7;
  sub_271131230(&v41, v50, 0, 0, &v36);
  v35.__pn_ = v36;
  memset(&v36, 0, sizeof(v36));
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v33[0]);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_271127178(a1, *a2, *(a2 + 1));
    goto LABEL_13;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v34) < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(a2 + 23) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 2);
LABEL_13:
  v30 = a4;
  sub_2714D75A8(a1, &v35);
  for (i = 1; ; ++i)
  {
    (*(*a8 + 264))(&v41, a8, a1);
    if (((*(*a8 + 296))(a8, &v41) & 1) == 0)
    {
      break;
    }

    v37 = 0;
    std::to_string(&__p, i);
    *&v41 = &v36;
    *(&v41 + 1) = &__p;
    v42 = &v36;
    v43 = &__p;
    v44 = &__p;
    if (v37 == -1)
    {
      sub_2711308D4();
    }

    v39 = &v41;
    (off_288132630[v37])(&v39, &v36);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v37 == -1)
    {
      sub_2711308D4();
    }

    *&v41 = &__p;
    (off_288132660[v37])(&v32, &v41, &v36);
    if (v37 != -1)
    {
      (off_288132648[v37])(&v41, &v36);
    }

    v18 = std::string::insert(&v32, 0, "_", 1uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v34 = v18->__r_.__value_.__r.__words[2];
    *v33 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    sub_27184BE74("%020llu", &__p, *a3);
    *&v41 = v30;
    *(&v41 + 1) = a5;
    v20 = a5;
    v42 = "_";
    v43 = 1;
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = __p.__r_.__value_.__l.__size_;
    }

    v44 = v22;
    v45 = v21;
    v23 = HIBYTE(v34);
    v24 = v33;
    if (v34 < 0)
    {
      v24 = v33[0];
      v23 = v33[1];
    }

    v46 = v24;
    v47 = v23;
    v25 = a6;
    v48 = a6;
    v49 = a7;
    v26 = a7;
    sub_271131230(&v41, v50, 0, 0, &v36);
    v40[0] = v36.__r_.__value_.__l.__size_;
    v27 = v36.__r_.__value_.__r.__words[0];
    *(v40 + 7) = *(&v36.__r_.__value_.__r.__words[1] + 7);
    v28 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    memset(&v36, 0, sizeof(v36));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(v35.__pn_.__r_.__value_.__l.__data_);
LABEL_31:
    v35.__pn_.__r_.__value_.__r.__words[0] = v27;
    v35.__pn_.__r_.__value_.__l.__size_ = v40[0];
    *(&v35.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v40 + 7);
    *(&v35.__pn_.__r_.__value_.__s + 23) = v28;
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
      a7 = v26;
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        a6 = v25;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_39;
      }
    }

    else
    {
      a7 = v26;
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    operator delete(v32.__r_.__value_.__l.__data_);
    a6 = v25;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_34:
      v41 = *a2;
      v42 = *(a2 + 2);
      a5 = v20;
      goto LABEL_40;
    }

LABEL_39:
    sub_271127178(&v41, *a2, *(a2 + 1));
    a5 = v20;
LABEL_40:
    sub_2714D75A8(&v41, &v35);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v41;
    *(a1 + 16) = v42;
  }

  if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__pn_.__r_.__value_.__l.__data_);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2714E4F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, _Unwind_Exception *exception_objecta, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714E50C0(std::string *a1, uint64_t a2)
{
  if (*(sub_2714FC508(a2) + 40) == 1)
  {
    v4 = sub_2714FC508(a2);
    v5 = *(v4 + 39);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v4 + 24);
    }

    if (v5)
    {
      v6 = sub_2714FC508(a2);
      if (*(v6 + 39) < 0)
      {
        sub_271127178(&v47, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        v47 = *(v6 + 16);
        v48 = *(v6 + 32);
      }

      v21 = HIBYTE(v48);
      v22 = HIBYTE(v48);
      v24 = *(&v47 + 1);
      v23 = v47;
      if (SHIBYTE(v48) >= 0)
      {
        v25 = &v47;
      }

      else
      {
        v25 = v47;
      }

      if (SHIBYTE(v48) >= 0)
      {
        v26 = HIBYTE(v48);
      }

      else
      {
        v26 = *(&v47 + 1);
      }

      if (v26)
      {
        do
        {
          v27 = memchr(" .\\/:*?|<>", *v25, 0xBuLL);
          if (v27)
          {
            v28 = v27 == "";
          }

          else
          {
            v28 = 1;
          }

          if (!v28)
          {
            *v25 = 95;
          }

          v25 = (v25 + 1);
          --v26;
        }

        while (v26);
        v21 = HIBYTE(v48);
        v24 = *(&v47 + 1);
        v23 = v47;
        v22 = HIBYTE(v48);
      }

      if (v22 >= 0)
      {
        v29 = &v47;
      }

      else
      {
        v29 = v23;
      }

      if (v22 >= 0)
      {
        v30 = v21;
      }

      else
      {
        v30 = v24;
      }

      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      if (v30 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v30 < 0x17)
      {
        if (!v30)
        {
LABEL_88:
          if ((v22 & 0x80) == 0)
          {
            return;
          }

          v33 = v47;
          goto LABEL_96;
        }
      }

      else
      {
        if ((v30 | 7) == 0x17)
        {
          v31 = 24;
        }

        else
        {
          v31 = v30 | 7;
        }

        sub_27113107C(a1, v31);
      }

      do
      {
        v32 = __tolower(*v29);
        std::string::push_back(a1, v32);
        ++v29;
        --v30;
      }

      while (v30);
      v22 = HIBYTE(v48);
      goto LABEL_88;
    }
  }

  sub_2714FCC00(a2);
  if ((v41 & 0x80u) == 0)
  {
    v7 = v41;
  }

  else
  {
    v7 = v40[1];
  }

  if (v7 == 8)
  {
    v8 = v40[0];
    if ((v41 & 0x80u) == 0)
    {
      v8 = v40;
    }

    if (*v8 != 0x7A69762E64337663)
    {
      __dst.__r_.__value_.__r.__words[2] = 0x900000000000000;
      *&__dst.__r_.__value_.__l.__data_ = 0uLL;
LABEL_19:
      if ((v41 & 0x80u) == 0)
      {
        v9 = v40;
      }

      else
      {
        v9 = v40[0];
      }

      memmove(&__dst, v9, v7);
      goto LABEL_23;
    }

    v43 = &unk_28810A520;
    v44 = 0;
    v17 = &v47;
    sub_2715225E0(&v43, __val);
    v18 = HIBYTE(v48);
    if (SHIBYTE(v48) >= 0)
    {
      v19 = HIBYTE(v48);
    }

    else
    {
      v19 = *(&v47 + 1);
      v17 = v47;
    }

    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    a1->__r_.__value_.__r.__words[0] = 0;
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    if (v19 < 0x17)
    {
      if (!v19)
      {
LABEL_93:
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_94;
        }

        v16 = v47;
        goto LABEL_47;
      }
    }

    else
    {
      if ((v19 | 7) == 0x17)
      {
        v20 = 24;
      }

      else
      {
        v20 = v19 | 7;
      }

      sub_27113107C(a1, v20);
    }

    do
    {
      v34 = __tolower(*v17);
      std::string::push_back(a1, v34);
      ++v17;
      --v19;
    }

    while (v19);
    v18 = HIBYTE(v48);
    goto LABEL_93;
  }

  if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v7 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&__dst, 0, sizeof(__dst));
  *(&__dst.__r_.__value_.__s + 23) = v7 + 1;
  if (v7)
  {
    goto LABEL_19;
  }

LABEL_23:
  *(&__dst.__r_.__value_.__l.__data_ + v7) = 95;
  v45 = 0;
  std::to_string(&v46, __val);
  *&v47 = &v43;
  *(&v47 + 1) = &v46;
  v48 = &v43;
  v49 = &v46;
  v50 = &v46;
  if (v45 == -1)
  {
    sub_2711308D4();
  }

  v51 = &v47;
  (off_288132630[v45])(&v51, &v43);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v45 == -1)
  {
    sub_2711308D4();
  }

  *&v47 = &v46;
  (off_288132660[v45])(__p, &v47, &v43);
  if (v45 != -1)
  {
    (off_288132648[v45])(&v47, &v43);
  }

  if ((v37 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v11 = v37;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&__dst, v10, v11);
  v14 = v12->__r_.__value_.__r.__words[0];
  size = v12->__r_.__value_.__l.__size_;
  v39[0] = v12->__r_.__value_.__r.__words[2];
  *(v39 + 3) = *(&v12->__r_.__value_.__r.__words[2] + 3);
  v15 = SHIBYTE(v12->__r_.__value_.__r.__words[2]);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((v37 & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  operator delete(__p[0]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  if ((v15 & 0x80000000) == 0)
  {
LABEL_38:
    __s.__r_.__value_.__r.__words[0] = v14;
    __s.__r_.__value_.__l.__size_ = size;
    LODWORD(__s.__r_.__value_.__r.__words[2]) = v39[0];
    *(&__s.__r_.__value_.__r.__words[2] + 3) = *(v39 + 3);
    *(&__s.__r_.__value_.__s + 23) = v15;
    goto LABEL_42;
  }

LABEL_41:
  sub_271127178(&__s, v14, size);
LABEL_42:
  sub_27184BC8C(&__s, ".", 1, "_", 1uLL, 0, 0, a1);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
    if (v15 < 0)
    {
LABEL_46:
      v16 = v14;
LABEL_47:
      operator delete(v16);
    }
  }

  else if (v15 < 0)
  {
    goto LABEL_46;
  }

LABEL_94:
  if ((v41 & 0x80000000) == 0)
  {
    return;
  }

  v33 = v40[0];
LABEL_96:
  operator delete(v33);
}