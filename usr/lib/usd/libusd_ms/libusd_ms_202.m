void sub_29B1EC814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1EC838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  if (*(a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *a3, *(a3 + 8));
  }

  else
  {
    *(result + 1) = *a3;
    result[4] = *(a3 + 16);
  }

  v9[5] = *(a3 + 24);
  *(a4 + 16) = 1;
  return result;
}

void sub_29B1EC8CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B1EC8E8(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 4;
      if (v19 >= a5)
      {
        sub_29A1D5390(a1, a2, a1[1], &a2[2 * a5]);
        v20 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_29B1ECACC(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A1D5390(a1, v5, v10, &v5[2 * a5]);
        v20 = (v7 + v18);
      }

      sub_29A4274B8(v32, v7, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v34 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[16 * v16];
    v33 = &v17[16 * v15];
    v22 = &v21[2 * a5];
    v23 = v21;
    do
    {
      *v23 = *v7;
      v24 = v7[1];
      v23[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v23 += 2;
      v7 += 2;
    }

    while (v23 != v22);
    memcpy(v22, v5, a1[1] - v5);
    v25 = *a1;
    v26 = v22 + a1[1] - v5;
    a1[1] = v5;
    v27 = v5 - v25;
    v28 = v21 - (v5 - v25);
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    v30 = a1[2];
    a1[2] = v33;
    v32[2] = v29;
    v33 = v30;
    v32[0] = v29;
    v32[1] = v29;
    sub_29A017C0C(v32);
    return v21;
  }

  return v5;
}

void *sub_29B1ECACC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29B1ECB54(v7);
  return v4;
}

uint64_t sub_29B1ECB54(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void sub_29B1ECB8C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v95[0] = 0;
  v95[1] = 0;
  v94 = v95;
  sub_29B1EA6E8(*a1, &v92);
  v5 = v92;
  v6 = v93;
  if (v92 == v93)
  {
    goto LABEL_76;
  }

  do
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v8 + 80))(&v85, v8);
    if (!v85)
    {
LABEL_32:
      if (!sub_29B1E8A48(v8))
      {
        goto LABEL_70;
      }

      v20 = *a1;
      v21 = *(*a1 + 232);
      if (v21)
      {
        v22 = std::__shared_weak_count::lock(v21);
        if (v22)
        {
          v23 = *(v20 + 224);
LABEL_38:
          v24 = sub_29B1E8BF0(v8);
          sub_29AADEFE4(v23, v24, &v90);
          if (v90)
          {
            v77 = 0uLL;
            v78 = 0;
            if (sub_29B1D23C8(v8))
            {
              v25 = v90;
              v26 = sub_29B1D2448(v8);
              sub_29AD9A124(v25, v26, &v70);
              sub_29A01729C(&v77, &v70);
              if (*(&v70 + 1))
              {
                sub_29A014BEC(*(&v70 + 1));
              }
            }

            else
            {
              v27 = v90;
              v28 = sub_29B1F31FC();
              sub_29AAD856C(v27, v28, &v70);
              sub_29A03AF64(&v77);
              v77 = v70;
              v78 = v71;
              v71 = 0;
              v70 = 0uLL;
              v88 = &v70;
              sub_29A0176E4(&v88);
            }

            v29 = *(&v77 + 1);
            for (i = v77; i != v29; i += 2)
            {
              v31 = *i;
              v32 = i[1];
              if (v32)
              {
                atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v31 + 80))(&v70);
              if (v70)
              {
                for (j = v95[0]; j; j = *j)
                {
                  v34 = j[4];
                  if (v70 >= v34)
                  {
                    if (v34 >= v70)
                    {
                      goto LABEL_60;
                    }

                    ++j;
                  }
                }

                v35 = *(a3 + 23);
                if ((v35 & 0x80u) != 0)
                {
                  v35 = *(a3 + 8);
                }

                if (!v35)
                {
                  goto LABEL_59;
                }

                sub_29B1ED628(v70, a3, 0, &v88);
                v36 = v88;
                if (v89)
                {
                  sub_29A014BEC(v89);
                }

                if (v36)
                {
LABEL_59:
                  sub_29A017F80(a4, &v70);
                  sub_29A42F734(&v94, &v70, &v70);
                }
              }

LABEL_60:
              if (*(&v70 + 1))
              {
                sub_29A014BEC(*(&v70 + 1));
              }

              if (v32)
              {
                sub_29A014BEC(v32);
              }
            }

            *&v70 = &v77;
            sub_29A0176E4(&v70);
          }

          if (v91)
          {
            sub_29A014BEC(v91);
          }

          if (v22)
          {
            sub_29A014BEC(v22);
          }

          goto LABEL_70;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = 0;
      goto LABEL_38;
    }

    for (k = v95[0]; k; k = *k)
    {
      v10 = k[4];
      if (v85 >= v10)
      {
        if (v10 >= v85)
        {
          goto LABEL_32;
        }

        ++k;
      }
    }

    v11 = *(a2 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = (*(*v85 + 64))(v85);
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = *(v12 + 23);
    }

    else
    {
      v14 = v12[1];
    }

    v15 = *(a2 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v14 == v15)
    {
      if (v13 < 0)
      {
        v12 = *v12;
      }

      v17 = v16 >= 0 ? a2 : *a2;
      if (!memcmp(v12, v17, v14))
      {
LABEL_25:
        v18 = *(a3 + 23);
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(a3 + 8);
        }

        if (!v18)
        {
          goto LABEL_31;
        }

        sub_29B1ED628(v85, a3, 0, &v77);
        v19 = v77;
        if (*(&v77 + 1))
        {
          sub_29A014BEC(*(&v77 + 1));
        }

        if (v19)
        {
LABEL_31:
          sub_29A017F80(a4, &v85);
          sub_29A42F734(&v94, &v85, &v85);
        }
      }
    }

LABEL_70:
    if (*(&v85 + 1))
    {
      sub_29A014BEC(*(&v85 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }

    v5 += 2;
  }

  while (v5 != v6);
  if (v92 != v93)
  {
    goto LABEL_143;
  }

LABEL_76:
  sub_29B1ED628(*a1, a3, 0, &v90);
  v37 = v90;
  if (!v90)
  {
    goto LABEL_141;
  }

  v38 = sub_29B1F31FC();
  sub_29B1C5CA8(v37, v38, &v88);
  v39 = v88;
  if (!v88)
  {
    goto LABEL_139;
  }

  v40 = sub_29B1F31FC();
  if (!sub_29AAC05D4(v39, v40))
  {
    goto LABEL_139;
  }

  sub_29B1D7FB0(v88, &v86);
  v41 = v90;
  v42 = sub_29B1F31FC();
  sub_29AAD856C(v41, v42, &v85);
  v43 = *(&v85 + 1);
  v44 = v85;
  if (v85 == *(&v85 + 1))
  {
    goto LABEL_137;
  }

  while (2)
  {
    v46 = *v44;
    v45 = *(v44 + 8);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = (*(*v46 + 8))(v46);
    v48 = strlen(off_2A14FDF10[0]);
    v49 = *(v47 + 23);
    if (v49 < 0)
    {
      if (v48 != v47[1])
      {
        goto LABEL_134;
      }

      if (v48 == -1)
      {
        sub_29A0F26CC();
      }

      v47 = *v47;
    }

    else if (v48 != v49)
    {
      goto LABEL_134;
    }

    if (memcmp(v47, off_2A14FDF10[0], v48))
    {
      goto LABEL_134;
    }

    sub_29AD9A124(v86, v46 + 6, &v83);
    sub_29B1DA55C(v83, &v70);
    if (v74 == v75)
    {
      sub_29B1F1C6C(&v70);
    }

    *(&v76 + 1) = 0;
    v77 = v70;
    if (*(&v70 + 1))
    {
      atomic_fetch_add_explicit((*(&v70 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v78 = v71;
    v79 = v72;
    if (v72)
    {
      atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29B1EBF20(v80, &v73);
    memset(v81, 0, sizeof(v81));
    sub_29B1D3464(v81, v74, v75, 0xAAAAAAAAAAAAAAABLL * (v75 - v74));
    v82 = v76;
    sub_29B1EBFEC(&v70);
    while (2)
    {
      v50 = sub_29B1F1C4C();
      if (!sub_29B1EBF78(&v77, v50))
      {
        v51 = v77;
        if (*(&v77 + 1))
        {
          atomic_fetch_add_explicit((*(&v77 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v51)
        {
          sub_29B1D7E50(v51, &v68);
          if (v68)
          {
            v52 = (*(*v68 + 64))(v68);
            v53 = strlen(off_2A14FDF10[0]);
            v54 = *(v52 + 23);
            if (v54 < 0)
            {
              if (v53 == v52[1])
              {
                if (v53 == -1)
                {
                  sub_29A0F26CC();
                }

                v52 = *v52;
                goto LABEL_108;
              }
            }

            else
            {
              if (v53 != v54)
              {
                goto LABEL_127;
              }

LABEL_108:
              if (!memcmp(v52, off_2A14FDF10[0], v53))
              {
                v55 = v69;
                v67[0] = v68;
                v67[1] = v69;
                if (v69)
                {
                  atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_29B1ECB8C(&v70, v67, a2, a3);
                v56 = v43;
                if (v55)
                {
                  sub_29A014BEC(v55);
                }

                v58 = *(&v70 + 1);
                for (m = v70; m != v58; m += 2)
                {
                  v59 = *m;
                  v60 = m[1];
                  *&v66 = *m;
                  *(&v66 + 1) = v60;
                  if (v60)
                  {
                    atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
                  }

                  for (n = v95[0]; n; n = *n)
                  {
                    v62 = n[4];
                    if (v59 >= v62)
                    {
                      if (v62 >= v59)
                      {
                        goto LABEL_123;
                      }

                      ++n;
                    }
                  }

                  sub_29A017F80(a4, &v66);
                  sub_29A42F734(&v94, &v66, &v66);
LABEL_123:
                  if (*(&v66 + 1))
                  {
                    sub_29A014BEC(*(&v66 + 1));
                  }
                }

                *&v66 = &v70;
                sub_29A0176E4(&v66);
                v43 = v56;
              }
            }
          }

LABEL_127:
          if (v69)
          {
            sub_29A014BEC(v69);
          }
        }

        else
        {
          LOBYTE(v82) = 1;
        }

        if (*(&v51 + 1))
        {
          sub_29A014BEC(*(&v51 + 1));
        }

        sub_29B1F1C6C(&v77);
        continue;
      }

      break;
    }

    sub_29B1EBFEC(&v77);
    if (v84)
    {
      sub_29A014BEC(v84);
    }

LABEL_134:
    if (v45)
    {
      sub_29A014BEC(v45);
    }

    v44 += 16;
    if (v44 != v43)
    {
      continue;
    }

    break;
  }

LABEL_137:
  *&v77 = &v85;
  sub_29A0176E4(&v77);
  if (v87)
  {
    sub_29A014BEC(v87);
  }

LABEL_139:
  if (v89)
  {
    sub_29A014BEC(v89);
  }

LABEL_141:
  if (v91)
  {
    sub_29A014BEC(v91);
  }

LABEL_143:
  *&v77 = &v92;
  sub_29A0176E4(&v77);
  sub_29A42FCE0(&v94, v95[0]);
}

void sub_29B1ED384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  v33 = *(v31 - 160);
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  v34 = *(v31 - 144);
  if (v34)
  {
    sub_29A014BEC(v34);
  }

  a31 = (v31 - 136);
  sub_29A0176E4(&a31);
  sub_29A42FCE0(v31 - 112, *(v31 - 104));
  a31 = a12;
  sub_29A0176E4(&a31);
  _Unwind_Resume(a1);
}

void sub_29B1ED59C(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  sub_29AAC1E24(a1, a2, &v4);
  if (v4)
  {
    (*(*v4 + 80))(v4);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29B1ED610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1ED628(std::string *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (sub_29AAD8460(a1))
  {
    v8 = sub_29AAD84E0(a1);
    v41 = 0;
    v42 = 0;
    sub_29B1C6430(a1, v8, &v41, a4);
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  else
  {
    sub_29B1D8ACC(a1, &p_p);
    v9 = p_p;
    sub_29AAE1890(a1, a1 + 1, &__p);
    sub_29B1C85B0(v9, &__p, &v39);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    if (v34)
    {
      sub_29A014BEC(v34);
    }

    sub_29B1D8ACC(a1, &p_p);
    sub_29B1C85B0(p_p, &a1[1].__r_.__value_.__l.__data_, &__p);
    if (v34)
    {
      sub_29A014BEC(v34);
    }

    p_p = 0;
    v34 = 0;
    v35 = 0;
    sub_29B1D4250(&v39, v40, __p, v37, (v37 - __p) >> 4);
    v10 = v39;
    v11 = v40;
    if (v39 != v40)
    {
      v12 = a3 ^ 1;
      do
      {
        v13 = *v10;
        *a4 = *v10;
        v14 = v10[1];
        a4[1] = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          v13 = *a4;
        }

        v15 = sub_29AAD8124(v13);
        if (sub_29B1DC438(v15, a2))
        {
          v16 = *a4;
          v17 = sub_29AAC5BF8(a1);
          if (sub_29B1C62B4(v16, v17))
          {
            v18 = (*(**a4 + 64))(*a4);
            v19 = (*(a1->__r_.__value_.__r.__words[0] + 64))(a1);
            v20 = *(v18 + 23);
            if (v20 >= 0)
            {
              v21 = *(v18 + 23);
            }

            else
            {
              v21 = *(v18 + 8);
            }

            v22 = *(v19 + 23);
            v23 = v22;
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(v19 + 8);
            }

            if (v21 == v22)
            {
              v24 = v20 >= 0 ? v18 : *v18;
              v25 = v23 >= 0 ? v19 : *v19;
              if (!memcmp(v24, v25, v21))
              {
                v26 = a4[1];
                v31 = *a4;
                v32 = v26;
                if (v26)
                {
                  atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v27 = sub_29B1EB85C(a1, &v31, 0);
                if (v32)
                {
                  sub_29A014BEC(v32);
                }

                if ((v27 | v12))
                {
                  if (v27)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  sub_29A017F80(&p_p, a4);
                }
              }
            }
          }
        }

        v28 = a4[1];
        if (v28)
        {
          sub_29A014BEC(v28);
        }

        v10 += 2;
      }

      while (v10 != v11);
    }

    v29 = p_p;
    if (p_p == v34)
    {
      *a4 = 0;
      a4[1] = 0;
    }

    else
    {
      *a4 = p_p->__vftable;
      shared_owners = v29->__shared_owners_;
      a4[1] = shared_owners;
      if (shared_owners)
      {
        atomic_fetch_add_explicit((shared_owners + 8), 1uLL, memory_order_relaxed);
      }
    }

LABEL_44:
    v43 = &p_p;
    sub_29A0176E4(&v43);
    p_p = &__p;
    sub_29A0176E4(&p_p);
    __p = &v39;
    sub_29A0176E4(&__p);
  }
}

void sub_29B1ED914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void **p_p, uint64_t a12, uint64_t a13, char *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v27 = *(v24 + 8);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  *(v25 - 72) = &p_p;
  sub_29A0176E4((v25 - 72));
  p_p = &__p;
  sub_29A0176E4(&p_p);
  __p = &a20;
  sub_29A0176E4(&__p);
  _Unwind_Resume(a1);
}

void sub_29B1ED9D0(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  if ((*(*a1 + 24))(a1) <= a2)
  {
    goto LABEL_24;
  }

  v6 = sub_29B1F31FC();
  sub_29AAD5940(a1, v6, v19);
  v7 = *(v19[0] + 16 * a2);
  v16 = v7;
  v8 = *(v19[0] + 16 * a2 + 8);
  if (v7.n128_u64[1])
  {
    atomic_fetch_add_explicit((v7.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
  }

  v20 = v19;
  sub_29A0176E4(&v20);
  (*(*v16.n128_u64[0] + 80))(v19, v16);
  v10 = v19[0];
  v9 = v19[1];
  if (v19[0])
  {
    sub_29B1D8C98(a1, &v17);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v18;
    a3->n128_u64[0] = v17;
    a3->n128_u64[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    a3[1] = v16;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    a3[2].n128_u64[0] = v10;
    a3[2].n128_u64[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v9);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (!v10)
  {
LABEL_24:
    v12 = sub_29B1F1808();
    v13 = *(v12 + 1);
    a3->n128_u64[0] = *v12;
    a3->n128_u64[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v12 + 3);
    a3[1].n128_u64[0] = *(v12 + 2);
    a3[1].n128_u64[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v12 + 5);
    a3[2].n128_u64[0] = *(v12 + 4);
    a3[2].n128_u64[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29B1EDBB0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EDBDC(std::string *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memset(&v27, 0, sizeof(v27));
  sub_29B1D7560(*a2, &v25);
  if (!v25)
  {
    goto LABEL_36;
  }

  v6 = sub_29B1D2448(v25);
  std::string::operator=(&v27, v6);
  sub_29B1D7C40(*a2, &v23);
  if (v23)
  {
    sub_29B1E9A10(v23, &v21);
    if (v21)
    {
      (*(*v21 + 72))(&v19);
      v8 = v19;
      v7 = v20;
      v9 = sub_29B1D2448(v21);
      std::string::operator=(&v27, v9);
    }

    else
    {
      (*(*v23 + 72))(&v19);
      v8 = v19;
      v7 = v20;
    }

    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (v8)
    {
      if (v23)
      {
        goto LABEL_10;
      }

      v13 = *(v8 + 232);
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        if (v14)
        {
          v15 = *(v8 + 224);
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      sub_29B1D87A8(v8, &v21);
      v16 = v21;
      if (v22)
      {
        sub_29A014BEC(v22);
      }

      if (v14)
      {
        sub_29A014BEC(v14);
      }

      if (v15 == v16)
      {
LABEL_10:
        v10 = sub_29B1D2448(v8);
        v11 = *(v10 + 23);
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v10 + 1);
        }

        if (v11)
        {
          v12 = sub_29B1D2448(v8);
          std::string::operator=(&v27, v12);
        }
      }
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }

  size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_36;
  }

  v18 = sub_29B1F31FC();
  sub_29B1ED628(a1, v18, 0, &v23);
  if (!v23)
  {
    if (v24)
    {
      sub_29A014BEC(v24);
    }

LABEL_36:
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_37;
  }

  sub_29B1EA948(v23, &v27.__r_.__value_.__l.__data_, a3);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

LABEL_37:
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_29B1EDE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EDECC(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29B1D8ACC(a1, &v18);
  v4 = v18;
  sub_29AAE1890(a1, a1 + 2, __p);
  sub_29B1C79C8(v4, __p, &v20);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  v5 = v20;
  for (i = v21; v5 != i; v5 += 16)
  {
    v7 = *v5;
    v8 = *(v5 + 8);
    __p[0] = *v5;
    __p[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 80))(&v18);
    sub_29A014C58(&v14, &a1->__r_.__value_.__l.__size_);
    v9 = v18;
    v10 = v14;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }

    if (v9 == v10)
    {
      sub_29A017F80(a2, __p);
    }

    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  __p[0] = &v20;
  sub_29A0176E4(__p);
  v11 = *(a2 + 8);
  v12 = 126 - 2 * __clz((v11 - *a2) >> 4);
  if (v11 == *a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_29B1EF4FC(*a2, v11, v13, 1);
}

void sub_29B1EE038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, char a19)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29A0176E4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1EE0B8(uint64_t a1, std::string *a2)
{
  v21 = 1;
  v4 = *(a1 + 47);
  if (v4 < 0)
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 != 0;
  sub_29A008E78(&__p, "Node element is missing a category");
  sub_29B1DA93C(a1, v5, &v21, a2, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = sub_29B1C6234(a1);
  sub_29A008E78(&__p, "Node element is missing a type");
  sub_29B1DA93C(a1, v6, &v21, a2, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_29B1F31FC();
  sub_29B1ED628(a1, v7, 1, &v18);
  if (v18)
  {
    memset(&__p, 0, sizeof(__p));
    v16 = v18;
    v17 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = sub_29B1EB85C(a1, &v16, &__p);
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    std::operator+<char>();
    sub_29B1DA93C(a1, v8, &v21, a2, &v13);
    if (v15 < 0)
    {
      operator delete(v13);
    }
  }

  else
  {
    sub_29B1D8ACC(a1, &v13);
    sub_29B1C85B0(v13, (a1 + 24), &__p);
    v9 = *&__p.__r_.__value_.__l.__data_;
    p_p = &__p;
    sub_29A0176E4(&p_p);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    sub_29A008E78(&__p, "Node interface doesn't support this output type");
    sub_29B1DA93C(a1, v9 == *(&v9 + 1), &v21, a2, &__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = sub_29B1DA6C4(a1, a2);
  v11 = v21;
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  return v10 & v11;
}

void sub_29B1EE2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EE360(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*a3)
  {
    goto LABEL_11;
  }

  v8 = (*(**a3 + 64))(*a3);
  v9 = strlen(off_2A14FDF00[0]);
  v10 = *(v8 + 23);
  if (v10 < 0)
  {
    if (v9 != v8[1])
    {
LABEL_11:
      v12 = off_2A14FDF18;
      goto LABEL_12;
    }

    if (v9 == -1)
    {
      sub_29A0F26CC();
    }

    v8 = *v8;
  }

  else if (v9 != v10)
  {
    goto LABEL_11;
  }

  v11 = memcmp(v8, off_2A14FDF00[0], v9);
  v12 = off_2A14FDF20;
  if (v11)
  {
    v12 = off_2A14FDF18;
  }

LABEL_12:
  sub_29A008E78(&v21, *v12);
  sub_29A008E78(&__p, off_2A14FDF10[0]);
  sub_29AD9617C(a1, &v21, a2, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*a3)
  {
    v13 = *a4;
    v14 = (*(**a3 + 64))(*a3);
    v15 = (*(**a3 + 64))();
    sub_29AD99948(v13, v14, v15, &__p);
    v16 = __p.__r_.__value_.__r.__words[0];
    v17 = a3[1];
    v18 = *a3;
    v19 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1E81A4(v16, &v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__p.__r_.__value_.__l.__size_);
    }
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_29B1EE558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  v24 = *(v22 + 8);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B1EE5C0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE30[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v3 = (v2 + 5);
  }

  else
  {
    v3 = sub_29B1F31FC();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29B1EE630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EE64C(void *a1@<X0>, const void **a2@<X1>, std::string *a3@<X2>, const std::string *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_29AAC1E24(a1, a2, a5);
  v10 = *a5;
  if (!*a5)
  {
    v11 = sub_29B1F2B94();
    sub_29AD99948(a1, a2, v11, &v14);
    v12 = v14;
    v14 = 0uLL;
    v13 = a5[1];
    *a5 = v12;
    if (v13)
    {
      sub_29A014BEC(v13);
      if (*(&v14 + 1))
      {
        sub_29A014BEC(*(&v14 + 1));
      }
    }

    v10 = *a5;
  }

  sub_29AD99994(v10, a3, a4);
}

void sub_29B1EE6EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B1EE708(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC10[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v3 = (v2 + 5);
  }

  else
  {
    v3 = sub_29B1F31FC();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29B1EE778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EE794(std::string *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29AAC1E24(a1, a2, a3);
  if (!*a3)
  {
    v6 = sub_29B1F31FC();
    sub_29B1ED628(a1, v6, 0, &v16);
    if (v16)
    {
      sub_29B1EA508(v16, a2, &v14);
      v7 = v14;
      if (v14)
      {
        v8 = (*(*v14 + 64))(v14);
        sub_29AD99948(a1, v7 + 48, v8, &v13);
        v9 = v13;
        v13 = 0uLL;
        v10 = a3[1];
        *a3 = v9;
        if (v10)
        {
          sub_29A014BEC(v10);
          if (*(&v13 + 1))
          {
            sub_29A014BEC(*(&v13 + 1));
          }
        }

        if (sub_29AE151F0(v14))
        {
          v11 = *a3;
          v12 = sub_29AAC0680(v14);
          sub_29AD99E08(v11, v12);
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }
}

void sub_29B1EE8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EE8F4(std::string *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_29AAD84E0(a1);
  v25 = 0;
  v26 = 0;
  sub_29B1C6430(a1, v4, &v25, a2);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (!*a2)
  {
    sub_29B1D8ACC(a1, __p);
    v5 = __p[0];
    v6 = sub_29B1F31FC();
    sub_29B1EF3C0(v5, v6, &v23);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

    v7 = v23;
    v8 = v24;
    while (v7 != v8)
    {
      v10 = *v7;
      v9 = v7[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = sub_29B1D36B4(v10);
      sub_29AAE1890(a1, a1 + 2, __p);
      v12 = *(v11 + 23);
      if (v12 >= 0)
      {
        v13 = *(v11 + 23);
      }

      else
      {
        v13 = *(v11 + 1);
      }

      v14 = v22;
      v15 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v14 = __p[1];
      }

      if (v13 == v14)
      {
        if (v12 >= 0)
        {
          v16 = v11;
        }

        else
        {
          v16 = *v11;
        }

        if ((v22 & 0x80u) == 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        v18 = memcmp(v16, v17, v13) == 0;
        if ((v15 & 0x80000000) == 0)
        {
LABEL_24:
          if (v18)
          {
            goto LABEL_27;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v18 = 0;
        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      operator delete(__p[0]);
      if (v18)
      {
LABEL_27:
        sub_29B1C63C4(v10, __p);
        v19 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v20 = a2[1];
        *a2 = v19;
        if (v20)
        {
          sub_29A014BEC(v20);
          if (__p[1])
          {
            sub_29A014BEC(__p[1]);
          }
        }
      }

LABEL_30:
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      v7 += 2;
    }

    __p[0] = &v23;
    sub_29A0176E4(__p);
  }
}

void sub_29B1EEAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *(v16 + 8);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1EEB18(std::string *a1, std::string *a2)
{
  v31 = 1;
  v4 = sub_29B1C6608(a1);
  sub_29A008E78(&__p, "NodeGraph elements do not support version strings");
  sub_29B1DA93C(a1, !v4, &v31, a2, &__p);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (sub_29AAD8460(a1))
  {
    sub_29B1EE8F4(a1, &v26);
    v5 = v26;
    sub_29A008E78(&__p, "NodeGraph implementation refers to non-existent NodeDef");
    sub_29B1DA93C(a1, v5 != 0, &v31, a2, &__p);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      v6 = sub_29B1F31FC();
      sub_29AAD856C(a1, v6, &__p);
      sub_29B1EAB28(v26, &p_p);
      v8 = __p;
      v7 = v29;
      v10 = p_p;
      v9 = v25;
      sub_29A008E78(v22, "NodeGraph implementation has a different number of outputs than its NodeDef");
      sub_29B1DA93C(a1, v7 - v8 == v9 - v10, &v31, a2, v22);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (v29 - __p == 16 && v25 - p_p == 16)
      {
        v11 = (*(**__p + 64))();
        v12 = (*(**p_p + 64))();
        v13 = *(v11 + 23);
        if (v13 >= 0)
        {
          v14 = *(v11 + 23);
        }

        else
        {
          v14 = *(v11 + 8);
        }

        v15 = *(v12 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v12 + 8);
        }

        if (v14 == v15)
        {
          if (v13 >= 0)
          {
            v17 = v11;
          }

          else
          {
            v17 = *v11;
          }

          if (v16 >= 0)
          {
            v18 = v12;
          }

          else
          {
            v18 = *v12;
          }

          v19 = memcmp(v17, v18, v14) == 0;
        }

        else
        {
          v19 = 0;
        }

        sub_29A008E78(v22, "NodeGraph implementation has a different output type than its NodeDef");
        sub_29B1DA93C(a1, v19, &v31, a2, v22);
        if (v23 < 0)
        {
          operator delete(v22[0]);
        }
      }

      v22[0] = &p_p;
      sub_29A0176E4(v22);
      p_p = &__p;
      sub_29A0176E4(&p_p);
    }

    if (v27)
    {
      sub_29A014BEC(v27);
    }
  }

  v20 = sub_29B1DA6C4(a1, a2);
  return (v20 & v31);
}

void sub_29B1EEDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void ***__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_29A0176E4(&__p);
  a15 = &a20;
  sub_29A0176E4(&a15);
  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(a1);
}

void sub_29B1EEE58(std::string *a1@<X0>, void *a2@<X8>)
{
  sub_29B1EE8F4(a1, &v5);
  v4 = v6;
  if (v5)
  {
    *a2 = v5;
    a2[1] = v4;
  }

  else
  {
    if (sub_29AAD8460(a1))
    {
      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      sub_29A014C58(&v5, &a1->__r_.__value_.__l.__size_);
      sub_29B1D74B0(v5, a2);
      if (v6)
      {
        sub_29A014BEC(v6);
      }
    }

    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }
}

void sub_29B1EEEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EEF18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29B1E82CC(a1, &v9);
  if (v9)
  {
    sub_29A008E78(__p, qword_2A14FDEB8);
    sub_29B1E6AF4(a1, __p, v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = v8[0];
    v5 = v8[1];
    while (v4 != v5)
    {
      sub_29B1EF064(v9, v4, __p);
      if (__p[0])
      {
        sub_29A017F80(a2, __p);
      }

      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }

      v4 += 3;
    }

    __p[0] = v8;
    sub_29A012C90(__p);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29B1EEFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  sub_29A0176E4(&__p);
  _Unwind_Resume(a1);
}

void sub_29B1EF064(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D7610(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29B1EF0E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1EF100(uint64_t a1, std::string *a2)
{
  v15 = 1;
  if (sub_29B1EF27C(a1))
  {
    sub_29A008E78(__p, "contains");
    sub_29B1E6AF4(a1, __p, v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B1EEF18(a1, __p);
    v5 = v14[0];
    v4 = v14[1];
    v7 = __p[0];
    v6 = __p[1];
    sub_29A008E78(v10, "Invalid element in contains string");
    sub_29B1DA93C(a1, 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) == (v6 - v7) >> 4, &v15, a2, v10);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    v10[0] = __p;
    sub_29A0176E4(v10);
    __p[0] = v14;
    sub_29A012C90(__p);
  }

  v8 = sub_29B1DA6C4(a1, a2);
  return (v8 & v15);
}

void sub_29B1EF218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_29A0176E4(&__p);
  a15 = &a18;
  sub_29A012C90(&a15);
  _Unwind_Resume(a1);
}

void sub_29B1EF264(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29B1EF25CLL);
}

BOOL sub_29B1EF27C(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDEB8);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1EF2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1EF2FC(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

double sub_29B1EF32C@<D0>(std::string *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1ED628(a1, a2, 0, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

void sub_29B1EF36C(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1EF398(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1EF3C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D7B90(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29B1EF4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void sub_29B1EF4FC(uint64_t *j, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v486 = a2 - 2;
  while (1)
  {
    v7 = j;
    v8 = (v6 - j) >> 4;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          sub_29B1F0AB4(j, j + 2, v486);
          return;
        case 4:

          sub_29B1F0EAC(j, j + 2, j + 4, v486);
          return;
        case 5:

          sub_29B1F1128(j, j + 2, j + 4, j + 6, v486);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      v6 = a2;
      if (v8 == 2)
      {
        v210 = *(a2 - 2);
        v211 = *(a2 - 1);
        if (v211)
        {
          atomic_fetch_add_explicit(&v211->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v212 = *j;
        v213 = j[1];
        if (v213)
        {
          atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v216 = *(v210 + 48);
        v214 = v210 + 48;
        v215 = v216;
        v217 = *(v214 + 23);
        v220 = *(v212 + 48);
        v218 = v212 + 48;
        v219 = v220;
        v221 = *(v218 + 23);
        if (v221 >= 0)
        {
          v222 = *(v218 + 23);
        }

        else
        {
          v222 = *(v218 + 8);
        }

        if (v221 >= 0)
        {
          v223 = v218;
        }

        else
        {
          v223 = v219;
        }

        if (v217 >= 0)
        {
          v224 = *(v214 + 23);
        }

        else
        {
          v224 = *(v214 + 8);
        }

        if (v217 >= 0)
        {
          v225 = v214;
        }

        else
        {
          v225 = v215;
        }

        if (v224 >= v222)
        {
          v226 = v222;
        }

        else
        {
          v226 = v224;
        }

        v227 = memcmp(v223, v225, v226);
        if (v227)
        {
          v228 = v227 < 0;
        }

        else
        {
          v228 = v222 < v224;
        }

        if (v213)
        {
          sub_29A014BEC(v213);
        }

        if (v211)
        {
          sub_29A014BEC(v211);
        }

        if (v228)
        {
          v229 = *j;
          *j = *(a2 - 2);
          *(a2 - 2) = v229;
          v230 = j[1];
          j[1] = *(a2 - 1);
          *(a2 - 1) = v230;
        }

        return;
      }
    }

    v495 = j;
    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (j == v6)
      {
        return;
      }

      v278 = (v8 - 2) >> 1;
      v279 = v278;
      while (1)
      {
        v280 = v279;
        if (v278 < v279)
        {
          goto LABEL_615;
        }

        v483 = v279;
        v281 = (2 * v279) | 1;
        v282 = &v495[2 * v281];
        v283 = 2 * v279 + 2;
        if (v283 >= v8)
        {
          goto LABEL_524;
        }

        v284 = *v282;
        v285 = v282[1];
        if (v285)
        {
          atomic_fetch_add_explicit(&v285->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v286 = v281;
        v287 = v282[2];
        v288 = v282[3];
        if (v288)
        {
          atomic_fetch_add_explicit(&v288->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v291 = *(v284 + 48);
        v289 = v284 + 48;
        v290 = v291;
        v292 = *(v289 + 23);
        v295 = *(v287 + 48);
        v293 = v287 + 48;
        v294 = v295;
        v296 = *(v293 + 23);
        if (v296 >= 0)
        {
          v297 = *(v293 + 23);
        }

        else
        {
          v297 = *(v293 + 8);
        }

        if (v296 >= 0)
        {
          v298 = v293;
        }

        else
        {
          v298 = v294;
        }

        if (v292 >= 0)
        {
          v299 = *(v289 + 23);
        }

        else
        {
          v299 = *(v289 + 8);
        }

        if (v292 >= 0)
        {
          v300 = v289;
        }

        else
        {
          v300 = v290;
        }

        if (v299 >= v297)
        {
          v301 = v297;
        }

        else
        {
          v301 = v299;
        }

        v302 = memcmp(v298, v300, v301);
        if (v302)
        {
          v303 = v302 < 0;
        }

        else
        {
          v303 = v297 < v299;
        }

        if (v288)
        {
          sub_29A014BEC(v288);
        }

        v281 = v286;
        if (!v285)
        {
          break;
        }

        sub_29A014BEC(v285);
        if (v303)
        {
          goto LABEL_523;
        }

LABEL_524:
        v304 = *v282;
        v305 = v282[1];
        if (v305)
        {
          atomic_fetch_add_explicit(&v305->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v306 = &v495[2 * v483];
        v307 = *v306;
        v308 = v306[1];
        if (v308)
        {
          atomic_fetch_add_explicit(&v308->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v311 = *(v304 + 48);
        v309 = v304 + 48;
        v310 = v311;
        v312 = *(v309 + 23);
        v315 = *(v307 + 48);
        v313 = v307 + 48;
        v314 = v315;
        v316 = *(v313 + 23);
        if (v316 >= 0)
        {
          v317 = *(v313 + 23);
        }

        else
        {
          v317 = *(v313 + 8);
        }

        if (v316 >= 0)
        {
          v318 = v313;
        }

        else
        {
          v318 = v314;
        }

        if (v312 >= 0)
        {
          v319 = *(v309 + 23);
        }

        else
        {
          v319 = *(v309 + 8);
        }

        if (v312 >= 0)
        {
          v320 = v309;
        }

        else
        {
          v320 = v310;
        }

        if (v319 >= v317)
        {
          v321 = v317;
        }

        else
        {
          v321 = v319;
        }

        v322 = memcmp(v318, v320, v321);
        if (v322)
        {
          v323 = v322 < 0;
        }

        else
        {
          v323 = v317 < v319;
        }

        v278 = (v8 - 2) >> 1;
        if (v308)
        {
          sub_29A014BEC(v308);
        }

        if (v305)
        {
          sub_29A014BEC(v305);
        }

        v280 = v483;
        if (!v323)
        {
          v324 = *v306;
          v325 = v306[1];
          *v306 = 0;
          v306[1] = 0;
          v490 = v324;
          v487 = (v324 + 48);
          while (1)
          {
            v326 = v306;
            v306 = v282;
            v327 = *v282;
            *v282 = 0;
            v282[1] = 0;
            v328 = v326[1];
            *v326 = v327;
            if (v328)
            {
              sub_29A014BEC(v328);
            }

            if (v278 < v281)
            {
LABEL_613:
              v362 = v306[1];
              *v306 = v490;
              v306[1] = v325;
              v280 = v483;
              if (v362)
              {
                sub_29A014BEC(v362);
              }

              break;
            }

            v282 = &v495[2 * ((2 * v281) | 1)];
            v493 = (2 * v281) | 1;
            if (2 * v281 + 2 < v8)
            {
              v329 = *v282;
              v330 = v282[1];
              if (v330)
              {
                atomic_fetch_add_explicit(&v330->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v331 = v282[2];
              v332 = v282[3];
              if (v332)
              {
                atomic_fetch_add_explicit(&v332->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v335 = *(v329 + 48);
              v333 = v329 + 48;
              v334 = v335;
              v336 = *(v333 + 23);
              v339 = *(v331 + 48);
              v337 = v331 + 48;
              v338 = v339;
              v340 = *(v337 + 23);
              if (v340 >= 0)
              {
                v341 = *(v337 + 23);
              }

              else
              {
                v341 = *(v337 + 8);
              }

              if (v340 >= 0)
              {
                v342 = v337;
              }

              else
              {
                v342 = v338;
              }

              if (v336 >= 0)
              {
                v343 = *(v333 + 23);
              }

              else
              {
                v343 = *(v333 + 8);
              }

              if (v336 >= 0)
              {
                v344 = v333;
              }

              else
              {
                v344 = v334;
              }

              if (v343 >= v341)
              {
                v345 = v341;
              }

              else
              {
                v345 = v343;
              }

              v346 = memcmp(v342, v344, v345);
              if (v346)
              {
                v347 = v346 < 0;
              }

              else
              {
                v347 = v341 < v343;
              }

              if (v332)
              {
                sub_29A014BEC(v332);
              }

              v278 = (v8 - 2) >> 1;
              if (!v330)
              {
                if (!v347)
                {
                  goto LABEL_583;
                }

LABEL_582:
                v282 += 2;
                v493 = 2 * v281 + 2;
                goto LABEL_583;
              }

              sub_29A014BEC(v330);
              if (v347)
              {
                goto LABEL_582;
              }
            }

LABEL_583:
            v348 = *v282;
            v349 = v282[1];
            if (v349)
            {
              atomic_fetch_add_explicit(&v349->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v325)
            {
              atomic_fetch_add_explicit(&v325->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v352 = *(v348 + 48);
            v350 = v348 + 48;
            v351 = v352;
            v353 = *(v350 + 23);
            v354 = *(v490 + 71);
            if (v354 >= 0)
            {
              v355 = *(v490 + 71);
            }

            else
            {
              v355 = *(v490 + 56);
            }

            if (v354 >= 0)
            {
              v356 = v487;
            }

            else
            {
              v356 = *(v490 + 48);
            }

            if (v353 >= 0)
            {
              v357 = *(v350 + 23);
            }

            else
            {
              v357 = *(v350 + 8);
            }

            if (v353 >= 0)
            {
              v358 = v350;
            }

            else
            {
              v358 = v351;
            }

            if (v357 >= v355)
            {
              v359 = v355;
            }

            else
            {
              v359 = v357;
            }

            v360 = memcmp(v356, v358, v359);
            if (v360)
            {
              v361 = v360 < 0;
            }

            else
            {
              v361 = v355 < v357;
            }

            if (v325)
            {
              sub_29A014BEC(v325);
            }

            v281 = v493;
            if (v349)
            {
              sub_29A014BEC(v349);
            }

            if (v361)
            {
              goto LABEL_613;
            }
          }
        }

LABEL_615:
        v279 = v280 - 1;
        if (!v280)
        {
          v363 = v495;
          while (1)
          {
            v364 = v363;
            v365 = 0;
            v485 = *v363;
            v488 = a2;
            v491 = v363[1];
            *v363 = 0;
            v363[1] = 0;
            v366 = (v8 - 2) >> 1;
            v494 = v366;
            do
            {
              v367 = &v364[2 * v365];
              v368 = v367 + 2;
              v369 = 2 * v365;
              v365 = (2 * v365) | 1;
              v370 = v369 + 2;
              if (v369 + 2 >= v8)
              {
                goto LABEL_648;
              }

              v371 = v367[2];
              v372 = v367[3];
              if (v372)
              {
                atomic_fetch_add_explicit(&v372->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v373 = v8;
              v374 = v367[4];
              v375 = v367[5];
              v376 = v367 + 4;
              if (v375)
              {
                atomic_fetch_add_explicit(&v375->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v379 = *(v371 + 48);
              v377 = v371 + 48;
              v378 = v379;
              v380 = *(v377 + 23);
              v383 = *(v374 + 48);
              v381 = v374 + 48;
              v382 = v383;
              v384 = *(v381 + 23);
              if (v384 >= 0)
              {
                v385 = *(v381 + 23);
              }

              else
              {
                v385 = *(v381 + 8);
              }

              if (v384 >= 0)
              {
                v386 = v381;
              }

              else
              {
                v386 = v382;
              }

              if (v380 >= 0)
              {
                v387 = *(v377 + 23);
              }

              else
              {
                v387 = *(v377 + 8);
              }

              if (v380 >= 0)
              {
                v388 = v377;
              }

              else
              {
                v388 = v378;
              }

              if (v387 >= v385)
              {
                v389 = v385;
              }

              else
              {
                v389 = v387;
              }

              v390 = memcmp(v386, v388, v389);
              if (v390)
              {
                v391 = v390 < 0;
              }

              else
              {
                v391 = v385 < v387;
              }

              if (v375)
              {
                sub_29A014BEC(v375);
              }

              v8 = v373;
              if (v372)
              {
                sub_29A014BEC(v372);
                v366 = v494;
                if (!v391)
                {
                  goto LABEL_648;
                }

LABEL_647:
                v368 = v376;
                v365 = v370;
                goto LABEL_648;
              }

              v366 = v494;
              if (v391)
              {
                goto LABEL_647;
              }

LABEL_648:
              v392 = *v368;
              *v368 = 0;
              v368[1] = 0;
              v393 = v364[1];
              *v364 = v392;
              if (v393)
              {
                sub_29A014BEC(v393);
              }

              v364 = v368;
            }

            while (v365 <= v366);
            v394 = a2 - 2;
            a2 -= 2;
            if (v368 == v488 - 2)
            {
              v441 = v368[1];
              *v368 = v485;
              v368[1] = v491;
              goto LABEL_720;
            }

            v395 = *(v488 - 1);
            *v394 = 0;
            v394[1] = 0;
            v396 = v368[1];
            *v368 = v395;
            v363 = v495;
            if (v396)
            {
              sub_29A014BEC(v396);
            }

            v397 = *(v488 - 1);
            *(v488 - 2) = v485;
            *(v488 - 1) = v491;
            if (v397)
            {
              sub_29A014BEC(v397);
            }

            v398 = ((v368 + 2) - v495) >> 4;
            v399 = v398 < 2;
            v400 = v398 - 2;
            if (!v399)
            {
              v401 = v400 >> 1;
              v402 = &v495[2 * (v400 >> 1)];
              v403 = *v402;
              v404 = v402[1];
              if (v404)
              {
                atomic_fetch_add_explicit(&v404->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v405 = *v368;
              v406 = v368[1];
              if (v406)
              {
                atomic_fetch_add_explicit(&v406->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v409 = *(v403 + 48);
              v407 = v403 + 48;
              v408 = v409;
              v410 = *(v407 + 23);
              v413 = *(v405 + 48);
              v411 = v405 + 48;
              v412 = v413;
              v414 = *(v411 + 23);
              if (v414 >= 0)
              {
                v415 = *(v411 + 23);
              }

              else
              {
                v415 = *(v411 + 8);
              }

              if (v414 >= 0)
              {
                v416 = v411;
              }

              else
              {
                v416 = v412;
              }

              if (v410 >= 0)
              {
                v417 = *(v407 + 23);
              }

              else
              {
                v417 = *(v407 + 8);
              }

              if (v410 >= 0)
              {
                v418 = v407;
              }

              else
              {
                v418 = v408;
              }

              if (v417 >= v415)
              {
                v419 = v415;
              }

              else
              {
                v419 = v417;
              }

              v420 = memcmp(v416, v418, v419);
              if (v420)
              {
                v421 = v420 < 0;
              }

              else
              {
                v421 = v415 < v417;
              }

              if (v406)
              {
                sub_29A014BEC(v406);
              }

              if (v404)
              {
                sub_29A014BEC(v404);
              }

              if (v421)
              {
                v423 = *v368;
                v422 = v368[1];
                *v368 = 0;
                v368[1] = 0;
                do
                {
                  v424 = v368;
                  v368 = v402;
                  v425 = *v402;
                  *v402 = 0;
                  v402[1] = 0;
                  v426 = v424[1];
                  *v424 = v425;
                  if (v426)
                  {
                    sub_29A014BEC(v426);
                  }

                  if (!v401)
                  {
                    break;
                  }

                  v401 = (v401 - 1) >> 1;
                  v402 = &v495[2 * v401];
                  v427 = *v402;
                  v428 = v402[1];
                  if (v428)
                  {
                    atomic_fetch_add_explicit(&v428->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v422)
                  {
                    atomic_fetch_add_explicit(&v422->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v431 = *(v427 + 48);
                  v429 = v427 + 48;
                  v430 = v431;
                  v432 = *(v429 + 23);
                  v433 = *(v423 + 71);
                  if (v433 >= 0)
                  {
                    v434 = *(v423 + 71);
                  }

                  else
                  {
                    v434 = *(v423 + 56);
                  }

                  if (v433 >= 0)
                  {
                    v435 = (v423 + 48);
                  }

                  else
                  {
                    v435 = *(v423 + 48);
                  }

                  if (v432 >= 0)
                  {
                    v436 = *(v429 + 23);
                  }

                  else
                  {
                    v436 = *(v429 + 8);
                  }

                  if (v432 >= 0)
                  {
                    v437 = v429;
                  }

                  else
                  {
                    v437 = v430;
                  }

                  if (v436 >= v434)
                  {
                    v438 = v434;
                  }

                  else
                  {
                    v438 = v436;
                  }

                  v439 = memcmp(v435, v437, v438);
                  if (v439)
                  {
                    v440 = v439 < 0;
                  }

                  else
                  {
                    v440 = v434 < v436;
                  }

                  if (v422)
                  {
                    sub_29A014BEC(v422);
                  }

                  if (v428)
                  {
                    sub_29A014BEC(v428);
                  }
                }

                while (v440);
                v441 = v368[1];
                *v368 = v423;
                v368[1] = v422;
LABEL_720:
                v363 = v495;
                if (v441)
                {
                  sub_29A014BEC(v441);
                }
              }
            }

            v399 = v8-- <= 2;
            if (v399)
            {
              return;
            }
          }
        }
      }

      if (!v303)
      {
        goto LABEL_524;
      }

LABEL_523:
      v282 += 2;
      v281 = v283;
      goto LABEL_524;
    }

    v9 = &j[2 * (v8 >> 1)];
    if (v8 < 0x81)
    {
      sub_29B1F0AB4(&v7[2 * (v8 >> 1)], v7, v486);
    }

    else
    {
      sub_29B1F0AB4(v7, &v7[2 * (v8 >> 1)], v486);
      sub_29B1F0AB4(v7 + 2, v9 - 2, a2 - 4);
      v10 = &v7[2 * (v8 >> 1) + 2];
      sub_29B1F0AB4(v495 + 4, v10, a2 - 6);
      v7 = v495;
      sub_29B1F0AB4(v9 - 2, v9, v10);
      v11 = *v495;
      *v495 = *v9;
      *v9 = v11;
    }

    --a3;
    if (a4)
    {
      goto LABEL_41;
    }

    v12 = *(v7 - 2);
    v13 = *(v7 - 1);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *v7;
    v15 = v7[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(v12 + 48);
    v16 = v12 + 48;
    v17 = v18;
    v19 = *(v16 + 23);
    v22 = *(v14 + 48);
    v20 = v14 + 48;
    v21 = v22;
    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    if (v23 >= 0)
    {
      v25 = v20;
    }

    else
    {
      v25 = v21;
    }

    if (v19 >= 0)
    {
      v26 = *(v16 + 23);
    }

    else
    {
      v26 = *(v16 + 8);
    }

    if (v19 >= 0)
    {
      v27 = v16;
    }

    else
    {
      v27 = v17;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    if (v29)
    {
      v30 = v29 >= 0;
    }

    else
    {
      v30 = v24 >= v26;
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v13)
    {
      sub_29A014BEC(v13);
      if (v30)
      {
        goto LABEL_202;
      }

LABEL_41:
      v31 = 0;
      v32 = *v7;
      v33 = v7[1];
      *v7 = 0;
      v7[1] = 0;
      do
      {
        v34 = v7[v31 + 2];
        v35 = v7[v31 + 3];
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = *(v34 + 48);
        v36 = v34 + 48;
        v37 = v38;
        v39 = *(v36 + 23);
        v40 = *(v32 + 71);
        if (v40 >= 0)
        {
          v41 = *(v32 + 71);
        }

        else
        {
          v41 = *(v32 + 56);
        }

        if (v40 >= 0)
        {
          v42 = (v32 + 48);
        }

        else
        {
          v42 = *(v32 + 48);
        }

        if (v39 >= 0)
        {
          v43 = *(v36 + 23);
        }

        else
        {
          v43 = *(v36 + 8);
        }

        if (v39 >= 0)
        {
          v44 = v36;
        }

        else
        {
          v44 = v37;
        }

        if (v43 >= v41)
        {
          v45 = v41;
        }

        else
        {
          v45 = v43;
        }

        v46 = memcmp(v42, v44, v45);
        if (v46)
        {
          v47 = v46 < 0;
        }

        else
        {
          v47 = v41 < v43;
        }

        if (v33)
        {
          sub_29A014BEC(v33);
        }

        if (v35)
        {
          sub_29A014BEC(v35);
        }

        v31 += 2;
      }

      while (v47);
      v48 = &v7[v31];
      i = a2;
      if (v31 == 2)
      {
        i = a2;
        if (v48 < a2)
        {
          for (i = a2 - 2; ; i -= 2)
          {
            v64 = *i;
            v65 = i[1];
            if (v65)
            {
              atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v68 = *(v64 + 48);
            v66 = v64 + 48;
            v67 = v68;
            v69 = *(v66 + 23);
            v70 = *(v32 + 71);
            if (v70 >= 0)
            {
              v71 = *(v32 + 71);
            }

            else
            {
              v71 = *(v32 + 56);
            }

            if (v70 >= 0)
            {
              v72 = (v32 + 48);
            }

            else
            {
              v72 = *(v32 + 48);
            }

            if (v69 >= 0)
            {
              v73 = *(v66 + 23);
            }

            else
            {
              v73 = *(v66 + 8);
            }

            if (v69 >= 0)
            {
              v74 = v66;
            }

            else
            {
              v74 = v67;
            }

            if (v73 >= v71)
            {
              v75 = v71;
            }

            else
            {
              v75 = v73;
            }

            v76 = memcmp(v72, v74, v75);
            if (v76)
            {
              v77 = v76 >= 0;
            }

            else
            {
              v77 = v71 >= v73;
            }

            if (v33)
            {
              sub_29A014BEC(v33);
            }

            if (v65)
            {
              sub_29A014BEC(v65);
              if (v48 >= i || !v77)
              {
                break;
              }
            }

            else
            {
              v79 = !v77;
              if (v48 >= i)
              {
                v79 = 1;
              }

              if (v79)
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        do
        {
          v50 = *(i - 2);
          v51 = *(i - 1);
          i -= 2;
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v54 = *(v50 + 48);
          v52 = v50 + 48;
          v53 = v54;
          v55 = *(v52 + 23);
          v56 = *(v32 + 71);
          if (v56 >= 0)
          {
            v57 = *(v32 + 71);
          }

          else
          {
            v57 = *(v32 + 56);
          }

          if (v56 >= 0)
          {
            v58 = (v32 + 48);
          }

          else
          {
            v58 = *(v32 + 48);
          }

          if (v55 >= 0)
          {
            v59 = *(v52 + 23);
          }

          else
          {
            v59 = *(v52 + 8);
          }

          if (v55 >= 0)
          {
            v60 = v52;
          }

          else
          {
            v60 = v53;
          }

          if (v59 >= v57)
          {
            v61 = v57;
          }

          else
          {
            v61 = v59;
          }

          v62 = memcmp(v58, v60, v61);
          if (v62)
          {
            v63 = v62 < 0;
          }

          else
          {
            v63 = v57 < v59;
          }

          if (v33)
          {
            sub_29A014BEC(v33);
          }

          if (v51)
          {
            sub_29A014BEC(v51);
          }
        }

        while (!v63);
      }

      v489 = v48;
      j = v48;
      if (v48 < i)
      {
        v80 = i;
        do
        {
          v81 = *j;
          *j = *v80;
          *v80 = v81;
          v82 = j[1];
          j[1] = v80[1];
          v80[1] = v82;
          do
          {
            v83 = j[2];
            v84 = j[3];
            j += 2;
            if (v84)
            {
              atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v87 = *(v83 + 48);
            v85 = v83 + 48;
            v86 = v87;
            v88 = *(v85 + 23);
            v89 = *(v32 + 71);
            if (v89 >= 0)
            {
              v90 = *(v32 + 71);
            }

            else
            {
              v90 = *(v32 + 56);
            }

            if (v89 >= 0)
            {
              v91 = (v32 + 48);
            }

            else
            {
              v91 = *(v32 + 48);
            }

            if (v88 >= 0)
            {
              v92 = *(v85 + 23);
            }

            else
            {
              v92 = *(v85 + 8);
            }

            if (v88 >= 0)
            {
              v93 = v85;
            }

            else
            {
              v93 = v86;
            }

            if (v92 >= v90)
            {
              v94 = v90;
            }

            else
            {
              v94 = v92;
            }

            v95 = memcmp(v91, v93, v94);
            if (v95)
            {
              v96 = v95 < 0;
            }

            else
            {
              v96 = v90 < v92;
            }

            if (v33)
            {
              sub_29A014BEC(v33);
            }

            if (v84)
            {
              sub_29A014BEC(v84);
            }
          }

          while (v96);
          do
          {
            v97 = *(v80 - 2);
            v98 = *(v80 - 1);
            v80 -= 2;
            if (v98)
            {
              atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v101 = *(v97 + 48);
            v99 = v97 + 48;
            v100 = v101;
            v102 = *(v99 + 23);
            v103 = *(v32 + 71);
            if (v103 >= 0)
            {
              v104 = *(v32 + 71);
            }

            else
            {
              v104 = *(v32 + 56);
            }

            if (v103 >= 0)
            {
              v105 = (v32 + 48);
            }

            else
            {
              v105 = *(v32 + 48);
            }

            if (v102 >= 0)
            {
              v106 = *(v99 + 23);
            }

            else
            {
              v106 = *(v99 + 8);
            }

            if (v102 >= 0)
            {
              v107 = v99;
            }

            else
            {
              v107 = v100;
            }

            if (v106 >= v104)
            {
              v108 = v104;
            }

            else
            {
              v108 = v106;
            }

            v109 = memcmp(v105, v107, v108);
            if (v109)
            {
              v110 = v109 < 0;
            }

            else
            {
              v110 = v104 < v106;
            }

            if (v33)
            {
              sub_29A014BEC(v33);
            }

            if (v98)
            {
              sub_29A014BEC(v98);
            }
          }

          while (!v110);
        }

        while (j < v80);
      }

      v111 = j - 2;
      if (j - 2 != v495)
      {
        v112 = *v111;
        *v111 = 0;
        *(j - 1) = 0;
        v113 = v495[1];
        *v495 = v112;
        if (v113)
        {
          sub_29A014BEC(v113);
        }
      }

      v114 = *(j - 1);
      *(j - 2) = v32;
      *(j - 1) = v33;
      v6 = a2;
      if (v114)
      {
        sub_29A014BEC(v114);
      }

      if (v489 < i)
      {
LABEL_200:
        sub_29B1EF4FC(v495, j - 2, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v115 = sub_29B1F146C(v495, j - 2);
        if (sub_29B1F146C(j, a2))
        {
          a2 = j - 2;
          j = v495;
          if (v115)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v115)
        {
          goto LABEL_200;
        }
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_41;
      }

LABEL_202:
      v116 = v7;
      v117 = *v7;
      v118 = v116[1];
      *v116 = 0;
      v116[1] = 0;
      if (v118)
      {
        atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v119 = *(a2 - 2);
      v120 = *(a2 - 1);
      if (v120)
      {
        atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v121 = *(v117 + 71);
      v124 = *(v119 + 48);
      v122 = v119 + 48;
      v123 = v124;
      v125 = *(v122 + 23);
      if (v125 >= 0)
      {
        v126 = *(v122 + 23);
      }

      else
      {
        v126 = *(v122 + 8);
      }

      if (v125 >= 0)
      {
        v127 = v122;
      }

      else
      {
        v127 = v123;
      }

      if (v121 >= 0)
      {
        v128 = *(v117 + 71);
      }

      else
      {
        v128 = *(v117 + 56);
      }

      if (v121 >= 0)
      {
        v129 = (v117 + 48);
      }

      else
      {
        v129 = *(v117 + 48);
      }

      if (v128 >= v126)
      {
        v130 = v126;
      }

      else
      {
        v130 = v128;
      }

      v131 = memcmp(v127, v129, v130);
      if (v131)
      {
        v132 = v131 < 0;
      }

      else
      {
        v132 = v126 < v128;
      }

      if (v120)
      {
        sub_29A014BEC(v120);
      }

      if (v118)
      {
        sub_29A014BEC(v118);
      }

      if (v132)
      {
        j = v495;
        do
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v133 = j[2];
          v134 = j[3];
          if (v134)
          {
            atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v135 = *(v117 + 71);
          v138 = *(v133 + 48);
          v136 = v133 + 48;
          v137 = v138;
          v139 = *(v136 + 23);
          if (v139 >= 0)
          {
            v140 = *(v136 + 23);
          }

          else
          {
            v140 = *(v136 + 8);
          }

          if (v139 >= 0)
          {
            v141 = v136;
          }

          else
          {
            v141 = v137;
          }

          if (v135 >= 0)
          {
            v142 = *(v117 + 71);
          }

          else
          {
            v142 = *(v117 + 56);
          }

          if (v135 >= 0)
          {
            v143 = (v117 + 48);
          }

          else
          {
            v143 = *(v117 + 48);
          }

          if (v142 >= v140)
          {
            v144 = v140;
          }

          else
          {
            v144 = v142;
          }

          v145 = memcmp(v141, v143, v144);
          if (v145)
          {
            v146 = v145 < 0;
          }

          else
          {
            v146 = v140 < v142;
          }

          if (v134)
          {
            sub_29A014BEC(v134);
          }

          if (v118)
          {
            sub_29A014BEC(v118);
          }

          j += 2;
        }

        while (!v146);
      }

      else
      {
        for (j = v495 + 2; j < a2; j += 2)
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v196 = *j;
          v197 = j[1];
          if (v197)
          {
            atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v198 = *(v117 + 71);
          v201 = *(v196 + 48);
          v199 = v196 + 48;
          v200 = v201;
          v202 = *(v199 + 23);
          if (v202 >= 0)
          {
            v203 = *(v199 + 23);
          }

          else
          {
            v203 = *(v199 + 8);
          }

          if (v202 >= 0)
          {
            v204 = v199;
          }

          else
          {
            v204 = v200;
          }

          if (v198 >= 0)
          {
            v205 = *(v117 + 71);
          }

          else
          {
            v205 = *(v117 + 56);
          }

          if (v198 >= 0)
          {
            v206 = (v117 + 48);
          }

          else
          {
            v206 = *(v117 + 48);
          }

          if (v205 >= v203)
          {
            v207 = v203;
          }

          else
          {
            v207 = v205;
          }

          v208 = memcmp(v204, v206, v207);
          if (v208)
          {
            v209 = v208 >= 0;
          }

          else
          {
            v209 = v203 >= v205;
          }

          if (v197)
          {
            sub_29A014BEC(v197);
          }

          if (v118)
          {
            sub_29A014BEC(v118);
            if (!v209)
            {
              break;
            }
          }

          else if (!v209)
          {
            break;
          }
        }
      }

      v147 = a2;
      if (j < a2)
      {
        v147 = a2;
        do
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v148 = *(v147 - 2);
          v149 = *(v147 - 1);
          if (v149)
          {
            atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v150 = *(v117 + 71);
          v153 = *(v148 + 48);
          v151 = v148 + 48;
          v152 = v153;
          v154 = *(v151 + 23);
          if (v154 >= 0)
          {
            v155 = *(v151 + 23);
          }

          else
          {
            v155 = *(v151 + 8);
          }

          if (v154 >= 0)
          {
            v156 = v151;
          }

          else
          {
            v156 = v152;
          }

          if (v150 >= 0)
          {
            v157 = *(v117 + 71);
          }

          else
          {
            v157 = *(v117 + 56);
          }

          if (v150 >= 0)
          {
            v158 = (v117 + 48);
          }

          else
          {
            v158 = *(v117 + 48);
          }

          if (v157 >= v155)
          {
            v159 = v155;
          }

          else
          {
            v159 = v157;
          }

          v160 = memcmp(v156, v158, v159);
          if (v160)
          {
            v161 = v160 < 0;
          }

          else
          {
            v161 = v155 < v157;
          }

          if (v149)
          {
            sub_29A014BEC(v149);
          }

          if (v118)
          {
            sub_29A014BEC(v118);
          }

          v147 -= 2;
        }

        while (v161);
      }

      while (j < v147)
      {
        v162 = *j;
        *j = *v147;
        *v147 = v162;
        v163 = j[1];
        j[1] = v147[1];
        v147[1] = v163;
        do
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v164 = j[2];
          v165 = j[3];
          if (v165)
          {
            atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v166 = *(v117 + 71);
          v169 = *(v164 + 48);
          v167 = v164 + 48;
          v168 = v169;
          v170 = *(v167 + 23);
          if (v170 >= 0)
          {
            v171 = *(v167 + 23);
          }

          else
          {
            v171 = *(v167 + 8);
          }

          if (v170 >= 0)
          {
            v172 = v167;
          }

          else
          {
            v172 = v168;
          }

          if (v166 >= 0)
          {
            v173 = *(v117 + 71);
          }

          else
          {
            v173 = *(v117 + 56);
          }

          if (v166 >= 0)
          {
            v174 = (v117 + 48);
          }

          else
          {
            v174 = *(v117 + 48);
          }

          if (v173 >= v171)
          {
            v175 = v171;
          }

          else
          {
            v175 = v173;
          }

          v176 = memcmp(v172, v174, v175);
          if (v176)
          {
            v177 = v176 < 0;
          }

          else
          {
            v177 = v171 < v173;
          }

          if (v165)
          {
            sub_29A014BEC(v165);
          }

          if (v118)
          {
            sub_29A014BEC(v118);
          }

          j += 2;
        }

        while (!v177);
        do
        {
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v178 = *(v147 - 2);
          v179 = *(v147 - 1);
          if (v179)
          {
            atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v180 = *(v117 + 71);
          v183 = *(v178 + 48);
          v181 = v178 + 48;
          v182 = v183;
          v184 = *(v181 + 23);
          if (v184 >= 0)
          {
            v185 = *(v181 + 23);
          }

          else
          {
            v185 = *(v181 + 8);
          }

          if (v184 >= 0)
          {
            v186 = v181;
          }

          else
          {
            v186 = v182;
          }

          if (v180 >= 0)
          {
            v187 = *(v117 + 71);
          }

          else
          {
            v187 = *(v117 + 56);
          }

          if (v180 >= 0)
          {
            v188 = (v117 + 48);
          }

          else
          {
            v188 = *(v117 + 48);
          }

          if (v187 >= v185)
          {
            v189 = v185;
          }

          else
          {
            v189 = v187;
          }

          v190 = memcmp(v186, v188, v189);
          if (v190)
          {
            v191 = v190 < 0;
          }

          else
          {
            v191 = v185 < v187;
          }

          if (v179)
          {
            sub_29A014BEC(v179);
          }

          if (v118)
          {
            sub_29A014BEC(v118);
          }

          v147 -= 2;
        }

        while (v191);
      }

      v192 = j - 2;
      v6 = a2;
      if (j - 2 != v495)
      {
        v193 = *v192;
        *v192 = 0;
        *(j - 1) = 0;
        v194 = v495[1];
        *v495 = v193;
        if (v194)
        {
          sub_29A014BEC(v194);
        }
      }

      a4 = 0;
      v195 = *(j - 1);
      *(j - 2) = v117;
      *(j - 1) = v118;
      if (v195)
      {
        sub_29A014BEC(v195);
        a4 = 0;
      }
    }
  }

  v231 = j + 2;
  v233 = j == v6 || v231 == v6;
  if ((a4 & 1) == 0)
  {
    if (!v233)
    {
      v442 = (j + 3);
      do
      {
        v443 = v7;
        v7 = v231;
        v444 = v443[2];
        v445 = v443[3];
        if (v445)
        {
          atomic_fetch_add_explicit(&v445->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v446 = *v443;
        v447 = v443[1];
        if (v447)
        {
          atomic_fetch_add_explicit(&v447->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v450 = *(v444 + 48);
        v448 = v444 + 48;
        v449 = v450;
        v451 = *(v448 + 23);
        v454 = *(v446 + 48);
        v452 = v446 + 48;
        v453 = v454;
        v455 = *(v452 + 23);
        if (v455 >= 0)
        {
          v456 = *(v452 + 23);
        }

        else
        {
          v456 = *(v452 + 8);
        }

        if (v455 >= 0)
        {
          v457 = v452;
        }

        else
        {
          v457 = v453;
        }

        if (v451 >= 0)
        {
          v458 = *(v448 + 23);
        }

        else
        {
          v458 = *(v448 + 8);
        }

        if (v451 >= 0)
        {
          v459 = v448;
        }

        else
        {
          v459 = v449;
        }

        if (v458 >= v456)
        {
          v460 = v456;
        }

        else
        {
          v460 = v458;
        }

        v461 = memcmp(v457, v459, v460);
        if (v461)
        {
          v462 = v461 < 0;
        }

        else
        {
          v462 = v456 < v458;
        }

        if (v447)
        {
          sub_29A014BEC(v447);
        }

        if (v445)
        {
          sub_29A014BEC(v445);
        }

        if (v462)
        {
          v463 = *v7;
          v464 = v443[3];
          *v7 = 0;
          v7[1] = 0;
          v465 = v442;
          do
          {
            v466 = *(v465 - 3);
            *(v465 - 3) = 0;
            *(v465 - 2) = 0;
            v467 = *v465;
            *(v465 - 1) = v466;
            if (v467)
            {
              sub_29A014BEC(v467);
            }

            if (v464)
            {
              atomic_fetch_add_explicit(&v464->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v468 = *(v465 - 5);
            v469 = *(v465 - 4);
            if (v469)
            {
              atomic_fetch_add_explicit(&v469->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v470 = *(v463 + 71);
            v473 = *(v468 + 48);
            v471 = v468 + 48;
            v472 = v473;
            v474 = *(v471 + 23);
            if (v474 >= 0)
            {
              v475 = *(v471 + 23);
            }

            else
            {
              v475 = *(v471 + 8);
            }

            if (v474 >= 0)
            {
              v476 = v471;
            }

            else
            {
              v476 = v472;
            }

            if (v470 >= 0)
            {
              v477 = *(v463 + 71);
            }

            else
            {
              v477 = *(v463 + 56);
            }

            if (v470 >= 0)
            {
              v478 = (v463 + 48);
            }

            else
            {
              v478 = *(v463 + 48);
            }

            if (v477 >= v475)
            {
              v479 = v475;
            }

            else
            {
              v479 = v477;
            }

            v480 = memcmp(v476, v478, v479);
            if (v480)
            {
              v481 = v480 < 0;
            }

            else
            {
              v481 = v475 < v477;
            }

            if (v469)
            {
              sub_29A014BEC(v469);
            }

            if (v464)
            {
              sub_29A014BEC(v464);
            }

            v465 -= 2;
          }

          while (v481);
          v482 = *v465;
          *(v465 - 1) = v463;
          *v465 = v464;
          if (v482)
          {
            sub_29A014BEC(v482);
          }
        }

        v231 = v7 + 2;
        v442 += 2;
      }

      while (v7 + 2 != a2);
    }

    return;
  }

  if (v233)
  {
    return;
  }

  v234 = 0;
  v235 = j;
  while (2)
  {
    v236 = v235;
    v235 = v231;
    v237 = v236[2];
    v238 = v236[3];
    if (v238)
    {
      atomic_fetch_add_explicit(&v238->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v239 = *v236;
    v240 = v236[1];
    if (v240)
    {
      atomic_fetch_add_explicit(&v240->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v243 = *(v237 + 48);
    v241 = v237 + 48;
    v242 = v243;
    v244 = *(v241 + 23);
    v247 = *(v239 + 48);
    v245 = v239 + 48;
    v246 = v247;
    v248 = *(v245 + 23);
    if (v248 >= 0)
    {
      v249 = *(v245 + 23);
    }

    else
    {
      v249 = *(v245 + 8);
    }

    if (v248 >= 0)
    {
      v250 = v245;
    }

    else
    {
      v250 = v246;
    }

    if (v244 >= 0)
    {
      v251 = *(v241 + 23);
    }

    else
    {
      v251 = *(v241 + 8);
    }

    if (v244 >= 0)
    {
      v252 = v241;
    }

    else
    {
      v252 = v242;
    }

    if (v251 >= v249)
    {
      v253 = v249;
    }

    else
    {
      v253 = v251;
    }

    v254 = memcmp(v250, v252, v253);
    if (v254)
    {
      v255 = v254 < 0;
    }

    else
    {
      v255 = v249 < v251;
    }

    if (v240)
    {
      sub_29A014BEC(v240);
    }

    if (v238)
    {
      sub_29A014BEC(v238);
    }

    if (!v255)
    {
      goto LABEL_491;
    }

    v256 = *v235;
    v257 = v236[3];
    *v235 = 0;
    v235[1] = 0;
    v258 = v234;
    while (2)
    {
      v259 = v7 + v258;
      v260 = *(v7 + v258);
      *v259 = 0;
      *(v259 + 1) = 0;
      v261 = *(v7 + v258 + 24);
      *(v259 + 1) = v260;
      if (v261)
      {
        sub_29A014BEC(v261);
      }

      if (!v258)
      {
        v276 = v7;
        goto LABEL_489;
      }

      if (v257)
      {
        atomic_fetch_add_explicit(&v257->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v262 = *(v7 + v258 - 16);
      v263 = *(v7 + v258 - 8);
      if (v263)
      {
        atomic_fetch_add_explicit(&v263->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v264 = *(v256 + 71);
      v267 = *(v262 + 48);
      v265 = v262 + 48;
      v266 = v267;
      v268 = *(v265 + 23);
      if (v268 >= 0)
      {
        v269 = *(v265 + 23);
      }

      else
      {
        v269 = *(v265 + 8);
      }

      if (v268 >= 0)
      {
        v270 = v265;
      }

      else
      {
        v270 = v266;
      }

      if (v264 >= 0)
      {
        v271 = *(v256 + 71);
      }

      else
      {
        v271 = *(v256 + 56);
      }

      if (v264 >= 0)
      {
        v272 = (v256 + 48);
      }

      else
      {
        v272 = *(v256 + 48);
      }

      if (v271 >= v269)
      {
        v273 = v269;
      }

      else
      {
        v273 = v271;
      }

      v274 = memcmp(v270, v272, v273);
      if (v274)
      {
        v275 = v274 < 0;
      }

      else
      {
        v275 = v269 < v271;
      }

      if (v263)
      {
        sub_29A014BEC(v263);
      }

      if (v257)
      {
        sub_29A014BEC(v257);
        v7 = v495;
        if (!v275)
        {
          break;
        }

        goto LABEL_486;
      }

      v7 = v495;
      if (v275)
      {
LABEL_486:
        v258 -= 16;
        continue;
      }

      break;
    }

    v276 = (v7 + v258);
LABEL_489:
    v277 = v276[1];
    *v276 = v256;
    v276[1] = v257;
    if (v277)
    {
      sub_29A014BEC(v277);
    }

LABEL_491:
    v231 = v235 + 2;
    v234 += 16;
    if (v235 + 2 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_29B1F0AB4(void *a1, void *a2, void *a3)
{
  v6 = *a2;
  v8 = (a2 + 1);
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a1;
  v11 = (a1 + 1);
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(v6 + 48);
  v12 = v6 + 48;
  v13 = v14;
  v15 = *(v12 + 23);
  v18 = *(v9 + 48);
  v16 = v9 + 48;
  v17 = v18;
  v19 = *(v16 + 23);
  if (v19 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  if (v19 >= 0)
  {
    v21 = v16;
  }

  else
  {
    v21 = v17;
  }

  if (v15 >= 0)
  {
    v22 = *(v12 + 23);
  }

  else
  {
    v22 = *(v12 + 8);
  }

  if (v15 >= 0)
  {
    v23 = v12;
  }

  else
  {
    v23 = v13;
  }

  if (v22 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  v25 = memcmp(v21, v23, v24);
  if (v25)
  {
    v26 = v25 < 0;
  }

  else
  {
    v26 = v20 < v22;
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v27 = *a3;
  v28 = a3[1];
  if (v26)
  {
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *a2;
    v30 = a2[1];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = *(v27 + 48);
    v31 = v27 + 48;
    v32 = v33;
    v34 = *(v31 + 23);
    v37 = *(v29 + 48);
    v35 = v29 + 48;
    v36 = v37;
    v38 = *(v35 + 23);
    if (v38 >= 0)
    {
      v39 = *(v35 + 23);
    }

    else
    {
      v39 = *(v35 + 8);
    }

    if (v38 >= 0)
    {
      v40 = v35;
    }

    else
    {
      v40 = v36;
    }

    if (v34 >= 0)
    {
      v41 = *(v31 + 23);
    }

    else
    {
      v41 = *(v31 + 8);
    }

    if (v34 >= 0)
    {
      v42 = v31;
    }

    else
    {
      v42 = v32;
    }

    if (v41 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = v41;
    }

    v44 = memcmp(v40, v42, v43);
    if (v44)
    {
      v45 = v44 < 0;
    }

    else
    {
      v45 = v39 < v41;
    }

    if (v30)
    {
      sub_29A014BEC(v30);
    }

    if (v28)
    {
      sub_29A014BEC(v28);
    }

    v46 = *a1;
    if (v45)
    {
      *a1 = *a3;
      *a3 = v46;
LABEL_139:
      v8 = (a3 + 1);
      goto LABEL_140;
    }

    *a1 = *a2;
    *a2 = v46;
    v86 = a1[1];
    a1[1] = a2[1];
    a2[1] = v86;
    v87 = *a3;
    v88 = a3[1];
    if (v88)
    {
      atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
      v86 = *v8;
    }

    v89 = *a2;
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v92 = *(v87 + 48);
    v90 = v87 + 48;
    v91 = v92;
    v93 = *(v90 + 23);
    v96 = *(v89 + 48);
    v94 = v89 + 48;
    v95 = v96;
    v97 = *(v94 + 23);
    if (v97 >= 0)
    {
      v98 = *(v94 + 23);
    }

    else
    {
      v98 = *(v94 + 8);
    }

    if (v97 >= 0)
    {
      v99 = v94;
    }

    else
    {
      v99 = v95;
    }

    if (v93 >= 0)
    {
      v100 = *(v90 + 23);
    }

    else
    {
      v100 = *(v90 + 8);
    }

    if (v93 >= 0)
    {
      v101 = v90;
    }

    else
    {
      v101 = v91;
    }

    if (v100 >= v98)
    {
      v102 = v98;
    }

    else
    {
      v102 = v100;
    }

    v103 = memcmp(v99, v101, v102);
    if (v103)
    {
      v104 = v103 < 0;
    }

    else
    {
      v104 = v98 < v100;
    }

    if (v86)
    {
      sub_29A014BEC(v86);
    }

    if (v88)
    {
      sub_29A014BEC(v88);
    }

    if (v104)
    {
      v105 = *a2;
      *a2 = *a3;
      *a3 = v105;
      v11 = v8;
      goto LABEL_139;
    }
  }

  else
  {
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = *a2;
    v48 = a2[1];
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v51 = *(v27 + 48);
    v49 = v27 + 48;
    v50 = v51;
    v52 = *(v49 + 23);
    v55 = *(v47 + 48);
    v53 = v47 + 48;
    v54 = v55;
    v56 = *(v53 + 23);
    if (v56 >= 0)
    {
      v57 = *(v53 + 23);
    }

    else
    {
      v57 = *(v53 + 8);
    }

    if (v56 >= 0)
    {
      v58 = v53;
    }

    else
    {
      v58 = v54;
    }

    if (v52 >= 0)
    {
      v59 = *(v49 + 23);
    }

    else
    {
      v59 = *(v49 + 8);
    }

    if (v52 >= 0)
    {
      v60 = v49;
    }

    else
    {
      v60 = v50;
    }

    if (v59 >= v57)
    {
      v61 = v57;
    }

    else
    {
      v61 = v59;
    }

    v62 = memcmp(v58, v60, v61);
    if (v62)
    {
      v63 = v62 < 0;
    }

    else
    {
      v63 = v57 < v59;
    }

    if (v48)
    {
      sub_29A014BEC(v48);
    }

    if (v28)
    {
      sub_29A014BEC(v28);
    }

    if (v63)
    {
      v64 = *a2;
      *a2 = *a3;
      *a3 = v64;
      v65 = a2[1];
      a2[1] = a3[1];
      a3[1] = v65;
      v66 = *a2;
      v67 = a2[1];
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v68 = *a1;
      v69 = a1[1];
      if (v69)
      {
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v72 = *(v66 + 48);
      v70 = v66 + 48;
      v71 = v72;
      v73 = *(v70 + 23);
      v76 = *(v68 + 48);
      v74 = v68 + 48;
      v75 = v76;
      v77 = *(v74 + 23);
      if (v77 >= 0)
      {
        v78 = *(v74 + 23);
      }

      else
      {
        v78 = *(v74 + 8);
      }

      if (v77 >= 0)
      {
        v79 = v74;
      }

      else
      {
        v79 = v75;
      }

      if (v73 >= 0)
      {
        v80 = *(v70 + 23);
      }

      else
      {
        v80 = *(v70 + 8);
      }

      if (v73 >= 0)
      {
        v81 = v70;
      }

      else
      {
        v81 = v71;
      }

      if (v80 >= v78)
      {
        v82 = v78;
      }

      else
      {
        v82 = v80;
      }

      v83 = memcmp(v79, v81, v82);
      if (v83)
      {
        v84 = v83 < 0;
      }

      else
      {
        v84 = v78 < v80;
      }

      if (v69)
      {
        sub_29A014BEC(v69);
      }

      if (v67)
      {
        sub_29A014BEC(v67);
      }

      if (v84)
      {
        v85 = *a1;
        *a1 = *a2;
        *a2 = v85;
LABEL_140:
        v106 = *v11;
        *v11 = *v8;
        *v8 = v106;
      }
    }
  }
}

void sub_29B1F0EAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  sub_29B1F0AB4(a1, a2, a3);
  v8 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a3;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(v8 + 48);
  v12 = v8 + 48;
  v13 = v14;
  v15 = *(v12 + 23);
  v18 = *(v10 + 48);
  v16 = v10 + 48;
  v17 = v18;
  v19 = *(v16 + 23);
  if (v19 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  if (v19 >= 0)
  {
    v21 = v16;
  }

  else
  {
    v21 = v17;
  }

  if (v15 >= 0)
  {
    v22 = *(v12 + 23);
  }

  else
  {
    v22 = *(v12 + 8);
  }

  if (v15 >= 0)
  {
    v23 = v12;
  }

  else
  {
    v23 = v13;
  }

  if (v22 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  v25 = memcmp(v21, v23, v24);
  if (v25)
  {
    v26 = v25 < 0;
  }

  else
  {
    v26 = v20 < v22;
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v26)
  {
    v27 = *a3;
    *a3 = *a4;
    *a4 = v27;
    v28 = a3[1];
    a3[1] = a4[1];
    a4[1] = v28;
    v29 = *a3;
    v30 = a3[1];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = *a2;
    v32 = a2[1];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = *(v29 + 48);
    v33 = v29 + 48;
    v34 = v35;
    v36 = *(v33 + 23);
    v39 = *(v31 + 48);
    v37 = v31 + 48;
    v38 = v39;
    v40 = *(v37 + 23);
    if (v40 >= 0)
    {
      v41 = *(v37 + 23);
    }

    else
    {
      v41 = *(v37 + 8);
    }

    if (v40 >= 0)
    {
      v42 = v37;
    }

    else
    {
      v42 = v38;
    }

    if (v36 >= 0)
    {
      v43 = *(v33 + 23);
    }

    else
    {
      v43 = *(v33 + 8);
    }

    if (v36 >= 0)
    {
      v44 = v33;
    }

    else
    {
      v44 = v34;
    }

    if (v43 >= v41)
    {
      v45 = v41;
    }

    else
    {
      v45 = v43;
    }

    v46 = memcmp(v42, v44, v45);
    if (v46)
    {
      v47 = v46 < 0;
    }

    else
    {
      v47 = v41 < v43;
    }

    if (v32)
    {
      sub_29A014BEC(v32);
    }

    if (v30)
    {
      sub_29A014BEC(v30);
    }

    if (v47)
    {
      v48 = *a2;
      *a2 = *a3;
      *a3 = v48;
      v49 = a2[1];
      a2[1] = a3[1];
      a3[1] = v49;
      v50 = *a2;
      v51 = a2[1];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = *a1;
      v53 = a1[1];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v56 = *(v50 + 48);
      v54 = v50 + 48;
      v55 = v56;
      v57 = *(v54 + 23);
      v60 = *(v52 + 48);
      v58 = v52 + 48;
      v59 = v60;
      v61 = *(v58 + 23);
      if (v61 >= 0)
      {
        v62 = *(v58 + 23);
      }

      else
      {
        v62 = *(v58 + 8);
      }

      if (v61 >= 0)
      {
        v63 = v58;
      }

      else
      {
        v63 = v59;
      }

      if (v57 >= 0)
      {
        v64 = *(v54 + 23);
      }

      else
      {
        v64 = *(v54 + 8);
      }

      if (v57 >= 0)
      {
        v65 = v54;
      }

      else
      {
        v65 = v55;
      }

      if (v64 >= v62)
      {
        v66 = v62;
      }

      else
      {
        v66 = v64;
      }

      v67 = memcmp(v63, v65, v66);
      if (v67)
      {
        v68 = v67 < 0;
      }

      else
      {
        v68 = v62 < v64;
      }

      if (v53)
      {
        sub_29A014BEC(v53);
      }

      if (v51)
      {
        sub_29A014BEC(v51);
      }

      if (v68)
      {
        v69 = *a1;
        *a1 = *a2;
        *a2 = v69;
        v70 = a1[1];
        a1[1] = a2[1];
        a2[1] = v70;
      }
    }
  }
}

void sub_29B1F1128(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  sub_29B1F0EAC(a1, a2, a3, a4);
  v10 = *a5;
  v11 = a5[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a4;
  v13 = a4[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(v10 + 48);
  v14 = v10 + 48;
  v15 = v16;
  v17 = *(v14 + 23);
  v20 = *(v12 + 48);
  v18 = v12 + 48;
  v19 = v20;
  v21 = *(v18 + 23);
  if (v21 >= 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = *(v18 + 8);
  }

  if (v21 >= 0)
  {
    v23 = v18;
  }

  else
  {
    v23 = v19;
  }

  if (v17 >= 0)
  {
    v24 = *(v14 + 23);
  }

  else
  {
    v24 = *(v14 + 8);
  }

  if (v17 >= 0)
  {
    v25 = v14;
  }

  else
  {
    v25 = v15;
  }

  if (v24 >= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v24;
  }

  v27 = memcmp(v23, v25, v26);
  if (v27)
  {
    v28 = v27 < 0;
  }

  else
  {
    v28 = v22 < v24;
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v28)
  {
    v29 = *a4;
    *a4 = *a5;
    *a5 = v29;
    v30 = a4[1];
    a4[1] = a5[1];
    a5[1] = v30;
    v31 = *a4;
    v32 = a4[1];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = *a3;
    v34 = a3[1];
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = *(v31 + 48);
    v35 = v31 + 48;
    v36 = v37;
    v38 = *(v35 + 23);
    v41 = *(v33 + 48);
    v39 = v33 + 48;
    v40 = v41;
    v42 = *(v39 + 23);
    if (v42 >= 0)
    {
      v43 = *(v39 + 23);
    }

    else
    {
      v43 = *(v39 + 8);
    }

    if (v42 >= 0)
    {
      v44 = v39;
    }

    else
    {
      v44 = v40;
    }

    if (v38 >= 0)
    {
      v45 = *(v35 + 23);
    }

    else
    {
      v45 = *(v35 + 8);
    }

    if (v38 >= 0)
    {
      v46 = v35;
    }

    else
    {
      v46 = v36;
    }

    if (v45 >= v43)
    {
      v47 = v43;
    }

    else
    {
      v47 = v45;
    }

    v48 = memcmp(v44, v46, v47);
    if (v48)
    {
      v49 = v48 < 0;
    }

    else
    {
      v49 = v43 < v45;
    }

    if (v34)
    {
      sub_29A014BEC(v34);
    }

    if (v32)
    {
      sub_29A014BEC(v32);
    }

    if (v49)
    {
      v50 = *a3;
      *a3 = *a4;
      *a4 = v50;
      v51 = a3[1];
      a3[1] = a4[1];
      a4[1] = v51;
      v52 = *a3;
      v53 = a3[1];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v54 = *a2;
      v55 = a2[1];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = *(v52 + 48);
      v56 = v52 + 48;
      v57 = v58;
      v59 = *(v56 + 23);
      v62 = *(v54 + 48);
      v60 = v54 + 48;
      v61 = v62;
      v63 = *(v60 + 23);
      if (v63 >= 0)
      {
        v64 = *(v60 + 23);
      }

      else
      {
        v64 = *(v60 + 8);
      }

      if (v63 >= 0)
      {
        v65 = v60;
      }

      else
      {
        v65 = v61;
      }

      if (v59 >= 0)
      {
        v66 = *(v56 + 23);
      }

      else
      {
        v66 = *(v56 + 8);
      }

      if (v59 >= 0)
      {
        v67 = v56;
      }

      else
      {
        v67 = v57;
      }

      if (v66 >= v64)
      {
        v68 = v64;
      }

      else
      {
        v68 = v66;
      }

      v69 = memcmp(v65, v67, v68);
      if (v69)
      {
        v70 = v69 < 0;
      }

      else
      {
        v70 = v64 < v66;
      }

      if (v55)
      {
        sub_29A014BEC(v55);
      }

      if (v53)
      {
        sub_29A014BEC(v53);
      }

      if (v70)
      {
        v71 = *a2;
        *a2 = *a3;
        *a3 = v71;
        v72 = a2[1];
        a2[1] = a3[1];
        a3[1] = v72;
        v73 = *a2;
        v74 = a2[1];
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v75 = *a1;
        v76 = a1[1];
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v79 = *(v73 + 48);
        v77 = v73 + 48;
        v78 = v79;
        v80 = *(v77 + 23);
        v83 = *(v75 + 48);
        v81 = v75 + 48;
        v82 = v83;
        v84 = *(v81 + 23);
        if (v84 >= 0)
        {
          v85 = *(v81 + 23);
        }

        else
        {
          v85 = *(v81 + 8);
        }

        if (v84 >= 0)
        {
          v86 = v81;
        }

        else
        {
          v86 = v82;
        }

        if (v80 >= 0)
        {
          v87 = *(v77 + 23);
        }

        else
        {
          v87 = *(v77 + 8);
        }

        if (v80 >= 0)
        {
          v88 = v77;
        }

        else
        {
          v88 = v78;
        }

        if (v87 >= v85)
        {
          v89 = v85;
        }

        else
        {
          v89 = v87;
        }

        v90 = memcmp(v86, v88, v89);
        if (v90)
        {
          v91 = v90 < 0;
        }

        else
        {
          v91 = v85 < v87;
        }

        if (v76)
        {
          sub_29A014BEC(v76);
        }

        if (v74)
        {
          sub_29A014BEC(v74);
        }

        if (v91)
        {
          v92 = *a1;
          *a1 = *a2;
          *a2 = v92;
          v93 = a1[1];
          a1[1] = a2[1];
          a2[1] = v93;
        }
      }
    }
  }
}

BOOL sub_29B1F146C(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 2);
        v6 = *(a2 - 1);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = *a1;
        v8 = a1[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = *(v5 + 48);
        v9 = v5 + 48;
        v10 = v11;
        v12 = *(v9 + 23);
        v15 = *(v7 + 48);
        v13 = v7 + 48;
        v14 = v15;
        v16 = *(v13 + 23);
        if (v16 >= 0)
        {
          v17 = *(v13 + 23);
        }

        else
        {
          v17 = *(v13 + 8);
        }

        if (v16 >= 0)
        {
          v18 = v13;
        }

        else
        {
          v18 = v14;
        }

        if (v12 >= 0)
        {
          v19 = *(v9 + 23);
        }

        else
        {
          v19 = *(v9 + 8);
        }

        if (v12 >= 0)
        {
          v20 = v9;
        }

        else
        {
          v20 = v10;
        }

        if (v19 >= v17)
        {
          v21 = v17;
        }

        else
        {
          v21 = v19;
        }

        v22 = memcmp(v18, v20, v21);
        if (v22)
        {
          v23 = v22 < 0;
        }

        else
        {
          v23 = v17 < v19;
        }

        if (v8)
        {
          sub_29A014BEC(v8);
        }

        if (v6)
        {
          sub_29A014BEC(v6);
        }

        if (v23)
        {
          v24 = *a1;
          *a1 = *(v2 - 2);
          *(v2 - 2) = v24;
          v25 = a1[1];
          a1[1] = *(v2 - 1);
          *(v2 - 1) = v25;
        }

        return 1;
      }

      goto LABEL_37;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_29B1F0AB4(a1, a1 + 2, a2 - 2);
      return 1;
    case 4:
      sub_29B1F0EAC(a1, a1 + 2, a1 + 4, a2 - 2);
      return 1;
    case 5:
      sub_29B1F1128(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
  }

LABEL_37:
  v26 = a1 + 4;
  sub_29B1F0AB4(a1, a1 + 2, a1 + 4);
  v27 = a1 + 6;
  if (a1 + 6 == v2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  v71 = v2;
  while (1)
  {
    v30 = *v27;
    v31 = v27[1];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = *v26;
    v33 = v26[1];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = *(v30 + 48);
    v34 = v30 + 48;
    v35 = v36;
    v37 = *(v34 + 23);
    v40 = *(v32 + 48);
    v38 = v32 + 48;
    v39 = v40;
    v41 = *(v38 + 23);
    if (v41 >= 0)
    {
      v42 = *(v38 + 23);
    }

    else
    {
      v42 = *(v38 + 8);
    }

    if (v41 >= 0)
    {
      v43 = v38;
    }

    else
    {
      v43 = v39;
    }

    if (v37 >= 0)
    {
      v44 = *(v34 + 23);
    }

    else
    {
      v44 = *(v34 + 8);
    }

    if (v37 >= 0)
    {
      v45 = v34;
    }

    else
    {
      v45 = v35;
    }

    if (v44 >= v42)
    {
      v46 = v42;
    }

    else
    {
      v46 = v44;
    }

    v47 = memcmp(v43, v45, v46);
    if (v47)
    {
      v48 = v47 < 0;
    }

    else
    {
      v48 = v42 < v44;
    }

    if (v33)
    {
      sub_29A014BEC(v33);
    }

    if (v31)
    {
      sub_29A014BEC(v31);
    }

    if (v48)
    {
      v72 = v29;
      v49 = v28;
      v51 = *v27;
      v50 = v27[1];
      *v27 = 0;
      v27[1] = 0;
      v73 = v28;
      while (1)
      {
        v52 = a1 + v49;
        v53 = *(a1 + v49 + 32);
        *(v52 + 4) = 0;
        *(v52 + 5) = 0;
        v54 = *(a1 + v49 + 56);
        *(v52 + 3) = v53;
        if (v54)
        {
          sub_29A014BEC(v54);
        }

        if (v49 == -32)
        {
          break;
        }

        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v55 = *(a1 + v49 + 16);
        v56 = *(a1 + v49 + 24);
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v57 = *(v51 + 71);
        v60 = *(v55 + 48);
        v58 = v55 + 48;
        v59 = v60;
        v61 = *(v58 + 23);
        if (v61 >= 0)
        {
          v62 = *(v58 + 23);
        }

        else
        {
          v62 = *(v58 + 8);
        }

        if (v61 >= 0)
        {
          v63 = v58;
        }

        else
        {
          v63 = v59;
        }

        if (v57 >= 0)
        {
          v64 = *(v51 + 71);
        }

        else
        {
          v64 = *(v51 + 56);
        }

        if (v57 >= 0)
        {
          v65 = (v51 + 48);
        }

        else
        {
          v65 = *(v51 + 48);
        }

        if (v64 >= v62)
        {
          v66 = v62;
        }

        else
        {
          v66 = v64;
        }

        v67 = memcmp(v63, v65, v66);
        if (v67)
        {
          v68 = v67 < 0;
        }

        else
        {
          v68 = v62 < v64;
        }

        if (v56)
        {
          sub_29A014BEC(v56);
        }

        if (v50)
        {
          sub_29A014BEC(v50);
          if (!v68)
          {
            v26 = (a1 + v49 + 32);
            goto LABEL_100;
          }
        }

        else if (!v68)
        {
          goto LABEL_100;
        }

        v26 -= 2;
        v49 -= 16;
      }

      v26 = a1;
LABEL_100:
      v69 = v26[1];
      *v26 = v51;
      v26[1] = v50;
      if (v69)
      {
        sub_29A014BEC(v69);
      }

      v29 = v72 + 1;
      v2 = v71;
      v28 = v73;
      if (v72 == 7)
      {
        return v27 + 2 == v71;
      }
    }

    v26 = v27;
    v28 += 16;
    v27 += 2;
    if (v27 == v2)
    {
      return 1;
    }
  }
}

__int128 *sub_29B1F1808()
{
  if ((atomic_load_explicit(&qword_2A1786B80, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D07B0();
  }

  return &xmmword_2A1786B90;
}

void *sub_29B1F1840()
{
  if ((atomic_load_explicit(&qword_2A1786B88, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D080C();
  }

  return &unk_2A1786BC0;
}

uint64_t *sub_29B1F1878()
{
  if ((atomic_load_explicit(&qword_2A1786B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786B40))
  {
    v1 = 0;
    v2 = 0;
    sub_29B1DDA2C(&qword_2A1786AE0, &v1);
    if (v2)
    {
      sub_29A014BEC(v2);
    }

    __cxa_guard_release(&qword_2A1786B40);
  }

  return &qword_2A1786AE0;
}

void sub_29B1F18F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  __cxa_guard_abort(&qword_2A1786B40);
  _Unwind_Resume(a1);
}

void *sub_29B1F1918()
{
  if ((atomic_load_explicit(&qword_2A1786B78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786B78))
  {
    v1 = 0;
    v2 = 0;
    sub_29B1DDAF4(&unk_2A1786B48, &v1);
    if (v2)
    {
      sub_29A014BEC(v2);
    }

    __cxa_guard_release(&qword_2A1786B78);
  }

  return &unk_2A1786B48;
}

void sub_29B1F1994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  __cxa_guard_abort(&qword_2A1786B78);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1F19D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 48) = v2 - 1;
    return a1;
  }

  if ((*(a1 + 40) & 1) == 0 && *a1 && *(*a1 + 136) != *(*a1 + 144))
  {
    v17 = 0;
    sub_29B1F1B04((a1 + 16), a1, &v17);
    v3 = *(*a1 + 136);
    v5 = *v3;
    v4 = v3[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 8);
    *a1 = v5;
    *(a1 + 8) = v4;
    if (!v6)
    {
      return a1;
    }

LABEL_18:
    sub_29A014BEC(v6);
    return a1;
  }

  *(a1 + 40) = 0;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v7 == v8)
  {
LABEL_17:
    v6 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    if (!v6)
    {
      return a1;
    }

    goto LABEL_18;
  }

  v9 = v8 - 3;
  while (1)
  {
    v10 = v9[2] + 1;
    v11 = *(*v9 + 136);
    if (v10 < (*(*v9 + 144) - v11) >> 4)
    {
      break;
    }

    v12 = v9[1];
    if (v12)
    {
      sub_29A014BEC(v12);
      v7 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    v13 = v9 == v7;
    v9 -= 3;
    if (v13)
    {
      goto LABEL_17;
    }
  }

  v9[2] = v10;
  v15 = *(v11 + 16 * v10);
  v16 = *(v11 + 16 * v10 + 8);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v15;
  if (v6)
  {
    goto LABEL_18;
  }

  return a1;
}

void **sub_29B1F1B04(void **result, void *a2, int *a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v6 >= v7)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    v22[4] = result;
    if (v13)
    {
      v14 = sub_29A012C48(result, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = a2[1];
    v16 = &v14[24 * v10];
    *v16 = *a2;
    *(v16 + 1) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = &v14[24 * v13];
    *(v16 + 2) = *a3;
    v9 = v16 + 24;
    v18 = v5[1] - *v5;
    v19 = &v16[-v18];
    memcpy(&v16[-v18], *v5, v18);
    v20 = *v5;
    *v5 = v19;
    v5[1] = v9;
    v21 = v5[2];
    v5[2] = v17;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = sub_29A03D11C(v22);
  }

  else
  {
    v8 = a2[1];
    *v6 = *a2;
    *(v6 + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(v6 + 2) = *a3;
    v9 = v6 + 24;
  }

  v5[1] = v9;
  return result;
}

uint64_t sub_29B1F1C6C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 88) = v2 - 1;
    return a1;
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    v3 = *a1;
    if (*a1)
    {
      if ((*(*v3 + 24))(v3))
      {
        v35[0] = 0;
        sub_29B1F1B04((a1 + 56), a1, v35);
        (*(**a1 + 16))(v35);
        sub_29B1F1808();
        if (*v35 != xmmword_2A1786B90 || v36 != xmmword_2A1786BA0 || v38 != qword_2A1786BB0)
        {
          v5 = v38;
          v4 = v39;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_29A014BEC(v4);
            if (v5)
            {
              v33 = v38;
              v34 = v39;
              if (v39)
              {
                atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
              }

LABEL_15:
              v6 = v37;
              v32[0] = v36;
              v32[1] = v37;
              if (v37)
              {
                atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
              }

              sub_29B1F2108(a1, &v33, v32);
              if (v6)
              {
                sub_29A014BEC(v6);
              }

              v7 = v34;
              if (v34)
              {
                goto LABEL_66;
              }

              goto LABEL_67;
            }
          }

          else if (v38)
          {
            v33 = v38;
            v34 = 0;
            goto LABEL_15;
          }
        }

        sub_29ABF2F5C(v35);
      }
    }
  }

  *(a1 + 80) = 0;
  while (1)
  {
    while (1)
    {
      if (*a1)
      {
        v8 = *(a1 + 8);
        v30 = *a1;
        v31 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B1F22DC(a1, &v30);
        if (v31)
        {
          sub_29A014BEC(v31);
        }
      }

      v9 = *(a1 + 64);
      if (*(a1 + 56) == v9)
      {
        sub_29B1F1878();
        v18 = qword_2A1786AE0;
        v17 = *algn_2A1786AE8;
        if (*algn_2A1786AE8)
        {
          atomic_fetch_add_explicit((*algn_2A1786AE8 + 8), 1uLL, memory_order_relaxed);
        }

        v19 = *(a1 + 8);
        *a1 = v18;
        *(a1 + 8) = v17;
        if (v19)
        {
          sub_29A014BEC(v19);
        }

        v21 = qword_2A1786AF0;
        v20 = *algn_2A1786AF8;
        if (*algn_2A1786AF8)
        {
          atomic_fetch_add_explicit((*algn_2A1786AF8 + 8), 1uLL, memory_order_relaxed);
        }

        v22 = *(a1 + 24);
        *(a1 + 16) = v21;
        *(a1 + 24) = v20;
        if (v22)
        {
          sub_29A014BEC(v22);
        }

        if (a1 != &qword_2A1786AE0)
        {
          sub_29B1F260C((a1 + 32), qword_2A1786B00, qword_2A1786B08);
          sub_29B1F28F4(a1 + 56, qword_2A1786B18, unk_2A1786B20, 0xAAAAAAAAAAAAAAABLL * ((unk_2A1786B20 - qword_2A1786B18) >> 3));
        }

        *(a1 + 80) = xmmword_2A1786B30;
        return a1;
      }

      v10 = *(v9 - 8) + 1;
      if (v10 < (*(**(v9 - 24) + 24))(*(v9 - 24)))
      {
        break;
      }

      v25 = *(v9 - 24);
      v14 = *(v9 - 16);
      v26 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B1F22DC(a1, &v25);
      if (v26)
      {
        sub_29A014BEC(v26);
      }

      v15 = *(a1 + 64);
      v16 = *(v15 - 16);
      if (v16)
      {
        sub_29A014BEC(v16);
      }

      *(a1 + 64) = v15 - 24;
    }

    v11 = *(v9 - 24);
    ++*(v9 - 8);
    (*(*v11 + 16))(v35);
    sub_29B1F1808();
    if (*v35 == xmmword_2A1786B90)
    {
      v12 = v38;
      if (v36 == xmmword_2A1786BA0 && v38 == qword_2A1786BB0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v12 = v38;
    }

    v13 = v39;
    if (v39)
    {
      break;
    }

    if (v12)
    {
      v28 = v12;
      v29 = 0;
      goto LABEL_61;
    }

LABEL_46:
    sub_29ABF2F5C(v35);
  }

  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_29A014BEC(v13);
  if (!v12)
  {
    goto LABEL_46;
  }

  v28 = v38;
  v29 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_61:
  v23 = v37;
  v27[0] = v36;
  v27[1] = v37;
  if (v37)
  {
    atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1F2108(a1, &v28, v27);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v7 = v29;
  if (!v29)
  {
    goto LABEL_67;
  }

LABEL_66:
  sub_29A014BEC(v7);
LABEL_67:
  sub_29ABF2F5C(v35);
  return a1;
}

void sub_29B1F209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, ...)
{
  va_start(va, a13);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  sub_29ABF2F5C(va);
  _Unwind_Resume(a1);
}

void sub_29B1F2108(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *a2;
    do
    {
      v8 = v6[4];
      if (v7 >= v8)
      {
        if (v8 >= v7)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          sub_29B1D9E70(*a2, &v18);
          v16 = std::string::insert(&v18, 0, "Encountered cycle at element: ");
          v17 = *&v16->__r_.__value_.__l.__data_;
          v20 = v16->__r_.__value_.__r.__words[2];
          v19 = v17;
          v16->__r_.__value_.__l.__size_ = 0;
          v16->__r_.__value_.__r.__words[2] = 0;
          v16->__r_.__value_.__r.__words[0] = 0;
          sub_29AAD6B14(exception, &v19);
          *exception = &unk_2A20C79E8;
          __cxa_throw(exception, &unk_2A2070D20, sub_29AAD6B10);
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  sub_29A42F734((a1 + 32), a2, a2);
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 8);
  *a1 = v10;
  *(a1 + 8) = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v13 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 24);
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  if (v14)
  {

    sub_29A014BEC(v14);
  }
}

void sub_29B1F227C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_29B1F22DC(uint64_t a1, unint64_t *a2)
{
  sub_29B1F2AE4((a1 + 32), a2);
  v3 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v4)
  {

    sub_29A014BEC(v4);
  }
}

uint64_t sub_29B1F235C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 40) = v2 - 1;
    return a1;
  }

  v4 = *a1;
  if (!*a1)
  {
    return a1;
  }

  sub_29AAE1404(v4, &v30);
  v5 = v30;
  if (!v30)
  {
    goto LABEL_36;
  }

  v6 = *a1;
  v7 = *(v30 + 47);
  if (v7 >= 0)
  {
    v8 = *(v30 + 47);
  }

  else
  {
    v8 = *(v30 + 32);
  }

  v9 = *(v6 + 47);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v6 + 32);
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = (v30 + 24)) : (v11 = *(v30 + 24)), (v14 = *(v6 + 24), v12 = (v6 + 24), v13 = v14, v10 >= 0) ? (v15 = v12) : (v15 = v13), memcmp(v11, v15, v8)))
  {
    v16 = *(&v30 + 1);
    v30 = 0uLL;
    if (!v16 || (sub_29A014BEC(v16), (v5 = v30) == 0))
    {
LABEL_36:
      v21 = 0;
      goto LABEL_37;
    }
  }

  v17 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 24);
  if (!v18)
  {
LABEL_28:
    v20 = 1;
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v19 = v18[4];
    if (v5 >= v19)
    {
      break;
    }

LABEL_27:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_28;
    }
  }

  if (v19 < v5)
  {
    ++v18;
    goto LABEL_27;
  }

  v20 = 0;
  if (v17)
  {
LABEL_29:
    sub_29A014BEC(v17);
  }

LABEL_30:
  if ((v20 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29B1D9E70(v30, &v27);
    v25 = std::string::insert(&v27, 0, "Encountered cycle at element: ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v29 = v25->__r_.__value_.__r.__words[2];
    v28 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v28);
    *exception = &unk_2A20C79E8;
    __cxa_throw(exception, &unk_2A2070D20, sub_29AAD6B10);
  }

  v28 = v30;
  if (*(&v30 + 1))
  {
    atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A88B8F8((a1 + 16), &v28, &v28);
  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  v21 = v30;
LABEL_37:
  v22 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 8);
  *a1 = v21;
  *(a1 + 8) = v22;
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  return a1;
}

void sub_29B1F258C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      v25 = *(v23 - 40);
      if (v25)
      {
        sub_29A014BEC(v25);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t **sub_29B1F260C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v17 = result;
    v18 = v8;
    v19 = v8;
    if (v8)
    {
      v18 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v11 = v9[4];
          v10 = v9[5];
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = v8[5];
          v8[4] = v11;
          v8[5] = v10;
          if (v12)
          {
            sub_29A014BEC(v12);
          }

          sub_29B1F278C(v5, v19);
          v8 = v18;
          v19 = v18;
          if (v18)
          {
            v18 = sub_29A028760(v18);
          }

          v13 = v9[1];
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
              a2 = v9[2];
              v14 = *a2 == v9;
              v9 = a2;
            }

            while (!v14);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_29B1F27FC(&v17);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29B1F2854(v5, a2 + 4);
      v15 = a2[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = a2[2];
          v14 = *v16 == a2;
          a2 = v16;
        }

        while (!v14);
      }

      a2 = v16;
    }

    while (v16 != a3);
  }

  return result;
}

void sub_29B1F2778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B1F27FC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B1F278C(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_29B1F27FC(uint64_t a1)
{
  sub_29A42FCE0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29A42FCE0(*a1, v2);
  }

  return a1;
}

uint64_t *sub_29B1F2854(uint64_t **a1, unint64_t *a2)
{
  v4 = operator new(0x30uLL);
  v5 = *a2;
  v6 = a2[1];
  v4[4] = *a2;
  v4[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a1 + 1;
  v8 = a1[1];
  if (v8)
  {
    do
    {
      while (1)
      {
        v7 = v8;
        if (v5 >= v8[4])
        {
          break;
        }

        v8 = *v8;
        v9 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      v8 = v8[1];
    }

    while (v8);
    v9 = v7 + 1;
  }

  else
  {
    v9 = a1 + 1;
  }

LABEL_10:
  sub_29A00B204(a1, v7, v9, v4);
  return v4;
}

void sub_29B1F28F4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A03D3AC(a1);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A012BFC(a1, v10);
    v11 = sub_29B1D34EC(a1, v6, a3, *(a1 + 8));
LABEL_15:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) < a4)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        sub_29B1F2A90(v8, v15);
        v15 += 3;
        v8 += 24;
        v14 -= 24;
      }

      while (v14);
      v12 = *(a1 + 8);
    }

    v11 = sub_29B1D34EC(a1, (v6 + v13), a3, v12);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      sub_29B1F2A90(v8, v6);
      v6 += 3;
      v8 += 24;
    }

    while (v6 != a3);
    v12 = *(a1 + 8);
  }

  while (v12 != v8)
  {
    v16 = *(v12 - 2);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v12 -= 24;
  }

  *(a1 + 8) = v8;
}

void *sub_29B1F2A90(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1];
  *a1 = v5;
  a1[1] = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  a1[2] = a2[2];
  return a1;
}

uint64_t sub_29B1F2AE4(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_29B1F2B54(a1, v4);
  return 1;
}

uint64_t *sub_29B1F2B54(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_29A03AFE8(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  operator delete(a2);
  return v3;
}

void *sub_29B1F2B94()
{
  if ((atomic_load_explicit(&qword_2A1786C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786C10))
  {
    sub_29A008E78(qword_2A1786BF8, "color3");
    __cxa_guard_release(&qword_2A1786C10);
  }

  return qword_2A1786BF8;
}

void *sub_29B1F2C14()
{
  if ((atomic_load_explicit(&qword_2A1786C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786C30))
  {
    sub_29A008E78(qword_2A1786C18, "multioutput");
    __cxa_guard_release(&qword_2A1786C30);
  }

  return qword_2A1786C18;
}

float sub_29B1F2C94@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v4;
  *(a2 + 52) = 0;
  *(a2 + 44) = 0;
  *(a2 + 60) = 1065353216;
  return result;
}

float sub_29B1F2CC8(uint64_t a1, const void **a2, const void **a3)
{
  v5 = sub_29A8877BC((a1 + 8), a2);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v11);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v6 = *(v5 + 10);
  v7 = sub_29A8877BC((a1 + 8), a3);
  if (!v7)
  {
    v10 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(v10, &v11);
    *v10 = &unk_2A20C7DA0;
    __cxa_throw(v10, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v6 / *(v7 + 10);
}

void sub_29B1F2E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B1F2E54@<X0>(const void **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a2 && (result = sub_29A5DAB7C(result + 1, (*a2 + 48))) != 0)
  {
    v4 = result[6];
    *a3 = result[5];
    a3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_29B1F2EAC(std::exception *a1)
{
  sub_29AAD6C00(a1);

  operator delete(v1);
}

const void **sub_29B1F2ED4(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B1F314C(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B1F3128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1F314C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  a4[1] = a1;
  *a4 = result;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  *(v9 + 10) = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B1F31E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

__int128 *sub_29B1F31FC()
{
  if ((atomic_load_explicit(&qword_2A1786C38, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D0870();
  }

  return &xmmword_2A1786C40;
}

__n128 sub_29B1F3234@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = a1;
    if (!*(a1 + 23))
    {
      goto LABEL_6;
    }
  }

  do
  {
    if (sub_29B1F32BC(*v7))
    {
      *v7 = a2;
    }

    ++v7;
    --v6;
  }

  while (v6);
LABEL_6:
  result = *a1;
  *a3 = *a1;
  *(a3 + 16) = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  return result;
}

BOOL sub_29B1F32BC(int a1)
{
  if (a1 < 0)
  {
    v2 = __maskrune(a1, 0x500uLL);
  }

  else
  {
    v2 = *(MEMORY[0x29EDCA600] + 4 * a1 + 60) & 0x500;
  }

  return a1 != 95 && a1 != 58 && v2 == 0;
}

BOOL sub_29B1F331C(char *a1)
{
  v2 = a1[23];
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 1);
  if ((v2 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v2 & 0x80u) == 0)
  {
    v7 = a1[23];
  }

  else
  {
    v7 = *(a1 + 1);
  }

  if (v7)
  {
    v8 = &v6[v7];
    while (!sub_29B1F32BC(*v6))
    {
      ++v6;
      if (!--v7)
      {
        v6 = v8;
        break;
      }
    }

    v2 = a1[23];
    v4 = *a1;
    v5 = *(a1 + 1);
    v3 = a1[23];
  }

  if (v3 < 0)
  {
    v2 = v5;
  }

  else
  {
    v4 = a1;
  }

  return v6 == &v4[v2];
}

void sub_29B1F33A8(std::string *__str@<X0>, void *a2@<X8>)
{
  v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v4 >= 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  v7 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  v8 = size;
  do
  {
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v10 = v7[v8];
    if (v10 < 0)
    {
      break;
    }

    v11 = *(MEMORY[0x29EDCA600] + 4 * v10 + 60);
    v8 = v9 - 1;
  }

  while ((v11 & 0x400) != 0);
  if (v9 >= size)
  {
    sub_29A022DE0(a2, size + 1);
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    if (size)
    {
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = __str;
      }

      else
      {
        v18 = __str->__r_.__value_.__r.__words[0];
      }

      memmove(a2, v18, size);
    }

    *(a2 + size) = 50;
  }

  else
  {
    std::string::basic_string(&v21, __str, 0, v9, &__stra);
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __str->__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&__stra, __str, v9, v12, &v19);
    v13 = std::stoi(&__stra, 0, 10);
    std::to_string(&v19, v13 + 1);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v21;
    }

    else
    {
      v14 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v21.__r_.__value_.__l.__size_;
    }

    v16 = std::string::insert(&v19, 0, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    a2[2] = *(&v16->__r_.__value_.__l + 2);
    *a2 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__stra.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29B1F3544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1F3590(std::string *__str@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = __str;
  }

  else
  {
    v7 = __str->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  if (!size)
  {
LABEL_18:
    v12 = -1;
LABEL_19:
    v14 = -1;
    goto LABEL_20;
  }

  v12 = 0;
  if (!v11)
  {
    goto LABEL_19;
  }

  v13 = v7 + size;
  while (memchr(v10, v7->__r_.__value_.__s.__data_[v12], v11))
  {
    if (size == ++v12)
    {
      goto LABEL_18;
    }
  }

  if (size <= v12)
  {
    goto LABEL_19;
  }

  v27 = v7 + v12;
LABEL_57:
  v28 = v11;
  v29 = v10;
  while (*v27 != *v29)
  {
    ++v29;
    if (!--v28)
    {
      if (++v27 != v13)
      {
        goto LABEL_57;
      }

      v27 = v7 + size;
      break;
    }
  }

  if (v27 == v13)
  {
    v14 = -1;
  }

  else
  {
    v14 = v27 - v7;
  }

LABEL_20:
  if ((v14 & v12) != 0xFFFFFFFFFFFFFFFFLL)
  {
    do
    {
      std::string::basic_string(&__p, __str, v12, v14 - v12, &v31);
      sub_29A091654(a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v15 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
      if (v15 >= 0)
      {
        v16 = __str;
      }

      else
      {
        v16 = __str->__r_.__value_.__r.__words[0];
      }

      if (v15 >= 0)
      {
        v17 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = __str->__r_.__value_.__l.__size_;
      }

      v18 = *(a2 + 23);
      if (v18 >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      if (v18 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = a2[1];
      }

      if (v17 <= v14)
      {
LABEL_40:
        v14 = -1;
      }

      else if (v20)
      {
        v21 = v16 + v17;
        while (memchr(v19, v16->__r_.__value_.__s.__data_[v14], v20))
        {
          if (v17 == ++v14)
          {
            goto LABEL_40;
          }
        }

        if (v17 > v14)
        {
          v24 = v16 + v14;
LABEL_46:
          v25 = v20;
          v26 = v19;
          while (*v24 != *v26)
          {
            ++v26;
            if (!--v25)
            {
              if (++v24 != v21)
              {
                goto LABEL_46;
              }

              v24 = v16 + v17;
              break;
            }
          }

          if (v24 == v21)
          {
            v22 = -1;
          }

          else
          {
            v22 = v24 - v16;
          }

          goto LABEL_42;
        }
      }

      v22 = -1;
LABEL_42:
      v12 = v14;
      v23 = v22 & v14;
      v14 = v22;
    }

    while (v23 != -1);
  }
}

__n128 sub_29B1F37E0@<Q0>(std::string *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    if ((*(i + 39) & 0x8000000000000000) != 0)
    {
      if (i[3])
      {
LABEL_6:
        for (j = 0; ; j += v20)
        {
          size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          if ((size & 0x8000000000000000) != 0)
          {
            v7 = this->__r_.__value_.__r.__words[0];
            size = this->__r_.__value_.__l.__size_;
          }

          else
          {
            v7 = this;
          }

          v8 = *(i + 39);
          v9 = v8 >= 0 ? (i + 2) : i[2];
          v10 = v8 >= 0 ? *(i + 39) : i[3];
          v11 = size - j;
          if (size < j)
          {
            break;
          }

          if (v10)
          {
            if (v11 >= v10)
            {
              v12 = v7 + size;
              v13 = v7 + j;
              v14 = *v9;
              while (v11 - v10 != -1)
              {
                v15 = memchr(v13, v14, v11 - v10 + 1);
                if (!v15)
                {
                  break;
                }

                v16 = v15;
                if (!memcmp(v15, v9, v10))
                {
                  if (v16 == v12)
                  {
                    goto LABEL_37;
                  }

                  j = v16 - v7;
                  goto LABEL_27;
                }

                v13 = v16 + 1;
                v11 = v12 - (v16 + 1);
                if (v11 < v10)
                {
                  goto LABEL_37;
                }
              }
            }

            break;
          }

LABEL_27:
          if (j == -1)
          {
            break;
          }

          v17 = *(i + 63);
          if (v17 >= 0)
          {
            v18 = (i + 5);
          }

          else
          {
            v18 = i[5];
          }

          if (v17 >= 0)
          {
            v19 = *(i + 63);
          }

          else
          {
            v19 = i[6];
          }

          std::string::replace(this, j, v10, v18, v19);
          v20 = *(i + 63);
          if (v20 < 0)
          {
            v20 = i[6];
          }
        }
      }
    }

    else if (*(i + 39))
    {
      goto LABEL_6;
    }

LABEL_37:
    ;
  }

  result = *&this->__r_.__value_.__l.__data_;
  *a3 = *&this->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

BOOL sub_29B1F3958(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (v3 < v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a2 + 23);
    if (v3 < v4)
    {
      return 0;
    }
  }

  if ((v2 & 0x80) != 0)
  {
    if (v5 != -1)
    {
      if (a1[1] >= v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = a1[1];
      }

      a1 = *a1;
      goto LABEL_18;
    }

LABEL_26:
    sub_29A0F26CC();
  }

  if (v5 == -1)
  {
    goto LABEL_26;
  }

  if (v2 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 23);
  }

LABEL_18:
  if ((v4 & 0x80000000) != 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v7) && v7 == v5;
}

BOOL sub_29B1F39FC(uint64_t **a1, void *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v11 = v4 >= v6;
  v7 = v4 - v6;
  if (!v11)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    v11 = v6 != -1 && v3 >= v7;
    if (v11)
    {
      v12 = v3 - v7;
      if (v12 >= v6)
      {
        v10 = v6;
      }

      else
      {
        v10 = v12;
      }

      a1 = *a1;
      goto LABEL_26;
    }

LABEL_34:
    sub_29A0F26CC();
  }

  if (v2 < v7 || v6 == -1)
  {
    goto LABEL_34;
  }

  if (v2 - v7 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v2 - v7;
  }

LABEL_26:
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1 + v7, a2, v10) && v10 == v6;
}

void sub_29B1F3AB0(std::string *__str@<X0>, std::string *a2@<X8>)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = __str;
  }

  else
  {
    v4 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_13;
  }

  v5 = 0;
  while (v4->__r_.__value_.__s.__data_[v5] == 32)
  {
    if (size == ++v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 == -1)
  {
LABEL_13:
    sub_29B1F31FC();
    if (byte_2A1786C40[23] < 0)
    {
      sub_29A008D14(a2, *byte_2A1786C40, *&byte_2A1786C40[8]);
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *byte_2A1786C40;
      a2->__r_.__value_.__r.__words[2] = *&byte_2A1786C40[16];
    }
  }

  else
  {
    std::string::basic_string(a2, __str, v5, 0xFFFFFFFFFFFFFFFFLL, &__p);
  }

  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    v9 = a2->__r_.__value_.__l.__size_;
  }

  else
  {
    v9 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  v10 = ~v9;
  v11 = (v8 + v9 - 1);
  while (v10 != -1)
  {
    v12 = v11->__r_.__value_.__s.__data_[0];
    v11 = (v11 - 1);
    ++v10;
    if (v12 != 32)
    {
      if (v10)
      {
        std::string::basic_string(&__p, a2, 0, -v10, &v14);
        goto LABEL_30;
      }

      break;
    }
  }

  sub_29B1F31FC();
  if (byte_2A1786C40[23] < 0)
  {
    sub_29A008D14(&__p, *byte_2A1786C40, *&byte_2A1786C40[8]);
  }

  else
  {
    __p = *byte_2A1786C40;
  }

LABEL_30:
  std::string::operator=(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29B1F3C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_29B1F3C5C(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7DC8, 0) != 0);
  }

  return result;
}

char *sub_29B1F3CC0(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7DC8, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F3DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_29B1F3DE0@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_29B1F3E2C(a1, a2);
}

void sub_29B1F3E10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1F3E2C(unsigned int *a1, uint64_t a2)
{
  sub_29A008864(v14);
  v4 = *(v14[0] - 24);
  v5 = std::locale::classic();
  std::ios_base::getloc((v14 + v4));
  std::ios_base::imbue((v14 + v4), v5);
  std::locale::~locale(&v11);
  v6 = *(&v17[1].__locale_ + v4);
  if (v6)
  {
    (*(v6->__locale_ + 2))(v6, v5);
    std::locale::locale(&v20, v6 + 1);
    std::locale::operator=(v6 + 1, v5);
    std::locale::~locale(&v20);
  }

  std::locale::~locale(&v13);
  v7 = v14[0];
  if (dword_2A178E964 == 1)
  {
    v8 = 4;
  }

  else
  {
    v8 = (dword_2A178E964 == 2) << 8;
  }

  *(&v14[1] + *(v14[0] - 24)) = *(&v14[1] + *(v14[0] - 24)) & 0xFFFFFEFB | v8;
  *(&v14[2] + *(v7 - 24)) = dword_2A14FE138;
  MEMORY[0x29C2C1ED0](&v15, *a1);
  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  v14[0] = *MEMORY[0x29EDC9528];
  v9 = *(MEMORY[0x29EDC9528] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v15 = v9;
  v16 = MEMORY[0x29EDC9570] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v19);
}

uint64_t sub_29B1F4134(const std::string *a1, uint64_t a2)
{
  sub_29A9EE25C(v12, a1, 24);
  v3 = *(v12[0] - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((v12 + v3));
  std::ios_base::imbue((v12 + v3), v4);
  std::locale::~locale(&v10);
  v5 = *(&v14[1].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v17, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v11);
  v6 = MEMORY[0x29C2C1DC0](v12, a2);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v10);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v12[0] = *MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v12[2] = v7;
  v13 = MEMORY[0x29EDC9570] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v16);
}

void sub_29B1F43F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_29A008B0C(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

const void *sub_29B1F4450(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7DE0, 0) != 0);
  }

  return result;
}

char *sub_29B1F44B4(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7DE0, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F459C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_29B1F45D4@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = off_2A14FDF28;
  if (!*a1)
  {
    v3 = off_2A14FDF30;
  }

  return MEMORY[0x29C2C1A60](a2, *v3);
}

void sub_29B1F4624(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1F4640(const void **a1)
{
  v2 = 0;
  sub_29B1F466C(a1, &v2);
  return v2;
}

uint64_t sub_29B1F466C(const void **a1, char *a2)
{
  v4 = strlen(off_2A14FDF28[0]);
  v5 = v4;
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    if (v4 != a1[1])
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      sub_29A0F26CC();
    }

    v7 = *a1;
  }

  else
  {
    v7 = a1;
    if (v5 != v6)
    {
      goto LABEL_8;
    }
  }

  result = memcmp(v7, off_2A14FDF28[0], v5);
  if (!result)
  {
    v12 = 1;
    goto LABEL_16;
  }

LABEL_8:
  v9 = strlen(off_2A14FDF30[0]);
  v10 = v9;
  if ((v6 & 0x80000000) != 0)
  {
    if (v9 != a1[1])
    {
      goto LABEL_18;
    }

    if (v9 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a1;
  }

  else
  {
    v11 = a1;
    if (v10 != v6)
    {
LABEL_18:
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      sub_29AAD6B14(exception, &v14);
      *exception = &unk_2A20C7DA0;
      __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
    }
  }

  result = memcmp(v11, off_2A14FDF30[0], v10);
  if (result)
  {
    goto LABEL_18;
  }

  v12 = 0;
LABEL_16:
  *a2 = v12;
  return result;
}

void sub_29B1F47E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

const void *sub_29B1F4818(const void *result)
{
  if (result)
  {
    return (__dynamic_cast(result, &unk_2A20C7DB8, &unk_2A20C7DF8, 0) != 0);
  }

  return result;
}

char *sub_29B1F487C(const void *a1)
{
  if (!a1 || (v1 = __dynamic_cast(a1, &unk_2A20C7DB8, &unk_2A20C7DF8, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "Incorrect type specified for value");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  return v1 + 8;
}

void sub_29B1F4964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_29B1F499C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_29B1F49E8(a1, a2);
}

void sub_29B1F49CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1F49E8(uint64_t a1, uint64_t a2)
{
  sub_29A008864(v13);
  v3 = *(v13[0] - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((v13 + v3));
  std::ios_base::imbue((v13 + v3), v4);
  std::locale::~locale(&v10);
  v5 = *(&v15[1].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v18, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v18);
  }

  std::locale::~locale(&v12);
  v6 = v13[0];
  if (dword_2A178E964 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = (dword_2A178E964 == 2) << 8;
  }

  *(&v13[1] + *(v13[0] - 24)) = *(&v13[1] + *(v13[0] - 24)) & 0xFFFFFEFB | v7;
  *(&v13[2] + *(v6 - 24)) = dword_2A14FE138;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  v13[0] = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v13[2] = v8;
  v14 = MEMORY[0x29EDC9570] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v17);
}

float sub_29B1F4CF0(const std::string *a1)
{
  v2 = 0.0;
  sub_29B1F4D1C(a1, &v2);
  return v2;
}

uint64_t sub_29B1F4D1C(const std::string *a1, uint64_t a2)
{
  sub_29A9EE25C(v12, a1, 24);
  v3 = *(v12[0] - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((v12 + v3));
  std::ios_base::imbue((v12 + v3), v4);
  std::locale::~locale(&v10);
  v5 = *(&v14[1].__locale_ + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v17, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v11);
  v6 = MEMORY[0x29C2C1DB0](v12, a2);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v10);
    *exception = &unk_2A20C7DA0;
    __cxa_throw(exception, &unk_2A2070DC8, sub_29B1F2E50);
  }

  v12[0] = *MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v12[2] = v7;
  v13 = MEMORY[0x29EDC9570] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v16);
}