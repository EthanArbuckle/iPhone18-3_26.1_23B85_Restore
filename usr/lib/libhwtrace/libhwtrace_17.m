uint64_t *sub_298BBB13C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      do
      {
        v6 = *(v2 + 8 * v5);
        *(v2 + 8 * v5) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
          v4 = *v3;
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

uint64_t sub_298BBB1C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *sub_298BBB250(void *result)
{
  if (!*result)
  {
    v9 = v6;
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
    v14 = v1;
    v15 = v7;
    v16 = v8;
    operator new();
  }

  return result;
}

int *sub_298BBB354(uint64_t a1, unsigned int a2)
{
  v22[6] = *MEMORY[0x29EDCA608];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v16 = a2;
      v17 = a1;
      v18 = operator new(16 * a2, 8uLL);
      a1 = v17;
      *(v17 + 8) = v18;
      *(v17 + 16) = v16;
    }

    else
    {
      *a1 |= 1u;
    }

    sub_298BBB57C(a1, v5, &v5[2 * v6]);
    v19 = *MEMORY[0x29EDCA608];

    JUMPOUT(0x29C2945E0);
  }

  v7 = &v20;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    v7 = v22;
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 40);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  *v7 = v8;
  *(v7 + 2) = *(a1 + 32);
  v7 += 2;
  v9 = *(a1 + 40);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 56);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7 = v10;
    *(v7 + 2) = *(a1 + 64);
    v7 += 2;
    if (a2 < 5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7 = v9;
  *(v7 + 2) = *(a1 + 48);
  v7 += 2;
  v10 = *(a1 + 56);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = operator new(16 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

LABEL_14:
  result = sub_298BBB57C(a1, &v20, v7);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

int *sub_298BBB57C(int *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 18;
    v5 = result + 2;
    v7 = 48;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[4 * v4];
    v7 = v6 - v5 - 16;
    if (v7 < 0x10)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 4) + 1;
  v9 = &v5[4 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v10 = v5 + 4;
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v10 - 2) = -4096;
    *v10 = -4096;
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v17 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v13 = 3;
        v12 = result + 2;
      }

      else
      {
        v12 = *(result + 1);
        v13 = result[4] - 1;
      }

      v14 = v13 & ((v17 >> 4) ^ (v17 >> 9));
      v15 = &v12[4 * v14];
      v16 = *v15;
      if (v17 != *v15)
      {
        v18 = 0;
        v19 = 1;
        while (v16 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v16 == -8192;
          }

          if (v20)
          {
            v18 = v15;
          }

          v21 = v14 + v19++;
          v14 = v21 & v13;
          v15 = &v12[4 * (v21 & v13)];
          v16 = *v15;
          if (v17 == *v15)
          {
            goto LABEL_15;
          }
        }

        if (v18)
        {
          v15 = v18;
        }
      }

LABEL_15:
      *v15 = v17;
      *(v15 + 2) = *(a2 + 2);
      *result += 2;
    }

    a2 += 2;
  }

  return result;
}

uint64_t sub_298BBB6E0(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  *a1 = 5;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (!sub_298B88E98(a2, a3, 0))
  {
    sub_298B88F28(a2, a3, __p);
    LOWORD(v16) = 6;
    if (v13 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if (v13 >= 0)
    {
      v9 = SHIBYTE(v13);
    }

    else
    {
      v9 = __p[1];
    }

    if (!sub_298B88E98(v8, v9, 0))
    {
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if (v13 >= 0)
      {
        v11 = SHIBYTE(v13);
      }

      else
      {
        v11 = __p[1];
      }

      sub_298B88F28(v10, v11, &v14);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v14;
      v13 = v15;
    }

    v17 = *__p;
    v18 = v13;
    __p[1] = 0;
    v13 = 0;
    __p[0] = 0;
    sub_298B8802C(a1);
    sub_298B87D1C(a1, &v16);
    sub_298B8802C(&v16);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_298BBB834(uint64_t a1)
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

uint64_t *sub_298BBB8C0(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v4 = v1;
    v5 = sub_298BBB918(v2);
    MEMORY[0x29C2945F0](v5, 0x10A0C405B6220C9);
    return v4;
  }

  return v1;
}

uint64_t sub_298BBB918(uint64_t result)
{
  v1 = *(result + 88);
  v2 = *(result + 96);
  if (v2)
  {
    v5 = result;
    v6 = -8 * v2;
    v7 = v1 + 8 * v2 - 8;
    do
    {
      v7 = sub_298BBB8C0(v7) - 8;
      v6 += 8;
    }

    while (v6);
    result = v5;
    v1 = *(v5 + 88);
  }

  if (v1 != (result + 104))
  {
    v4 = result;
    free(v1);
    result = v4;
  }

  if (*(result + 56) != result + 72)
  {
    v3 = result;
    free(*(result + 56));
    return v3;
  }

  return result;
}

void sub_298BBB9B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 80);
  if (v3)
  {
    *(a1 + 112) -= v3;
  }

  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = ((v4 - v5) << 6) - 1;
  *(a1 + 40) = *(v2 + 104);
  v8 = *(a1 + 80);
  v7 = *(a1 + 88);
  if (v4 == v5)
  {
    v6 = 0;
  }

  v9 = *(*(v5 + (((v7 - 1 + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v7 - 1 + v8) & 0x1FF));
  *(a1 + 88) = v7 - 1;
  *(a1 + 96) = v9;
  if ((v6 - (v7 + v8) + 1) >= 0x400)
  {
    operator delete(*(v4 - 8));
    *(a1 + 64) -= 8;
  }
}

uint64_t sub_298BBBA58(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 96);
  *(result + 96) = v2 + 1;
  v3 = *(*(v1 + 88) + 8 * v2);
  *(result + 40) = v3;
  v4 = *(v3 + 64);
  if (v4)
  {
    v11 = *(v3 + 56);
    v12 = v11 + 32 * v4;
    v13 = result;
    sub_298BB3320(result, v12 - 32, 1);
    result = v13;
    if (v12 - 32 != v11)
    {
      v14 = 32 - 32 * v4;
      v15 = v12 - 64;
      do
      {
        sub_298BB3320(v13, v15, 1);
        result = v13;
        v15 -= 32;
        v14 += 32;
      }

      while (v14);
    }
  }

  v5 = *(result + 56);
  v6 = *(result + 64);
  v7 = *(result + 56);
  v8 = ((v6 - v7) << 6) - 1;
  if (v6 == v7)
  {
    v8 = 0;
  }

  v9 = *(result + 88) + *(result + 80);
  if (v8 == v9)
  {
    v10 = result;
    sub_298BBC088((result + 48));
    result = v10;
    v7 = v10[7];
    v9 = v10[11] + v10[10];
  }

  *(*(v7 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *(result + 96);
  ++*(result + 88);
  *(result + 96) = 0;
  return result;
}

double sub_298BBBB74(void **a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  a1[5] = 0;
  v6 = (v4 - v5) >> 3;
  if (v6 >= 3)
  {
    operator delete(*v5);
    v4 = a1[2];
    v5 = (a1[1] + 8);
    a1[1] = v5;
    v6 = (v4 - v5) >> 3;
    if (v6 >= 3)
    {
      operator delete(*v5);
      v4 = a1[2];
      v5 = (a1[1] + 8);
      a1[1] = v5;
      v6 = (v4 - v5) >> 3;
      if (v6 >= 3)
      {
        do
        {
          operator delete(*v5);
          v4 = a1[2];
          v5 = (a1[1] + 8);
          a1[1] = v5;
          v6 = (v4 - v5) >> 3;
        }

        while (v6 > 2);
      }
    }
  }

  if (v6 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v7 = 512;
  }

  a1[4] = v7;
LABEL_10:
  if (a1[5])
  {
    sub_298BBBCE0(a1, 0);
    sub_298BBBD44(a1, 0);
  }

  else
  {
    while (v4 != v5)
    {
      operator delete(*(v4 - 8));
      v5 = a1[1];
      v4 = a1[2] - 8;
      a1[2] = v4;
    }

    a1[4] = 0;
  }

  sub_298BBBDB4(a1);
  v9 = a1[1];
  v8 = a1[2];
  if (v8 != v9)
  {
    a1[2] = &v8[(v9 - v8 + 7) & 0xFFFFFFFFFFFFFFF8];
  }

  sub_298BBBDB4(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_298BBBCE0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t sub_298BBBD44(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_298BBBDB4(void **a1)
{
  v3 = a1[2] - a1[1];
  if (a1[3] - *a1 <= v3)
  {
    return;
  }

  v29 = v1;
  v30 = v2;
  sub_298BBBF18(&__p, v3 >> 3, 0, a1);
  v5 = v28;
  v6 = __p;
  v7 = a1[3];
  v8 = *a1;
  if (v28 - __p < (v7 - *a1))
  {
    v9 = a1[1];
    v10 = a1[2];
    v11 = v10 - v9;
    if (v10 == v9)
    {
LABEL_20:
      v23 = v26;
      v24 = v26 + v11;
      *a1 = v6;
      a1[1] = v23;
      __p = v8;
      v26 = v9;
      a1[2] = v24;
      a1[3] = v5;
      v27 = v10;
      v28 = v7;
      v6 = v8;
      goto LABEL_11;
    }

    v12 = v27;
    if ((v11 - 8) < 0x18)
    {
      v13 = v27;
    }

    else
    {
      v13 = v27;
      if ((v27 - v9) >= 0x20)
      {
        v14 = ((v11 - 8) >> 3) + 1;
        v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
        v13 = &v27[v15];
        v16 = &v9[v15];
        v17 = (v9 + 16);
        v18 = v27 + 16;
        v19 = v14 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        v9 = v16;
        if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_19;
        }
      }
    }

    v21 = &v12[v11];
    do
    {
      v22 = *v9;
      v9 += 8;
      *v13 = v22;
      v13 += 8;
    }

    while (v13 != v21);
LABEL_19:
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v7 = a1[3];
    v6 = __p;
    v5 = v28;
    v11 = v10 - v9;
    goto LABEL_20;
  }

  v9 = v26;
  v10 = v27;
LABEL_11:
  if (v10 != v9)
  {
    v27 = &v10[(v9 - v10 + 7) & 0xFFFFFFFFFFFFFFF8];
  }

  if (v6)
  {
    operator delete(v6);
  }
}

void *sub_298BBBF18(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *result = 0;
  result[1] = 8 * a3;
  result[2] = 8 * a3;
  result[3] = 0;
  return result;
}

uint64_t sub_298BBBF90(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = -32 * v2;
    v4 = *(v1 + 56) + 32 * v2 - 32;
    do
    {
      v5 = result;
      sub_298BB3320(result, v4, 1);
      result = v5;
      v4 -= 32;
      v3 += 32;
    }

    while (v3);
  }

  return result;
}

void *sub_298BBBFF4(void *result, void *a2)
{
  v2 = *(result + 1);
  v3 = result[2];
  v4 = result[1];
  v5 = ((v3 - v4) << 6) - 1;
  if (v3 == v4)
  {
    v5 = 0;
  }

  v6 = result[5] + result[4];
  if (v5 == v6)
  {
    v7 = result;
    v8 = a2;
    sub_298BBC088(result);
    a2 = v8;
    result = v7;
    v4 = v7[1];
    v6 = v7[5] + v7[4];
  }

  *(*(v4 + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v6 & 0x1FF)) = *a2;
  ++result[5];
  return result;
}

void *sub_298BBC088(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v4 = a1[3];
    v6 = v4 - *a1;
    if (v5 - a1[1] < v6)
    {
      if (v4 != v5)
      {
        operator new();
      }

      operator new();
    }

    v7 = v6 >> 2;
    if (v4 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (!(v8 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  a1[4] = v3;
  v9 = a1[1];
  v11 = *v9;
  a1[1] = v9 + 1;
  return sub_298AF71FC(a1, &v11);
}

__n128 sub_298BBC334(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1E1D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298BBC364(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "BacktraceSnapshot::Create", &unk_298EC00B5, v3, 2u);
    }
  }
}

uint64_t sub_298BBC3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = a2;
  return a1;
}

void *sub_298BBC47C(_DWORD *a1, void *a2, void *__b)
{
  v3 = *a1;
  v4 = *a1 >> 1;
  if (*a1)
  {
    v5 = 4;
  }

  else
  {
    v5 = a1[4];
  }

  if (4 * v4 + 4 < 3 * v5)
  {
    if (v5 + ~v4 - a1[1] > v5 >> 3)
    {
      v6 = *a1 & 1;
      goto LABEL_7;
    }

    v9 = a1;
    sub_298BBC65C(a1, v5);
    a1 = v9;
    v13 = v9 + 2;
    v3 = *v9;
    if (*v9)
    {
      v14 = 4;
      goto LABEL_28;
    }

    v14 = v9[4];
    if (v14)
    {
      v13 = *(v9 + 1);
LABEL_28:
      v6 = *v9 & 1;
      v22 = v14 - 1;
      v23 = (37 * *a2) & v22;
      __b = &v13[2 * v23];
      v24 = *__b;
      if (*a2 == *__b)
      {
        goto LABEL_7;
      }

      v18 = 0;
      v25 = 1;
      while (v24 != -1)
      {
        if (v18)
        {
          v26 = 0;
        }

        else
        {
          v26 = v24 == -2;
        }

        if (v26)
        {
          v18 = __b;
        }

        v27 = v23 + v25++;
        v23 = v27 & v22;
        __b = &v13[2 * v23];
        v24 = *__b;
        if (*a2 == *__b)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_39;
    }

LABEL_38:
    v6 = 0;
    __b = 0;
    goto LABEL_7;
  }

  v9 = a1;
  sub_298BBC65C(a1, 2 * v5);
  a1 = v9;
  v10 = v9 + 2;
  v3 = *v9;
  if (*v9)
  {
    v11 = 4;
  }

  else
  {
    v11 = v9[4];
    if (!v11)
    {
      goto LABEL_38;
    }

    v10 = *(v9 + 1);
  }

  v6 = *v9 & 1;
  v15 = v11 - 1;
  v16 = (37 * *a2) & v15;
  __b = &v10[2 * v16];
  v17 = *__b;
  if (*a2 == *__b)
  {
    goto LABEL_7;
  }

  v18 = 0;
  v19 = 1;
  while (v17 != -1)
  {
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17 == -2;
    }

    if (v20)
    {
      v18 = __b;
    }

    v21 = v16 + v19++;
    v16 = v21 & v15;
    __b = &v10[2 * v16];
    v17 = *__b;
    if (*a2 == *__b)
    {
      goto LABEL_41;
    }
  }

LABEL_39:
  if (v18)
  {
    __b = v18;
  }

LABEL_41:
  a1 = v9;
LABEL_7:
  *a1 = (v3 & 0xFFFFFFFE | v6) + 2;
  if (*__b != -1)
  {
    --a1[1];
  }

  return __b;
}

uint64_t sub_298BBC65C(uint64_t __b, unsigned int a2)
{
  v2 = a2;
  v3 = __b;
  v46[3] = *MEMORY[0x29EDCA608];
  if (a2 >= 5)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  if ((*__b & 1) == 0)
  {
    v8 = (__b + 8);
    v7 = *(__b + 8);
    v9 = *(__b + 16);
    if (v2 >= 5)
    {
      v20 = operator new(8 * v2, 8uLL);
      *(v3 + 8) = v20;
      *(v3 + 16) = v2;
      v10 = *v3 & 1;
      if (v10)
      {
        v21 = 4;
      }

      else
      {
        v21 = v2;
      }

      if (*v3)
      {
        v20 = (v3 + 8);
      }

      *v3 = v10;
      *(v3 + 4) = 0;
      memset(v20, 255, 8 * v21);
      if (!v9)
      {
LABEL_43:
        v33 = *MEMORY[0x29EDCA608];

        JUMPOUT(0x29C2945E0);
      }
    }

    else
    {
      LOBYTE(v10) = 1;
      v2 = *(__b + 16);
      *__b = 1;
      memset((__b + 8), 255, 0x20uLL);
      if (!v9)
      {
        goto LABEL_43;
      }
    }

    v22 = v7;
    while (1)
    {
      v28 = *v22;
      if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

LABEL_29:
      if (++v22 == &v7[v9])
      {
        goto LABEL_43;
      }
    }

    if (v10)
    {
      v24 = 3;
      v23 = v3 + 8;
      v25 = (37 * v28) & 3;
      v26 = &v8[v25];
      v27 = *v26;
      if (v28 == *v26)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v23 = *v8;
      v24 = v2 - 1;
      v25 = (v2 - 1) & (37 * v28);
      v26 = (*v8 + 8 * v25);
      v27 = *v26;
      if (v28 == *v26)
      {
LABEL_28:
        *v26 = v28;
        v10 = *v3 + 2;
        *v3 = v10;
        goto LABEL_29;
      }
    }

    v29 = 0;
    v30 = 1;
    while (v27 != -1)
    {
      if (v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v27 == -2;
      }

      if (v31)
      {
        v29 = v26;
      }

      v32 = v25 + v30++;
      v25 = v32 & v24;
      v26 = (v23 + 8 * (v32 & v24));
      v27 = *v26;
      if (v28 == *v26)
      {
        goto LABEL_28;
      }
    }

    if (v29)
    {
      v26 = v29;
    }

    goto LABEL_28;
  }

  v11 = (__b + 8);
  v12 = &v45;
  if (*(__b + 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v45 = *(__b + 8);
    v12 = v46;
    v13 = *(__b + 16);
    if (v13 > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_11:
      v14 = *(__b + 24);
      if (v14 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_12;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v13 = *(__b + 16);
    if (v13 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_11;
    }
  }

  *v12++ = v13;
  v14 = *(__b + 24);
  if (v14 > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_12:
    v15 = *(__b + 32);
    if (v15 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  *v12++ = v14;
  v15 = *(__b + 32);
  if (v15 > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_13:
    v16 = *__b;
    if (v2 >= 5)
    {
      goto LABEL_14;
    }

LABEL_50:
    v2 = v13;
    *__b = v16 & 1;
    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_49:
  *v12++ = v15;
  v16 = *__b;
  if (v2 < 5)
  {
    goto LABEL_50;
  }

LABEL_14:
  *__b = v16 & 0xFFFFFFFE;
  __b = operator new(8 * v2, 8uLL);
  *(v3 + 8) = __b;
  *(v3 + 16) = v2;
  v17 = *v3;
  *v3 = *v3 & 1;
  if (v17)
  {
LABEL_15:
    v18 = 4;
    v19 = (v3 + 8);
    goto LABEL_53;
  }

LABEL_51:
  if (!v2)
  {
    goto LABEL_54;
  }

  v19 = *v11;
  v18 = v2;
LABEL_53:
  __b = memset(v19, 255, 8 * v18);
LABEL_54:
  if (&v45 != v12)
  {
    v34 = &v45;
    while (1)
    {
      v40 = *v34;
      if (*v34 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

LABEL_62:
      if (++v34 == v12)
      {
        goto LABEL_76;
      }
    }

    if (*v3)
    {
      v36 = 3;
      v35 = (v3 + 8);
      v37 = (37 * v40) & 3;
      v38 = &v11[v37];
      v39 = *v38;
      if (v40 == *v38)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v35 = *v11;
      v36 = v2 - 1;
      v37 = (v2 - 1) & (37 * v40);
      v38 = (*v11 + 8 * v37);
      v39 = *v38;
      if (v40 == *v38)
      {
LABEL_61:
        *v38 = v40;
        *v3 += 2;
        goto LABEL_62;
      }
    }

    v41 = 0;
    __b = 1;
    while (v39 != -1)
    {
      if (v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = v39 + 2 == 0;
      }

      if (v42)
      {
        v41 = v38;
      }

      v43 = v37 + __b;
      __b = (__b + 1);
      v37 = v43 & v36;
      v38 = &v35[8 * (v43 & v36)];
      v39 = *v38;
      if (v40 == *v38)
      {
        goto LABEL_61;
      }
    }

    if (v41)
    {
      v38 = v41;
    }

    goto LABEL_61;
  }

LABEL_76:
  v44 = *MEMORY[0x29EDCA608];
  return __b;
}

void *sub_298BBCA50(_DWORD *a1, uint64_t *a2, void *a3)
{
  v3 = a1[2];
  v4 = a1[4];
  if (4 * v3 + 4 >= 3 * v4)
  {
    v7 = a1;
    sub_298BBCBF0(a1, 2 * v4);
    v9 = *a2;
    v10 = v7[4] - 1;
    v11 = ((*a2 >> 4) ^ (*a2 >> 9)) & v10;
    a3 = (*v7 + 16 * v11);
    v12 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_17;
    }

    v13 = 0;
    v14 = 1;
    while (v12 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == -8192;
      }

      if (v15)
      {
        v13 = a3;
      }

      v16 = v11 + v14++;
      v11 = v16 & v10;
      a3 = (*v7 + 16 * v11);
      v12 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v4 + ~v3 - a1[3] > v4 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a1;
    sub_298BBCBF0(a1, a1[4]);
    v9 = *a2;
    v18 = v7[4] - 1;
    v19 = ((*a2 >> 4) ^ (*a2 >> 9)) & v18;
    a3 = (*v7 + 16 * v19);
    v20 = *a3;
    if (*a2 == *a3)
    {
LABEL_17:
      a1 = v7;
      ++v7[2];
      if (v9 == -4096)
      {
        return a3;
      }

      goto LABEL_4;
    }

    v13 = 0;
    v21 = 1;
    while (v20 != -4096)
    {
      if (v13)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20 == -8192;
      }

      if (v22)
      {
        v13 = a3;
      }

      v23 = v19 + v21++;
      v19 = v23 & v18;
      a3 = (*v7 + 16 * v19);
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
  ++a1[2];
  if (v5 != -4096)
  {
LABEL_4:
    --a1[3];
  }

  return a3;
}

void *sub_298BBCBF0(uint64_t a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v25 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = ((v25 >> 4) ^ (v25 >> 9)) & v16;
          v23 = (*a1 + 16 * v26);
          v27 = *v23;
          if (v25 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v16;
              v23 = (*a1 + 16 * (v31 & v16));
              v27 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_23:
          v24 = v17[1];
          *v23 = v25;
          v23[1] = v24;
          *(a1 + 8) = ++v15;
        }

        v17 += 2;
      }

      while (v17 != &v4[2 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void *sub_298BBCDF4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
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

    sub_298ADDDA0();
  }

  v8 = (8 * (v3 >> 3));
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  v10 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v10;
}

__n128 sub_298BBCF5C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1E220;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298BBCF98(os_signpost_id_t a1, os_log_t log)
{
  if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v2;
    v8 = v3;
    if (os_signpost_enabled(log))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, log, OS_SIGNPOST_INTERVAL_END, a1, "formTimeslices", &unk_298EC00B5, v6, 2u);
    }
  }
}

void *sub_298BBD014(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[5] ^ a1[4];
  v4 = v3;
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3;
    if (v3 >= v5)
    {
      v7 = v3 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & v3;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = result[1];
      if (v11 == v4)
      {
        if (result[2] == a2 && result[3] == a3)
        {
          return result;
        }
      }

      else if ((v11 & (v5 - 1)) != v7)
      {
        goto LABEL_28;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v13 = result[1];
    if (v13 == v4)
    {
      break;
    }

    if (v13 >= v5)
    {
      v13 %= v5;
    }

    if (v13 != v7)
    {
      goto LABEL_28;
    }

LABEL_23:
    result = *result;
    if (!result)
    {
      goto LABEL_28;
    }
  }

  if (result[2] != a2 || result[3] != a3)
  {
    goto LABEL_23;
  }

  return result;
}

void *sub_298BBD348(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[5] ^ a1[4];
  v4 = v3;
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3;
    if (v3 >= v5)
    {
      v7 = v3 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & v3;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_28:
    operator new();
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
        goto LABEL_28;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_28;
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
      goto LABEL_28;
    }

LABEL_15:
    result = *result;
    if (!result)
    {
      goto LABEL_28;
    }
  }

  if (result[2] != a2 || result[3] != a3)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_298BBD828(uint64_t *a1, uint64_t *a2, void **a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2;
  v288 = a2 - 5;
  i = a1;
  while (1)
  {
    v10 = i;
    v11 = v8 - i;
    v12 = 0xCCCCCCCCCCCCCCCDLL * (v8 - i);
    v13 = v12 - 2;
    if (v12 > 2)
    {
      v14 = a2 - 5;
      switch(v12)
      {
        case 3:
          sub_298BBF630(v10, v10 + 5, v288, a3);
          return;
        case 4:
          sub_298BBFAB4(v10, v10 + 5, v10 + 10, v288, a3);
          return;
        case 5:
          sub_298BBFDA0(v10, v10 + 5, v10 + 10, v10 + 15, v288, a3);
          return;
      }

      goto LABEL_9;
    }

    v14 = a2 - 5;
    if (v12 < 2)
    {
      return;
    }

    v8 = a2;
    if (v12 == 2)
    {
      break;
    }

LABEL_9:
    v292 = v10;
    if (v11 <= 959)
    {
      if (a5)
      {
        if (v10 == v8)
        {
          return;
        }

        v115 = v10 + 5;
        if (v10 + 5 == a2)
        {
          return;
        }

        v116 = v10 + 4;
        v117 = (v10 + 3);
        v118 = v10;
        while (1)
        {
          v121 = v118;
          v118 = v115;
          v122 = *a3;
          *&v299 = v115;
          v123 = sub_298BBD348(v122, v121[5], v115[1])[4];
          v124 = *a3;
          *&v299 = v121;
          if (v123 == sub_298BBD348(v124, *v121, v121[1])[4])
          {
            v125 = *v118 <= *v121;
            if (*v118 == *v121)
            {
              v125 = v121[6] <= v121[1];
            }

            if (v125)
            {
LABEL_170:
              v129 = *(v121 + 7);
              v299 = *v118;
              v300[0] = v129;
              *&v300[1] = v121[9];
              v121[7] = 0;
              v121[8] = 0;
              v121[9] = 0;
              v130 = v118;
              do
              {
                while (1)
                {
                  v132 = v121;
                  *v130 = *v121;
                  v133 = v130[2];
                  if (v133)
                  {
                    v135 = v130 + 3;
                    v134 = v130[3];
                    v136 = v130[2];
                    if (v134 != v133)
                    {
                      do
                      {
                        v138 = *--v134;
                        v137 = v138;
                        *v134 = 0;
                        if (v138)
                        {
                          (*(*v137 + 8))(v137);
                        }
                      }

                      while (v134 != v133);
                      v136 = v130[2];
                    }

                    *v135 = v133;
                    operator delete(v136);
                    *v135 = 0;
                    v130[4] = 0;
                  }

                  v139 = v132 + 2;
                  *(v130 + 1) = *(v132 + 1);
                  v130[4] = v132[4];
                  v132[2] = 0;
                  v132[3] = 0;
                  v132[4] = 0;
                  if (v132 == v292)
                  {
                    *v292 = v299;
                    v119 = v117;
                    v120 = v116;
                    goto LABEL_162;
                  }

                  v121 = v132 - 5;
                  v140 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
                  if (v140 == sub_298BBD348(*a3, *(v132 - 5), *(v132 - 4))[4])
                  {
                    break;
                  }

                  v131 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
                  v130 = v132;
                  if (v131 <= sub_298BBD348(*a3, *(v132 - 5), *(v132 - 4))[4])
                  {
                    goto LABEL_185;
                  }
                }

                v141 = *(v132 - 5);
                v142 = v299 <= v141;
                if (v299 == v141)
                {
                  v142 = *(&v299 + 1) <= *(v132 - 4);
                }

                v130 = v132;
              }

              while (v142);
LABEL_185:
              v119 = (v132 + 3);
              v120 = v132 + 4;
              v143 = v132[2];
              *v132 = v299;
              if (v143)
              {
                v144 = *v119;
                v145 = v143;
                if (*v119 != v143)
                {
                  do
                  {
                    v147 = *--v144;
                    v146 = v147;
                    *v144 = 0;
                    if (v147)
                    {
                      (*(*v146 + 8))(v146);
                    }
                  }

                  while (v144 != v143);
                  v145 = *v139;
                }

                *v119 = v143;
                operator delete(v145);
                *v139 = 0;
                v139[1] = 0;
                v139[2] = 0;
              }

LABEL_162:
              *v139 = *&v300[0];
              *v119 = *(&v300[0] + 1);
              *v120 = *&v300[1];
              memset(v300, 0, 24);
              sub_298AF0458(v300);
            }
          }

          else
          {
            v126 = *a3;
            *&v299 = v118;
            v127 = sub_298BBD348(v126, *v118, v118[1])[4];
            v128 = *a3;
            *&v299 = v121;
            if (v127 > sub_298BBD348(v128, *v121, v121[1])[4])
            {
              goto LABEL_170;
            }
          }

          v115 = v118 + 5;
          if (v118 + 5 == a2)
          {
            return;
          }
        }
      }

      if (v10 == v8)
      {
        return;
      }

      v257 = v10 + 5;
      if (v10 + 5 == a2)
      {
        return;
      }

      while (1)
      {
        v259 = v10;
        v10 = v257;
        v260 = *a3;
        *&v299 = v257;
        v261 = sub_298BBD348(v260, v259[5], v257[1])[4];
        v262 = *a3;
        *&v299 = v259;
        if (v261 == sub_298BBD348(v262, *v259, v259[1])[4])
        {
          v263 = *v10 <= *v259;
          if (*v10 == *v259)
          {
            v263 = v259[6] <= v259[1];
          }

          if (v263)
          {
LABEL_317:
            v267 = *(v259 + 7);
            v299 = *v10;
            v300[0] = v267;
            *&v300[1] = v259[9];
            v259[7] = 0;
            v259[8] = 0;
            v259[9] = 0;
            v268 = v10;
            do
            {
              while (1)
              {
                v270 = v259;
                *v268 = *v259;
                v271 = v268[2];
                if (v271)
                {
                  v272 = v268 + 3;
                  v273 = v268[3];
                  v274 = v268[2];
                  if (v273 != v271)
                  {
                    do
                    {
                      v276 = *--v273;
                      v275 = v276;
                      *v273 = 0;
                      if (v276)
                      {
                        (*(*v275 + 8))(v275);
                      }
                    }

                    while (v273 != v271);
                    v274 = v268[2];
                  }

                  *v272 = v271;
                  operator delete(v274);
                  *v272 = 0;
                  v268[4] = 0;
                }

                v277 = (v270 + 2);
                *(v268 + 1) = *(v270 + 1);
                v268[4] = v270[4];
                v270[2] = 0;
                v270[3] = 0;
                v270[4] = 0;
                v259 = v270 - 5;
                v278 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
                if (v278 == sub_298BBD348(*a3, *(v270 - 5), *(v270 - 4))[4])
                {
                  break;
                }

                v269 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
                v268 = v270;
                if (v269 <= sub_298BBD348(*a3, *(v270 - 5), *(v270 - 4))[4])
                {
                  goto LABEL_331;
                }
              }

              v279 = *(v270 - 5);
              v280 = v299 <= v279;
              if (v299 == v279)
              {
                v280 = *(&v299 + 1) <= *(v270 - 4);
              }

              v268 = v270;
            }

            while (v280);
LABEL_331:
            *v270 = v299;
            v281 = v270[2];
            if (v281)
            {
              v282 = v270[3];
              v258 = v270[2];
              if (v282 != v281)
              {
                do
                {
                  v284 = *--v282;
                  v283 = v284;
                  *v282 = 0;
                  if (v284)
                  {
                    (*(*v283 + 8))(v283);
                  }
                }

                while (v282 != v281);
                v258 = *v277;
              }

              v270[3] = v281;
              operator delete(v258);
              *v277 = 0;
              v270[3] = 0;
              v270[4] = 0;
            }

            *(v270 + 1) = v300[0];
            v270[4] = *&v300[1];
            memset(v300, 0, 24);
            sub_298AF0458(v300);
          }
        }

        else
        {
          v264 = *a3;
          *&v299 = v10;
          v265 = sub_298BBD348(v264, *v10, v10[1])[4];
          v266 = *a3;
          *&v299 = v259;
          if (v265 > sub_298BBD348(v266, *v259, v259[1])[4])
          {
            goto LABEL_317;
          }
        }

        v257 = v10 + 5;
        if (v10 + 5 == a2)
        {
          return;
        }
      }
    }

    if (!a4)
    {
      if (v10 == v8)
      {
        return;
      }

      v287 = v11;
      v148 = v13 >> 1;
      v149 = v13 >> 1;
LABEL_198:
      v151 = v149;
      if (v148 < v149)
      {
        goto LABEL_197;
      }

      v289 = v149;
      v152 = (2 * v149) | 1;
      v153 = &v10[5 * v152];
      v154 = 2 * v149 + 2;
      if (v154 >= v12)
      {
        goto LABEL_207;
      }

      v155 = *a3;
      *&v299 = &v10[5 * v152];
      v156 = sub_298BBD348(v155, *v153, v153[1])[4];
      v157 = *a3;
      *&v299 = v153 + 5;
      if (v156 == sub_298BBD348(v157, v153[5], v153[6])[4])
      {
        v158 = v153[5];
        v159 = *v153 <= v158;
        if (*v153 == v158)
        {
          v159 = v153[1] <= v153[6];
        }

        if (!v159)
        {
          goto LABEL_207;
        }
      }

      else
      {
        v160 = *a3;
        *&v299 = &v10[5 * v152];
        v161 = sub_298BBD348(v160, *v153, v153[1])[4];
        v162 = *a3;
        *&v299 = v153 + 5;
        if (v161 <= sub_298BBD348(v162, v153[5], v153[6])[4])
        {
LABEL_207:
          v163 = &v10[5 * v289];
          v164 = *a3;
          *&v299 = v153;
          v165 = sub_298BBD348(v164, *v153, v153[1])[4];
          v166 = *a3;
          *&v299 = v163;
          if (v165 == sub_298BBD348(v166, *v163, v163[1])[4])
          {
            v167 = *v153 <= *v163;
            if (*v153 == *v163)
            {
              v167 = v153[1] <= v163[1];
            }

            v151 = v289;
            if (v167)
            {
              goto LABEL_197;
            }
          }

          else
          {
            v168 = *a3;
            *&v299 = v153;
            v169 = sub_298BBD348(v168, *v153, v153[1])[4];
            v170 = *a3;
            *&v299 = &v10[5 * v289];
            v171 = sub_298BBD348(v170, *v163, v163[1]);
            v151 = v289;
            if (v169 > v171[4])
            {
              goto LABEL_197;
            }
          }

          v172 = 0;
          v299 = *v163;
          v300[0] = *(v163 + 1);
          *&v300[1] = v163[4];
          v163[2] = 0;
          v163[3] = 0;
          v163[4] = 0;
          while (1)
          {
            *v163 = *v153;
            if (v172)
            {
              v174 = v163[3];
              v175 = v172;
              if (v174 != v172)
              {
                do
                {
                  v177 = *--v174;
                  v176 = v177;
                  *v174 = 0;
                  if (v177)
                  {
                    (*(*v176 + 8))(v176);
                  }
                }

                while (v174 != v172);
                v175 = v163[2];
              }

              v163[3] = v172;
              operator delete(v175);
              v163[2] = 0;
              v163[3] = 0;
              v163[4] = 0;
            }

            v178 = (v153 + 2);
            *(v163 + 1) = *(v153 + 1);
            v163[4] = v153[4];
            v153[2] = 0;
            v153[3] = 0;
            v153[4] = 0;
            if (v148 < v152)
            {
              v150 = v153 + 4;
              *v153 = v299;
              goto LABEL_196;
            }

            v179 = 2 * v152;
            v152 = (2 * v152) | 1;
            v180 = &v10[5 * v152];
            v181 = v179 + 2;
            if (v179 + 2 < v12)
            {
              v182 = v148;
              v183 = sub_298BBD348(*a3, *v180, v180[1])[4];
              if (v183 == sub_298BBD348(*a3, v180[5], v180[6])[4])
              {
                v184 = v180[5];
                v185 = *v180 <= v184;
                if (*v180 == v184)
                {
                  v185 = v180[1] <= v180[6];
                }

                v148 = v182;
                if (v185)
                {
LABEL_235:
                  v180 += 5;
                  v152 = v181;
                }
              }

              else
              {
                v186 = sub_298BBD348(*a3, *v180, v180[1])[4];
                v187 = v186 > sub_298BBD348(*a3, v180[5], v180[6])[4];
                v148 = v182;
                if (v187)
                {
                  goto LABEL_235;
                }
              }
            }

            v188 = sub_298BBD348(*a3, *v180, v180[1])[4];
            if (v188 == sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
            {
              v173 = *v180 <= v299;
              if (*v180 == v299)
              {
                v173 = v180[1] <= *(&v299 + 1);
              }

              if (v173)
              {
LABEL_238:
                v150 = v153 + 4;
                v190 = v153[2];
                *v153 = v299;
                if (v190)
                {
                  v191 = v153[3];
                  v192 = v190;
                  if (v191 != v190)
                  {
                    do
                    {
                      v194 = *--v191;
                      v193 = v194;
                      *v191 = 0;
                      if (v194)
                      {
                        (*(*v193 + 8))(v193);
                      }
                    }

                    while (v191 != v190);
                    v192 = *v178;
                  }

                  v153[3] = v190;
                  operator delete(v192);
                  *v178 = 0;
                  v153[3] = 0;
                  v153[4] = 0;
                }

                v10 = v292;
LABEL_196:
                *v178 = v300[0];
                *v150 = *&v300[1];
                memset(v300, 0, 24);
                sub_298AF0458(v300);
                v151 = v289;
LABEL_197:
                v149 = v151 - 1;
                if (v151)
                {
                  goto LABEL_198;
                }

                v195 = 0xCCCCCCCCCCCCCCCDLL * (v287 >> 3);
                while (2)
                {
                  v197 = 0;
                  v290 = a2;
                  v295 = *v10;
                  v296 = *(v10 + 1);
                  v297 = v10[4];
                  v10[3] = 0;
                  v10[4] = 0;
                  v10[2] = 0;
                  v198 = v10;
LABEL_254:
                  v200 = &v198[5 * v197];
                  v201 = v200 + 5;
                  v202 = 2 * v197;
                  v197 = (2 * v197) | 1;
                  v203 = v202 + 2;
                  if (v202 + 2 < v195)
                  {
                    v204 = *a3;
                    *&v299 = v200 + 5;
                    v205 = sub_298BBD348(v204, v200[5], v200[6])[4];
                    v206 = *a3;
                    *&v299 = v200 + 10;
                    if (v205 == sub_298BBD348(v206, v200[10], v200[11])[4])
                    {
                      v207 = v200[5];
                      v208 = v200[10];
                      v25 = v207 == v208;
                      v209 = v207 <= v208;
                      if (v25)
                      {
                        v209 = v200[6] <= v200[11];
                      }

                      if (!v209)
                      {
                        goto LABEL_262;
                      }
                    }

                    else
                    {
                      v210 = *a3;
                      *&v299 = v200 + 5;
                      v211 = sub_298BBD348(v210, v200[5], v200[6])[4];
                      v212 = *a3;
                      *&v299 = v200 + 10;
                      if (v211 <= sub_298BBD348(v212, v200[10], v200[11])[4])
                      {
                        goto LABEL_262;
                      }
                    }

                    v201 = v200 + 10;
                    v197 = v203;
                  }

LABEL_262:
                  *v198 = *v201;
                  v213 = (v198 + 2);
                  v214 = v198[2];
                  if (v214)
                  {
                    v215 = v198[3];
                    v199 = v198[2];
                    if (v215 != v214)
                    {
                      do
                      {
                        v217 = *--v215;
                        v216 = v217;
                        *v215 = 0;
                        if (v217)
                        {
                          (*(*v216 + 8))(v216);
                        }
                      }

                      while (v215 != v214);
                      v199 = *v213;
                    }

                    v198[3] = v214;
                    operator delete(v199);
                    *v213 = 0;
                    v198[3] = 0;
                    v198[4] = 0;
                  }

                  *(v198 + 1) = *(v201 + 1);
                  v198[4] = v201[4];
                  v201[2] = 0;
                  v201[3] = 0;
                  v201[4] = 0;
                  v198 = v201;
                  if (v197 > ((v195 - 2) >> 1))
                  {
                    v218 = a2 - 5;
                    a2 -= 5;
                    if (v201 == v290 - 5)
                    {
                      *v201 = v295;
                      v196 = v297;
                      *(v201 + 1) = v296;
                      v201[4] = v196;
                      v296 = 0uLL;
                      v297 = 0;
                      goto LABEL_249;
                    }

                    *v201 = *v218;
                    v219 = *(v290 - 1);
                    *(v201 + 1) = *(v290 - 3);
                    v201[4] = v219;
                    *v218 = v295;
                    *(v290 - 3) = v296;
                    *(v290 - 1) = v297;
                    v296 = 0uLL;
                    v297 = 0;
                    v220 = v201 - v292 + 40;
                    if (v220 >= 41)
                    {
                      v221 = (-2 - 0x3333333333333333 * (v220 >> 3)) >> 1;
                      v222 = &v292[5 * v221];
                      v223 = *a3;
                      *&v299 = v222;
                      v224 = sub_298BBD348(v223, *v222, v222[1])[4];
                      v225 = *a3;
                      *&v299 = v201;
                      if (v224 == sub_298BBD348(v225, *v201, v201[1])[4])
                      {
                        v226 = *v222 <= *v201;
                        if (*v222 == *v201)
                        {
                          v226 = v222[1] <= v201[1];
                        }

                        if (!v226)
                        {
                          goto LABEL_249;
                        }
                      }

                      else
                      {
                        v227 = *a3;
                        *&v299 = &v292[5 * v221];
                        v228 = sub_298BBD348(v227, *v222, v222[1])[4];
                        v229 = *a3;
                        *&v299 = v201;
                        if (v228 <= sub_298BBD348(v229, *v201, v201[1])[4])
                        {
                          goto LABEL_249;
                        }
                      }

                      v230 = 0;
                      v231 = *(v201 + 1);
                      v299 = *v201;
                      v300[0] = v231;
                      *&v300[1] = v201[4];
                      v201[3] = 0;
                      v201[4] = 0;
                      v201[2] = 0;
                      while (1)
                      {
                        *v201 = *v222;
                        if (v230)
                        {
                          v233 = v201[3];
                          v234 = v230;
                          if (v233 != v230)
                          {
                            do
                            {
                              v236 = *--v233;
                              v235 = v236;
                              *v233 = 0;
                              if (v236)
                              {
                                (*(*v235 + 8))(v235);
                              }
                            }

                            while (v233 != v230);
                            v234 = v201[2];
                          }

                          v201[3] = v230;
                          operator delete(v234);
                          v201[2] = 0;
                          v201[3] = 0;
                          v201[4] = 0;
                        }

                        v237 = (v222 + 2);
                        *(v201 + 1) = *(v222 + 1);
                        v201[4] = v222[4];
                        v222[2] = 0;
                        v222[3] = 0;
                        v222[4] = 0;
                        if (!v221)
                        {
                          v245 = v222 + 4;
                          *v222 = v299;
                          goto LABEL_301;
                        }

                        v221 = (v221 - 1) >> 1;
                        v238 = &v292[5 * v221];
                        v239 = *a3;
                        v298 = v238;
                        v240 = sub_298BBD348(v239, *v238, v238[1])[4];
                        v241 = *a3;
                        v298 = &v299;
                        if (v240 == sub_298BBD348(v241, v299, *(&v299 + 1))[4])
                        {
                          v232 = *v238 <= v299;
                          if (*v238 == v299)
                          {
                            v232 = v238[1] <= *(&v299 + 1);
                          }

                          if (!v232)
                          {
LABEL_292:
                            v245 = v222 + 4;
                            v246 = v222[2];
                            *v222 = v299;
                            if (v246)
                            {
                              v247 = v222[3];
                              v248 = v246;
                              if (v247 != v246)
                              {
                                do
                                {
                                  v250 = *--v247;
                                  v249 = v250;
                                  *v247 = 0;
                                  if (v250)
                                  {
                                    (*(*v249 + 8))(v249);
                                  }
                                }

                                while (v247 != v246);
                                v248 = *v237;
                              }

                              v222[3] = v246;
                              operator delete(v248);
                            }

LABEL_301:
                            *v237 = v300[0];
                            *v245 = *&v300[1];
                            memset(v300, 0, 24);
                            sub_298AF0458(v300);
                            break;
                          }
                        }

                        else
                        {
                          v242 = *a3;
                          v298 = &v292[5 * v221];
                          v243 = sub_298BBD348(v242, *v238, v238[1])[4];
                          v244 = *a3;
                          v298 = &v299;
                          if (v243 <= sub_298BBD348(v244, v299, *(&v299 + 1))[4])
                          {
                            goto LABEL_292;
                          }
                        }

                        v230 = *v237;
                        v201 = v222;
                        v222 = &v292[5 * v221];
                      }
                    }

LABEL_249:
                    sub_298AF0458(&v296);
                    v187 = v195-- <= 2;
                    v10 = v292;
                    if (v187)
                    {
                      return;
                    }

                    continue;
                  }

                  goto LABEL_254;
                }
              }
            }

            else
            {
              v189 = sub_298BBD348(*a3, *v180, v180[1])[4];
              if (v189 > sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
              {
                goto LABEL_238;
              }
            }

            v172 = *v178;
            v163 = v153;
            v153 = v180;
            v10 = v292;
          }
        }
      }

      v153 += 5;
      v152 = v154;
      goto LABEL_207;
    }

    v15 = v12 >> 1;
    v16 = &v10[5 * (v12 >> 1)];
    if (v11 < 0x1401)
    {
      sub_298BBF630(v16, v10, v14, a3);
      v20 = a4 - 1;
      if (a5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_298BBF630(v10, v16, v14, a3);
      sub_298BBF630(v10 + 5, &v10[5 * v15 - 5], a2 - 10, a3);
      sub_298BBF630(v10 + 10, &v10[5 * v15 + 5], a2 - 15, a3);
      v14 = a2 - 5;
      sub_298BBF630(&v10[5 * v15 - 5], v16, &v10[5 * v15 + 5], a3);
      v17 = *(v10 + 1);
      v299 = *v10;
      v18 = *(v16 + 1);
      *v10 = *v16;
      *(v10 + 1) = v18;
      *v16 = v299;
      *(v16 + 1) = v17;
      v19 = v10[4];
      v10[4] = v16[4];
      v16[4] = v19;
      v20 = a4 - 1;
      if (a5)
      {
        goto LABEL_25;
      }
    }

    v21 = *a3;
    *&v299 = v10 - 5;
    v22 = sub_298BBD348(v21, *(v10 - 5), *(v10 - 4))[4];
    v23 = *a3;
    *&v299 = v10;
    if (v22 == sub_298BBD348(v23, *v10, v10[1])[4])
    {
      v24 = *(v10 - 5);
      v25 = v24 == *v10;
      v26 = v24 <= *v10;
      if (v25)
      {
        v26 = *(v10 - 4) <= v10[1];
      }

      if (v26)
      {
        goto LABEL_25;
      }

LABEL_19:
      v27 = v10 + 2;
      v28 = *(v10 + 1);
      v299 = *v10;
      v300[0] = v28;
      *&v300[1] = v10[4];
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = 0;
      v29 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
      j = a2;
      if (v29 == sub_298BBD348(*a3, *(a2 - 5), *(a2 - 4))[4])
      {
        v31 = *(a2 - 5);
        v32 = v299 <= v31;
        if (v299 == v31)
        {
          v32 = *(&v299 + 1) <= *(a2 - 4);
        }

        if (v32)
        {
LABEL_99:
          for (i = v10 + 5; ; i += 5)
          {
            v83 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
            if (v83 == sub_298BBD348(*a3, *i, i[1])[4])
            {
              v82 = v299 <= *i;
              if (v299 == *i)
              {
                v82 = *(&v299 + 1) <= i[1];
              }

              if (v82)
              {
                goto LABEL_106;
              }
            }

            else
            {
              v84 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
              if (v84 > sub_298BBD348(*a3, *i, i[1])[4])
              {
                goto LABEL_106;
              }
            }
          }
        }
      }

      else
      {
        v81 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
        if (v81 > sub_298BBD348(*a3, *(a2 - 5), *(a2 - 4))[4])
        {
          goto LABEL_99;
        }
      }

      for (i = v10 + 5; i < a2; i += 5)
      {
        v79 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
        if (v79 == sub_298BBD348(*a3, *i, i[1])[4])
        {
          v78 = v299 <= *i;
          if (v299 == *i)
          {
            v78 = *(&v299 + 1) <= i[1];
          }

          if (v78)
          {
            break;
          }
        }

        else
        {
          v80 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
          if (v80 > sub_298BBD348(*a3, *i, i[1])[4])
          {
            break;
          }
        }
      }

LABEL_106:
      if (i < a2)
      {
        for (j = v14; ; j -= 5)
        {
          v86 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
          if (v86 == sub_298BBD348(*a3, *j, j[1])[4])
          {
            v85 = v299 <= *j;
            if (v299 == *j)
            {
              v85 = *(&v299 + 1) <= j[1];
            }

            if (!v85)
            {
              break;
            }
          }

          else
          {
            v87 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
            if (v87 <= sub_298BBD348(*a3, *j, j[1])[4])
            {
              break;
            }
          }
        }
      }

LABEL_127:
      while (i < j)
      {
        v294 = *i;
        *i = *j;
        *j = v294;
        v88 = i[2];
        i[2] = j[2];
        j[2] = v88;
        v89 = i[3];
        i[3] = j[3];
        j[3] = v89;
        v90 = i[4];
        i[4] = j[4];
        j[4] = v90;
        do
        {
          while (1)
          {
            i += 5;
            v92 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
            if (v92 == sub_298BBD348(*a3, *i, i[1])[4])
            {
              break;
            }

            v91 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
            if (v91 > sub_298BBD348(*a3, *i, i[1])[4])
            {
              goto LABEL_123;
            }
          }

          v93 = v299 <= *i;
          if (v299 == *i)
          {
            v93 = *(&v299 + 1) <= i[1];
          }
        }

        while (!v93);
        do
        {
LABEL_123:
          while (1)
          {
            j -= 5;
            v95 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
            if (v95 == sub_298BBD348(*a3, *j, j[1])[4])
            {
              break;
            }

            v94 = sub_298BBD348(*a3, v299, *(&v299 + 1))[4];
            if (v94 <= sub_298BBD348(*a3, *j, j[1])[4])
            {
              goto LABEL_127;
            }
          }

          v96 = v299 <= *j;
          if (v299 == *j)
          {
            v96 = *(&v299 + 1) <= j[1];
          }
        }

        while (v96);
      }

      v97 = v20;
      v98 = i - 5;
      if (i - 5 == v10)
      {
        v104 = (i - 3);
        v105 = *(i - 3);
        *v98 = v299;
        if (v105)
        {
          v106 = *(i - 2);
          v107 = v105;
          if (v106 != v105)
          {
            do
            {
              v109 = *--v106;
              v108 = v109;
              *v106 = 0;
              if (v109)
              {
                (*(*v108 + 8))(v108);
              }
            }

            while (v106 != v105);
            v107 = *v104;
          }

          *(i - 2) = v105;
          operator delete(v107);
          *v104 = 0;
          *(i - 2) = 0;
          *(i - 1) = 0;
        }
      }

      else
      {
        *v10 = *v98;
        v99 = v10[2];
        if (v99)
        {
          v100 = v10[3];
          v101 = v99;
          if (v100 != v99)
          {
            do
            {
              v103 = *--v100;
              v102 = v103;
              *v100 = 0;
              if (v103)
              {
                (*(*v102 + 8))(v102);
              }
            }

            while (v100 != v99);
            v101 = *v27;
          }

          v10 = v292;
          v292[3] = v99;
          operator delete(v101);
          *v27 = 0;
          v27[1] = 0;
          v27[2] = 0;
        }

        *(v10 + 1) = *(i - 3);
        v10[4] = *(i - 1);
        *(i - 3) = 0;
        *(i - 2) = 0;
        *(i - 1) = 0;
        *v98 = v299;
      }

      *(i - 3) = *&v300[0];
      *(i - 1) = *(v300 + 8);
      memset(v300, 0, 24);
      sub_298AF0458(v300);
      a5 = 0;
      v8 = a2;
      a4 = v97;
    }

    else
    {
      v33 = *a3;
      *&v299 = v10 - 5;
      v34 = sub_298BBD348(v33, *(v10 - 5), *(v10 - 4))[4];
      v35 = *a3;
      *&v299 = v10;
      if (v34 <= sub_298BBD348(v35, *v10, v10[1])[4])
      {
        goto LABEL_19;
      }

LABEL_25:
      v286 = v20;
      v36 = 0;
      v37 = v10 + 2;
      v38 = *(v10 + 1);
      v299 = *v10;
      v300[0] = v38;
      *&v300[1] = v10[4];
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = 0;
      while (1)
      {
        v40 = &v10[v36];
        v41 = &v10[v36 + 5];
        v42 = sub_298BBD348(*a3, *v41, v10[v36 + 6])[4];
        if (v42 == sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
        {
          break;
        }

        v43 = sub_298BBD348(*a3, *v41, v40[6])[4];
        if (v43 <= sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
        {
          goto LABEL_32;
        }

LABEL_29:
        v36 += 5;
      }

      v39 = *v41 <= v299;
      if (*v41 == v299)
      {
        v39 = v40[6] <= *(&v299 + 1);
      }

      if (v39)
      {
        goto LABEL_29;
      }

LABEL_32:
      v44 = &v10[v36 + 5];
      k = v14;
      if (v36 * 8)
      {
        while (1)
        {
          v47 = sub_298BBD348(*a3, *k, k[1])[4];
          if (v47 == sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
          {
            v46 = *k <= v299;
            if (*k == v299)
            {
              v46 = k[1] <= *(&v299 + 1);
            }

            if (v46)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v48 = sub_298BBD348(*a3, *k, k[1])[4];
            if (v48 > sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
            {
              goto LABEL_41;
            }
          }

          k -= 5;
        }
      }

      k = a2;
      if (v44 < a2)
      {
        for (k = v14; ; k -= 5)
        {
          v59 = sub_298BBD348(*a3, *k, k[1])[4];
          if (v59 == sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
          {
            v60 = *k > v299;
            if (*k == v299)
            {
              v60 = k[1] > *(&v299 + 1);
            }

            if (v44 >= k || !v60)
            {
              break;
            }
          }

          else
          {
            v61 = sub_298BBD348(*a3, *k, k[1])[4];
            v62 = sub_298BBD348(*a3, v299, *(&v299 + 1));
            if (v44 >= k || v61 > v62[4])
            {
              break;
            }
          }
        }
      }

LABEL_41:
      i = &v10[v36 + 5];
      if (v44 < k)
      {
        v49 = k;
        do
        {
          v293 = *i;
          *i = *v49;
          *v49 = v293;
          v50 = i[2];
          i[2] = v49[2];
          v49[2] = v50;
          v51 = i[3];
          i[3] = v49[3];
          v49[3] = v51;
          v52 = i[4];
          i[4] = v49[4];
          v49[4] = v52;
          do
          {
            while (1)
            {
              i += 5;
              v54 = sub_298BBD348(*a3, *i, i[1])[4];
              if (v54 == sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
              {
                break;
              }

              v53 = sub_298BBD348(*a3, *i, i[1])[4];
              if (v53 <= sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
              {
                goto LABEL_52;
              }
            }

            v55 = *i <= v299;
            if (*i == v299)
            {
              v55 = i[1] <= *(&v299 + 1);
            }
          }

          while (v55);
          do
          {
LABEL_52:
            while (1)
            {
              v49 -= 5;
              v57 = sub_298BBD348(*a3, *v49, v49[1])[4];
              if (v57 == sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
              {
                break;
              }

              v56 = sub_298BBD348(*a3, *v49, v49[1])[4];
              if (v56 > sub_298BBD348(*a3, v299, *(&v299 + 1))[4])
              {
                goto LABEL_43;
              }
            }

            v58 = *v49 <= v299;
            if (*v49 == v299)
            {
              v58 = v49[1] <= *(&v299 + 1);
            }
          }

          while (!v58);
LABEL_43:
          ;
        }

        while (i < v49);
      }

      v63 = i - 5;
      if (i - 5 == v10)
      {
        v70 = (i - 3);
        v71 = *(i - 3);
        *v63 = v299;
        if (v71)
        {
          v72 = *(i - 2);
          v73 = v71;
          if (v72 != v71)
          {
            do
            {
              v75 = *--v72;
              v74 = v75;
              *v72 = 0;
              if (v75)
              {
                (*(*v74 + 8))(v74);
              }
            }

            while (v72 != v71);
            v73 = *v70;
          }

          *(i - 2) = v71;
          operator delete(v73);
          *v70 = 0;
          *(i - 2) = 0;
          *(i - 1) = 0;
        }
      }

      else
      {
        *v10 = *v63;
        v64 = v10;
        v65 = v10[2];
        if (v65)
        {
          v66 = v64[3];
          v67 = v65;
          if (v66 != v65)
          {
            do
            {
              v69 = *--v66;
              v68 = v69;
              *v66 = 0;
              if (v69)
              {
                (*(*v68 + 8))(v68);
              }
            }

            while (v66 != v65);
            v67 = *v37;
          }

          v64 = v292;
          v292[3] = v65;
          operator delete(v67);
          *v37 = 0;
          v37[1] = 0;
          v37[2] = 0;
        }

        *(v64 + 1) = *(i - 3);
        v64[4] = *(i - 1);
        *(i - 3) = 0;
        *(i - 2) = 0;
        *(i - 1) = 0;
        *v63 = v299;
      }

      *(i - 3) = *&v300[0];
      *(i - 1) = *(v300 + 8);
      memset(v300, 0, 24);
      sub_298AF0458(v300);
      v76 = v44 >= k;
      v8 = a2;
      a1 = v292;
      a4 = v286;
      if (v76)
      {
        v77 = sub_298BC015C(v292, i - 5, a3);
        if (sub_298BC015C(i, a2, a3))
        {
          a2 = i - 5;
          if (v77)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v77)
        {
          goto LABEL_89;
        }
      }

      else
      {
LABEL_89:
        sub_298BBD828(v292, i - 5, a3, v286, a5 & 1);
        a5 = 0;
      }
    }
  }

  v110 = *a3;
  *&v299 = a2 - 5;
  v111 = sub_298BBD348(v110, *(a2 - 5), *(a2 - 4))[4];
  v112 = *a3;
  *&v299 = v10;
  if (v111 != sub_298BBD348(v112, *v10, v10[1])[4])
  {
    v251 = *a3;
    *&v299 = a2 - 5;
    v252 = sub_298BBD348(v251, *(a2 - 5), *(a2 - 4))[4];
    v253 = *a3;
    *&v299 = v10;
    if (v252 <= sub_298BBD348(v253, *v10, v10[1])[4])
    {
      return;
    }

    goto LABEL_303;
  }

  v113 = *(a2 - 5);
  v25 = v113 == *v10;
  v114 = v113 <= *v10;
  if (v25)
  {
    v114 = *(a2 - 4) <= v10[1];
  }

  if (v114)
  {
LABEL_303:
    v299 = *v10;
    *v10 = *v288;
    *v288 = v299;
    v254 = v10[2];
    v10[2] = *(a2 - 3);
    *(a2 - 3) = v254;
    v255 = v10[3];
    v10[3] = *(a2 - 2);
    *(a2 - 2) = v255;
    v256 = v10[4];
    v10[4] = *(a2 - 1);
    *(a2 - 1) = v256;
  }
}

void *sub_298BBF630(uint64_t *a1, uint64_t *a2, uint64_t *a3, void **a4)
{
  v8 = sub_298BBD348(*a4, *a2, a2[1])[4];
  if (v8 == sub_298BBD348(*a4, *a1, a1[1])[4])
  {
    v9 = *a2 <= *a1;
    if (*a2 == *a1)
    {
      v9 = a2[1] <= a1[1];
    }

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = sub_298BBD348(*a4, *a2, a2[1])[4];
    if (v13 <= sub_298BBD348(*a4, *a1, a1[1])[4])
    {
LABEL_5:
      v10 = sub_298BBD348(*a4, *a3, a3[1])[4];
      result = sub_298BBD348(*a4, *a2, a2[1]);
      if (v10 == result[4])
      {
        v12 = *a3 <= *a2;
        if (*a3 == *a2)
        {
          v12 = a3[1] <= a2[1];
        }

        if (!v12)
        {
          return result;
        }
      }

      else
      {
        v23 = sub_298BBD348(*a4, *a3, a3[1])[4];
        result = sub_298BBD348(*a4, *a2, a2[1]);
        if (v23 <= result[4])
        {
          return result;
        }
      }

      v24 = *a2;
      *a2 = *a3;
      *a3 = v24;
      v25 = a2[2];
      a2[2] = a3[2];
      a3[2] = v25;
      v26 = a2[3];
      a2[3] = a3[3];
      a3[3] = v26;
      v28 = a2 + 4;
      v27 = a2[4];
      a2[4] = a3[4];
      a3[4] = v27;
      v29 = sub_298BBD348(*a4, *a2, a2[1])[4];
      result = sub_298BBD348(*a4, *a1, a1[1]);
      if (v29 == result[4])
      {
        v30 = *a2 <= *a1;
        if (*a2 == *a1)
        {
          v30 = a2[1] <= a1[1];
        }

        if (!v30)
        {
          return result;
        }
      }

      else
      {
        v39 = sub_298BBD348(*a4, *a2, a2[1])[4];
        result = sub_298BBD348(*a4, *a1, a1[1]);
        if (v39 <= result[4])
        {
          return result;
        }
      }

      v40 = *a1;
      *a1 = *a2;
      *a2 = v40;
      v41 = a1[2];
      a1[2] = a2[2];
      a2[2] = v41;
      v42 = a1[3];
      a1[3] = a2[3];
      a2[3] = v42;
      v19 = a1 + 4;
LABEL_33:
      v43 = *v19;
      *v19 = *v28;
      *v28 = v43;
      return result;
    }
  }

  v14 = sub_298BBD348(*a4, *a3, a3[1])[4];
  result = sub_298BBD348(*a4, *a2, a2[1]);
  if (v14 != result[4])
  {
    v31 = sub_298BBD348(*a4, *a3, a3[1])[4];
    result = sub_298BBD348(*a4, *a2, a2[1]);
    if (v31 <= result[4])
    {
      goto LABEL_15;
    }

LABEL_27:
    v32 = *a1;
    *a1 = *a3;
    *a3 = v32;
    v33 = a1[2];
    a1[2] = a3[2];
    a3[2] = v33;
    v34 = a1[3];
    a1[3] = a3[3];
    a3[3] = v34;
    v19 = a1 + 4;
LABEL_30:
    v28 = a3 + 4;
    goto LABEL_33;
  }

  v15 = *a3 <= *a2;
  if (*a3 == *a2)
  {
    v15 = a3[1] <= a2[1];
  }

  if (v15)
  {
    goto LABEL_27;
  }

LABEL_15:
  v16 = *a1;
  *a1 = *a2;
  *a2 = v16;
  v17 = a1[2];
  a1[2] = a2[2];
  a2[2] = v17;
  v18 = a1[3];
  a1[3] = a2[3];
  a2[3] = v18;
  v19 = a2 + 4;
  v20 = a1[4];
  a1[4] = a2[4];
  a2[4] = v20;
  v21 = sub_298BBD348(*a4, *a3, a3[1])[4];
  result = sub_298BBD348(*a4, *a2, a2[1]);
  if (v21 != result[4])
  {
    v35 = sub_298BBD348(*a4, *a3, a3[1])[4];
    result = sub_298BBD348(*a4, *a2, a2[1]);
    if (v35 <= result[4])
    {
      return result;
    }

    goto LABEL_29;
  }

  v22 = *a3 <= *a2;
  if (*a3 == *a2)
  {
    v22 = a3[1] <= a2[1];
  }

  if (v22)
  {
LABEL_29:
    v36 = *a2;
    *a2 = *a3;
    *a3 = v36;
    v37 = a2[2];
    a2[2] = a3[2];
    a3[2] = v37;
    v38 = a2[3];
    a2[3] = a3[3];
    a3[3] = v38;
    goto LABEL_30;
  }

  return result;
}

__n128 sub_298BBFAB4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void **a5)
{
  sub_298BBF630(a1, a2, a3, a5);
  v10 = sub_298BBD348(*a5, *a4, a4[1])[4];
  if (v10 != sub_298BBD348(*a5, *a3, a3[1])[4])
  {
    v13 = sub_298BBD348(*a5, *a4, a4[1])[4];
    if (v13 <= sub_298BBD348(*a5, *a3, a3[1])[4])
    {
      return result;
    }

LABEL_7:
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[2];
    a3[2] = a4[2];
    a4[2] = v15;
    v16 = a3[3];
    a3[3] = a4[3];
    a4[3] = v16;
    v17 = a3[4];
    a3[4] = a4[4];
    a4[4] = v17;
    v18 = sub_298BBD348(*a5, *a3, a3[1])[4];
    if (v18 == sub_298BBD348(*a5, *a2, a2[1])[4])
    {
      v19 = *a3 <= *a2;
      if (*a3 == *a2)
      {
        v19 = a3[1] <= a2[1];
      }

      if (!v19)
      {
        return result;
      }
    }

    else
    {
      v20 = sub_298BBD348(*a5, *a3, a3[1])[4];
      if (v20 <= sub_298BBD348(*a5, *a2, a2[1])[4])
      {
        return result;
      }
    }

    v21 = *a2;
    *a2 = *a3;
    *a3 = v21;
    v22 = a2[2];
    a2[2] = a3[2];
    a3[2] = v22;
    v23 = a2[3];
    a2[3] = a3[3];
    a3[3] = v23;
    v24 = a2[4];
    a2[4] = a3[4];
    a3[4] = v24;
    v25 = sub_298BBD348(*a5, *a2, a2[1])[4];
    if (v25 == sub_298BBD348(*a5, *a1, a1[1])[4])
    {
      v26 = *a2 <= *a1;
      if (*a2 == *a1)
      {
        v26 = a2[1] <= a1[1];
      }

      if (!v26)
      {
        return result;
      }
    }

    else
    {
      v27 = sub_298BBD348(*a5, *a2, a2[1])[4];
      if (v27 <= sub_298BBD348(*a5, *a1, a1[1])[4])
      {
        return result;
      }
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v28 = a1[2];
    a1[2] = a2[2];
    a2[2] = v28;
    v29 = a1[3];
    a1[3] = a2[3];
    a2[3] = v29;
    v30 = a1[4];
    a1[4] = a2[4];
    a2[4] = v30;
    return result;
  }

  v12 = *a4 <= *a3;
  if (*a4 == *a3)
  {
    v12 = a4[1] <= a3[1];
  }

  if (v12)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 sub_298BBFDA0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void **a6)
{
  sub_298BBFAB4(a1, a2, a3, a4, a6);
  v12 = sub_298BBD348(*a6, *a5, a5[1])[4];
  if (v12 != sub_298BBD348(*a6, *a4, a4[1])[4])
  {
    v15 = sub_298BBD348(*a6, *a5, a5[1])[4];
    if (v15 <= sub_298BBD348(*a6, *a4, a4[1])[4])
    {
      return result;
    }

LABEL_7:
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    v17 = a4[2];
    a4[2] = a5[2];
    a5[2] = v17;
    v18 = a4[3];
    a4[3] = a5[3];
    a5[3] = v18;
    v19 = a4[4];
    a4[4] = a5[4];
    a5[4] = v19;
    v20 = sub_298BBD348(*a6, *a4, a4[1])[4];
    if (v20 == sub_298BBD348(*a6, *a3, a3[1])[4])
    {
      v21 = *a4 <= *a3;
      if (*a4 == *a3)
      {
        v21 = a4[1] <= a3[1];
      }

      if (!v21)
      {
        return result;
      }
    }

    else
    {
      v22 = sub_298BBD348(*a6, *a4, a4[1])[4];
      if (v22 <= sub_298BBD348(*a6, *a3, a3[1])[4])
      {
        return result;
      }
    }

    v23 = *a3;
    *a3 = *a4;
    *a4 = v23;
    v24 = a3[2];
    a3[2] = a4[2];
    a4[2] = v24;
    v25 = a3[3];
    a3[3] = a4[3];
    a4[3] = v25;
    v26 = a3[4];
    a3[4] = a4[4];
    a4[4] = v26;
    v27 = sub_298BBD348(*a6, *a3, a3[1])[4];
    if (v27 == sub_298BBD348(*a6, *a2, a2[1])[4])
    {
      v28 = *a3 <= *a2;
      if (*a3 == *a2)
      {
        v28 = a3[1] <= a2[1];
      }

      if (!v28)
      {
        return result;
      }
    }

    else
    {
      v29 = sub_298BBD348(*a6, *a3, a3[1])[4];
      if (v29 <= sub_298BBD348(*a6, *a2, a2[1])[4])
      {
        return result;
      }
    }

    v30 = *a2;
    *a2 = *a3;
    *a3 = v30;
    v31 = a2[2];
    a2[2] = a3[2];
    a3[2] = v31;
    v32 = a2[3];
    a2[3] = a3[3];
    a3[3] = v32;
    v33 = a2[4];
    a2[4] = a3[4];
    a3[4] = v33;
    v34 = sub_298BBD348(*a6, *a2, a2[1])[4];
    if (v34 == sub_298BBD348(*a6, *a1, a1[1])[4])
    {
      v35 = *a2 <= *a1;
      if (*a2 == *a1)
      {
        v35 = a2[1] <= a1[1];
      }

      if (!v35)
      {
        return result;
      }
    }

    else
    {
      v36 = sub_298BBD348(*a6, *a2, a2[1])[4];
      if (v36 <= sub_298BBD348(*a6, *a1, a1[1])[4])
      {
        return result;
      }
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v37 = a1[2];
    a1[2] = a2[2];
    a2[2] = v37;
    v38 = a1[3];
    a1[3] = a2[3];
    a2[3] = v38;
    v39 = a1[4];
    a1[4] = a2[4];
    a2[4] = v39;
    return result;
  }

  v14 = *a5 <= *a4;
  if (*a5 == *a4)
  {
    v14 = a5[1] <= a4[1];
  }

  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL sub_298BC015C(uint64_t *a1, uint64_t *a2, void **a3)
{
  v4 = a2;
  v6 = 0xCCCCCCCCCCCCCCCDLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_298BBF630(a1, a1 + 5, a2 - 5, a3);
        return 1;
      case 4:
        sub_298BBFAB4(a1, a1 + 5, a1 + 10, a2 - 5, a3);
        return 1;
      case 5:
        sub_298BBFDA0(a1, a1 + 5, a1 + 10, a1 + 15, a2 - 5, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v9 = a2 - 5;
      v8 = *(a2 - 5);
      *&v59 = v4 - 5;
      v10 = sub_298BBD348(v7, v8, *(v4 - 4))[4];
      v11 = *a3;
      *&v59 = a1;
      if (v10 == sub_298BBD348(v11, *a1, a1[1])[4])
      {
        v12 = *(v4 - 5);
        v13 = v12 == *a1;
        v14 = v12 <= *a1;
        if (v13)
        {
          v14 = *(v4 - 4) <= a1[1];
        }

        if (!v14)
        {
          return 1;
        }

        goto LABEL_52;
      }

      v50 = *a3;
      *&v59 = v4 - 5;
      v51 = sub_298BBD348(v50, *(v4 - 5), *(v4 - 4))[4];
      v52 = *a3;
      *&v59 = a1;
      if (v51 > sub_298BBD348(v52, *a1, a1[1])[4])
      {
LABEL_52:
        v53 = *a1;
        *a1 = *v9;
        *v9 = v53;
        v54 = a1[2];
        a1[2] = *(v4 - 3);
        *(v4 - 3) = v54;
        v55 = a1[3];
        a1[3] = *(v4 - 2);
        *(v4 - 2) = v55;
        v56 = a1[4];
        a1[4] = *(v4 - 1);
        *(v4 - 1) = v56;
      }

      return 1;
    }
  }

  v15 = a1 + 10;
  sub_298BBF630(a1, a1 + 5, a1 + 10, a3);
  v16 = a1 + 15;
  if (a1 + 15 == v4)
  {
    return 1;
  }

  v17 = 0;
  v58 = v4;
  while (1)
  {
    v20 = *a3;
    *&v59 = v16;
    v21 = sub_298BBD348(v20, *v16, v16[1])[4];
    v22 = *a3;
    *&v59 = v15;
    if (v21 == sub_298BBD348(v22, *v15, v15[1])[4])
    {
      break;
    }

    v24 = *a3;
    *&v59 = v16;
    v25 = sub_298BBD348(v24, *v16, v16[1])[4];
    v26 = *a3;
    *&v59 = v15;
    if (v25 > sub_298BBD348(v26, *v15, v15[1])[4])
    {
      goto LABEL_26;
    }

LABEL_19:
    v15 = v16;
    v16 += 5;
    if (v16 == v4)
    {
      return 1;
    }
  }

  v23 = *v16 <= *v15;
  if (*v16 == *v15)
  {
    v23 = v16[1] <= v15[1];
  }

  if (!v23)
  {
    goto LABEL_19;
  }

LABEL_26:
  v27 = 0;
  v28 = *(v16 + 1);
  v59 = *v16;
  v60 = v28;
  v61 = v16[4];
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = 0;
  for (i = v16; ; i = v32)
  {
    v32 = v15;
    *i = *v15;
    if (v27)
    {
      v33 = i + 3;
      v34 = i[3];
      v35 = v27;
      if (v34 != v27)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            (*(*v36 + 8))(v36);
          }
        }

        while (v34 != v27);
        v35 = i[2];
      }

      *v33 = v27;
      operator delete(v35);
      *v33 = 0;
      i[4] = 0;
    }

    v38 = (v32 + 2);
    *(i + 1) = *(v32 + 1);
    i[4] = v32[4];
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = 0;
    if (v32 == a1)
    {
      *a1 = v59;
      v18 = (a1 + 3);
      v19 = a1 + 4;
      goto LABEL_17;
    }

    v15 = v32 - 5;
    v39 = *a3;
    v62 = &v59;
    v40 = sub_298BBD348(v39, v59, *(&v59 + 1))[4];
    v41 = *a3;
    v62 = v32 - 5;
    if (v40 == sub_298BBD348(v41, *(v32 - 5), *(v32 - 4))[4])
    {
      break;
    }

    v42 = *a3;
    v62 = &v59;
    v43 = sub_298BBD348(v42, v59, *(&v59 + 1))[4];
    v44 = *a3;
    v62 = v32 - 5;
    if (v43 <= sub_298BBD348(v44, *(v32 - 5), *(v32 - 4))[4])
    {
      goto LABEL_42;
    }

LABEL_30:
    v27 = *v38;
  }

  v30 = *(v32 - 5);
  v31 = v59 <= v30;
  if (v59 == v30)
  {
    v31 = *(&v59 + 1) <= *(v32 - 4);
  }

  if (v31)
  {
    goto LABEL_30;
  }

LABEL_42:
  v18 = (v32 + 3);
  v19 = v32 + 4;
  v45 = v32[2];
  *v32 = v59;
  if (v45)
  {
    v46 = *v18;
    v47 = v45;
    if (*v18 != v45)
    {
      do
      {
        v49 = *--v46;
        v48 = v49;
        *v46 = 0;
        if (v49)
        {
          (*(*v48 + 8))(v48);
        }
      }

      while (v46 != v45);
      v47 = *v38;
    }

    *v18 = v45;
    operator delete(v47);
    *v38 = 0;
    v38[1] = 0;
    v38[2] = 0;
  }

LABEL_17:
  *v38 = v60;
  *v18 = *(&v60 + 1);
  *v19 = v61;
  v61 = 0;
  v60 = 0uLL;
  if (++v17 != 8)
  {
    sub_298AF0458(&v60);
    v4 = v58;
    goto LABEL_19;
  }

  sub_298AF0458(&v60);
  return v16 + 5 == v58;
}

void sub_298BC0650(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  operator new();
}

void sub_298BC0B34(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 28);
  if (v2)
  {
    v3 = a1;
    while (1)
    {
      v8 = *(v2 + 8);
      if (!v8)
      {
        return;
      }

      v9 = *v2;
      v10 = *v2 + 8 * v8;
      v11 = (v10 - 8);
      if ((*v1 & 3) == 0)
      {
        do
        {
          v43 = *v9;
          if (*v9 != *v11)
          {
            v50 = 0;
            v44 = *(v43 + 28);
            *(v43 + 28) = 0;
            if (v44)
            {
              v45 = *v44;
              v46 = *(v44 + 2);
              if (v46)
              {
                v47 = 8 * v46;
                v48 = v45 - 8;
                do
                {
                  v49 = *&v48[v47];
                  *&v48[v47] = 0;
                  if (v49)
                  {
                    sub_298B07DB0((v49 + 28));
                    MEMORY[0x29C2945F0](v49, 0x1020C40CE35E8ABLL);
                  }

                  v47 -= 8;
                }

                while (v47);
                v45 = *v44;
              }

              if (v45 != (v44 + 2))
              {
                free(v45);
              }

              MEMORY[0x29C2945F0](v44, 0x1080C40ABB4582ELL);
            }

            sub_298B07DB0(&v50);
          }

          ++v9;
        }

        while (v9 != v10);
        sub_298BC0B34(v10 - 8);
        return;
      }

      v12 = *v11;
      *v11 = 0;
      v13 = **(*v3 + 28);
      v14 = *v13;
      *v13 = v12;
      if (v14)
      {
        sub_298B07DB0((v14 + 28));
        MEMORY[0x29C2945F0](v14, 0x1020C40CE35E8ABLL);
      }

      v15 = *v3;
      sub_298BBB250((*v3 + 28));
      v16 = *(v15 + 28);
      v17 = *(v16 + 2);
      if (!v17)
      {
        break;
      }

      if (v17 == 1)
      {
        goto LABEL_7;
      }

      v18 = *v16;
      v19 = 8 * v17 - 8;
      do
      {
        v20 = *&v18[v19];
        *&v18[v19] = 0;
        if (v20)
        {
          sub_298B07DB0((v20 + 28));
          MEMORY[0x29C2945F0](v20, 0x1020C40CE35E8ABLL);
        }

        v19 -= 8;
      }

      while (v19);
LABEL_6:
      *(v16 + 2) = 1;
LABEL_7:
      v6 = **(*v3 + 28) + 8 * *(*(*v3 + 28) + 8);
      v7 = *(v6 - 8);
      v3 = v6 - 8;
      v1 = v7;
      v2 = *(v7 + 28);
      if (!v2)
      {
        return;
      }
    }

    if (*(v16 + 3))
    {
      v4 = 0;
      v5 = *v16;
LABEL_5:
      bzero(&v5[8 * v4], 8 - 8 * v4);
      goto LABEL_6;
    }

    v21 = malloc_type_malloc(8uLL, 0x3C0F72FBuLL);
    if (!v21)
    {
      goto LABEL_60;
    }

    v5 = v21;
    v22 = 0uLL;
    if (v21 == (v16 + 2))
    {
      v23 = malloc_type_malloc(8uLL, 0x3C0F72FBuLL);
      if (!v23)
      {
LABEL_60:
        sub_298B86A40("Allocation failed");
      }

      v24 = v23;
      free(v5);
      v5 = v24;
      v22 = 0uLL;
    }

    v25 = *v16;
    v26 = *(v16 + 2);
    if (!v26)
    {
LABEL_40:
      if (v25 != (v16 + 2))
      {
        free(v25);
      }

      *v16 = v5;
      *(v16 + 3) = 1;
      v4 = *(v16 + 2);
      if (v4 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v27 = (v26 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = 8 * v26;
    if (v27 >= 5)
    {
      v31 = v25 >= &v5[v28] || v5 >= &v25[v28];
      v29 = v5;
      v30 = *v16;
      if (v31)
      {
        v32 = v27 + 1;
        v33 = 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL);
        v29 = &v5[v33];
        v30 = &v25[v33];
        v34 = (v25 + 16);
        v35 = v5 + 16;
        v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v37 = *(v34 - 1);
          v38 = *v34;
          *(v34 - 1) = v22;
          *v34 = v22;
          *(v35 - 1) = v37;
          *v35 = v38;
          v34 += 2;
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        if (v32 == (v32 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_35:
          v41 = v25 - 8;
          do
          {
            v42 = *&v41[v28];
            *&v41[v28] = 0;
            if (v42)
            {
              sub_298B07DB0((v42 + 28));
              MEMORY[0x29C2945F0](v42, 0x1020C40CE35E8ABLL);
            }

            v28 -= 8;
          }

          while (v28);
          v25 = *v16;
          goto LABEL_40;
        }
      }
    }

    else
    {
      v29 = v5;
      v30 = *v16;
    }

    v39 = &v25[8 * v26];
    do
    {
      v40 = *v30;
      *v30 = 0;
      v30 += 8;
      *v29 = v40;
      v29 += 8;
    }

    while (v30 != v39);
    goto LABEL_35;
  }
}

FILE *sub_298BC0EB0@<X0>(const char *a1@<X0>, _DWORD *a2@<X2>, std::string *a3@<X8>)
{
  if (a2)
  {
    *a2 = -1;
  }

  result = popen(a1, "r");
  if (result)
  {
    v6 = result;
    memset(&v11, 0, sizeof(v11));
    if (!feof(result))
    {
      do
      {
        if (ferror(v6))
        {
          break;
        }

        v7 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v11.__r_.__value_.__r.__words[2]) : v11.__r_.__value_.__l.__size_;
        v8 = v7 <= 0x1000 ? 4096 : v7;
        std::string::resize(&v11, v8 + v7, 0);
        v9 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v11 : v11.__r_.__value_.__r.__words[0];
        v10 = fread(v9 + v7, 1uLL, v8, v6);
        std::string::resize(&v11, v10 + v7, 0);
      }

      while (!feof(v6));
    }

    result = pclose(v6);
    if (a2)
    {
      *a2 = result;
    }

    *a3 = v11;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[1].__r_.__value_.__s.__data_[0] = 0;
  }

  return result;
}

uint64_t sub_298BC0FDC(uint64_t a1, char a2)
{
  v54 = a2;
  *(a1 + 448) = a2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  LODWORD(v53) = 0;
  v28 = *(a1 + 32);
  if (!v28)
  {
    goto LABEL_130;
  }

  v29 = a2;
  (*(*v28 + 48))(v28, &v53);
  a2 = v29;
  v3 = *(a1 + 48);
  if (v3)
  {
LABEL_3:
    *(v3 + 8) = a2;
  }

LABEL_4:
  if (*(a1 + 41))
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  LODWORD(v53) = 1;
  v30 = *(a1 + 32);
  if (!v30)
  {
    goto LABEL_130;
  }

  v31 = a2;
  (*(*v30 + 48))(v30, &v53);
  a2 = v31;
  v4 = *(a1 + 56);
  if (v4)
  {
LABEL_6:
    *(v4 + 8) = a2;
  }

LABEL_7:
  if (*(a1 + 42))
  {
    v5 = *(a1 + 64);
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  LODWORD(v53) = 2;
  v32 = *(a1 + 32);
  if (!v32)
  {
    goto LABEL_130;
  }

  v33 = a2;
  (*(*v32 + 48))(v32, &v53);
  a2 = v33;
  v5 = *(a1 + 64);
  if (v5)
  {
LABEL_9:
    *(v5 + 8) = a2;
  }

LABEL_10:
  if (*(a1 + 43))
  {
    v6 = *(a1 + 72);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  LODWORD(v53) = 3;
  v34 = *(a1 + 32);
  if (!v34)
  {
    goto LABEL_130;
  }

  v35 = a2;
  (*(*v34 + 48))(v34, &v53);
  a2 = v35;
  v6 = *(a1 + 72);
  if (v6)
  {
LABEL_12:
    *(v6 + 8) = a2;
  }

LABEL_13:
  if (*(a1 + 44))
  {
    v7 = *(a1 + 80);
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  LODWORD(v53) = 4;
  v36 = *(a1 + 32);
  if (!v36)
  {
    goto LABEL_130;
  }

  v37 = a2;
  (*(*v36 + 48))(v36, &v53);
  a2 = v37;
  v7 = *(a1 + 80);
  if (v7)
  {
LABEL_15:
    *(v7 + 8) = a2;
  }

LABEL_16:
  if (*(a1 + 45))
  {
    v8 = *(a1 + 88);
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  LODWORD(v53) = 5;
  v38 = *(a1 + 32);
  if (!v38)
  {
    goto LABEL_130;
  }

  v39 = a2;
  (*(*v38 + 48))(v38, &v53);
  a2 = v39;
  v8 = *(a1 + 88);
  if (v8)
  {
LABEL_18:
    *(v8 + 8) = a2;
  }

LABEL_19:
  if (*(a1 + 46))
  {
    v9 = *(a1 + 96);
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  LODWORD(v53) = 6;
  v40 = *(a1 + 32);
  if (!v40)
  {
    goto LABEL_130;
  }

  v41 = a2;
  (*(*v40 + 48))(v40, &v53);
  a2 = v41;
  v9 = *(a1 + 96);
  if (v9)
  {
LABEL_21:
    *(v9 + 8) = a2;
  }

LABEL_22:
  if (*(a1 + 47))
  {
    v10 = *(a1 + 104);
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  LODWORD(v53) = 7;
  v42 = *(a1 + 32);
  if (!v42)
  {
    goto LABEL_130;
  }

  v43 = a2;
  (*(*v42 + 48))(v42, &v53);
  a2 = v43;
  v10 = *(a1 + 104);
  if (v10)
  {
LABEL_24:
    *(v10 + 8) = a2;
  }

LABEL_25:
  v53 = &v54;
  result = sub_298B06C6C(a1 + 112, sub_298BCE9C0, &v53);
  if (*(a1 + 248))
  {
    v12 = *(a1 + 256);
    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_92;
  }

  LODWORD(v53) = 0;
  v44 = *(a1 + 240);
  if (!v44)
  {
LABEL_130:
    v52 = sub_298AE761C();
    return sub_298BC17AC(v52);
  }

  result = (*(*v44 + 48))(v44, &v53);
  v12 = *(a1 + 256);
  if (!v12)
  {
LABEL_27:
    if (*(a1 + 249))
    {
      goto LABEL_28;
    }

    goto LABEL_93;
  }

LABEL_92:
  *v12 = v54;
  if (*(a1 + 249))
  {
LABEL_28:
    v13 = *(a1 + 264);
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_95;
  }

LABEL_93:
  LODWORD(v53) = 1;
  v45 = *(a1 + 240);
  if (!v45)
  {
    goto LABEL_130;
  }

  result = (*(*v45 + 48))(v45, &v53);
  v13 = *(a1 + 264);
  if (!v13)
  {
LABEL_29:
    if (*(a1 + 250))
    {
      goto LABEL_30;
    }

    goto LABEL_96;
  }

LABEL_95:
  *v13 = v54;
  if (*(a1 + 250))
  {
LABEL_30:
    v14 = *(a1 + 272);
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_98;
  }

LABEL_96:
  LODWORD(v53) = 2;
  v46 = *(a1 + 240);
  if (!v46)
  {
    goto LABEL_130;
  }

  result = (*(*v46 + 48))(v46, &v53);
  v14 = *(a1 + 272);
  if (!v14)
  {
LABEL_31:
    if (*(a1 + 251))
    {
      goto LABEL_32;
    }

    goto LABEL_99;
  }

LABEL_98:
  *v14 = v54;
  if (*(a1 + 251))
  {
LABEL_32:
    v15 = *(a1 + 280);
    if (!v15)
    {
      goto LABEL_33;
    }

    goto LABEL_101;
  }

LABEL_99:
  LODWORD(v53) = 3;
  v47 = *(a1 + 240);
  if (!v47)
  {
    goto LABEL_130;
  }

  result = (*(*v47 + 48))(v47, &v53);
  v15 = *(a1 + 280);
  if (!v15)
  {
LABEL_33:
    if (*(a1 + 252))
    {
      goto LABEL_34;
    }

    goto LABEL_102;
  }

LABEL_101:
  *v15 = v54;
  if (*(a1 + 252))
  {
LABEL_34:
    v16 = *(a1 + 288);
    if (!v16)
    {
      goto LABEL_35;
    }

    goto LABEL_104;
  }

LABEL_102:
  LODWORD(v53) = 4;
  v48 = *(a1 + 240);
  if (!v48)
  {
    goto LABEL_130;
  }

  result = (*(*v48 + 48))(v48, &v53);
  v16 = *(a1 + 288);
  if (!v16)
  {
LABEL_35:
    if (*(a1 + 253))
    {
      goto LABEL_36;
    }

    goto LABEL_105;
  }

LABEL_104:
  *v16 = v54;
  if (*(a1 + 253))
  {
LABEL_36:
    v17 = *(a1 + 296);
    if (!v17)
    {
      goto LABEL_37;
    }

    goto LABEL_107;
  }

LABEL_105:
  LODWORD(v53) = 5;
  v49 = *(a1 + 240);
  if (!v49)
  {
    goto LABEL_130;
  }

  result = (*(*v49 + 48))(v49, &v53);
  v17 = *(a1 + 296);
  if (!v17)
  {
LABEL_37:
    if (*(a1 + 254))
    {
      goto LABEL_38;
    }

    goto LABEL_108;
  }

LABEL_107:
  *v17 = v54;
  if (*(a1 + 254))
  {
LABEL_38:
    v18 = *(a1 + 304);
    if (!v18)
    {
      goto LABEL_39;
    }

    goto LABEL_110;
  }

LABEL_108:
  LODWORD(v53) = 6;
  v50 = *(a1 + 240);
  if (!v50)
  {
    goto LABEL_130;
  }

  result = (*(*v50 + 48))(v50, &v53);
  v18 = *(a1 + 304);
  if (!v18)
  {
LABEL_39:
    if (*(a1 + 255))
    {
      goto LABEL_40;
    }

    goto LABEL_111;
  }

LABEL_110:
  *v18 = v54;
  if (*(a1 + 255))
  {
LABEL_40:
    v19 = *(a1 + 312);
    if (!v19)
    {
      goto LABEL_41;
    }

    goto LABEL_113;
  }

LABEL_111:
  LODWORD(v53) = 7;
  v51 = *(a1 + 240);
  if (!v51)
  {
    goto LABEL_130;
  }

  result = (*(*v51 + 48))(v51, &v53);
  v19 = *(a1 + 312);
  if (!v19)
  {
LABEL_41:
    if (*(a1 + 352))
    {
      goto LABEL_42;
    }

    goto LABEL_114;
  }

LABEL_113:
  *v19 = v54;
  if (*(a1 + 352))
  {
LABEL_42:
    v20 = *(a1 + 360);
    if (!v20)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_114:
  result = sub_298BC62BC(a1 + 320, 0);
  v20 = *(a1 + 360);
  if (v20)
  {
LABEL_43:
    *v20 = v54;
  }

LABEL_44:
  if (*(a1 + 353))
  {
    v21 = *(a1 + 368);
    if (!v21)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  result = sub_298BC62BC(a1 + 320, 1);
  v21 = *(a1 + 368);
  if (v21)
  {
LABEL_46:
    *v21 = v54;
  }

LABEL_47:
  if (*(a1 + 354))
  {
    v22 = *(a1 + 376);
    if (!v22)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  result = sub_298BC62BC(a1 + 320, 2);
  v22 = *(a1 + 376);
  if (v22)
  {
LABEL_49:
    *v22 = v54;
  }

LABEL_50:
  if (*(a1 + 355))
  {
    v23 = *(a1 + 384);
    if (!v23)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  result = sub_298BC62BC(a1 + 320, 3);
  v23 = *(a1 + 384);
  if (v23)
  {
LABEL_52:
    *v23 = v54;
  }

LABEL_53:
  if (*(a1 + 356))
  {
    v24 = *(a1 + 392);
    if (!v24)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  result = sub_298BC62BC(a1 + 320, 4);
  v24 = *(a1 + 392);
  if (v24)
  {
LABEL_55:
    *v24 = v54;
  }

LABEL_56:
  if (*(a1 + 357))
  {
    v25 = *(a1 + 400);
    if (!v25)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  result = sub_298BC62BC(a1 + 320, 5);
  v25 = *(a1 + 400);
  if (v25)
  {
LABEL_58:
    *v25 = v54;
  }

LABEL_59:
  if (*(a1 + 358))
  {
    v26 = *(a1 + 408);
    if (!v26)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  result = sub_298BC62BC(a1 + 320, 6);
  v26 = *(a1 + 408);
  if (v26)
  {
LABEL_61:
    *v26 = v54;
  }

LABEL_62:
  if (*(a1 + 359))
  {
    v27 = *(a1 + 416);
    if (!v27)
    {
      return result;
    }

    goto LABEL_64;
  }

  result = sub_298BC62BC(a1 + 320, 7);
  v27 = *(a1 + 416);
  if (v27)
  {
LABEL_64:
    *v27 = v54;
  }

  return result;
}

uint64_t sub_298BC17AC(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 40) = 0;
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(a1 + 41) = 0;
  v4 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 42) = 0;
  v5 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 43) = 0;
  v6 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 44) = 0;
  v7 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 45) = 0;
  v8 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(a1 + 46) = 0;
  v9 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 47) = 0;
  v10 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v10)
  {
    v35 = sub_298AEA2E8(v10);
    MEMORY[0x29C2945F0](v35, 0x10E0C40D21384F6);
  }

  *(a1 + 144) = 0;
  v11 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v11)
  {
    v36 = sub_298AEA2E8(v11);
    MEMORY[0x29C2945F0](v36, 0x10E0C40D21384F6);
  }

  *(a1 + 145) = 0;
  v12 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v12)
  {
    v37 = sub_298AEA2E8(v12);
    MEMORY[0x29C2945F0](v37, 0x10E0C40D21384F6);
  }

  *(a1 + 146) = 0;
  v13 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v13)
  {
    v38 = sub_298AEA2E8(v13);
    MEMORY[0x29C2945F0](v38, 0x10E0C40D21384F6);
  }

  *(a1 + 147) = 0;
  v14 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v14)
  {
    v39 = sub_298AEA2E8(v14);
    MEMORY[0x29C2945F0](v39, 0x10E0C40D21384F6);
  }

  *(a1 + 148) = 0;
  v15 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v15)
  {
    v40 = sub_298AEA2E8(v15);
    MEMORY[0x29C2945F0](v40, 0x10E0C40D21384F6);
  }

  *(a1 + 149) = 0;
  v16 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v16)
  {
    v41 = sub_298AEA2E8(v16);
    MEMORY[0x29C2945F0](v41, 0x10E0C40D21384F6);
  }

  *(a1 + 150) = 0;
  v17 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v17)
  {
    v42 = sub_298AEA2E8(v17);
    MEMORY[0x29C2945F0](v42, 0x10E0C40D21384F6);
  }

  *(a1 + 151) = 0;
  v18 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v18)
  {
    MEMORY[0x29C2945F0](v18, 0x1000C401449E693);
  }

  *(a1 + 248) = 0;
  v19 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v19)
  {
    MEMORY[0x29C2945F0](v19, 0x1000C401449E693);
  }

  *(a1 + 249) = 0;
  v20 = *(a1 + 272);
  *(a1 + 272) = 0;
  if (v20)
  {
    MEMORY[0x29C2945F0](v20, 0x1000C401449E693);
  }

  *(a1 + 250) = 0;
  v21 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v21)
  {
    MEMORY[0x29C2945F0](v21, 0x1000C401449E693);
  }

  *(a1 + 251) = 0;
  v22 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v22)
  {
    MEMORY[0x29C2945F0](v22, 0x1000C401449E693);
  }

  *(a1 + 252) = 0;
  v23 = *(a1 + 296);
  *(a1 + 296) = 0;
  if (v23)
  {
    MEMORY[0x29C2945F0](v23, 0x1000C401449E693);
  }

  *(a1 + 253) = 0;
  v24 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v24)
  {
    MEMORY[0x29C2945F0](v24, 0x1000C401449E693);
  }

  *(a1 + 254) = 0;
  v25 = *(a1 + 312);
  *(a1 + 312) = 0;
  if (v25)
  {
    MEMORY[0x29C2945F0](v25, 0x1000C401449E693);
  }

  *(a1 + 255) = 0;
  v26 = *(a1 + 360);
  *(a1 + 360) = 0;
  if (v26)
  {
    MEMORY[0x29C2945F0](v26, 0x1020C400B1EFBD8);
  }

  *(a1 + 352) = 0;
  v27 = *(a1 + 368);
  *(a1 + 368) = 0;
  if (v27)
  {
    MEMORY[0x29C2945F0](v27, 0x1020C400B1EFBD8);
  }

  *(a1 + 353) = 0;
  v28 = *(a1 + 376);
  *(a1 + 376) = 0;
  if (v28)
  {
    MEMORY[0x29C2945F0](v28, 0x1020C400B1EFBD8);
  }

  *(a1 + 354) = 0;
  v29 = *(a1 + 384);
  *(a1 + 384) = 0;
  if (v29)
  {
    MEMORY[0x29C2945F0](v29, 0x1020C400B1EFBD8);
  }

  *(a1 + 355) = 0;
  v30 = *(a1 + 392);
  *(a1 + 392) = 0;
  if (v30)
  {
    MEMORY[0x29C2945F0](v30, 0x1020C400B1EFBD8);
  }

  *(a1 + 356) = 0;
  v31 = *(a1 + 400);
  *(a1 + 400) = 0;
  if (v31)
  {
    MEMORY[0x29C2945F0](v31, 0x1020C400B1EFBD8);
  }

  *(a1 + 357) = 0;
  v32 = *(a1 + 408);
  *(a1 + 408) = 0;
  if (v32)
  {
    MEMORY[0x29C2945F0](v32, 0x1020C400B1EFBD8);
  }

  *(a1 + 358) = 0;
  result = *(a1 + 416);
  *(a1 + 416) = 0;
  if (result)
  {
    result = MEMORY[0x29C2945F0](result, 0x1020C400B1EFBD8);
  }

  *(a1 + 359) = 0;
  if (*(a1 + 448) == 1)
  {
    v34 = sub_298B9CDFC();
    sub_298B00584(v34, "# TraceDispatcher: Full Reset\n");

    return sub_298BC0FDC(a1, 1);
  }

  return result;
}

uint64_t sub_298BC1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 40))
  {
    v8 = *(a1 + 48);
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v27 = 0;
  v17 = *(a1 + 32);
  if (!v17)
  {
    goto LABEL_50;
  }

  (*(*v17 + 48))(v17, &v27);
  v8 = *(a1 + 48);
  if (v8)
  {
LABEL_3:
    (*(*v8 + 16))(v8, a3, a4);
  }

LABEL_4:
  if (*(a1 + 41))
  {
    v9 = *(a1 + 56);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v27 = 1;
  v18 = *(a1 + 32);
  if (!v18)
  {
    goto LABEL_50;
  }

  (*(*v18 + 48))(v18, &v27);
  v9 = *(a1 + 56);
  if (v9)
  {
LABEL_6:
    (*(*v9 + 16))(v9, a3, a4);
  }

LABEL_7:
  if (*(a1 + 42))
  {
    v10 = *(a1 + 64);
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v27 = 2;
  v19 = *(a1 + 32);
  if (!v19)
  {
    goto LABEL_50;
  }

  (*(*v19 + 48))(v19, &v27);
  v10 = *(a1 + 64);
  if (v10)
  {
LABEL_9:
    (*(*v10 + 16))(v10, a3, a4);
  }

LABEL_10:
  if (*(a1 + 43))
  {
    v11 = *(a1 + 72);
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v27 = 3;
  v20 = *(a1 + 32);
  if (!v20)
  {
    goto LABEL_50;
  }

  (*(*v20 + 48))(v20, &v27);
  v11 = *(a1 + 72);
  if (v11)
  {
LABEL_12:
    (*(*v11 + 16))(v11, a3, a4);
  }

LABEL_13:
  if (*(a1 + 44))
  {
    v12 = *(a1 + 80);
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v27 = 4;
  v21 = *(a1 + 32);
  if (!v21)
  {
    goto LABEL_50;
  }

  (*(*v21 + 48))(v21, &v27);
  v12 = *(a1 + 80);
  if (v12)
  {
LABEL_15:
    (*(*v12 + 16))(v12, a3, a4);
  }

LABEL_16:
  if (*(a1 + 45))
  {
    v13 = *(a1 + 88);
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v27 = 5;
  v22 = *(a1 + 32);
  if (!v22)
  {
    goto LABEL_50;
  }

  (*(*v22 + 48))(v22, &v27);
  v13 = *(a1 + 88);
  if (v13)
  {
LABEL_18:
    (*(*v13 + 16))(v13, a3, a4);
  }

LABEL_19:
  if ((*(a1 + 46) & 1) == 0)
  {
    v27 = 6;
    v23 = *(a1 + 32);
    if (!v23)
    {
      goto LABEL_50;
    }

    (*(*v23 + 48))(v23, &v27);
    v14 = *(a1 + 96);
    if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = *(a1 + 96);
  if (v14)
  {
LABEL_21:
    (*(*v14 + 16))(v14, a3, a4);
  }

LABEL_22:
  if (*(a1 + 47))
  {
    v15 = *(a1 + 104);
    if (!v15)
    {
LABEL_25:
      v26 = a2;
      return sub_298B06C6C(a1 + 112, sub_298BCE9D0, &v26);
    }

LABEL_24:
    (*(*v15 + 16))(v15, a3, a4);
    goto LABEL_25;
  }

  v27 = 7;
  v24 = *(a1 + 32);
  if (v24)
  {
    (*(*v24 + 48))(v24, &v27);
    v15 = *(a1 + 104);
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_50:
  v25 = sub_298AE761C();
  return sub_298BC2198(v25);
}

uint64_t sub_298BC2198@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(result + 56);
  if ((*a2 & 1) == 0)
  {
    if (!*(a2 + 16))
    {
      v11 = *(a2 + 32);
      if (!v11)
      {
        goto LABEL_9;
      }

      v12 = *(a2 + 24);
      v13 = 2 * v11;
      while (!*v12)
      {
        ++v12;
        v13 -= 2;
        if (!v13)
        {
          goto LABEL_9;
        }
      }
    }

    result = sub_298BC1D3C(*(result + 56), a2, "Invalid unit", 12);
    goto LABEL_9;
  }

  v6 = result;
  if (*(a2 + 1) == 1)
  {
    v7 = (*(a2 + 40) & 1) == 0;
    *(a2 + 40);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    result = sub_298BC1D3C(*(result + 56), a2, "Observed loss indicator", 23);
  }

  v8 = *(a2 + 3) | (2 * *(a2 + 2));
  if (*(v5 + v8) == 1)
  {
    v9 = *(a2 + 16);
    if ((v9 - 1) > 2)
    {
      if (v9 == 5)
      {
        if ((*(v5 + v8 + 352) & 1) == 0)
        {
          v15 = *(a2 + 3) | (2 * *(a2 + 2));
          sub_298BC62BC(v5 + 320, v8);
          v8 = v15;
        }

        result = sub_298BF97E8(*(v5 + 8 * v8 + 360), a2, v6 + 24);
      }

      else if (v9 == 4)
      {
        v10 = sub_298BCE938(v5 + 216, v8);
        result = sub_298BF99F0(v10, a2, (v5 + 424), v6 + 16);
      }
    }

    else
    {
      if ((*(v5 + v8 + 40) & 1) == 0)
      {
        v14 = *(a2 + 3) | (2 * *(a2 + 2));
        sub_298BC62BC(v5 + 8, v8);
        v8 = v14;
      }

      result = (*(**(v5 + 8 * v8 + 48) + 24))(*(v5 + 8 * v8 + 48), a2, v6 + 8);
    }
  }

LABEL_9:
  *a3 = 0;
  return result;
}

char *sub_298BC2340(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (*a2)
  {
    if (*(a2 + 1) == 1)
    {
      v6 = (*(a2 + 40) & 1) == 0;
      *(a2 + 40);
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      result = sub_298BC1D3C(result, a2, "Observed loss indicator", 23);
    }

    v7 = *(a2 + 3) | (2 * *(a2 + 2));
    if (v4[v7] == 1)
    {
      v8 = *(a2 + 16);
      if ((v8 - 1) > 2)
      {
        if (v8 == 5)
        {
          if ((v4[v7 + 352] & 1) == 0)
          {
            v16 = *(a2 + 3) | (2 * *(a2 + 2));
            sub_298BC62BC((v4 + 320), v7);
            v7 = v16;
          }

          v11 = *&v4[8 * v7 + 360];

          return sub_298BF97E8(v11, a2, a3 + 24);
        }

        else if (v8 == 4)
        {
          v10 = sub_298BCE938((v4 + 216), v7);

          return sub_298BF99F0(v10, a2, v4 + 53, a3 + 16);
        }
      }

      else
      {
        if ((v4[v7 + 40] & 1) == 0)
        {
          v15 = *(a2 + 3) | (2 * *(a2 + 2));
          sub_298BC62BC((v4 + 8), v7);
          v7 = v15;
        }

        v9 = *(**&v4[8 * v7 + 48] + 24);

        return v9();
      }
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      v12 = *(a2 + 32);
      if (!v12)
      {
        return result;
      }

      v13 = *(a2 + 24);
      v14 = 2 * v12;
      while (!*v13)
      {
        ++v13;
        v14 -= 2;
        if (!v14)
        {
          return result;
        }
      }
    }

    return sub_298BC1D3C(result, a2, "Invalid unit", 12);
  }

  return result;
}

void sub_298BC2550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 56);
  v5 = *(a2 + 3) | (2 * *(a2 + 2));
  if ((*(v4 + v5 + 144) & 1) == 0)
  {
    v7 = a2;
    v8 = a3;
    sub_298BC62BC(v4 + 112, *(a2 + 3) | (2 * *(a2 + 2)));
    a2 = v7;
    a3 = v8;
  }

  v6 = *(v4 + 8 * v5 + 152);

  sub_298BFE5CC(v6, a2, a3, a4);
}

void sub_298BC25C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 3) | (2 * *(a2 + 2));
  if ((*(v4 + v5 + 144) & 1) == 0)
  {
    v7 = a2;
    v8 = a3;
    sub_298BC62BC(v4 + 112, *(a2 + 3) | (2 * *(a2 + 2)));
    a2 = v7;
    a3 = v8;
  }

  v6 = *(v4 + 8 * v5 + 152);

  sub_298BFE5CC(v6, a2, a3, a4);
}

uint64_t sub_298BC2640(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  v3 = *(a2 + 3) | (2 * *(a2 + 2));
  if ((*(v2 + v3 + 144) & 1) == 0)
  {
    return sub_298BC62BC(v2 + 112, v3);
  }

  return result;
}

uint64_t sub_298BC2668(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(a2 + 3) | (2 * *(a2 + 2));
  if ((*(v2 + v3 + 144) & 1) == 0)
  {
    return sub_298BC62BC(v2 + 112, v3);
  }

  return result;
}

uint64_t sub_298BC2690(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v36 = 0;
  *v37 = 0uLL;
  sub_298BCEA08(&v36, a2, a2 + 8 * a3, a3);
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = v36;
  *(a1 + 24) = v36;
  v6 = *v37;
  *(a1 + 32) = *v37;
  sub_298BCEB60(v5, v6);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (v7 != v8)
  {
    v9 = 0;
    v11 = *a1;
    v10 = *(a1 + 8);
    while (1)
    {
      v12 = *v7;
      v13 = (8 * (*v7)[1]);
      while (v13 > (v10 - v11) >> 2)
      {
        sub_298BCFB60(a1);
        v11 = *a1;
        v10 = *(a1 + 8);
      }

      v14 = 0;
      v15 = v12[10];
      do
      {
        if (v14 >= v15)
        {
          v16 = *(a1 + 16);
          if (v10 < v16)
          {
            *v10++ = -1;
          }

          else
          {
            v17 = (v10 - *a1) >> 2;
            if ((v17 + 1) >> 62)
            {
              sub_298ADDDA0();
            }

            v18 = v16 - *a1;
            v19 = v18 >> 1;
            if (v18 >> 1 <= (v17 + 1))
            {
              v19 = v17 + 1;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v20 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v19;
            }

            sub_298BCFC44(&v36, v20, v17, a1);
            v21 = *&v37[8];
            **&v37[8] = -1;
            *&v37[8] = v21 + 4;
            v22 = *(a1 + 8) - *a1;
            v23 = *v37 - v22;
            memcpy((*v37 - v22), *a1, v22);
            v24 = *a1;
            *a1 = v23;
            v25 = *(a1 + 16);
            v26 = *&v37[8];
            *(a1 + 8) = *&v37[8];
            *&v37[8] = v24;
            *&v37[16] = v25;
            v36 = v24;
            *v37 = v24;
            if (v24)
            {
              v35 = v26;
              operator delete(v24);
              v26 = v35;
            }

            v10 = v26;
          }

          *(a1 + 8) = v10;
        }

        else
        {
          LODWORD(v36) = v9;
          if (v10 >= *(a1 + 16))
          {
            sub_298BCFCBC(a1, &v36);
          }

          else
          {
            *v10++ = v9;
          }

          *(a1 + 8) = v10;
          ++v9;
        }

        ++v14;
      }

      while (v14 != 8);
      v11 = *a1;
      v27 = ((v10 - *a1) >> 2) - 8;
      v28 = *v12;
      if (v15 == 2 && v28 == 6)
      {
        break;
      }

      if ((v28 - 5) <= 5 && v12[8] == 1)
      {
        if (v15 == 3)
        {
          v31 = vadd_s32(vdup_n_s32(v9), 0x200000001);
          v32 = &v11[4 * v27];
          v32[1].i32[1] = v9;
          v9 += 3;
          v32[2] = v31;
          goto LABEL_33;
        }

        if (v15 == 4)
        {
          v34 = &v11[4 * v27];
          *(v34 + 4) = v9;
          *(v34 + 5) = v9 + 1;
          v9 += 2;
          goto LABEL_33;
        }
      }

      if (v15 == 2)
      {
        if (v28 == 4)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      if (v15 != 4 || v28 != 2)
      {
        goto LABEL_33;
      }

LABEL_32:
      *&v11[4 * v27 + 4] = vrev64_s32(*&v11[4 * v27 + 4]);
LABEL_33:
      if (++v7 == v8)
      {
        return a1;
      }
    }

    if (v12[8] == 1)
    {
      v29 = &v11[4 * v27];
      *(v29 + 2) = v9;
      *(v29 + 3) = v9 + 1;
      v9 += 2;
    }

LABEL_30:
    v30 = v12[8];
    if (v30 > 4 || v30 == 3)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  return a1;
}

void sub_298BC2980(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = sub_298B227A0(0);
  v4 = os_signpost_id_generate(v3);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v5 = *(a2 + 16);
    v6 = *(*(*(a2 + 48) + 40) + 4);
    if (*(a2 + 8) == 1)
    {
      v7 = "Ranges";
    }

    else
    {
      v7 = "Timestamps";
    }

    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    *buf = 134219010;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 2080;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "DecodeJob::run", "jobid=%zu, cluster=%u, kind=%s, startUnit=%llu, endUnit=%llu", buf, 0x30u);
  }

  operator new();
}

uint64_t sub_298BC2BB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  std::mutex::lock((a2 + 8));
  v7 = *(a2 + 208);
  v8 = *(a2 + 216);
  std::__sort<std::__less<unsigned long long,unsigned long long> &,unsigned long long *>();
  v9 = sub_298BC6370(*(a2 + 208), *(a2 + 216));
  if (v9 != *(a2 + 216))
  {
    v10 = *(a2 + 216);
    *(a2 + 216) = v9;
  }

  std::mutex::unlock((a2 + 8));
  v14[0] = a3[1];
  memset(&v14[1], 0, 24);
  v14[4] = 0x1000000;
  v15 = 0;
  sub_298BE7730(v13, a4, v14);
  v11 = (*(*a3 + 24))(a3);
  (*(*a3 + 48))(a3, 0, v11, a2, v13, v14);
  result = v15;
  v15 = 0;
  if (result)
  {
    return MEMORY[0x29C2945C0](result, 0x1000C8077774924);
  }

  return result;
}

void sub_298BC2D04(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v17.__m_ = (a1 + 8);
  v17.__owns_ = 1;
  std::mutex::lock((a1 + 8));
  while (1)
  {
    v6 = *(a1 + 232);
    v7 = *(a1 + 208);
    if (v6 == (*(a1 + 216) - v7) >> 3 || *(v7 + 8 * v6) > a2)
    {
      break;
    }

    std::condition_variable::wait((a1 + 72), &v17);
  }

  v8 = *(a1 + 120);
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = (v9 - 1) & (37 * a2);
    v11 = (v8 + 72 * v10);
    v12 = *v11;
    if (*v11 == a2)
    {
      goto LABEL_7;
    }

    v15 = 1;
    while (v12 != -1)
    {
      v16 = v10 + v15++;
      v10 = v16 & (v9 - 1);
      v11 = (v8 + 72 * v10);
      v12 = *v11;
      if (*v11 == a2)
      {
        goto LABEL_7;
      }
    }
  }

  v11 = (v8 + 72 * v9);
LABEL_7:
  v13 = *(v11 + 3);
  *a3 = *(v11 + 1);
  a3[1] = v13;
  v14 = *(v11 + 7);
  a3[2] = *(v11 + 5);
  a3[3] = v14;
  if (v17.__owns_)
  {
    std::mutex::unlock(v17.__m_);
  }
}

void sub_298BC2E18(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = (a1 + 144);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = &v3[*(a2 + 2)];
    *v5 = v4;
    *(v5 + 8) = 1;
  }

  v6 = *(a2 + 40);
  v15 = v6;
  v7 = *(a1 + 232);
  v8 = *(a1 + 208);
  if (v7 < (*(a1 + 216) - v8) >> 3 && v6 == *(v8 + 8 * v7))
  {
    v10 = a3;
    std::mutex::lock((a1 + 8));
    v11 = sub_298BCFF54(a1 + 120, &v15);
    v12 = v3[2];
    v13 = v3[3];
    v14 = v3[1];
    *(v11 + 8) = *v3;
    *(v11 + 56) = v13;
    *(v11 + 40) = v12;
    *(v11 + 24) = v14;
    ++*(a1 + 232);
    std::condition_variable::notify_all((a1 + 72));
    std::mutex::unlock((a1 + 8));
    a3 = v10;
  }

  *a3 = 0;
}

void sub_298BC2F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[5] = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 40);
  for (i = *(a2 + 48); v3 != i; v3 += 64)
  {
    if (*(*(v3 + 40) + 98) == 1)
    {
      *a3 = 0;
    }
  }

  if (*a3)
  {
    if ((*(a3 + 24) & 1) == 0 && *(a3 + 40) != 1)
    {
      v6 = *(a3 + 56);
      operator new();
    }

    v5 = std::generic_category();
    v19 = "Decoder.cpp";
    v20 = 259;
    v14 = ":";
    v15 = 259;
    sub_298B6CD80(&v19, &v14, v16);
    sub_298AFB090(0x4DEuLL, 0, __p);
    v13 = 260;
    v12 = __p;
    sub_298B6CD80(v16, &v12, &v17);
    v9 = ": ";
    v10 = 259;
    sub_298B6CD80(&v17, &v9, &v18);
    v7 = "not supported";
    v8 = 259;
    sub_298B6CD80(&v18, &v7, v21);
    sub_298ADDCA4(45, v5, v21);
  }

  operator new();
}

void *sub_298BC4FD8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *a1 = a2;
  v7 = *a3;
  *a3 = 0;
  a1[1] = v7;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 1) = *a4;
  a1[4] = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  *(a1 + 5) = *a5;
  a1[7] = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  a1[9] = 0;
  a1[8] = a1 + 9;
  v8 = (a1 + 8);
  a1[10] = 0;
  v9 = *a6;
  *a6 = 0;
  a1[11] = v9;
  sub_298BC2690((a1 + 12), *(a2 + 96), (*(a2 + 104) - *(a2 + 96)) >> 3);
  *(v8 + 80) = 0;
  v10 = a1[5];
  v11 = a1[6];
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      *(sub_298BD1C14(v8, *(*(v10 + 40) + 4)) + 8) = v12;
      v10 += 64;
      ++v12;
    }

    while (v10 != v11);
  }

  return a1;
}

void *sub_298BC50DC@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v18 = a3;
  result = sub_298BD9C20(*a2, &v17);
  v7 = v17;
  if (!v17)
  {
    sub_298C1901C(a1, &v16);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v9 = *(a1 + 96);
    if (v9 != *(a1 + 104))
    {
      sub_298BE7B34(*v9);
    }

    operator new();
  }

  *(a4 + 8) |= 1u;
  *a4 = v7;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BC5350(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    result = sub_298BD1D28(a1, a2, a3, a4, a5);
  }

  else
  {
    sub_298BD1E1C(a1[1], *a2, a3, a4, a5);
    result = v6 + 64;
  }

  a1[1] = result;
  return result;
}

void *sub_298BC539C(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v4 = v1;
    v5 = sub_298AE9C3C(v2);
    MEMORY[0x29C2945F0](v5, 0x1020C404CDF6F5DLL);
    return v4;
  }

  return v1;
}

uint64_t *sub_298BC53F4(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v4 = v1;
    v5 = sub_298AE9AC0(v2);
    MEMORY[0x29C2945F0](v5, 0x10A0C40616DDAE8);
    return v4;
  }

  return v1;
}

uint64_t sub_298BC544C(uint64_t result, uint64_t a2)
{
  **(result + 8) = a2;
  v2 = *(result + 40);
  v3 = *(result + 48);
  while (v2 != v3)
  {
    v4 = *(v2 + 56);
    *(*(v2 + 48) + 32) = a2;
    v5 = a2;
    result = sub_298BC0FDC(v4, a2);
    a2 = v5;
    v2 += 64;
  }

  return result;
}

void sub_298BC54A0(void *a1, void *a2)
{
  v2 = a1;
  v60 = *MEMORY[0x29EDCA608];
  v3 = a2[15];
  for (i = a2[16]; v3 != i; v2 = a1)
  {
    v10 = *v3;
    v11 = sub_298BC5924(a2, *(*v3 + 4));
    for (j = 0; j != 8; ++j)
    {
      v13 = *(v11 + 56);
      if (*(v13 + j) == 1)
      {
        v14 = (j + 8 * *(v10 + 4));
        if (*(a2[12] + 4 * v14) == -1)
        {
          if ((*(v13 + j + 144) & 1) == 0)
          {
            sub_298BC62BC(v13 + 112, j);
          }

          v15 = *(v13 + 8 * j + 152);
          v16 = *(*(v15 + 432) + 8);
          v17 = *(v15 + 360);
          if (v16)
          {
            v18 = v17 >= v16;
          }

          else
          {
            v18 = 1;
          }

          if (!v18)
          {
            v57 = 0;
            v19 = std::generic_category();
            v46 = "Decoder.cpp";
            v47 = 259;
            v44 = ":";
            v45 = 259;
            sub_298B6CD80(&v46, &v44, v48);
            sub_298AFB090(0x69AuLL, 0, v41);
            v43 = 260;
            v42 = v41;
            sub_298B6CD80(v48, &v42, v49);
            v39 = ": ";
            v40 = 259;
            sub_298B6CD80(v49, &v39, v50);
            v37 = "Unmapped global core ID ";
            v38 = 259;
            sub_298B6CD80(v50, &v37, v51);
            sub_298AFB090(v14, 0, v34);
            v36 = 260;
            v35 = v34;
            sub_298B6CD80(v51, &v35, v52);
            v32 = " not expected to have ";
            v33 = 259;
            sub_298B6CD80(v52, &v32, v53);
            sub_298AFB090(v16, 0, v29);
            v31 = 260;
            v30 = v29;
            sub_298B6CD80(v53, &v30, v54);
            v27 = " ranges & ";
            v28 = 259;
            sub_298B6CD80(v54, &v27, v55);
            sub_298AFB090(v17, 0, __p);
            v26 = 260;
            v25 = __p;
            sub_298B6CD80(v55, &v25, buf);
            v22 = " gaps";
            v23 = 259;
            sub_298B6CD80(buf, &v22, &v56);
            sub_298ADDCA4(45, v19, &v56);
          }
        }
      }
    }

    ++v3;
  }

  if (sub_298B21768(0, 1, "abandoned-coreid-error"))
  {
    *v2 = 0;
  }

  else
  {
    v21 = 0;
    sub_298B851B0(&v21, &v56);
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v6 = sub_298B227A0(2);
    v7 = sub_298B22840(2);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = &v56;
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v56.__r_.__value_.__r.__words[0];
      }

      *buf = 136446210;
      v59 = v8;
      _os_log_impl(&dword_298AD8000, v6, v7, "%{public}s", buf, 0xCu);
    }

    *v2 = 0;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BC5924(void *a1, unsigned int a2)
{
  v2 = a1[9];
  if (!v2)
  {
LABEL_5:
    abort();
  }

  while (1)
  {
    while (1)
    {
      v3 = *(v2 + 7);
      if (v3 <= a2)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    if (v3 >= a2)
    {
      break;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  v4 = *(v2 + 8);
  v5 = a1[5];
  if (v4 >= (a1[6] - v5) >> 6)
  {
    sub_298ADDDA0();
  }

  return v5 + (v4 << 6);
}

uint64_t sub_298BC5984@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  *a1 = 0;
  v5 = *a2;
  v6 = v3;
  *a2 = 0;
  sub_298ADE6E8(&v6, &v5, a3);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t sub_298BC5A18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_298BC5C9C(&v23, a1);
  if (!v23)
  {
    goto LABEL_2;
  }

  v9 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v9;
  v10 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v10;
  sub_298AE8460(v20, a2 + 64);
  *&v20[40] = *(a2 + 104);
  v21 = *(a2 + 120);
  sub_298BC5F20(a1, v19, &v22);
  sub_298AE88F0(v20);
  v11 = v22;
  if (v22)
  {
    v17 = v23;
    v18 = v22;
    v22 = 0;
    v23 = 0;
    sub_298BC5984(&v18, &v17, a3);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  else
  {
    v15 = v23;
    v23 = 0;
    sub_298B851B0(&v15, &__p);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v12 = sub_298B227A0(2);
    v13 = sub_298B22840(2);
    if (os_log_type_enabled(v12, v13))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446210;
      v25 = p_p;
      _os_log_impl(&dword_298AD8000, v12, v13, "%{public}s", buf, 0xCu);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  if (v11)
  {
    v6 = 0;
  }

  else
  {
LABEL_2:
    v6 = 1;
  }

  result = v23;
  if (v23)
  {
    result = (*(*v23 + 8))(v23);
  }

  if (v6)
  {
    *a3 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BC5C9C(void *a1, void *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v29[0] = 0;
  v30 = 0;
  if ((*(v3 + 296) & 1) == 0)
  {
    v4 = std::generic_category();
    v24 = "Decoder.cpp";
    v25 = 259;
    v22 = ":";
    v23 = 259;
    sub_298B6CD80(&v24, &v22, v26);
    sub_298AFB090(0x6B7uLL, 0, __p);
    v21 = 260;
    v20 = __p;
    sub_298B6CD80(v26, &v20, v27);
    v17 = ": ";
    v18 = 259;
    sub_298B6CD80(v27, &v17, v28);
    v15 = "No decoded trace available";
    v16 = 259;
    sub_298B6CD80(v28, &v15, buf);
    sub_298ADDCA4(45, v4, buf);
  }

  sub_298BCD348(v29, (v3 + 120));
  v30 = 1;
  v8 = sub_298B227A0(2);
  v9 = os_signpost_id_generate(v8);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Decoder::load", &unk_298EC00B5, buf, 2u);
  }

  v31[0] = &unk_2A1F1E8B0;
  v31[1] = v9;
  v31[2] = v8;
  v31[3] = v31;
  sub_298AE98B0(buf, v31);
  v33 = v9;
  sub_298B9803C(v31);
  *a1 = 0;
  v10 = *(*a2 + 96);
  v11 = *(*a2 + 104);
  while (v10 != v11)
  {
    v12 = *v10++;
    v27[0] = v12;
    v13 = sub_298BC5924(a2, *(v12 + 4));
    v14 = *(v13 + 56);
    v28[0] = v13;
    v28[1] = v29;
    v28[2] = v27;
    v28[3] = a2;
    v28[4] = a1;
    sub_298B06C6C(v14 + 112, sub_298BD224C, v28);
  }

  sub_298AE9948(buf);
  result = sub_298BCE578(v29);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BC5F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = sub_298B227A0(2);
  v7 = os_signpost_id_generate(v6);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Decoder::decode", &unk_298EC00B5, buf, 2u);
  }

  v11[0] = &unk_2A1F1E8F8;
  v11[1] = v7;
  v11[2] = v6;
  v11[3] = v11;
  sub_298AE98B0(buf, v11);
  v13 = v7;
  sub_298B9803C(v11);
  sub_298BD9C20(*(a1 + 8), a3);
  if (!*a3)
  {
    sub_298BC2F20(&v10, a1, a2);
  }

  result = sub_298AE9948(buf);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BC6108(uint64_t a1)
{
  sub_298BCE798(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298BC6154(uint64_t a1)
{
  sub_298BCE798(a1 - 8);

  JUMPOUT(0x29C2945F0);
}

void sub_298BC61A4(uint64_t a1)
{
  sub_298BCE798(a1 - 16);

  JUMPOUT(0x29C2945F0);
}

void sub_298BC61FC(uint64_t a1)
{
  sub_298BCE798(a1 - 24);

  JUMPOUT(0x29C2945F0);
}

void sub_298BC6248(uint64_t a1)
{
  sub_298BCE7F0(a1);

  JUMPOUT(0x29C2945F0);
}

_BYTE *sub_298BC6298(_BYTE *result)
{
  result[40] = 0;
  result[48] = 0;
  result[56] = 0;
  result[64] = 0;
  result[72] = 0;
  result[80] = 0;
  result[88] = 0;
  result[96] = 0;
  return result;
}

uint64_t sub_298BC62BC(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_298AE761C();
    sub_298BC6310();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_298BC6328(uint64_t a1@<X8>)
{
  *(a1 + 64) &= ~1u;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
}

uint64_t *sub_298BC6370(uint64_t *a1, uint64_t *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_8;
      }
    }

    v7 = a2;
LABEL_8:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

void sub_298BC63FC(uint64_t a1)
{
  sub_298BC9418(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298BC6434(void *a1@<X0>, void *a2@<X8>)
{
  v16[4] = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  while (v5 != v4)
  {
    sub_298BC9730(a1, v5);
    v5 += 64;
  }

  v6 = a1[31];
  if (v6 != a1 + 32)
  {
    v15 = *(v6 + 32);
    v7 = sub_298BC8C88((a1 + 35), &v15) + 2;
    v8 = *(v6 + 56);
    if (v8 != *(v6 + 64))
    {
      v9 = *v8;
      v10 = **&v7[2 * *(*v8 + 80)];
      v16[0] = &unk_2A1F1E608;
      v16[1] = a1;
      v16[2] = v9;
      v16[3] = v16;
      sub_298BC98A8(&v14, v10, v16);
    }

    v11 = a1[34];
    operator new();
  }

  (*(*a1[34] + 24))(a1[34]);
  sub_298BC95F8(a1);
  sub_298BC96E4(a2, a1);
  v12 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BC6718(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *(result + 248);
  v4 = (result + 256);
  if (v3 != (result + 256))
  {
    v7 = v3[7];
    kk = v3[8];
    if (v7 != kk)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v10 = v3[10];
      for (i = v3[11]; v10 != i; result = a2(a3, v12))
      {
        v12 = *v10++;
      }

      v13 = v3[13];
      for (j = v3[14]; v13 != j; result = a2(a3, v15))
      {
        v15 = *v13++;
      }

      v16 = v3[16];
      for (k = v3[17]; v16 != k; result = a2(a3, v18))
      {
        v18 = *v16++;
      }

      v19 = v3[19];
      for (m = v3[20]; v19 != m; result = a2(a3, v21))
      {
        v21 = *v19++;
      }

      v22 = v3[22];
      for (n = v3[23]; v22 != n; result = a2(a3, v24))
      {
        v24 = *v22++;
      }

      v25 = v3[25];
      for (ii = v3[26]; v25 != ii; result = a2(a3, v27))
      {
        v27 = *v25++;
      }

      v28 = v3[28];
      for (jj = v3[29]; v28 != jj; result = a2(a3, v30))
      {
        v30 = *v28++;
      }

      v31 = v3[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v3[2];
          v33 = *v32 == v3;
          v3 = v32;
        }

        while (!v33);
      }

      v3 = v32;
      if (v32 == v4)
      {
        break;
      }

      v7 = v32[7];
      for (kk = v32[8]; v7 != kk; result = a2(a3, v9))
      {
LABEL_6:
        v9 = *v7++;
      }
    }
  }

  return result;
}

uint64_t sub_298BC68B0(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = a1 - 8;
  v4 = 26;
  do
  {
    v5 = v4 * 8 - 24;
    v6 = v2[v4 - 3];
    if (v6)
    {
      v7 = *(v3 + v4 * 8);
      v8 = v2[v4 - 3];
      if (v7 != v6)
      {
        do
        {
          sub_298BC6980(--v7);
        }

        while (v7 != v6);
        v8 = *(v2 + v5);
      }

      *(v3 + v4 * 8) = v6;
      operator delete(v8);
    }

    v4 -= 3;
  }

  while (v5 != 16);
  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v9)
  {
    MEMORY[0x29C2945F0](v9, 0x10A1C40E3DEEBE3);
  }

  return sub_298BC69CC(v2, 0);
}

uint64_t sub_298BC6980(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_298BC86C0(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298BC69CC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298BCE7F0(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298BC6A18(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 24);
  *(v1 + 24) = 0;
  if (v2)
  {
    v4 = v1;
    v5 = sub_298AE9C3C(v2);
    MEMORY[0x29C2945F0](v5, 0x1020C404CDF6F5DLL);
    return v4;
  }

  return v1;
}

void sub_298BC6A70(uint64_t a1)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    v4 = sub_298AE9C3C(v3);
    MEMORY[0x29C2945F0](v4, 0x1020C404CDF6F5DLL);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298BC6B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 3) | (2 * *(a2 + 2));
  v7 = *(*(a1 + 24) + v6);
  if (v7 == 1)
  {
    if (*(a1 + 48) == 1)
    {
      v8 = sub_298B9CDFC();
      v9 = v8[4];
      if (v8[3] - v9 > 7uLL)
      {
        *v9 = 0xA3A444C4F203E3ELL;
        v8[4] += 8;
      }

      else
      {
        sub_298B9BCEC(v8, ">> OLD:\n", 8uLL);
      }
    }

    result = sub_298BC2340(*(*(a1 + 16) + 56), a2, *(a1 + 16));
    if (*(a1 + 48) == 1)
    {
      result = sub_298B9CDFC();
      v12 = *(result + 32);
      if (*(result + 24) - v12 > 7uLL)
      {
        *v12 = 0xA3A57454E203E3ELL;
        *(result + 32) += 8;
        v11 = *(a1 + 24);
        if (*a2)
        {
          goto LABEL_12;
        }

        goto LABEL_44;
      }

      result = sub_298B9BCEC(result, ">> NEW:\n", 8uLL);
    }

    v11 = *(a1 + 24);
    if (*a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = sub_298BC2340(*(*(a1 + 16) + 56), a2, *(a1 + 16));
    *a3 = 0;
    v11 = *(a1 + 24);
    if (*a2)
    {
LABEL_12:
      if (*(a2 + 1) != 1 || (*(a2 + 40) & 1) != 0)
      {
        goto LABEL_39;
      }

      if (*(v11 + 40))
      {
        v13 = *(v11 + 48);
        if (!v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        LODWORD(v52) = 0;
        v41 = *(v11 + 32);
        if (!v41)
        {
          goto LABEL_131;
        }

        (*(*v41 + 48))(v41, &v52);
        v13 = *(v11 + 48);
        if (!v13)
        {
LABEL_17:
          if (*(v11 + 41))
          {
            v14 = *(v11 + 56);
            if (!v14)
            {
              goto LABEL_20;
            }
          }

          else
          {
            LODWORD(v52) = 1;
            v42 = *(v11 + 32);
            if (!v42)
            {
              goto LABEL_131;
            }

            (*(*v42 + 48))(v42, &v52);
            v14 = *(v11 + 56);
            if (!v14)
            {
LABEL_20:
              if (*(v11 + 42))
              {
                v15 = *(v11 + 64);
                if (!v15)
                {
                  goto LABEL_23;
                }
              }

              else
              {
                LODWORD(v52) = 2;
                v44 = *(v11 + 32);
                if (!v44)
                {
                  goto LABEL_131;
                }

                (*(*v44 + 48))(v44, &v52);
                v15 = *(v11 + 64);
                if (!v15)
                {
LABEL_23:
                  if (*(v11 + 43))
                  {
                    v16 = *(v11 + 72);
                    if (!v16)
                    {
                      goto LABEL_26;
                    }
                  }

                  else
                  {
                    LODWORD(v52) = 3;
                    v45 = *(v11 + 32);
                    if (!v45)
                    {
                      goto LABEL_131;
                    }

                    (*(*v45 + 48))(v45, &v52);
                    v16 = *(v11 + 72);
                    if (!v16)
                    {
LABEL_26:
                      if (*(v11 + 44))
                      {
                        v17 = *(v11 + 80);
                        if (!v17)
                        {
                          goto LABEL_29;
                        }
                      }

                      else
                      {
                        LODWORD(v52) = 4;
                        v46 = *(v11 + 32);
                        if (!v46)
                        {
                          goto LABEL_131;
                        }

                        (*(*v46 + 48))(v46, &v52);
                        v17 = *(v11 + 80);
                        if (!v17)
                        {
LABEL_29:
                          if (*(v11 + 45))
                          {
                            v18 = *(v11 + 88);
                            if (!v18)
                            {
                              goto LABEL_32;
                            }
                          }

                          else
                          {
                            LODWORD(v52) = 5;
                            v47 = *(v11 + 32);
                            if (!v47)
                            {
                              goto LABEL_131;
                            }

                            (*(*v47 + 48))(v47, &v52);
                            v18 = *(v11 + 88);
                            if (!v18)
                            {
LABEL_32:
                              if (*(v11 + 46))
                              {
                                v19 = *(v11 + 96);
                                if (!v19)
                                {
                                  goto LABEL_35;
                                }
                              }

                              else
                              {
                                LODWORD(v52) = 6;
                                v48 = *(v11 + 32);
                                if (!v48)
                                {
                                  goto LABEL_131;
                                }

                                (*(*v48 + 48))(v48, &v52);
                                v19 = *(v11 + 96);
                                if (!v19)
                                {
LABEL_35:
                                  if (*(v11 + 47))
                                  {
                                    v20 = *(v11 + 104);
                                    if (!v20)
                                    {
LABEL_38:
                                      v52 = a2;
                                      result = sub_298B06C6C(v11 + 112, sub_298BCE9D0, &v52);
LABEL_39:
                                      v21 = *(a2 + 3) | (2 * *(a2 + 2));
                                      if (*(v11 + v21) != 1 || (*(a2 + 16) - 1) > 2)
                                      {
                                        goto LABEL_70;
                                      }

                                      if (*(v11 + v21 + 40))
                                      {
                                        goto LABEL_42;
                                      }

                                      v51 = *(a2 + 3) | (2 * *(a2 + 2));
                                      LODWORD(v52) = *(a2 + 3) | (2 * *(a2 + 2));
                                      v43 = *(v11 + 32);
                                      if (v43)
                                      {
                                        (*(*v43 + 48))(v43, &v52);
                                        v21 = v51;
LABEL_42:
                                        result = (*(**(v11 + 8 * v21 + 48) + 24))(*(v11 + 8 * v21 + 48), a2, a1 + 8);
                                        goto LABEL_70;
                                      }

LABEL_131:
                                      v50 = sub_298AE761C();
                                      return sub_298BC7604(v50);
                                    }
                                  }

                                  else
                                  {
                                    LODWORD(v52) = 7;
                                    v49 = *(v11 + 32);
                                    if (!v49)
                                    {
                                      goto LABEL_131;
                                    }

                                    (*(*v49 + 48))(v49, &v52);
                                    v20 = *(v11 + 104);
                                    if (!v20)
                                    {
                                      goto LABEL_38;
                                    }
                                  }

                                  (*(*v20 + 16))(v20, "Observed loss indicator", 23);
                                  goto LABEL_38;
                                }
                              }

                              (*(*v19 + 16))(v19, "Observed loss indicator", 23);
                              goto LABEL_35;
                            }
                          }

                          (*(*v18 + 16))(v18, "Observed loss indicator", 23);
                          goto LABEL_32;
                        }
                      }

                      (*(*v17 + 16))(v17, "Observed loss indicator", 23);
                      goto LABEL_29;
                    }
                  }

                  (*(*v16 + 16))(v16, "Observed loss indicator", 23);
                  goto LABEL_26;
                }
              }

              (*(*v15 + 16))(v15, "Observed loss indicator", 23);
              goto LABEL_23;
            }
          }

          (*(*v14 + 16))(v14, "Observed loss indicator", 23);
          goto LABEL_20;
        }
      }

      (*(*v13 + 16))(v13, "Observed loss indicator", 23);
      goto LABEL_17;
    }
  }

LABEL_44:
  if (*(a2 + 16))
  {
    goto LABEL_45;
  }

  v30 = *(a2 + 32);
  if (v30)
  {
    v31 = *(a2 + 24);
    v32 = 2 * v30;
    while (!*v31)
    {
      ++v31;
      v32 -= 2;
      if (!v32)
      {
        goto LABEL_70;
      }
    }

LABEL_45:
    if (*(v11 + 40))
    {
      v22 = *(v11 + 48);
      if (!v22)
      {
        goto LABEL_48;
      }
    }

    else
    {
      LODWORD(v52) = 0;
      v33 = *(v11 + 32);
      if (!v33)
      {
        goto LABEL_131;
      }

      (*(*v33 + 48))(v33, &v52);
      v22 = *(v11 + 48);
      if (!v22)
      {
LABEL_48:
        if (*(v11 + 41))
        {
          v23 = *(v11 + 56);
          if (!v23)
          {
            goto LABEL_51;
          }
        }

        else
        {
          LODWORD(v52) = 1;
          v34 = *(v11 + 32);
          if (!v34)
          {
            goto LABEL_131;
          }

          (*(*v34 + 48))(v34, &v52);
          v23 = *(v11 + 56);
          if (!v23)
          {
LABEL_51:
            if (*(v11 + 42))
            {
              v24 = *(v11 + 64);
              if (!v24)
              {
                goto LABEL_54;
              }
            }

            else
            {
              LODWORD(v52) = 2;
              v35 = *(v11 + 32);
              if (!v35)
              {
                goto LABEL_131;
              }

              (*(*v35 + 48))(v35, &v52);
              v24 = *(v11 + 64);
              if (!v24)
              {
LABEL_54:
                if (*(v11 + 43))
                {
                  v25 = *(v11 + 72);
                  if (!v25)
                  {
                    goto LABEL_57;
                  }
                }

                else
                {
                  LODWORD(v52) = 3;
                  v36 = *(v11 + 32);
                  if (!v36)
                  {
                    goto LABEL_131;
                  }

                  (*(*v36 + 48))(v36, &v52);
                  v25 = *(v11 + 72);
                  if (!v25)
                  {
LABEL_57:
                    if (*(v11 + 44))
                    {
                      v26 = *(v11 + 80);
                      if (!v26)
                      {
                        goto LABEL_60;
                      }
                    }

                    else
                    {
                      LODWORD(v52) = 4;
                      v37 = *(v11 + 32);
                      if (!v37)
                      {
                        goto LABEL_131;
                      }

                      (*(*v37 + 48))(v37, &v52);
                      v26 = *(v11 + 80);
                      if (!v26)
                      {
LABEL_60:
                        if (*(v11 + 45))
                        {
                          v27 = *(v11 + 88);
                          if (!v27)
                          {
                            goto LABEL_63;
                          }
                        }

                        else
                        {
                          LODWORD(v52) = 5;
                          v38 = *(v11 + 32);
                          if (!v38)
                          {
                            goto LABEL_131;
                          }

                          (*(*v38 + 48))(v38, &v52);
                          v27 = *(v11 + 88);
                          if (!v27)
                          {
LABEL_63:
                            if (*(v11 + 46))
                            {
                              v28 = *(v11 + 96);
                              if (!v28)
                              {
                                goto LABEL_66;
                              }
                            }

                            else
                            {
                              LODWORD(v52) = 6;
                              v39 = *(v11 + 32);
                              if (!v39)
                              {
                                goto LABEL_131;
                              }

                              (*(*v39 + 48))(v39, &v52);
                              v28 = *(v11 + 96);
                              if (!v28)
                              {
LABEL_66:
                                if (*(v11 + 47))
                                {
                                  v29 = *(v11 + 104);
                                  if (!v29)
                                  {
LABEL_69:
                                    v52 = a2;
                                    result = sub_298B06C6C(v11 + 112, sub_298BCE9D0, &v52);
                                    goto LABEL_70;
                                  }
                                }

                                else
                                {
                                  LODWORD(v52) = 7;
                                  v40 = *(v11 + 32);
                                  if (!v40)
                                  {
                                    goto LABEL_131;
                                  }

                                  (*(*v40 + 48))(v40, &v52);
                                  v29 = *(v11 + 104);
                                  if (!v29)
                                  {
                                    goto LABEL_69;
                                  }
                                }

                                (*(*v29 + 16))(v29, "Invalid unit", 12);
                                goto LABEL_69;
                              }
                            }

                            (*(*v28 + 16))(v28, "Invalid unit", 12);
                            goto LABEL_66;
                          }
                        }

                        (*(*v27 + 16))(v27, "Invalid unit", 12);
                        goto LABEL_63;
                      }
                    }

                    (*(*v26 + 16))(v26, "Invalid unit", 12);
                    goto LABEL_60;
                  }
                }

                (*(*v25 + 16))(v25, "Invalid unit", 12);
                goto LABEL_57;
              }
            }

            (*(*v24 + 16))(v24, "Invalid unit", 12);
            goto LABEL_54;
          }
        }

        (*(*v23 + 16))(v23, "Invalid unit", 12);
        goto LABEL_51;
      }
    }

    (*(*v22 + 16))(v22, "Invalid unit", 12);
    goto LABEL_48;
  }

LABEL_70:
  *(a1 + 32) = *(a2 + 40);
  *(a1 + 40) = 1;
  if (v7 && (*(a1 + 64) & 1) == 0 && v6 == *(a1 + 52))
  {
    result = sub_298BC77DC(a1);
    if (result)
    {
      *(a1 + 56) = *(a2 + 40);
      *(a1 + 64) = 1;
    }
  }

  *a3 = 0;
  return result;
}

void sub_298BC760C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3) | (2 * *(a2 + 2));
  v5 = *(a1 + 24);
  if ((*(v5 + v4 + 144) & 1) == 0)
  {
    v7 = a2;
    v8 = a3;
    sub_298BC62BC(v5 + 112, *(a2 + 3) | (2 * *(a2 + 2)));
    a2 = v7;
    a3 = v8;
  }

  v6 = *(v5 + 8 * v4 + 152);

  sub_298BFE5CC(v6, a2, a3, a4);
}

void *sub_298BC7684(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    sub_298AE9C3C(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void sub_298BC76D0(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    v4 = sub_298AE9C3C(v3);
    MEMORY[0x29C2945F0](v4, 0x1020C404CDF6F5DLL);
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298BC7764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3) | (2 * *(a2 + 2));
  v5 = *(a1 + 16);
  if ((*(v5 + v4 + 144) & 1) == 0)
  {
    v7 = a2;
    v8 = a3;
    sub_298BC62BC(v5 + 112, *(a2 + 3) | (2 * *(a2 + 2)));
    a2 = v7;
    a3 = v8;
  }

  v6 = *(v5 + 8 * v4 + 152);

  sub_298BFE5CC(v6, a2, a3, a4);
}

BOOL sub_298BC77DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 52);
  v4 = *(a1 + 52);
  if (*(v2 + v3 + 144))
  {
    v5 = *(a1 + 52);
  }

  else
  {
    sub_298BC62BC(v2 + 112, v4);
    v5 = *(a1 + 52);
    v4 = *(a1 + 52);
  }

  v6 = *(v2 + 8 * v3 + 152);
  v7 = *(*(a1 + 16) + 56);
  if ((*(v7 + v5 + 144) & 1) == 0)
  {
    sub_298BC62BC(v7 + 112, v4);
  }

  v8 = *(v7 + 8 * v5 + 152);
  v9 = sub_298BFC52C(v6 + 64, v8 + 64, (v6 + 24));
  if (v9 || (v9 = sub_298C02DE8(v6 + 336, v8 + 336, v6 + 24)) != 0)
  {
    v10 = v9;
    goto LABEL_7;
  }

  if (!sub_298C0D1DC(*(v6 + 344)))
  {
    goto LABEL_19;
  }

  v19 = *(v6 + 344);
  if (sub_298C0D1DC(v19))
  {
    v20 = **(v19 + 770200);
  }

  else
  {
    v20 = 0;
  }

  if (*(v6 + 256) == v20)
  {
    v10 = 14;
    goto LABEL_7;
  }

  if (*(v6 + 272))
  {
    v10 = 13;
  }

  else
  {
LABEL_19:
    v10 = 0;
  }

LABEL_7:
  if (*(a1 + 48) == 1)
  {
    v11 = sub_298B9CDFC();
    v12 = sub_298B00584(v11, ">> core ");
    v13 = sub_298B9B00C(v12, *(a1 + 52));
    v14 = sub_298B00584(v13, ": ");
    v15 = sub_298BFBA74(v10);
    v17 = sub_298B63DC4(v14, v15, v16);
    sub_298B00584(v17, "\n");
  }

  return v10 == 0;
}

uint64_t sub_298BC7958(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 52);
  v3 = *(a1 + 52);
  if (*(v1 + v2 + 144))
  {
    v4 = *(a1 + 52);
  }

  else
  {
    v11 = a1;
    sub_298BC62BC(v1 + 112, v3);
    a1 = v11;
    v4 = *(v11 + 52);
    v3 = v4;
  }

  v5 = *(v1 + 8 * v2 + 152);
  v6 = *(*(a1 + 16) + 56);
  if ((*(v6 + v4 + 144) & 1) == 0)
  {
    sub_298BC62BC(v6 + 112, v3);
  }

  v7 = *(v6 + 8 * v4 + 152);
  result = sub_298BFC52C(v5 + 64, v7 + 64, (v5 + 24));
  if (!result)
  {
    result = sub_298C02DE8(v5 + 336, v7 + 336, v5 + 24);
    if (!result)
    {
      if (!sub_298C0D1DC(*(v5 + 344)))
      {
        return 0;
      }

      v9 = *(v5 + 344);
      if (sub_298C0D1DC(v9))
      {
        v10 = **(v9 + 770200);
      }

      else
      {
        v10 = 0;
      }

      if (*(v5 + 256) == v10)
      {
        return 14;
      }

      if (*(v5 + 272))
      {
        return 13;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_298BC7A6C(uint64_t *a1, uint64_t a2)
{
  v5 = a2;
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v3 >= *(v2 + 16))
  {
    result = sub_298BCE848(v2, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(v2 + 8) = result;
  return result;
}

void sub_298BC7AC0(uint64_t a1)
{
  sub_298BC86C0(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298BC7AF8(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 80);
  v48 = 3;
  *&v49 = v4;
  sub_298B89CC0(a2, "Core", 4uLL);
  sub_298B891F0(a2, &v48);
  --*(a2 + 8);
  if (v48 == 8)
  {
    sub_298B8A314(&v49);
  }

  else if (v48 == 7)
  {
    sub_298B8A370(&v49);
  }

  else if (v48 == 6 && SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  v5 = *(a1 + 136);
  v48 = 1;
  LOBYTE(v49) = v5;
  sub_298B89CC0(a2, "Fixup", 5uLL);
  sub_298B891F0(a2, &v48);
  --*(a2 + 8);
  if (v48 == 8)
  {
    sub_298B8A314(&v49);
  }

  else if (v48 == 7)
  {
    sub_298B8A370(&v49);
  }

  else if (v48 == 6 && SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  v6 = 40;
  if (*(a1 + 152))
  {
    v6 = 144;
  }

  v7 = *(a1 + v6);
  v48 = 4;
  *&v49 = v7;
  sub_298B89CC0(a2, "RevisedAssignedEnd", 0x12uLL);
  sub_298B891F0(a2, &v48);
  --*(a2 + 8);
  if (v48 == 8)
  {
    sub_298B8A314(&v49);
  }

  else if (v48 == 7)
  {
    sub_298B8A370(&v49);
  }

  else if (v48 == 6 && SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  v8 = *(a1 + 72);
  v48 = 1;
  LOBYTE(v49) = v8;
  sub_298B89CC0(a2, "Abandoned", 9uLL);
  sub_298B891F0(a2, &v48);
  --*(a2 + 8);
  if (v48 != 8)
  {
    if (v48 == 7)
    {
      sub_298B8A370(&v49);
    }

    else if (v48 == 6 && SHIBYTE(v50) < 0)
    {
      operator delete(v49);
      if (*(a1 + 72) != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_32;
    }

    if (*(a1 + 72) != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  sub_298B8A314(&v49);
  if (*(a1 + 72) != 1)
  {
    goto LABEL_41;
  }

LABEL_32:
  sub_298BBB6E0(&v48, *(a1 + 56), *(a1 + 64));
  sub_298B89CC0(a2, "AbandonmentReason", 0x11uLL);
  sub_298B891F0(a2, &v48);
  --*(a2 + 8);
  if (v48 != 8)
  {
    if (v48 == 7)
    {
      sub_298B8A370(&v49);
      goto LABEL_41;
    }

    if (v48 == 6 && SHIBYTE(v50) < 0)
    {
      operator delete(v49);
      if (*(a1 + 288) != 1)
      {
        goto LABEL_73;
      }

      goto LABEL_42;
    }

LABEL_41:
    if (*(a1 + 288) != 1)
    {
      goto LABEL_73;
    }

    goto LABEL_42;
  }

  sub_298B8A314(&v49);
  if (*(a1 + 288) != 1)
  {
    goto LABEL_73;
  }

LABEL_42:
  if ((*(a1 + 272) & 1) == 0)
  {
    v11 = *(a1 + 280) - 1;
    if (v11 > 0xD)
    {
      v13 = "Synced";
      v12 = 6;
    }

    else
    {
      v12 = qword_298D1B0E8[v11];
      v13 = off_29EEB60F8[v11];
    }

    *&v41 = "unsynced: ";
    v43 = 259;
    v40 = 261;
    v39[0] = v13;
    v39[1] = v12;
    sub_298B6CD80(&v41, v39, &v48);
    sub_298B996A4(&v48, __p);
    v51 = 6;
    if (v45 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if (v45 >= 0)
    {
      v15 = SHIBYTE(v45);
    }

    else
    {
      v15 = __p[1];
    }

    if (!sub_298B88E98(v14, v15, 0))
    {
      if (v45 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      if (v45 >= 0)
      {
        v36 = SHIBYTE(v45);
      }

      else
      {
        v36 = __p[1];
      }

      sub_298B88F28(v35, v36, &v46);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v46;
      v45 = v47;
    }

    v52 = *__p;
    v53 = v45;
    __p[1] = 0;
    v45 = 0;
    __p[0] = 0;
    sub_298B89CC0(a2, "SyncUnit", 8uLL);
    sub_298B891F0(a2, &v51);
    --*(a2 + 8);
    if (v51 != 8)
    {
      if (v51 == 7)
      {
        sub_298B8A370(&v52);
      }

      else if (v51 == 6 && SHIBYTE(v53) < 0)
      {
        operator delete(v52);
        if ((SHIBYTE(v45) & 0x80000000) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_69;
      }

      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

    sub_298B8A314(&v52);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_69:
    v10 = __p[0];
    goto LABEL_70;
  }

  v9 = *(a1 + 264);
  v48 = 4;
  *&v49 = v9;
  sub_298B89CC0(a2, "SyncUnit", 8uLL);
  sub_298B891F0(a2, &v48);
  --*(a2 + 8);
  if (v48 == 8)
  {
    sub_298B8A314(&v49);
  }

  else
  {
    if (v48 == 7)
    {
      sub_298B8A370(&v49);
      goto LABEL_73;
    }

    if (v48 == 6 && SHIBYTE(v50) < 0)
    {
      v10 = v49;
LABEL_70:
      operator delete(v10);
    }
  }

LABEL_73:
  v16 = *(a1 + 96);
  v17 = (v16 + 32);
  v18 = *(v16 + 40);
  v19 = 40;
  if (*(a1 + 152))
  {
    v19 = 144;
  }

  v20 = (a1 + v19);
  if (v18)
  {
    v21 = v17;
  }

  else
  {
    v21 = v20;
  }

  v22 = *v21;
  v48 = 4;
  *&v49 = v22;
  sub_298B89CC0(a2, "LastParsedUnit", 0xEuLL);
  sub_298B891F0(a2, &v48);
  --*(a2 + 8);
  if (v48 == 8)
  {
    sub_298B8A314(&v49);
  }

  else if (v48 == 7)
  {
    sub_298B8A370(&v49);
  }

  else if (v48 == 6 && SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  v23 = *(a1 + 96);
  v24 = (v23 + 32);
  v25 = *(v23 + 40);
  v26 = 40;
  if (*(a1 + 152))
  {
    v26 = 144;
  }

  v27 = (a1 + v26);
  if (v25)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  sub_298BC8800(v37, *v28 - *(a1 + 40), *(a1 + 40) - *(a1 + 32));
  v48 = 6;
  if (v38 >= 0)
  {
    v29 = v37;
  }

  else
  {
    v29 = v37[0];
  }

  if (v38 >= 0)
  {
    v30 = SHIBYTE(v38);
  }

  else
  {
    v30 = v37[1];
  }

  if (!sub_298B88E98(v29, v30, 0))
  {
    if (v38 >= 0)
    {
      v33 = v37;
    }

    else
    {
      v33 = v37[0];
    }

    if (v38 >= 0)
    {
      v34 = SHIBYTE(v38);
    }

    else
    {
      v34 = v37[1];
    }

    sub_298B88F28(v33, v34, &v41);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[0]);
    }

    *v37 = v41;
    v38 = v42;
  }

  v49 = *v37;
  v50 = v38;
  v37[1] = 0;
  v38 = 0;
  v37[0] = 0;
  sub_298B89CC0(a2, "ExtraUnitsParsedForSync", 0x17uLL);
  sub_298B891F0(a2, &v48);
  --*(a2 + 8);
  if (v48 == 8)
  {
    sub_298B8A314(&v49);
  }

  else if (v48 == 7)
  {
    sub_298B8A370(&v49);
  }

  else if (v48 == 6 && SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  v31 = *(a1 + 120);
  v48 = 1;
  LOBYTE(v49) = v31;
  sub_298B89CC0(a2, "PathologicalLookahead", 0x15uLL);
  sub_298B891F0(a2, &v48);
  --*(a2 + 8);
  if (v48 == 8)
  {
    sub_298B8A314(&v49);
  }

  else if (v48 == 7)
  {
    sub_298B8A370(&v49);
  }

  else if (v48 == 6 && SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  v32 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BC82F8(uint64_t a1, char a2)
{
  sub_298BC0FDC(*(*(a1 + 48) + 56), a2);
  *(*(*(a1 + 48) + 48) + 32) = a2;
  v4 = *(a1 + 96);
  *(v4 + 48) = a2;
  v5 = *(v4 + 24);

  return sub_298BC0FDC(v5, a2);
}

uint64_t sub_298BC8354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 112) == 1)
  {
    sub_298BC82F8(a1, *(a2 + 104) == *(a1 + 16));
    if (*(a2 + 112))
    {
      v6 = *(a1 + 136);
      v7 = sub_298B9CDFC();
      v8 = sub_298B00584(v7, "decodeAssignedInterval: job=");
      v9 = sub_298B9B00C(v8, *(a1 + 16));
      v10 = sub_298B00584(v9, " ");
      if (v6)
      {
        v11 = 5;
      }

      else
      {
        v11 = 6;
      }

      if (v6)
      {
        v12 = "fixup";
      }

      else
      {
        v12 = "ranges";
      }

      v13 = sub_298B63DC4(v10, v12, v11);
      sub_298B00584(v13, "\n");
    }
  }

  v14 = *(a1 + 48);
  v15 = *(v14 + 48);
  v16 = 32;
  if (*(a1 + 136))
  {
    v16 = 128;
  }

  v17 = *(a1 + v16);
  v18 = 40;
  if (*(a1 + 152))
  {
    v18 = 144;
  }

  v19 = *(a1 + v18);
  v20 = *(a1 + 104);
  v21 = *(a1 + 160);
  result = (*(*v15 + 48))(*(v14 + 48), v17, v19);
  if (!*a3)
  {
    v23 = *(a1 + 96);
    if (sub_298BC77DC(v23))
    {
      *(v23 + 56) = v19;
      *(v23 + 64) = 1;
    }

    v24 = *(a1 + 88) + v19;
    v25 = (*(*v15 + 24))(v15);
    if (v25 < v24)
    {
      v24 = v25;
    }

    result = (*(*v15 + 24))(v15);
    if (v19 == result)
    {
      v26 = *(a1 + 96);
      v27 = (v26 + 64);
      if ((*(v26 + 64) & 1) == 0)
      {
        result = (*(*v15 + 24))(v15);
        *(v26 + 56) = result;
LABEL_28:
        *v27 = 1;
      }
    }

    else
    {
      if (*(a2 + 112) == 1)
      {
        v28 = sub_298B9CDFC();
        v29 = sub_298B00584(v28, "decodeAssignedInterval: job=");
        v30 = sub_298B9B00C(v29, *(a1 + 16));
        sub_298B00584(v30, " syncfind\n");
      }

      result = (*(*v15 + 48))(v15, v19, v24, *(a1 + 96), *(a1 + 104), *(a1 + 160));
      if (*a3)
      {
        goto LABEL_15;
      }

      if ((*(*(a1 + 96) + 64) & 1) == 0)
      {
        *(a1 + 112) = v24;
        v27 = (a1 + 120);
        goto LABEL_28;
      }
    }

    *a3 = 0;
  }

LABEL_15:
  if (*(a1 + 136) != 1 || *(a1 + 120) != 1 || *(a1 + 12) == 1)
  {

    return sub_298BC89A0(a1);
  }

  return result;
}

uint64_t sub_298BC8634(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = (v1 + 32);
  v3 = *(v1 + 40);
  v4 = 40;
  if (*(a1 + 152))
  {
    v4 = 144;
  }

  v5 = (a1 + v4);
  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  return *v6 - *(a1 + 40);
}

uint64_t sub_298BC867C(uint64_t a1, char a2)
{
  result = sub_298BC0FDC(*(*(a1 + 48) + 56), a2);
  *(*(*(a1 + 48) + 48) + 32) = a2;
  return result;
}

uint64_t sub_298BC86C0(uint64_t result)
{
  if (*(result + 256) == 1)
  {
    v5 = *(result + 168);
    *(result + 168) = 0;
    if (v5)
    {
      v6 = result;
      (*(*v5 + 8))(v5);
      result = v6;
    }
  }

  v1 = *(result + 160);
  *(result + 160) = 0;
  if (v1)
  {
    v12 = result;
    sub_298AEAF94(result + 160, v1);
    result = v12;
  }

  v2 = *(result + 104);
  *(result + 104) = 0;
  if (v2)
  {
    v11 = result;
    MEMORY[0x29C2945F0](v2, 0x10A1C40E3DEEBE3);
    result = v11;
  }

  v3 = *(result + 96);
  *(result + 96) = 0;
  if (v3)
  {
    v7 = result;
    v8 = sub_298BC6A18(v3);
    MEMORY[0x29C2945F0](v8, 0x10A1C40D079529CLL);
    result = v7;
  }

  *result = &unk_2A1F1E508;
  v4 = *(result + 48);
  *(result + 48) = 0;
  if (v4)
  {
    v9 = result;
    v10 = sub_298BCE798(v4);
    MEMORY[0x29C2945F0](v10, 0x10E1C40039418B3);
    return v9;
  }

  return result;
}

uint64_t sub_298BC8800(void *a1, unint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v9 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v8 = &unk_2A1F1E040;
  v16 = a1;
  sub_298ADDDB0(&v8);
  if (HIDWORD(a2))
  {
    sub_298B8FEA0(&v8, a2, 0, 0, 0);
    v5 = v12;
    if ((v11 - v12) <= 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_298B8FC48(&v8, a2, 0, 0, 0);
    v5 = v12;
    if ((v11 - v12) <= 1)
    {
LABEL_3:
      sub_298B9BCEC(&v8, " (", 2uLL);
      goto LABEL_6;
    }
  }

  *v5 = 10272;
  v12 += 2;
LABEL_6:
  v7[0] = &unk_2A1F1DD88;
  v7[1] = "%2.2f%%";
  *&v7[2] = a2 * 100.0 / a3;
  sub_298B9B1F8(&v8, v7);
  if (v11 == v12)
  {
    sub_298B9BCEC(&v8, ")", 1uLL);
  }

  else
  {
    *v12++ = 41;
  }

  return sub_298B9AE14(&v8);
}

uint64_t sub_298BC89A0(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  v5 = sub_298BC7958(v2);
  if ((*(a1 + 288) & 1) == 0)
  {
    *(a1 + 288) = 1;
  }

  *(a1 + 264) = v3;
  *(a1 + 272) = v4;
  *(a1 + 280) = v5;
  v6 = *(*(a1 + 48) + 56);
  v7 = *(a1 + 80);
  if ((*(v6 + v7 + 144) & 1) == 0)
  {
    sub_298BC62BC(v6 + 112, *(a1 + 80));
  }

  v8 = *(v6 + 8 * v7 + 152);
  sub_298C03064(v8);
  v9 = *(v8 + 368);
  v10 = *(v8 + 400);
  v29 = *(v8 + 384);
  v30 = v10;
  v11 = *(v8 + 400);
  v31 = *(v8 + 416);
  v12 = *(v8 + 352);
  v28 = *(v8 + 368);
  v27 = v12;
  v22 = v9;
  v23 = v29;
  v24 = v11;
  v25 = *(v8 + 416);
  v13 = *(v8 + 336);
  v14 = *(v8 + 344);
  *(v8 + 344) = 0;
  v26[0] = v13;
  v26[1] = v14;
  v15 = *(v8 + 432);
  *(v8 + 432) = 0;
  v32 = 0;
  v20 = v15;
  v21 = v12;
  v16 = sub_298BC8B20((a1 + 168), &v20);
  if (v20)
  {
    (*(*v20 + 8))(v20, v16);
  }

  v17 = *(a1 + 160);
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0;
  v18 = v17[5];
  v17[5] = 0;
  if (v18)
  {
    MEMORY[0x29C2945C0](v18, 0x1000C8077774924, v16);
  }

  sub_298BC17AC(*(*(a1 + 48) + 56));
  sub_298BC17AC(*(*(a1 + 96) + 24));
  return sub_298BC8BFC(v26);
}

__n128 sub_298BC8B20(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  v3 = *a2;
  *a2 = 0;
  if (v2 == 1)
  {
    v4 = *a1;
    *a1 = v3;
    if (v4)
    {
      v10 = a1;
      v11 = a2;
      (*(*v4 + 8))(v4);
      a2 = v11;
      a1 = v10;
    }

    *(a1 + 1) = *(a2 + 1);
    result = *(a2 + 3);
    v6 = *(a2 + 5);
    v7 = *(a2 + 7);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 7) = v7;
    *(a1 + 5) = v6;
    *(a1 + 3) = result;
  }

  else
  {
    *a1 = v3;
    *(a1 + 1) = *(a2 + 1);
    result = *(a2 + 3);
    v8 = *(a2 + 5);
    v9 = *(a2 + 7);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 7) = v9;
    *(a1 + 5) = v8;
    *(a1 + 3) = result;
    *(a1 + 88) = 1;
  }

  return result;
}

uint64_t sub_298BC8BFC(uint64_t result)
{
  v1 = *(result + 96);
  *(result + 96) = 0;
  if (v1)
  {
    v4 = result;
    (*(*v1 + 8))(v1);
    result = v4;
  }

  v2 = *(result + 8);
  *(result + 8) = 0;
  if (v2)
  {
    v3 = result;
    MEMORY[0x29C2945F0](v2, 0x1020C40A2194CFDLL);
    return v3;
  }

  return result;
}

_DWORD *sub_298BC8C88(uint64_t a1, int *a2)
{
  v7 = 0;
  v4 = sub_298BC8D04(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = sub_298BC8D9C(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 14) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 2) = 0u;
  }

  return v5;
}

uint64_t sub_298BC8D04(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 72 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 72 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_4;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_4:
  *a4 = v6;
  return v8;
}

_DWORD *sub_298BC8D9C(_DWORD *a1, int *a2, _DWORD *a3)
{
  v3 = a1[2];
  v4 = a1[4];
  if (4 * v3 + 4 >= 3 * v4)
  {
    v4 *= 2;
  }

  else if (v4 + ~v3 - a1[3] > v4 >> 3)
  {
    goto LABEL_3;
  }

  v6 = a1;
  sub_298BC8E54(a1, v4);
  v8 = 0;
  sub_298BC8D04(*v6, v6[4], *a2, &v8);
  a1 = v6;
  a3 = v8;
LABEL_3:
  ++a1[2];
  if (*a3 != -1)
  {
    --a1[3];
  }

  return a3;
}

_DWORD *sub_298BC8E54(uint64_t a1, int a2)
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
  result = operator new(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298BC8F98(a1, v4, v4 + 72 * v3);

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 72 * v10 - 72;
    if (v11 < 0x48)
    {
      v13 = result;
LABEL_13:
      v16 = &result[18 * v10];
      do
      {
        *v13 = -1;
        v13 += 18;
      }

      while (v13 != v16);
      return result;
    }

    v12 = v11 / 0x48 + 1;
    v13 = &result[18 * (v12 & 0x7FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v12 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -1;
      v14[18] = -1;
      v14 += 36;
      v15 -= 2;
    }

    while (v15);
    if (v12 != (v12 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_298BC8F98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v10 = *result;
LABEL_6:
      v13 = &v7[18 * v6];
      do
      {
        *v10 = -1;
        v10 += 18;
      }

      while (v10 != v13);
      goto LABEL_8;
    }

    v9 = v8 / 0x48 + 1;
    v10 = &v7[18 * (v9 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *result;
    v12 = v9 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[18] = -1;
      v11 += 36;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 > 0xFFFFFFFD)
      {
        goto LABEL_10;
      }

      v32 = 0;
      result = sub_298BC8D04(*v5, *(v5 + 16), v14, &v32);
      v15 = v32;
      *v32 = *v4;
      v16 = *(v4 + 8);
      *(v4 + 8) = 0;
      v15[1] = v16;
      v17 = *(v4 + 16);
      *(v4 + 16) = 0;
      v15[2] = v17;
      v18 = *(v4 + 24);
      *(v4 + 24) = 0;
      v15[3] = v18;
      v19 = *(v4 + 32);
      *(v4 + 32) = 0;
      v15[4] = v19;
      v20 = *(v4 + 40);
      *(v4 + 40) = 0;
      v15[5] = v20;
      v21 = *(v4 + 48);
      *(v4 + 48) = 0;
      v15[6] = v21;
      v22 = *(v4 + 56);
      *(v4 + 56) = 0;
      v15[7] = v22;
      v23 = *(v4 + 64);
      *(v4 + 64) = 0;
      v15[8] = v23;
      ++*(v5 + 8);
      v24 = *(v4 + 64);
      *(v4 + 64) = 0;
      if (v24)
      {
        (*(**v24 + 32))(*v24, v24);
        result = MEMORY[0x29C2945F0](v24, 0x20C4093837F09);
        v25 = *(v4 + 56);
        *(v4 + 56) = 0;
        if (!v25)
        {
LABEL_14:
          v26 = *(v4 + 48);
          *(v4 + 48) = 0;
          if (!v26)
          {
            goto LABEL_15;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v25 = *(v4 + 56);
        *(v4 + 56) = 0;
        if (!v25)
        {
          goto LABEL_14;
        }
      }

      (*(**v25 + 32))(*v25, v25);
      result = MEMORY[0x29C2945F0](v25, 0x20C4093837F09);
      v26 = *(v4 + 48);
      *(v4 + 48) = 0;
      if (!v26)
      {
LABEL_15:
        v27 = *(v4 + 40);
        *(v4 + 40) = 0;
        if (!v27)
        {
          goto LABEL_16;
        }

        goto LABEL_24;
      }

LABEL_23:
      (*(**v26 + 32))(*v26, v26);
      result = MEMORY[0x29C2945F0](v26, 0x20C4093837F09);
      v27 = *(v4 + 40);
      *(v4 + 40) = 0;
      if (!v27)
      {
LABEL_16:
        v28 = *(v4 + 32);
        *(v4 + 32) = 0;
        if (!v28)
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }

LABEL_24:
      (*(**v27 + 32))(*v27, v27);
      result = MEMORY[0x29C2945F0](v27, 0x20C4093837F09);
      v28 = *(v4 + 32);
      *(v4 + 32) = 0;
      if (!v28)
      {
LABEL_17:
        v29 = *(v4 + 24);
        *(v4 + 24) = 0;
        if (v29)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

LABEL_25:
      (*(**v28 + 32))(*v28, v28);
      result = MEMORY[0x29C2945F0](v28, 0x20C4093837F09);
      v29 = *(v4 + 24);
      *(v4 + 24) = 0;
      if (v29)
      {
LABEL_26:
        (*(**v29 + 32))(*v29, v29);
        result = MEMORY[0x29C2945F0](v29, 0x20C4093837F09);
        v30 = *(v4 + 16);
        *(v4 + 16) = 0;
        if (v30)
        {
LABEL_27:
          (*(**v30 + 32))(*v30, v30);
          result = MEMORY[0x29C2945F0](v30, 0x20C4093837F09);
          v31 = *(v4 + 8);
          *(v4 + 8) = 0;
          if (!v31)
          {
            goto LABEL_10;
          }

LABEL_20:
          (*(**v31 + 32))(*v31, v31);
          result = MEMORY[0x29C2945F0](v31, 0x20C4093837F09);
          goto LABEL_10;
        }

        goto LABEL_19;
      }

LABEL_18:
      v30 = *(v4 + 16);
      *(v4 + 16) = 0;
      if (v30)
      {
        goto LABEL_27;
      }

LABEL_19:
      v31 = *(v4 + 8);
      *(v4 + 8) = 0;
      if (v31)
      {
        goto LABEL_20;
      }

LABEL_10:
      v4 += 72;
    }

    while (v4 != a3);
  }

  return result;
}

void sub_298BC93A8(void *a1)
{
  (*(**a1 + 32))(*a1, a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298BC9418(uint64_t a1)
{
  sub_298BC94F0((a1 + 280));
  v2 = *(a1 + 272);
  *(a1 + 272) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  sub_298BC95A0(*(a1 + 256));
  v5 = (a1 + 224);
  sub_298AEA774(&v5);
  v3 = *(a1 + 208);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::mutex::~mutex((a1 + 144));
  *a1 = &unk_2A1F1E418;
  sub_298AE88F0(a1 + 80);
  return a1;
}

void *sub_298BC94F0(void *a1)
{
  sub_298BC9524(a1);
  MEMORY[0x29C2945E0](*a1, 8);
  return a1;
}

void sub_298BC9524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *a1;
    v3 = *a1 + 72 * v1;
    do
    {
      if (*v2 <= 0xFFFFFFFD)
      {
        v4 = 16;
        do
        {
          v5 = *&v2[v4];
          *&v2[v4] = 0;
          if (v5)
          {
            sub_298BC93A8(v5);
          }

          v4 -= 2;
        }

        while (v4 * 4);
      }

      v2 += 18;
    }

    while (v2 != v3);
  }
}

void sub_298BC95A0(void *a1)
{
  if (a1)
  {
    sub_298BC95A0(*a1);
    sub_298BC95A0(a1[1]);
    sub_298BC68B0((a1 + 4));

    operator delete(a1);
  }
}

void sub_298BC95F8(uint64_t a1)
{
  v8[20] = *MEMORY[0x29EDCA608];
  if (*(a1 + 66) == 1)
  {
    v8[17] = 0;
    v8[18] = sub_298B9CDFC();
    v8[19] = 2;
    v8[16] = 0;
    v6[1] = 0;
    v7[0] = v8;
    v7[1] = 0x1000000001;
    v8[0] = 0;
    v5 = v6;
    v6[0] = 0;
    v4[0] = a1;
    v4[1] = v7;
    v4[2] = &v5;
    sub_298B89A80(v7);
    sub_298BCB608(v4);
    sub_298B89B0C(v7);
    v2 = sub_298B9CDFC();
    sub_298B00584(v2, "\n");
    sub_298B2B0DC(v6[0]);
    if (v7[0] != v8)
    {
      free(v7[0]);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_298BC96E4(void *a1, uint64_t a2)
{
  std::mutex::lock((a2 + 144));
  *a1 = *(a2 + 208);
  *(a2 + 208) = 0;

  std::mutex::unlock((a2 + 144));
}

uint64_t sub_298BC9730(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(result + 256);
  if (v2)
  {
    v3 = *(*(a2 + 40) + 4);
    v4 = result + 256;
    do
    {
      v5 = *(v2 + 32);
      v6 = v5 >= v3;
      v7 = v5 < v3;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * v7);
    }

    while (v2);
    if (v4 != result + 256 && v3 >= *(v4 + 32))
    {
      v8 = *(a2 + 48);
      v9 = *(result + 272);
      operator new();
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}