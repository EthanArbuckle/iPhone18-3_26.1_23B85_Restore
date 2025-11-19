void sub_2991DB070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51)
{
  sub_29921ED28(&a19);
  sub_2991DB324(&a25);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  v53 = *(v51 - 256);
  sub_2992B6C08(&a25);
  if (v53)
  {
    operator delete(v53);
  }

  sub_2991DB324((v51 - 224));
  _Unwind_Resume(a1);
}

uint64_t sub_2991DB1C8(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x18uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 24 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_2991DB288(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = a1[1];
        do
        {
          v9 = *(v7 - 32);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v3 - 24) = v8;
            operator delete(v8);
          }

          v3 = v7;
        }

        while (v7 != v6);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_2991DEA40(a1, v5);
  }
}

void *sub_2991DB324(void *a1)
{
  *a1 = &unk_2A1F62EF0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x29C29BF70](*v2, 0x1020C8062D53EE8);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2991DB3B8(void *a1@<X0>, unint64_t *a2@<X8>, float a3@<S0>)
{
  if ((((a1[4] - a1[3]) >> 3) - 1) <= 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v6 = a1[16] + a1[17] * a1[18];
    LODWORD(__src[0]) = 0;
    sub_2991AAFC8(__p, v6);
    sub_2991D9D78(a1, __src, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *__src;
    v42 = v40;
    v7 = sub_2991EB4FC();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    __src[0] = 0;
    __src[1] = 0;
    v40 = 0;
    v8 = ((a1[4] - a1[3]) >> 3) - 1;
    v9 = **(a1[6] + 24 * (v8 & ~(v8 >> 31)));
    v10 = *(__p[0] + *(v9 + 24));
    v38 = v9;
    do
    {
      v11 = __src[0];
      __src[1] = __src[0];
      v12 = (a1[9] + 24 * *(v38 + 16));
      v13 = *v12;
      v14 = v12[1];
      v15 = __src[0];
      if (*v12 != v14)
      {
        do
        {
          v16 = exp(((*(__p[0] + *(*v13 + 24)) + (a3 * *(*v13 + 32))) - v10));
          if (v11 >= v40)
          {
            v17 = __src[0];
            v18 = v11 - __src[0];
            v19 = (v11 - __src[0]) >> 2;
            v20 = v19 + 1;
            if ((v19 + 1) >> 62)
            {
              sub_299212A8C();
            }

            v21 = v40 - __src[0];
            if ((v40 - __src[0]) >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v22 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              sub_2992F86B0(__src, v22);
            }

            v23 = v19;
            v24 = (4 * v19);
            v25 = &v24[-v23];
            *v24 = v16;
            v11 = v24 + 1;
            memcpy(v25, v17, v18);
            v26 = __src[0];
            __src[0] = v25;
            __src[1] = v11;
            v40 = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v11++ = v16;
          }

          __src[1] = v11;
          v13 += 8;
        }

        while (v13 != v14);
        v15 = __src[0];
      }

      sub_2991D873C(v37, v15, v11);
      v27 = *(v38 + 16);
      v28 = a1[9];
      v29 = *(*(v28 + 24 * v27) + 8 * sub_2991D8A68(v37, v7, v37));
      v38 = v29;
      v30 = **a1[9];
      if (v29 != v30)
      {
        v10 = *(__p[0] + *(v29 + 24));
        sub_29931C308(a2, &v38);
      }

      if (v37[0])
      {
        v37[1] = v37[0];
        operator delete(v37[0]);
      }
    }

    while (v29 != v30);
    v32 = *a2;
    v31 = a2[1];
    if (*a2 != v31)
    {
      v33 = (v31 - 8);
      if (v33 > v32)
      {
        v34 = v32 + 8;
        do
        {
          v35 = *(v34 - 8);
          *(v34 - 8) = *v33;
          *v33-- = v35;
          v36 = v34 >= v33;
          v34 += 8;
        }

        while (!v36);
      }
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_2991DB6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991DB730(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  v5 = ((a2[4] - a2[3]) >> 3) - 1;
  v6 = a2[1];
  v7 = a2[2];
  sub_2991C122C(&__p, *(a1 + 92) + 1);
  v43 = v5;
  if (v5 < 1)
  {
    goto LABEL_40;
  }

  v44 = 0;
  v8 = 0;
  v9 = v4 + -10.0;
  v42 = v6 + v7;
  do
  {
    v10 = *(a2[3] + 8 * v8);
    v11 = __p;
    v12 = (v47 - __p) >> 4;
    v13 = *(a1 + 40);
    v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
    if ((v42 - v10) << 32)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v10[v15];
        v18 = v14 ^ v17;
        v19 = v13[v18];
        if ((v19 & 0x800000FF) != v17)
        {
          break;
        }

        v14 = v18 ^ (v19 >> 10 << ((v19 >> 6) & 8));
        if ((v19 & 0x100) != 0)
        {
          if (v16 < v12)
          {
            v20 = &v11[16 * v16];
            *v20 = v13[v14] & 0x7FFFFFFF;
            *(v20 + 1) = v15 + 1;
          }

          ++v16;
        }

        ++v15;
      }

      while (v42 - v10 != v15);
    }

    else
    {
      v21 = *v10;
      if (*v10)
      {
        v16 = 0;
        v22 = 1;
        do
        {
          v23 = v14 ^ v21;
          v24 = v13[v23];
          if ((v24 & 0x800000FF) != v21)
          {
            break;
          }

          v14 = v23 ^ (v24 >> 10 << ((v24 >> 6) & 8));
          if ((v24 & 0x100) != 0)
          {
            if (v16 < v12)
            {
              v25 = &v11[16 * v16];
              *v25 = v13[v14] & 0x7FFFFFFF;
              *(v25 + 1) = v22;
            }

            ++v16;
          }

          v21 = v10[v22++];
        }

        while (v21);
      }

      else
      {
        v16 = 0;
      }
    }

    if (v16 >= v12)
    {
      v45 = 1;
      v26 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "unigram_model.cc", 16);
      v27 = sub_2991C0E9C(v26, "(", 1);
      v28 = MEMORY[0x29C29BD30](v27, 572);
      v29 = sub_2991C0E9C(v28, ") [", 3);
      v30 = sub_2991C0E9C(v29, "(num_nodes) < (trie_results.size())", 35);
      sub_2991C0E9C(v30, "] ", 2);
      sub_2991BF944(&v45);
    }

    if (!v16)
    {
LABEL_38:
      v41 = sub_2991D9A6C(a2, v8, 1);
      *(v41 + 28) = *(a1 + 88);
      *(v41 + 32) = v9;
      goto LABEL_39;
    }

    v31 = 0;
    v32 = 0;
    do
    {
      while (1)
      {
        v33 = (__p + 16 * v31);
        v34 = (a2[3] + v44);
        v35 = -1;
        do
        {
          v36 = *v34++;
          ++v35;
        }

        while (v36 < &v10[*(v33 + 1)]);
        v37 = *v33;
        if ((*(**(a1 + 8) + 128))(*(a1 + 8), v37))
        {
          break;
        }

        v38 = v8;
        v39 = sub_2991D9A6C(a2, v8, v35);
        *(v39 + 28) = v37;
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v37))
        {
          v40 = (*(a1 + 108) * v35) + -0.1;
        }

        else
        {
          v40 = (*(**(a1 + 8) + 96))(*(a1 + 8), v37);
        }

        *(v39 + 32) = v40;
        if (!v32)
        {
          v32 = *(v39 + 20) == 1;
          v8 = v38;
          break;
        }

        ++v31;
        v32 = 1;
        v8 = v38;
        if (v31 == v16)
        {
          goto LABEL_39;
        }
      }

      ++v31;
    }

    while (v31 != v16);
    if (!v32)
    {
      goto LABEL_38;
    }

LABEL_39:
    ++v8;
    v44 += 8;
  }

  while (v8 != v43);
LABEL_40:
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_2991DBAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991DBB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2991DBC98(a1);
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *v4 = &unk_2A1F62D98;
  *(v4 + 8) = a2 + 16;
  sub_2991BD808(v4);
  v5 = 0;
  *(a1 + 104) = 0x8000007F7FFFFFLL;
  while (v5 < (*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if ((*(**(a1 + 8) + 104))(*(a1 + 8), v5))
    {
      v6 = (*(**(a1 + 8) + 96))(*(a1 + 8), v5);
      if (v6 >= *(a1 + 104))
      {
        v6 = *(a1 + 104);
      }

      *(a1 + 104) = v6;
      v7 = (*(**(a1 + 8) + 96))(*(a1 + 8), v5);
      if (*(a1 + 108) >= v7)
      {
        v7 = *(a1 + 108);
      }

      *(a1 + 108) = v7;
    }

    ++v5;
  }

  return a1;
}

uint64_t sub_2991DBC98(uint64_t a1)
{
  *a1 = &unk_2A1F627B8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2A1F628D8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_2A1F628D8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_29919C3A8((a1 + 96));
  return a1;
}

void sub_2991DBD3C(_Unwind_Exception *a1)
{
  sub_2991BB734(v3);
  sub_2991BB734(v2);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    sub_2991C0E20(v1, v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2991DBD70(uint64_t *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v7 = a4 > 7;
  if (a4 <= 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - 8;
  }

  if (v7)
  {
    v9 = (a3 + 2);
  }

  else
  {
    v9 = "";
  }

  v10 = sub_2991BB798(a1, a2, v9, v8);
  *v10 = &unk_2A1F62D98;
  *(v10 + 104) = 0;
  v11 = (v10 + 104);
  *(v10 + 108) = 0;
  v12 = (v10 + 108);
  *(v10 + 112) = 0;
  sub_2991ED508(&v16, a1 + 12);
  v13 = v16;
  sub_2991ED2F4(&v16);
  if (!v13)
  {
    sub_2991DBEE0(a3, a4, v11, &v16);
    sub_2991ED50C(a1 + 12, &v16);
    sub_2991ED2F4(&v16);
    (*(*a1 + 16))(&v16, a1);
    v14 = v16;
    sub_2991ED2F4(&v16);
    if (!v14)
    {
      sub_2991DBEE0(a3 + 1, a4 - 4, v12, &v16);
      sub_2991ED50C(a1 + 12, &v16);
      sub_2991ED2F4(&v16);
    }
  }

  return a1;
}

void sub_2991DBEAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991ED2F4(va);
  sub_2991BC6A8(v2);
  _Unwind_Resume(a1);
}

void *sub_2991DBEE0@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_2991BF614(&v8);
    sub_2991C0E9C(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_2991C0E9C(&v8, "(", 1);
    MEMORY[0x29C29BD30](&v8, 448);
    sub_2991C0E9C(&v8, ") [", 3);
    sub_2991C0E9C(&v8, "string.size() >= sizeof(T)", 26);
    sub_2991C0E9C(&v8, "] ", 2);
    sub_2991BC3FC(&v7, a4);
    v8 = *MEMORY[0x29EDC9538];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v9 = MEMORY[0x29EDC9570] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x29C29BF00](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_29919C3A8(a4);
  }
}

void sub_2991DC0F4(void *a1)
{
  sub_2991BC6A8(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2991DC12C(_DWORD *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1[28])
  {
    (*(*a1 + 16))(&v23, a1);
    if (v23)
    {
      sub_2991ED2F4(&v23);
LABEL_4:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    sub_2991ED2F4(&v23);
    if (!a3)
    {
      goto LABEL_4;
    }

    v23 = &unk_2A1F62D78;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = &unk_2A1F62EC0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v34 = 1024;
    sub_2991D96D0(&v23, a2, a3);
    sub_2991DB730(a1, &v23);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    sub_2991D9B1C(&v23, &v21);
    v8 = v21;
    v9 = v22;
    if (v21 != v22)
    {
      v10 = *(a4 + 8);
      do
      {
        v11 = *v8;
        v12 = *(a4 + 16);
        if (v10 >= v12)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            sub_2991C0D0C(a4, v16);
          }

          v17 = 24 * v13;
          *v17 = *v11;
          *(v17 + 16) = *(v11 + 28);
          v10 = 24 * v13 + 24;
          v18 = *(a4 + 8) - *a4;
          v19 = v17 - v18;
          memcpy((v17 - v18), *a4, v18);
          v20 = *a4;
          *a4 = v19;
          *(a4 + 8) = v10;
          *(a4 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v10 = *v11;
          *(v10 + 16) = *(v11 + 28);
          v10 += 24;
        }

        *(a4 + 8) = v10;
        ++v8;
      }

      while (v8 != v9);
      v8 = v21;
    }

    if (v8)
    {
      v22 = v8;
      operator delete(v8);
    }

    sub_2991D9464(&v23);
  }

  else
  {

    sub_2991DC41C(a1, a2, a3, a4);
  }
}

void sub_2991DC3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  sub_2991D9464(&a13);
  _Unwind_Resume(a1);
}

void sub_2991DC41C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  (*(*a1 + 16))(&v52);
  if (v52)
  {
    sub_2991ED2F4(&v52);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  sub_2991ED2F4(&v52);
  if (!a3)
  {
    goto LABEL_3;
  }

  if (a3 << 32 != 0xFFFFFFFF00000000)
  {
    if ((((a3 << 32) + 0x100000000) >> 32) < 0x1555555555555556)
    {
      operator new();
    }

    sub_299212A8C();
  }

  if (a3 <= 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 104) + -10.0;
    v10 = a3 & 0x7FFFFFFF;
    v49 = -v10;
    v50 = a4;
    v51 = a3;
    v47 = v10;
    v48 = a2;
    do
    {
      v11 = *(12 * v8 + 4);
      if (a3 - v8 >= asc_299431C8E[*(a2 + v8) >> 4])
      {
        v12 = asc_299431C8E[*(a2 + v8) >> 4];
      }

      else
      {
        v12 = a3 - v8;
      }

      if (v10 <= v8)
      {
        goto LABEL_27;
      }

      v13 = 0;
      v14 = 0;
      v15 = (12 * v8 + 20);
      v16 = 1;
      do
      {
        v17 = *(a1 + 40);
        v18 = *(a2 + v8 + v16 - 1);
        LODWORD(v14) = (*(v17 + 4 * v14) >> 10 << ((*(v17 + 4 * v14) >> 6) & 8)) ^ v14 ^ v18;
        v19 = *(v17 + 4 * v14);
        if ((v19 & 0x800000FF) != v18)
        {
          break;
        }

        if ((v19 & 0x100) != 0)
        {
          v20 = *(v17 + 4 * ((v19 >> 10 << ((v19 >> 6) & 8)) ^ v14)) & 0x7FFFFFFF;
          if (((*(**(a1 + 8) + 128))(*(a1 + 8), v20) & 1) == 0)
          {
            if ((*(**(a1 + 8) + 136))(*(a1 + 8), v20))
            {
              v21 = (*(a1 + 108) * v16) + -0.1;
            }

            else
            {
              v21 = (*(**(a1 + 8) + 96))(*(a1 + 8), v20);
            }

            v22 = v21 + v11;
            if (*v15 == -1 || v22 > *(v15 - 1))
            {
              v23 = v22;
              *(v15 - 1) = v23;
              *v15 = v8;
              *(v15 - 2) = v20;
            }

            v13 |= v12 == v16;
          }
        }

        ++v16;
        v15 += 3;
      }

      while (v49 + v8 + v16 != 1);
      a3 = v51;
      v10 = v47;
      a2 = v48;
      if ((v13 & 1) == 0)
      {
LABEL_27:
        v24 = v9 + v11;
        if (*(12 * (v12 + v8) + 8) == -1 || v24 > *(12 * (v12 + v8) + 4))
        {
          *(12 * (v12 + v8) + 4) = v24;
          *(12 * (v12 + v8) + 8) = v8;
          *(12 * (v12 + v8)) = *(a1 + 88);
        }
      }

      v8 += v12;
    }

    while (v8 < a3);
    v26 = 0;
    v27 = v50;
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 0;
    v28 = a3;
    do
    {
      v29 = 12 * v28;
      v30 = *(v29 + 8);
      if (a3 < v30)
      {
        sub_2991D6EC4("string_view::substr");
      }

      v31 = v28 - v30;
      v32 = a2 + v30;
      if (a3 - v30 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = a3 - v30;
      }

      v34 = v27[2];
      if (v26 >= v34)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v27) >> 3);
        v36 = v35 + 1;
        if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_299212A8C();
        }

        v37 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v27) >> 3);
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        if (v37 >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          sub_2991C0D0C(v27, v38);
        }

        v39 = 24 * v35;
        *v39 = v32;
        *(v39 + 8) = v33;
        *(v39 + 16) = *v29;
        v26 = 24 * v35 + 24;
        v40 = v50[1] - *v50;
        v41 = v39 - v40;
        memcpy((v39 - v40), *v50, v40);
        v42 = *v50;
        *v50 = v41;
        v50[1] = v26;
        v50[2] = 0;
        v27 = v50;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v26 = v32;
        *(v26 + 8) = v33;
        *(v26 + 16) = *v29;
        v26 += 24;
      }

      a3 = v51;
      v27[1] = v26;
      v28 = *(v29 + 8);
    }

    while (v28 > 0);
    v43 = *v27;
    if (*v27 == v26 || (v44 = v26 - 24, v26 - 24 <= v43))
    {
      operator delete(0);
    }

    else
    {
      do
      {
        v52 = *v43;
        v45 = v52;
        *v43 = *v44;
        *v44 = v45;
        v46 = *(v43 + 16);
        *(v43 + 16) = *(v44 + 16);
        *(v44 + 16) = v46;
        v43 += 24;
        v44 -= 24;
      }

      while (v43 < v44);
    }
  }
}

void sub_2991DC938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  v17 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v17;
    operator delete(v17);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2991DC97C(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v38 = *MEMORY[0x29EDCA608];
  (*(*a1 + 16))(__p);
  if (__p[0])
  {
    sub_2991ED2F4(__p);
    goto LABEL_3;
  }

  sub_2991ED2F4(__p);
  if (!a3)
  {
LABEL_3:
    memset(__p, 0, 24);
    sub_2991C0C40(__p, 0, 0, 0);
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    sub_2991C0A6C(a5, __p, &__p[4], 1uLL);
    v10 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
LABEL_5:
      operator delete(v10);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (a4 >= 1024)
  {
    v12 = 1024;
  }

  else
  {
    v12 = a4;
  }

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a4 > 1)
  {
    __p[0] = &unk_2A1F62D78;
    memset(&__p[1], 0, 88);
    __p[12] = &unk_2A1F62EC0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v37 = 1024;
    sub_2991D96D0(__p, a2, a3);
    sub_2991DB730(a1, __p);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2991DA0C0(__p, v13, 0, &v31, 0.0);
    v27 = *(&v31 + 1);
    for (i = v31; i != v27; i += 32)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v15 = *i;
      v16 = *(i + 8);
      if (*i != v16)
      {
        v17 = 0;
        do
        {
          v18 = *v15;
          if (v17 >= v30)
          {
            v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v28) >> 3);
            v20 = v19 + 1;
            if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_299212A8C();
            }

            if (0x5555555555555556 * ((v30 - v28) >> 3) > v20)
            {
              v20 = 0x5555555555555556 * ((v30 - v28) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v30 - v28) >> 3) >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              sub_2991C0D0C(&v28, v21);
            }

            v22 = 24 * v19;
            *v22 = *v18;
            *(v22 + 16) = *(v18 + 28);
            v17 = 24 * v19 + 24;
            v23 = (v22 - (v29 - v28));
            memcpy(v23, v28, v29 - v28);
            v24 = v28;
            v28 = v23;
            v29 = v17;
            v30 = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v17 = *v18;
            *(v17 + 16) = *(v18 + 28);
            v17 += 24;
          }

          v29 = v17;
          ++v15;
        }

        while (v15 != v16);
      }

      v25 = a5[1];
      if (v25 >= a5[2])
      {
        v26 = sub_2991DECB4(a5, &v28, (i + 24));
      }

      else
      {
        sub_2991DEC40(a5, &v28, (i + 24));
        v26 = (v25 + 32);
      }

      a5[1] = v26;
      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }

    v28 = &v31;
    sub_2992B6C08(&v28);
    sub_2991D9464(__p);
  }

  else
  {
    (*(*a1 + 40))(&v31, a1, a2, a3);
    *__p = v31;
    __p[2] = v32;
    v32 = 0;
    v31 = 0uLL;
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    sub_2991C0A6C(a5, __p, &__p[4], 1uLL);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = v31;
    if (v31)
    {
      *(&v31 + 1) = v31;
      goto LABEL_5;
    }
  }

LABEL_6:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_2991DCD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  a12 = a11;
  sub_2992B6C08(&a12);
  sub_2991D9464(&__p);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991DCE24@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  (*(*a1 + 16))(&v26);
  if (v26)
  {
    result = sub_2991ED2F4(&v26);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  result = sub_2991ED2F4(&v26);
  if (!a3)
  {
    goto LABEL_3;
  }

  v26 = &unk_2A1F62D78;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v33 = &unk_2A1F62EC0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = 1024;
  sub_2991D96D0(&v26, a2, a3);
  sub_2991DB730(a1, &v26);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_2991DB3B8(&v26, &v24, a5);
  v11 = v24;
  v12 = v25;
  if (v24 != v25)
  {
    v13 = 0;
    do
    {
      v14 = *v11;
      v15 = *(a4 + 16);
      if (v13 >= v15)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a4) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_299212A8C();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_2991C0D0C(a4, v19);
        }

        v20 = 24 * v16;
        *v20 = *v14;
        *(v20 + 16) = *(v14 + 28);
        v13 = 24 * v16 + 24;
        v21 = *(a4 + 8) - *a4;
        v22 = v20 - v21;
        memcpy((v20 - v21), *a4, v21);
        v23 = *a4;
        *a4 = v22;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v13 = *v14;
        *(v13 + 16) = *(v14 + 28);
        v13 += 24;
      }

      *(a4 + 8) = v13;
      ++v11;
    }

    while (v11 != v12);
    v11 = v24;
  }

  if (v11)
  {
    v25 = v11;
    operator delete(v11);
  }

  return sub_2991D9464(&v26);
}

void sub_2991DD0D4(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t *j@<X8>, float a8@<S0>)
{
  v14 = a1;
  (*(*a1 + 16))(&v123);
  if (v123)
  {
    sub_2991ED2F4(&v123);
LABEL_3:
    *j = 0;
    j[1] = 0;
    j[2] = 0;
    return;
  }

  sub_2991ED2F4(&v123);
  if (!a3)
  {
    goto LABEL_3;
  }

  v135 = 0;
  v136 = 0;
  v137 = 0;
  v123 = &unk_2A1F62D78;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0;
  v130 = &unk_2A1F62EC0;
  v131 = 0u;
  v132 = 0u;
  v133 = 0;
  v134 = 1024;
  sub_2991D96D0(&v123, a2, a3);
  sub_2991DB730(v14, &v123);
  sub_2991D9D78(&v123, v122, a8);
  v16 = *(v122[0] + *(**(*(&v126 + 1) + 24 * ((((*(&v125 + 1) - v125) >> 3) - 1) & ~((((*(&v125 + 1) - v125) >> 3) - 1) >> 31))) + 24));
  if (!a6)
  {
    goto LABEL_31;
  }

  if (a5)
  {
    v97 = a2;
    v99 = a3;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    sub_2991D9B1C(&v123, &__p);
    v101 = v14;
    v17 = __p;
    v18 = v106;
    if (__p != v106)
    {
      v19 = v120;
      do
      {
        v20 = *v17;
        if (v19 >= v121)
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v119) >> 3);
          v22 = v21 + 1;
          if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          if (0x5555555555555556 * ((v121 - v119) >> 3) > v22)
          {
            v22 = 0x5555555555555556 * ((v121 - v119) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v121 - v119) >> 3) >= 0x555555555555555)
          {
            v23 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_2991C0D0C(&v119, v23);
          }

          v24 = 24 * v21;
          *v24 = *v20;
          *(v24 + 16) = v20[1].n128_u32[3];
          v19 = (24 * v21 + 24);
          v25 = (v24 - (v120 - v119));
          memcpy(v25, v119, v120 - v119);
          v26 = v119;
          v119 = v25;
          v120 = v19;
          v121 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v19 = *v20;
          v19[1].n128_u32[0] = v20[1].n128_u32[3];
          v19 = (v19 + 24);
        }

        v120 = v19;
        ++v17;
      }

      while (v17 != v18);
    }

    v117 = 0.0;
    v27 = v136;
    if (v136 >= v137)
    {
      v29 = sub_2991DEDDC(&v135, &v119, &v117);
    }

    else
    {
      *v136 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      sub_2991C0C40(v27, v119, v120, 0xAAAAAAAAAAAAAAABLL * ((v120 - v119) >> 3));
      v28 = v117;
      *(v27 + 24) = v28;
      v29 = (v27 + 32);
    }

    a2 = v97;
    a3 = v99;
    v14 = v101;
    v136 = v29;
    if (__p)
    {
      *&v106 = __p;
      operator delete(__p);
    }

    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

LABEL_31:
    if (a5)
    {
      sub_2991DA0C0(&v123, a4 + 1, 1, &v119, a8);
      v96 = j;
      if (a6)
      {
        sub_2991DEF08(&v117, (v120 - v119) >> 5);
        v38 = v119;
        v37 = v120;
        if (v120 != v119)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          do
          {
            if (&v38[v39] != (*&v117 + v40))
            {
              sub_2991DEFF8((*&v117 + v40), v38[v39].n128_u64[0], v38[v39].n128_u64[1], (v38[v39].n128_u64[1] - v38[v39].n128_u64[0]) >> 3);
              v38 = v119;
              v37 = v120;
            }

            ++v41;
            v40 += 24;
            v39 += 2;
          }

          while (v41 < (v37 - v38) >> 5);
        }

        sub_2991D9B1C(&v123, &__p);
        v42 = v117;
        v43 = v118;
        if (*&v117 == *&v118)
        {
          v46 = v117;
        }

        else
        {
          v44 = __p;
          v45 = v106 - __p;
          v46 = v117;
          while (*(*&v46 + 8) - **&v46 != v45 || memcmp(**&v46, v44, v45))
          {
            *&v46 += 24;
            if (*&v46 == *&v43)
            {
              v46 = v43;
              break;
            }
          }
        }

        v62 = 0xAAAAAAAAAAAAAAABLL * ((*&v46 - *&v42) >> 3);
        v63 = v120;
        if (v62 == (v120 - v119) >> 5)
        {
          v65 = v120 - 2;
          v64 = v120[-2].n128_u64[0];
          if (v64)
          {
            v120[-2].n128_u64[1] = v64;
            operator delete(v64);
          }
        }

        else
        {
          v65 = &v119[2 * v62];
          if (&v65[2] != v120)
          {
            do
            {
              v66 = v65 + 2;
              sub_29922323C(v65, v65 + 2);
              v65[1].n128_u32[2] = v65[3].n128_u32[2];
              v67 = v65 + 4;
              v65 += 2;
            }

            while (v67 != v63);
            v63 = v120;
            v65 = v66;
          }

          if (v63 != v65)
          {
            v68 = v63;
            do
            {
              v70 = v68[-2].n128_u64[0];
              v68 -= 2;
              v69 = v70;
              if (v70)
              {
                v63[-2].n128_u64[1] = v69;
                operator delete(v69);
              }

              v63 = v68;
            }

            while (v68 != v65);
          }
        }

        v120 = v65;
        if (__p)
        {
          *&v106 = __p;
          operator delete(__p);
        }

        __p = &v117;
        sub_29920E060(&__p);
      }

      v71 = v120[-2].n128_u64[0];
      v103 = v120 - 2;
      v72 = v120[-1].n128_f32[2];
      if (v71)
      {
        v120[-2].n128_u64[1] = v71;
        operator delete(v71);
      }

      v120 = v103;
      for (i = v119; i != v103; i += 2)
      {
        __p = 0;
        v106 = 0uLL;
        v74 = i->n128_u64[0];
        v75 = i->n128_i64[1];
        if (i->n128_u64[0] == v75)
        {
          v77 = 0.0;
        }

        else
        {
          v76 = 0;
          v77 = 0.0;
          do
          {
            v78 = *v74;
            v79 = *(*v74 + 32);
            if (v76 >= *(&v106 + 1))
            {
              v80 = 0xAAAAAAAAAAAAAAABLL * ((v76 - __p) >> 3);
              v81 = v80 + 1;
              if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_299212A8C();
              }

              if (0x5555555555555556 * ((*(&v106 + 1) - __p) >> 3) > v81)
              {
                v81 = 0x5555555555555556 * ((*(&v106 + 1) - __p) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v106 + 1) - __p) >> 3) >= 0x555555555555555)
              {
                v82 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v82 = v81;
              }

              if (v82)
              {
                sub_2991C0D0C(&__p, v82);
              }

              v83 = 24 * v80;
              *v83 = *v78;
              *(v83 + 16) = *(v78 + 28);
              v76 = 24 * v80 + 24;
              v84 = (v83 - (v106 - __p));
              memcpy(v84, __p, v106 - __p);
              v85 = __p;
              __p = v84;
              v106 = v76;
              if (v85)
              {
                operator delete(v85);
              }
            }

            else
            {
              *v76 = *v78;
              *(v76 + 16) = *(v78 + 28);
              v76 += 24;
            }

            *&v106 = v76;
            v77 = v77 + (a8 * v79);
            ++v74;
          }

          while (v74 != v75);
        }

        *&v117 = v77 - v16;
        v86 = v136;
        if (v136 >= v137)
        {
          v87 = sub_2991DF124(&v135, &__p, &v117);
        }

        else
        {
          *v136 = 0;
          *(v86 + 8) = 0;
          *(v86 + 16) = 0;
          sub_2991C0C40(v86, __p, v106, 0xAAAAAAAAAAAAAAABLL * ((v106 - __p) >> 3));
          *(v86 + 24) = LODWORD(v117);
          v87 = (v86 + 32);
        }

        v136 = v87;
        if (__p)
        {
          *&v106 = __p;
          operator delete(__p);
        }
      }

      v88 = v135;
      v89 = v136;
      for (j = v96; v88 != v89; v88 += 32)
      {
        v90 = *(v88 + 24);
        if (v90 != 0.0)
        {
          v91 = v90 - v72;
          v92 = exp(v91);
          if (v91 <= -10.0)
          {
            v94 = v91 + v92 * -0.5 + v92 * v92 / 24.0 + pow(v92, 4.0) / -2880.0;
          }

          else
          {
            v93 = expm1(-v92);
            v94 = log(-v93);
          }

          v95 = v94;
          *(v88 + 24) = v95;
        }
      }

      __p = &v119;
      sub_2992B6C08(&__p);
      v48 = v135;
      v47 = v136;
    }

    else
    {
      v48 = v135;
      v47 = v136;
      if (a4 > (&v136[-v135] >> 5))
      {
        v98 = a2;
        v100 = a3;
        v102 = v14;
        do
        {
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0;
          __p = &unk_2A1F62D78;
          v112 = &unk_2A1F62EC0;
          v113 = 0u;
          v114 = 0u;
          v115 = 0;
          v116 = 1024;
          sub_2991D96D0(&__p, a2, a3);
          sub_2991DB730(v14, &__p);
          v119 = 0;
          v120 = 0;
          v121 = 0;
          sub_2991DB3B8(&__p, &v117, a8);
          v50 = v117;
          v49 = v118;
          v51 = 0.0;
          if (*&v117 != *&v118)
          {
            v52 = v120;
            do
            {
              v53 = **&v50;
              if (v52 >= v121)
              {
                v54 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v119) >> 3);
                v55 = v54 + 1;
                if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_299212A8C();
                }

                if (0x5555555555555556 * ((v121 - v119) >> 3) > v55)
                {
                  v55 = 0x5555555555555556 * ((v121 - v119) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v121 - v119) >> 3) >= 0x555555555555555)
                {
                  v56 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v56 = v55;
                }

                if (v56)
                {
                  sub_2991C0D0C(&v119, v56);
                }

                v57 = 24 * v54;
                *v57 = *v53;
                *(v57 + 16) = v53[1].n128_u32[3];
                v52 = (24 * v54 + 24);
                v58 = (v57 - (v120 - v119));
                memcpy(v58, v119, v120 - v119);
                v59 = v119;
                v119 = v58;
                v120 = v52;
                v121 = 0;
                if (v59)
                {
                  operator delete(v59);
                }
              }

              else
              {
                *v52 = *v53;
                v52[1].n128_u32[0] = v53[1].n128_u32[3];
                v52 = (v52 + 24);
              }

              v120 = v52;
              v51 = v51 + (a8 * v53[2].n128_f32[0]);
              *&v50 += 8;
            }

            while (*&v50 != *&v49);
          }

          v104 = v51 - v16;
          v60 = v136;
          if (v136 >= v137)
          {
            v61 = sub_2991DF124(&v135, &v119, &v104);
            v14 = v102;
          }

          else
          {
            *v136 = 0;
            *(v60 + 8) = 0;
            *(v60 + 16) = 0;
            sub_2991C0C40(v60, v119, v120, 0xAAAAAAAAAAAAAAABLL * ((v120 - v119) >> 3));
            v14 = v102;
            *(v60 + 24) = v104;
            v61 = (v60 + 32);
          }

          a2 = v98;
          a3 = v100;
          v136 = v61;
          if (v117 != 0.0)
          {
            v118 = v117;
            operator delete(*&v117);
          }

          if (v119)
          {
            v120 = v119;
            operator delete(v119);
          }

          sub_2991D9464(&__p);
          v48 = v135;
          v47 = v136;
        }

        while (a4 > (&v136[-v135] >> 5));
      }
    }

    *j = v48;
    j[1] = v47;
    j[2] = v137;
    j = &v135;
    goto LABEL_120;
  }

  if (sub_2991EB39C() <= 2)
  {
    LOBYTE(__p) = 0;
    v30 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "unigram_model.cc", 16);
    v31 = sub_2991C0E9C(v30, "(", 1);
    v32 = MEMORY[0x29C29BD30](v31, 717);
    v33 = sub_2991C0E9C(v32, ") ", 2);
    v34 = sub_2991C0E9C(v33, "LOG(", 4);
    v35 = sub_2991C0E9C(v34, "ERROR", 5);
    v36 = sub_2991C0E9C(v35, ") ", 2);
    sub_2991C0E9C(v36, "include_best not supported for wor false", 40);
    sub_2991BF944(&__p);
  }

LABEL_120:
  *j = 0;
  j[1] = 0;
  j[2] = 0;
  if (v122[0])
  {
    v122[1] = v122[0];
    operator delete(v122[0]);
  }

  sub_2991D9464(&v123);
  v123 = &v135;
  sub_2992B6C08(&v123);
}

void sub_2991DDBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  v49 = v46[22];
  if (v49)
  {
    v46[23] = v49;
    operator delete(v49);
  }

  v50 = v46[25];
  if (v50)
  {
    v46[26] = v50;
    operator delete(v50);
  }

  sub_2991D9464(&a46);
  a46 = (v47 - 160);
  sub_2992B6C08(&a46);
  _Unwind_Resume(a1);
}

float sub_2991DDD30(uint64_t a1, unsigned __int8 *a2, uint64_t a3, float a4)
{
  v8 = &unk_2A1F62D78;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = &unk_2A1F62EC0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v19 = 1024;
  sub_2991D96D0(&v8, a2, a3);
  sub_2991DB730(a1, &v8);
  v6 = sub_2991D9F00(&v8, a4);
  sub_2991D9464(&v8);
  return v6;
}

void sub_2991DDDF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2991D9464(va);
  _Unwind_Resume(a1);
}

BOOL sub_2991DDE04(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  strcpy(__s, " ");
  v10 = strlen(__s);
  sub_2991D6774(&v44, a2, a3, __s, v10, 0);
  v47 = 0;
  v48 = 0;
  __p = 0;
  sub_2991DE4FC(&__p, v44, v45, (v45 - v44) >> 4);
  v11 = __p;
  v12 = v47;
  if (__p == v47)
  {
    v14 = 0.0;
    if (__p)
    {
LABEL_11:
      v47 = v11;
      operator delete(v11);
    }
  }

  else
  {
    v13 = *(a1 + 104) + -10.0;
    v14 = 0.0;
    do
    {
      v15 = v11[1];
      v16 = (*(*a1 + 112))(a1, *v11, v15);
      if (v16 == *(a1 + 88))
      {
        v14 = v13 + v14;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v16))
        {
          v17 = (*(a1 + 108) * v15) + -0.1;
        }

        else
        {
          v17 = (*(**(a1 + 8) + 96))(*(a1 + 8), v16);
        }

        v14 = v17 + v14;
      }

      v11 += 2;
    }

    while (v11 != v12);
    v11 = __p;
    if (__p)
    {
      goto LABEL_11;
    }
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  strcpy(__s, " ");
  v18 = strlen(__s);
  sub_2991D6774(&v44, a4, a5, __s, v18, 0);
  v42 = 0;
  v43 = 0;
  v41 = 0;
  sub_2991DE4FC(&v41, v44, v45, (v45 - v44) >> 4);
  v19 = v41;
  v20 = v42;
  if (v41 != v42)
  {
    v21 = *(a1 + 104) + -10.0;
    v22 = 0.0;
    do
    {
      v23 = v19[1];
      v24 = (*(*a1 + 112))(a1, *v19, v23);
      if (v24 == *(a1 + 88))
      {
        v22 = v21 + v22;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v24))
        {
          v25 = (*(a1 + 108) * v23) + -0.1;
        }

        else
        {
          v25 = (*(**(a1 + 8) + 96))(*(a1 + 8), v24);
        }

        v22 = v25 + v22;
      }

      v19 += 2;
    }

    while (v19 != v20);
    v19 = v41;
    if (!v41)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v22 = 0.0;
  if (v41)
  {
LABEL_24:
    v42 = v19;
    operator delete(v19);
  }

LABEL_25:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v26 = vabds_f32(v14, v22);
  if (v26 > 0.0000001 && sub_2991EB39C() <= 1)
  {
    LOBYTE(v44) = 0;
    v27 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "unigram_model.cc", 16);
    v28 = sub_2991C0E9C(v27, "(", 1);
    v29 = MEMORY[0x29C29BD30](v28, 840);
    v30 = sub_2991C0E9C(v29, ") ", 2);
    v31 = sub_2991C0E9C(v30, "LOG(", 4);
    v32 = sub_2991C0E9C(v31, "WARNING", 7);
    v33 = sub_2991C0E9C(v32, ") ", 2);
    v34 = sub_2991C0E9C(v33, "Two sentence piece sequences are not equivalent! Left: ", 55);
    v35 = sub_2991C0E9C(v34, a2, a3);
    sub_2991C0E9C(v35, ", Score: ", 9);
    v36 = std::ostream::operator<<();
    v37 = sub_2991C0E9C(v36, ". Right: ", 9);
    v38 = sub_2991C0E9C(v37, a4, a5);
    sub_2991C0E9C(v38, ", Score: ", 9);
    v39 = std::ostream::operator<<();
    sub_2991C0E9C(v39, ".", 1);
    sub_2991BF944(&v44);
  }

  return v26 <= 0.0000001;
}

void sub_2991DE26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991DE2C8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_2991BE5F0(a1, &v13);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = *(a1 + 104);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(a1 + 108);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v13;
  }

  else
  {
    v10 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v13.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_2991DE408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991DE480(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299273C64(result, a4);
  }

  return result;
}

void sub_2991DE4E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991DE4FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2991D6AAC(result, a4);
  }

  return result;
}

void sub_2991DE55C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991DE578(void *a1)
{
  sub_2991DE5B0(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2991DE5B0(void *a1)
{
  *a1 = &unk_2A1F62EC0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x29C29BF70](*v2, 0x1070C8005A2B047);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2991DE644(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_299212A8C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_2991DE7B0(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_29920DE38(v18);
  }
}

void sub_2991DE7B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2991DE808(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2991DE890(result, a4);
  }

  return result;
}

void sub_2991DE870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2992B6C08(&a9);
  _Unwind_Resume(a1);
}

void sub_2991DE890(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2991DE8CC(a1, a2);
  }

  sub_299212A8C();
}

void sub_2991DE8CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2991DE914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_2991DE480(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_2991DE9D0(v8);
  return v4;
}

uint64_t sub_2991DE9D0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_299221FF0(a1);
  }

  return a1;
}

void sub_2991DEA08(void *a1)
{
  sub_2991DB324(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991DEA40(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 24) = 0;
        *(v4 + 16) = 0;
        v4 += 32;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      sub_299212A8C();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21[4] = result;
    if (v10)
    {
      sub_2991DE8CC(result, v10);
    }

    v13 = 32 * v8;
    v14 = 32 * a2;
    v15 = 32 * v8;
    v16 = 32 * v8 + 32 * a2;
    do
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 24) = 0;
      *(v15 + 16) = 0;
      v15 += 32;
      v14 -= 32;
    }

    while (v14);
    v17 = *(result + 8) - *result;
    v18 = v13 - v17;
    memcpy((v13 - v17), *result, v17);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v16;
    v20 = v3[2];
    v3[2] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    return sub_299222040(v21);
  }

  return result;
}

void *sub_2991DEB68(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_29920E024(result, a2);
  }

  return result;
}

void sub_2991DEC24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_2991DEC40(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_2991C0C40(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_2991DECB4(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_299212A8C();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_2991C0B30(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_2991C0C40(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_299222040(&v17);
  return v11;
}

void sub_2991DEDC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299222040(va);
  _Unwind_Resume(a1);
}

char *sub_2991DEDDC(uint64_t a1, uint64_t *a2, double *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_299212A8C();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v22 = a1;
  if (v9)
  {
    sub_2991C0B30(a1, v9);
  }

  v10 = 32 * v3;
  v18 = 0;
  v19 = v10;
  v20 = v10;
  v21 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_2991C0C40(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v11 = *a3;
  *(v10 + 24) = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = &v19[-v13];
  memcpy(&v19[-v13], *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  sub_299222040(&v18);
  return v12;
}

void sub_2991DEEF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299222040(va);
  _Unwind_Resume(a1);
}

void *sub_2991DEF08(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2991DEFAC(result, a2);
  }

  return result;
}

void sub_2991DEFAC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2991DE7B0(a1, a2);
  }

  sub_299212A8C();
}

void *sub_2991DEFF8(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_299273C64(v6, v10);
    }

    sub_299212A8C();
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

char *sub_2991DF124(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_299212A8C();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_2991C0B30(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_2991C0C40(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_299222040(&v17);
  return v11;
}

void sub_2991DF238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299222040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991DF24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2991DBC98(a1);
  *v4 = &unk_2A1F62F20;
  v4[1] = a2 + 16;
  sub_2991BD808(v4);
  return a1;
}

void sub_2991DF2B8(void *a1)
{
  sub_2991BC6A8(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2991DF2F0(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v21);
  if (v21)
  {
    sub_2991ED2F4(&v21);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sub_2991ED2F4(&v21);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  do
  {
    v8 = sub_2991C5C50(a1[2], a2, a3, 0);
    v9 = (*(*a1 + 112))(a1, a2, v8);
    v11 = *(a4 + 8);
    v10 = *(a4 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_299212A8C();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_2991C0D0C(a4, v16);
      }

      v17 = 24 * v13;
      *v17 = a2;
      *(v17 + 8) = v8;
      *(v17 + 16) = v9;
      v12 = 24 * v13 + 24;
      v18 = *(a4 + 8) - *a4;
      v19 = v17 - v18;
      memcpy((v17 - v18), *a4, v18);
      v20 = *a4;
      *a4 = v19;
      *(a4 + 8) = v12;
      *(a4 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = a2;
      *(v11 + 8) = v8;
      v12 = v11 + 24;
      *(v11 + 16) = v9;
    }

    *(a4 + 8) = v12;
    a2 += v8;
    a3 -= v8;
  }

  while (a3);
}

void sub_2991DF4CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991DF4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2991DBC98(a1);
  *v4 = &unk_2A1F63038;
  v4[1] = a2 + 16;
  sub_2991BD808(v4);
  return a1;
}

void sub_2991DF55C(void *a1)
{
  sub_2991BC6A8(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2991DF594(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v22);
  if (v22)
  {
    sub_2991ED2F4(&v22);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sub_2991ED2F4(&v22);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_2991BE930(a2, a3, 0, 0, &v22);
  v8 = v22;
  v9 = v23;
  if (v22 != v23)
  {
    do
    {
      v10 = (*(*a1 + 112))(a1, *v8, v8[1]);
      v12 = *(a4 + 8);
      v11 = *(a4 + 16);
      if (v12 >= v11)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_299212A8C();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_2991C0D0C(a4, v17);
        }

        v18 = 24 * v14;
        *v18 = *v8;
        *(v18 + 16) = v10;
        v13 = 24 * v14 + 24;
        v19 = *(a4 + 8) - *a4;
        v20 = v18 - v19;
        memcpy((v18 - v19), *a4, v19);
        v21 = *a4;
        *a4 = v20;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = *v8;
        *(v12 + 16) = v10;
        v13 = v12 + 24;
      }

      *(a4 + 8) = v13;
      v8 += 2;
    }

    while (v8 != v9);
    v8 = v22;
  }

  if (v8)
  {
    v23 = v8;
    operator delete(v8);
  }
}

void sub_2991DF78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991DF7BC()
{
  sub_2991EF3E0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc");
  sub_2991E13E8(&unk_2A14619E8, 0);

  sub_2991FB7AC(sub_2991FAC70, &unk_2A14619E8);
}

void sub_2991DF82C()
{
  sub_2991EF3E0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc");
  sub_2991E08F8(&unk_2A1461990, 0);

  sub_2991FB7AC(sub_2991FAC70, &unk_2A1461990);
}

void sub_2991DF89C()
{
  sub_2991EF3E0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc");
  sub_2991DF90C(&unk_2A1461940, 0);

  sub_2991FB7AC(sub_2991FAC70, &unk_2A1461940);
}

uint64_t sub_2991DF90C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F63150;
  *(a1 + 8) = a2;
  sub_2991EFD64(a1 + 16, a2);
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2A1A99E10, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99E10);
  }

  *(a1 + 48) = &qword_2A1461CE0;
  *(a1 + 56) = &qword_2A1461CE0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_2991DF99C(uint64_t a1)
{
  sub_2991DF9D8(a1);
  sub_2991DFAF8((a1 + 8));
  sub_2991EFE30(a1 + 16);
  return a1;
}

uint64_t *sub_2991DF9D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_2991EF744(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 140);
    v3 = sub_2991EF75C(v12, "CHECK failed: GetArena() == nullptr: ");
    sub_2991EF898(&v11, &v3->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v12);
  }

LABEL_4:
  result = (a1 + 48);
  if (*(a1 + 48) != &qword_2A1461CE0)
  {
    v5 = sub_2991E1E40(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x29C29BFB0](v6, 0x1012C40EC159624);
  }

  v8 = *(a1 + 56);
  v7 = (a1 + 56);
  if (v8 != &qword_2A1461CE0)
  {
    v9 = sub_2991E1E40(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x29C29BFB0](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_2991DFAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991DFAF8(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      JUMPOUT(0x29C29BFB0);
    }
  }

  return result;
}

void sub_2991DFB74(uint64_t a1)
{
  sub_2991DF99C(a1);

  JUMPOUT(0x29C29BFB0);
}

unsigned __int8 *sub_2991DFBAC(uint64_t a1)
{
  result = sub_2991F37E4((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

LABEL_11:
  if ((v3 & 0x1C) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 40) = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 31) < 0)
    {
      **(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    else
    {
      *(v7 + 8) = 0;
      *(v7 + 31) = 0;
    }
  }

  return result;
}

char *sub_2991DFC7C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_2991E1F14(a3, &v36, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v36 + 1;
      v8 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v26 = sub_2991FC5E0(v36, v9 - 128);
      v36 = v26;
      if (!v26)
      {
        goto LABEL_62;
      }

      v7 = v26;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 40) |= 1u;
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (a1 + 48);
LABEL_39:
            v23 = sub_2991EE508(v19, v18);
            v24 = sub_2991FC624(v23, v36, a3);
LABEL_40:
            v36 = v24;
            if (!v24)
            {
              goto LABEL_62;
            }

            goto LABEL_41;
          }

LABEL_43:
          if (v8)
          {
            v25 = (v8 & 7) == 4;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x640)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v29 = (v28 & 0xFFFFFFFFFFFFFFFELL) + 8;
            }

            else
            {
              v29 = sub_2991E2054((a1 + 8));
              v7 = v36;
            }

            v24 = sub_2991FCAE0(v8, v29, v7, a3);
          }

          else
          {
            v24 = sub_2991F4D18((a1 + 16), v8, v7, &unk_2A1461940, (a1 + 8), a3);
          }

          goto LABEL_40;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_43;
        }

        v5 |= 4u;
        v15 = v7 + 1;
        v16 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v15;
        v16 = v16 + (v17 << 7) - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v15 = v7 + 2;
LABEL_25:
          v36 = v15;
          *(a1 + 64) = v16;
          goto LABEL_41;
        }

        v34 = sub_2991FC52C(v7, v16);
        v36 = v34;
        *(a1 + 64) = v35;
        if (!v34)
        {
LABEL_62:
          v36 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 40) |= 2u;
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (a1 + 56);
            goto LABEL_39;
          }

          goto LABEL_43;
        }

        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_43;
          }

          v5 |= 8u;
          v20 = v7 + 1;
          v21 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v22 = *v20;
          v21 = v21 + (v22 << 7) - 128;
          if ((v22 & 0x80000000) == 0)
          {
            v20 = v7 + 2;
LABEL_34:
            v36 = v20;
            *(a1 + 68) = v21;
            goto LABEL_41;
          }

          v30 = sub_2991FC52C(v7, v21);
          v36 = v30;
          *(a1 + 68) = v31;
          if (!v30)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v10 != 5 || v8 != 40)
          {
            goto LABEL_43;
          }

          v5 |= 0x10u;
          v11 = v7 + 1;
          v12 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          v13 = *v11;
          v12 = v12 + (v13 << 7) - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v11 = v7 + 2;
LABEL_15:
            v36 = v11;
            *(a1 + 72) = v12;
            goto LABEL_41;
          }

          v32 = sub_2991FC52C(v7, v12);
          v36 = v32;
          *(a1 + 72) = v33;
          if (!v32)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_41:
      if (sub_2991E1F14(a3, &v36, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v36 + 2;
LABEL_6:
    v36 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v36;
}

char *sub_2991DFF8C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_2991EECB8(a3, v4);
    }

    v8 = *(a1 + 64);
    *v4 = 16;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++v4;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v4 = sub_2991E0240(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  v4 = sub_2991E0240(a3, 3, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_6;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_2991EECB8(a3, v4);
  }

  v15 = *(a1 + 68);
  *v4 = 32;
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    if (v15 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v4;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v4 - 1) = v17;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v4[2] = v16;
      v4 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v4[1] = v15;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = sub_2991EECB8(a3, v4);
  }

  v7 = *(a1 + 72);
  *v4 = 40;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_39:
  v19 = sub_2991F5ACC(a1 + 16, 200, 0x20000000, v4, a3);
  v20 = v19;
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v20;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if ((*a3 - v19) >= v24)
  {
    v26 = v24;
    memcpy(v19, v25, v24);
    v20 += v26;
    return v20;
  }

  return sub_2991EEDD0(a3, v25, v24, v19);
}

char *sub_2991E0240(unint64_t *a1, int a2, const void **a3, char *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if ((v5 - a4 + 14) >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return sub_2991EF018(a1, a2, a3, a4);
}

uint64_t sub_2991E036C(uint64_t a1)
{
  result = sub_2991F86EC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 8) == 0)
      {
LABEL_6:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  v10 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  result += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  result += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v4 = *(a1 + 8);
  if (v4)
  {
    v11 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_2991E04D8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_2A1F63C88, &unk_2A1F632C0, 0))
  {
    sub_2991E2858();
  }

  sub_2991E0560(a1, lpsrc);
}

void sub_2991E0560(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 375);
    v4 = sub_2991EF75C(v19, "CHECK failed: (&from) != (this): ");
    sub_2991EF898(&v18, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v19);
  }

  sub_2993F97F4(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_2991E2054((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 40);
  if ((v13 & 0x1F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_2991EE4D0((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 56);
    *(a1 + 40) |= 2u;
    v17 = *(a1 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_2991EE4D0((a1 + 56), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 64) = *(a2 + 64);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
LABEL_20:
        *(a1 + 40) |= v13;
        return;
      }

LABEL_19:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_20;
    }

LABEL_29:
    *(a1 + 68) = *(a2 + 68);
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }
}

void sub_2991E06E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991E0704(uint64_t a1, uint64_t a2)
{
  sub_2991F4784(a1 + 16, a2 + 16);
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = sub_2991E2054((a2 + 8));
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_21:
      v10 = sub_2991E2054((a1 + 8));
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v8;
    goto LABEL_9;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v10 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
LABEL_7:
  v11 = *(v10 + 16);
  v12 = *v10;
  v13 = *(v9 + 16);
  *v10 = *v9;
  *(v10 + 16) = v13;
  *v9 = v12;
  *(v9 + 16) = v11;
  v5 = *(a1 + 8);
  LODWORD(v11) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  result = (a1 + 48);
  if (*(a1 + 48) != &qword_2A1461CE0 || *(a2 + 48) != &qword_2A1461CE0)
  {
    v16 = sub_2991EE508(result, v14);
    result = sub_2991EE508((a2 + 48), v14);
    v17 = v16[2];
    v18 = *v16;
    v19 = result[2];
    *v16 = *result;
    v16[2] = v19;
    *result = v18;
    result[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 56) != &qword_2A1461CE0 || *(a2 + 56) != &qword_2A1461CE0)
  {
    v20 = sub_2991EE508((a1 + 56), v5);
    result = sub_2991EE508((a2 + 56), v5);
    v21 = v20[2];
    v22 = *v20;
    v23 = result[2];
    *v20 = *result;
    v20[2] = v23;
    *result = v22;
    result[2] = v21;
  }

  v24 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v24;
  LODWORD(v24) = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v24;
  return result;
}

uint64_t sub_2991E08F8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F631D0;
  *(a1 + 8) = a2;
  sub_2991EFD64(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2A1A99DF0, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99DF0);
  }

  *(a1 + 72) = &qword_2A1461CE0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_2991E0988(_Unwind_Exception *a1)
{
  sub_2991E2290(v2);
  sub_2991EFE30(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E09A8(uint64_t a1)
{
  sub_2991E09EC(a1);
  sub_2991DFAF8((a1 + 8));
  sub_2991E2290((a1 + 48));
  sub_2991EFE30(a1 + 16);
  return a1;
}

uint64_t sub_2991E09EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_2991EF744(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 486);
    v3 = sub_2991EF75C(v9, "CHECK failed: GetArena() == nullptr: ");
    sub_2991EF898(&v8, &v3->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v9);
  }

LABEL_4:
  v5 = *(v1 + 72);
  v4 = (v1 + 72);
  if (v5 != &qword_2A1461CE0)
  {
    v6 = sub_2991E1E40(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    return MEMORY[0x29C29BFB0](v7, 0x1012C40EC159624);
  }

  return result;
}

void sub_2991E0AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E0AD0(uint64_t a1)
{
  sub_2991E09A8(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2991E0B08()
{
  if (atomic_load_explicit(dword_2A1A99DF0, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99DF0);
  }

  return &unk_2A1461990;
}

unsigned __int8 *sub_2991E0B48(uint64_t a1)
{
  sub_2991F37E4((a1 + 16));
  result = sub_2991E2130((a1 + 48));
  if (*(a1 + 40))
  {
    v3 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }

  return result;
}

char *sub_2991E0BDC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_2991E1F14(a3, &v28, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v28 + 1;
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v24 = sub_2991FC5E0(v28, v9 - 128);
      v28 = v24;
      if (!v24)
      {
        goto LABEL_48;
      }

      v7 = v24;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 29)
        {
          v5 |= 2u;
          *(a1 + 80) = *v7;
          v28 = v7 + 4;
          goto LABEL_44;
        }

        goto LABEL_13;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          v14 = v7 - 1;
          while (1)
          {
            v15 = v14 + 1;
            v28 = v14 + 1;
            v16 = *(a1 + 64);
            if (!v16)
            {
              break;
            }

            v21 = *(a1 + 56);
            v17 = *v16;
            if (v21 < *v16)
            {
              *(a1 + 56) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
              goto LABEL_27;
            }

            if (v17 == *(a1 + 60))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = sub_2991E1B80(*(a1 + 48));
            v19 = *(a1 + 56);
            v20 = *(a1 + 64) + 8 * v19;
            *(a1 + 56) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v28;
LABEL_27:
            v14 = sub_2993F820C(a3, v18, v15);
            v28 = v14;
            if (!v14)
            {
              goto LABEL_48;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_44;
            }
          }

          v17 = *(a1 + 60);
LABEL_23:
          sub_2992018A8(a1 + 48, v17 + 1);
          v16 = *(a1 + 64);
          v17 = *v16;
          goto LABEL_24;
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          a3[10].i32[0] = v8 - 1;
          goto LABEL_2;
        }

        if (v8 < 0x640)
        {
          v26 = *(a1 + 8);
          if (v26)
          {
            v27 = (v26 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v27 = sub_2991E2054((a1 + 8));
            v7 = v28;
          }

          v13 = sub_2991FCAE0(v8, v27, v7, a3);
        }

        else
        {
          v13 = sub_2991F4D18((a1 + 16), v8, v7, &unk_2A1461990, (a1 + 8), a3);
        }

        goto LABEL_43;
      }

      if (v10 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 40) |= 1u;
      v22 = *(a1 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = sub_2991EE508((a1 + 72), v22);
      v13 = sub_2991FC624(v23, v28, a3);
LABEL_43:
      v28 = v13;
      if (!v13)
      {
LABEL_48:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_2991E1F14(a3, &v28, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v28 + 2;
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v28;
}

char *sub_2991E0E74(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_2991E0240(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_2991EECB8(a3, v4);
      }

      v9 = sub_2991D62F0(a1 + 48, i);
      *v4 = 18;
      v10 = *(v9 + 44);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = sub_2991DFF8C(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_2991EECB8(a3, v4);
    }

    v15 = *(a1 + 80);
    *v4 = 29;
    *(v4 + 1) = v15;
    v4 += 5;
  }

  v16 = sub_2991F5ACC(a1 + 16, 200, 0x20000000, v4, a3);
  v17 = v16;
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v17;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if ((*a3 - v16) >= v21)
  {
    v23 = v21;
    memcpy(v16, v22, v21);
    v17 += v23;
    return v17;
  }

  return sub_2991EEDD0(a3, v22, v21, v16);
}

uint64_t sub_2991E1060(uint64_t a1)
{
  v2 = sub_2991F86EC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_2991E036C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v4 += 5;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v4 += v17;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_2991E1164(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_2A1F63C88, &unk_2A1F632D8, 0))
  {
    sub_2991E2858();
  }

  sub_2991E11EC(a1, lpsrc);
}

void sub_2991E11EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 674);
    v4 = sub_2991EF75C(v17, "CHECK failed: (&from) != (this): ");
    sub_2991EF898(&v16, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v17);
  }

  sub_2993F97F4(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_2991E2054((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_2991E2440(a1 + 48, a2 + 48);
  v13 = *(a2 + 40);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_2991EE4D0((a1 + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v13;
  }
}

void sub_2991E131C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E1334(uint64_t a1)
{
  result = sub_2991F4974(a1 + 16);
  if (result)
  {

    return sub_2991E1380(a1 + 48);
  }

  return result;
}

BOOL sub_2991E1380(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_2991D62F0(a1, v2);
  }

  while ((sub_2991F4974(v5 + 16) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_2991E13E8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F63250;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2A1A99DD0, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99DD0);
  }

  return a1;
}

uint64_t sub_2991E1470(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    sub_2991EF744(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 755);
    v4 = sub_2991EF75C(v7, "CHECK failed: GetArena() == nullptr: ");
    sub_2991EF898(&v6, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v7);
  }

LABEL_4:
  sub_2991DFAF8(v3);
  sub_2991E25EC((a1 + 16));
  return a1;
}

void sub_2991E1508(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  sub_2991EDA10(a1);
}

void sub_2991E152C(uint64_t a1)
{
  sub_2991E1470(a1);

  JUMPOUT(0x29C29BFB0);
}

unsigned __int8 *sub_2991E1564(uint64_t a1)
{
  result = sub_2991E21E0((a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }

  return result;
}

char *sub_2991E15B8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  if ((sub_2991E1F14(a3, &v22, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v22 + 1;
      v6 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      v19 = sub_2991FC5E0(v22, v7 - 128);
      v22 = v19;
      if (!v19)
      {
        return 0;
      }

      v5 = v19;
      v6 = v20;
LABEL_6:
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = v11 + 1;
          v22 = v11 + 1;
          v13 = *(a1 + 32);
          if (!v13)
          {
            break;
          }

          v18 = *(a1 + 24);
          v14 = *v13;
          if (v18 < *v13)
          {
            *(a1 + 24) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
            goto LABEL_23;
          }

          if (v14 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v13 = v14 + 1;
          v15 = sub_2991E1C50(*(a1 + 16));
          v16 = *(a1 + 24);
          v17 = *(a1 + 32) + 8 * v16;
          *(a1 + 24) = v16 + 1;
          *(v17 + 8) = v15;
          v12 = v22;
LABEL_23:
          v11 = sub_2993F82D4(a3, v15, v12);
          v22 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_14;
          }
        }

        v14 = *(a1 + 28);
LABEL_19:
        sub_2992018A8(a1 + 16, v14 + 1);
        v13 = *(a1 + 32);
        v14 = *v13;
        goto LABEL_20;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        a3[10].i32[0] = v6 - 1;
        return v22;
      }

      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + 8;
      }

      else
      {
        v10 = sub_2991E2054((a1 + 8));
        v5 = v22;
      }

      v22 = sub_2991FCAE0(v6, v10, v5, a3);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_2991E1F14(a3, &v22, a3[11].i32[1]))
      {
        return v22;
      }
    }

    v5 = v22 + 2;
LABEL_5:
    v22 = v5;
    goto LABEL_6;
  }

  return v22;
}

char *sub_2991E1788(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_2991EECB8(a3, __dst);
      }

      v8 = sub_2991D63D0(a1 + 16, i);
      *__dst = 10;
      v9 = *(v8 + 44);
      if (v9 > 0x7F)
      {
        __dst[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = __dst + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          __dst[2] = v11;
          v10 = __dst + 3;
        }
      }

      else
      {
        __dst[1] = v9;
        v10 = __dst + 2;
      }

      __dst = sub_2991E0E74(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - __dst) >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_2991EEDD0(a3, v18, v17, __dst);
}

uint64_t sub_2991E18F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_2991E1060(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

void sub_2991E1994(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_2A1F63C88, &unk_2A1F632F0, 0))
  {
    sub_2991E2858();
  }

  sub_2991E1A1C(a1, lpsrc);
}

void sub_2991E1A1C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 877);
    v4 = sub_2991EF75C(v14, "CHECK failed: (&from) != (this): ");
    sub_2991EF898(&v13, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v14);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_2991E2054((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_2991E26AC(a1 + 16, a2 + 16);
}

void sub_2991E1AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

BOOL sub_2991E1B08(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_2991D63D0(a1, v2);
    if (!sub_2991F4974(v5 + 16))
    {
      break;
    }
  }

  while (sub_2991E1380(v5 + 48));
  return v3 < 1;
}

uint64_t sub_2991E1B80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2A1F632C0, 80);
  }

  v2 = sub_2991EE040(a1, 80);
  sub_2991DF90C(v2, a1);
  return v2;
}

uint64_t sub_2991E1C50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2A1F632D8, 88);
  }

  v2 = sub_2991EE040(a1, 88);
  sub_2991E08F8(v2, a1);
  return v2;
}

uint64_t sub_2991E1D20(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2A1F632F0, 48);
  }

  v2 = sub_2991EE040(a1, 48);
  sub_2991E13E8(v2, a1);
  return v2;
}

uint64_t sub_2991E1E40(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    sub_2991EF744(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 363);
    v3 = sub_2991EF75C(v6, "CHECK failed: !tagged_ptr_.IsTagged(): ");
    sub_2991EF898(&v5, &v3->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v6);
    result = *a1;
  }

  if (!result)
  {
    sub_2991EF744(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 364);
    v4 = sub_2991EF75C(v6, "CHECK failed: tagged_ptr_.UnsafeGet() != nullptr: ");
    sub_2991EF898(&v5, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v6);
    return *a1;
  }

  return result;
}

void sub_2991E1EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E1F14(uint64_t a1, char **a2, int a3)
{
  v6 = *a2;
  if (!*a2)
  {
    sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 209);
    v7 = sub_2991EF75C(v13, "CHECK failed: *ptr: ");
    sub_2991EF898(&v12, &v7->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v13);
    v6 = *a2;
  }

  if (v6 >= *a1)
  {
    v10 = v6 - *(a1 + 8);
    if (v10 >= 17)
    {
      sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 212);
      v11 = sub_2991EF75C(v13, "CHECK failed: (overrun) <= (kSlopBytes): ");
      sub_2991EF898(&v12, &v11->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v13);
    }

    if (*(a1 + 28) == v10)
    {
      if (v10 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v8 = 1;
    }

    else
    {
      *a2 = sub_2991FC09C(a1, v10, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_2991E2034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2991E2054(unint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator new();
  }

  v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(v2 + 24))
  {
    (*(**(*(v2 + 32) + 32) + 40))(*(*(v2 + 32) + 32), &unk_2A1F63318, 32);
  }

  v3 = sub_2991EDD44(v2, 0x20uLL, sub_2991E211C);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 8;
}

void sub_2991E211C(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

unsigned __int8 *sub_2991E2130(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_2991EF744(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_2991EF75C(v7, "CHECK failed: (n) >= (0): ");
    sub_2991EF898(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_2991EF8A0(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2991DFBAC(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_2991E21C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2991E21E0(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_2991EF744(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_2991EF75C(v7, "CHECK failed: (n) >= (0): ");
    sub_2991EF898(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_2991EF8A0(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2991E0B48(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_2991E2278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991E2290(uint64_t *a1)
{
  sub_2991E22CC(a1);

  return sub_2991E2350(a1);
}

void sub_2991E22CC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_2991DF99C(*v3);
          MEMORY[0x29C29BFB0](v5, 0x10A1C40E4A317A1);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_2991E2350(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_2991EDA24(v2);
  }

  return a1;
}

uint64_t sub_2991E2384(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 >= 0x7FFFFFF0)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 128);
    v6 = sub_2991EF75C(v11, "CHECK failed: limit >= 0 && limit <= INT_MAX - kSlopBytes: ");
    sub_2991EF898(&v10, &v6->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
  }

  v7 = *(a1 + 8);
  v8 = a2 - v7 + a3;
  *a1 = v7 + (v8 & (v8 >> 31));
  LODWORD(v7) = *(a1 + 28);
  *(a1 + 28) = v8;
  return (v7 - v8);
}

void sub_2991E2428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E2440(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_2991EF75C(v11, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v10, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_2992018BC(a1, v5);
    sub_2991E252C(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_2991E2514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E252C(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_2991E25DC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2991E1B80(v18);
      sub_2991E25DC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

uint64_t *sub_2991E25EC(uint64_t *a1)
{
  sub_2991E2628(a1);

  return sub_2991E2350(a1);
}

void sub_2991E2628(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_2991E09A8(*v3);
          MEMORY[0x29C29BFB0](v5, 0x10A1C40431D3885);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_2991E26AC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_2991EF75C(v11, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v10, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_2992018BC(a1, v5);
    sub_2991E2798(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_2991E2780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E2798(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_2991E2848(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2991E1C50(v18);
      sub_2991E2848(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_2991E2884()
{
  sub_2991EF3E0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_2991E7918(&unk_2A1461C68, 0);

  sub_2991FB7AC(sub_2991FAC70, &unk_2A1461C68);
}

void sub_2991E28F4()
{
  sub_2991EF3E0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_2991E6FDC(qword_2A1461C28, 0);

  sub_2991FB7AC(sub_2991FAC70, qword_2A1461C28);
}

void sub_2991E2964()
{
  sub_2991EF3E0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_2991E52A4(&unk_2A1461B60, 0);

  sub_2991FB7AC(sub_2991FAC70, &unk_2A1461B60);
}

void sub_2991E29D4()
{
  sub_2991EF3E0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_2991E6830(&unk_2A1461BE0, 0);

  sub_2991FB7AC(sub_2991FAC70, &unk_2A1461BE0);
}

void sub_2991E2A44()
{
  sub_2991EF3E0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_2991E606C(qword_2A1461BB8, 0);

  sub_2991FB7AC(sub_2991FAC70, qword_2A1461BB8);
}

void sub_2991E2AB4()
{
  sub_2991EF3E0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_2991E2B34(&unk_2A1461A18, 0);

  sub_2991FB7AC(sub_2991FAC70, &unk_2A1461A18);
}

uint64_t sub_2991E2B34(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F63340;
  *(a1 + 8) = a2;
  sub_2991EFD64(a1 + 16, a2);
  *(a1 + 128) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (atomic_load_explicit(dword_2A1A99EC8, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99EC8);
  }

  *(a1 + 152) = &qword_2A1461CE0;
  *(a1 + 160) = &qword_2A1461CE0;
  *(a1 + 168) = &qword_2A1461CE0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &qword_2A1461CE0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0x1F4000000001;
  *(a1 + 280) = 0xF42403F7FDF3BLL;
  *(a1 + 288) = 1061158912;
  *(a1 + 292) = xmmword_2993FED80;
  *(a1 + 308) = 16843009;
  *(a1 + 312) = 257;
  *(a1 + 316) = 1;
  *(a1 + 320) = 0xFFFFFFFF00000002;
  return a1;
}

void sub_2991E2C60(_Unwind_Exception *a1)
{
  sub_2992018A4(v3);
  sub_2992018A4(v5);
  sub_2992018A4(v4);
  sub_2992018A4(v2);
  sub_2991EFE30(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991E2C94(uint64_t *a1)
{
  sub_2991E2CF0(a1);
  sub_2991DFAF8(a1 + 1);
  sub_2992018A4(a1 + 16);
  sub_2992018A4(a1 + 13);
  sub_2992018A4(a1 + 10);
  sub_2992018A4(a1 + 7);
  sub_2991EFE30((a1 + 2));
  return a1;
}

uint64_t *sub_2991E2CF0(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_2991EF744(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 519);
    v3 = sub_2991EF75C(v26, "CHECK failed: GetArena() == nullptr: ");
    sub_2991EF898(&v25, &v3->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v26);
  }

LABEL_4:
  if (a1[19] != &qword_2A1461CE0)
  {
    v4 = sub_2991E1E40(a1 + 19);
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x29C29BFB0](v5, 0x1012C40EC159624);
  }

  if (a1[20] != &qword_2A1461CE0)
  {
    v6 = sub_2991E1E40(a1 + 20);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x29C29BFB0](v7, 0x1012C40EC159624);
  }

  if (a1[21] != &qword_2A1461CE0)
  {
    v8 = sub_2991E1E40(a1 + 21);
    v9 = v8;
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x29C29BFB0](v9, 0x1012C40EC159624);
  }

  if (a1[22])
  {
    v10 = sub_2991E1E40(a1 + 22);
    v11 = v10;
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    MEMORY[0x29C29BFB0](v11, 0x1012C40EC159624);
  }

  if (a1[23])
  {
    v12 = sub_2991E1E40(a1 + 23);
    v13 = v12;
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x29C29BFB0](v13, 0x1012C40EC159624);
  }

  if (a1[24])
  {
    v14 = sub_2991E1E40(a1 + 24);
    v15 = v14;
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    MEMORY[0x29C29BFB0](v15, 0x1012C40EC159624);
  }

  if (a1[25])
  {
    v16 = sub_2991E1E40(a1 + 25);
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    MEMORY[0x29C29BFB0](v17, 0x1012C40EC159624);
  }

  result = a1 + 26;
  if (a1[26])
  {
    v19 = sub_2991E1E40(result);
    v20 = v19;
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    result = MEMORY[0x29C29BFB0](v20, 0x1012C40EC159624);
  }

  v22 = a1[27];
  v21 = a1 + 27;
  if (v22 != &qword_2A1461CE0)
  {
    v23 = sub_2991E1E40(v21);
    v24 = v23;
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    return MEMORY[0x29C29BFB0](v24, 0x1012C40EC159624);
  }

  return result;
}

void sub_2991E2F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E2F6C(uint64_t *a1)
{
  sub_2991E2C94(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991E2FA4(uint64_t a1)
{
  sub_2991F37E4((a1 + 16));
  sub_2991E9A3C(a1 + 56);
  sub_2991E9A3C(a1 + 80);
  sub_2991E9A3C(a1 + 104);
  result = sub_2991E9A3C(a1 + 128);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    v4 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v6 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v5 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  v7 = *(a1 + 8);
  if (v7)
  {
    v15 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_2991EE794((a1 + 176), &off_2A145E1E8);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_27:
  v8 = *(a1 + 8);
  if (v8)
  {
    v16 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_2991EE794((a1 + 184), &off_2A145E168);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_30:
  v9 = *(a1 + 8);
  if (v9)
  {
    v17 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_2991EE794((a1 + 192), &off_2A145E188);
  if ((v3 & 0x40) != 0)
  {
LABEL_33:
    v10 = *(a1 + 8);
    if (v10)
    {
      v18 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_2991EE794((a1 + 200), &off_2A145E1A8);
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_36;
    }

LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_36:
  v11 = *(a1 + 8);
  if (v11)
  {
    v19 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_2991EE794((a1 + 208), &off_2A145E1C8);
  if ((v3 & 0x100) != 0)
  {
LABEL_39:
    v12 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
    }
  }

LABEL_42:
  if ((v3 & 0xFE00) != 0)
  {
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 239) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(a1 + 247) = 0;
    *(a1 + 271) = 0;
    *(a1 + 255) = 0;
    *(a1 + 263) = 0;
    *(a1 + 272) = 1;
  }

  if (HIBYTE(v3))
  {
    *(a1 + 276) = 0x3F7FDF3B00001F40;
    *(a1 + 284) = 0x3F400000000F4240;
    *(a1 + 292) = xmmword_2993FED80;
  }

  if (*(a1 + 44))
  {
    *(a1 + 312) = 257;
    *(a1 + 308) = 16843009;
    *(a1 + 316) = 0x200000001;
  }

  *(a1 + 324) = -1;
  *(a1 + 40) = 0;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 31) < 0)
    {
      **(v14 + 8) = 0;
      *(v14 + 16) = 0;
    }

    else
    {
      *(v14 + 8) = 0;
      *(v14 + 31) = 0;
    }
  }

  return result;
}

char *sub_2991E326C(uint64_t a1, char *a2, uint64_t *a3)
{
  v6 = *(a1 + 64);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = sub_2991E9B00(a1 + 56, i);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = *(v8 + 8), v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = sub_2991EF230(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        memcpy(a2 + 2, v10, v9);
        a2 += v9 + 2;
      }
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    a2 = sub_2991E0240(a3, 2, (*(a1 + 152) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v11 & 0x800000) == 0)
    {
LABEL_15:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }
  }

  else if ((v11 & 0x800000) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v13 = *(a1 + 272);
  *a2 = 24;
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v18 = v15 >> 7;
        ++a2;
        v19 = v15 >> 14;
        v15 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    a2[1] = v13;
    a2 += 2;
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v12 = *(a1 + 276);
  *a2 = 32;
  if (v12 > 0x7F)
  {
    a2[1] = v12 | 0x80;
    v14 = v12 >> 7;
    if (v12 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v14 | 0x80;
        v16 = v14 >> 7;
        ++a2;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
      *(a2 - 1) = v16;
    }

    else
    {
      a2[2] = v14;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v12;
    a2 += 2;
  }

LABEL_37:
  v20 = *(a1 + 88);
  if (v20 >= 1)
  {
    for (j = 0; j != v20; ++j)
    {
      v22 = sub_2991E9B00(a1 + 80, j);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = *(v22 + 8), v23 > 127) || *a3 - a2 + 14 < v23)
      {
        a2 = sub_2991EF230(a3, 5, v22, a2);
      }

      else
      {
        *a2 = 42;
        a2[1] = v23;
        if (*(v22 + 23) >= 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = *v22;
        }

        memcpy(a2 + 2, v24, v23);
        a2 += v23 + 2;
      }
    }
  }

  if ((v11 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v26 = *(a1 + 224);
    *a2 = 48;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v28 | 0x80;
          v31 = v28 >> 7;
          ++a2;
          v32 = v28 >> 14;
          v28 >>= 7;
        }

        while (v32);
        *(a2 - 1) = v31;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        a2[2] = v28;
        a2 += 3;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      a2[1] = v26;
      a2 += 2;
      if ((v11 & 2) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_51:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_81;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_51;
  }

LABEL_80:
  a2 = sub_2991E0240(a3, 7, (*(a1 + 160) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_52:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_84;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v33 = *(a1 + 280);
  *a2 = 85;
  *(a2 + 1) = v33;
  a2 += 5;
  if ((v11 & 0x800) == 0)
  {
LABEL_53:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_54;
    }

LABEL_95:
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v38 = *(a1 + 228);
    *a2 = 96;
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++a2;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(a2 - 1) = v40;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }

      else
      {
        a2[2] = v39;
        a2 += 3;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      a2[1] = v38;
      a2 += 2;
      if ((v11 & 0x1000) != 0)
      {
        goto LABEL_106;
      }
    }

LABEL_55:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_117:
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v46 = *(a1 + 284);
    *a2 = 112;
    if (v46 > 0x7F)
    {
      a2[1] = v46 | 0x80;
      v47 = v46 >> 7;
      if (v46 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v47 | 0x80;
          v48 = v47 >> 7;
          ++a2;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
        *(a2 - 1) = v48;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }

      else
      {
        a2[2] = v47;
        a2 += 3;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      a2[1] = v46;
      a2 += 2;
      if ((v11 & 0x8000000) != 0)
      {
        goto LABEL_128;
      }
    }

LABEL_57:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_131:
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v51 = *(a1 + 292);
    *a2 = 384;
    if (v51 > 0x7F)
    {
      a2[2] = v51 | 0x80;
      v52 = v51 >> 7;
      if (v51 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++a2;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(a2 - 1) = v53;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }

      else
      {
        a2[3] = v52;
        a2 += 4;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }
    }

    else
    {
      a2[2] = v51;
      a2 += 3;
      if ((v11 & 0x20000000) != 0)
      {
        goto LABEL_142;
      }
    }

LABEL_59:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_60;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v34 = *(a1 + 232);
  *a2 = 88;
  if (v34 > 0x7F)
  {
    a2[1] = v34 | 0x80;
    v35 = v34 >> 7;
    if (v34 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++a2;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(a2 - 1) = v36;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      a2[2] = v35;
      a2 += 3;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }
  }

  else
  {
    a2[1] = v34;
    a2 += 2;
    if ((v11 & 0x400) != 0)
    {
      goto LABEL_95;
    }
  }

LABEL_54:
  if ((v11 & 0x1000) == 0)
  {
    goto LABEL_55;
  }

LABEL_106:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v42 = *(a1 + 240);
  *a2 = 104;
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v43 = v42 >> 7;
    if (v42 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++a2;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(a2 - 1) = v44;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      a2[2] = v43;
      a2 += 3;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }
  }

  else
  {
    a2[1] = v42;
    a2 += 2;
    if ((v11 & 0x4000000) != 0)
    {
      goto LABEL_117;
    }
  }

LABEL_56:
  if ((v11 & 0x8000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_128:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v50 = *(a1 + 288);
  *a2 = 125;
  *(a2 + 1) = v50;
  a2 += 5;
  if ((v11 & 0x10000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_58:
  if ((v11 & 0x20000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_142:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v55 = *(a1 + 296);
  *a2 = 392;
  if (v55 > 0x7F)
  {
    a2[2] = v55 | 0x80;
    v56 = v55 >> 7;
    if (v55 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++a2;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(a2 - 1) = v57;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      a2[3] = v56;
      a2 += 4;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }
  }

  else
  {
    a2[2] = v55;
    a2 += 3;
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }
  }

LABEL_60:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v25 = *(a1 + 300);
  *a2 = 400;
  if (v25 > 0x7F)
  {
    a2[2] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v27 | 0x80;
        v29 = v27 >> 7;
        ++a2;
        v30 = v27 >> 14;
        v27 >>= 7;
      }

      while (v30);
      *(a2 - 1) = v29;
    }

    else
    {
      a2[3] = v27;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v25;
    a2 += 3;
  }

LABEL_153:
  if (*(a1 + 44))
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v59 = *(a1 + 308);
    *a2 = 408;
    a2[2] = v59;
    a2 += 3;
  }

  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v60 = *(a1 + 304);
    *a2 = 416;
    if (v60 > 0x7F)
    {
      a2[2] = v60 | 0x80;
      v61 = v60 >> 7;
      if (v60 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v61 | 0x80;
          v62 = v61 >> 7;
          ++a2;
          v63 = v61 >> 14;
          v61 >>= 7;
        }

        while (v63);
        *(a2 - 1) = v62;
      }

      else
      {
        a2[3] = v61;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v60;
      a2 += 3;
    }
  }

  v64 = *(a1 + 44);
  if ((v64 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v65 = *(a1 + 309);
    *a2 = 424;
    a2[2] = v65;
    a2 += 3;
    if ((v64 & 8) == 0)
    {
LABEL_169:
      if ((v64 & 4) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_177;
    }
  }

  else if ((v64 & 8) == 0)
  {
    goto LABEL_169;
  }

  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v66 = *(a1 + 311);
  *a2 = 432;
  a2[2] = v66;
  a2 += 3;
  if ((v64 & 4) != 0)
  {
LABEL_177:
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v67 = *(a1 + 310);
    *a2 = 440;
    a2[2] = v67;
    a2 += 3;
  }

LABEL_180:
  v68 = *(a1 + 40);
  if ((v68 & 0x4000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v69 = *(a1 + 245);
    *a2 = 448;
    a2[2] = v69;
    a2 += 3;
    if ((v68 & 0x10000) == 0)
    {
LABEL_182:
      if ((v68 & 0x8000) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_190;
    }
  }

  else if ((v68 & 0x10000) == 0)
  {
    goto LABEL_182;
  }

  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v70 = *(a1 + 247);
  *a2 = 456;
  a2[2] = v70;
  a2 += 3;
  if ((v68 & 0x8000) != 0)
  {
LABEL_190:
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v71 = *(a1 + 246);
    *a2 = 464;
    a2[2] = v71;
    a2 += 3;
  }

LABEL_193:
  v72 = *(a1 + 112);
  if (v72 >= 1)
  {
    for (k = 0; k != v72; ++k)
    {
      v74 = sub_2991E9B00(a1 + 104, k);
      v75 = *(v74 + 23);
      if (v75 < 0 && (v75 = *(v74 + 8), v75 > 127) || *a3 - a2 + 13 < v75)
      {
        a2 = sub_2991EF230(a3, 30, v74, a2);
      }

      else
      {
        *a2 = 498;
        a2[2] = v75;
        if (*(v74 + 23) >= 0)
        {
          v76 = v74;
        }

        else
        {
          v76 = *v74;
        }

        memcpy(a2 + 3, v76, v75);
        a2 += v75 + 3;
      }
    }
  }

  v77 = *(a1 + 136);
  if (v77 >= 1)
  {
    for (m = 0; m != v77; ++m)
    {
      v79 = sub_2991E9B00(a1 + 128, m);
      v80 = *(v79 + 23);
      if (v80 < 0 && (v80 = *(v79 + 8), v80 > 127) || *a3 - a2 + 13 < v80)
      {
        a2 = sub_2991EF230(a3, 31, v79, a2);
      }

      else
      {
        *a2 = 506;
        a2[2] = v80;
        if (*(v79 + 23) >= 0)
        {
          v81 = v79;
        }

        else
        {
          v81 = *v79;
        }

        memcpy(a2 + 3, v81, v80);
        a2 += v80 + 3;
      }
    }
  }

  v82 = *(a1 + 44);
  if ((v82 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v83 = *(a1 + 312);
    *a2 = 640;
    a2[2] = v83;
    a2 += 3;
  }

  if ((v82 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v84 = *(a1 + 313);
    *a2 = 648;
    a2[2] = v84;
    a2 += 3;
  }

  v85 = *(a1 + 40);
  if ((v85 & 0x40000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v86 = *(a1 + 249);
    *a2 = 656;
    a2[2] = v86;
    a2 += 3;
    if ((v85 & 0x20000) == 0)
    {
LABEL_227:
      if ((v85 & 4) == 0)
      {
        goto LABEL_228;
      }

      goto LABEL_236;
    }
  }

  else if ((v85 & 0x20000) == 0)
  {
    goto LABEL_227;
  }

  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v87 = *(a1 + 248);
  *a2 = 664;
  a2[2] = v87;
  a2 += 3;
  if ((v85 & 4) == 0)
  {
LABEL_228:
    if ((v85 & 0x100000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_237;
  }

LABEL_236:
  a2 = sub_2991E0240(a3, 36, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v85 & 0x100000) == 0)
  {
    goto LABEL_246;
  }

LABEL_237:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v88 = *(a1 + 252);
  *a2 = 704;
  if (v88 > 0x7F)
  {
    a2[2] = v88 | 0x80;
    v89 = v88 >> 7;
    if (v88 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++a2;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(a2 - 1) = v90;
    }

    else
    {
      a2[3] = v89;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v88;
    a2 += 3;
  }

LABEL_246:
  v92 = *(a1 + 44);
  if ((v92 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v94 = *(a1 + 316);
    *a2 = 712;
    if (v94 > 0x7F)
    {
      a2[2] = v94 | 0x80;
      v96 = v94 >> 7;
      if (v94 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v96 | 0x80;
          v99 = v96 >> 7;
          ++a2;
          v100 = v96 >> 14;
          v96 >>= 7;
        }

        while (v100);
        *(a2 - 1) = v99;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }

      else
      {
        a2[3] = v96;
        a2 += 4;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }
    }

    else
    {
      a2[2] = v94;
      a2 += 3;
      if ((v92 & 0x80) != 0)
      {
        goto LABEL_269;
      }
    }

LABEL_248:
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }

    goto LABEL_249;
  }

  if ((v92 & 0x80) == 0)
  {
    goto LABEL_248;
  }

LABEL_269:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v101 = *(a1 + 320);
  *a2 = 720;
  if (v101 > 0x7F)
  {
    a2[2] = v101 | 0x80;
    v102 = v101 >> 7;
    if (v101 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v102 | 0x80;
        v103 = v102 >> 7;
        ++a2;
        v104 = v102 >> 14;
        v102 >>= 7;
      }

      while (v104);
      *(a2 - 1) = v103;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }

    else
    {
      a2[3] = v102;
      a2 += 4;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }
  }

  else
  {
    a2[2] = v101;
    a2 += 3;
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }
  }

LABEL_249:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v93 = *(a1 + 324);
  *a2 = 728;
  if (v93 > 0x7F)
  {
    a2[2] = v93 | 0x80;
    v95 = v93 >> 7;
    if (v93 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v95 | 0x80;
        v97 = v95 >> 7;
        ++a2;
        v98 = v95 >> 14;
        v95 >>= 7;
      }

      while (v98);
      *(a2 - 1) = v97;
    }

    else
    {
      a2[3] = v95;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v93;
    a2 += 3;
  }

LABEL_280:
  v105 = *(a1 + 40);
  if ((v105 & 8) != 0)
  {
    a2 = sub_2991E0240(a3, 44, (*(a1 + 176) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v105 & 0x10) == 0)
    {
LABEL_282:
      if ((v105 & 0x20) == 0)
      {
        goto LABEL_283;
      }

      goto LABEL_295;
    }
  }

  else if ((v105 & 0x10) == 0)
  {
    goto LABEL_282;
  }

  a2 = sub_2991E0240(a3, 45, (*(a1 + 184) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x20) == 0)
  {
LABEL_283:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_296;
  }

LABEL_295:
  a2 = sub_2991E0240(a3, 46, (*(a1 + 192) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x40) == 0)
  {
LABEL_284:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_297;
  }

LABEL_296:
  a2 = sub_2991E0240(a3, 47, (*(a1 + 200) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80) == 0)
  {
LABEL_285:
    if ((v105 & 0x80000) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_298;
  }

LABEL_297:
  a2 = sub_2991E0240(a3, 48, (*(a1 + 208) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80000) == 0)
  {
LABEL_286:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_301;
  }

LABEL_298:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v110 = *(a1 + 250);
  *a2 = 904;
  a2[2] = v110;
  a2 += 3;
  if ((v105 & 0x2000) == 0)
  {
LABEL_287:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_304;
  }

LABEL_301:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v111 = *(a1 + 244);
  *a2 = 912;
  a2[2] = v111;
  a2 += 3;
  if ((v105 & 0x200000) == 0)
  {
LABEL_288:
    if ((v105 & 0x400000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_307;
  }

LABEL_304:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v112 = *(a1 + 256);
  *a2 = 925;
  *(a2 + 2) = v112;
  a2 += 6;
  if ((v105 & 0x400000) == 0)
  {
LABEL_289:
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_290;
  }

LABEL_307:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v113 = *(a1 + 264);
  *a2 = 928;
  if (v113 <= 0x7F)
  {
    a2[2] = v113;
    a2 += 3;
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

LABEL_290:
    a2 = sub_2991E0240(a3, 53, (*(a1 + 216) & 0xFFFFFFFFFFFFFFFELL), a2);
    goto LABEL_291;
  }

  a2[2] = v113 | 0x80;
  v114 = v113 >> 7;
  if (v113 >> 14)
  {
    a2 += 4;
    do
    {
      *(a2 - 1) = v114 | 0x80;
      v115 = v114 >> 7;
      ++a2;
      v116 = v114 >> 14;
      v114 >>= 7;
    }

    while (v116);
    *(a2 - 1) = v115;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

  else
  {
    a2[3] = v114;
    a2 += 4;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

LABEL_291:
  v106 = sub_2991F5ACC(a1 + 16, 200, 0x20000000, a2, a3);
  v107 = v106;
  v108 = *(a1 + 8);
  if ((v108 & 1) == 0)
  {
    return v107;
  }

  v117 = v108 & 0xFFFFFFFFFFFFFFFELL;
  v118 = *(v117 + 31);
  if (v118 < 0)
  {
    v119 = *(v117 + 8);
    v118 = *(v117 + 16);
  }

  else
  {
    v119 = (v117 + 8);
  }

  if (*a3 - v106 >= v118)
  {
    v120 = v118;
    memcpy(v106, v119, v118);
    v107 += v120;
    return v107;
  }

  return sub_2991EEDD0(a3, v119, v118, v106);
}

uint64_t sub_2991E4400(uint64_t a1)
{
  v2 = sub_2991F86EC(a1 + 16);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = sub_2991E9B00(a1 + 56, v5);
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v6 + 8);
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      ++v5;
    }

    while (v3 != v5);
  }

  v8 = *(a1 + 88);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_2991E9B00(a1 + 80, v10);
      v12 = *(v11 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v10;
    }

    while (v8 != v10);
  }

  v13 = *(a1 + 112);
  v14 = v9 + 2 * v13;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = sub_2991E9B00(a1 + 104, v15);
      v17 = *(v16 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v16 + 8);
      }

      v14 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  v18 = *(a1 + 136);
  v19 = v14 + 2 * v18;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = sub_2991E9B00(a1 + 128, v20);
      v22 = *(v21 + 23);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 8);
      }

      v19 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      ++v20;
    }

    while (v18 != v20);
  }

  v23 = *(a1 + 40);
  if (!v23)
  {
    goto LABEL_33;
  }

  if (v23)
  {
    v58 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    v59 = *(v58 + 23);
    v60 = *(v58 + 8);
    if ((v59 & 0x80u) == 0)
    {
      v60 = v59;
    }

    v19 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_24:
      if ((v23 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_131;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_24;
  }

  v61 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  v62 = *(v61 + 23);
  v63 = *(v61 + 8);
  if ((v62 & 0x80u) == 0)
  {
    v63 = v62;
  }

  v19 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
LABEL_25:
    if ((v23 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_134;
  }

LABEL_131:
  v64 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v19 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 8) == 0)
  {
LABEL_26:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_137;
  }

LABEL_134:
  v67 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v19 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x10) == 0)
  {
LABEL_27:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_140:
    v73 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
    v74 = *(v73 + 23);
    v75 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v75 = v74;
    }

    v19 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x40) == 0)
    {
LABEL_29:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_143;
  }

LABEL_137:
  v70 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v19 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_28:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_143:
  v76 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
  v77 = *(v76 + 23);
  v78 = *(v76 + 8);
  if ((v77 & 0x80u) == 0)
  {
    v78 = v77;
  }

  v19 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x80) != 0)
  {
LABEL_30:
    v24 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_50;
  }

  if ((v23 & 0x100) != 0)
  {
    v79 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    v80 = *(v79 + 23);
    v81 = *(v79 + 8);
    if ((v80 & 0x80u) == 0)
    {
      v81 = v80;
    }

    v19 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x200) == 0)
    {
LABEL_36:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_154;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_36;
  }

  v82 = *(a1 + 224);
  v83 = ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v82 >= 0)
  {
    v84 = v83;
  }

  else
  {
    v84 = 11;
  }

  v19 += v84;
  if ((v23 & 0x400) == 0)
  {
LABEL_37:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_38;
    }

LABEL_158:
    v19 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v23 & 0x1000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

LABEL_154:
  v85 = *(a1 + 228);
  v86 = ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v85 >= 0)
  {
    v87 = v86;
  }

  else
  {
    v87 = 11;
  }

  v19 += v87;
  if ((v23 & 0x800) != 0)
  {
    goto LABEL_158;
  }

LABEL_38:
  if ((v23 & 0x1000) != 0)
  {
LABEL_39:
    v27 = *(a1 + 240);
    v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v27 >= 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 11;
    }

    v19 += v29;
  }

LABEL_43:
  v30 = v19 + 3;
  if ((v23 & 0x2000) == 0)
  {
    v30 = v19;
  }

  if ((v23 & 0x4000) != 0)
  {
    v30 += 3;
  }

  if ((v23 & 0x8000) != 0)
  {
    v19 = v30 + 3;
  }

  else
  {
    v19 = v30;
  }

LABEL_50:
  if ((v23 & 0xFF0000) != 0)
  {
    v31 = v19 + 3;
    if ((v23 & 0x10000) == 0)
    {
      v31 = v19;
    }

    if ((v23 & 0x20000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x40000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x80000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x100000) != 0)
    {
      v32 = *(a1 + 252);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 12;
      }

      v31 += v34;
    }

    if ((v23 & 0x200000) != 0)
    {
      v19 = v31 + 6;
    }

    else
    {
      v19 = v31;
    }

    if ((v23 & 0x400000) != 0)
    {
      v19 += ((9 * (__clz(*(a1 + 264) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v23 & 0x800000) != 0)
    {
      v35 = *(a1 + 272);
      v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v35 >= 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 11;
      }

      v19 += v37;
    }
  }

  if (!HIBYTE(v23))
  {
    goto LABEL_94;
  }

  if ((v23 & 0x1000000) != 0)
  {
    v38 = *(a1 + 276);
    v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v38 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 11;
    }

    v19 += v40;
  }

  v41 = v19 + 5;
  if ((v23 & 0x2000000) == 0)
  {
    v41 = v19;
  }

  if ((v23 & 0x4000000) != 0)
  {
    v42 = *(a1 + 284);
    v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v42 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 11;
    }

    v41 += v44;
  }

  if ((v23 & 0x8000000) != 0)
  {
    v19 = v41 + 5;
  }

  else
  {
    v19 = v41;
  }

  if ((v23 & 0x10000000) == 0)
  {
    if ((v23 & 0x20000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_164:
    v91 = *(a1 + 296);
    v92 = ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v91 >= 0)
    {
      v93 = v92;
    }

    else
    {
      v93 = 12;
    }

    v19 += v93;
    if ((v23 & 0x40000000) == 0)
    {
LABEL_93:
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_172;
    }

    goto LABEL_168;
  }

  v88 = *(a1 + 292);
  v89 = ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v88 >= 0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 12;
  }

  v19 += v90;
  if ((v23 & 0x20000000) != 0)
  {
    goto LABEL_164;
  }

LABEL_92:
  if ((v23 & 0x40000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_168:
  v94 = *(a1 + 300);
  v95 = ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v94 >= 0)
  {
    v96 = v95;
  }

  else
  {
    v96 = 12;
  }

  v19 += v96;
  if ((v23 & 0x80000000) != 0)
  {
LABEL_172:
    v97 = *(a1 + 304);
    v98 = ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v97 >= 0)
    {
      v99 = v98;
    }

    else
    {
      v99 = 12;
    }

    v19 += v99;
  }

LABEL_94:
  v45 = *(a1 + 44);
  if (v45)
  {
    v46 = v19 + 3;
    if ((v45 & 1) == 0)
    {
      v46 = v19;
    }

    if ((v45 & 2) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 4) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 8) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x10) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x20) != 0)
    {
      v19 = v46 + 3;
    }

    else
    {
      v19 = v46;
    }

    if ((v45 & 0x40) != 0)
    {
      v47 = *(a1 + 316);
      v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v47 >= 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 12;
      }

      v19 += v49;
    }

    if ((v45 & 0x80) != 0)
    {
      v50 = *(a1 + 320);
      v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v50 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 12;
      }

      v19 += v52;
    }
  }

  if ((v45 & 0x100) != 0)
  {
    v53 = *(a1 + 324);
    v54 = ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v53 >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 12;
    }

    v19 += v55;
  }

  v56 = *(a1 + 8);
  if (v56)
  {
    v100 = v56 & 0xFFFFFFFFFFFFFFFELL;
    v101 = *((v56 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v101 < 0)
    {
      v101 = *(v100 + 16);
    }

    v19 += v101;
  }

  *(a1 + 48) = v19;
  return v19;
}

unint64_t sub_2991E4C90(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_2A1F63C88, &unk_2A1F637E0, 0))
  {
    sub_2991E2858();
  }

  return sub_2991E4D18(a1, lpsrc);
}

unint64_t sub_2991E4D18(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v36, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1671);
    v4 = sub_2991EF75C(v36, "CHECK failed: (&from) != (this): ");
    sub_2991EF898(&v35, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v36);
  }

  sub_2993F97F4(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_2991E2054((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_2991E9D40(a1 + 56, a2 + 56);
  sub_2991E9D40(a1 + 80, a2 + 80);
  sub_2991E9D40(a1 + 104, a2 + 104);
  result = sub_2991E9D40(a1 + 128, a2 + 128);
  v14 = *(a2 + 40);
  if (!v14)
  {
    goto LABEL_47;
  }

  if (v14)
  {
    v15 = *(a2 + 152);
    *(a1 + 40) |= 1u;
    v16 = *(a1 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_2991EE4D0((a1 + 152), (v15 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v14 & 2) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 160);
  *(a1 + 40) |= 2u;
  v18 = *(a1 + 8);
  if (v18)
  {
    v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_2991EE4D0((a1 + 160), (v17 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v14 & 4) == 0)
  {
LABEL_17:
    if ((v14 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_29:
  v19 = *(a2 + 168);
  *(a1 + 40) |= 4u;
  v20 = *(a1 + 8);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_2991EE4D0((a1 + 168), (v19 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v14 & 8) == 0)
  {
LABEL_18:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  v21 = *(a2 + 176);
  *(a1 + 40) |= 8u;
  v22 = *(a1 + 8);
  if (v22)
  {
    v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_2991EE4F8((a1 + 176), (v21 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v14 & 0x10) == 0)
  {
LABEL_19:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v25 = *(a2 + 192);
    *(a1 + 40) |= 0x20u;
    v26 = *(a1 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_2991EE4F8((a1 + 192), (v25 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v14 & 0x40) == 0)
    {
LABEL_21:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_35:
  v23 = *(a2 + 184);
  *(a1 + 40) |= 0x10u;
  v24 = *(a1 + 8);
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_2991EE4F8((a1 + 184), (v23 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_41:
  v27 = *(a2 + 200);
  *(a1 + 40) |= 0x40u;
  v28 = *(a1 + 8);
  if (v28)
  {
    v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_2991EE4F8((a1 + 200), (v27 & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v14 & 0x80) != 0)
  {
LABEL_44:
    v29 = *(a2 + 208);
    *(a1 + 40) |= 0x80u;
    v30 = *(a1 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_2991EE4F8((a1 + 208), (v29 & 0xFFFFFFFFFFFFFFFELL), v30);
  }

LABEL_47:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v14 & 0x100) != 0)
  {
    v33 = *(a2 + 216);
    *(a1 + 40) |= 0x100u;
    v34 = *(a1 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_2991EE4D0((a1 + 216), (v33 & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v14 & 0x200) == 0)
    {
LABEL_50:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_97;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  *(a1 + 224) = *(a2 + 224);
  if ((v14 & 0x400) == 0)
  {
LABEL_51:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a1 + 228) = *(a2 + 228);
  if ((v14 & 0x800) == 0)
  {
LABEL_52:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(a1 + 232) = *(a2 + 232);
  if ((v14 & 0x1000) == 0)
  {
LABEL_53:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(a1 + 240) = *(a2 + 240);
  if ((v14 & 0x2000) == 0)
  {
LABEL_54:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

LABEL_101:
    *(a1 + 245) = *(a2 + 245);
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_100:
  *(a1 + 244) = *(a2 + 244);
  if ((v14 & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_55:
  if ((v14 & 0x8000) != 0)
  {
LABEL_56:
    *(a1 + 246) = *(a2 + 246);
  }

LABEL_57:
  *(a1 + 40) |= v14;
LABEL_58:
  if ((v14 & 0xFF0000) == 0)
  {
    goto LABEL_69;
  }

  if ((v14 & 0x10000) != 0)
  {
    *(a1 + 247) = *(a2 + 247);
    if ((v14 & 0x20000) == 0)
    {
LABEL_61:
      if ((v14 & 0x40000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_105;
    }
  }

  else if ((v14 & 0x20000) == 0)
  {
    goto LABEL_61;
  }

  *(a1 + 248) = *(a2 + 248);
  if ((v14 & 0x40000) == 0)
  {
LABEL_62:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(a1 + 249) = *(a2 + 249);
  if ((v14 & 0x80000) == 0)
  {
LABEL_63:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(a1 + 250) = *(a2 + 250);
  if ((v14 & 0x100000) == 0)
  {
LABEL_64:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(a1 + 252) = *(a2 + 252);
  if ((v14 & 0x200000) == 0)
  {
LABEL_65:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

LABEL_109:
    *(a1 + 264) = *(a2 + 264);
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_108:
  *(a1 + 256) = *(a2 + 256);
  if ((v14 & 0x400000) != 0)
  {
    goto LABEL_109;
  }

LABEL_66:
  if ((v14 & 0x800000) != 0)
  {
LABEL_67:
    *(a1 + 272) = *(a2 + 272);
  }

LABEL_68:
  *(a1 + 40) |= v14;
LABEL_69:
  if (!HIBYTE(v14))
  {
    goto LABEL_79;
  }

  if ((v14 & 0x1000000) != 0)
  {
    *(a1 + 276) = *(a2 + 276);
    if ((v14 & 0x2000000) == 0)
    {
LABEL_72:
      if ((v14 & 0x4000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_121;
    }
  }

  else if ((v14 & 0x2000000) == 0)
  {
    goto LABEL_72;
  }

  *(a1 + 280) = *(a2 + 280);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_73:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(a1 + 284) = *(a2 + 284);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_74:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(a1 + 288) = *(a2 + 288);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_75:
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(a1 + 292) = *(a2 + 292);
  if ((v14 & 0x20000000) == 0)
  {
LABEL_76:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_125:
    *(a1 + 300) = *(a2 + 300);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_126:
    *(a1 + 304) = *(a2 + 304);
    goto LABEL_78;
  }

LABEL_124:
  *(a1 + 296) = *(a2 + 296);
  if ((v14 & 0x40000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_77:
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_78:
  *(a1 + 40) |= v14;
LABEL_79:
  v31 = *(a2 + 44);
  if (!v31)
  {
    goto LABEL_90;
  }

  if (v31)
  {
    *(a1 + 308) = *(a2 + 308);
    if ((v31 & 2) == 0)
    {
LABEL_82:
      if ((v31 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_113;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 309) = *(a2 + 309);
  if ((v31 & 4) == 0)
  {
LABEL_83:
    if ((v31 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(a1 + 310) = *(a2 + 310);
  if ((v31 & 8) == 0)
  {
LABEL_84:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(a1 + 311) = *(a2 + 311);
  if ((v31 & 0x10) == 0)
  {
LABEL_85:
    if ((v31 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(a1 + 312) = *(a2 + 312);
  if ((v31 & 0x20) == 0)
  {
LABEL_86:
    if ((v31 & 0x40) == 0)
    {
      goto LABEL_87;
    }

LABEL_117:
    *(a1 + 316) = *(a2 + 316);
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_116:
  *(a1 + 313) = *(a2 + 313);
  if ((v31 & 0x40) != 0)
  {
    goto LABEL_117;
  }

LABEL_87:
  if ((v31 & 0x80) != 0)
  {
LABEL_88:
    *(a1 + 320) = *(a2 + 320);
  }

LABEL_89:
  *(a1 + 44) |= v31;
LABEL_90:
  if ((v31 & 0x100) != 0)
  {
    v32 = *(a2 + 324);
    *(a1 + 44) |= 0x100u;
    *(a1 + 324) = v32;
  }

  return result;
}

void sub_2991E5274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E52A4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F633C0;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_2A1F63460;
  sub_2991EFD64(a1 + 24, a2);
  *(a1 + 48) = 0;
  if (atomic_load_explicit(dword_2A1A99E78, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99E78);
  }

  *(a1 + 56) = &qword_2A1461CE0;
  *(a1 + 64) = &qword_2A1461CE0;
  *(a1 + 72) = &qword_2A1461CE0;
  *(a1 + 80) = 16843008;
  return a1;
}

uint64_t sub_2991E5360(uint64_t a1)
{
  sub_2991E539C(a1);
  sub_2991DFAF8((a1 + 8));
  sub_2991EFE30(a1 + 24);
  return a1;
}

uint64_t *sub_2991E539C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_2991EF744(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1972);
    v3 = sub_2991EF75C(v14, "CHECK failed: GetArena() == nullptr: ");
    sub_2991EF898(&v13, &v3->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v14);
  }

LABEL_4:
  if (*(a1 + 56) != &qword_2A1461CE0)
  {
    v4 = sub_2991E1E40((a1 + 56));
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x29C29BFB0](v5, 0x1012C40EC159624);
  }

  result = (a1 + 64);
  if (*(a1 + 64) != &qword_2A1461CE0)
  {
    v7 = sub_2991E1E40(result);
    v8 = v7;
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x29C29BFB0](v8, 0x1012C40EC159624);
  }

  v10 = *(a1 + 72);
  v9 = (a1 + 72);
  if (v10 != &qword_2A1461CE0)
  {
    v11 = sub_2991E1E40(v9);
    v12 = v11;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    return MEMORY[0x29C29BFB0](v12, 0x1012C40EC159624);
  }

  return result;
}

void sub_2991E54D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E54FC(uint64_t a1)
{
  sub_2991E5360(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2991E5534(uint64_t a1)
{
  sub_2991E5360(a1 - 16);

  JUMPOUT(0x29C29BFB0);
}

unsigned __int8 *sub_2991E5570(uint64_t a1)
{
  result = sub_2991F37E4((a1 + 24));
  v3 = *(a1 + 48);
  if ((v3 & 7) != 0)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v4 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

LABEL_17:
  if ((v3 & 0x78) != 0)
  {
    *(a1 + 80) = 16843008;
  }

  *(a1 + 48) = 0;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 31) < 0)
    {
      **(v8 + 8) = 0;
      *(v8 + 16) = 0;
    }

    else
    {
      *(v8 + 8) = 0;
      *(v8 + 31) = 0;
    }
  }

  return result;
}

char *sub_2991E5680(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if ((sub_2991E1F14(a3, &v41, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v41 + 1;
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v21 = sub_2991FC5E0(v41, v9 - 128);
      v41 = v21;
      if (!v21)
      {
        goto LABEL_76;
      }

      v7 = v21;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_57;
          }

          *(a1 + 48) |= 1u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 56);
LABEL_53:
          v28 = sub_2991EE508(v24, v23);
          v29 = sub_2991FC624(v28, v41, a3);
          goto LABEL_54;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_57;
          }

          *(a1 + 48) |= 2u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 64);
          goto LABEL_53;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_57;
        }

        v5 |= 0x10u;
        v16 = v7 + 1;
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = v7 + 2;
LABEL_26:
          v41 = v16;
          *(a1 + 81) = v15 != 0;
          goto LABEL_55;
        }

        v39 = sub_2991FC598(v7, v15);
        v41 = v39;
        *(a1 + 81) = v40 != 0;
        if (!v39)
        {
LABEL_76:
          v41 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(a1 + 48) |= 4u;
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = (a1 + 72);
            goto LABEL_53;
          }

LABEL_57:
          if (v8)
          {
            v30 = (v8 & 7) == 4;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x648)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v32 = (v31 & 0xFFFFFFFFFFFFFFFELL) + 8;
            }

            else
            {
              v32 = sub_2991E2054((a1 + 8));
              v7 = v41;
            }

            v29 = sub_2991FCAE0(v8, v32, v7, a3);
          }

          else
          {
            v29 = sub_2991F4D18((a1 + 24), v8, v7, &unk_2A1461B60, (a1 + 8), a3);
          }

LABEL_54:
          v41 = v29;
          if (!v29)
          {
            goto LABEL_76;
          }

          goto LABEL_55;
        }

        if (v10 != 200 || v8 != 64)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v19 = v7 + 1;
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = v7 + 2;
LABEL_33:
          v41 = v19;
          *(a1 + 80) = v18 != 0;
          goto LABEL_55;
        }

        v37 = sub_2991FC598(v7, v18);
        v41 = v37;
        *(a1 + 80) = v38 != 0;
        if (!v37)
        {
          goto LABEL_76;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 0x20u;
        v26 = v7 + 1;
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = v7 + 2;
LABEL_44:
          v41 = v26;
          *(a1 + 82) = v25 != 0;
          goto LABEL_55;
        }

        v33 = sub_2991FC598(v7, v25);
        v41 = v33;
        *(a1 + 82) = v34 != 0;
        if (!v33)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
        }

        v5 |= 0x40u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_15:
          v41 = v12;
          *(a1 + 83) = v11 != 0;
          goto LABEL_55;
        }

        v35 = sub_2991FC598(v7, v11);
        v41 = v35;
        *(a1 + 83) = v36 != 0;
        if (!v35)
        {
          goto LABEL_76;
        }
      }

LABEL_55:
      if (sub_2991E1F14(a3, &v41, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v41 + 2;
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 48) |= v5;
  return v41;
}

char *sub_2991E5A78(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 48);
  if (v6)
  {
    v4 = sub_2991E0240(a3, 1, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2991E0240(a3, 2, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_2991EECB8(a3, v4);
  }

  v7 = *(a1 + 81);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_2991EECB8(a3, v4);
  }

  v8 = *(a1 + 82);
  *v4 = 32;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_2991EECB8(a3, v4);
  }

  v9 = *(a1 + 83);
  *v4 = 40;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_2991E0240(a3, 6, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_2991EECB8(a3, v4);
  }

  v10 = *(a1 + 80);
  *v4 = 3264;
  v4[2] = v10;
  v4 += 3;
LABEL_24:
  v11 = sub_2991F5ACC(a1 + 24, 201, 0x20000000, v4, a3);
  v12 = v11;
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v11) >= v16)
  {
    v18 = v16;
    memcpy(v11, v17, v16);
    v12 += v18;
    return v12;
  }

  return sub_2991EEDD0(a3, v17, v16, v11);
}