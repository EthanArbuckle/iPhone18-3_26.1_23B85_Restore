void *sub_271460B54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_271120E64(v16, &v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_271120E64(v5, &v17, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6u);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_271120E64(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_271120E64(v7, &v18, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_271120E64(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_271120E64(v11, &v22, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_271460D68(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_271120E64(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_271120E64(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_271460D68(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v9[0]) = v6;
  sub_2718388F8(a1, v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v9[0]) = *(a1 + 32);
    sub_271120E64(v4, v9, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  v10 = xmmword_279E2F5C0;
  v9[0] = &v6;
  v9[1] = a1;
  v9[2] = &v10;
  sub_2713F639C(v6, v9);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_271460E94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v7 = __src;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v6 = __src;
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    __src = 6;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v5 = __src;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 1;
  sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
  sub_2717312C0(a2);
  sub_271461048(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_271461048(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(__src[0]) = v5;
  sub_27173318C(a1 + 24, *(a1 + 32), __src, __src + 1, 1uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), &v5 + 8, &v6, 8uLL);
  v9 = xmmword_279E2F5C0;
  __src[0] = &v5;
  __src[1] = a1;
  __src[2] = &v9;
  sub_2713F6954(v5, __src);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_271461164(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2713E01B4(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  v9 = xmmword_279E2F5C0;
  v8[0] = &v5;
  v8[1] = a1;
  v8[2] = &v9;
  sub_2713F6C08(v5, v8);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_271461280(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_2714618AC(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_271463AC8(&v16, v8);
  }

  v16 = a2;
  v9 = *v4;
  v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v10)
  {
    sub_271465324(&v16, v10);
  }

  v16 = a2;
  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v12)
  {
    sub_271467540(&v16, v12);
  }

  v16 = a2;
  v13 = *v4;
  v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
  if (v14)
  {
    sub_271468DDC(&v16, v14);
  }

  sub_27146144C(&v15, a1);
}

void sub_27146144C(uint64_t *a1, void **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_2713C66D4(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_2713C68E0(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_2713C62C8(v21, a2, v3 + 16, v33[0]);
      }

      sub_27146AAF4(a2, (v3 + 200));
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v30;
      goto LABEL_65;
    }
  }
}

void sub_2714618AC(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_271461EA4(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271462FF8(v3);
      }

      sub_271462D6C(v3);
    }

    switch(a1)
    {
      case 8:
        sub_271463288(v3);
      case 11:
        sub_2714635A8(v3);
      case 12:
        sub_271463838(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271462028(v3);
    }

    if (a1 == 1)
    {
      sub_2714622AC(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271462538(v3);
      case 3:
        sub_2714627C8(v3);
      case 5:
        sub_271462AE8(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_271462028(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182D810(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182D810(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_27175862C();
}

void sub_271462270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_2714622AC(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F018(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F018(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271758B58();
}

void sub_2714624FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271462538(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F1C8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F1C8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271759088();
}

void sub_27146278C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_2714627C8(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  if (v2)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = 16;
    do
    {
      *&v15 = v4;
      v8 = sub_27182D6C4(v3);
      ++*(v3 + 112);
      *(v3 + 32) = v8;
      sub_27182D194(v3 + 40, &v15);
      sub_2717313F0(v3 + 64, (v3 + 112));
      *(v3 + 112) = 0;
      if (*(v3 + 104) == 1)
      {
        *(v3 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_271831430(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v5 - 16), v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_27182D6C4(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_271831430(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v5, v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v3 = a1[1];
      v6 = *(v3 + 48);
      v4 = *(v6 - 8);
      *(v3 + 32) = v4;
      v7 = *(v3 + 72);
      *(v3 + 112) = *(v7 - 8);
      *(v3 + 48) = v6 - 8;
      *(v3 + 72) = v7 - 8;
      v5 += 32;
      --v2;
    }

    while (v2);
  }

  sub_2717595B8();
}

void sub_271462A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271462AE8(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182EDD8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182EDD8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271758398();
}

void sub_271462D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271462D6C(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182EEF8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182EEF8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_2717588C0();
}

void sub_271462FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271462FF8(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F0F0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F0F0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271758DF0();
}

void sub_27146324C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271463288(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  if (v2)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = 16;
    do
    {
      *&v15 = v4;
      v8 = sub_27182D6C4(v3);
      ++*(v3 + 112);
      *(v3 + 32) = v8;
      sub_27182D194(v3 + 40, &v15);
      sub_2717313F0(v3 + 64, (v3 + 112));
      *(v3 + 112) = 0;
      if (*(v3 + 104) == 1)
      {
        *(v3 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_271831164(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v5 - 16), v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_27182D6C4(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_271831164(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v5, v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v3 = a1[1];
      v6 = *(v3 + 48);
      v4 = *(v6 - 8);
      *(v3 + 32) = v4;
      v7 = *(v3 + 72);
      *(v3 + 112) = *(v7 - 8);
      *(v3 + 48) = v6 - 8;
      *(v3 + 72) = v7 - 8;
      v5 += 32;
      --v2;
    }

    while (v2);
  }

  sub_271759320();
}

void sub_271463538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2714635A8(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F4D4(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F4D4(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271759850();
}

void sub_2714637FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271463838(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F5F0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F5F0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271759AE8();
}

void sub_271463A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271463AC8(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v19);
    sub_2713B2524(v31, v19);
    sub_2713E031C(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v42 = v5;
        operator delete(v7);
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

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      LODWORD(v19[0]) = 6;
      sub_27183FB7C(*(a2 + 48), v19);
      sub_2713BF6F4(v19, a2, v3 + 16, v19[0]);
      LODWORD(v19[0]) = 1;
      sub_27183FB7C(*(a2 + 48), v19);
      sub_271463EEC(v19, a2, (v3 + 200));
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v19);
  sub_2713B2524(v31, v19);
  sub_2713E031C(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v42 = v9;
      operator delete(v11);
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

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_271463EEC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *&v8 = 0;
  sub_27183FF6C(*(a2 + 48), &v8);
  *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v6 + 1) = v8;
  sub_2713BF82C(a2 + 24, &v6);
  LOBYTE(v6) = 0;
  sub_27183F824(*(a2 + 48), &v6);
  *a3 = v6;
  sub_27183FF6C(*(a2 + 48), a3 + 1);
  v8 = xmmword_279E2F5C0;
  v5 = *a3;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v8;
  sub_27146402C(v5, &v6);
}

void sub_27146402C(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271464BD4(a2);
      }

      sub_271464A04(a2);
    }

    switch(a1)
    {
      case 8:
        sub_271464DA8(a2);
      case 11:
        sub_271464F7C(a2);
      case 12:
        sub_271465150(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_27146410C(a2);
    }

    if (a1 == 1)
    {
      sub_2714642CC(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_27146449C(a2);
      case 3:
        sub_271464670(a2);
      case 5:
        sub_271464844(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_27146410C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_27146429C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714642CC(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_27146446C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146449C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_271464640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271464670(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_271464814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271464844(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2714649D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271464A04(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_271464BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271464BD4(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_271464D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271464DA8(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_271464F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271464F7C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_271465120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271465150(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2714652F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271465324(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_27146591C(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271466A70(v3);
      }

      sub_2714667E4(v3);
    }

    switch(a1)
    {
      case 8:
        sub_271466D00(v3);
      case 11:
        sub_271467020(v3);
      case 12:
        sub_2714672B0(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271465AA0(v3);
    }

    if (a1 == 1)
    {
      sub_271465D24(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271465FB0(v3);
      case 3:
        sub_271466240(v3);
      case 5:
        sub_271466560(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_271465AA0(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182D3F8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182D3F8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_27175862C();
}

void sub_271465CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271465D24(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182DFB4(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182DFB4(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271758B58();
}

void sub_271465F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271465FB0(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182E164(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182E164(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271759088();
}

void sub_271466204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271466240(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  if (v2)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = 16;
    do
    {
      *&v15 = v4;
      v8 = sub_27182D2AC(v3);
      ++*(v3 + 112);
      *(v3 + 32) = v8;
      sub_27182D194(v3 + 40, &v15);
      sub_2717313F0(v3 + 64, (v3 + 112));
      *(v3 + 112) = 0;
      if (*(v3 + 104) == 1)
      {
        *(v3 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_27182FFA0(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v5 - 16), v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_27182D2AC(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_27182FFA0(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v5, v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v3 = a1[1];
      v6 = *(v3 + 48);
      v4 = *(v6 - 8);
      *(v3 + 32) = v4;
      v7 = *(v3 + 72);
      *(v3 + 112) = *(v7 - 8);
      *(v3 + 48) = v6 - 8;
      *(v3 + 72) = v7 - 8;
      v5 += 32;
      --v2;
    }

    while (v2);
  }

  sub_2717595B8();
}

void sub_2714664F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271466560(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182DD74(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182DD74(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271758398();
}

void sub_2714667A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_2714667E4(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182DE94(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182DE94(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_2717588C0();
}

void sub_271466A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271466A70(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182E08C(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182E08C(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271758DF0();
}

void sub_271466CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271466D00(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  if (v2)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = 16;
    do
    {
      *&v15 = v4;
      v8 = sub_27182D2AC(v3);
      ++*(v3 + 112);
      *(v3 + 32) = v8;
      sub_27182D194(v3 + 40, &v15);
      sub_2717313F0(v3 + 64, (v3 + 112));
      *(v3 + 112) = 0;
      if (*(v3 + 104) == 1)
      {
        *(v3 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_27182FA80(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v5 - 16), v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_27182D2AC(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_27182FA80(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v5, v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v3 = a1[1];
      v6 = *(v3 + 48);
      v4 = *(v6 - 8);
      *(v3 + 32) = v4;
      v7 = *(v3 + 72);
      *(v3 + 112) = *(v7 - 8);
      *(v3 + 48) = v6 - 8;
      *(v3 + 72) = v7 - 8;
      v5 += 32;
      --v2;
    }

    while (v2);
  }

  sub_271759320();
}

void sub_271466FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271467020(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182E498(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182E498(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271759850();
}

void sub_271467274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_2714672B0(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182E5DC(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182E5DC(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_271759AE8();
}

void sub_271467504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271467540(uint64_t *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v22) = 6;
    sub_27183A9AC(a2, &v22);
    if (v22 >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = v22;
    }

    if (v22 <= 2)
    {
      sub_2713C30AC(&v22, a2, v3 + 16, v19);
LABEL_95:
      LODWORD(v22) = 1;
      sub_27183A9AC(a2, &v22);
      LOBYTE(v22) = 0;
      sub_271839D90(a2, &v22);
      *(v3 + 200) = v22;
      sub_27183B6AC(a2, (v3 + 208));
      v36 = xmmword_279E2F5C0;
      v21 = *(v3 + 200);
      v22 = (v3 + 200);
      v23 = a2;
      v24 = &v36;
      sub_271467B0C(v21, &v22);
    }

    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, &v22);
      if (SHIBYTE(v24) < 0)
      {
        if (v23 == 1 && *(a2 + 72) == *v22)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v24) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v24) == 1 && *(a2 + 72) == v22)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v24) < 0)
      {
LABEL_93:
        operator delete(v22);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, &v22);
    sub_2713B2524(&v36, &v22);
    sub_2713E031C(v3 + 16, &v36);
    if (v48 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v47;
        v7 = __p;
        if (v47 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v47 = v5;
        operator delete(v7);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v35 != 1)
    {
      goto LABEL_66;
    }

    v13 = v33;
    if (!v33)
    {
      goto LABEL_66;
    }

    v14 = v34;
    v15 = v33;
    if (v34 == v33)
    {
LABEL_65:
      v34 = v13;
      operator delete(v15);
LABEL_66:
      if (v32 == 1 && v31 < 0)
      {
        operator delete(v30);
      }

      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

      goto LABEL_76;
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, &v22);
  sub_2713B2524(&v36, &v22);
  sub_2713E031C(v3 + 16, &v36);
  if (v48 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v47;
      v11 = __p;
      if (v47 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v47 = v9;
      operator delete(v11);
    }
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v35 != 1)
  {
    goto LABEL_66;
  }

  v13 = v33;
  if (!v33)
  {
    goto LABEL_66;
  }

  v17 = v34;
  v15 = v33;
  if (v34 == v33)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v33;
      goto LABEL_65;
    }
  }
}

void sub_271467B0C(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27146869C(a2);
      }

      sub_2714684D0(a2);
    }

    switch(a1)
    {
      case 8:
        sub_27146886C(a2);
      case 11:
        sub_271468A3C(a2);
      case 12:
        sub_271468C0C(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271467BEC(a2);
    }

    if (a1 == 1)
    {
      sub_271467DA8(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271467F74(a2);
      case 3:
        sub_271468144(a2);
      case 5:
        sub_271468314(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_271467BEC(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_271467D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271467DA8(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271467F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271467F74(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_271468114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271468144(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2714682E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271468314(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2714684A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714684D0(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_27146866C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146869C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_27146883C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146886C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_271468A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271468A3C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_271468BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271468C0C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_271468DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271468DDC(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v19);
    sub_2713B2524(v31, v19);
    sub_2713E031C(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v42 = v5;
        operator delete(v7);
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

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      sub_2713C49D0(v19, a2, v3 + 16);
      sub_2714691CC(v19, a2, v3 + 200);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v19);
  sub_2713B2524(v31, v19);
  sub_2713E031C(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v42 = v9;
      operator delete(v11);
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

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_2714691CC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v9 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    sub_27173170C(a2);
    sub_2714692A8(a2, a3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2714692A8(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v4 = a1[3];
    v5 = *(v4 + v2);
    v6 = v2 + 1;
    a1[6] = v6;
    *a2 = v5;
    v7 = v3 >= v6;
    v8 = v3 - v6;
    if (!v7)
    {
      v8 = 0;
    }

    if (v8 > 7)
    {
      *(a2 + 8) = *(v4 + v6);
      a1[6] += 8;
      v11 = xmmword_279E2F5C0;
      v10[0] = a2;
      v10[1] = a1;
      v10[2] = &v11;
      sub_2714693B4(v5, v10);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2714693B4(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27146A1F4(a2);
      }

      sub_271469FB8(a2);
    }

    switch(a1)
    {
      case 8:
        sub_27146A434(a2);
      case 11:
        sub_27146A674(a2);
      case 12:
        sub_27146A8B4(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271469494(a2);
    }

    if (a1 == 1)
    {
      sub_2714696C8(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271469904(a2);
      case 3:
        sub_271469B44(a2);
      case 5:
        sub_271469D84(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_271469494(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_27175862C();
}

void sub_271469688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714696C8(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758B58();
}

void sub_2714698C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271469904(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759088();
}

void sub_271469B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271469B44(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717595B8();
}

void sub_271469D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271469D84(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758398();
}

void sub_271469F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271469FB8(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717588C0();
}

void sub_27146A1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27146A1F4(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758DF0();
}

void sub_27146A3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27146A434(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759320();
}

void sub_27146A634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27146A674(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759850();
}

void sub_27146A874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27146A8B4(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759AE8();
}

void sub_27146AAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27146AAF4(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  v6 = a1[1];
  LODWORD(v7[0]) = 1;
  (*(v4 + 104))(a1, v7);
  if (v6 >= 1)
  {
    sub_27146ABF8(&v6, a1, a2);
  }

  v7[0] = a2;
  sub_2713E42BC(a1, v7);
  (*(*a1 + 120))(a1, a2 + 8);
  v8 = xmmword_279E2F5C0;
  v5 = *a2;
  v7[0] = a2;
  v7[1] = a1;
  v7[2] = &v8;
  sub_27146AEC8(v5, v7);
}

void sub_27146ABF8(int *a1, _BYTE *a2, _BYTE *a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    LODWORD(v9[0]) = 1;
    (*(*a2 + 104))(a2, v9);
    if (LODWORD(v9[0]) >= 2)
    {
      v8 = v9[0];
      if ((atomic_load_explicit(&qword_280878D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878D70))
      {
        sub_27146ADC4();
      }

      sub_271847D5C(&stru_280878D58, v8, 1u);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  v9[0] = a3;
  sub_2713E42BC(a2, v9);
  (*(*a2 + 120))(a2, a3 + 8);
  v10 = xmmword_279E2F5C0;
  v7 = *a3;
  v9[0] = a3;
  v9[1] = a2;
  v9[2] = &v10;
  sub_27146AEC8(v7, v9);
}

void sub_27146AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27146AEC8(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27146BA60(a2);
      }

      sub_27146B894(a2);
    }

    switch(a1)
    {
      case 8:
        sub_27146BC30(a2);
      case 11:
        sub_27146BE00(a2);
      case 12:
        sub_27146BFD0(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_27146AFA8(a2);
    }

    if (a1 == 1)
    {
      sub_27146B168(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_27146B334(a2);
      case 3:
        sub_27146B504(a2);
      case 5:
        sub_27146B6D4(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_27146AFA8(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_27146B138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146B168(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_27146B304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146B334(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_27146B4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146B504(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_27146B6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146B6D4(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_27146B864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146B894(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_27146BA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146BA60(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_27146BC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146BC30(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_27146BDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146BE00(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_27146BFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27146BFD0(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_27146C170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_27146C1A0(void *a1)
{
  *a1 = &unk_28812EA90;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EAD8;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_27146C260(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v41);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v41);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v41);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0(a2 + 16, &v26);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v26);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v26);
  }

  if (v41 != v26)
  {
    goto LABEL_21;
  }

  if (v42 != v27)
  {
    goto LABEL_21;
  }

  v21 = &v43;
  v22 = &v46;
  v23 = &v47;
  v24 = &v50;
  v25 = &v53;
  v20[0] = &v28;
  v20[1] = &v31;
  v20[2] = &v32;
  v20[3] = &v35;
  v20[4] = &__p;
  if (!sub_2714FBB90(&v21, v20))
  {
    goto LABEL_21;
  }

  if (*(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && (v6 = *(a1 + 216), v7 = *v6, v8 = *(a2 + 216), v7 == *v8))
  {
    v21 = v20;
    v22 = v6;
    v23 = v8;
    v9 = sub_27175A954(v7, &v21);
    if (v40 != 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_21:
    v9 = 0;
    if (v40 != 1)
    {
      goto LABEL_35;
    }
  }

  v10 = __p;
  if (__p)
  {
    v11 = v39;
    v12 = __p;
    if (v39 == __p)
    {
LABEL_34:
      v39 = v10;
      operator delete(v12);
      goto LABEL_35;
    }

    while (1)
    {
      v13 = v11;
      if (*(v11 - 16) == 1 && *(v11 - 41) < 0)
      {
        operator delete(*(v11 - 8));
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
LABEL_29:
          if (*(v13 - 73) < 0)
          {
            operator delete(*v11);
          }
        }
      }

      else
      {
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
          goto LABEL_29;
        }
      }

      if (v11 == v10)
      {
        v12 = __p;
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v55 == 1)
  {
    v14 = v53;
    if (v53)
    {
      v15 = v54;
      v16 = v53;
      if (v54 == v53)
      {
LABEL_57:
        v54 = v14;
        operator delete(v16);
        goto LABEL_58;
      }

      while (1)
      {
        v17 = v15;
        if (*(v15 - 16) == 1 && *(v15 - 41) < 0)
        {
          operator delete(*(v15 - 8));
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
LABEL_52:
            if (*(v17 - 73) < 0)
            {
              operator delete(*v15);
            }
          }
        }

        else
        {
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
            goto LABEL_52;
          }
        }

        if (v15 == v14)
        {
          v16 = v53;
          goto LABEL_57;
        }
      }
    }
  }

LABEL_58:
  if (v52 == 1 && v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_27146C614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_27146C650(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_27146CC08(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_27146DA88(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_27146DE98(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_27146ED18(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_27146F058(&v16, v14);
      }

      else
      {
        sub_27146C81C(&v15, a1);
      }
    }
  }
}

void sub_27146C81C(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v12 = 4;
    (*(*a2 + 104))(a2, &v12);
    v10 = v12;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v12);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v12 = 5;
    (*(*a2 + 104))(a2, &v12);
    v8 = v12;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v12);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v12 = 6;
    (*(*a2 + 104))(a2, &v12);
    v6 = v12;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v12);
  }

LABEL_17:
  v11 = a2[2];
  v12 = 1;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_27146F328(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 1;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_27146F328(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_27146CC08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CC40C(&v26, v10);
        }

        sub_2713B29CC(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CC40C(&v26, v17);
    }

    sub_2713DA6CC(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CC40C(&v26, v24);
  }

  sub_2713DAF34(a2, v3 + 16);
}

void sub_27146D130(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DB624(a1, v6);
}

void sub_27146D358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_27146D38C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v12 = *(*(a2 + 16) + 40);
          sub_27182791C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_2718289B0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v12;
          v20 = 3;
          sub_27182B5E0(a3, &v19);
        }
      }

      else
      {
        sub_271759D80((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v10 = *(*(a2 + 16) + 40);
          sub_27182791C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_2718289B0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v10;
          v20 = 3;
          sub_27182B8F0(a3, &v19);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v14 = *(*(a2 + 16) + 40);
            sub_27182791C(a3 + 48, (a3 + 40));
            *(a3 + 40) = sub_2718289B0(a3);
            if (*(a3 + 88) == 1)
            {
              *(a3 + 88) = 0;
            }

            v19 = v14;
            v20 = 3;
            sub_27182BF10(a3, &v19);
          }

          break;
        case 11:
          sub_271759D80((a2 + 16), 11);
          v16 = *(a2 + 8);
          if (v16)
          {
            v17 = *(*(a2 + 16) + 40);
            do
            {
              sub_27182791C(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_2718289B0(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v17;
              v20 = 3;
              sub_27182C644(a3, &v19);
              v19 = v17 + 3;
              v20 = 3;
              sub_27182C644(a3, &v19);
              v18 = *(a3 + 56);
              *(a3 + 40) = *(v18 - 8);
              *(a3 + 56) = v18 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          break;
        case 12:
          sub_271759D80((a2 + 16), 12);
          v6 = *(a2 + 8);
          if (v6)
          {
            v7 = *(*(a2 + 16) + 40);
            do
            {
              sub_27182791C(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_2718289B0(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v7;
              v20 = 3;
              sub_27182CAA4(a3, &v19);
              v19 = v7 + 6;
              v20 = 3;
              sub_27182CAA4(a3, &v19);
              v8 = *(a3 + 56);
              *(a3 + 40) = *(v8 - 8);
              *(a3 + 56) = v8 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v7 += 12;
              --v6;
            }

            while (v6);
          }

          break;
        default:
          goto LABEL_60;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_60;
      }

      sub_271759D80((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        sub_27182791C(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_2718289B0(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v9;
        v20 = 3;
        sub_27182B768(a3, &v19);
      }
    }

    else
    {
      sub_271759D80((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v11 = *(*(a2 + 16) + 40);
        sub_27182791C(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_2718289B0(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v11;
        v20 = 3;
        sub_271828DE4(a3, &v19);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v13 = *(*(a2 + 16) + 40);
          sub_27182791C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_2718289B0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v13;
          v20 = 3;
          sub_27182BA78(a3, &v19);
        }

        break;
      case 3:
        sub_271759D80((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v15 = *(*(a2 + 16) + 40);
          sub_27182791C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_2718289B0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v15;
          v20 = 3;
          sub_27182C098(a3, &v19);
        }

        break;
      case 5:
        sub_271759D80((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v5 = *(*(a2 + 16) + 40);
          sub_27182791C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_2718289B0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v5;
          v20 = 3;
          sub_27182B474(a3, &v19);
        }

        return;
      default:
LABEL_60:

        sub_27183428C(a1);
    }
  }
}

void sub_27146DA88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = a2[3];
    if (*(v7 + 40) == 1)
    {
      v25 = (v7 + 16);
      sub_2718460EC(&v25, 4u);
    }

    else
    {
      sub_27184636C(&v25, (v7 + 8));
    }

    sub_271840ADC(a2[3]);
    sub_2713DC010(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = a2[3];
    if (*(v6 + 40) == 1)
    {
      v25 = (v6 + 16);
      sub_2718460EC(&v25, 5u);
    }

    else
    {
      sub_27184636C(&v25, (v6 + 8));
    }

    sub_271840ADC(a2[3]);
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[3];
    if (*(v5 + 40) == 1)
    {
      v25 = (v5 + 16);
      sub_2718460EC(&v25, 6u);
    }

    else
    {
      sub_27184636C(&v25, (v5 + 8));
    }

    sub_271840ADC(a2[3]);
    sub_2713B5730(a2, v3 + 16, 6u);
  }

  v8 = a2[3];
  v9 = *(*(v8 + 88) - 8);
  sub_2718404E0((v8 + 48), *(v8 + 16) - v9 - 9);
  v10 = *(v8 + 48);
  if (v10)
  {
    memmove((*(v8 + 24) + v9), *(v8 + 56), v10);
  }

  *(v8 + 48) = 0;
  v11 = *(v8 + 80);
  v12 = *(v8 + 88) - 8;
  *(v8 + 88) = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(*(v8 + 24));
      *(v8 + 40) = 0;
    }
  }

  v16 = a2[3];
  if (*(v16 + 40) == 1)
  {
    v25 = (v16 + 16);
    sub_2718460EC(&v25, 1u);
  }

  else
  {
    sub_27184636C(&v25, (v16 + 8));
  }

  sub_271840ADC(a2[3]);
  sub_27146DD1C(a2, (v3 + 200));
  v17 = a2[3];
  v18 = *(*(v17 + 88) - 8);
  sub_2718404E0((v17 + 48), *(v17 + 16) - v18 - 9);
  v19 = *(v17 + 48);
  if (v19)
  {
    memmove((*(v17 + 24) + v18), *(v17 + 56), v19);
  }

  *(v17 + 48) = 0;
  v20 = *(v17 + 80);
  v21 = *(v17 + 88) - 8;
  *(v17 + 88) = v21;
  if (v20 == v21)
  {
    v22 = *v17;
    v24 = *(v17 + 16);
    v23 = *(v17 + 24);
    std::ostream::write();
    if (*(v17 + 40) == 1)
    {
      free(*(v17 + 24));
      *(v17 + 40) = 0;
    }
  }
}

void sub_27146DD1C(uint64_t *a1, __int128 *a2)
{
  v8 = *a2;
  v3 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v12) = v8;
  v4 = a1[3];
  if (*(v4 + 40) == 1)
  {
    v11[0] = (v4 + 16);
    sub_2718454CC(v11, &v12);
  }

  else
  {
    if (v8 < 0)
    {
      LOBYTE(v11[0]) = -52;
      BYTE1(v11[0]) = v8;
    }

    else
    {
      LOBYTE(v11[0]) = v8;
    }

    v5 = *(v4 + 8);
    std::ostream::write();
  }

  v6 = a1[3];
  if (*(v6 + 40) == 1)
  {
    v11[0] = (v6 + 16);
    sub_271846AEC(v11, *(&v8 + 1));
  }

  else
  {
    sub_271846E00((v6 + 8));
  }

  v12 = xmmword_279E2F5D0;
  v11[0] = &v8;
  v11[1] = a1;
  v11[2] = &v12;
  sub_2713F568C(v8, v11);
  v7 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27146DE98(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CA870(&v26, v10);
        }

        sub_2713B6988(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CA870(&v26, v17);
    }

    sub_2713DCA04(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CA870(&v26, v24);
  }

  sub_2713DD090(a2, v3 + 16);
}

void sub_27146E3C0(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DD5A4(a1, v6);
}

void sub_27146E5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_27146E61C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v12 = *(*(a2 + 16) + 40);
          sub_2715DF0F0(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_27182815C(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v12;
          v20 = 3;
          sub_2718295E4(a3, &v19);
        }
      }

      else
      {
        sub_271759D80((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v10 = *(*(a2 + 16) + 40);
          sub_2715DF0F0(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_27182815C(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v10;
          v20 = 3;
          sub_2718298F4(a3, &v19);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v14 = *(*(a2 + 16) + 40);
            sub_2715DF0F0(a3 + 48, (a3 + 40));
            *(a3 + 40) = sub_27182815C(a3);
            if (*(a3 + 88) == 1)
            {
              *(a3 + 88) = 0;
            }

            v19 = v14;
            v20 = 3;
            sub_271829C04(a3, &v19);
          }

          break;
        case 11:
          sub_271759D80((a2 + 16), 11);
          v16 = *(a2 + 8);
          if (v16)
          {
            v17 = *(*(a2 + 16) + 40);
            do
            {
              sub_2715DF0F0(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_27182815C(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v17;
              v20 = 3;
              sub_27182A338(a3, &v19);
              v19 = v17 + 3;
              v20 = 3;
              sub_27182A338(a3, &v19);
              v18 = *(a3 + 56);
              *(a3 + 40) = *(v18 - 8);
              *(a3 + 56) = v18 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          break;
        case 12:
          sub_271759D80((a2 + 16), 12);
          v6 = *(a2 + 8);
          if (v6)
          {
            v7 = *(*(a2 + 16) + 40);
            do
            {
              sub_2715DF0F0(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_27182815C(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v7;
              v20 = 3;
              sub_27182A798(a3, &v19);
              v19 = v7 + 6;
              v20 = 3;
              sub_27182A798(a3, &v19);
              v8 = *(a3 + 56);
              *(a3 + 40) = *(v8 - 8);
              *(a3 + 56) = v8 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v7 += 12;
              --v6;
            }

            while (v6);
          }

          break;
        default:
          goto LABEL_60;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_60;
      }

      sub_271759D80((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        sub_2715DF0F0(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_27182815C(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v9;
        v20 = 3;
        sub_27182976C(a3, &v19);
      }
    }

    else
    {
      sub_271759D80((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v11 = *(*(a2 + 16) + 40);
        sub_2715DF0F0(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_27182815C(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v11;
        v20 = 3;
        sub_271828638(a3, &v19);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v13 = *(*(a2 + 16) + 40);
          sub_2715DF0F0(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_27182815C(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v13;
          v20 = 3;
          sub_271829A7C(a3, &v19);
        }

        break;
      case 3:
        sub_271759D80((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v15 = *(*(a2 + 16) + 40);
          sub_2715DF0F0(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_27182815C(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v15;
          v20 = 3;
          sub_271829D8C(a3, &v19);
        }

        break;
      case 5:
        sub_271759D80((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v5 = *(*(a2 + 16) + 40);
          sub_2715DF0F0(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_27182815C(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v5;
          v20 = 3;
          sub_271829478(a3, &v19);
        }

        return;
      default:
LABEL_60:

        sub_27183428C(a1);
    }
  }
}

void *sub_27146ED18(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_271120E64(v16, &v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_271120E64(v5, &v17, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6u);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_271120E64(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_271120E64(v7, &v18, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_271120E64(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_271120E64(v11, &v22, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_27146EF2C(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_271120E64(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_271120E64(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_27146EF2C(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v9[0]) = v6;
  sub_2718388F8(a1, v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v9[0]) = *(a1 + 32);
    sub_271120E64(v4, v9, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  v10 = xmmword_279E2F5D0;
  v9[0] = &v6;
  v9[1] = a1;
  v9[2] = &v10;
  sub_2713F639C(v6, v9);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_27146F058(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v7 = __src;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v6 = __src;
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    __src = 6;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v5 = __src;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 1;
  sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
  sub_2717312C0(a2);
  sub_27146F20C(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_27146F20C(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(__src[0]) = v5;
  sub_27173318C(a1 + 24, *(a1 + 32), __src, __src + 1, 1uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), &v5 + 8, &v6, 8uLL);
  v9 = xmmword_279E2F5D0;
  __src[0] = &v5;
  __src[1] = a1;
  __src[2] = &v9;
  sub_2713F6954(v5, __src);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_27146F328(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2713E01B4(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  v9 = xmmword_279E2F5D0;
  v8[0] = &v5;
  v8[1] = a1;
  v8[2] = &v9;
  sub_2713F6C08(v5, v8);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_27146F444(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_27146FA70(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_271471CAC(&v16, v8);
  }

  v16 = a2;
  v9 = *v4;
  v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v10)
  {
    sub_271473530(&v16, v10);
  }

  v16 = a2;
  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v12)
  {
    sub_27147576C(&v16, v12);
  }

  v16 = a2;
  v13 = *v4;
  v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
  if (v14)
  {
    sub_271477030(&v16, v14);
  }

  sub_27146F610(&v15, a1);
}

void sub_27146F610(uint64_t *a1, void **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_2713C66D4(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_2713C68E0(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_2713C62C8(v21, a2, v3 + 16, v33[0]);
      }

      sub_271478D70(a2, (v3 + 200));
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v30;
      goto LABEL_65;
    }
  }
}

void sub_27146FA70(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_271470068(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2714711D0(v3);
      }

      sub_271470F40(v3);
    }

    switch(a1)
    {
      case 8:
        sub_271471464(v3);
      case 11:
        sub_271471784(v3);
      case 12:
        sub_271471A18(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2714701EC(v3);
    }

    if (a1 == 1)
    {
      sub_271470474(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271470704(v3);
      case 3:
        sub_271470998(v3);
      case 5:
        sub_271470CB8(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2714701EC(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182D810(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182D810(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_27175862C();
}

void sub_271470438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271470474(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F018(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F018(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271758B58();
}

void sub_2714706C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271470704(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F1C8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F1C8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271759088();
}

void sub_27147095C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271470998(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      *&v15 = v5;
      v8 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v8;
      sub_27182D194(v4 + 40, &v15);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_271831430(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v3, v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_27182D6C4(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_271831430(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v3 + 24), v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v4 = a1[1];
      v6 = *(v4 + 48);
      v5 = *(v6 - 8);
      *(v4 + 32) = v5;
      v7 = *(v4 + 72);
      *(v4 + 112) = *(v7 - 8);
      *(v4 + 48) = v6 - 8;
      *(v4 + 72) = v7 - 8;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  sub_2717595B8();
}

void sub_271470C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271470CB8(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182EDD8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182EDD8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271758398();
}

void sub_271470F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271470F40(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182EEF8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182EEF8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_2717588C0();
}

void sub_271471194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_2714711D0(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F0F0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F0F0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271758DF0();
}

void sub_271471428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271471464(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      *&v15 = v5;
      v8 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v8;
      sub_27182D194(v4 + 40, &v15);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_271831164(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v3, v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_27182D6C4(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_271831164(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v3 + 24), v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v4 = a1[1];
      v6 = *(v4 + 48);
      v5 = *(v6 - 8);
      *(v4 + 32) = v5;
      v7 = *(v4 + 72);
      *(v4 + 112) = *(v7 - 8);
      *(v4 + 48) = v6 - 8;
      *(v4 + 72) = v7 - 8;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  sub_271759320();
}

void sub_271471714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271471784(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F4D4(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F4D4(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271759850();
}

void sub_2714719DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271471A18(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D6C4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D6C4(v7);
      ++v7[14];
      sub_27182F5F0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D6C4(v9);
      ++v9[14];
      sub_27182F5F0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271759AE8();
}

void sub_271471C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271471CAC(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v19);
    sub_2713B2524(v31, v19);
    sub_2713E031C(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v42 = v5;
        operator delete(v7);
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

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      LODWORD(v19[0]) = 6;
      sub_27183FB7C(*(a2 + 48), v19);
      sub_2713BF6F4(v19, a2, v3 + 16, v19[0]);
      LODWORD(v19[0]) = 1;
      sub_27183FB7C(*(a2 + 48), v19);
      sub_2714720D0(v19, a2, (v3 + 200));
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v19);
  sub_2713B2524(v31, v19);
  sub_2713E031C(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v42 = v9;
      operator delete(v11);
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

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_2714720D0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *&v8 = 0;
  sub_27183FF6C(*(a2 + 48), &v8);
  *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v6 + 1) = v8;
  sub_2713BF82C(a2 + 24, &v6);
  LOBYTE(v6) = 0;
  sub_27183F824(*(a2 + 48), &v6);
  *a3 = v6;
  sub_27183FF6C(*(a2 + 48), a3 + 1);
  v8 = xmmword_279E2F5D0;
  v5 = *a3;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v8;
  sub_271472210(v5, &v6);
}

void sub_271472210(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271472DD0(a2);
      }

      sub_271472BFC(a2);
    }

    switch(a1)
    {
      case 8:
        sub_271472FA8(a2);
      case 11:
        sub_271473180(a2);
      case 12:
        sub_271473358(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2714722F0(a2);
    }

    if (a1 == 1)
    {
      sub_2714724B4(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271472688(a2);
      case 3:
        sub_271472860(a2);
      case 5:
        sub_271472A38(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_2714722F0(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_271472484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714724B4(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271472658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271472688(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_271472830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271472860(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_271472A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271472A38(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_271472BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271472BFC(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_271472DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271472DD0(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_271472F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271472FA8(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_271473150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271473180(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_271473328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271473358(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_271473500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271473530(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_271473B28(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271474C90(v3);
      }

      sub_271474A00(v3);
    }

    switch(a1)
    {
      case 8:
        sub_271474F24(v3);
      case 11:
        sub_271475244(v3);
      case 12:
        sub_2714754D8(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271473CAC(v3);
    }

    if (a1 == 1)
    {
      sub_271473F34(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2714741C4(v3);
      case 3:
        sub_271474458(v3);
      case 5:
        sub_271474778(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_271473CAC(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182D3F8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182D3F8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_27175862C();
}

void sub_271473EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271473F34(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182DFB4(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182DFB4(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271758B58();
}

void sub_271474188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_2714741C4(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182E164(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182E164(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271759088();
}

void sub_27147441C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271474458(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      *&v15 = v5;
      v8 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v8;
      sub_27182D194(v4 + 40, &v15);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_27182FFA0(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v3, v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_27182D2AC(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_27182FFA0(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v3 + 24), v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v4 = a1[1];
      v6 = *(v4 + 48);
      v5 = *(v6 - 8);
      *(v4 + 32) = v5;
      v7 = *(v4 + 72);
      *(v4 + 112) = *(v7 - 8);
      *(v4 + 48) = v6 - 8;
      *(v4 + 72) = v7 - 8;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  sub_2717595B8();
}

void sub_271474708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271474778(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182DD74(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182DD74(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271758398();
}

void sub_2714749C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271474A00(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182DE94(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182DE94(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_2717588C0();
}

void sub_271474C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271474C90(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182E08C(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182E08C(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271758DF0();
}

void sub_271474EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_271474F24(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      *&v15 = v5;
      v8 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v8;
      sub_27182D194(v4 + 40, &v15);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_27182FA80(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v3, v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_27182D2AC(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_27182FA80(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v3 + 24), v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v4 = a1[1];
      v6 = *(v4 + 48);
      v5 = *(v6 - 8);
      *(v4 + 32) = v5;
      v7 = *(v4 + 72);
      *(v4 + 112) = *(v7 - 8);
      *(v4 + 48) = v6 - 8;
      *(v4 + 72) = v7 - 8;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  sub_271759320();
}

void sub_2714751D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271475244(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182E498(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182E498(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271759850();
}

void sub_27147549C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_2714754D8(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_27182D2AC(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_27182D194(v4 + 40, &v13);
      sub_2717313F0(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_27182D2AC(v7);
      ++v7[14];
      sub_27182E5DC(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_27182D2AC(v9);
      ++v9[14];
      sub_27182E5DC(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_271759AE8();
}