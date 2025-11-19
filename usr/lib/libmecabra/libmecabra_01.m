void sub_29919A150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x29C29BF70](a13, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29919A194(uint64_t *a1, uint64_t *a2)
{
  sub_299190B3C(a1, a2);

  return sub_299190AC4(a1 + 6, a2 + 6);
}

uint64_t sub_29919A1D4(uint64_t a1, uint64_t *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_29919A81C(v8, a2);
  sub_299191988(v9, a2);
  v4 = *a1;
  *a1 = v8[0];
  v8[0] = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  sub_299190AC4((a1 + 48), v9);
  if (v14)
  {
    MEMORY[0x29C29BF70](v14, 0x1000C8077774924);
  }

  if (v12)
  {
    MEMORY[0x29C29BF70](v12, 0x1000C8077774924);
  }

  if (v10)
  {
    MEMORY[0x29C29BF70](v10, 0x1000C8077774924);
  }

  if (*&v9[0])
  {
    MEMORY[0x29C29BF70](*&v9[0], 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x29C29BF70](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_29919A310(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_29919A8DC(v8, a2);
  sub_299191CD0(v9, a2);
  v4 = *a1;
  *a1 = v8[0];
  v8[0] = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  sub_299190AC4((a1 + 48), v9);
  if (v14)
  {
    MEMORY[0x29C29BF70](v14, 0x1000C8077774924);
  }

  if (v12)
  {
    MEMORY[0x29C29BF70](v12, 0x1000C8077774924);
  }

  if (v10)
  {
    MEMORY[0x29C29BF70](v10, 0x1000C8077774924);
  }

  if (*&v9[0])
  {
    MEMORY[0x29C29BF70](*&v9[0], 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x29C29BF70](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_29919A44C(uint64_t a1, uint64_t a2)
{
  sub_29919B038(a1, a2);

  return sub_2991942C0(a1 + 48, a2);
}

uint64_t *sub_29919A48C(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = result;
  v5 = *(a2 + 40);
  if (result[12])
  {
    do
    {
      result = sub_2991902B4(v5, (v4[2] + v3));
      v6 = *(v4[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
      ++v3;
    }

    while ((v6 & 1) == 0);
  }

  else
  {
    v7 = (result[2] + a3);
    if (*v7)
    {
      do
      {
        result = sub_2991902B4(v5, v7);
      }

      while (*++v7);
    }
  }

  return result;
}

uint64_t sub_29919A518(void *a1, uint64_t *a2, unint64_t a3)
{
  v3 = a2[5];
  v4 = a1[2];
  if (a1[12])
  {
    v5 = *(v3 + 100);
    v6 = *a2;
    v7 = a2[1];
    do
    {
      if (*(v4 + a3) != *(v6 + v5))
      {
        break;
      }

      *(v3 + 100) = ++v5;
      if ((*(a1[8] + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        return 1;
      }

      ++a3;
    }

    while (v7 > v5);
  }

  else
  {
    v12 = v4 + a3;
    v8 = v4 + a3 - *(v3 + 100);
    v9 = *a2;
    v10 = a2[1];
    v11 = *v12;
    LODWORD(v12) = *(v3 + 100);
    while (v11 == *(v9 + v12))
    {
      v12 = (v12 + 1);
      *(v3 + 100) = v12;
      v11 = *(v8 + v12);
      if (!*(v8 + v12))
      {
        return 1;
      }

      if (v10 <= v12)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_29919A5BC(void *a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v6 = a2[5];
  if (a1[12])
  {
    v7 = *(v6 + 100);
    while (1)
    {
      v8 = a1[2];
      v9 = *(v8 + v3);
      v10 = *(*a2 + v7);
      v11 = v9 == v10;
      if (v9 != v10)
      {
        break;
      }

      sub_2991902B4(v6, (v8 + v3));
      v7 = *(v6 + 100) + 1;
      *(v6 + 100) = v7;
      if ((*(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        break;
      }

      ++v3;
      if (a2[1] <= v7)
      {
        do
        {
          sub_2991902B4(v6, (a1[2] + v3));
          v12 = *(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
          ++v3;
        }

        while ((v12 & 1) == 0);
        return 1;
      }
    }
  }

  else
  {
    v15 = a1[2] + a3;
    v13 = (v15 - *(v6 + 100));
    v14 = *v15;
    LODWORD(v15) = *(v6 + 100);
    while (1)
    {
      v16 = *(*a2 + v15);
      v11 = v14 == v16;
      if (v14 != v16)
      {
        break;
      }

      sub_2991902B4(v6, &v13[v15]);
      v15 = (*(v6 + 100) + 1);
      *(v6 + 100) = v15;
      v14 = v13[v15];
      if (!v13[v15])
      {
        break;
      }

      if (a2[1] <= v15)
      {
        v17 = &v13[v15];
        do
        {
          sub_2991902B4(v6, v17);
        }

        while (*++v17);
        return 1;
      }
    }
  }

  return v11;
}

uint64_t *sub_29919A70C(uint64_t *result, unint64_t a2, int *a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (v6 < a2)
  {
    v7 = 2 * v6;
    if (v6 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v6 > a2 >> 1)
    {
      a2 = v7;
    }

    result = sub_29919413C(result, a2);
  }

  v8 = v5[3];
  v9 = v4 - v8;
  if (v4 > v8)
  {
    v10 = 0;
    v11 = *a3;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = (v5[1] + 4 * v8 + 8);
    do
    {
      v14 = vdupq_n_s64(v10);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2993FCC00)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        *(v13 - 2) = v11;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        *(v13 - 1) = v11;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2993FCC10)))).i32[1])
      {
        *v13 = v11;
        v13[1] = v11;
      }

      v10 += 4;
      v13 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v5[3] = v4;
  return result;
}

uint64_t sub_29919A81C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_2991997E8(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_29919A8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29919A8DC(__int128 *a1, uint64_t a2)
{
  memset(v7, 0, 41);
  sub_29919AF38(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_29919A974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29919A99C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = (a2 - a1) >> 4;
  if (v6 < 11)
  {
    v53 = 0;
    goto LABEL_77;
  }

  v53 = 0;
  v7 = a1;
  v8 = a1;
  do
  {
    v9 = sub_29919AD78(v8, v8 + 16 * (v6 >> 1), v4 - 16, a3);
    v10 = v9;
    v11 = v8;
    v5 = v4;
    v12 = v8;
    v13 = v4;
    while (v11 < v5)
    {
      v14 = *(v11 + 8);
      v15 = a3 >= v14 ? -1 : *(*v11 - a3);
      if (v15 > v9)
      {
        break;
      }

      if (v15 == v9)
      {
        v16 = *v11;
        v17 = *(v11 + 12);
        *v11 = *v12;
        *(v11 + 8) = *(v12 + 8);
        *v12 = v16;
        *(v12 + 8) = v14;
        *(v12 + 12) = v17;
        v12 += 16;
      }

LABEL_11:
      v11 += 16;
    }

    if (v11 < v5)
    {
      v18 = v5 - 16;
      do
      {
        v5 = v18;
        v19 = *(v18 + 8);
        if (a3 >= v19)
        {
          v20 = -1;
        }

        else
        {
          v20 = *(*v5 - a3);
        }

        if (v20 < v9)
        {
          break;
        }

        if (v20 == v9)
        {
          v21 = *(v13 - 16);
          v13 -= 16;
          v22 = *v5;
          v23 = *(v5 + 12);
          *v5 = v21;
          *(v5 + 8) = *(v13 + 8);
          *v13 = v22;
          *(v13 + 8) = v19;
          *(v13 + 12) = v23;
        }

        v18 = v5 - 16;
      }

      while (v11 < v5);
    }

    if (v11 < v5)
    {
      v24 = *v11;
      *v11 = *v5;
      v25 = *(v5 + 8);
      *v5 = v24;
      v26 = *(v11 + 8);
      *(v11 + 8) = v25;
      *(v5 + 8) = v26;
      goto LABEL_11;
    }

    while (v12 > v8)
    {
      v28 = *(v12 - 16);
      v12 -= 16;
      v27 = v28;
      v29 = *(v11 - 16);
      v11 -= 16;
      *v12 = v29;
      v30 = *(v11 + 8);
      *v11 = v27;
      v31 = *(v12 + 8);
      *(v12 + 8) = v30;
      *(v11 + 8) = v31;
    }

    while (v13 < v4)
    {
      v32 = *v13;
      *v13 = *v5;
      v33 = *(v5 + 8);
      *v5 = v32;
      v34 = *(v13 + 8);
      *(v13 + 8) = v33;
      *(v5 + 8) = v34;
      v13 += 16;
      v5 += 16;
    }

    v35 = v11 - v7;
    v36 = (v11 - v7) >> 4;
    v37 = v5 - v11;
    v38 = (v5 - v11) >> 4;
    if (v36 <= v38)
    {
      v39 = (v4 - v5) >> 4;
      if (v39 <= v38)
      {
        if (v35 == 16)
        {
          v42 = v53 + 1;
        }

        else
        {
          if (v36 < 2)
          {
LABEL_52:
            if (v4 - v5 == 16)
            {
              v44 = v53 + 1;
            }

            else
            {
              v44 = v53;
              if (v39 >= 2)
              {
                v45 = v4;
                v46 = v38;
                v47 = sub_29919A99C(v5, v45, a3);
                v38 = v46;
                v44 = v47 + v53;
              }
            }

            if (v37 == 16)
            {
              v53 = v44 + 1;
              v4 = v5;
              v5 = v11;
            }

            else
            {
              if (v10 == -1)
              {
                v48 = v44 + 1;
              }

              else
              {
                v48 = v44;
              }

              if (v10 == -1)
              {
                v49 = a3;
              }

              else
              {
                v49 = a3 + 1;
              }

              if (v10 == -1)
              {
                v50 = v5;
              }

              else
              {
                v50 = v11;
              }

              if (v38 >= 2)
              {
                v44 = v48;
              }

              v53 = v44;
              if (v38 >= 2)
              {
                a3 = v49;
              }

              v4 = v5;
              if (v38 >= 2)
              {
                v5 = v50;
              }

              else
              {
                v5 = v11;
              }
            }

            goto LABEL_74;
          }

          v43 = sub_29919A99C(v8, v11, a3);
          v39 = (v4 - v5) >> 4;
          v38 = (v5 - v11) >> 4;
          v42 = v43 + v53;
        }

        v53 = v42;
        goto LABEL_52;
      }
    }

    if (v37 == 16)
    {
      v40 = v53;
      goto LABEL_32;
    }

    v40 = v53;
    if (v38 >= 2)
    {
      if (v9 == -1)
      {
LABEL_32:
        ++v40;
      }

      else
      {
        v40 = sub_29919A99C(v11, v5, a3 + 1) + v53;
      }
    }

    v41 = v4 - v5;
    if (v36 >= (v4 - v5) >> 4)
    {
      if (v41 == 16)
      {
        ++v40;
      }

      else if (v41 >> 4 >= 2)
      {
        v40 += sub_29919A99C(v5, v4, a3);
      }

      v53 = v40;
      v4 = v11;
      v5 = v8;
    }

    else
    {
      if (v35 == 16)
      {
        ++v40;
      }

      else if (v36 >= 2)
      {
        v40 += sub_29919A99C(v8, v11, a3);
      }

      v53 = v40;
    }

LABEL_74:
    v6 = (v4 - v5) >> 4;
    v7 = v5;
    v8 = v5;
  }

  while (v6 > 10);
LABEL_77:
  if (v6 < 2)
  {
    return v53;
  }

  else
  {
    return sub_29919ADF8(v5, v4, a3) + v53;
  }
}

uint64_t sub_29919AD78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*a1 - a4);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 - a4);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*a3 - a4);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_29919ADF8(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = (a1 + 16);
  if (a1 + 16 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v14 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 2;
        v10 = sub_29919AECC((v8 - 2), v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 2);
        *(v8 - 2) = *v8;
        v12 = v8[1];
        *v8 = v11;
        v13 = *(v8 - 1);
        *(v8 - 1) = v12;
        v8[1] = v13;
        v8 -= 2;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v14 = v10 != 0;
    }

    v7 += v14;
    v3 += 2;
  }

  while (v3 < a2);
  return v7;
}

uint64_t sub_29919AECC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a2 - a3);
    v8 = (*a1 - a3);
    while (v6)
    {
      v9 = *v8;
      v10 = *v7;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      --v7;
      --v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

uint64_t sub_29919AF38(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_29918E67C(a2, &v6, 8uLL);
  v4 = v6;
  sub_299190A74(a1, v6);
  sub_29919AFB4(a2, *(a1 + 8), v4);
  return sub_29918E550(a2, -v6 & 7);
}

uint64_t sub_29919AFB4(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/reader.h";
    exception[2] = 0x20000001FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/reader.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  return sub_29918E67C(a1, a2, a3);
}

uint64_t sub_29919B038(uint64_t a1, uint64_t a2)
{
  __buf = *(a1 + 24);
  sub_29918EA74(a2, &__buf, 8uLL);
  sub_29919B09C(a2, *(a1 + 16), *(a1 + 24));
  return sub_29918E938(a2, -*(a1 + 24) & 7);
}

uint64_t sub_29919B09C(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/writer.h";
    exception[2] = 0x20000001ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  return sub_29918EA74(a1, a2, a3);
}

uint64_t sub_29919B120(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 80) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(a1 + 16) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

unint64_t sub_29919B21C(void *a1, unint64_t a2)
{
  v2 = (a1[16] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = a2 - (v3 << 9) + *v11;
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = v13 + v19 - 448;
      }

      else
      {
        v14 |= 6uLL;
        v13 = v13 + v17 - 384;
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = v13 + (v16 & 0x1FF) - 320;
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v12 >> 23) + v13 - 256;
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = v13 + v18 - 192;
    }

    else
    {
      v14 |= 2uLL;
      v13 = v13 + (v12 >> 7) - 128;
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = v15 + v13 - 64;
    }
  }

  return sub_29919B3F8(v13, v14 << 6, ~*(a1[2] + 8 * v14));
}

unint64_t sub_29919B3F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * a1 - 0x101010101010101) >> 7) & 0x101010101010101));
  return v5 + a2 + byte_2993FCC48[256 * (a1 - ((0x101010101010100 * v4) >> v5)) + (a3 >> v5)];
}

unint64_t sub_29919B480(void *a1, unint64_t a2)
{
  v2 = (a1[22] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = v12 - v25;
    }

    else
    {
      v29 = v12 - v26;
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = v12 - v23;
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = v12 - v30;
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = v12 - (v11 >> 7);
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = v12 - v15;
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = v12 - v18;
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }

  return sub_29919B3F8(v21, v22 << 6, *(a1[2] + 8 * v22));
}

void sub_29919B5EC(void *a1, void *a2, int a3, int a4)
{
  v8 = a2[6];
  if ((v8 & 0x1FF) != 0)
  {
    v9 = (v8 >> 9) + 1;
  }

  else
  {
    v9 = v8 >> 9;
  }

  sub_299193D08(a1 + 8, v9 + 1);
  v10 = a2[6];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_56;
  }

  v11 = 0;
  v12 = 0;
  for (i = 0; i < v10; ++i)
  {
    if ((i & 0x3F) != 0)
    {
      goto LABEL_24;
    }

    v14 = (i >> 6) & 7;
    v15 = (a1[9] + 12 * (i >> 9));
    if (v14 <= 3)
    {
      if (((i >> 6) & 7) > 1)
      {
        if (v14 == 2)
        {
          v18 = (v12 - *v15);
          v17 = v15[1] & 0xFFFF807F | ((v12 - *v15) << 7);
        }

        else
        {
          v20 = (v12 - *v15);
          v17 = v15[1] & 0xFF807FFF | ((v12 - *v15) << 15);
        }
      }

      else
      {
        if (!v14)
        {
          *v15 = v12;
          goto LABEL_24;
        }

        v17 = v15[1] & 0xFFFFFF80 | (v12 - *v15) & 0x7F;
      }

      goto LABEL_21;
    }

    if (((i >> 6) & 7) > 5)
    {
      if (v14 == 6)
      {
        v19 = v15[2] & 0xFFFC01FF | (((v12 - *v15) & 0x1FF) << 9);
      }

      else
      {
        v19 = v15[2] & 0xF803FFFF | (((v12 - *v15) & 0x1FF) << 18);
      }
    }

    else
    {
      if (v14 == 4)
      {
        v16 = (v12 - *v15);
        v17 = v15[1] & 0x7FFFFF | ((v12 - *v15) << 23);
LABEL_21:
        v15[1] = v17;
        goto LABEL_24;
      }

      v19 = v15[2] & 0xFFFFFE00 | (v12 - *v15) & 0x1FF;
    }

    v15[2] = v19;
LABEL_24:
    if ((*(a2[2] + 8 * (i >> 6)) >> (i & 0x3F)))
    {
      if (a4 && (v12 & 0x1FF) == 0)
      {
        v37 = i;
        sub_29919B974(a1 + 20, &v37);
      }

      ++v12;
    }

    else
    {
      if (a3 && (v11 & 0x1FF) == 0)
      {
        v37 = i;
        sub_29919B974(a1 + 14, &v37);
      }

      ++v11;
    }

    v10 = a2[6];
  }

  if ((v10 & 0x1FF) != 0)
  {
    v21 = (v10 - 1) >> 9;
    v22 = ((v10 - 1) >> 6) & 7;
    if (v22 <= 3)
    {
      if ((((v10 - 1) >> 6) & 7) > 1)
      {
        if (v22 == 2)
        {
          v23 = a1[9];
          v27 = (v23 + 12 * v21);
          v28 = v27[1];
          v25 = v12 - *v27;
          goto LABEL_49;
        }

        v23 = a1[9];
        v35 = (v23 + 12 * v21);
        v32 = v35[1];
        v25 = v12 - *v35;
      }

      else
      {
        if (v22)
        {
          v23 = a1[9];
          v31 = (v23 + 12 * v21);
          v26 = v31[1];
          v25 = v12 - *v31;
        }

        else
        {
          v23 = a1[9];
          v24 = (v23 + 12 * v21);
          v25 = v12 - *v24;
          v26 = v24[1] & 0xFFFFFF80 | v25 & 0x7F;
          v24[1] = v26;
        }

        v28 = v26 & 0xFFFF807F | (v25 << 7);
        *(v23 + 12 * v21 + 4) = v28;
LABEL_49:
        v32 = v28 & 0xFF807FFF | (v25 << 15);
        *(v23 + 12 * v21 + 4) = v32;
      }

      *(v23 + 12 * v21 + 4) = v32 & 0x7FFFFF | (v25 << 23);
LABEL_53:
      v36 = v23 + 12 * v21;
      v34 = *(v36 + 8) & 0xFFFFFE00 | v25 & 0x1FF;
      *(v36 + 8) = v34;
      goto LABEL_54;
    }

    if ((((v10 - 1) >> 6) & 7) > 5)
    {
      if (v22 != 7)
      {
        v23 = a1[9];
        v29 = (v23 + 12 * v21);
        v30 = v29[2];
        v25 = v12 - *v29;
        goto LABEL_55;
      }
    }

    else
    {
      if (v22 == 4)
      {
        v23 = a1[9];
        v25 = v12 - *(v23 + 12 * v21);
        goto LABEL_53;
      }

      v23 = a1[9];
      v33 = (v23 + 12 * v21);
      v34 = v33[2];
      v25 = v12 - *v33;
LABEL_54:
      v30 = v34 & 0xFFFC01FF | ((v25 & 0x1FF) << 9);
      *(v23 + 12 * v21 + 8) = v30;
LABEL_55:
      *(v23 + 12 * v21 + 8) = v30 & 0xF803FFFF | ((v25 & 0x1FF) << 18);
    }
  }

LABEL_56:
  a1[6] = v10;
  a1[7] = a2[7];
  *(a1[9] + 12 * a1[11] - 12) = v12;
  if (a3)
  {
    v37 = a2[6];
    sub_29919B974(a1 + 14, &v37);
    sub_29919B9E4(a1 + 28);
  }

  if (a4)
  {
    v37 = a2[6];
    sub_29919B974(a1 + 20, &v37);
    sub_29919B9E4(a1 + 40);
  }
}

uint64_t *sub_29919B974(uint64_t *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = sub_29919413C(result, v8);
    v4 = v3[3];
    v6 = v4 + 1;
  }

  *(v3[1] + 4 * v4) = *a2;
  v3[3] = v6;
  return result;
}

_DWORD *sub_29919B9E4(_DWORD *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000064;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/vector/vector.h:100: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return sub_29919413C(result, v2);
  }

  return result;
}

double sub_29919BA7C(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_29919BA94(uint64_t *a1, size_t __sz)
{
  if (a1[7] == a1[11] >> 8)
  {
    sub_29919BB1C(a1);
  }

  if (__sz < 0x401)
  {
    v5 = a1[10];
    if (v5 < __sz)
    {
      sub_29919C08C(a1);
      v5 = a1[10];
    }

    result = a1[9];
    a1[9] = result + __sz;
    a1[10] = v5 - __sz;
  }

  else
  {
    sub_29919BE80(a1, __sz);
    return *(a1[3] + 8 * a1[4] - 8);
  }

  return result;
}

uint64_t sub_29919BB1C(void *a1)
{
  v2 = a1[7];
  if (v2 == a1[8])
  {
    if (v2)
    {
      v3 = 2 * v2;
    }

    else
    {
      v3 = 1;
    }

    v4 = v3 >> 61 != 0;
    if (8 * v3 >= 0xFFFFFFFFFFFFFFF0)
    {
      v4 = 1;
    }

    if (v4)
    {
      v5 = -1;
    }

    else
    {
      v5 = 8 * v3 + 16;
    }

    v6 = operator new[](v5, MEMORY[0x29EDC9418]);
    if (!v6)
    {
      v20 = 0;
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      exception[2] = 0x8000000A9;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:169: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    *v6 = 8;
    v6[1] = v3;
    v7 = (v6 + 2);
    if (v3)
    {
      bzero(v6 + 2, 8 * v3);
    }

    v20 = v7;
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v9 = a1[6];
        v10 = v20;
        v11 = *(v9 + 8 * i);
        *(v9 + 8 * i) = *(v20 + 8 * i);
        *(v10 + 8 * i) = v11;
      }

      v7 = v20;
    }

    v12 = a1[6];
    a1[6] = v7;
    v20 = v12;
    a1[8] = v3;
    sub_29919C31C(&v20);
  }

  v13 = operator new[](0x1000uLL, MEMORY[0x29EDC9418]);
  if (!v13)
  {
    v18 = __cxa_allocate_exception(0x20uLL);
    *v18 = &unk_2A1F37658;
    v18[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    v18[2] = 0x8000000B1;
    v18[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:177: MARISA_MEMORY_ERROR: new_block.get() == NULL";
    __cxa_throw(v18, &unk_2A1F37630, std::exception::~exception);
  }

  v14 = v13;
  bzero(v13, 0x1000uLL);
  v16 = a1[6];
  v15 = a1[7];
  a1[7] = v15 + 1;
  result = *(v16 + 8 * v15);
  *(v16 + 8 * v15) = v14;
  if (result)
  {
    return MEMORY[0x29C29BF70](result, 0x1050C80717B85FCLL);
  }

  return result;
}

void sub_29919BD18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29919C31C(va);
  _Unwind_Resume(a1);
}

int64x2_t sub_29919BD2C(uint64_t a1, char *a2, size_t __sz, float a4)
{
  v6 = a2;
  if (!a2 && __sz)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    exception[2] = 0x20000003DLL;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:61: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
    goto LABEL_10;
  }

  if (HIDWORD(__sz))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    exception[2] = 0x70000003ELL;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:62: MARISA_SIZE_ERROR: length > MARISA_UINT32_MAX";
LABEL_10:
    exception[3] = v16;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v8 = sub_29919BA94(a1, __sz);
  if (__sz)
  {
    v9 = v8;
    v10 = __sz;
    do
    {
      v11 = *v6++;
      *v9++ = v11;
      --v10;
    }

    while (v10);
  }

  v12 = *(*(a1 + 48) + ((*(a1 + 88) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 88);
  *v12 = v8;
  *(v12 + 8) = __sz;
  *(v12 + 12) = a4;
  v13.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v13.i64[1] = __sz;
  result = vaddq_s64(*(a1 + 88), v13);
  *(a1 + 88) = result;
  return result;
}

void *sub_29919BE80(void *a1, size_t __sz)
{
  v4 = a1[4];
  if (v4 == a1[5])
  {
    if (v4)
    {
      v5 = 2 * v4;
    }

    else
    {
      v5 = 1;
    }

    v6 = v5 >> 61 != 0;
    if (8 * v5 >= 0xFFFFFFFFFFFFFFF0)
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 8 * v5 + 16;
    }

    v8 = operator new[](v7, MEMORY[0x29EDC9418]);
    if (!v8)
    {
      v21 = 0;
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      exception[2] = 0x800000097;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:151: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    *v8 = 8;
    v8[1] = v5;
    v9 = (v8 + 2);
    if (v5)
    {
      bzero(v8 + 2, 8 * v5);
    }

    v21 = v9;
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v11 = a1[3];
        v12 = v21;
        v13 = *(v11 + 8 * i);
        *(v11 + 8 * i) = *(v21 + 8 * i);
        *(v12 + 8 * i) = v13;
      }

      v9 = v21;
    }

    v14 = a1[3];
    a1[3] = v9;
    v21 = v14;
    a1[5] = v5;
    sub_29919C290(&v21);
  }

  result = operator new[](__sz, MEMORY[0x29EDC9418]);
  if (!result)
  {
    v19 = __cxa_allocate_exception(0x20uLL);
    *v19 = &unk_2A1F37658;
    v19[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    v19[2] = 0x80000009FLL;
    v19[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:159: MARISA_MEMORY_ERROR: new_block.get() == NULL";
    __cxa_throw(v19, &unk_2A1F37630, std::exception::~exception);
  }

  v17 = a1[3];
  v16 = a1[4];
  a1[4] = v16 + 1;
  v18 = *(v17 + 8 * v16);
  *(v17 + 8 * v16) = result;
  if (v18)
  {
    return MEMORY[0x29C29BF70](v18, 0x1000C8077774924);
  }

  return result;
}

void sub_29919C078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29919C290(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29919C08C(uint64_t *result)
{
  v1 = result;
  v2 = result[1];
  if (v2 == result[2])
  {
    if (v2)
    {
      v3 = 2 * v2;
    }

    else
    {
      v3 = 1;
    }

    v4 = v3 >> 61 != 0;
    if (8 * v3 >= 0xFFFFFFFFFFFFFFF0)
    {
      v4 = 1;
    }

    if (v4)
    {
      v5 = -1;
    }

    else
    {
      v5 = 8 * v3 + 16;
    }

    v6 = operator new[](v5, MEMORY[0x29EDC9418]);
    if (!v6)
    {
      v16 = 0;
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      exception[2] = 0x800000081;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:129: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    *v6 = 8;
    v6[1] = v3;
    v7 = (v6 + 2);
    if (v3)
    {
      bzero(v6 + 2, 8 * v3);
    }

    v16 = v7;
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v9 = v16;
        v10 = *(*v1 + 8 * i);
        *(*v1 + 8 * i) = *(v16 + 8 * i);
        *(v9 + 8 * i) = v10;
      }

      v7 = v16;
    }

    v11 = *v1;
    *v1 = v7;
    v16 = v11;
    v1[2] = v3;
    result = sub_29919C290(&v16);
    v2 = v1[1];
  }

  v12 = *v1;
  v13 = *(*v1 + 8 * v2);
  if (!v13)
  {
    result = operator new[](0x1000uLL, MEMORY[0x29EDC9418]);
    if (!result)
    {
      v15 = __cxa_allocate_exception(0x20uLL);
      *v15 = &unk_2A1F37658;
      v15[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      v15[2] = 0x80000008ALL;
      v15[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:138: MARISA_MEMORY_ERROR: new_block.get() == NULL";
      __cxa_throw(v15, &unk_2A1F37630, std::exception::~exception);
    }

    *(v12 + 8 * v2) = result;
    v13 = *(*v1 + 8 * v2);
  }

  v1[1] = v2 + 1;
  v1[9] = v13;
  v1[10] = 4096;
  return result;
}

void sub_29919C27C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29919C290(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29919C290(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x29C29BF70](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

uint64_t *sub_29919C31C(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x29C29BF70](v7, 0x1050C80717B85FCLL);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x29C29BF70](v4 - 8, 0x20C8093837F09);
  }

  return a1;
}

void **sub_29919C3B4(void **a1, uint64_t a2, unsigned int a3)
{
  v6 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v6)
  {
    v11 = 0;
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x80000000ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:14: MARISA_MEMORY_ERROR: temp.get() == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v7 = v6;
  sub_29918EFB4(v6);
  v11 = v7;
  sub_29918F13C(v7, a2, a3);
  v8 = *a1;
  *a1 = v7;
  v11 = v8;
  return sub_29919478C(&v11);
}

void **sub_29919C4C8(void **a1, char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:21: MARISA_NULL_ERROR: filename == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_2A1F37658;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x800000018;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:24: MARISA_MEMORY_ERROR: temp.get() == NULL";
    __cxa_throw(v9, &unk_2A1F37630, std::exception::~exception);
  }

  v5 = v4;
  sub_29918EFB4(v4);
  v11 = v5;
  sub_29918DDA4(v10);
  sub_29918DE0C(v10, a2);
  sub_29918F60C(v11, v10);
  v6 = *a1;
  *a1 = v11;
  v11 = v6;
  sub_29918DE08(v10);
  return sub_29919478C(&v11);
}

void sub_29919C628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29919478C(va);
  _Unwind_Resume(a1);
}

void **sub_29919C668(void **a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:33: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v6 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_2A1F37658;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v11[2] = 0x800000024;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:36: MARISA_MEMORY_ERROR: temp.get() == NULL";
    __cxa_throw(v11, &unk_2A1F37630, std::exception::~exception);
  }

  v7 = v6;
  sub_29918EFB4(v6);
  v13 = v7;
  sub_29918DDA4(v12);
  sub_29918E0AC(v12, a2, a3);
  sub_29918F60C(v13, v12);
  v8 = *a1;
  *a1 = v13;
  v13 = v8;
  sub_29918DE08(v12);
  return sub_29919478C(&v13);
}

void sub_29919C7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29919478C(va);
  _Unwind_Resume(a1);
}

void **sub_29919C814(void **a1, char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x20000002DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:45: MARISA_NULL_ERROR: filename == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_2A1F37658;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x800000030;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:48: MARISA_MEMORY_ERROR: temp.get() == NULL";
    __cxa_throw(v9, &unk_2A1F37630, std::exception::~exception);
  }

  v5 = v4;
  sub_29918EFB4(v4);
  v11 = v5;
  sub_29918E314(v10);
  sub_29918E364(v10, a2);
  sub_29918F90C(v11, v10);
  v6 = *a1;
  *a1 = v11;
  v11 = v6;
  sub_29918E32C(v10);
  return sub_29919478C(&v11);
}

void sub_29919C974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29919478C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29919C9B4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (!*(a2 + 40))
    {
      sub_29918DAE4(a2);
      result = *a1;
    }

    return sub_29918FD68(result, a2);
  }

  return result;
}

unint64_t sub_29919CA14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (!*(a2 + 40))
    {
      sub_29918DAE4(a2);
      result = *a1;
    }

    return sub_299190038(result, a2);
  }

  return result;
}

uint64_t sub_29919CA74(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (!*(a2 + 40))
    {
      sub_29918DAE4(a2);
      result = *a1;
    }

    return sub_299190320(result, a2);
  }

  return result;
}

uint64_t sub_29919CAD4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (!*(a2 + 40))
    {
      sub_29918DAE4(a2);
      result = *a1;
    }

    return sub_299190408(result, a2);
  }

  return result;
}

uint64_t sub_29919CB34(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 264);
  }

  else
  {
    return 0;
  }
}

void **sub_29919CB4C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  return sub_29919478C(&v2);
}

uint64_t sub_29919CB7C(uint64_t a1, void **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000E9;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:233: MARISA_NULL_ERROR: trie == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  return sub_29919CBFC(a1, a2);
}

uint64_t sub_29919CBFC(uint64_t a1, void **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000C8;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:200: MARISA_NULL_ERROR: trie == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_2A1F37658;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x8000000CCLL;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:204: MARISA_MEMORY_ERROR: temp.get() == NULL";
    __cxa_throw(v9, &unk_2A1F37630, std::exception::~exception);
  }

  v5 = v4;
  sub_29918EFB4(v4);
  v11 = v5;
  sub_29918E314(v10);
  sub_29918E520(v10, a1);
  sub_29918F90C(v11, v10);
  v6 = *a2;
  *a2 = v11;
  v11 = v6;
  sub_29918E32C(v10);
  sub_29919478C(&v11);
  return a1;
}

void sub_29919CD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29919478C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29919CDA4(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x1000000D5;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:213: MARISA_STATE_ERROR: trie.trie_.get() == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  sub_29918E314(v6);
  sub_29918E520(v6, a1);
  sub_29918FC50(*a2, v6);
  sub_29918E32C(v6);
  return a1;
}

void *sub_29919CE7C(uint64_t *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v8 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v8)
  {
    v13 = 0;
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x800000014;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:20: MARISA_MEMORY_ERROR: temp.get() == NULL";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v9 = v8;
  sub_29919DF00(v8);
  v13 = v9;
  sub_29919E08C(v9, a2, a3, a4);
  v10 = *a1;
  *a1 = v9;
  v13 = v10;
  return sub_29919D5FC(&v13);
}

void *sub_29919CFA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000029;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:41: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v6 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_2A1F622E0;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    v11[2] = 0x80000002CLL;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:44: MARISA_MEMORY_ERROR: temp.get() == NULL";
    __cxa_throw(v11, &unk_2A1F622B8, std::exception::~exception);
  }

  v7 = v6;
  sub_29919DF00(v6);
  v13 = v7;
  sub_29918DDA4(v12);
  sub_29919DAD8(v12, a2, a3);
  sub_29919E468(v13, v12);
  v8 = *a1;
  *a1 = v13;
  v13 = v8;
  sub_29919DAD4(v12);
  return sub_29919D5FC(&v13);
}

void sub_29919D110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29919D5FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29919D150(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000064;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:100: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  sub_29918E314(v6);
  sub_29918E520(v6, a2);
  sub_29919E76C(*a1, v6);
  return sub_29918E32C(v6);
}

uint64_t sub_29919D220(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000006DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:109: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  return sub_29919E884(v4, a2, a3);
}

uint64_t sub_29919D2A4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000073;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:115: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  return sub_29919F3DC(v5, a2, a3, a4);
}

uint64_t sub_29919D328(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000007FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:127: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  return sub_29919F6D8(v5, a2, a3, a4);
}

void sub_29919D3AC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:134: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  sub_29919E8F4(v6, a2, a3, a4, a5);
}

void sub_29919D430(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000008CLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:140: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  sub_2991A057C(v6, a2, a3, a4, a5);
}

void sub_29919D4B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000093;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:147: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  sub_29919EEE8(v5, a2, a3, a4);
}

void sub_29919D538(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000099;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:153: MARISA_STATE_ERROR: trie_.get() == NULL";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  sub_29919F048(v4, a2, a3);
}

void sub_29919D5BC(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_29919D5FC(void *a1)
{
  if (*a1)
  {
    v2 = sub_29919E088();
    MEMORY[0x29C29BFB0](v2, 0x10F0C4010279AD7);
  }

  return a1;
}

uint64_t sub_29919D640(uint64_t result, size_t __nitems)
{
  v2 = __nitems;
  v3 = result;
  __buf[128] = *MEMORY[0x29EDCA608];
  if (!*result && *(result + 8) == -1 && !*(result + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x10000004FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:79: MARISA_STATE_ERROR: !is_open()";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      bzero(__buf, 0x400uLL);
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        result = sub_29919D77C(v3, __buf, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      __buf[0] = 0;
      __buf[1] = 0;
      result = sub_29919D77C(result, __buf, __nitems);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29919D77C(uint64_t result, char *__buf, size_t __nitems)
{
  v3 = __nitems;
  v4 = __buf;
  v5 = result;
  v6 = *result;
  if (!*result && *(result + 8) == -1 && !*(result + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000076;
    v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:118: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_20;
  }

  if (__nitems)
  {
    if (*(result + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        result = write(*(v5 + 8), v4, v7);
        if (result <= 0)
        {
          break;
        }

        v4 += result;
        v3 -= result;
        if (!v3)
        {
          return result;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F622E0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
      exception[2] = 0x900000084;
      v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:132: MARISA_IO_ERROR: size_written <= 0";
LABEL_20:
      exception[3] = v9;
      __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
    }

    if (v6)
    {
      if (fwrite(__buf, 1uLL, __nitems, v6) != __nitems)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F622E0;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000089;
        v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:137: MARISA_IO_ERROR: ::fwrite(data, 1, size, file_) != size";
        goto LABEL_20;
      }

      result = fflush(*v5);
      if (result)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F622E0;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x90000008ALL;
        v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:138: MARISA_IO_ERROR: ::fflush(file_) != 0";
        goto LABEL_20;
      }
    }

    else
    {
      result = *(result + 16);
      if (result)
      {
        result = std::ostream::write();
        if ((*(result + *(*result - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_2A1F622E0;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
          v10[2] = 0x90000008FLL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:143: MARISA_IO_ERROR: !stream_->write(static_cast<const char*>(data), static_cast<std::streamsize>(size))";
          __cxa_throw(v10, &unk_2A1F622B8, std::exception::~exception);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29919DA88(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    munmap(v2, *(a1 + 24));
  }

  v3 = *(a1 + 32);
  if (v3 != -1)
  {
    close(v3);
  }

  return a1;
}

uint64_t sub_29919DAD8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x200000050;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:80: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v3 = *a1;
  v4 = a1[1];
  *a1 = a2;
  *(a1 + 1) = -1;
  *(a1 + 2) = a3;
  *(a1 + 3) = 0;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = -1;
  v9 = v5;
  return sub_29919DA88(v8);
}

uint64_t sub_29919DB88(uint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000059;
    v4 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:89: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (a1[2] < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x90000005ALL;
    v4 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:90: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  return sub_29919DC64(a1, a2);
}

uint64_t sub_29919DC64(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000073;
    v8 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:115: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v3 = a1[2];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000074;
    v8 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:116: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *a1 = v2 + a2;
  a1[2] = v5;
  return v2;
}

uint64_t sub_29919DD40(uint64_t a1)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 185) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 393) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 441) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 553) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 601) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 505) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 649) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 697) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  sub_299199B3C((a1 + 744));
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 3;
  *(a1 + 1080) = 0x100000000200;
  *(a1 + 1088) = 0x20000;
  sub_29918DDA4(a1 + 1096);
  return a1;
}

void sub_29919DE78(_Unwind_Exception *a1)
{
  v8 = v1[126];
  if (v8)
  {
    MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  sub_29919D5FC(v4);
  sub_2991925D8(v1 + 93);
  if (*v6)
  {
    MEMORY[0x29C29BF70](*v6, 0x1000C8077774924);
  }

  if (*v5)
  {
    MEMORY[0x29C29BF70](*v5, 0x1000C8077774924);
  }

  sub_29918EF40(v3);
  sub_29918EF40(v2);
  sub_29918EF40(v1);
  _Unwind_Resume(a1);
}

void *sub_29919DF04(void *a1)
{
  sub_29919DAD4(a1 + 137);
  v2 = a1[126];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  sub_29919D5FC(a1 + 125);
  v3 = a1[119];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  v4 = a1[113];
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
  }

  v5 = a1[107];
  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  v6 = a1[99];
  if (v6)
  {
    MEMORY[0x29C29BF70](v6, 0x1000C8077774924);
  }

  v7 = a1[93];
  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  v8 = a1[84];
  if (v8)
  {
    MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  v9 = a1[78];
  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C8077774924);
  }

  v10 = a1[72];
  if (v10)
  {
    MEMORY[0x29C29BF70](v10, 0x1000C8077774924);
  }

  v11 = a1[66];
  if (v11)
  {
    MEMORY[0x29C29BF70](v11, 0x1000C8077774924);
  }

  v12 = a1[60];
  if (v12)
  {
    MEMORY[0x29C29BF70](v12, 0x1000C8077774924);
  }

  v13 = a1[52];
  if (v13)
  {
    MEMORY[0x29C29BF70](v13, 0x1000C8077774924);
  }

  v14 = a1[46];
  if (v14)
  {
    MEMORY[0x29C29BF70](v14, 0x1000C8077774924);
  }

  v15 = a1[40];
  if (v15)
  {
    MEMORY[0x29C29BF70](v15, 0x1000C8077774924);
  }

  v16 = a1[34];
  if (v16)
  {
    MEMORY[0x29C29BF70](v16, 0x1000C8077774924);
  }

  v17 = a1[26];
  if (v17)
  {
    MEMORY[0x29C29BF70](v17, 0x1000C8077774924);
  }

  v18 = a1[20];
  if (v18)
  {
    MEMORY[0x29C29BF70](v18, 0x1000C8077774924);
  }

  v19 = a1[14];
  if (v19)
  {
    MEMORY[0x29C29BF70](v19, 0x1000C8077774924);
  }

  v20 = a1[8];
  if (v20)
  {
    MEMORY[0x29C29BF70](v20, 0x1000C8077774924);
  }

  if (*a1)
  {
    MEMORY[0x29C29BF70](*a1, 0x1000C8077774924);
  }

  return a1;
}

void *sub_29919E08C(uint64_t a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v8 = 3;
  v9 = 0x100000000200;
  v10 = 0x20000;
  sub_2991A0E5C(&v8, a4);
  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  sub_29919DD40(&v8);
  sub_29919E148(&v8, a2, a3, v11);
  sub_29918F4F4(a1, &v8);
  return sub_29919DF04(&v8);
}

void sub_29919E134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29919DF04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29919E148(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  memset(v35, 0, 41);
  sub_299190B90(v35, (a2[1] - *a2) >> 4);
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(&v35[0] + 1) + v10;
      v13 = (v8 + v9);
      v15 = *v13;
      v14 = v13[1];
      *v12 = v15;
      *(v12 + 8) = v14;
      *(v12 + 12) = 1065353216;
      ++v11;
      v8 = *a2;
      v10 += 24;
      v9 += 16;
    }

    while (v11 < (a2[1] - *a2) >> 4);
  }

  v33 = 0u;
  memset(v34, 0, 25);
  sub_29919F7E0(a1, v35, &v33, a4, 1);
  memset(v32, 0, 41);
  sub_299190E04(v32, v34[1]);
  v16 = *(&v32[1] + 1);
  if (*(&v32[1] + 1))
  {
    v17 = 0;
    v18 = *(&v33 + 1);
    v19 = (*(&v32[0] + 1) + 4);
    do
    {
      *(v19 - 1) = *(v18 + 4 * v17);
      *v19 = v17++;
      v19 += 2;
    }

    while (v16 != v17);
  }

  v20 = v33;
  v33 = 0u;
  memset(v34, 0, 25);
  if (v20)
  {
    MEMORY[0x29C29BF70](v20, 0x1000C8077774924);
    v16 = *(&v32[1] + 1);
  }

  v21 = 126 - 2 * __clz(v16);
  if (v16)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_299196E50(*(&v32[0] + 1), (*(&v32[0] + 1) + 8 * v16), &v36, v22, 1);
  if (*(&v32[1] + 1))
  {
    v23 = 0;
    v24 = 0;
    do
    {
      for (i = *(&v32[0] + 1); ; i = *(&v32[0] + 1))
      {
        v26 = *(i + 8 * v23);
        if (v24 >= v26)
        {
          break;
        }

        sub_29919F9C4((a1 + 208), 0);
        ++v24;
      }

      if (v24 == v26)
      {
        sub_29919F9C4((a1 + 208), 1);
        ++v24;
      }

      ++v23;
    }

    while (v23 < *(&v32[1] + 1));
  }

  else
  {
    v24 = 0;
  }

  while (v24 < *(a1 + 648))
  {
    sub_29919F9C4((a1 + 208), 0);
    ++v24;
  }

  sub_29919F9C4((a1 + 208), 0);
  sub_29919FABC(a1 + 208, 0, 1);
  if (a3)
  {
    sub_29919FBDC(a3, (a2[1] - *a2) >> 4);
    if (a2[1] != *a2)
    {
      v27 = 0;
      v28 = 0;
      v29 = *(&v32[0] + 1);
      do
      {
        v30 = sub_29919B120(a1 + 208, *(v29 + v27));
        v29 = *(&v32[0] + 1);
        *(*a3 + 8 * *(*(&v32[0] + 1) + v27 + 4)) = v30;
        ++v28;
        v27 += 8;
      }

      while (v28 < (a2[1] - *a2) >> 4);
    }
  }

  if (*&v32[0])
  {
    MEMORY[0x29C29BF70](*&v32[0], 0x1000C8077774924);
  }

  if (v33)
  {
    MEMORY[0x29C29BF70](v33, 0x1000C8077774924);
  }

  result = *&v35[0];
  if (*&v35[0])
  {
    return MEMORY[0x29C29BF70](*&v35[0], 0x1000C8077774924);
  }

  return result;
}

void sub_29919E408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a15)
  {
    MEMORY[0x29C29BF70](a15, v21);
  }

  if (a21)
  {
    MEMORY[0x29C29BF70](a21, v21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29919E468(uint64_t a1, uint64_t *a2)
{
  sub_29919E4F0(v5, a2);
  sub_29919DD40(v5);
  sub_29919E5B0(v5, a2);
  sub_29918E068(v6, a2);
  sub_29918F4F4(a1, v5);
  return sub_29919DF04(v5);
}

_BYTE *sub_29919E4F0(uint64_t a1, uint64_t *a2)
{
  result = sub_29919DC64(a2, 0x10uLL);
  if (*result != 87)
  {
    goto LABEL_7;
  }

  v3 = 1u;
  do
  {
    if (v3 == 16)
    {
      return result;
    }

    v4 = result[v3];
    v5 = aWeLoveMarisa_0[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA00000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/header.h:21: MARISA_FORMAT_ERROR: !test_header(ptr)";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  return result;
}

double sub_29919E5B0(uint64_t a1, uint64_t *a2)
{
  sub_2991A0234(a1, a2);
  sub_2991A0234((a1 + 208), a2);
  sub_2991A0234((a1 + 416), a2);
  sub_2991A0300((a1 + 624), a2);
  sub_2991A03C0((a1 + 672), a2);
  sub_2991A4448(a1 + 744, a2);
  if (*(a1 + 472) && !*(a1 + 768))
  {
    v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
    v5 = v4;
    if (v4)
    {
      sub_29919DD40(v4);
    }

    v10 = *(a1 + 1000);
    *(a1 + 1000) = v5;
    sub_29919D5FC(&v10);
    v6 = *(a1 + 1000);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F622E0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x800000249;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:585: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
    }

    sub_29919E5B0(v6, a2);
  }

  sub_2991A04BC((a1 + 1008), a2);
  *(a1 + 1056) = *(a1 + 1032) - 1;
  *(a1 + 1064) = *sub_29919DC64(a2, 4uLL);
  v7 = *sub_29919DC64(a2, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  sub_2991A0E5C(&v10, v7);
  *(a1 + 1072) = v10;
  result = v11;
  *(a1 + 1080) = v11;
  *(a1 + 1088) = v12;
  return result;
}

uint64_t sub_29919E76C(uint64_t a1, uint64_t a2)
{
  sub_29919D77C(a2, "We love Marisa.", 0x10uLL);

  return sub_29919E7BC(a1, a2);
}

uint64_t sub_29919E7BC(uint64_t a1, uint64_t a2)
{
  sub_2991A1CC8(a1, a2);
  sub_2991A1CC8(a1 + 208, a2);
  sub_2991A1CC8(a1 + 416, a2);
  sub_2991A3D3C(a1 + 624, a2);
  sub_2991A211C(a1 + 672, a2);
  sub_2991A4584(a1 + 744, a2);
  v4 = *(a1 + 1000);
  if (v4)
  {
    sub_29919E7BC(v4, a2);
  }

  sub_2991A1E88(a1 + 1008, a2);
  __buf = *(a1 + 1064);
  sub_29919D77C(a2, &__buf, 4uLL);
  v6 = *(a1 + 1084) | *(a1 + 1072) | *(a1 + 1088);
  return sub_29919D77C(a2, &v6, 4uLL);
}

uint64_t sub_29919E884(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 16);
  }

  if (v3)
  {
    return 0;
  }

  v5 = *a2;
  if (((*(*(a1 + 224) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  *a3 = sub_29919B120(a1 + 208, v5);
  return 1;
}

void sub_29919E8F4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  memset(&__p, 0, sizeof(__p));
  while (v13 < a3)
  {
    if ((sub_29919E9E4(a1, a2, a3, &v13, &v14, &__p) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__r.__words[1];
  }

  sub_29919EC74(a1, v14, &__p, &v12, a4, (v10 - a3) & ~((v10 - a3) >> 31), a5);
LABEL_8:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29919E9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29919E9E4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, std::string *this)
{
  v12 = (*(a2 + *a4) ^ (32 * *a5) ^ *a5) & *(a1 + 1056);
  v13 = (*(a1 + 1024) + 12 * v12);
  if (*a5 != *v13)
  {
    v15 = sub_2991A490C(a1, *a5);
    v16 = *(a1 + 16);
    if ((*(v16 + (((v15 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 + 1)))
    {
      v17 = v15 - *a5;
      *a5 = v17;
      v18 = v15 + 2;
      v19 = 0xFFFFFFFFLL;
      while (1)
      {
        if ((*(*(a1 + 432) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
        {
          if (v19 == 0xFFFFFFFFLL)
          {
            v19 = sub_29919B120(a1 + 416, v17);
            v17 = *a5;
          }

          else
          {
            ++v19;
          }

          v21 = *a4;
          v22 = *(a1 + 720);
          v23 = v22 * v19;
          v24 = (v22 * v19) & 0x3F;
          v25 = v24 + v22;
          v26 = (*(a1 + 688) + 8 * ((v22 * v19) >> 6));
          v27 = *v26;
          if (v25 > 0x40)
          {
            v28 = ((2 * v26[1]) << ~v23) | (v27 >> v23);
          }

          else
          {
            v28 = v27 >> v24;
          }

          v29 = *(*(a1 + 640) + v17) | ((*(a1 + 728) & v28) << 8);
          v30 = *(a1 + 1000);
          if (v30)
          {
            if (sub_2991A0C30(v30, a2, a3, a4, v29, this))
            {
              return 1;
            }
          }

          else if (sub_2991A46E8((a1 + 744), a2, a3, a4, v29, this))
          {
            return 1;
          }

          if (*a4 != v21)
          {
            return 0;
          }

          v17 = *a5;
          v16 = *(a1 + 16);
        }

        else
        {
          v20 = *(*(a1 + 640) + v17);
          if (v20 == *(a2 + *a4))
          {
            std::string::push_back(this, v20);
            ++*a4;
            return 1;
          }
        }

        *a5 = ++v17;
        v31 = *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18;
        ++v18;
        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v14 = v13[2];
  if (v14 > 0xFFFFFEFF)
  {
    std::string::push_back(this, v14);
    ++*a4;
    goto LABEL_25;
  }

  v32 = *(a1 + 1000);
  if (v32)
  {
    if (sub_2991A0C30(v32, a2, a3, a4, v14, this))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!sub_2991A46E8((a1 + 744), a2, a3, a4, v14, this))
  {
    return 0;
  }

LABEL_25:
  *a5 = *(*(a1 + 1024) + 12 * v12 + 4);
  return 1;
}

unint64_t sub_29919EC74(unint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, int a6, uint64_t a7)
{
  if ((*a4 & 1) == 0)
  {
    v11 = result;
    if ((a7 & 0x80000000) != 0 || a6 <= a7)
    {
      if (((*(*(result + 224) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) == 0 || ((v12 = sub_29919B120(result + 208, a2), v13 = *(a3 + 23), v13 >= 0) ? (v14 = a3) : (v14 = *a3), v13 >= 0 ? (v15 = *(a3 + 23)) : (v15 = *(a3 + 8)), result = sub_29919EFE8(a5, v12, v14, v15, a4), (*a4 & 1) == 0))
      {
        v16 = *(a3 + 23) >= 0 ? *(a3 + 23) : *(a3 + 8);
        result = sub_2991A490C(v11, a2);
        if ((*a4 & 1) == 0)
        {
          v17 = result;
          v18 = -a2;
          v19 = 0xFFFFFFFFLL;
          do
          {
            if (((*(*(v11 + 16) + (((v17 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v17 + 1)) & 1) == 0)
            {
              break;
            }

            if ((*(*(v11 + 432) + (((v18 + v17) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v18 + v17)))
            {
              if (v19 == 0xFFFFFFFFLL)
              {
                v19 = sub_29919B120(v11 + 416, v18 + v17);
              }

              else
              {
                ++v19;
              }

              v20 = *(v11 + 720);
              v21 = v20 * v19;
              v22 = (v20 * v19) & 0x3F;
              v23 = v22 + v20;
              v24 = (*(v11 + 688) + 8 * ((v20 * v19) >> 6));
              v25 = *v24;
              v26 = v23 > 0x40 ? ((2 * v24[1]) << ~v21) | (v25 >> v21) : v25 >> v22;
              v27 = *(*(v11 + 640) + v18 + v17) | ((*(v11 + 728) & v26) << 8);
              v28 = *(v11 + 1000);
              if (v28)
              {
                sub_2991A0880(v28, a3, v27);
              }

              else
              {
                sub_2991A45C4((v11 + 744), a3, v27);
              }
            }

            else
            {
              std::string::push_back(a3, *(*(v11 + 640) + v18 + v17));
            }

            v29 = *(a3 + 23);
            if ((v29 & 0x80u) != 0)
            {
              v29 = *(a3 + 8);
            }

            sub_29919EC74(v11, v18 + v17, a3, a4, a5, (v29 - v16 + a6), a7);
            v30 = *(a3 + 23);
            v31 = v30;
            v32 = a3 + v30;
            if (v31 >= 0)
            {
              v33 = a3;
            }

            else
            {
              v32 = *a3 + *(a3 + 8);
              v33 = *a3;
            }

            result = std::string::erase(a3, v16, v32 - (v16 + v33));
            ++v17;
          }

          while (*a4 != 1);
        }
      }
    }
  }

  return result;
}

void sub_29919EEE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    v8 = *(a2 + 31);
    v10 = *(a2 + 16);
    v9 = *(a2 + 31);
LABEL_8:
    v20 = 0;
    v12 = *(a2 + 8) + v10;
    v13 = a2 + 8 + v8;
    if (v9 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v9 >= 0)
    {
      v15 = a2 + 8;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    sub_2991A2194(&__p, v14, v14, v15, v15, v14 - v15);
    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = v18;
    }

    sub_29919EC74(a1, *a2, &__p, &v20, a3, v16, a4);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v8 = *(a2 + 31);
  v9 = v8;
  v10 = *(a2 + 16);
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(a2 + 31);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  if (v11 <= a4)
  {
    goto LABEL_8;
  }
}

void sub_29919EFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29919EFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_2991A2240();
  }

  return (*(*v5 + 48))(v5, &v7, v8, a5);
}

void sub_29919F048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = 0;
  v5 = *(a2 + 31);
  v6 = v5;
  v7 = *(a2 + 16);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    v35 = *a2;
    p_p = &__p;
    if (v6 < 0)
    {
      sub_2991A110C(&__p, *(a2 + 8), v7);
    }

    else
    {
      __p = *(a2 + 8);
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      v32 = *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1);
      v33 = --__p.__r_.__value_.__l.__size_;
    }

    else
    {
      v32 = __p.__r_.__value_.__s.__data_[SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1];
      v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
      *(&__p.__r_.__value_.__s + 23) = v33 & 0x7F;
    }

    p_p->__r_.__value_.__s.__data_[v33] = 0;
    sub_29919F388(a3, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = sub_2991A490C(a1, *a2);
    v11 = v10 - *a2;
    v12 = 0xFFFFFFFFLL;
    do
    {
      ++v10;
      if (((*(*(a1 + 16) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        break;
      }

      memset(&v34, 0, sizeof(v34));
      if ((*(*(a1 + 432) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        if (v12 == 0xFFFFFFFFLL)
        {
          v12 = sub_29919B120(a1 + 416, v11);
        }

        else
        {
          ++v12;
        }

        v13 = *(a1 + 720);
        v14 = v13 * v12;
        v15 = (v13 * v12) & 0x3F;
        v16 = v15 + v13;
        v17 = (*(a1 + 688) + 8 * ((v13 * v12) >> 6));
        v18 = *v17;
        if (v16 > 0x40)
        {
          v19 = ((2 * v17[1]) << ~v14) | (v18 >> v14);
        }

        else
        {
          v19 = v18 >> v15;
        }

        v20 = *(*(a1 + 640) + v11) | ((*(a1 + 728) & v19) << 8);
        v21 = *(a1 + 1000);
        if (v21)
        {
          sub_2991A0880(v21, &v34, v20);
        }

        else
        {
          sub_2991A45C4((a1 + 744), &v34, v20);
        }

        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v34;
        }

        else
        {
          v23 = v34.__r_.__value_.__r.__words[0];
        }

        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v34.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v24 = (v23 + size - 1);
          if (v24 > v23)
          {
            v25 = &v23->__r_.__value_.__s.__data_[1];
            do
            {
              v26 = *(v25 - 1);
              *(v25 - 1) = v24->__r_.__value_.__s.__data_[0];
              v24->__r_.__value_.__s.__data_[0] = v26;
              v24 = (v24 - 1);
            }

            while (v25++ < v24);
          }
        }
      }

      else
      {
        std::string::push_back(&v34, *(*(a1 + 640) + v11));
      }

      __p = v34;
      memset(&v34, 0, sizeof(v34));
      v35 = v11;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v30 = __p.__r_.__value_.__r.__words[0];
        v28 = *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1);
        v29 = --__p.__r_.__value_.__l.__size_;
      }

      else
      {
        v28 = *(&v35 + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 7);
        v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
        *(&__p.__r_.__value_.__s + 23) = v29 & 0x7F;
        v30 = &__p;
      }

      v30->__r_.__value_.__s.__data_[v29] = 0;
      sub_29919F388(a3, v28);
      v31 = v37;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      ++v11;
    }

    while ((v31 & 1) == 0);
  }
}

void sub_29919F340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29919F388(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2991A2240();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_29919F3DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = 0;
  v10 = 0;
  while (v9 < a3)
  {
    if ((sub_29919F47C(a1, a2, a3, &v9, &v10) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*(a1 + 224) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
  {
    *a4 = sub_29919B120(a1 + 208, v10);
    return 1;
  }

  return 0;
}

uint64_t sub_29919F47C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v10 = (*(a2 + *a4) ^ (32 * *a5) ^ *a5) & *(a1 + 1056);
  v11 = (*(a1 + 1024) + 12 * v10);
  if (*a5 != *v11)
  {
    v13 = sub_2991A490C(a1, *a5);
    v14 = *(a1 + 16);
    if ((*(v14 + (((v13 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v13 + 1)))
    {
      v15 = v13 - *a5;
      *a5 = v15;
      v16 = v13 + 2;
      v17 = 0xFFFFFFFFLL;
      while (1)
      {
        if ((*(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15))
        {
          if (v17 == 0xFFFFFFFFLL)
          {
            v17 = sub_29919B120(a1 + 416, v15);
            v15 = *a5;
          }

          else
          {
            ++v17;
          }

          v18 = *a4;
          v19 = *(a1 + 720);
          v20 = v19 * v17;
          v21 = (v19 * v17) & 0x3F;
          v22 = v21 + v19;
          v23 = (*(a1 + 688) + 8 * ((v19 * v17) >> 6));
          v24 = *v23;
          if (v22 > 0x40)
          {
            v25 = ((2 * v23[1]) << ~v20) | (v24 >> v20);
          }

          else
          {
            v25 = v24 >> v21;
          }

          v26 = *(*(a1 + 640) + v15) | ((*(a1 + 728) & v25) << 8);
          v27 = *(a1 + 1000);
          if (v27)
          {
            if (sub_2991A09F8(v27, a2, a3, a4, v26))
            {
              return 1;
            }
          }

          else if (sub_2991A4654((a1 + 744), a2, a3, a4, v26))
          {
            return 1;
          }

          if (*a4 != v18)
          {
            return 0;
          }

          v15 = *a5;
          v14 = *(a1 + 16);
        }

        else if (*(*(a1 + 640) + v15) == *(a2 + *a4))
        {
          ++*a4;
          return 1;
        }

        *a5 = ++v15;
        v28 = *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16;
        ++v16;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v12 = v11[2];
  if (v12 > 0xFFFFFEFF)
  {
    ++*a4;
    goto LABEL_25;
  }

  v29 = *(a1 + 1000);
  if (v29)
  {
    if (sub_2991A09F8(v29, a2, a3, a4, v12))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((sub_2991A4654((a1 + 744), a2, a3, a4, v12) & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  *a5 = *(*(a1 + 1024) + 12 * v10 + 4);
  return 1;
}

uint64_t sub_29919F6D8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = result;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  if ((**(result + 224) & 1) == 0 || (v8 = sub_29919B120(result + 208, 0), result = sub_29919EFE8(a4, v8, a2, 0, &v12), (v12 & 1) == 0))
  {
    if (a3)
    {
      result = sub_29919F47C(v7, a2, a3, &v10, &v11);
      if (result)
      {
        do
        {
          if ((*(*(v7 + 224) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
          {
            v9 = sub_29919B120(v7 + 208, v11);
            result = sub_29919EFE8(a4, v9, a2, v10, &v12);
            if (v12)
            {
              break;
            }
          }

          if (v10 >= a3)
          {
            break;
          }

          result = sub_29919F47C(v7, a2, a3, &v10, &v11);
        }

        while ((result & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t sub_29919F7E0(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  sub_2991A228C(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (a2[3])
  {
    sub_29919FC0C(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_2991A0E5C(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_2991A0E5C(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  sub_29919FABC(a1 + 416, 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  sub_2991A29F0((a1 + 672), v18);
  sub_299191880(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x29C29BF70](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_29919F998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29919F9C4(uint64_t *result, int a2)
{
  v2 = result[6];
  if (v2 == 0xFFFFFFFF)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0x70000003ALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h:58: MARISA_SIZE_ERROR: size_ == MARISA_UINT32_MAX";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v4 = result;
  v5 = result[3];
  if (v2 == v5 << 6)
  {
    v7 = 0;
    result = sub_299192AE4(result, v5 + 1, &v7);
    v2 = v4[6];
  }

  if (a2)
  {
    *(v4[1] + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    ++v4[7];
  }

  v4[6] = v2 + 1;
  return result;
}

uint64_t sub_29919FABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v8, 0, 41);
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v8[3] = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_2991A4CDC(v8, a1, a2, a3);
  sub_2991A1258(a1);
  v4 = v8[0];
  v8[0] = *a1;
  *a1 = v4;
  v5 = *&v8[1];
  *&v8[1] = *(a1 + 16);
  *(a1 + 16) = v5;
  v6 = *(&v8[1] + 8);
  *(&v8[1] + 8) = *(a1 + 24);
  *(a1 + 24) = v6;
  LOBYTE(v5) = BYTE8(v8[2]);
  BYTE8(v8[2]) = *(a1 + 40);
  *(a1 + 40) = v5;
  sub_299190AC4(a1, v8);
  if (v13)
  {
    MEMORY[0x29C29BF70](v13, 0x1000C8077774924);
  }

  if (v11)
  {
    MEMORY[0x29C29BF70](v11, 0x1000C8077774924);
  }

  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x29C29BF70](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

void sub_29919FBDC(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_2991A3338(a1, a2 - v2);
  }
}

uint64_t sub_29919FC0C(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    sub_29919130C(&v26, a2[3]);
    v9 = a2[3];
    if (v9)
    {
      v10 = (*(&v26 + 1) + 8);
      v11 = (a2[1] + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 + v13 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    sub_2991A3E24((a1 + 744), &v26, a3, *(a4 + 12));
    result = v26;
    if (v26)
    {
      return MEMORY[0x29C29BF70]();
    }
  }

  else
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    sub_299190B90(&v26, a2[3]);
    if (a2[3])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(&v26 + 1) + v16;
        v19 = a2[1] + v16;
        v20 = *(v19 + 8);
        *v18 = *v19 + v20;
        *(v18 + 8) = v20;
        *(v18 + 12) = *(v19 + 12);
        ++v17;
        v16 += 24;
      }

      while (v17 < a2[3]);
    }

    v21 = *a2;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 25) = 0u;
    if (v21)
    {
      MEMORY[0x29C29BF70](v21, 0x1000C8077774924);
    }

    v22 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
    v23 = v22;
    if (v22)
    {
      sub_29919DD40(v22);
    }

    v28 = *(a1 + 1000);
    *(a1 + 1000) = v23;
    sub_29919D5FC(&v28);
    v24 = *(a1 + 1000);
    if (!v24)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F622E0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001EBLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:491: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
    }

    sub_29919FE8C(v24, &v26, a3, a4, a5 + 1);
    result = v26;
    if (v26)
    {
      return MEMORY[0x29C29BF70]();
    }
  }

  return result;
}

void sub_29919FE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x29C29BF90](v9, MEMORY[0x29EDC9418]);
  if (a9)
  {
    MEMORY[0x29C29BF70]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29919FE8C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  sub_2991A3468(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (*(a2 + 24))
  {
    sub_2991A0070(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_2991A0E5C(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_2991A0E5C(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  sub_29919FABC(a1 + 416, 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  sub_2991A29F0((a1 + 672), v18);
  sub_299191880(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x29C29BF70](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_2991A0044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A0070(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    memset(v20, 0, 41);
    sub_29919130C(v20, *(a2 + 24));
    v9 = *(a2 + 24);
    if (v9)
    {
      v10 = (*(&v20[0] + 1) + 8);
      v11 = (*(a2 + 8) + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    sub_2991A3E24((a1 + 744), v20, a3, *(a4 + 12));
    result = *&v20[0];
    if (*&v20[0])
    {
      return MEMORY[0x29C29BF70](*&v20[0], 0x1000C8077774924);
    }
  }

  else
  {
    v16 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
    v17 = v16;
    if (v16)
    {
      sub_29919DD40(v16);
    }

    *&v20[0] = *(a1 + 1000);
    *(a1 + 1000) = v17;
    sub_29919D5FC(v20);
    v18 = *(a1 + 1000);
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F622E0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001FDLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:509: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
    }

    return sub_29919FE8C(v18, a2, a3, a4, a5 + 1);
  }

  return result;
}

uint64_t sub_2991A0234(uint64_t *a1, uint64_t *a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_2991A12F0(v4, a2);
  sub_299190AC4(a1, v4);
  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C8077774924);
  }

  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    return MEMORY[0x29C29BF70](*&v4[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_2991A0300(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_2991A3CC8(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A0398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A03C0(__int128 *a1, uint64_t *a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_2991A1BFC(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A0494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A04BC(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_2991A185C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A0554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991A057C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*a4 == 0xFFFFFFFFLL)
  {
    MEMORY[0xFFFFFFFF] = 0xFFFFFFFFLL;
    if (*(a4 + 31) < 0)
    {
      v9 = *(a4 + 8);
      v10 = *(a4 + 16);

      sub_2991A110C(0x100000007, v9, v10);
    }

    else
    {
      MEMORY[0x100000007] = *(a4 + 8);
      MEMORY[0x100000017] = *(a4 + 24);
    }

    return;
  }

  v27 = *a4;
  if (*(a4 + 31) < 0)
  {
    sub_2991A110C(&__p, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __p = *(a4 + 8);
  }

  v26 = 0;
  if (!a3)
  {
LABEL_20:
    *a5 = v27;
    v14 = (a5 + 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_2991A110C(v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *v14 = __p;
    }

    goto LABEL_46;
  }

  v11 = 0;
  while ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_23;
    }

    v26 = v11 + 1;
    if (*(a2 + v11) != *(&v27 + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 7))
    {
LABEL_27:
      *a5 = 0xFFFFFFFFLL;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
      goto LABEL_46;
    }

    v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
    --*(&__p.__r_.__value_.__s + 23);
    ++v11;
    p_p = &__p;
LABEL_19:
    p_p->__r_.__value_.__s.__data_[v12] = 0;
    if (v11 >= a3)
    {
      goto LABEL_20;
    }
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    v26 = v11 + 1;
    p_p = __p.__r_.__value_.__r.__words[0];
    if (*(a2 + v11) != *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1))
    {
      goto LABEL_27;
    }

    v12 = --__p.__r_.__value_.__l.__size_;
    ++v11;
    goto LABEL_19;
  }

LABEL_23:
  memset(&__str, 0, sizeof(__str));
  while (v26 < a3)
  {
    if ((sub_29919E9E4(a1, a2, a3, &v26, &v27, &__str) & 1) == 0)
    {
      *a5 = 0xFFFFFFFFLL;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
      goto LABEL_44;
    }
  }

  std::string::basic_string(&v24, &__str, v26 - v11, 0xFFFFFFFFFFFFFFFFLL, &v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v24;
  v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  size = v24.__r_.__value_.__l.__size_;
  v16 = v24.__r_.__value_.__r.__words[0];
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = (v16 + size - 1);
  if (size)
  {
    v19 = v18 > v16;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = &v16->__r_.__value_.__s.__data_[1];
    do
    {
      v21 = *(v20 - 1);
      *(v20 - 1) = v18->__r_.__value_.__s.__data_[0];
      v18->__r_.__value_.__s.__data_[0] = v21;
      v18 = (v18 - 1);
    }

    while (v20++ < v18);
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  *a5 = v27;
  v23 = (a5 + 1);
  if (v15 < 0)
  {
    sub_2991A110C(v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *v23 = __p;
  }

LABEL_44:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2991A0844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991A0880(uint64_t a1, std::string *a2, unint64_t a3)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a1 + 1056) & a3;
      v7 = *(a1 + 1024) + 12 * v6;
      if (a3 != *(v7 + 4))
      {
        break;
      }

      v8 = *(v7 + 8);
      if (v8 <= 0xFFFFFEFF)
      {
        v18 = *(a1 + 1000);
        if (v18)
        {
          sub_2991A0880(v18, a2, v8);
        }

        else
        {
          sub_2991A45C4((a1 + 744), a2, v8);
        }
      }

      else
      {
        std::string::push_back(a2, v8);
      }

      a3 = *(*(a1 + 1024) + 12 * v6);
      if (!a3)
      {
        return;
      }
    }

    v9 = *(*(a1 + 640) + a3);
    if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
    {
      v10 = sub_29919B120(a1 + 416, a3);
      v11 = *(a1 + 720);
      v12 = v11 * v10;
      v13 = (v11 * v10) & 0x3F;
      v14 = v13 + v11;
      v15 = (*(a1 + 688) + 8 * ((v11 * v10) >> 6));
      v16 = *v15;
      v17 = v14 > 0x40 ? ((2 * v15[1]) << ~v12) | (v16 >> v12) : v16 >> v13;
      v19 = v9 | ((*(a1 + 728) & v17) << 8);
      v20 = *(a1 + 1000);
      if (v20)
      {
        sub_2991A0880(v20, a2, v19);
      }

      else
      {
        sub_2991A45C4((a1 + 744), a2, v19);
      }
    }

    else
    {
      std::string::push_back(a2, v9);
    }

    if (a3 <= *(a1 + 1064))
    {
      break;
    }

    a3 = sub_2991A4B70(a1, a3) + ~a3;
  }
}

uint64_t sub_2991A09F8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  while (1)
  {
    while (1)
    {
      v10 = *(a1 + 1056) & a5;
      v11 = *(a1 + 1024) + 12 * v10;
      if (a5 == *(v11 + 4))
      {
        break;
      }

      if (((*(*(a1 + 432) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        if (*(*(a1 + 640) + a5) != *(a2 + *a4))
        {
          return 0;
        }

        ++*a4;
        goto LABEL_27;
      }

      v13 = *(a1 + 1000);
      v14 = *(*(a1 + 640) + a5);
      v15 = sub_29919B120(a1 + 416, a5);
      v16 = *(a1 + 720);
      v17 = v16 * v15;
      v18 = (v16 * v15) & 0x3F;
      v19 = v18 + v16;
      v20 = (*(a1 + 688) + 8 * ((v16 * v15) >> 6));
      v21 = *v20;
      if (v13)
      {
        if (v19 > 0x40)
        {
          v22 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
        }

        else
        {
          v22 = v21 >> v18;
        }

        v25 = v14 | ((*(a1 + 728) & v22) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          if ((sub_2991A09F8(v26, a2, a3, a4, v25) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v19 > 0x40)
        {
          v24 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
        }

        else
        {
          v24 = v21 >> v18;
        }

        v25 = v14 | ((*(a1 + 728) & v24) << 8);
      }

      if ((sub_2991A4654((a1 + 744), a2, a3, a4, v25) & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      if (a5 <= *(a1 + 1064))
      {
        return 1;
      }

      if (*a4 >= a3)
      {
        return 0;
      }

      a5 = sub_2991A4B70(a1, a5) + ~a5;
    }

    v12 = *(v11 + 8);
    if (v12 <= 0xFFFFFEFF)
    {
      v23 = *(a1 + 1000);
      if (v23)
      {
        if ((sub_2991A09F8(v23, a2, a3, a4, v12) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((sub_2991A4654((a1 + 744), a2, a3, a4, v12) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + *a4) != v12)
      {
        return 0;
      }

      ++*a4;
    }

    a5 = *(*(a1 + 1024) + 12 * v10);
    if (!a5)
    {
      return 1;
    }

    if (*a4 >= a3)
    {
      return 0;
    }
  }
}

uint64_t sub_2991A0C30(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5, std::string *a6)
{
  while (1)
  {
    v12 = *(a1 + 1056) & a5;
    v13 = *(a1 + 1024) + 12 * v12;
    if (a5 != *(v13 + 4))
    {
      v15 = *(*(a1 + 640) + a5);
      if ((*(*(a1 + 432) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5))
      {
        v16 = sub_29919B120(a1 + 416, a5);
        v17 = *(a1 + 720);
        v18 = v17 * v16;
        v19 = (v17 * v16) & 0x3F;
        v20 = v19 + v17;
        v21 = (*(a1 + 688) + 8 * ((v17 * v16) >> 6));
        v22 = *v21;
        if (v20 > 0x40)
        {
          v23 = ((2 * v21[1]) << ~v18) | (v22 >> v18);
        }

        else
        {
          v23 = v22 >> v19;
        }

        v25 = v15 | ((*(a1 + 728) & v23) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          if ((sub_2991A0C30(v26, a2, a3, a4, v25, a6) & 1) == 0)
          {
            return 0;
          }
        }

        else if (!sub_2991A46E8((a1 + 744), a2, a3, a4, v25, a6))
        {
          return 0;
        }
      }

      else
      {
        if (v15 != *(a2 + *a4))
        {
          return 0;
        }

        std::string::push_back(a6, v15);
        ++*a4;
      }

      if (a5 <= *(a1 + 1064))
      {
        return 1;
      }

      a5 = sub_2991A4B70(a1, a5) + ~a5;
      goto LABEL_22;
    }

    v14 = *(v13 + 8);
    if (v14 > 0xFFFFFEFF)
    {
      if (*(a2 + *a4) != v14)
      {
        return 0;
      }

      std::string::push_back(a6, v14);
      ++*a4;
      goto LABEL_21;
    }

    v24 = *(a1 + 1000);
    if (!v24)
    {
      break;
    }

    if ((sub_2991A0C30(v24, a2, a3, a4, v14, a6) & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    a5 = *(*(a1 + 1024) + 12 * v12);
    if (!a5)
    {
      return 1;
    }

LABEL_22:
    if (*a4 >= a3)
    {
      sub_2991A0880(a1, a6, a5);
      return 1;
    }
  }

  if (sub_2991A46E8((a1 + 744), a2, a3, a4, v14, a6))
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t sub_2991A0E5C(void *a1, unsigned int a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000034;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:52: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  if ((a2 & 0x7F) != 0)
  {
    *a1 = a2 & 0x7F;
  }

  sub_2991A0F24(a1, a2);
  sub_2991A0FE4(a1, a2);

  return sub_2991A1078(a1, a2);
}

uint64_t sub_2991A0F24(uint64_t result, __int16 a2)
{
  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 > 0x1FF)
  {
    if (v2 == 512)
    {
      goto LABEL_11;
    }

    if (v2 != 1024)
    {
      v3 = a2 & 0xF80;
      if (v2 != 2048)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = a2 & 0xF80;
    goto LABEL_11;
  }

  if ((a2 & 0xF80) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == 128)
  {
    goto LABEL_10;
  }

  v3 = a2 & 0xF80;
  if (v2 != 256)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000060;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:96: MARISA_CODE_ERROR: undefined cache level";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

LABEL_11:
  *(result + 8) = v3;
  return result;
}

uint64_t sub_2991A0FE4(uint64_t result, __int16 a2)
{
  v2 = 4096;
  v3 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v3 != 4096)
  {
    if (v3 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F622E0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000075;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:117: MARISA_CODE_ERROR: undefined tail mode";
      __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
    }

    v2 = 0x2000;
  }

  *(result + 12) = v2;
  return result;
}

uint64_t sub_2991A1078(uint64_t result, int a2)
{
  v2 = 0x20000;
  v3 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v3 != 0x20000)
  {
    if (v3 != 0x10000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F622E0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x50000008ALL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:138: MARISA_CODE_ERROR: undefined node order";
      __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
    }

    v2 = 0x10000;
  }

  *(result + 16) = v2;
  return result;
}

void *sub_2991A110C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2991A11B0();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_2991A11C8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2991A1224(exception, a1);
  __cxa_throw(exception, off_29EF0BC78, MEMORY[0x29EDC9348]);
}

std::logic_error *sub_2991A1224(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *sub_2991A1258(void *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v2 = result[3];
  if (v2 != result[4])
  {

    return sub_299192BB4(result, v2);
  }

  return result;
}

uint64_t sub_2991A12F0(uint64_t a1, uint64_t *a2)
{
  sub_2991A13DC(a1, a2);
  *(a1 + 48) = *sub_29919DC64(a2, 4uLL);
  v4 = *sub_29919DC64(a2, 4uLL);
  if (*(a1 + 48) < v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h:134: MARISA_FORMAT_ERROR: temp_num_1s > size_";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  *(a1 + 56) = v4;
  sub_2991A149C((a1 + 64), a2);
  sub_2991A155C((a1 + 112), a2);

  return sub_2991A155C((a1 + 160), a2);
}

uint64_t sub_2991A13DC(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_2991A161C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A1474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A149C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_2991A185C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A1534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A155C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_2991A1A3C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A15F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A161C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_29919DC64(a2, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v5 = v4 >> 3;
  sub_2991A16F8(a2, (a1 + 16), v4 >> 3);
  sub_29919DB88(a2, 0);
  *(a1 + 24) = v5;

  return sub_2991A17D8(a1);
}

uint64_t sub_2991A16F8(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  result = sub_29919DC64(a1, 8 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_2991A17D8(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x10000007ALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:122: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  *(result + 40) = 1;
  return result;
}

uint64_t sub_2991A185C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_29919DC64(a2, 8uLL);
  v5 = v4 / 0xC;
  if (v4 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  sub_2991A194C(a2, (a1 + 16), v5);
  sub_29919DB88(a2, -v4 & 7);
  *(a1 + 24) = v5;

  return sub_2991A17D8(a1);
}

uint64_t sub_2991A194C(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  result = sub_29919DC64(a1, 12 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_2991A1A3C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_29919DC64(a2, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  sub_2991A1B1C(a2, (a1 + 16), v4 >> 2);
  sub_29919DB88(a2, -v4 & 4);
  *(a1 + 24) = v4 >> 2;

  return sub_2991A17D8(a1);
}

uint64_t sub_2991A1B1C(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  result = sub_29919DC64(a1, 4 * a3);
  *a2 = result;
  return result;
}

void *sub_2991A1BFC(uint64_t a1, uint64_t *a2)
{
  sub_2991A13DC(a1, a2);
  v4 = *sub_29919DC64(a2, 4uLL);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/flat-vector.h";
    exception[2] = 0xA00000084;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/flat-vector.h:132: MARISA_FORMAT_ERROR: temp_value_size > 32";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  *(a1 + 48) = v4;
  *(a1 + 56) = *sub_29919DC64(a2, 4uLL);
  result = sub_29919DC64(a2, 8uLL);
  *(a1 + 64) = *result;
  return result;
}

uint64_t sub_2991A1CC8(uint64_t a1, uint64_t a2)
{
  sub_2991A1D4C(a1, a2);
  __buf = *(a1 + 48);
  sub_29919D77C(a2, &__buf, 4uLL);
  v5 = *(a1 + 56);
  sub_29919D77C(a2, &v5, 4uLL);
  sub_2991A1E88(a1 + 64, a2);
  sub_2991A1FDC(a1 + 112, a2);
  return sub_2991A1FDC(a1 + 160, a2);
}

uint64_t sub_2991A1D4C(uint64_t a1, uint64_t a2)
{
  __buf = 8 * *(a1 + 24);
  sub_29919D77C(a2, &__buf, 8uLL);
  sub_2991A1DAC(a2, *(a1 + 16), *(a1 + 24));
  return sub_29919D640(a2, 0);
}

uint64_t sub_2991A1DAC(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v3 = 8 * a3;

  return sub_29919D77C(a1, a2, v3);
}

uint64_t sub_2991A1E88(uint64_t a1, uint64_t a2)
{
  __buf = 12 * *(a1 + 24);
  sub_29919D77C(a2, &__buf, 8uLL);
  sub_2991A1EF0(a2, *(a1 + 16), *(a1 + 24));
  return sub_29919D640(a2, 4 * (*(a1 + 24) & 1));
}

uint64_t sub_2991A1EF0(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v3 = 12 * a3;

  return sub_29919D77C(a1, a2, v3);
}

uint64_t sub_2991A1FDC(uint64_t a1, uint64_t a2)
{
  __buf = 4 * *(a1 + 24);
  sub_29919D77C(a2, &__buf, 8uLL);
  sub_2991A2040(a2, *(a1 + 16), *(a1 + 24));
  return sub_29919D640(a2, 4 * (*(a1 + 24) & 1));
}

uint64_t sub_2991A2040(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v3 = 4 * a3;

  return sub_29919D77C(a1, a2, v3);
}

uint64_t sub_2991A211C(uint64_t a1, uint64_t a2)
{
  sub_2991A1D4C(a1, a2);
  LODWORD(__buf) = *(a1 + 48);
  sub_29919D77C(a2, &__buf, 4uLL);
  LODWORD(__buf) = *(a1 + 56);
  sub_29919D77C(a2, &__buf, 4uLL);
  __buf = *(a1 + 64);
  return sub_29919D77C(a2, &__buf, 8uLL);
}

_BYTE *sub_2991A2194(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v7 = result;
  if (a6 > 0x16)
  {
    operator new();
  }

  result[23] = a6;
  while (a3 != a5)
  {
    v8 = *--a3;
    *v7++ = v8;
  }

  *v7 = 0;
  return result;
}

void sub_2991A2240()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

uint64_t sub_2991A228C(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 8);
  if (v10)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v10 - 1);
    v14 = xmmword_2993FCC10;
    v15 = xmmword_2993FCC00;
    v16 = (v11 + 64);
    v17 = vdupq_n_s64(4uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v13, v15));
      if (vuzp1_s16(v18, *v13.i8).u8[0])
      {
        *(v16 - 12) = v12;
      }

      if (vuzp1_s16(v18, *&v13).i8[2])
      {
        *(v16 - 6) = v12 + 1;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
      {
        *v16 = v12 + 2;
        v16[6] = v12 + 3;
      }

      v12 += 4;
      v14 = vaddq_s64(v14, v17);
      v15 = vaddq_s64(v15, v17);
      v16 += 24;
    }

    while (((v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v12);
  }

  v19 = sub_299195388(v11, v11 + 24 * v10, 0);
  v20 = 256;
  if (a5 != 1)
  {
    v20 = 1;
  }

  do
  {
    v21 = v20;
    v20 *= 2;
  }

  while (v21 < v19 / *(a4 + 8));
  sub_2991917EC(a1 + 126, v21);
  a1[132] = v21 - 1;
  sub_29919F9C4(a1, 1);
  sub_29919F9C4(a1, 0);
  LOBYTE(v71[0]) = 0;
  sub_2991902B4(a1 + 78, v71);
  sub_29919F9C4(a1 + 52, 0);
  v61 = a3;
  v62 = a5;
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  sub_2991A2C7C(v69, &v65);
  v22 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v63 = a4;
    do
    {
      v23 = a1[58];
      v24 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v22 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v28 = v23 - v22;
      if (v25 < v26)
      {
        while (1)
        {
          v29 = *(a2 + 8) + 24 * v25;
          if (*(v29 + 8) != v27)
          {
            break;
          }

          *(v29 + 12) = v28;
          v25 = (v25 + 1);
          if (v26 == v25)
          {
            goto LABEL_51;
          }
        }
      }

      if (v25 != v26)
      {
        v30 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v30)
        {
          MEMORY[0x29C29BF70](v30, 0x1000C8077774924);
        }

        v31 = *(a2 + 8);
        v32 = *(v31 + 24 * v25 + 12);
        v33 = v25 + 1;
        if (v25 + 1 < v26)
        {
          v64 = v23;
          v34 = v32;
          v35 = 24 * v25;
          v36 = (v25 << 32) + 0x100000000;
          do
          {
            if (*(*(v31 + v35) + v27) != *(*(v31 + v35 + 24) + v27))
            {
              *&v37 = v34;
              v65.n128_u64[0] = v36 + v25;
              v65.n128_u64[1] = v27 | (v37 << 32);
              sub_2991950E8(&v67, &v65);
              v31 = *(a2 + 8);
              v34 = 0.0;
              LODWORD(v25) = v33;
            }

            v34 = v34 + *(v31 + v35 + 36);
            ++v33;
            v35 += 24;
            v36 += 0x100000000;
          }

          while (v26 != v33);
          v32 = v34;
          a4 = v63;
          v23 = v64;
        }

        v65.n128_u32[0] = v25;
        v65.n128_u32[1] = v26;
        v65.n128_u64[1] = v27 | (LODWORD(v32) << 32);
        v38 = sub_2991950E8(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          sub_2991A2F10(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v38);
        }

        v39 = v68[1];
        if (v23 == v22)
        {
          a1[133] = v68[1];
        }

        if (v39)
        {
          v40 = 0;
          do
          {
            v41 = (*(&v67 + 1) + 16 * v40);
            v42 = *(v41 + 2);
            v43 = *(a2 + 8) + 24 * *v41;
            v44 = *(v43 + 8);
            v45 = v42 + 1;
            if (v42 + 1 >= v44)
            {
              v46 = *(v41 + 2);
              LODWORD(v44) = v42 + 1;
            }

            else
            {
              v46 = v44 - 1;
              v47 = *(v41 + 2);
              do
              {
                v48 = v47;
                v47 = v45;
                v49 = (*(a2 + 8) + 24 * *v41);
                v50 = *v41;
                while (++v50 < *(v41 + 1))
                {
                  v51 = *v49;
                  v52 = v49[3];
                  v49 += 3;
                  if (*(v51 + v47) != *(v52 + v47))
                  {
                    v46 = v48;
                    LODWORD(v44) = v47;
                    goto LABEL_45;
                  }
                }

                v45 = v47 + 1;
              }

              while (v47 + 1 != v44);
            }

LABEL_45:
            v53 = v41[3];
            v54 = a1[127] + 12 * (((32 * v28) ^ v28 ^ *(*v43 + v42)) & a1[132]);
            if (*(v54 + 8) < v53)
            {
              v55 = a1[81];
              *v54 = v28;
              *(v54 + 4) = v55;
              *(v54 + 8) = v53;
              v42 = *(v41 + 2);
            }

            if (v46 == v42)
            {
              v65.n128_u8[0] = *(*(*(a2 + 8) + 24 * *v41) + v46);
              sub_2991902B4(a1 + 78, &v65);
              sub_29919F9C4(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              sub_2991902B4(a1 + 78, &v65);
              sub_29919F9C4(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v56 = *(v41 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v41) + v56;
              v65.n128_u64[1] = (v44 - v56);
              v65.n128_f32[3] = v41[3];
              sub_29919515C(v71, &v65);
            }

            *(v41 + 2) = v44;
            sub_2991A2C7C(v69, v41);
            sub_29919F9C4(a1, 1);
            ++v40;
          }

          while (v40 < v68[1]);
        }
      }

LABEL_51:
      sub_29919F9C4(a1, 0);
      v22 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  sub_29919F9C4(a1, 0);
  sub_29919FABC(a1, v62 == 1, 1);
  sub_2991A2AEC(a1 + 624);
  sub_2991A2B84(a1, a2, v61);
  v57 = *a2;
  *a2 = v71[0];
  v71[0] = v57;
  v58 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v58;
  v59 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v59;
  LOBYTE(v58) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v58;
  if (v67)
  {
    MEMORY[0x29C29BF70](v67, 0x1000C8077774924);
  }

  sub_299196BF8(v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x29C29BF70](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_2991A28E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x29C29BF70](a11, 0x1000C8077774924);
  }

  sub_299196BF8(va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x29C29BF70](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001D3;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:467: MARISA_MEMORY_ERROR: std::bad_alloc";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2991A29F0(__int128 *a1, uint64_t a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_299196CF4(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A2AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2991A2AEC(_BYTE *result)
{
  if (result[40] == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return sub_29919290C(result, v2);
  }

  return result;
}

uint64_t sub_2991A2B84(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  sub_299194008(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A2C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991A2C7C(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = 341 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_2991A2D3C(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  v9 = *(v6 + 8 * (v8 / 0x155)) + 12 * (v8 % 0x155);
  v10 = *a2;
  *(v9 + 8) = *(a2 + 2);
  *v9 = v10;
  ++v3[5];
  return result;
}

void *sub_2991A2D3C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_29920B86C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_299195BE4(a1, &v10);
}

void sub_2991A2EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2991A2F10(__n128 *a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  v7 = a2 - a1;
  if (v7 < 129)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x29EDC9418];
    v9 = a2 - a1;
    while (1)
    {
      v10 = operator new(16 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  sub_2991A300C(a1, a2, a3, v7, v13, v9, a4);
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_2991A2FF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_2991A300C(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      a7.n128_u32[0] = a2[-1].n128_u32[3];
      if (a7.n128_f32[0] > a1->n128_f32[3])
      {
        a7 = *a1;
        *a1 = a2[-1];
        a2[-1] = a7;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      v15 = a4 >> 1;
      if (a4 <= a6)
      {
        v17.n128_f64[0] = sub_2991A31DC(a1, v14, a3, v15, a5, a7);
        v18.n128_f64[0] = sub_2991A31DC(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v13], v17);

        a7.n128_f64[0] = sub_2991965A4(a5, &a5[v13], &a5[v13], &a5[a4], a1, v18);
      }

      else
      {
        sub_2991A300C(a1, v14, a3, v15, a5, a6);
        sub_2991A300C(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        a7.n128_u64[0] = sub_299196604(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6, v16).n128_u64[0];
      }
    }

    else
    {

      sub_2991963A4(a1, a2);
    }
  }

  return a7.n128_f64[0];
}

double sub_2991A31DC(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v10 = a2 - 1;
      if (a2[-1].n128_f32[3] <= a1->n128_f32[3])
      {
        *a5 = *a1;
        a6 = *v10;
      }

      else
      {
        *a5 = *v10;
        a6 = *a1;
      }

      a5[1] = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      sub_2991A300C(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      sub_2991A300C(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      a6.n128_f64[0] = sub_2991965A4(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, v12);
    }

    else
    {

      a6.n128_u64[0] = sub_299196888(a1, a2, a5).n128_u64[0];
    }
  }

  return a6.n128_f64[0];
}

void sub_2991A3338(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_299212A8C();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_299236FB8(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t sub_2991A3468(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_2993FCC10;
    v13 = xmmword_2993FCC00;
    v14 = (v9 + 64);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 12) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 6) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[6] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 24;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v17 = sub_29919915C(v9, v9 + 24 * v8, 0);
  v18 = 256;
  if (a5 != 1)
  {
    v18 = 1;
  }

  do
  {
    v19 = v18;
    v18 *= 2;
  }

  while (v19 < v17 / *(a4 + 8));
  sub_2991917EC(a1 + 126, v19);
  a1[132] = v19 - 1;
  sub_29919F9C4(a1, 1);
  sub_29919F9C4(a1, 0);
  LOBYTE(v71[0]) = 0;
  sub_2991902B4(a1 + 78, v71);
  sub_29919F9C4(a1 + 52, 0);
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  sub_2991A2C7C(v69, &v65);
  v20 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v62 = a4;
    do
    {
      v21 = a1[58];
      v22 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v20 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v64 = v21;
      v26 = v21 - v20;
      if (v23 < v24)
      {
        while (1)
        {
          v27 = *(a2 + 8) + 24 * v23;
          if (*(v27 + 8) != v25)
          {
            break;
          }

          *(v27 + 12) = v26;
          v23 = (v23 + 1);
          if (v24 == v23)
          {
            goto LABEL_51;
          }
        }
      }

      if (v23 != v24)
      {
        v28 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v28)
        {
          MEMORY[0x29C29BF70](v28, 0x1000C8077774924);
        }

        v29 = *(a2 + 8);
        v30 = *(v29 + 24 * v23 + 12);
        v31 = v23 + 1;
        if (v23 + 1 < v24)
        {
          v63 = v20;
          v32 = v30;
          v33 = 24 * v23;
          v34 = (v23 << 32) + 0x100000000;
          do
          {
            if (*(*(v29 + v33) - v25 - 1) != *(*(v29 + v33 + 24) - v25 - 1))
            {
              *&v35 = v32;
              v65.n128_u64[0] = v34 + v23;
              v65.n128_u64[1] = v25 | (v35 << 32);
              sub_2991950E8(&v67, &v65);
              v29 = *(a2 + 8);
              v32 = 0.0;
              LODWORD(v23) = v31;
            }

            v32 = v32 + *(v29 + v33 + 36);
            ++v31;
            v33 += 24;
            v34 += 0x100000000;
          }

          while (v24 != v31);
          v30 = v32;
          a4 = v62;
          v20 = v63;
        }

        v65.n128_u32[0] = v23;
        v65.n128_u32[1] = v24;
        v65.n128_u64[1] = v25 | (LODWORD(v30) << 32);
        v36 = sub_2991950E8(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          sub_2991A2F10(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v36);
        }

        v37 = v68[1];
        if (v64 == v20)
        {
          a1[133] = v68[1];
        }

        if (v37)
        {
          v38 = 0;
          do
          {
            v39 = (*(&v67 + 1) + 16 * v38);
            v40 = *(v39 + 2);
            v41 = *(a2 + 8);
            v42 = *(v41 + 24 * *v39 + 8);
            v43 = v40 + 1;
            if (v40 + 1 >= v42)
            {
              v44 = *(v39 + 2);
              LODWORD(v42) = v40 + 1;
            }

            else
            {
              v44 = v42 - 1;
              v45 = (v41 + 24 * *v39);
              v46 = *(v39 + 2);
              do
              {
                v47 = v46;
                v46 = v43;
                v48 = v45;
                v49 = *v39;
                while (++v49 < *(v39 + 1))
                {
                  v50 = *v48;
                  v51 = v48[3];
                  v48 += 3;
                  if (*(v50 + ~v47 - 1) != *(v51 + ~v47 - 1))
                  {
                    v44 = v47;
                    LODWORD(v42) = v43;
                    goto LABEL_45;
                  }
                }

                ++v43;
              }

              while (v46 + 1 != v42);
            }

LABEL_45:
            v52 = a1[81];
            v53 = v39[3];
            v54 = a1[127] + 12 * (a1[132] & v52);
            if (*(v54 + 8) < v53)
            {
              *v54 = v26;
              *(v54 + 4) = v52;
              *(v54 + 8) = v53;
              v40 = *(v39 + 2);
            }

            if (v44 == v40)
            {
              v65.n128_u8[0] = *(~v44 + *(*(a2 + 8) + 24 * *v39));
              sub_2991902B4(a1 + 78, &v65);
              sub_29919F9C4(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              sub_2991902B4(a1 + 78, &v65);
              sub_29919F9C4(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v55 = *(v39 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v39) - v55;
              v65.n128_u64[1] = (v42 - v55);
              v65.n128_f32[3] = v39[3];
              sub_29919515C(v71, &v65);
            }

            *(v39 + 2) = v42;
            sub_2991A2C7C(v69, v39);
            sub_29919F9C4(a1, 1);
            ++v38;
          }

          while (v38 < v68[1]);
        }
      }

LABEL_51:
      sub_29919F9C4(a1, 0);
      v20 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  sub_29919F9C4(a1, 0);
  sub_29919FABC(a1, a5 == 1, 1);
  sub_2991A2AEC(a1 + 624);
  sub_2991A3BD0(a1, a2, a3);
  v56 = *a2;
  *a2 = v71[0];
  v71[0] = v56;
  v57 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v57;
  v58 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v58;
  LOBYTE(v57) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v57;
  if (v67)
  {
    MEMORY[0x29C29BF70](v67, 0x1000C8077774924);
  }

  sub_299196BF8(v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x29C29BF70](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_2991A3AC8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x29C29BF70](a11, 0x1000C8077774924);
  }

  sub_299196BF8(va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x29C29BF70](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001D3;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:467: MARISA_MEMORY_ERROR: std::bad_alloc";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2991A3BD0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  sub_299194008(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A3CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A3CC8(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_29919DC64(a2, 8uLL);
  *(a1 + 16) = sub_29919DC64(a2, v4);
  sub_29919DB88(a2, -v4 & 7);
  *(a1 + 24) = v4;

  return sub_2991A17D8(a1);
}

uint64_t sub_2991A3D3C(uint64_t a1, uint64_t a2)
{
  __buf = *(a1 + 24);
  sub_29919D77C(a2, &__buf, 8uLL);
  sub_2991A3DA0(a2, *(a1 + 16), *(a1 + 24));
  return sub_29919D640(a2, -*(a1 + 24) & 7);
}

uint64_t sub_2991A3DA0(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  return sub_29919D77C(a1, a2, a3);
}

uint64_t sub_2991A3E24(__int128 *a1, uint64_t a2, __int128 *a3, int a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x200000011;
    v17 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:17: MARISA_NULL_ERROR: offsets == NULL";
    goto LABEL_28;
  }

  if (a4 == 0x2000)
  {
    goto LABEL_15;
  }

  if (a4 != 4096)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x500000028;
    v17 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:40: MARISA_CODE_ERROR: undefined tail mode";
LABEL_28:
    exception[3] = v17;
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = 0;
    a4 = 4096;
    while (1)
    {
      v7 = *(a2 + 8) + 16 * v6;
      v8 = *(v7 + 8);
      if (v8)
      {
        break;
      }

LABEL_11:
      if (++v6 == v5)
      {
        goto LABEL_15;
      }
    }

    v9 = *v7;
    v10 = -v8;
    while (*(v9 + 1 + v10))
    {
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_11;
      }
    }

    a4 = 0x2000;
  }

  else
  {
    a4 = 4096;
  }

LABEL_15:
  memset(v18, 0, 41);
  memset(v19, 0, 41);
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v19[3] = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_2991A4064(v18, a2, a3, a4);
  v12 = *a1;
  *a1 = v18[0];
  v18[0] = v12;
  v13 = *(a1 + 2);
  *(a1 + 2) = *&v18[1];
  *&v18[1] = v13;
  v14 = *(a1 + 24);
  *(a1 + 24) = *(&v18[1] + 8);
  *(&v18[1] + 8) = v14;
  LOBYTE(v13) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v18[2]);
  BYTE8(v18[2]) = v13;
  sub_299190AC4(a1 + 6, v19);
  if (v24)
  {
    MEMORY[0x29C29BF70](v24, 0x1000C8077774924);
  }

  if (v22)
  {
    MEMORY[0x29C29BF70](v22, 0x1000C8077774924);
  }

  if (v20)
  {
    MEMORY[0x29C29BF70](v20, 0x1000C8077774924);
  }

  if (*&v19[0])
  {
    MEMORY[0x29C29BF70](*&v19[0], 0x1000C8077774924);
  }

  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x29C29BF70](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_2991A4064(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_2993FCC10;
    v13 = xmmword_2993FCC00;
    v14 = (v9 + 44);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 8) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 4) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[4] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 16;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  sub_29919A99C(v9, v9 + 16 * v8, 0);
  memset(v37, 0, 41);
  v17 = *(a2 + 24);
  LODWORD(v36[0]) = 0;
  sub_29919A70C(v37, v17, v36);
  v36[0] = 0;
  v36[1] = 0;
  v18 = *(a2 + 24);
  if (v18)
  {
    v19 = v36;
    do
    {
      --v18;
      v20 = *(a2 + 8) + 16 * v18;
      v21 = *(v20 + 8);
      if (!v21)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F622E0;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
        exception[2] = 0x4000000ACLL;
        exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:172: MARISA_RANGE_ERROR: current.length() == 0";
        __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
      }

      v22 = 0;
      v23 = 0;
      v24 = *(v19 + 2);
      while (v24 != v23)
      {
        if (*(*v19 + v22) != *(*v20 + v22))
        {
          goto LABEL_19;
        }

        ++v23;
        --v22;
        if (v21 == v23)
        {
          goto LABEL_20;
        }
      }

      v23 = *(v19 + 2);
LABEL_19:
      if (v23 != v21)
      {
        v25 = *(&v37[0] + 1);
        goto LABEL_23;
      }

LABEL_20:
      v25 = *(&v37[0] + 1);
      if (v24)
      {
        *(*(&v37[0] + 1) + 4 * *(v20 + 12)) = v24 - v21 + *(*(&v37[0] + 1) + 4 * *(v19 + 3));
        goto LABEL_35;
      }

LABEL_23:
      *(v25 + 4 * *(v20 + 12)) = *(a1 + 24);
      v26 = *(v20 + 8);
      if (v26)
      {
        for (i = 0; i < v26; ++i)
        {
          v35 = *(*v20 - v26 + i + 1);
          sub_2991902B4(a1, &v35);
          v26 = *(v20 + 8);
        }

        if (a4 != 4096)
        {
          if (v26 >= 2)
          {
            v28 = 1;
            do
            {
              sub_29919F9C4((a1 + 48), 0);
              ++v28;
            }

            while (v28 < *(v20 + 8));
          }

LABEL_33:
          sub_29919F9C4((a1 + 48), 1);
          goto LABEL_34;
        }
      }

      else if (a4 != 4096)
      {
        goto LABEL_33;
      }

      v35 = 0;
      sub_2991902B4(a1, &v35);
LABEL_34:
      if (*(a1 + 28))
      {
        v34 = __cxa_allocate_exception(0x20uLL);
        *v34 = &unk_2A1F622E0;
        v34[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc";
        v34[2] = 0x7000000C2;
        v34[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/tail.cc:194: MARISA_SIZE_ERROR: buf_.size() > MARISA_UINT32_MAX";
        __cxa_throw(v34, &unk_2A1F622B8, std::exception::~exception);
      }

LABEL_35:
      v19 = v20;
    }

    while (v18);
  }

  sub_2991A2AEC(a1);
  v29 = *a3;
  *a3 = v37[0];
  v37[0] = v29;
  v30 = *(a3 + 2);
  *(a3 + 2) = *&v37[1];
  *&v37[1] = v30;
  v31 = *(a3 + 24);
  *(a3 + 24) = *(&v37[1] + 8);
  *(&v37[1] + 8) = v31;
  LOBYTE(v30) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v37[2]);
  result = v29;
  BYTE8(v37[2]) = v30;
  if (v29)
  {
    return MEMORY[0x29C29BF70](v29, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A4404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x29C29BF70](a13, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991A4448(uint64_t a1, uint64_t *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_2991A484C(v8, a2);
  sub_2991A0234(v9, a2);
  v4 = *a1;
  *a1 = v8[0];
  v8[0] = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  sub_299190AC4((a1 + 48), v9);
  if (v14)
  {
    MEMORY[0x29C29BF70](v14, 0x1000C8077774924);
  }

  if (v12)
  {
    MEMORY[0x29C29BF70](v12, 0x1000C8077774924);
  }

  if (v10)
  {
    MEMORY[0x29C29BF70](v10, 0x1000C8077774924);
  }

  if (*&v9[0])
  {
    MEMORY[0x29C29BF70](*&v9[0], 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x29C29BF70](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_2991A4584(uint64_t a1, uint64_t a2)
{
  sub_2991A3D3C(a1, a2);

  return sub_2991A1CC8(a1 + 48, a2);
}

void sub_2991A45C4(void *a1, std::string *this, unint64_t a3)
{
  v3 = a3;
  if (a1[12])
  {
    do
    {
      std::string::push_back(this, *(a1[2] + v3));
      v6 = *(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
      ++v3;
    }

    while ((v6 & 1) == 0);
  }

  else
  {
    v7 = a1[2];
    v8 = *(v7 + a3);
    if (v8)
    {
      v9 = (a3 + v7 + 1);
      do
      {
        std::string::push_back(this, v8);
        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }
  }
}

uint64_t sub_2991A4654(void *a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = a1[2];
  if (a1[12])
  {
    v6 = *a4;
    do
    {
      if (*(v5 + a5) != *(a2 + v6))
      {
        break;
      }

      *a4 = ++v6;
      if ((*(a1[8] + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5))
      {
        return 1;
      }

      ++a5;
    }

    while (v6 < a3);
  }

  else
  {
    v7 = (v5 + a5);
    v8 = *a4;
    v11 = *v7;
    v9 = v7 + 1;
    v10 = v11;
    while (v10 == *(a2 + v8))
    {
      *a4 = ++v8;
      v10 = *v9;
      if (!*v9)
      {
        return 1;
      }

      ++v9;
      if (v8 >= a3)
      {
        return 0;
      }
    }
  }

  return 0;
}

BOOL sub_2991A46E8(void *a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5, std::string *this)
{
  v7 = a5;
  if (a1[12])
  {
    v12 = *a4;
    while (1)
    {
      v13 = *(a1[2] + v7);
      v14 = *(a2 + v12);
      v15 = v13 == v14;
      if (v13 != v14)
      {
        break;
      }

      std::string::push_back(this, v13);
      v12 = *a4 + 1;
      *a4 = v12;
      if ((*(a1[8] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
      {
        break;
      }

      ++v7;
      if (v12 >= a3)
      {
        do
        {
          std::string::push_back(this, *(a1[2] + v7));
          v16 = *(a1[8] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7;
          ++v7;
        }

        while ((v16 & 1) == 0);
        return 1;
      }
    }
  }

  else
  {
    v17 = a1[2];
    v18 = *a4;
    v19 = v17 + a5 - *a4;
    v20 = *(v17 + a5);
    v21 = *a4;
    while (1)
    {
      v22 = *(a2 + v21);
      v15 = v20 == v22;
      if (v20 != v22)
      {
        break;
      }

      std::string::push_back(this, v20);
      v23 = *a4;
      v21 = *a4 + 1;
      *a4 = v21;
      v20 = *(v19 + v21);
      if (!v20)
      {
        break;
      }

      if (v21 >= a3)
      {
        v24 = (v7 - v18 + v17 + v23 + 2);
        do
        {
          std::string::push_back(this, v20);
          v25 = *v24++;
          v20 = v25;
        }

        while (v25);
        return 1;
      }
    }
  }

  return v15;
}

uint64_t sub_2991A484C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_2991A3CC8(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991A48E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2991A490C(void *a1, unint64_t a2)
{
  v2 = (a1[16] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = a2 - (v3 << 9) + *v11;
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = v13 + v19 - 448;
      }

      else
      {
        v14 |= 6uLL;
        v13 = v13 + v17 - 384;
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = v13 + (v16 & 0x1FF) - 320;
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v12 >> 23) + v13 - 256;
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = v13 + v18 - 192;
    }

    else
    {
      v14 |= 2uLL;
      v13 = v13 + (v12 >> 7) - 128;
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = v15 + v13 - 64;
    }
  }

  return sub_2991A4AE8(v13, v14 << 6, ~*(a1[2] + 8 * v14));
}

unint64_t sub_2991A4AE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * a1 - 0x101010101010101) >> 7) & 0x101010101010101));
  return v5 + a2 + byte_2993FD638[256 * (a1 - ((0x101010101010100 * v4) >> v5)) + (a3 >> v5)];
}

unint64_t sub_2991A4B70(void *a1, unint64_t a2)
{
  v2 = (a1[22] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = v12 - v25;
    }

    else
    {
      v29 = v12 - v26;
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = v12 - v23;
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = v12 - v30;
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = v12 - (v11 >> 7);
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = v12 - v15;
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = v12 - v18;
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }

  return sub_2991A4AE8(v21, v22 << 6, *(a1[2] + 8 * v22));
}

void sub_2991A4CDC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = a2[6];
  v9 = v8 >> 9;
  if ((v8 & 0x1FF) != 0)
  {
    ++v9;
  }

  sub_299193D08(a1 + 8, v9 + 1);
  v10 = v6[3];
  if (!v10)
  {
    LODWORD(v13) = 0;
    if ((v8 & 0x1FF) == 0)
    {
      goto LABEL_55;
    }

LABEL_35:
    v35 = (v8 - 1) >> 9;
    v36 = ((v8 - 1) >> 6) & 7;
    if (v36 > 3)
    {
      if ((((v8 - 1) >> 6) & 7) > 5)
      {
        if (v36 == 7)
        {
          goto LABEL_55;
        }

        v37 = a1[9];
        v43 = (v37 + 12 * v35);
        v44 = v43[2];
        v39 = v13 - *v43;
        goto LABEL_54;
      }

      if (v36 != 4)
      {
        v37 = a1[9];
        v47 = (v37 + 12 * v35);
        v48 = v47[2];
        v39 = v13 - *v47;
LABEL_53:
        v44 = v48 & 0xFFFC01FF | ((v39 & 0x1FF) << 9);
        *(v37 + 12 * v35 + 8) = v44;
LABEL_54:
        *(v37 + 12 * v35 + 8) = v44 & 0xF803FFFF | ((v39 & 0x1FF) << 18);
        goto LABEL_55;
      }

      v37 = a1[9];
      v39 = v13 - *(v37 + 12 * v35);
LABEL_52:
      v50 = v37 + 12 * v35;
      v48 = *(v50 + 8) & 0xFFFFFE00 | v39 & 0x1FF;
      *(v50 + 8) = v48;
      goto LABEL_53;
    }

    if ((((v8 - 1) >> 6) & 7) > 1)
    {
      if (v36 != 2)
      {
        v37 = a1[9];
        v49 = (v37 + 12 * v35);
        v46 = v49[1];
        v39 = v13 - *v49;
        goto LABEL_51;
      }

      v37 = a1[9];
      v41 = (v37 + 12 * v35);
      v42 = v41[1];
      v39 = v13 - *v41;
    }

    else
    {
      if (v36)
      {
        v37 = a1[9];
        v45 = (v37 + 12 * v35);
        v40 = v45[1];
        v39 = v13 - *v45;
      }

      else
      {
        v37 = a1[9];
        v38 = (v37 + 12 * v35);
        v39 = v13 - *v38;
        v40 = v38[1] & 0xFFFFFF80 | v39 & 0x7F;
        v38[1] = v40;
      }

      v42 = v40 & 0xFFFF807F | (v39 << 7);
      *(v37 + 12 * v35 + 4) = v42;
    }

    v46 = v42 & 0xFF807FFF | (v39 << 15);
    *(v37 + 12 * v35 + 4) = v46;
LABEL_51:
    *(v37 + 12 * v35 + 4) = v46 & 0x7FFFFF | (v39 << 23);
    goto LABEL_52;
  }

  v51 = v8 & 0x1FF;
  v52 = v8;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v55 = v6[3];
  do
  {
    v15 = v14 & 7;
    v16 = (a1[9] + 12 * (v11 >> 9));
    if (v15 <= 3)
    {
      if ((v14 & 7u) > 1uLL)
      {
        if (v15 == 2)
        {
          v19 = (v13 - *v16);
          v18 = v16[1] & 0xFFFF807F | ((v13 - *v16) << 7);
        }

        else
        {
          v21 = (v13 - *v16);
          v18 = v16[1] & 0xFF807FFF | ((v13 - *v16) << 15);
        }
      }

      else
      {
        if ((v14 & 7) == 0)
        {
          *v16 = v13;
          goto LABEL_22;
        }

        v18 = v16[1] & 0xFFFFFF80 | (v13 - *v16) & 0x7F;
      }

      goto LABEL_19;
    }

    if ((v14 & 7u) > 5uLL)
    {
      if (v15 == 6)
      {
        v20 = v16[2] & 0xFFFC01FF | (((v13 - *v16) & 0x1FF) << 9);
      }

      else
      {
        v20 = v16[2] & 0xF803FFFF | (((v13 - *v16) & 0x1FF) << 18);
      }
    }

    else
    {
      if (v15 == 4)
      {
        v17 = (v13 - *v16);
        v18 = v16[1] & 0x7FFFFF | ((v13 - *v16) << 23);
LABEL_19:
        v16[1] = v18;
        goto LABEL_22;
      }

      v20 = v16[2] & 0xFFFFFE00 | (v13 - *v16) & 0x1FF;
    }

    v16[2] = v20;
LABEL_22:
    v22 = *(v6[2] + 8 * v14);
    v23 = (((((v22 >> 1) & 0x5555555555555555) + (v22 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v22 >> 1) & 0x5555555555555555) + (v22 & 0x5555555555555555)) & 0x3333333333333333);
    v24 = (0x101010101010101 * (((v23 >> 4) & 0x707070707070707) + (v23 & 0x707070707070707))) >> 56;
    if (a3)
    {
      v25 = v6;
      v26 = a3;
      v27 = a4;
      v28 = 64;
      if (v8 < 0x40)
      {
        v28 = v8;
      }

      v29 = v28 - v24;
      v30 = -v12 & 0x1FFLL;
      if (v28 - v24 > v30)
      {
        v53 = v12;
        v54 = v13;
        v56 = sub_2991A4AE8(v30, v11, ~v22);
        sub_29919B974(a1 + 14, &v56);
        v12 = v53;
        v13 = v54;
        v10 = v55;
      }

      v12 += v29;
      a4 = v27;
      a3 = v26;
      v6 = v25;
    }

    if (a4)
    {
      v31 = -v13 & 0x1FFLL;
      if (v24 > v31)
      {
        v32 = v22;
        v33 = v13;
        v34 = v12;
        v56 = sub_2991A4AE8(v31, v11, v32);
        sub_29919B974(a1 + 20, &v56);
        v12 = v34;
        v10 = v55;
        v13 = v33;
      }
    }

    v13 += v24;
    ++v14;
    v11 += 64;
    v8 -= 64;
  }

  while (v10 != v14);
  v8 = v52;
  if (v51)
  {
    goto LABEL_35;
  }

LABEL_55:
  a1[6] = v8;
  a1[7] = v6[7];
  *(a1[9] + 12 * a1[11] - 12) = v13;
  if (a3)
  {
    v56 = v8;
    sub_29919B974(a1 + 14, &v56);
    sub_2991A5118(a1 + 28);
  }

  if (a4)
  {
    v56 = v8;
    sub_29919B974(a1 + 20, &v56);
    sub_2991A5118(a1 + 40);
  }
}

_DWORD *sub_2991A5118(_DWORD *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F622E0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_2A1F622B8, std::exception::~exception);
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return sub_29919413C(result, v2);
  }

  return result;
}

void *sub_2991A5214(void *a1)
{
  *a1 = &unk_2A1F62308;
  v2 = a1[1];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x29C29BFB0](v2, 0x80C40D6874129);
  }

  return a1;
}

void sub_2991A5288(void *a1)
{
  sub_2991A5214(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2991A52C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *v3) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_299212A8C();
    }

    v8 = v4 - *v3;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_299229E2C(*(a1 + 8), v10);
    }

    v11 = (8 * v7);
    *v11 = a2;
    v6 = 8 * v7 + 8;
    v12 = *(v3 + 8) - *v3;
    v13 = v11 - v12;
    memcpy(v11 - v12, *v3, v12);
    v14 = *v3;
    *v3 = v13;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(v3 + 8) = v6;
}

uint64_t sub_2991A538C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = v1[1] - *v1;
  if ((v3 >> 3))
  {
    sub_2991A5494(&__dst, (*(*v2 + 8) - **v2) * (v3 >> 3));
    v5 = *(a1 + 8);
    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      v8 = __dst;
      do
      {
        v9 = **v6;
        v10 = (*v6)[1];
        v11 = v10 - v9;
        if (v10 != v9)
        {
          memmove(v8, v9, v10 - v9);
        }

        v8 += v11;
        ++v6;
      }

      while (v6 != v7);
    }

    sub_2991BB1E0();
  }

  return 0;
}

void sub_2991A5478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991A5494(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2991A5508(result, a2);
  }

  return result;
}

void sub_2991A54EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991A5508(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_299212A8C();
}

uint64_t sub_2991A5558(uint64_t a1)
{
  v3 = (a1 + 112);
  v2 = *(a1 + 112);
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    free(v4);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_2991A6288((a1 + 8), 0);

  return nullsub_1(a1);
}

void sub_2991A55D8(uint64_t a1)
{
  sub_2991A5558(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2991A56D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991A578C(va);
  _Unwind_Resume(a1);
}

void sub_2991A56E8(uint64_t a1, int a2, int a3)
{
  v6 = a3 * a2;
  sub_2991A6080(a1 + 16, v6);
  v7 = a3 * a2;
  *(a1 + 32) = *(a1 + 16);
  *(a1 + 40) = v7;
  *(a1 + 48) = a2;
  *(a1 + 52) = a3;
  *(a1 + 56) = 2;
  sub_2991A637C(a1 + 64, v6);
  *(a1 + 80) = *(a1 + 64);
  *(a1 + 88) = v7;
  *(a1 + 96) = a2;
  *(a1 + 100) = a3;
  *(a1 + 104) = 2;
  v8 = **(a1 + 8);

  sub_2991A5A1C(a1 + 112, a2, v8, 0.0);
}

uint64_t *sub_2991A578C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2991A5558(v2);
    MEMORY[0x29C29BFB0](v3, 0x10B1C40EE74E478);
  }

  return a1;
}

void sub_2991A57D4(uint64_t a1, int a2)
{
  sub_2991A588C(*(a1 + 8), a2);
  if (*(a1 + 48) < a2)
  {
    v4 = *(a1 + 52);
    sub_2991A6080(a1 + 16, v4 * a2);
    *(a1 + 32) = *(a1 + 16);
    *(a1 + 40) = v4 * a2;
    *(a1 + 48) = a2;
    *(a1 + 52) = v4;
    *(a1 + 56) = 2;
    v5 = *(a1 + 100);
    sub_2991A637C(a1 + 64, v5 * a2);
    *(a1 + 80) = *(a1 + 64);
    *(a1 + 88) = v5 * a2;
    *(a1 + 96) = a2;
    *(a1 + 100) = v5;
    *(a1 + 104) = 2;
  }

  v6 = **(a1 + 8);

  sub_2991A5A1C(a1 + 112, a2, v6, 0.0);
}

void sub_2991A588C(int *a1, int a2)
{
  a1[2] = a2;
  v4 = *a1;
  sub_2991A6080((a1 + 4), *a1 * a2);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  *(a1 + 4) = v5;
  *(a1 + 5) = v4 * a2;
  a1[12] = a2;
  a1[13] = v4;
  a1[14] = 2;
  if (v6 >= 1)
  {
    memset(v5, 128, v6);
  }

  v7 = *a1;
  sub_2991A5ED8((a1 + 16), *a1 * a2);
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  *(a1 + 10) = v8;
  *(a1 + 11) = v7 * a2;
  a1[24] = a2;
  a1[25] = v7;
  a1[26] = 2;
  if (v9 >= 1)
  {
    bzero(v8, 2 * v9);
  }

  v10 = a1[1];
  sub_2991A6080((a1 + 28), v10 * a2);
  *(a1 + 16) = *(a1 + 14);
  *(a1 + 17) = v10 * a2;
  a1[36] = a2;
  a1[37] = v10;
  a1[38] = 2;
  v11 = *a1 + a1[1];
  sub_2991A6080((a1 + 40), v11 * a2);
  *(a1 + 22) = *(a1 + 20);
  *(a1 + 23) = v11 * a2;
  a1[48] = a2;
  a1[49] = v11;
  a1[50] = 2;
  v12 = 4 * *a1;
  sub_2991A5ED8((a1 + 52), v12 * a2);
  *(a1 + 28) = *(a1 + 26);
  *(a1 + 29) = v12 * a2;
  a1[60] = a2;
  a1[61] = v12;
  a1[62] = 2;
  LODWORD(v12) = *a1;
  sub_2991A6080((a1 + 64), *a1 * a2);
  *(a1 + 34) = *(a1 + 32);
  *(a1 + 35) = v12 * a2;
  a1[72] = a2;
  a1[73] = v12;
  a1[74] = 2;
  LODWORD(v12) = *a1;
  sub_2991A5ED8((a1 + 76), *a1 * a2);
  *(a1 + 40) = *(a1 + 38);
  *(a1 + 41) = v12 * a2;
  a1[84] = a2;
  a1[85] = v12;
  a1[86] = 2;
}

void sub_2991A5A1C(uint64_t a1, int a2, int a3, float a4)
{
  v7 = a4;
  if (*(a1 + 8) < (a3 * a2))
  {
    sub_2991A6420(a1, a3 * a2, &v7);
  }

  *(a1 + 16) = *a1;
  *(a1 + 24) = a3 * a2;
  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  *(a1 + 40) = 2;
}

uint64_t sub_2991A5A90(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = v1[2];
    v3 = *v1;
    v4 = !v2 || v3 == 0;
    if (!v4 && v1[1] != 0)
    {
      v6 = v3;
      v7 = 2 * v3;
      sub_2991A5494(&__dst, *(v1 + 5) + v7 * v2);
      if (v2 >= 1)
      {
        v8 = 0;
        v9 = __dst;
        do
        {
          memcpy(v9, (*(v1 + 4) + v8 * v1[13]), v6);
          v10 = &v9[v6];
          memcpy(v10, (*(v1 + 10) + 2 * v8 * v1[25]), v7);
          v9 = &v10[v7];
          ++v8;
        }

        while (v2 != v8);
      }

      sub_2991BB1E0();
    }
  }

  return 0;
}

void sub_2991A5B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991A5BA4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = sub_2991BB3C4(v3);
  v5 = sub_2991BB3D0(v3);
  v6 = sub_2991BB3DC(v3) / (3 * v4);
  sub_2991A5494(v20, v4 * v6);
  sub_2991A650C(__p, v4 * v6);
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = v4 & 0x7FFFFFFF;
    do
    {
      memmove(v20[0] + v7 * v6, v5, v6);
      v9 = &v5[v6];
      memmove(__p[0] + 2 * v7 * v6, v9, 2 * v6);
      v5 = &v9[2 * v6];
      ++v7;
      --v8;
    }

    while (v8);
  }

  v14 = v20[0];
  v15 = v6 * v4;
  v16 = v4;
  v17 = v6;
  v18 = 2;
  v10[0] = __p[0];
  v10[1] = v15;
  v11 = v4;
  v12 = v6;
  v13 = 2;
  sub_2991A5D90(*(a1 + 8), &v14, v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void sub_2991A5D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991A5D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = *(a3 + 16);
  sub_2991A5F7C(a1 + 16, *(a2 + 16), *(a2 + 20), 128);
  v6 = *(a2 + 8);
  if (v6)
  {
    memmove(*(a1 + 32), *a2, v6);
  }

  sub_2991A600C(a1 + 64, *(a3 + 16), *(a3 + 20), 0);
  v7 = *(a3 + 8);
  if (v7)
  {
    memmove(*(a1 + 80), *a3, 2 * v7);
  }

  sub_2991A5F7C(a1 + 112, *(a1 + 8), *(a1 + 4), 0);
  sub_2991A5F7C(a1 + 160, *(a1 + 8), *a1 + *(a1 + 4), 0);
  sub_2991A600C(a1 + 208, *(a1 + 8), 4 * *a1, 0);
  sub_2991A5F7C(a1 + 256, *(a1 + 8), *a1, 0);
  v8 = *(a1 + 8);
  v9 = *a1;

  sub_2991A600C(a1 + 304, v8, v9, 0);
}

void sub_2991A5ED8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 < a2)
  {
    if (2 * a2)
    {
      memptr = 0;
      if (malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * a2, 0x45BC7E3BuLL))
      {
        v5 = 0;
      }

      else
      {
        v5 = memptr;
      }
    }

    else
    {
      v5 = 0;
    }

    if (*a1)
    {
      memcpy(v5, *a1, 2 * *(a1 + 8));
      free(*a1);
    }

    *a1 = v5;
    goto LABEL_12;
  }

  if (v4 > a2)
  {
LABEL_12:
    *(a1 + 8) = a2;
  }
}

void sub_2991A5F7C(uint64_t a1, int a2, int a3, int a4)
{
  v7 = *(a1 + 8);
  if (v7 < a3 * a2)
  {
    sub_2991A6080(a1, a3 * a2);
    v9 = *(a1 + 8) - v7;
    if (v9 >= 1)
    {
      memset((*a1 + v7), a4, v9);
    }
  }

  *(a1 + 16) = *a1;
  *(a1 + 24) = a3 * a2;
  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  *(a1 + 40) = 2;
}

void sub_2991A600C(uint64_t a1, int a2, int a3, __int16 a4)
{
  v7 = a4;
  if (*(a1 + 8) < (a3 * a2))
  {
    sub_2991A6114(a1, a3 * a2, &v7);
  }

  *(a1 + 16) = *a1;
  *(a1 + 24) = a3 * a2;
  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  *(a1 + 40) = 2;
}

void sub_2991A6080(uint64_t a1, size_t size)
{
  v4 = *(a1 + 8);
  if (v4 >= size)
  {
    if (v4 <= size)
    {
      return;
    }
  }

  else
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, size, 0x45BC7E3BuLL))
    {
      v5 = 0;
    }

    else
    {
      v5 = memptr;
    }

    if (*a1)
    {
      memcpy(v5, *a1, *(a1 + 8));
      free(*a1);
    }

    *a1 = v5;
  }

  *(a1 + 8) = size;
}

void sub_2991A6114(void *a1, unint64_t a2, __int16 *a3)
{
  v6 = a1[1];
  sub_2991A5ED8(a1, a2);
  if (v6 < a2)
  {
    v7 = a1[1];
    v8 = v7 - v6;
    if (v7 > v6)
    {
      v9 = 0;
      v10 = vdupq_n_s64(v8 - 1);
      v11 = *a3;
      v12 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
      v13 = (*a1 + 2 * v6 + 8);
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v14, xmmword_2993FCC00)));
        if (vuzp1_s8(vuzp1_s16(v15, *v10.i8), *v10.i8).u8[0])
        {
          *(v13 - 4) = v11;
        }

        if (vuzp1_s8(vuzp1_s16(v15, *&v10), *&v10).i8[1])
        {
          *(v13 - 3) = v11;
        }

        if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v14, xmmword_2993FCC10)))), *&v10).i8[2])
        {
          *(v13 - 2) = v11;
          *(v13 - 1) = v11;
        }

        v16 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v14, xmmword_2993FDE70)));
        if (vuzp1_s8(*&v10, vuzp1_s16(v16, *&v10)).i32[1])
        {
          *v13 = v11;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(v16, *&v10)).i8[5])
        {
          v13[1] = v11;
        }

        if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v14, xmmword_2993FDE60))))).i8[6])
        {
          v13[2] = v11;
          v13[3] = v11;
        }

        v9 += 8;
        v13 += 8;
      }

      while (v12 != v9);
    }
  }
}

void *sub_2991A6288(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2991A62D4(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void *sub_2991A62D4(void *a1)
{
  v2 = a1[38];
  if (v2)
  {
    free(v2);
  }

  a1[38] = 0;
  a1[39] = 0;
  v3 = a1[32];
  if (v3)
  {
    free(v3);
  }

  a1[32] = 0;
  a1[33] = 0;
  v4 = a1[26];
  if (v4)
  {
    free(v4);
  }

  a1[26] = 0;
  a1[27] = 0;
  v5 = a1[20];
  if (v5)
  {
    free(v5);
  }

  a1[20] = 0;
  a1[21] = 0;
  v6 = a1[14];
  if (v6)
  {
    free(v6);
  }

  a1[14] = 0;
  a1[15] = 0;
  v7 = a1[8];
  if (v7)
  {
    free(v7);
  }

  a1[8] = 0;
  a1[9] = 0;
  v8 = a1[2];
  if (v8)
  {
    free(v8);
  }

  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void sub_2991A637C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 < a2)
  {
    if (4 * a2)
    {
      memptr = 0;
      if (malloc_type_posix_memalign(&memptr, 0x20uLL, 4 * a2, 0x45BC7E3BuLL))
      {
        v5 = 0;
      }

      else
      {
        v5 = memptr;
      }
    }

    else
    {
      v5 = 0;
    }

    if (*a1)
    {
      memcpy(v5, *a1, 4 * *(a1 + 8));
      free(*a1);
    }

    *a1 = v5;
    goto LABEL_12;
  }

  if (v4 > a2)
  {
LABEL_12:
    *(a1 + 8) = a2;
  }
}

void sub_2991A6420(void *a1, unint64_t a2, __int32 *a3)
{
  v6 = a1[1];
  sub_2991A637C(a1, a2);
  if (v6 < a2)
  {
    v8 = a1[1];
    v9 = v8 - v6;
    if (v8 > v6)
    {
      v10 = 0;
      v7.i32[0] = *a3;
      v11 = (v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v12 = vdupq_n_s64(v9 - 1);
      v13 = (*a1 + 4 * v6 + 8);
      do
      {
        v14 = vdupq_n_s64(v10);
        v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2993FCC00)));
        if (vuzp1_s16(v15, v7).u8[0])
        {
          *(v13 - 2) = v7.i32[0];
        }

        if (vuzp1_s16(v15, v7).i8[2])
        {
          *(v13 - 1) = v7.i32[0];
        }

        if (vuzp1_s16(v7, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2993FCC10)))).i32[1])
        {
          *v13 = v7.i32[0];
          v13[1] = v7.i32[0];
        }

        v10 += 4;
        v13 += 4;
      }

      while (v11 != v10);
    }
  }
}

void *sub_2991A650C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2991A6584(result, a2);
  }

  return result;
}

void sub_2991A6568(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991A6584(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_299212A48(a1, a2);
  }

  sub_299212A8C();
}

uint64_t sub_2991A6608(uint64_t result, int a2, uint64_t a3, float *a4)
{
  if (result >= 1)
  {
    v4 = 0;
    do
    {
      v5 = a2;
      v6 = a4;
      if (a2 >= 1)
      {
        do
        {
          *v6 = *(a3 + 4 * v4) + *v6;
          ++v6;
          --v5;
        }

        while (v5);
      }

      ++v4;
      a4 += a2;
    }

    while (v4 != result);
  }

  return result;
}

float sub_2991A665C(int a1, float *a2, float *a3)
{
  if (a1 >= 1)
  {
    v3 = a1;
    do
    {
      v4 = *a2++;
      result = v4 * *a3;
      *a3++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_2991A6768(int a1, float *a2, float *a3)
{
  if (a1 >= 1)
  {
    v5 = a1;
    do
    {
      v6 = *a3;
      v7 = *a2++;
      *a3++ = v6 * tanhf(v7);
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_2991A67C8(int a1, float *a2)
{
  v5 = a1;
  cblas_sscal_NEWLAPACK();
  vvtanhf(a2, a2, &v5);
  result = cblas_sscal_NEWLAPACK();
  v4 = v5;
  if (v5 >= 1)
  {
    do
    {
      *a2 = *a2 + 0.5;
      ++a2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2991A6944(uint64_t result, int a2, float *a3)
{
  v18 = a2;
  if (result >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = 4 * a2;
    v7 = a3;
    do
    {
      if (a2 >= 1)
      {
        v8 = -3.4028e38;
        v9 = a2;
        v10 = v7;
        do
        {
          v11 = *v10++;
          v12 = v11;
          if (v11 >= v8)
          {
            v8 = v12;
          }

          --v9;
        }

        while (v9);
        do
        {
          *(v7 + v9) = *(v7 + v9) - v8;
          v9 += 4;
        }

        while (v6 != v9);
      }

      ++v5;
      v7 = (v7 + v6);
    }

    while (v5 != result);
    for (i = 0; i != v4; ++i)
    {
      vvexpf(&a3[v18 * i], &a3[v18 * i], &v18);
      if (v18 >= 1)
      {
        v14 = &a3[v18 * i];
        v15 = 0.0;
        v16 = v18;
        do
        {
          v17 = *v14++;
          v15 = v15 + v17;
          --v16;
        }

        while (v16);
      }

      result = cblas_sscal_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_2991A6A6C(uint64_t result, int a2, uint64_t a3)
{
  if (result >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = result;
    v8 = a2;
    do
    {
      if (a2 >= 1)
      {
        v9 = (a3 + 4 * v5);
        v10 = v8;
        v11 = 0.000001;
        do
        {
          v12 = *v9++;
          v11 = v11 + v12;
          --v10;
        }

        while (v10);
      }

      result = cblas_sscal_NEWLAPACK();
      ++v6;
      v5 += a2;
    }

    while (v6 != v7);
  }

  return result;
}

void *sub_2991A6B2C(void *result, int a2, char *__src, char *__dst)
{
  if (result == 1 || a2 == 1)
  {
    return memmove(__dst, __src, 4 * a2 * result);
  }

  if (result >= 1)
  {
    v4 = 0;
    do
    {
      v5 = a2;
      v6 = __dst;
      v7 = __src;
      if (a2 >= 1)
      {
        do
        {
          v8 = *v7++;
          *v6 = v8;
          v6 += result;
          --v5;
        }

        while (v5);
      }

      ++v4;
      __src += 4 * a2;
      __dst += 4;
    }

    while (v4 != result);
  }

  return result;
}

unint64_t sub_2991A6BD0(unsigned int *a1, uint64_t a2)
{
  v3 = *(a2 + 8) * 4096.0;
  *__e = 0;
  sub_2991BB0FC(&__e[1], __e, v3);
  return *a1 | (__e[1] << 32);
}

uint64_t sub_2991A6C28(uint64_t result, float *a2, float a3)
{
  if (result >= 1)
  {
    v3 = result;
    do
    {
      *a2 = *a2 * a3;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

float sub_2991A6C4C(int a1, float *a2, float *a3)
{
  if (a1 >= 1)
  {
    v3 = a1;
    do
    {
      v4 = *a2++;
      result = v4 + *a3;
      *a3++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

double sub_2991A6C74(int a1, float *a2, float *a3)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  v3 = a1;
  result = 0.0;
  do
  {
    v5 = *a2++;
    v6 = v5;
    v7 = *a3++;
    *&result = *&result + (v6 * v7);
    --v3;
  }

  while (v3);
  return result;
}

float sub_2991A6CA4(int a1, float *a2, float *a3)
{
  if (a1 >= 1)
  {
    v3 = a1;
    do
    {
      v4 = *a2++;
      result = v4;
      *a3++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

float sub_2991A6CC4(int a1, int a2, int a3, float *a4, uint64_t a5)
{
  if (a1 >= 1)
  {
    v5 = a1;
    v6 = (a5 + 4 * a3);
    do
    {
      v7 = *a4++;
      result = v7;
      *v6 = v7;
      v6 += a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_2991A6CF0(int a1, float *a2)
{
  if (a1 >= 1)
  {
    v3 = a1;
    do
    {
      *a2 = log10f(*a2);
      ++a2;
      --v3;
    }

    while (v3);
  }
}

void sub_2991A6D34(int a1, float *a2)
{
  if (a1 >= 1)
  {
    v3 = a1;
    do
    {
      *a2 = tanhf(*a2);
      ++a2;
      --v3;
    }

    while (v3);
  }
}

void sub_2991A6D78(int a1, float *a2)
{
  if (a1 >= 1)
  {
    v3 = a1;
    do
    {
      *a2 = 1.0 / (expf(-*a2) + 1.0);
      ++a2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2991A6DD4(uint64_t result, int a2, int a3, uint64_t a4, float *a5, uint64_t a6, int a7, int a8)
{
  if ((a7 ^ 1) & 1) != 0 || (a8)
  {
    if ((a7 ^ 1 | a8 ^ 1))
    {
      if ((a8 ^ 1 | a7))
      {
        if (result >= 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = result;
          do
          {
            if (a2 >= 1)
            {
              v20 = 0;
              v21 = a5;
              do
              {
                result = a3;
                v22 = v21;
                v23 = (a6 + 4 * v17);
                if (a3 >= 1)
                {
                  do
                  {
                    v24 = *v22++;
                    *v23 = *v23 + (*(a4 + 4 * v18 * a2 + 4 * v20) * v24);
                    ++v23;
                    --result;
                  }

                  while (result);
                }

                ++v20;
                v21 += a3;
              }

              while (v20 != a2);
            }

            ++v18;
            v17 += a3;
          }

          while (v18 != v19);
        }
      }

      else if (result >= 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = result;
        do
        {
          if (a2 >= 1)
          {
            v36 = 0;
            v37 = a5;
            do
            {
              result = a3;
              v38 = v37;
              v39 = (a6 + 4 * v33);
              if (a3 >= 1)
              {
                do
                {
                  *v39 = *v39 + (*(a4 + 4 * v34 * a2 + 4 * v36) * *v38);
                  ++v39;
                  v38 += a2;
                  --result;
                }

                while (result);
              }

              ++v36;
              ++v37;
            }

            while (v36 != a2);
          }

          ++v34;
          v33 += a3;
        }

        while (v34 != v35);
      }
    }

    else if (result >= 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = result;
      do
      {
        if (a2 >= 1)
        {
          v28 = 0;
          v29 = a5;
          do
          {
            if (a3 >= 1)
            {
              result = v28 * v27;
              v30 = a3;
              v31 = v29;
              v32 = (a6 + 4 * v25);
              do
              {
                *v32 = *v32 + (*(a4 + 4 * v26 + 4 * result) * *v31);
                ++v32;
                v31 += a2;
                --v30;
              }

              while (v30);
            }

            ++v28;
            ++v29;
          }

          while (v28 != a2);
        }

        ++v26;
        v25 += a3;
      }

      while (v26 != v27);
    }
  }

  else if (result >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = result;
    do
    {
      if (a2 >= 1)
      {
        v11 = 0;
        v12 = a5;
        do
        {
          if (a3 >= 1)
          {
            result = v11 * v10;
            v13 = a3;
            v14 = v12;
            v15 = (a6 + 4 * v8);
            do
            {
              v16 = *v14++;
              *v15 = *v15 + (*(a4 + 4 * v9 + 4 * result) * v16);
              ++v15;
              --v13;
            }

            while (v13);
          }

          ++v11;
          v12 += a3;
        }

        while (v11 != a2);
      }

      ++v9;
      v8 += a3;
    }

    while (v9 != v10);
  }

  return result;
}

uint64_t sub_2991A7044(uint64_t a1, int a2, int a3, uint64_t a4, float *a5, void *a6, int a7, int a8)
{
  if (a3 * a1 >= 1)
  {
    bzero(a6, 4 * (a3 * a1));
  }

  return sub_2991A6DD4(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_2991A70E0(int a1, int a2, float *a3)
{
  if (a1 >= 1)
  {
    v3 = a3;
    v5 = 0;
    v6 = a2;
    v7 = 4 * a2;
    v8 = a3;
    v9 = a1;
    do
    {
      if (a2 >= 1)
      {
        v10 = -3.4028e38;
        v11 = a2;
        v12 = v8;
        do
        {
          v13 = *v12++;
          v14 = v13;
          if (v13 >= v10)
          {
            v10 = v14;
          }

          --v11;
        }

        while (v11);
        do
        {
          *(v8 + v11) = *(v8 + v11) - v10;
          v11 += 4;
        }

        while (v7 != v11);
      }

      ++v5;
      v8 = (v8 + v7);
    }

    while (v5 != a1);
    v15 = 0;
    v16 = 4 * a2;
    do
    {
      if (a2 >= 1)
      {
        v17 = 0.0;
        v18 = v6;
        v19 = v3;
        do
        {
          v20 = expf(*v19);
          *v19++ = v20;
          v17 = v17 + v20;
          --v18;
        }

        while (v18);
        v21 = 0;
        do
        {
          v3[v21 / 4] = v3[v21 / 4] / v17;
          v21 += 4;
        }

        while (v16 != v21);
      }

      ++v15;
      v3 = (v3 + v16);
    }

    while (v15 != v9);
  }
}

uint64_t sub_2991A71F8(uint64_t result, int a2, float *a3)
{
  if (result >= 1)
  {
    v3 = 0;
    v4 = 4 * a2;
    do
    {
      if (a2 >= 1)
      {
        v5 = a2;
        v6 = a3;
        v7 = 0.000001;
        do
        {
          v8 = *v6++;
          v7 = v7 + v8;
          --v5;
        }

        while (v5);
        do
        {
          *(a3 + v5) = *(a3 + v5) / v7;
          v5 += 4;
        }

        while (v4 != v5);
      }

      ++v3;
      a3 = (a3 + v4);
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_2991A7268(uint64_t result, int a2, int *a3, _DWORD *a4)
{
  if (result >= 1)
  {
    v4 = 0;
    do
    {
      v5 = a2;
      v6 = a4;
      v7 = a3;
      if (a2 >= 1)
      {
        do
        {
          v8 = *v7++;
          *v6 = v8;
          v6 += result;
          --v5;
        }

        while (v5);
      }

      ++v4;
      a3 += a2;
      ++a4;
    }

    while (v4 != result);
  }

  return result;
}

uint64_t sub_2991A7310(uint64_t result, int a2, uint64_t a3, float32x4_t *a4)
{
  if (result >= 1)
  {
    v4 = 0;
    do
    {
      if (a2 < 4)
      {
        v9 = 0;
      }

      else
      {
        v5 = (a3 + 4 * v4);
        v6 = vld1q_dup_f32(v5);
        v7 = (a2 / 4);
        v8 = a4;
        do
        {
          *v8 = vaddq_f32(v6, *v8);
          ++v8;
          --v7;
        }

        while (v7);
        v9 = a2 / 4;
      }

      if (a2 > (4 * v9))
      {
        v10 = 4 * v9;
        do
        {
          a4->f32[v10] = *(a3 + 4 * v4) + a4->f32[v10];
          ++v10;
        }

        while (a2 != v10);
      }

      ++v4;
      a4 = (a4 + 4 * a2);
    }

    while (v4 != result);
  }

  return result;
}

float32_t sub_2991A73AC(int a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = a1 + 3;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  if (a1 < 4)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = (v3 >> 2);
    v5 = v4;
    v6 = a2;
    v7 = a3;
    do
    {
      v8 = *v6++;
      v9 = vmulq_f32(v8, *v7);
      *v7++ = v9;
      --v5;
    }

    while (v5);
  }

  if (a1 > 4 * v4)
  {
    f32 = a3[v4].f32;
    v11 = a2[v4].f32;
    v12 = a1 - 4 * v4;
    do
    {
      v13 = *v11++;
      v9.f32[0] = v13 * *f32;
      *f32++ = v9.f32[0];
      --v12;
    }

    while (v12);
  }

  return v9.f32[0];
}