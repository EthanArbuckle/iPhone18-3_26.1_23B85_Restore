void sub_271452E04(uint64_t *a1, uint64_t a2)
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

void sub_271453230(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v22[0]) = 6;
    sub_27183A9AC(a2, v22);
    if (LODWORD(v22[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = v22[0];
    }

    if (LODWORD(v22[0]) <= 2)
    {
      sub_2713C30AC(v22, a2, v3 + 16, v19);
LABEL_95:
      LODWORD(v22[0]) = 2;
      sub_27183A9AC(a2, v22);
      if (LODWORD(v22[0]) > 1)
      {
        LOBYTE(v22[0]) = 0;
        sub_271839D90(a2, v22);
        v21 = LOBYTE(v22[0]);
        *(v3 + 200) = v22[0];
        sub_2713E1F84(v21, a2);
      }

      sub_2713E1E24();
    }

    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v22);
      if (SHIBYTE(v23) < 0)
      {
        if (v22[1] == 1 && *(a2 + 72) == *v22[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v23) == 1 && *(a2 + 72) == LOBYTE(v22[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v23) < 0)
      {
LABEL_93:
        operator delete(v22[0]);
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
    sub_2713DA430(v3 + 16, v22);
    sub_2713B2524(v35, v22);
    sub_2713E031C(v3 + 16, v35);
    if (v47 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v46;
        v7 = __p;
        if (v46 != __p)
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

        v46 = v5;
        operator delete(v7);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v34 != 1)
    {
      goto LABEL_66;
    }

    v13 = v32;
    if (!v32)
    {
      goto LABEL_66;
    }

    v14 = v33;
    v15 = v32;
    if (v33 == v32)
    {
LABEL_65:
      v33 = v13;
      operator delete(v15);
LABEL_66:
      if (v31 == 1 && v30 < 0)
      {
        operator delete(v29);
      }

      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
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

  sub_271399EB0(v3 + 16, v22);
  sub_2713B2524(v35, v22);
  sub_2713E031C(v3 + 16, v35);
  if (v47 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v46;
      v11 = __p;
      if (v46 != __p)
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

      v46 = v9;
      operator delete(v11);
    }
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v34 != 1)
  {
    goto LABEL_66;
  }

  v13 = v32;
  if (!v32)
  {
    goto LABEL_66;
  }

  v17 = v33;
  v15 = v32;
  if (v33 == v32)
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
      v15 = v32;
      goto LABEL_65;
    }
  }
}

void sub_2714537EC(uint64_t *a1, void *a2)
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
      sub_2713E234C(v19, a2, (v3 + 200));
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

uint64_t sub_271453BDC(uint64_t a1, uint64_t a2)
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

void sub_271453F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_271453FCC(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_271454584(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_271454AB0(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_271454D44(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_271455270(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_271455484(&v16, v14);
      }

      else
      {
        sub_271454198(&v15, a1);
      }
    }
  }
}

void sub_271454198(uint64_t *a1, _DWORD *a2)
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
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_2713E65AC(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_2713E65AC(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_271454584(uint64_t *a1, uint64_t a2)
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

void sub_271454AB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v25 = (v7 + 16);
      sub_2718460EC(&v25, 4u);
    }

    else
    {
      sub_27184636C(&v25, (v7 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v25 = (v6 + 16);
      sub_2718460EC(&v25, 5u);
    }

    else
    {
      sub_27184636C(&v25, (v6 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v25 = (v5 + 16);
      sub_2718460EC(&v25, 6u);
    }

    else
    {
      sub_27184636C(&v25, (v5 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6u);
  }

  v8 = *(a2 + 24);
  v9 = *(v8[11] - 8);
  sub_2718404E0(v8 + 6, v8[2] - v9 - 9);
  v10 = v8[6];
  if (v10)
  {
    memmove((v8[3] + v9), v8[7], v10);
  }

  v8[6] = 0;
  v11 = v8[10];
  v12 = v8[11] - 8;
  v8[11] = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = v8[2];
    v14 = v8[3];
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(v8[3]);
      *(v8 + 40) = 0;
    }
  }

  v16 = *(a2 + 24);
  if (*(v16 + 40) == 1)
  {
    v25 = (v16 + 16);
    sub_2718460EC(&v25, 2u);
  }

  else
  {
    sub_27184636C(&v25, (v16 + 8));
  }

  sub_271840ADC(*(a2 + 24));
  sub_2713E5004(a2, (v3 + 200));
  v17 = *(a2 + 24);
  v18 = *(v17[11] - 8);
  sub_2718404E0(v17 + 6, v17[2] - v18 - 9);
  v19 = v17[6];
  if (v19)
  {
    memmove((v17[3] + v18), v17[7], v19);
  }

  v17[6] = 0;
  v20 = v17[10];
  v21 = v17[11] - 8;
  v17[11] = v21;
  if (v20 == v21)
  {
    v22 = *v17;
    v24 = v17[2];
    v23 = v17[3];
    std::ostream::write();
    if (*(v17 + 40) == 1)
    {
      free(v17[3]);
      *(v17 + 40) = 0;
    }
  }
}

void sub_271454D44(uint64_t *a1, uint64_t a2)
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

void *sub_271455270(uint64_t *a1, uint64_t a2)
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

  MEMORY[0x2743BE7F0](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_2713E5DD8(a2, (v3 + 200));
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

void sub_271455484(uint64_t *a1, uint64_t a2)
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
  __src = 2;
  sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
  sub_2717312C0(a2);
  sub_2713E6338(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_271455638(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_271455C70(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_271456090(&v16, v8);
  }

  v16 = a2;
  v9 = *v4;
  v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v10)
  {
    sub_2714564B4(&v16, v10);
  }

  v16 = a2;
  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v12)
  {
    sub_2714568D4(&v16, v12);
  }

  v16 = a2;
  v13 = *v4;
  v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
  if (v14)
  {
    sub_271456DA4(&v16, v14);
  }

  sub_271455804(&v15, a1);
}

void sub_271455804(uint64_t *a1, void **a2)
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

      v21[0] = a2[1];
      sub_2713F2600(v21, a2, (v3 + 200));
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

void sub_271455C70(uint64_t *a1, uint64_t a2)
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

void sub_271456090(uint64_t *a1, uint64_t a2)
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
      LODWORD(v19[0]) = 2;
      sub_27183FB7C(*(a2 + 48), v19);
      sub_2713E903C(v19, a2, (v3 + 200), v19[0]);
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

void sub_2714564B4(uint64_t *a1, uint64_t a2)
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

void sub_2714568D4(uint64_t *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v21[0]) = 6;
    sub_27183A9AC(a2, v21);
    if (LODWORD(v21[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = v21[0];
    }

    if (LODWORD(v21[0]) <= 2)
    {
      sub_2713C30AC(v21, a2, v3 + 16, v19);
LABEL_95:
      sub_2713ED800(v21, a2, (v3 + 200));
    }

    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v21);
      if (SHIBYTE(v22) < 0)
      {
        if (v21[1] == 1 && *(a2 + 72) == *v21[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v22) == 1 && *(a2 + 72) == LOBYTE(v21[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v22) < 0)
      {
LABEL_93:
        operator delete(v21[0]);
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
    sub_2713DA430(v3 + 16, v21);
    sub_2713B2524(v34, v21);
    sub_2713E031C(v3 + 16, v34);
    if (v46 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v45;
        v7 = __p;
        if (v45 != __p)
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

        v45 = v5;
        operator delete(v7);
      }
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v33 != 1)
    {
      goto LABEL_66;
    }

    v13 = v31;
    if (!v31)
    {
      goto LABEL_66;
    }

    v14 = v32;
    v15 = v31;
    if (v32 == v31)
    {
LABEL_65:
      v32 = v13;
      operator delete(v15);
LABEL_66:
      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
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

  sub_271399EB0(v3 + 16, v21);
  sub_2713B2524(v34, v21);
  sub_2713E031C(v3 + 16, v34);
  if (v46 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v45;
      v11 = __p;
      if (v45 != __p)
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

      v45 = v9;
      operator delete(v11);
    }
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v33 != 1)
  {
    goto LABEL_66;
  }

  v13 = v31;
  if (!v31)
  {
    goto LABEL_66;
  }

  v17 = v32;
  v15 = v31;
  if (v32 == v31)
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
      v15 = v31;
      goto LABEL_65;
    }
  }
}

void sub_271456DA4(uint64_t *a1, void *a2)
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
      sub_2713EFA48(v19, a2, v3 + 200);
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

uint64_t sub_271457194(uint64_t a1, uint64_t a2)
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

void sub_271457548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_271457584(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_271457B3C(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_271458068(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_2714582FC(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_271458828(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_271458A3C(&v16, v14);
      }

      else
      {
        sub_271457750(&v15, a1);
      }
    }
  }
}

void sub_271457750(uint64_t *a1, _DWORD *a2)
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
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_2713F6AEC(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_2713F6AEC(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_271457B3C(uint64_t *a1, uint64_t a2)
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

void sub_271458068(uint64_t *a1, uint64_t *a2)
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
    sub_2718460EC(&v25, 2u);
  }

  else
  {
    sub_27184636C(&v25, (v16 + 8));
  }

  sub_271840ADC(a2[3]);
  sub_2713F5510(a2, (v3 + 200));
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

void sub_2714582FC(uint64_t *a1, uint64_t a2)
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

void *sub_271458828(uint64_t *a1, uint64_t a2)
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

  MEMORY[0x2743BE7F0](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_2713F6270(a2, (v3 + 200));
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

void sub_271458A3C(uint64_t *a1, uint64_t a2)
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
  __src = 2;
  sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
  sub_2717312C0(a2);
  sub_2713F6838(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_271458BF0(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_27145921C(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_2714596F8(&v16, v8);
  }

  v16 = a2;
  v9 = *v4;
  v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v10)
  {
    sub_271459B1C(&v16, v10);
  }

  v16 = a2;
  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v12)
  {
    sub_271459FF8(&v16, v12);
  }

  v16 = a2;
  v13 = *v4;
  v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
  if (v14)
  {
    sub_27145A4C8(&v16, v14);
  }

  sub_271458DBC(&v15, a1);
}

void sub_271458DBC(uint64_t *a1, void **a2)
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

      sub_2714051D4(a2, (v3 + 200));
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

void sub_27145921C(uint64_t *a1, uint64_t a2)
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

void sub_2714596F8(uint64_t *a1, uint64_t a2)
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
      LODWORD(v19[0]) = 2;
      sub_27183FB7C(*(a2 + 48), v19);
      sub_2713F9EF8(v19, a2, (v3 + 200), v19[0]);
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

void sub_271459B1C(uint64_t *a1, uint64_t a2)
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

void sub_271459FF8(uint64_t *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v21[0]) = 6;
    sub_27183A9AC(a2, v21);
    if (LODWORD(v21[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = v21[0];
    }

    if (LODWORD(v21[0]) <= 2)
    {
      sub_2713C30AC(v21, a2, v3 + 16, v19);
LABEL_95:
      sub_2713FF628(v21, a2, (v3 + 200));
    }

    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v21);
      if (SHIBYTE(v22) < 0)
      {
        if (v21[1] == 1 && *(a2 + 72) == *v21[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v22) == 1 && *(a2 + 72) == LOBYTE(v21[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v22) < 0)
      {
LABEL_93:
        operator delete(v21[0]);
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
    sub_2713DA430(v3 + 16, v21);
    sub_2713B2524(v34, v21);
    sub_2713E031C(v3 + 16, v34);
    if (v46 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v45;
        v7 = __p;
        if (v45 != __p)
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

        v45 = v5;
        operator delete(v7);
      }
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v33 != 1)
    {
      goto LABEL_66;
    }

    v13 = v31;
    if (!v31)
    {
      goto LABEL_66;
    }

    v14 = v32;
    v15 = v31;
    if (v32 == v31)
    {
LABEL_65:
      v32 = v13;
      operator delete(v15);
LABEL_66:
      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
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

  sub_271399EB0(v3 + 16, v21);
  sub_2713B2524(v34, v21);
  sub_2713E031C(v3 + 16, v34);
  if (v46 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v45;
      v11 = __p;
      if (v45 != __p)
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

      v45 = v9;
      operator delete(v11);
    }
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v33 != 1)
  {
    goto LABEL_66;
  }

  v13 = v31;
  if (!v31)
  {
    goto LABEL_66;
  }

  v17 = v32;
  v15 = v31;
  if (v32 == v31)
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
      v15 = v31;
      goto LABEL_65;
    }
  }
}

void sub_27145A4C8(uint64_t *a1, void *a2)
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
      sub_271401EC8(v19, a2, v3 + 200);
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

uint64_t sub_27145A8B8(uint64_t a1, uint64_t a2)
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

void sub_27145AC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_27145ACA8(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_27145B260(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_27145B78C(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_27145BA20(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_27145BF4C(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_27145C160(&v16, v14);
      }

      else
      {
        sub_27145AE74(&v15, a1);
      }
    }
  }
}

void sub_27145AE74(uint64_t *a1, _DWORD *a2)
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
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_2714091EC(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_2714091EC(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_27145B260(uint64_t *a1, uint64_t a2)
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

void sub_27145B78C(uint64_t *a1, uint64_t *a2)
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
    sub_2718460EC(&v25, 2u);
  }

  else
  {
    sub_27184636C(&v25, (v16 + 8));
  }

  sub_271840ADC(a2[3]);
  sub_271408894(a2, (v3 + 200));
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

void sub_27145BA20(uint64_t *a1, uint64_t a2)
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

void *sub_27145BF4C(uint64_t *a1, uint64_t a2)
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

  MEMORY[0x2743BE7F0](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_271408FA4(a2, (v3 + 200));
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

void sub_27145C160(uint64_t *a1, uint64_t a2)
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
  __src = 2;
  sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
  sub_2717312C0(a2);
  sub_2714090D0(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_27145C314(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_27145C940(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_27145CE1C(&v16, v8);
  }

  v16 = a2;
  v9 = *v4;
  v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v10)
  {
    sub_27145D240(&v16, v10);
  }

  v16 = a2;
  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v12)
  {
    sub_27145D71C(&v16, v12);
  }

  v16 = a2;
  v13 = *v4;
  v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
  if (v14)
  {
    sub_27145DBEC(&v16, v14);
  }

  sub_27145C4E0(&v15, a1);
}

void sub_27145C4E0(uint64_t *a1, void **a2)
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

      sub_27141712C(a2, (v3 + 200));
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

void sub_27145C940(uint64_t *a1, uint64_t a2)
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

void sub_27145CE1C(uint64_t *a1, uint64_t a2)
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
      LODWORD(v19[0]) = 2;
      sub_27183FB7C(*(a2 + 48), v19);
      sub_27140C020(v19, a2, (v3 + 200), v19[0]);
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

void sub_27145D240(uint64_t *a1, uint64_t a2)
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

void sub_27145D71C(uint64_t *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v21[0]) = 6;
    sub_27183A9AC(a2, v21);
    if (LODWORD(v21[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = v21[0];
    }

    if (LODWORD(v21[0]) <= 2)
    {
      sub_2713C30AC(v21, a2, v3 + 16, v19);
LABEL_95:
      sub_271411600(v21, a2, (v3 + 200));
    }

    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v21);
      if (SHIBYTE(v22) < 0)
      {
        if (v21[1] == 1 && *(a2 + 72) == *v21[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v22) == 1 && *(a2 + 72) == LOBYTE(v21[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v22) < 0)
      {
LABEL_93:
        operator delete(v21[0]);
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
    sub_2713DA430(v3 + 16, v21);
    sub_2713B2524(v34, v21);
    sub_2713E031C(v3 + 16, v34);
    if (v46 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v45;
        v7 = __p;
        if (v45 != __p)
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

        v45 = v5;
        operator delete(v7);
      }
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v33 != 1)
    {
      goto LABEL_66;
    }

    v13 = v31;
    if (!v31)
    {
      goto LABEL_66;
    }

    v14 = v32;
    v15 = v31;
    if (v32 == v31)
    {
LABEL_65:
      v32 = v13;
      operator delete(v15);
LABEL_66:
      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
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

  sub_271399EB0(v3 + 16, v21);
  sub_2713B2524(v34, v21);
  sub_2713E031C(v3 + 16, v34);
  if (v46 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v45;
      v11 = __p;
      if (v45 != __p)
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

      v45 = v9;
      operator delete(v11);
    }
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v33 != 1)
  {
    goto LABEL_66;
  }

  v13 = v31;
  if (!v31)
  {
    goto LABEL_66;
  }

  v17 = v32;
  v15 = v31;
  if (v32 == v31)
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
      v15 = v31;
      goto LABEL_65;
    }
  }
}

void sub_27145DBEC(uint64_t *a1, void *a2)
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
      sub_271413E60(v19, a2, v3 + 200);
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

void *sub_27145DFDC(void *a1)
{
  *a1 = &unk_28812E9E8;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EA30;
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

uint64_t sub_27145E09C(uint64_t a1, uint64_t a2)
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

void sub_27145E450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_27145E48C(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_27145EA44(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_27145F8C4(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_27145FCD4(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_271460B54(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_271460E94(&v16, v14);
      }

      else
      {
        sub_27145E658(&v15, a1);
      }
    }
  }
}

void sub_27145E658(uint64_t *a1, _DWORD *a2)
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
    sub_271461164(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 1;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_271461164(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_27145EA44(uint64_t *a1, uint64_t a2)
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

void sub_27145EF6C(uint64_t a1, __int128 *a2)
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

void sub_27145F194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_27145F1C8(int a1, uint64_t a2, uint64_t a3)
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
          v20 = 2;
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
          v20 = 2;
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
            v20 = 2;
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
              v20 = 2;
              sub_27182C644(a3, &v19);
              v19 = v17 + 2;
              v20 = 2;
              sub_27182C644(a3, &v19);
              v18 = *(a3 + 56);
              *(a3 + 40) = *(v18 - 8);
              *(a3 + 56) = v18 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v17 += 4;
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
              v20 = 2;
              sub_27182CAA4(a3, &v19);
              v19 = v7 + 4;
              v20 = 2;
              sub_27182CAA4(a3, &v19);
              v8 = *(a3 + 56);
              *(a3 + 40) = *(v8 - 8);
              *(a3 + 56) = v8 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v7 += 8;
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
        v20 = 2;
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
        v20 = 2;
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
          v20 = 2;
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
          v20 = 2;
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
          v20 = 2;
          sub_27182B474(a3, &v19);
        }

        return;
      default:
LABEL_60:

        sub_27183428C(a1);
    }
  }
}

void sub_27145F8C4(uint64_t *a1, uint64_t *a2)
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
  sub_27145FB58(a2, (v3 + 200));
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

void sub_27145FB58(uint64_t *a1, __int128 *a2)
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

  v12 = xmmword_279E2F5C0;
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

void sub_27145FCD4(uint64_t *a1, uint64_t a2)
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

void sub_2714601FC(uint64_t a1, __int128 *a2)
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

void sub_271460424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_271460458(int a1, uint64_t a2, uint64_t a3)
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
          v20 = 2;
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
          v20 = 2;
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
            v20 = 2;
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
              v20 = 2;
              sub_27182A338(a3, &v19);
              v19 = v17 + 2;
              v20 = 2;
              sub_27182A338(a3, &v19);
              v18 = *(a3 + 56);
              *(a3 + 40) = *(v18 - 8);
              *(a3 + 56) = v18 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v17 += 4;
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
              v20 = 2;
              sub_27182A798(a3, &v19);
              v19 = v7 + 4;
              v20 = 2;
              sub_27182A798(a3, &v19);
              v8 = *(a3 + 56);
              *(a3 + 40) = *(v8 - 8);
              *(a3 + 56) = v8 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v7 += 8;
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
        v20 = 2;
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
        v20 = 2;
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
          v20 = 2;
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
          v20 = 2;
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
          v20 = 2;
          sub_271829478(a3, &v19);
        }

        return;
      default:
LABEL_60:

        sub_27183428C(a1);
    }
  }
}