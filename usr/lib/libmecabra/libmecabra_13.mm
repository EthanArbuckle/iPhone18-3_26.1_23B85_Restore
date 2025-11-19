uint64_t sub_29924DE10(uint64_t a1)
{
  pthread_rwlock_wrlock((a1 + 936));
  v2 = *(a1 + 744);
  if (*(a1 + 752) != v2)
  {
    if (*v2)
    {
      sub_29931C528(*v2);
      v2 = *(a1 + 744);
    }

    *(a1 + 752) = v2;
  }

  v3 = *(a1 + 800);
  if (v3)
  {
    v4 = *(a1 + 820);
    if (v4 >= 1)
    {
      v5 = v3 + 6;
      do
      {
        *(v5 - 1) = 0;
        v5 += 16;
        --v4;
      }

      while (v4);
    }

    free(v3);
    *(a1 + 800) = 0;
    *(a1 + 816) = 0;
  }

  if (*(a1 + 863) < 0)
  {
    **(a1 + 840) = 0;
    *(a1 + 848) = 0;
  }

  else
  {
    *(a1 + 840) = 0;
    *(a1 + 863) = 0;
  }

  sub_299212BE4((a1 + 864));
  *(a1 + 896) = *(a1 + 888);
  *(a1 + 828) = 0;
  *(a1 + 824) = *(a1 + 808);
  *(a1 + 836) = 1;
  return pthread_rwlock_unlock((a1 + 936));
}

BOOL sub_29924DEE8(uint64_t a1)
{
  v66 = *MEMORY[0x29EDCA608];
  pthread_rwlock_wrlock((a1 + 936));
  if (*(a1 + 820))
  {
    v2 = 1;
    if ((*(a1 + 836) & 1) == 0)
    {
      *(a1 + 836) = 1;
      sub_29924CDEC(a1);
      memset(&v51, 0, sizeof(v51));
      v3 = (a1 + 820);
      memset(&v50, 0, sizeof(v50));
      memset(&v49, 0, sizeof(v49));
      memset(&v48, 0, sizeof(v48));
      sub_299250EF0(__base, *(a1 + 820));
      v4 = *(a1 + 820);
      v5 = __base[0];
      if (v4 > 0)
      {
        v6 = 0;
        v7 = (*(a1 + 800) + 8);
        do
        {
          v8 = *v7;
          v7 += 4;
          v5[v6++] = v8;
          v4 = *v3;
        }

        while (v6 < v4);
      }

      qsort(v5, v4, 4uLL, sub_29924E7E8);
      LODWORD(v9) = *v3;
      if (*v3 >= 1)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v45 = 0;
        do
        {
          v13 = (*(a1 + 800) + 16 * v10);
          v14 = bsearch(v13 + 2, __base[0], v9, 4uLL, sub_29924E7E8);
          v13[2] = (v14 - __base[0]) >> 2;
          v15 = a1 + 840;
          if (*(a1 + 863) < 0)
          {
            v15 = *(a1 + 840);
          }

          std::string::append(&v49, (v15 + *v13), *(v13 + 4));
          v16 = *v13;
          *v13 = v45;
          v43 = *(v13 + 4);
          v44 = v16;
          v17 = v13[3];
          v13[3] = v12;
          if (*(v13 + 5))
          {
            v41 = v12;
            v42 = v10;
            v18 = 0;
            do
            {
              v19 = *(a1 + 888) + 12 * (v17 + v18);
              v20 = *(a1 + 864) + 24 * *(v19 + 8);
              v21 = *(v20 + 23);
              if ((v21 & 0x8000000000000000) != 0)
              {
                v21 = *(v20 + 8);
              }

              v22 = (*(*a1 + 144))(a1, *(a1 + 888) + 12 * (v17 + v18));
              std::string::append(&v51, v22, v21);
              v23 = *(v19 + 8);
              *(v19 + 8) = v11;
              std::string::append(&v50, v19, 0xCuLL);
              v11 += v21;
              *(v19 + 8) = v23;
              ++v18;
              v24 = *(v13 + 5);
            }

            while (v18 < v24);
            v25 = 12 * v24;
            v3 = (a1 + 820);
            v10 = v42;
            v12 = v41;
          }

          else
          {
            v25 = 0;
          }

          std::string::append(&v48, v13, 0x10uLL);
          v45 += v43;
          v12 += v25;
          v13[3] = v17;
          *v13 = v44;
          ++v10;
          v9 = *v3;
        }

        while (v10 < v9);
      }

      v26 = *(a1 + 744);
      if (*(a1 + 752) == v26 || (v27 = *v26) == 0)
      {
        v2 = 0;
      }

      else
      {
        v46 = 8 * (*(v27 + 4) + 259) + 16;
        if (*(a1 + 423) < 0)
        {
          v28 = *(a1 + 400);
        }

        v29 = *v27;
        sub_2991EB0E0(&v53);
        v2 = (*&v54[*(v53 - 24) + 24] & 5) == 0;
        if ((*&v54[*(v53 - 24) + 24] & 5) == 0)
        {
          v30 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v30 = v51.__r_.__value_.__r.__words[1];
          }

          v31 = v46 + HIDWORD(v46) + v30 + 40;
          LOBYTE(__s) = 0;
          while ((v31 & 7) != 0)
          {
            std::string::append(&v51, &__s, 1uLL);
            ++v31;
          }

          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v32 = v50.__r_.__value_.__r.__words[1];
          }

          v33 = v31 + v32;
          DWORD2(__s) = 0;
          *&__s = 0;
          if ((v33 & 7) != 0)
          {
            v34 = v33 + 12;
            do
            {
              std::string::append(&v50, &__s, 0xCuLL);
              v35 = (v34 & 7) == 0;
              v34 += 12;
            }

            while (!v35);
          }

          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          std::ostream::write();
          v36 = &v54[*(v53 - 24) - 8];
          if ((v36[32] & 5) == 0)
          {
            (*(**(v36 + 5) + 32))(&__s);
          }

          MEMORY[0x29C29BCD0](v52, &v53);
          v37 = &v54[*(v53 - 24) - 8];
          if ((v37[32] & 5) == 0)
          {
            v38 = *(v37 + 5);
            v65 = 0;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            __s = 0u;
            v58 = 0u;
            (*(*v38 + 40))(v56);
            if (v56[16] == -1)
            {
              std::ios_base::clear(&v54[*(v53 - 24) - 8], *&v54[*(v53 - 24) + 24] | 4);
            }
          }

          MEMORY[0x29C29BCE0](v52);
          std::ostream::write();
          if (!std::filebuf::close())
          {
            std::ios_base::clear(&v54[*(v53 - 24) - 8], *&v54[*(v53 - 24) + 24] | 4);
          }
        }

        v53 = *MEMORY[0x29EDC9520];
        *&v54[*(v53 - 24) - 8] = *(MEMORY[0x29EDC9520] + 24);
        MEMORY[0x29C29BBF0](v54);
        std::ostream::~ostream();
        MEMORY[0x29C29BF00](&v55);
      }

      if (__base[0])
      {
        __base[1] = __base[0];
        operator delete(__base[0]);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v2 = 1;
  }

  pthread_rwlock_unlock((a1 + 936));
  v39 = *MEMORY[0x29EDCA608];
  return v2;
}

void sub_29924E718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47)
{
  MEMORY[0x29C29BCE0](&a45);
  sub_29924BAAC(&a47);
  if (__p)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  pthread_rwlock_unlock((v47 + 936));
  _Unwind_Resume(a1);
}

uint64_t sub_29924E7E8(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t sub_29924E800(uint64_t a1, unsigned int a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if ((atomic_load_explicit(&qword_2A1460238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460238))
  {
    qword_2A1460230 = sub_299237120();
    __cxa_guard_release(&qword_2A1460238);
  }

  if (!a5 || (*(a5 + 5) & 1) == 0)
  {
    pthread_rwlock_rdlock((a1 + 936));
    sub_29924C240(a1);
    v17 = *(a1 + 744);
    v18 = *(a1 + 752);
    if (v17 != v18)
    {
      v19 = *(a1 + 712);
      if (v19 < (v18 - v17) >> 3)
      {
        v20 = *(v17 + 8 * v19);
        if (v20)
        {
          if (a2)
          {
            if (a2 == 1)
            {
              if ((*(*a1 + 120))(a1))
              {
                if ((a2 & 0x800) != 0)
                {
                  v28 = *(a1 + 744);
                  v29 = *(a1 + 752);
                  if (v28 == v29 || (v30 = *(a1 + 712), v30 >= (v29 - v28) >> 3))
                  {
                    v31 = 0;
                  }

                  else
                  {
                    v31 = *(v28 + 8 * v30);
                  }

                  v21 = sub_2992DADB0(v31, a3, a4, a9, a8, a5, a6, 0, 2u, 0);
                }

                else if ((a2 & 0xF000) != 0 && *qword_2A1460230 == 1)
                {
                  v23 = *(a1 + 744);
                  v24 = *(a1 + 752);
                  if (v23 == v24 || (v25 = *(a1 + 712), v25 >= (v24 - v23) >> 3))
                  {
                    v26 = 0;
                  }

                  else
                  {
                    v26 = *(v23 + 8 * v25);
                  }

                  v21 = sub_2992DA68C(v26, a3, a4, 0, a9, a8, (a2 >> 12) & 0xE | (a2 >> 8) & 0x10);
                }

                else
                {
                  v34 = *(a1 + 744);
                  v35 = *(a1 + 752);
                  if (v34 == v35 || (v36 = *(a1 + 712), v36 >= (v35 - v34) >> 3))
                  {
                    v37 = 0;
                  }

                  else
                  {
                    v37 = *(v34 + 8 * v36);
                  }

                  v21 = sub_2992D98B8(v37, a3, a4, 0, a9, 0, a8);
                }

                goto LABEL_27;
              }
            }

            else if (a2 == 2)
            {
              if ((a2 & 0x800) == 0)
              {
                if ((a2 & 0xF000) != 0)
                {
                  v21 = sub_2992DA3B0(v20, a3, a4, a9, a8, (a2 >> 12) & 0xE | (a2 >> 8) & 0x10);
                }

                else
                {
                  v21 = sub_29931C60C(v20, a3, a4, a9, a8);
                }

                goto LABEL_27;
              }

              v27 = 1;
              goto LABEL_26;
            }
          }

          else
          {
            if ((a2 & 0x800) != 0)
            {
              a7 = 0;
              v27 = 0;
LABEL_26:
              v21 = sub_2992DADB0(v20, a3, a4, a9, a8, a5, a6, a7, v27, 0);
              goto LABEL_27;
            }

            if ((a2 & 0xF000) != 0)
            {
              v21 = sub_2992DA124(v20, a3, a4, 0, a9, a8, (a2 >> 12) & 0xE | (a2 >> 8) & 0x10);
LABEL_27:
              v22 = v21;
LABEL_34:
              pthread_rwlock_unlock((a1 + 936));
              return v22;
            }

            v32 = sub_29931C578(v20, a3, a4);
            if ((v32 & 0x80000000) == 0)
            {
              *(a8 + 8) = v32;
              *(a8 + 12) = a4;
              v22 = 1;
              goto LABEL_34;
            }
          }
        }
      }
    }

    v22 = 0;
    goto LABEL_34;
  }

  return 0;
}

uint64_t sub_29924EB88(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  pthread_rwlock_rdlock((a1 + 936));
  sub_29924C240(a1);
  v12 = *(a1 + 744);
  v13 = *(a1 + 752);
  if (v12 == v13 || (v14 = *(a1 + 712), v14 >= (v13 - v12) >> 3) || (v15 = *(v12 + 8 * v14)) == 0)
  {
LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if ((*(*a1 + 120))(a1))
      {
        v22 = *(a1 + 744);
        v23 = *(a1 + 752);
        if ((a2 & 0xF000) != 0)
        {
          if (v22 == v23 || (v24 = *(a1 + 712), v24 >= (v23 - v22) >> 3))
          {
            v25 = 0;
          }

          else
          {
            v25 = *(v22 + 8 * v24);
          }

          v21 = sub_2992DAB70(v25, a3, a4, a5, a6);
          goto LABEL_20;
        }

        if (v22 == v23 || (v28 = *(a1 + 712), v28 >= (v23 - v22) >> 3))
        {
          v15 = 0;
        }

        else
        {
          v15 = *(v22 + 8 * v28);
        }

        v16 = a3;
        v17 = a4;
        v18 = a5;
        v19 = a6;
        v20 = 0;
LABEL_8:
        v21 = sub_2992DAAD4(v15, v16, v17, v18, v19, v20);
LABEL_20:
        v26 = v21;
        goto LABEL_15;
      }
    }

    else if (a2 == 3)
    {
      v16 = a3;
      v17 = a4;
      v18 = a5;
      v19 = a6;
      v20 = 1;
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v26 = 0;
  v29 = 0;
  if (*(v15 + 24) >= 2uLL)
  {
    sub_2992DA8EC(v15, 1u, a3, a4, a5, a6, a6, &v29);
    v26 = v29;
  }

LABEL_15:
  pthread_rwlock_unlock((a1 + 936));
  return v26;
}

uint64_t sub_29924ED6C(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(*a1 + 56);

  return v5(a1, __s, v4);
}

void sub_29924EE18(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_29924EE24(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_29924EE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (*(a1 + 752) - *(a1 + 744) == 8)
  {
    return *(a1 + 352) + 12 * (v3 >> 8) + 12 * a3;
  }

  else
  {
    return *(a1 + 352) + 12 * *(*(*(a1 + 768) + 8 * *(a1 + 712)) + ((v3 >> 6) & 0x3FFFFFC) + 4 * a3);
  }
}

char *sub_29924EEAC(uint64_t a1, uint64_t a2)
{
  result = (*(a1 + 864) + 24 * *(a2 + 8));
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void sub_29924EEE8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_29924EF30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_29924EF78(uint64_t a1)
{
  sub_29924EFB0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29924EFB0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_29924F00C(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_29924F064(void *a1, char *__src, unint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 2) >= a3)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __src) >> 2);
      v15 = a1[1];
      v16 = a3;
      if (a3 > v14)
      {
        v17 = 0;
        v15 = &v8[12 * (a3 - v14)];
        do
        {
          v18 = &v8[v17];
          v19 = *a4;
          *(v18 + 2) = *(a4 + 8);
          *v18 = v19;
          v17 += 12;
        }

        while (12 * a3 - 4 * ((v8 - __src) >> 2) != v17);
        a1[1] = v15;
        if (v8 == __src)
        {
          return;
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __src) >> 2);
      }

      v20 = &__src[12 * a3];
      v21 = &v15[-12 * a3];
      v22 = v15;
      if (v21 < v8)
      {
        v22 = v15;
        do
        {
          v23 = *v21;
          *(v22 + 2) = *(v21 + 8);
          *v22 = v23;
          v22 += 12;
          v21 += 12;
        }

        while (v21 < v8);
      }

      a1[1] = v22;
      if (v15 != v20)
      {
        memmove(&__src[12 * a3], __src, v15 - v20);
      }

      if (v6 <= v4)
      {
        if (a1[1] <= v4)
        {
          v24 = 0;
        }

        else
        {
          v24 = a3;
        }

        v4 += 12 * v24;
      }

      do
      {
        v25 = *v4;
        *(v6 + 2) = *(v4 + 8);
        *v6 = v25;
        v6 += 12;
        --v16;
      }

      while (v16);
    }

    else
    {
      v10 = *a1;
      v11 = a3 - 0x5555555555555555 * (&v8[-*a1] >> 2);
      if (v11 > 0x1555555555555555)
      {
        sub_29924EED0();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0x1555555555555555;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        sub_29924F00C(v13);
      }

      v26 = 4 * ((__src - v10) >> 2);
      v27 = (v26 + 12 * a3);
      v28 = 12 * a3;
      v29 = v26;
      do
      {
        v30 = *a4;
        *(v29 + 8) = *(a4 + 8);
        *v29 = v30;
        v29 += 12;
        v28 -= 12;
      }

      while (v28);
      memcpy(v27, __src, a1[1] - __src);
      v31 = *a1;
      v32 = &v27[a1[1] - v6];
      a1[1] = v6;
      v33 = v6 - v31;
      v34 = (v26 - (v6 - v31));
      memcpy(v34, v31, v33);
      v35 = *a1;
      *a1 = v34;
      a1[1] = v32;
      a1[2] = 0;
      if (v35)
      {

        operator delete(v35);
      }
    }
  }
}

void sub_29924F2C0(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_29924F460(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_299273DCC(a1, v10);
    }

    sub_299212A8C();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_2991D7FCC(a1, (v6 + v12), a3, v11);
  }
}

void sub_29924F460(uint64_t a1)
{
  if (*a1)
  {
    sub_299212BE4(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

double sub_29924F4A0(uint64_t a1, unint64_t a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = a2 - 40;
    v319 = a2 - 80;
    v320 = a2;
    v11 = a2 - 120;
    v12 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v12;
          v13 = a2 - v12;
          v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
          if (v14 <= 2)
          {
            if (v14 < 2)
            {
              return a6.n128_f64[0];
            }

            if (v14 == 2)
            {
              if (!(*a3)(v10, v12))
              {
                return a6.n128_f64[0];
              }

LABEL_108:
              v204 = *v12;
              v205 = *(v12 + 16);
              v328 = *(v12 + 32);
              v326 = v204;
              v327 = v205;
              v206 = *v10;
              v207 = *(v10 + 16);
              *(v12 + 32) = *(v10 + 32);
              *v12 = v206;
              *(v12 + 16) = v207;
              a6 = v326;
              v208 = v327;
              v209 = v328;
              goto LABEL_109;
            }

            goto LABEL_9;
          }

          switch(v14)
          {
            case 3:
              v202 = (*a3)((v12 + 40), v12);
              v203 = (*a3)(v10, (v12 + 40));
              if (v202)
              {
                if (v203)
                {
                  goto LABEL_108;
                }

                v293 = *v12;
                v294 = *(v12 + 16);
                v328 = *(v12 + 32);
                v326 = v293;
                v327 = v294;
                v295 = *(v12 + 56);
                *v12 = *(v12 + 40);
                *(v12 + 16) = v295;
                *(v12 + 32) = *(v12 + 72);
                v296 = v327;
                *(v12 + 40) = v326;
                *(v12 + 56) = v296;
                *(v12 + 72) = v328;
                if (!(*a3)(v10, (v12 + 40)))
                {
                  return a6.n128_f64[0];
                }

                a6 = *(v12 + 40);
                v208 = *(v12 + 56);
                v326 = a6;
                v327 = v208;
                v209 = *(v12 + 72);
                v328 = v209;
                v298 = *v10;
                v297 = *(v10 + 16);
                *(v12 + 72) = *(v10 + 32);
                *(v12 + 40) = v298;
                *(v12 + 56) = v297;
LABEL_109:
                *(v10 + 32) = v209;
                *v10 = a6;
                *(v10 + 16) = v208;
                return a6.n128_f64[0];
              }

              if (!v203)
              {
                return a6.n128_f64[0];
              }

              v273 = *(v12 + 56);
              v326 = *(v12 + 40);
              v272 = v326;
              v327 = v273;
              v328 = *(v12 + 72);
              v274 = v328;
              v276 = *v10;
              v275 = *(v10 + 16);
              *(v12 + 72) = *(v10 + 32);
              *(v12 + 40) = v276;
              *(v12 + 56) = v275;
              *(v10 + 32) = v274;
              *v10 = v272;
              *(v10 + 16) = v273;
LABEL_184:
              if ((*a3)((v12 + 40), v12))
              {
                a6 = *v12;
                v315 = *(v12 + 16);
                v328 = *(v12 + 32);
                v326 = a6;
                v327 = v315;
                v316 = *(v12 + 56);
                *v12 = *(v12 + 40);
                *(v12 + 16) = v316;
                *(v12 + 32) = *(v12 + 72);
                a6.n128_u64[0] = v326.n128_u64[0];
                v317 = v327;
                *(v12 + 40) = v326;
                *(v12 + 56) = v317;
                *(v12 + 72) = v328;
              }

              return a6.n128_f64[0];
            case 4:
              v210 = (*a3)((v12 + 40), v12);
              v211 = (*a3)((v12 + 80), (v12 + 40));
              if ((v210 & 1) == 0)
              {
                if (v211)
                {
                  v277 = *(v12 + 72);
                  v278 = *(v12 + 56);
                  v279 = *(v12 + 40);
                  v280 = *(v12 + 96);
                  *(v12 + 40) = *(v12 + 80);
                  *(v12 + 56) = v280;
                  *(v12 + 72) = *(v12 + 112);
                  *(v12 + 80) = v279;
                  *(v12 + 96) = v278;
                  *(v12 + 112) = v277;
                  if ((*a3)((v12 + 40), v12))
                  {
                    v281 = *v12;
                    v282 = *(v12 + 16);
                    v328 = *(v12 + 32);
                    v326 = v281;
                    v327 = v282;
                    v283 = *(v12 + 56);
                    *v12 = *(v12 + 40);
                    *(v12 + 16) = v283;
                    *(v12 + 32) = *(v12 + 72);
                    v284 = v327;
                    *(v12 + 40) = v326;
                    *(v12 + 56) = v284;
                    *(v12 + 72) = v328;
                  }
                }

                goto LABEL_181;
              }

              if (v211)
              {
                v212 = *v12;
                v213 = *(v12 + 16);
                v328 = *(v12 + 32);
                v326 = v212;
                v327 = v213;
                v214 = *(v12 + 96);
                *v12 = *(v12 + 80);
                *(v12 + 16) = v214;
                *(v12 + 32) = *(v12 + 112);
                v215 = v327;
                *(v12 + 80) = v326;
                *(v12 + 96) = v215;
                v216 = v328;
              }

              else
              {
                v299 = *v12;
                v300 = *(v12 + 16);
                v328 = *(v12 + 32);
                v326 = v299;
                v327 = v300;
                v301 = *(v12 + 56);
                *v12 = *(v12 + 40);
                *(v12 + 16) = v301;
                *(v12 + 32) = *(v12 + 72);
                v302 = v327;
                *(v12 + 40) = v326;
                *(v12 + 56) = v302;
                *(v12 + 72) = v328;
                if (!(*a3)((v12 + 80), (v12 + 40)))
                {
                  goto LABEL_181;
                }

                v216 = *(v12 + 72);
                v303 = *(v12 + 56);
                v304 = *(v12 + 40);
                v305 = *(v12 + 96);
                *(v12 + 40) = *(v12 + 80);
                *(v12 + 56) = v305;
                *(v12 + 72) = *(v12 + 112);
                *(v12 + 80) = v304;
                *(v12 + 96) = v303;
              }

              *(v12 + 112) = v216;
LABEL_181:
              if (!(*a3)(v10, (v12 + 80)))
              {
                return a6.n128_f64[0];
              }

              v307 = *(v12 + 96);
              v326 = *(v12 + 80);
              v306 = v326;
              v327 = v307;
              v328 = *(v12 + 112);
              v308 = v328;
              v310 = *v10;
              v309 = *(v10 + 16);
              *(v12 + 112) = *(v10 + 32);
              *(v12 + 80) = v310;
              *(v12 + 96) = v309;
              *(v10 + 32) = v308;
              *v10 = v306;
              *(v10 + 16) = v307;
              if (!(*a3)((v12 + 80), (v12 + 40)))
              {
                return a6.n128_f64[0];
              }

              v311 = *(v12 + 72);
              v312 = *(v12 + 56);
              v313 = *(v12 + 40);
              v314 = *(v12 + 96);
              *(v12 + 40) = *(v12 + 80);
              *(v12 + 56) = v314;
              *(v12 + 72) = *(v12 + 112);
              *(v12 + 80) = v313;
              *(v12 + 96) = v312;
              *(v12 + 112) = v311;
              goto LABEL_184;
            case 5:

              a6.n128_u64[0] = sub_2992506AC(v12, (v12 + 40), (v12 + 80), (v12 + 120), v10, a3).n128_u64[0];
              return a6.n128_f64[0];
          }

LABEL_9:
          if (v13 <= 959)
          {
            v217 = (v12 + 40);
            v218 = v12 == a2 || v217 == a2;
            v219 = v218;
            if (a5)
            {
              if ((v219 & 1) == 0)
              {
                v220 = 0;
                v221 = v12;
                do
                {
                  v222 = v221;
                  v221 = v217;
                  if ((*a3)(v217, v222))
                  {
                    v223 = *v221;
                    v224 = *(v221 + 16);
                    v328 = *(v221 + 32);
                    v326 = v223;
                    v327 = v224;
                    v225 = v220;
                    while (1)
                    {
                      v226 = v12 + v225;
                      v227 = *(v12 + v225 + 16);
                      *(v226 + 40) = *(v12 + v225);
                      *(v226 + 56) = v227;
                      *(v226 + 72) = *(v12 + v225 + 32);
                      if (!v225)
                      {
                        break;
                      }

                      v225 -= 40;
                      if (((*a3)(&v326, (v225 + v12)) & 1) == 0)
                      {
                        v228 = v12 + v225 + 40;
                        goto LABEL_128;
                      }
                    }

                    v228 = v12;
LABEL_128:
                    a6 = v326;
                    v229 = v327;
                    *(v228 + 32) = v328;
                    *v228 = a6;
                    *(v228 + 16) = v229;
                  }

                  v217 = (v221 + 40);
                  v220 += 40;
                }

                while (v221 + 40 != a2);
              }
            }

            else if ((v219 & 1) == 0)
            {
              v285 = v12 - 40;
              do
              {
                v286 = a1;
                a1 = v217;
                if ((*a3)(v217, v286))
                {
                  v287 = *a1;
                  v288 = *(a1 + 16);
                  v328 = *(a1 + 32);
                  v326 = v287;
                  v327 = v288;
                  v289 = v285;
                  do
                  {
                    v290 = *(v289 + 56);
                    *(v289 + 80) = *(v289 + 40);
                    *(v289 + 96) = v290;
                    *(v289 + 112) = *(v289 + 72);
                    v291 = (*a3)(&v326, v289);
                    v289 -= 40;
                  }

                  while ((v291 & 1) != 0);
                  a6 = v326;
                  v292 = v327;
                  *(v289 + 112) = v328;
                  *(v289 + 80) = a6;
                  *(v289 + 96) = v292;
                }

                v217 = (a1 + 40);
                v285 += 40;
              }

              while (a1 + 40 != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (v12 != a2)
            {
              v230 = (v14 - 2) >> 1;
              v322 = v230;
              do
              {
                v231 = v230;
                if (v322 >= v230)
                {
                  v232 = (2 * v230) | 1;
                  v233 = a1 + 40 * v232;
                  if (2 * v230 + 2 < v14 && (*a3)((a1 + 40 * v232), (v233 + 40)))
                  {
                    v233 += 40;
                    v232 = 2 * v231 + 2;
                  }

                  v234 = a1 + 40 * v231;
                  if (((*a3)(v233, v234) & 1) == 0)
                  {
                    v235 = *v234;
                    v236 = *(v234 + 16);
                    v328 = *(v234 + 32);
                    v326 = v235;
                    v327 = v236;
                    do
                    {
                      v237 = v233;
                      v238 = *v233;
                      v239 = *(v233 + 16);
                      *(v234 + 32) = *(v233 + 32);
                      *v234 = v238;
                      *(v234 + 16) = v239;
                      if (v322 < v232)
                      {
                        break;
                      }

                      v240 = (2 * v232) | 1;
                      v233 = a1 + 40 * v240;
                      v241 = 2 * v232 + 2;
                      if (v241 < v14 && (*a3)((a1 + 40 * v240), (v233 + 40)))
                      {
                        v233 += 40;
                        v240 = v241;
                      }

                      v234 = v237;
                      v232 = v240;
                    }

                    while (!(*a3)(v233, &v326));
                    v242 = v326;
                    v243 = v327;
                    *(v237 + 32) = v328;
                    *v237 = v242;
                    *(v237 + 16) = v243;
                    a2 = v320;
                  }
                }

                v230 = v231 - 1;
              }

              while (v231);
              v244 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
              do
              {
                v245 = 0;
                v246 = *a1;
                v247 = *(a1 + 16);
                v325 = *(a1 + 32);
                v323 = v246;
                v324 = v247;
                v248 = a1;
                do
                {
                  v249 = v248 + 40 * v245;
                  v250 = v249 + 40;
                  v251 = (2 * v245) | 1;
                  v252 = 2 * v245 + 2;
                  if (v252 < v244)
                  {
                    v253 = v249 + 80;
                    if ((*a3)((v249 + 40), (v249 + 80)))
                    {
                      v250 = v253;
                      v251 = v252;
                    }
                  }

                  v254 = *v250;
                  v255 = *(v250 + 16);
                  *(v248 + 32) = *(v250 + 32);
                  *v248 = v254;
                  *(v248 + 16) = v255;
                  v248 = v250;
                  v245 = v251;
                }

                while (v251 <= ((v244 - 2) >> 1));
                v256 = (a2 - 40);
                if (v250 == a2 - 40)
                {
                  v260 = a2 - 40;
                  a6 = v323;
                  v270 = v324;
                  *(v250 + 32) = v325;
                  *v250 = a6;
                  *(v250 + 16) = v270;
                }

                else
                {
                  v257 = *v256;
                  v258 = *(a2 - 24);
                  *(v250 + 32) = *(a2 - 8);
                  *v250 = v257;
                  *(v250 + 16) = v258;
                  a6 = v323;
                  v259 = v324;
                  *(a2 - 8) = v325;
                  *v256 = a6;
                  *(a2 - 24) = v259;
                  v260 = a2 - 40;
                  v261 = v250 - a1 + 40;
                  if (v261 >= 41)
                  {
                    v262 = (-2 - 0x3333333333333333 * (v261 >> 3)) >> 1;
                    v263 = a1 + 40 * v262;
                    if ((*a3)(v263, v250))
                    {
                      v264 = *v250;
                      v265 = *(v250 + 16);
                      v328 = *(v250 + 32);
                      v326 = v264;
                      v327 = v265;
                      do
                      {
                        v266 = v263;
                        v267 = *v263;
                        v268 = *(v263 + 16);
                        *(v250 + 32) = *(v263 + 32);
                        *v250 = v267;
                        *(v250 + 16) = v268;
                        if (!v262)
                        {
                          break;
                        }

                        v262 = (v262 - 1) >> 1;
                        v263 = a1 + 40 * v262;
                        v250 = v266;
                      }

                      while (((*a3)(v263, &v326) & 1) != 0);
                      a6 = v326;
                      v269 = v327;
                      *(v266 + 32) = v328;
                      *v266 = a6;
                      *(v266 + 16) = v269;
                    }
                  }
                }

                v271 = v244-- <= 2;
                a2 = v260;
              }

              while (!v271);
            }

            return a6.n128_f64[0];
          }

          v15 = v14 >> 1;
          v16 = v12 + 40 * v15;
          v17 = *a3;
          if (v13 >= 0x1401)
          {
            v18 = v17((a1 + 40 * v15), a1);
            v19 = (*a3)(v10, (a1 + 40 * v15));
            if (v18)
            {
              if (v19)
              {
                v20 = *a1;
                v21 = *(a1 + 16);
                v328 = *(a1 + 32);
                v326 = v20;
                v327 = v21;
                v22 = *v10;
                v23 = *(v10 + 16);
                *(a1 + 32) = *(v10 + 32);
                *a1 = v22;
                *(a1 + 16) = v23;
                goto LABEL_26;
              }

              v54 = *a1;
              v55 = *(a1 + 16);
              v328 = *(a1 + 32);
              v326 = v54;
              v327 = v55;
              v56 = *v16;
              v57 = *(v16 + 16);
              *(a1 + 32) = *(v16 + 32);
              *a1 = v56;
              *(a1 + 16) = v57;
              v58 = v326;
              v59 = v327;
              *(v16 + 32) = v328;
              *v16 = v58;
              *(v16 + 16) = v59;
              if ((*a3)(v10, (a1 + 40 * v15)))
              {
                v60 = *v16;
                v61 = *(v16 + 16);
                v328 = *(v16 + 32);
                v326 = v60;
                v327 = v61;
                v62 = *v10;
                v63 = *(v10 + 16);
                *(v16 + 32) = *(v10 + 32);
                *v16 = v62;
                *(v16 + 16) = v63;
LABEL_26:
                v64 = v326;
                v65 = v327;
                *(v10 + 32) = v328;
                *v10 = v64;
                *(v10 + 16) = v65;
              }
            }

            else if (v19)
            {
              v30 = *v16;
              v31 = *(v16 + 16);
              v328 = *(v16 + 32);
              v326 = v30;
              v327 = v31;
              v32 = *v10;
              v33 = *(v10 + 16);
              *(v16 + 32) = *(v10 + 32);
              *v16 = v32;
              *(v16 + 16) = v33;
              v34 = v326;
              v35 = v327;
              *(v10 + 32) = v328;
              *v10 = v34;
              *(v10 + 16) = v35;
              if ((*a3)((a1 + 40 * v15), a1))
              {
                v36 = *a1;
                v37 = *(a1 + 16);
                v328 = *(a1 + 32);
                v326 = v36;
                v327 = v37;
                v38 = *v16;
                v39 = *(v16 + 16);
                *(a1 + 32) = *(v16 + 32);
                *a1 = v38;
                *(a1 + 16) = v39;
                v40 = v326;
                v41 = v327;
                *(v16 + 32) = v328;
                *v16 = v40;
                *(v16 + 16) = v41;
              }
            }

            v66 = a1 + 40 * v15 - 40;
            v67 = (*a3)(v66, (a1 + 40));
            v68 = (*a3)(v319, v66);
            if (v67)
            {
              if (v68)
              {
                v70 = *(a1 + 56);
                v326 = *(a1 + 40);
                v69 = v326;
                v327 = v70;
                v328 = *(a1 + 72);
                v71 = v328;
                v73 = *v319;
                v72 = *(v319 + 16);
                *(a1 + 72) = *(v319 + 32);
                *(a1 + 40) = v73;
                *(a1 + 56) = v72;
                *(v319 + 32) = v71;
                *v319 = v69;
                *(v319 + 16) = v70;
              }

              else
              {
                v98 = *(a1 + 56);
                v326 = *(a1 + 40);
                v97 = v326;
                v327 = v98;
                v328 = *(a1 + 72);
                v99 = v328;
                v101 = *v66;
                v100 = *(a1 + 40 * v15 - 24);
                *(a1 + 72) = *(a1 + 40 * v15 - 8);
                *(a1 + 40) = v101;
                *(a1 + 56) = v100;
                *(a1 + 40 * v15 - 8) = v99;
                *v66 = v97;
                *(a1 + 40 * v15 - 24) = v98;
                if ((*a3)(v319, (a1 + 40 * v15 - 40)))
                {
                  v102 = *v66;
                  v103 = *(a1 + 40 * v15 - 24);
                  v328 = *(a1 + 40 * v15 - 8);
                  v326 = v102;
                  v327 = v103;
                  v104 = *v319;
                  v105 = *(v319 + 16);
                  *(a1 + 40 * v15 - 8) = *(v319 + 32);
                  *v66 = v104;
                  *(a1 + 40 * v15 - 24) = v105;
                  v106 = v326;
                  v107 = v327;
                  *(v319 + 32) = v328;
                  *v319 = v106;
                  *(v319 + 16) = v107;
                }
              }
            }

            else if (v68)
            {
              v74 = *v66;
              v75 = *(a1 + 40 * v15 - 24);
              v328 = *(a1 + 40 * v15 - 8);
              v326 = v74;
              v327 = v75;
              v76 = *v319;
              v77 = *(v319 + 16);
              *(a1 + 40 * v15 - 8) = *(v319 + 32);
              *v66 = v76;
              *(a1 + 40 * v15 - 24) = v77;
              v78 = v326;
              v79 = v327;
              *(v319 + 32) = v328;
              *v319 = v78;
              *(v319 + 16) = v79;
              if ((*a3)((a1 + 40 * v15 - 40), (a1 + 40)))
              {
                v81 = *(a1 + 56);
                v326 = *(a1 + 40);
                v80 = v326;
                v327 = v81;
                v328 = *(a1 + 72);
                v82 = v328;
                v84 = *v66;
                v83 = *(a1 + 40 * v15 - 24);
                *(a1 + 72) = *(a1 + 40 * v15 - 8);
                *(a1 + 40) = v84;
                *(a1 + 56) = v83;
                *(a1 + 40 * v15 - 8) = v82;
                *v66 = v80;
                *(a1 + 40 * v15 - 24) = v81;
              }
            }

            v108 = a1 + 40 * v15;
            v109 = (*a3)((v108 + 40), (a1 + 80));
            v110 = (*a3)(v11, (v108 + 40));
            if (v109)
            {
              if (v110)
              {
                v111 = *(a1 + 80);
                v112 = *(a1 + 96);
                v326 = v111;
                v327 = v112;
                v113 = *(a1 + 112);
                v328 = v113;
                v115 = *v11;
                v114 = *(v11 + 16);
                *(a1 + 112) = *(v11 + 32);
                *(a1 + 80) = v115;
                *(a1 + 96) = v114;
                goto LABEL_46;
              }

              v128 = *(a1 + 96);
              v326 = *(a1 + 80);
              v127 = v326;
              v327 = v128;
              v328 = *(a1 + 112);
              v129 = v328;
              v130 = *(v108 + 56);
              v131 = *(v108 + 40);
              *(a1 + 112) = *(v108 + 72);
              *(a1 + 80) = v131;
              *(a1 + 96) = v130;
              *(v108 + 56) = v128;
              *(v108 + 72) = v129;
              *(v108 + 40) = v127;
              if ((*a3)(v11, (v108 + 40)))
              {
                v132 = *(v108 + 40);
                v133 = *(v108 + 56);
                v328 = *(v108 + 72);
                v326 = v132;
                v327 = v133;
                v134 = *v11;
                v135 = *(v11 + 16);
                *(v108 + 72) = *(v11 + 32);
                *(v108 + 56) = v135;
                *(v108 + 40) = v134;
                v111 = v326;
                v112 = v327;
                v113 = v328;
LABEL_46:
                *(v11 + 32) = v113;
                *v11 = v111;
                *(v11 + 16) = v112;
              }
            }

            else if (v110)
            {
              v116 = *(v108 + 40);
              v117 = *(v108 + 56);
              v328 = *(v108 + 72);
              v326 = v116;
              v327 = v117;
              v118 = *v11;
              v119 = *(v11 + 16);
              *(v108 + 72) = *(v11 + 32);
              *(v108 + 56) = v119;
              *(v108 + 40) = v118;
              v120 = v326;
              v121 = v327;
              *(v11 + 32) = v328;
              *v11 = v120;
              *(v11 + 16) = v121;
              if ((*a3)((v108 + 40), (a1 + 80)))
              {
                v123 = *(a1 + 96);
                v326 = *(a1 + 80);
                v122 = v326;
                v327 = v123;
                v328 = *(a1 + 112);
                v124 = v328;
                v125 = *(v108 + 56);
                v126 = *(v108 + 40);
                *(a1 + 112) = *(v108 + 72);
                *(a1 + 80) = v126;
                *(a1 + 96) = v125;
                *(v108 + 56) = v123;
                *(v108 + 72) = v124;
                *(v108 + 40) = v122;
              }
            }

            v136 = (*a3)(v16, v66);
            v137 = (*a3)((v108 + 40), v16);
            if (v136)
            {
              if (v137)
              {
                v138 = *v66;
                v139 = *(v66 + 16);
                v328 = *(v66 + 32);
                v326 = v138;
                v327 = v139;
                v140 = *(v108 + 56);
                *v66 = *(v108 + 40);
                *(v66 + 16) = v140;
                *(v66 + 32) = *(v108 + 72);
                goto LABEL_55;
              }

              v151 = *v66;
              v152 = *(v66 + 16);
              v328 = *(v66 + 32);
              v326 = v151;
              v327 = v152;
              v153 = *(v16 + 16);
              *v66 = *v16;
              *(v66 + 16) = v153;
              *(v66 + 32) = *(v16 + 32);
              v154 = v326;
              v155 = v327;
              *(v16 + 32) = v328;
              *v16 = v154;
              *(v16 + 16) = v155;
              if ((*a3)((v108 + 40), v16))
              {
                v156 = *v16;
                v157 = *(v16 + 16);
                v328 = *(v16 + 32);
                v326 = v156;
                v327 = v157;
                v158 = *(v108 + 56);
                *v16 = *(v108 + 40);
                *(v16 + 16) = v158;
                *(v16 + 32) = *(v108 + 72);
LABEL_55:
                v159 = v328;
                v160 = v326;
                *(v108 + 56) = v327;
                *(v108 + 72) = v159;
                *(v108 + 40) = v160;
              }
            }

            else if (v137)
            {
              v141 = *v16;
              v142 = *(v16 + 16);
              v328 = *(v16 + 32);
              v326 = v141;
              v327 = v142;
              v143 = *(v108 + 56);
              *v16 = *(v108 + 40);
              *(v16 + 16) = v143;
              *(v16 + 32) = *(v108 + 72);
              v144 = v328;
              v145 = v326;
              *(v108 + 56) = v327;
              *(v108 + 72) = v144;
              *(v108 + 40) = v145;
              if ((*a3)(v16, v66))
              {
                v146 = *v66;
                v147 = *(v66 + 16);
                v328 = *(v66 + 32);
                v326 = v146;
                v327 = v147;
                v148 = *(v16 + 16);
                *v66 = *v16;
                *(v66 + 16) = v148;
                *(v66 + 32) = *(v16 + 32);
                v149 = v326;
                v150 = v327;
                *(v16 + 32) = v328;
                *v16 = v149;
                *(v16 + 16) = v150;
              }
            }

            v161 = *a1;
            v162 = *(a1 + 16);
            v328 = *(a1 + 32);
            v326 = v161;
            v327 = v162;
            v163 = *v16;
            v164 = *(v16 + 16);
            *(a1 + 32) = *(v16 + 32);
            *a1 = v163;
            *(a1 + 16) = v164;
            v165 = v326;
            v166 = v327;
            *(v16 + 32) = v328;
            *v16 = v165;
            *(v16 + 16) = v166;
            goto LABEL_57;
          }

          v24 = v17(a1, (a1 + 40 * v15));
          v25 = (*a3)(v10, a1);
          if (v24)
          {
            if (v25)
            {
              v26 = *v16;
              v27 = *(v16 + 16);
              v328 = *(v16 + 32);
              v326 = v26;
              v327 = v27;
              v28 = *v10;
              v29 = *(v10 + 16);
              *(v16 + 32) = *(v10 + 32);
              *v16 = v28;
              *(v16 + 16) = v29;
LABEL_35:
              v95 = v326;
              v96 = v327;
              *(v10 + 32) = v328;
              *v10 = v95;
              *(v10 + 16) = v96;
              goto LABEL_57;
            }

            v85 = *v16;
            v86 = *(v16 + 16);
            v328 = *(v16 + 32);
            v326 = v85;
            v327 = v86;
            v87 = *a1;
            v88 = *(a1 + 16);
            *(v16 + 32) = *(a1 + 32);
            *v16 = v87;
            *(v16 + 16) = v88;
            v89 = v326;
            v90 = v327;
            *(a1 + 32) = v328;
            *a1 = v89;
            *(a1 + 16) = v90;
            if ((*a3)(v10, a1))
            {
              v91 = *a1;
              v92 = *(a1 + 16);
              v328 = *(a1 + 32);
              v326 = v91;
              v327 = v92;
              v93 = *v10;
              v94 = *(v10 + 16);
              *(a1 + 32) = *(v10 + 32);
              *a1 = v93;
              *(a1 + 16) = v94;
              goto LABEL_35;
            }
          }

          else if (v25)
          {
            v42 = *a1;
            v43 = *(a1 + 16);
            v328 = *(a1 + 32);
            v326 = v42;
            v327 = v43;
            v44 = *v10;
            v45 = *(v10 + 16);
            *(a1 + 32) = *(v10 + 32);
            *a1 = v44;
            *(a1 + 16) = v45;
            v46 = v326;
            v47 = v327;
            *(v10 + 32) = v328;
            *v10 = v46;
            *(v10 + 16) = v47;
            if ((*a3)(a1, (a1 + 40 * v15)))
            {
              v48 = *v16;
              v49 = *(v16 + 16);
              v328 = *(v16 + 32);
              v326 = v48;
              v327 = v49;
              v50 = *a1;
              v51 = *(a1 + 16);
              *(v16 + 32) = *(a1 + 32);
              *v16 = v50;
              *(v16 + 16) = v51;
              v52 = v326;
              v53 = v327;
              *(a1 + 32) = v328;
              *a1 = v52;
              *(a1 + 16) = v53;
            }
          }

LABEL_57:
          --a4;
          if (a5 & 1) != 0 || ((*a3)((a1 - 40), a1))
          {
            break;
          }

          v186 = *a1;
          v187 = *(a1 + 16);
          v325 = *(a1 + 32);
          v323 = v186;
          v324 = v187;
          if ((*a3)(&v323, v10))
          {
            v12 = a1;
            a2 = v320;
            do
            {
              v12 += 40;
            }

            while (((*a3)(&v323, v12) & 1) == 0);
          }

          else
          {
            v188 = (a1 + 40);
            a2 = v320;
            do
            {
              v12 = v188;
              if (v188 >= v320)
              {
                break;
              }

              v189 = (*a3)(&v323, v188);
              v188 = (v12 + 40);
            }

            while (!v189);
          }

          v190 = a2;
          if (v12 < a2)
          {
            v190 = a2;
            do
            {
              v190 -= 40;
            }

            while (((*a3)(&v323, v190) & 1) != 0);
          }

          while (v12 < v190)
          {
            v191 = *v12;
            v192 = *(v12 + 16);
            v328 = *(v12 + 32);
            v326 = v191;
            v327 = v192;
            v193 = *v190;
            v194 = *(v190 + 16);
            *(v12 + 32) = *(v190 + 32);
            *v12 = v193;
            *(v12 + 16) = v194;
            v195 = v326;
            v196 = v327;
            *(v190 + 32) = v328;
            *v190 = v195;
            *(v190 + 16) = v196;
            do
            {
              v12 += 40;
            }

            while (!(*a3)(&v323, v12));
            do
            {
              v190 -= 40;
            }

            while (((*a3)(&v323, v190) & 1) != 0);
          }

          v197 = (v12 - 40);
          if (v12 - 40 != a1)
          {
            v198 = *v197;
            v199 = *(v12 - 24);
            *(a1 + 32) = *(v12 - 8);
            *a1 = v198;
            *(a1 + 16) = v199;
          }

          a5 = 0;
          a6 = v323;
          v200 = v324;
          *(v12 - 8) = v325;
          *v197 = a6;
          *(v12 - 24) = v200;
        }

        v167 = 0;
        v168 = *a1;
        v169 = *(a1 + 16);
        v325 = *(a1 + 32);
        v323 = v168;
        v324 = v169;
        do
        {
          v167 += 40;
        }

        while (((*a3)((v167 + a1), &v323) & 1) != 0);
        v170 = a1 + v167;
        v171 = v320;
        v218 = v167 == 40;
        a2 = v320;
        if (v218)
        {
          v171 = v320;
          do
          {
            if (v170 >= v171)
            {
              break;
            }

            v171 = (v171 - 40);
          }

          while (((*a3)(v171, &v323) & 1) == 0);
        }

        else
        {
          do
          {
            v171 = (v171 - 40);
          }

          while (!(*a3)(v171, &v323));
        }

        if (v170 >= v171)
        {
          v180 = v170 - 40;
        }

        else
        {
          v172 = v170;
          v173 = v171;
          do
          {
            v174 = *v172;
            v175 = *(v172 + 16);
            v328 = *(v172 + 32);
            v326 = v174;
            v327 = v175;
            v176 = *v173;
            v177 = v173[1];
            *(v172 + 32) = v173[2].n128_u64[0];
            *v172 = v176;
            *(v172 + 16) = v177;
            v178 = v326;
            v179 = v327;
            v173[2].n128_u64[0] = v328;
            *v173 = v178;
            v173[1] = v179;
            do
            {
              v172 += 40;
            }

            while (((*a3)(v172, &v323) & 1) != 0);
            do
            {
              v173 = (v173 - 40);
            }

            while (!(*a3)(v173, &v323));
          }

          while (v172 < v173);
          v180 = v172 - 40;
        }

        if (v180 != a1)
        {
          v181 = *v180;
          v182 = *(v180 + 16);
          *(a1 + 32) = *(v180 + 32);
          *a1 = v181;
          *(a1 + 16) = v182;
        }

        v183 = v323;
        v184 = v324;
        *(v180 + 32) = v325;
        *v180 = v183;
        *(v180 + 16) = v184;
        if (v170 >= v171)
        {
          break;
        }

LABEL_80:
        sub_29924F4A0(a1, v180, a3, a4, a5 & 1);
        a5 = 0;
        v12 = v180 + 40;
      }

      v185 = sub_299250964(a1, v180, a3);
      v12 = v180 + 40;
      if (sub_299250964(v180 + 40, v320, a3))
      {
        break;
      }

      if (!v185)
      {
        goto LABEL_80;
      }
    }

    a2 = v180;
    if (!v185)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

__n128 sub_2992506AC(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = *a1;
      v15 = a1[1];
      v16 = a1[2].n128_u64[0];
      v17 = a3[2].n128_i64[0];
      v18 = a3[1];
      *a1 = *a3;
      a1[1] = v18;
      a1[2].n128_u64[0] = v17;
LABEL_9:
      a3[2].n128_u64[0] = v16;
      *a3 = v14;
      a3[1] = v15;
      goto LABEL_10;
    }

    v29 = *a1;
    v30 = a1[1];
    v31 = a1[2].n128_i64[0];
    v32 = a2[2].n128_i64[0];
    v33 = a2[1];
    *a1 = *a2;
    a1[1] = v33;
    a1[2].n128_u64[0] = v32;
    a2[2].n128_u64[0] = v31;
    *a2 = v29;
    a2[1] = v30;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      v15 = a2[1];
      v16 = a2[2].n128_u64[0];
      v34 = a3[2].n128_i64[0];
      v35 = a3[1];
      *a2 = *a3;
      a2[1] = v35;
      a2[2].n128_u64[0] = v34;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v19 = *a2;
    v20 = a2[1];
    v21 = a2[2].n128_u64[0];
    v22 = a3[2].n128_i64[0];
    v23 = a3[1];
    *a2 = *a3;
    a2[1] = v23;
    a2[2].n128_u64[0] = v22;
    a3[2].n128_u64[0] = v21;
    *a3 = v19;
    a3[1] = v20;
    if ((*a6)(a2, a1))
    {
      v24 = *a1;
      v25 = a1[1];
      v26 = a1[2].n128_i64[0];
      v27 = a2[2].n128_i64[0];
      v28 = a2[1];
      *a1 = *a2;
      a1[1] = v28;
      a1[2].n128_u64[0] = v27;
      a2[2].n128_u64[0] = v26;
      *a2 = v24;
      a2[1] = v25;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v36 = *a3;
    v37 = a3[1];
    v38 = a3[2].n128_i64[0];
    v39 = a4[2].n128_u64[0];
    v40 = a4[1];
    *a3 = *a4;
    a3[1] = v40;
    a3[2].n128_u64[0] = v39;
    a4[2].n128_u64[0] = v38;
    *a4 = v36;
    a4[1] = v37;
    if ((*a6)(a3, a2))
    {
      v41 = *a2;
      v42 = a2[1];
      v43 = a2[2].n128_u64[0];
      v44 = a3[2].n128_i64[0];
      v45 = a3[1];
      *a2 = *a3;
      a2[1] = v45;
      a2[2].n128_u64[0] = v44;
      a3[2].n128_u64[0] = v43;
      *a3 = v41;
      a3[1] = v42;
      if ((*a6)(a2, a1))
      {
        v46 = *a1;
        v47 = a1[1];
        v48 = a1[2].n128_i64[0];
        v49 = a2[2].n128_i64[0];
        v50 = a2[1];
        *a1 = *a2;
        a1[1] = v50;
        a1[2].n128_u64[0] = v49;
        a2[2].n128_u64[0] = v48;
        *a2 = v46;
        a2[1] = v47;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v52 = *a4;
    v53 = a4[1];
    v54 = a4[2].n128_i64[0];
    v55 = a5[2].n128_u64[0];
    v56 = a5[1];
    *a4 = *a5;
    a4[1] = v56;
    a4[2].n128_u64[0] = v55;
    a5[2].n128_u64[0] = v54;
    *a5 = v52;
    a5[1] = v53;
    if ((*a6)(a4, a3))
    {
      v57 = *a3;
      v58 = a3[1];
      v59 = a3[2].n128_i64[0];
      v60 = a4[2].n128_u64[0];
      v61 = a4[1];
      *a3 = *a4;
      a3[1] = v61;
      a3[2].n128_u64[0] = v60;
      a4[2].n128_u64[0] = v59;
      *a4 = v57;
      a4[1] = v58;
      if ((*a6)(a3, a2))
      {
        v62 = *a2;
        v63 = a2[1];
        v64 = a2[2].n128_u64[0];
        v65 = a3[2].n128_i64[0];
        v66 = a3[1];
        *a2 = *a3;
        a2[1] = v66;
        a2[2].n128_u64[0] = v65;
        a3[2].n128_u64[0] = v64;
        *a3 = v62;
        a3[1] = v63;
        if ((*a6)(a2, a1))
        {
          result = *a1;
          v67 = a1[1];
          v68 = a1[2].n128_i64[0];
          v69 = a2[2].n128_i64[0];
          v70 = a2[1];
          *a1 = *a2;
          a1[1] = v70;
          a1[2].n128_u64[0] = v69;
          a2[2].n128_u64[0] = v68;
          *a2 = result;
          a2[1] = v67;
        }
      }
    }
  }

  return result;
}

BOOL sub_299250964(uint64_t a1, uint64_t a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = a2 - 40;
      v15 = (*a3)((a1 + 40), a1);
      v16 = (*a3)(v14, (a1 + 40));
      if (v15)
      {
        if (v16)
        {
          v17 = *a1;
          v18 = *(a1 + 16);
          v19 = *(a1 + 32);
          v20 = *(v14 + 32);
          v21 = *(v14 + 16);
          *a1 = *v14;
          *(a1 + 16) = v21;
          *(a1 + 32) = v20;
        }

        else
        {
          v57 = *(a1 + 32);
          v59 = *a1;
          v58 = *(a1 + 16);
          v60 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v60;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v59;
          *(a1 + 56) = v58;
          *(a1 + 72) = v57;
          if (!(*a3)(v14, (a1 + 40)))
          {
            return 1;
          }

          v17 = *(a1 + 40);
          v18 = *(a1 + 56);
          v19 = *(a1 + 72);
          v61 = *(v14 + 32);
          v62 = *(v14 + 16);
          *(a1 + 40) = *v14;
          *(a1 + 56) = v62;
          *(a1 + 72) = v61;
        }

        *(v14 + 32) = v19;
        result = 1;
        *v14 = v17;
        *(v14 + 16) = v18;
        return result;
      }

      if (!v16)
      {
        return 1;
      }

      v36 = *(a1 + 40);
      v37 = *(a1 + 56);
      v38 = *(a1 + 72);
      v39 = *(v14 + 32);
      v40 = *(v14 + 16);
      *(a1 + 40) = *v14;
      *(a1 + 56) = v40;
      *(a1 + 72) = v39;
      *(v14 + 32) = v38;
      *v14 = v36;
      *(v14 + 16) = v37;
LABEL_50:
      if ((*a3)((a1 + 40), a1))
      {
        v91 = *(a1 + 32);
        v93 = *a1;
        v92 = *(a1 + 16);
        v94 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v94;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v93;
        *(a1 + 56) = v92;
        result = 1;
        *(a1 + 72) = v91;
        return result;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_2992506AC(a1, (a1 + 40), (a1 + 80), (a1 + 120), (a2 - 40), a3);
      return 1;
    }

    v29 = a2 - 40;
    v30 = (*a3)((a1 + 40), a1);
    v31 = (*a3)((a1 + 80), (a1 + 40));
    if ((v30 & 1) == 0)
    {
      if (v31)
      {
        v49 = *(a1 + 72);
        v50 = *(a1 + 56);
        v51 = *(a1 + 40);
        v52 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v52;
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v51;
        *(a1 + 96) = v50;
        *(a1 + 112) = v49;
        if ((*a3)((a1 + 40), a1))
        {
          v53 = *(a1 + 32);
          v55 = *a1;
          v54 = *(a1 + 16);
          v56 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v56;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v55;
          *(a1 + 56) = v54;
          *(a1 + 72) = v53;
        }
      }

      goto LABEL_47;
    }

    if (v31)
    {
      v32 = *(a1 + 32);
      v34 = *a1;
      v33 = *(a1 + 16);
      v35 = *(a1 + 96);
      *a1 = *(a1 + 80);
      *(a1 + 16) = v35;
      *(a1 + 32) = *(a1 + 112);
    }

    else
    {
      v77 = *(a1 + 32);
      v79 = *a1;
      v78 = *(a1 + 16);
      v80 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v80;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v79;
      *(a1 + 56) = v78;
      *(a1 + 72) = v77;
      if (!(*a3)((a1 + 80), (a1 + 40)))
      {
        goto LABEL_47;
      }

      v32 = *(a1 + 72);
      v33 = *(a1 + 56);
      v34 = *(a1 + 40);
      v81 = *(a1 + 96);
      *(a1 + 40) = *(a1 + 80);
      *(a1 + 56) = v81;
      *(a1 + 72) = *(a1 + 112);
    }

    *(a1 + 80) = v34;
    *(a1 + 96) = v33;
    *(a1 + 112) = v32;
LABEL_47:
    if (!(*a3)(v29, (a1 + 80)))
    {
      return 1;
    }

    v82 = *(a1 + 80);
    v83 = *(a1 + 96);
    v84 = *(a1 + 112);
    v85 = *(v29 + 32);
    v86 = *(v29 + 16);
    *(a1 + 80) = *v29;
    *(a1 + 96) = v86;
    *(a1 + 112) = v85;
    *(v29 + 32) = v84;
    *v29 = v82;
    *(v29 + 16) = v83;
    if (!(*a3)((a1 + 80), (a1 + 40)))
    {
      return 1;
    }

    v87 = *(a1 + 72);
    v88 = *(a1 + 56);
    v89 = *(a1 + 40);
    v90 = *(a1 + 96);
    *(a1 + 40) = *(a1 + 80);
    *(a1 + 56) = v90;
    *(a1 + 72) = *(a1 + 112);
    *(a1 + 80) = v89;
    *(a1 + 96) = v88;
    *(a1 + 112) = v87;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 40);
    if ((*a3)((a2 - 40), a1))
    {
      v8 = *a1;
      v9 = *(a1 + 16);
      v10 = *(a1 + 32);
      v11 = *(a2 - 8);
      v12 = *(a2 - 24);
      *a1 = *v7;
      *(a1 + 16) = v12;
      *(a1 + 32) = v11;
      *(a2 - 8) = v10;
      result = 1;
      *v7 = v8;
      *(a2 - 24) = v9;
      return result;
    }

    return 1;
  }

LABEL_13:
  v22 = (a1 + 80);
  v23 = (*a3)((a1 + 40), a1);
  v24 = (*a3)((a1 + 80), (a1 + 40));
  if (v23)
  {
    if (v24)
    {
      v25 = *(a1 + 32);
      v27 = *a1;
      v26 = *(a1 + 16);
      v28 = *(a1 + 96);
      *a1 = *v22;
      *(a1 + 16) = v28;
      *(a1 + 32) = *(a1 + 112);
    }

    else
    {
      v63 = *(a1 + 32);
      v65 = *a1;
      v64 = *(a1 + 16);
      v66 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v66;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v65;
      *(a1 + 56) = v64;
      *(a1 + 72) = v63;
      if (!(*a3)((a1 + 80), (a1 + 40)))
      {
        goto LABEL_33;
      }

      v25 = *(a1 + 72);
      v26 = *(a1 + 56);
      v27 = *(a1 + 40);
      v67 = *(a1 + 96);
      *(a1 + 40) = *v22;
      *(a1 + 56) = v67;
      *(a1 + 72) = *(a1 + 112);
    }

    *v22 = v27;
    *(a1 + 96) = v26;
    *(a1 + 112) = v25;
  }

  else if (v24)
  {
    v41 = *(a1 + 72);
    v42 = *(a1 + 56);
    v43 = *(a1 + 40);
    v44 = *(a1 + 96);
    *(a1 + 40) = *v22;
    *(a1 + 56) = v44;
    *(a1 + 72) = *(a1 + 112);
    *v22 = v43;
    *(a1 + 96) = v42;
    *(a1 + 112) = v41;
    if ((*a3)((a1 + 40), a1))
    {
      v45 = *(a1 + 32);
      v47 = *a1;
      v46 = *(a1 + 16);
      v48 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v48;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v47;
      *(a1 + 56) = v46;
      *(a1 + 72) = v45;
    }
  }

LABEL_33:
  v68 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v69 = 0;
  v70 = 0;
  while (1)
  {
    if ((*a3)(v68, v22))
    {
      v71 = *(v68 + 16);
      v95 = *v68;
      v96 = v71;
      v97 = *(v68 + 32);
      v72 = v69;
      while (1)
      {
        v73 = a1 + v72;
        v74 = *(a1 + v72 + 96);
        *(v73 + 120) = *(a1 + v72 + 80);
        *(v73 + 136) = v74;
        *(v73 + 152) = *(a1 + v72 + 112);
        if (v72 == -80)
        {
          break;
        }

        v72 -= 40;
        if (((*a3)(&v95, (v73 + 40)) & 1) == 0)
        {
          v75 = a1 + v72 + 120;
          goto LABEL_41;
        }
      }

      v75 = a1;
LABEL_41:
      v76 = v96;
      *v75 = v95;
      *(v75 + 16) = v76;
      *(v75 + 32) = v97;
      if (++v70 == 8)
      {
        return v68 + 40 == a2;
      }
    }

    v22 = v68;
    v69 += 40;
    v68 += 40;
    if (v68 == a2)
    {
      return 1;
    }
  }
}

void *sub_299250EF0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2992F8674(result, a2);
  }

  return result;
}

void sub_299250F4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299250F68(void *a1)
{
  *a1 = &unk_2A1F68058;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_299250FF4(void *a1)
{
  *a1 = &unk_2A1F68088;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x1000C4077774924);
  }

  return a1;
}

void sub_299251050(void *a1)
{
  *a1 = &unk_2A1F68088;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BFB0](v1, 0x1000C4077774924);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992510CC(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](a1 + 128);
  return a1;
}

BOOL sub_299251220(uint64_t a1, unint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = a2 >= 3;
  v3 = a2 - 3;
  return v2 && sub_299251848(v5, v3, 0xFFFFFFFFFFFFFFFFLL, "▁", 3uLL) == 0;
}

void sub_299251274(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460240))
  {
    sub_2992517A8();
  }

  qword_2A1460300 = 0;
  if (!qword_2A1460278)
  {
    goto LABEL_31;
  }

  v6 = &a1[a2];
  v7 = 2 * a2;
  if ((2 * a2) > 0x7FFFFFFFFFFFFFF7)
  {
    sub_299212A30();
  }

  if (v7 > 0xA)
  {
    if ((v7 | 3) == 0xB)
    {
      v8 = 13;
    }

    else
    {
      v8 = (v7 | 3) + 1;
    }

    sub_299212A48(a3, v8);
  }

  *(a3 + 23) = v7;
  if (!a2)
  {
    *a3 = 0;
    goto LABEL_51;
  }

  bzero(a3, 4 * a2);
  *(a3 + 4 * a2) = 0;
  if (*(a3 + 23) >= 0)
  {
    v9 = 10;
  }

  else
  {
    v9 = (*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  sub_29921822C(a3, v9, 0);
  v41[4] = xmmword_2A14602C0;
  v41[5] = unk_2A14602D0;
  v41[6] = xmmword_2A14602E0;
  v41[7] = unk_2A14602F0;
  v41[0] = xmmword_2A1460280;
  v41[1] = *algn_2A1460290;
  v10 = *(a3 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  v12 = xmmword_2A14602A0;
  v13 = unk_2A14602B0;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  v14 = &v11[2 * v10];
  v41[2] = xmmword_2A14602A0;
  v41[3] = unk_2A14602B0;
  while (1)
  {
    v15 = (*(*qword_2A1460278 + 32))(qword_2A1460278, v41, a1, v6, &v38, v11, v14, &v37, v12, v13);
    qword_2A1460300 += v38 - a1;
    if (v38 == a1)
    {
      goto LABEL_44;
    }

    if (v15 != 1)
    {
      break;
    }

    if (*(a3 + 23) >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    v17 = v37 - v16;
    sub_29921822C(a3, v37 - v16, 0);
    v18 = *(a3 + 23);
    v19 = v18;
    v20 = *a3;
    if ((v18 & 0x80u) == 0)
    {
      v20 = a3;
    }

    v11 = (v20 + v17);
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a3 + 8);
    }

    v14 = (v20 + 2 * v18);
    a1 = v38;
    if (v38 >= v6)
    {
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_31;
      }

LABEL_45:
      operator delete(*a3);
LABEL_31:
      if (byte_2A1460277 < 0)
      {
        if (*(&xmmword_2A1460260 + 1))
        {
          sub_29922C89C(a3, xmmword_2A1460260, *(&xmmword_2A1460260 + 1));
          goto LABEL_51;
        }
      }

      else if (byte_2A1460277)
      {
        *a3 = xmmword_2A1460260;
        *(a3 + 16) = unk_2A1460270;
        goto LABEL_51;
      }

      sub_299251964("wstring_convert: from_bytes error");
    }
  }

  if (v15)
  {
    if (v15 != 3)
    {
LABEL_44:
      if ((*(a3 + 23) & 0x80) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_31;
    }

    if (*(a3 + 23) >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    sub_29921822C(a3, (v11 - v21) >> 1, 0);
    v22 = *(a3 + 23);
    if (v22 < 0)
    {
      if (a1 == v6)
      {
        goto LABEL_51;
      }

      v22 = *(a3 + 8);
      v28 = *(a3 + 16);
      v23 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v25 = *a3;
      v24 = HIBYTE(v28);
    }

    else
    {
      if (a1 == v6)
      {
        goto LABEL_51;
      }

      v23 = 10;
      LOBYTE(v24) = *(a3 + 23);
      v25 = a3;
    }

    v29 = v6 - a1;
    v30 = v29 >> 1;
    if (v25 > a1 || v25 + 2 * v22 + 2 <= a1)
    {
      v31 = v22 + v30;
      if (v23 - v22 < v30)
      {
        sub_299218110(a3, v23, v31 - v23);
      }

      if ((v24 & 0x80u) == 0)
      {
        v32 = a3;
      }

      else
      {
        v32 = *a3;
      }

      v33 = &v32[2 * v22];
      memmove(v33, a1, v29);
      *&v33[v29] = 0;
      if (*(a3 + 23) < 0)
      {
        *(a3 + 8) = v31;
      }

      else
      {
        *(a3 + 23) = v31 & 0x7F;
      }
    }

    else
    {
      if (v30 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_299212A30();
      }

      if (v30 > 0xA)
      {
        if ((v30 | 3) == 0xB)
        {
          v34 = 13;
        }

        else
        {
          v34 = (v30 | 3) + 1;
        }

        sub_299212A48(__dst, v34);
      }

      v40 = v29 >> 1;
      memmove(__dst, a1, v29);
      *(__dst + v29) = 0;
      if ((v40 & 0x80u) == 0)
      {
        v35 = __dst;
      }

      else
      {
        v35 = __dst[0];
      }

      if ((v40 & 0x80u) == 0)
      {
        v36 = v40;
      }

      else
      {
        v36 = __dst[1];
      }

      sub_29922C614(a3, v35, v36);
      if (v40 < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  else
  {
    if (*(a3 + 23) >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    sub_29921822C(a3, (v37 - v26) >> 1, 0);
  }

LABEL_51:
  v27 = *MEMORY[0x29EDCA608];
}

uint64_t sub_299251848(void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    sub_2991D6EC4("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

void sub_2992518BC()
{
  MEMORY[0x29C29BEA0]();

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992518F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

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

void sub_299251964(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2992519C0(exception, a1);
  __cxa_throw(exception, off_29EF0BC70, MEMORY[0x29EDC9338]);
}

std::runtime_error *sub_2992519C0(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95C0] + 16);
  return result;
}

uint64_t sub_2992519F4(uint64_t a1, __CFDictionary *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v5 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F6D008, 0);
  if (result)
  {
    v7 = result;
    if (((*(*result + 416))(result) & 0x80000000) != 0 && (*(*v7 + 96))(v7) != 90)
    {
      if (v7[1] == *(a1 + 8))
      {
        v8 = (*(*v7 + 544))(v7);
        if (v8)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          v11 = MEMORY[0x29EDB8F00];
        }

        else
        {
          v11 = MEMORY[0x29EDB8EF8];
          while (1)
          {
            v13 = *v8++;
            v12 = v13;
            if ((v13 - 58) <= 0xFFF5u && (v12 + 230) <= 0xFFF5u)
            {
              break;
            }

            if (!--v9)
            {
              goto LABEL_21;
            }
          }

          v11 = MEMORY[0x29EDB8F00];
        }
      }

      else
      {
        v11 = MEMORY[0x29EDB8EF8];
      }

LABEL_21:
      CFDictionaryAddValue(a2, @"symbolCandidateInTenKeyNumberMultiTap", *v11);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_299251BC0(uint64_t a1, char a2, int a3, int a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  v7 = (a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 40) = dispatch_queue_create("com.apple.inMemoryImmutableDictionaryDispatcher.modify", 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.inMemoryImmutableDictionaryDispatcher.build", 0);
  *(a1 + 48) = dispatch_group_create();
  switch(a4)
  {
    case 2:
      operator new();
    case 1:
      operator new();
    case 0:
      operator new();
  }

  v8 = sub_299277300(*(a1 + 4));
  v9 = sub_299277498(v8);
  if (v9)
  {
    v12.location = 0;
    v12.length = 0;
    v10 = CFStringTokenizerCreate(*MEMORY[0x29EDB8ED8], 0, v12, 0x210004uLL, v9);
    sub_2992520EC(v7, v10);
    CFRelease(v9);
  }

  return a1;
}

void sub_299252044(_Unwind_Exception *a1)
{
  sub_2992520EC(v2, 0);
  v5 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Unwind_Resume(a1);
}

void sub_2992520EC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299252124(uint64_t a1)
{
  atomic_store(1u, (a1 + 24));
  if (*a1 == 1)
  {
    dispatch_group_wait(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL);
  }

  dispatch_release(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  sub_2992520EC((a1 + 72), 0);
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_2992521F0(uint64_t a1)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_29925228C;
  block[3] = &unk_29EF0DFB0;
  block[4] = a1;
  if (*a1 == 1)
  {
    dispatch_sync(*(a1 + 40), block);
  }

  else
  {
    sub_2993E0710(*(a1 + 56));
    sub_2993E0710(*(a1 + 64));
  }
}

void sub_29925228C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_2993E0710(*(v1 + 56));
  v2 = *(v1 + 64);

  sub_2993E0710(v2);
}

void sub_2992522C8(uint64_t a1, const void *a2)
{
  v4 = (a1 + 28);
  atomic_fetch_add((a1 + 28), 1u);
  sub_2992521F0(a1);
  if (a2 && CFArrayGetCount(a2))
  {
    if (*a1 == 1)
    {
      CFRetain(a2);
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      v7[0] = MEMORY[0x29EDCA5F8];
      v7[1] = 0x40000000;
      v7[2] = sub_2992523C0;
      v7[3] = &unk_29EF0DFD0;
      v7[4] = a1;
      v7[5] = a2;
      dispatch_group_async(v5, v6, v7);
    }

    else
    {

      sub_299252400(a1, a2);
    }
  }

  else
  {
    atomic_fetch_add(v4, 0xFFFFFFFF);
  }
}

void sub_2992523C0(uint64_t a1)
{
  sub_299252400(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_299252400(uint64_t a1, const __CFArray *a2)
{
  atomic_fetch_add((a1 + 28), 0xFFFFFFFF);
  if (*(a1 + 72))
  {
    if (*(a1 + 8) == 2)
    {
      sub_299252588(a1, a2);
    }

    else
    {
      sub_2992528A0(a1, a2);
    }
  }
}

uint64_t sub_29925242C(uint64_t a1, const __CFString *a2, CFStringRef theString)
{
  if (*MEMORY[0x29EDB8F80] == a2 || *MEMORY[0x29EDB8F80] == theString)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  result = CFStringGetLength(theString);
  if (result)
  {
    if (a2)
    {
      v10 = *(a1 + 4);
      result = CFStringGetLength(a2);
      if (!result)
      {
        return result;
      }

      if (v10 == 5)
      {
        v11 = result;
        if (result >= 1)
        {
          v12 = 0;
          do
          {
            CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v12);
            if ((CharacterAtIndex - 12549) >= 0x25)
            {
              v14 = 0;
              for (i = word_299413998; *i != CharacterAtIndex; ++i)
              {
                v14 -= 2;
                if (v14 == -10)
                {
                  return 0;
                }
              }

              result = 0;
              if (-v14 == -2)
              {
                return result;
              }
            }
          }

          while (++v12 != v11);
        }
      }

      else
      {
        v16[0] = v10;
        v16[1] = 0;
        result = sub_2993C3E58(v16, a2);
        if (!result)
        {
          return result;
        }
      }

      if (sub_299277964(theString) != 1 || *(a1 + 8))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_299252588(uint64_t a1, const __CFArray *a2)
{
  v4 = MEMORY[0x29EDB9000];
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v5 = 0;
  Mutable = CFArrayCreateMutable(0, 0, v4);
  value = *MEMORY[0x29EDB8F80];
  v19 = a2;
  while (1)
  {
    Count = CFArrayGetCount(a2);
    v7 = atomic_load((a1 + 28));
    if (v5 >= Count)
    {
      break;
    }

    if (v7 > 0)
    {
      goto LABEL_32;
    }

    v8 = atomic_load((a1 + 24));
    if (v8)
    {
      goto LABEL_32;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
    v10 = CFDictionaryGetValue(ValueAtIndex, kMecabraSupplementalLexiconSurfaceKey[0]);
    v11 = CFDictionaryGetValue(ValueAtIndex, kMecabraSupplementalLexiconReadingKey[0]);
    if (sub_29925242C(a1, v11, v10))
    {
      v12 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      if (sub_299252AAC(a1, v10, v11, v12))
      {
        v13 = sub_299252C48(a1, v12, *(a1 + 4) == 5);
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v14 = theArray;
      }

      else
      {
        v14 = Mutable;
      }

      CFArrayAppendValue(v14, v10);
      if (v13)
      {
        CFArrayAppendValue(theArray, v13);
      }

      else
      {
        CFArrayAppendValue(Mutable, v11);
      }

      v15 = CFDictionaryGetValue(ValueAtIndex, kMecabraSupplementalLexiconItemPrefixKey[0]);
      a2 = v19;
      if (v15)
      {
        CFArrayAppendValue(v14, v15);
      }

      else
      {
        CFArrayAppendValue(v14, value);
      }

      v16 = CFDictionaryGetValue(ValueAtIndex, kMecabraSupplementalLexiconIdentifiersKey[0]);
      if (v16)
      {
        CFArrayAppendValue(v14, v16);
      }

      else
      {
        CFArrayAppendValue(v14, value);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    ++v5;
  }

  if (v7 <= 0)
  {
    v17 = atomic_load((a1 + 24));
    if ((v17 & 1) == 0)
    {
      if (CFArrayGetCount(theArray))
      {
        sub_2993E08DC(*(a1 + 56), theArray);
      }

      if (CFArrayGetCount(Mutable))
      {
        sub_2993E08DC(*(a1 + 64), Mutable);
      }
    }
  }

LABEL_32:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void sub_299252824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_2992530BC(va, 0);
  sub_2992530BC(va1, 0);
  _Unwind_Resume(a1);
}

void sub_2992528A0(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if ((Count & 1) == 0)
  {
    v5 = MEMORY[0x29EDB9000];
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    v7 = CFArrayCreateMutable(0, 0, v5);
    v8 = CFArrayCreateMutable(0, 0, v5);
    if (Count >= 1)
    {
      for (i = 0; i < Count; i = v13 + 1)
      {
        v10 = atomic_load((a1 + 28));
        if (v10 > 0)
        {
          break;
        }

        v11 = atomic_load((a1 + 24));
        if (v11)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v13 = i + 1;
        v14 = CFArrayGetValueAtIndex(theArray, v13);
        if (sub_29925242C(a1, v14, ValueAtIndex))
        {
          CFArrayRemoveAllValues(v8);
          if (sub_299252AAC(a1, ValueAtIndex, v14, v8) && (v15 = sub_299252C48(a1, v8, *(a1 + 4) == 5)) != 0)
          {
            v16 = v15;
            CFArrayAppendValue(Mutable, ValueAtIndex);
            CFArrayAppendValue(Mutable, v16);
            CFRelease(v16);
          }

          else
          {
            CFArrayAppendValue(v7, ValueAtIndex);
            CFArrayAppendValue(v7, v14);
          }
        }
      }
    }

    v17 = atomic_load((a1 + 28));
    if (v17 <= 0)
    {
      v18 = atomic_load((a1 + 24));
      if ((v18 & 1) == 0)
      {
        if (CFArrayGetCount(Mutable))
        {
          sub_2993E08DC(*(a1 + 56), Mutable);
        }

        if (CFArrayGetCount(v7))
        {
          sub_2993E08DC(*(a1 + 64), v7);
        }
      }
    }

    CFRelease(Mutable);
    CFRelease(v7);

    CFRelease(v8);
  }
}

BOOL sub_299252AAC(uint64_t a1, const __CFString *a2, CFStringRef theString, __CFArray *a4)
{
  Length = CFStringGetLength(theString);
  if (Length < CFStringGetLength(a2))
  {
    return 0;
  }

  v9 = *(a1 + 72);
  v22.length = CFStringGetLength(a2);
  v22.location = 0;
  CFStringTokenizerSetString(v9, a2, v22);
  if (!CFStringTokenizerAdvanceToNextToken(*(a1 + 72)))
  {
    return 1;
  }

  v10 = 0;
  theArray = a4;
  do
  {
    v11 = CFStringTokenizerCopyCurrentTokenAttribute(*(a1 + 72), 0x10000uLL);
    v12 = sub_299279A74(v11, *(a1 + 4) == 5);
    if (v11)
    {
      CFRelease(v11);
    }

    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    Count = CFArrayGetCount(v12);
    if (Count >= 1)
    {
      v15 = Count;
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v16);
        v18 = CFStringGetLength(ValueAtIndex);
        v19 = v18 + v10;
        if (v18 + v10 > Length)
        {
          break;
        }

        v23.length = v18;
        v23.location = v10;
        if (CFStringCompareWithOptions(theString, ValueAtIndex, v23, 1uLL))
        {
          break;
        }

        ++v16;
        v10 = v19;
        if (v15 == v16)
        {
          goto LABEL_14;
        }
      }

      CFRelease(v12);
      return 0;
    }

    v19 = v10;
LABEL_14:
    v24.length = CFArrayGetCount(v12);
    v24.location = 0;
    CFArrayAppendArray(theArray, v12, v24);
    CFRelease(v12);
    v10 = v19;
  }

  while (CFStringTokenizerAdvanceToNextToken(*(a1 + 72)));
  return v13;
}

CFStringRef sub_299252C48(uint64_t a1, CFArrayRef theArray, char a3)
{
  __src = 0;
  v38 = 0;
  v39 = 0;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  for (i = 0; i != Count; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    __p = 0;
    v35 = 0;
    v36 = 0;
    buffer = 0;
    v32 = 0;
    v33 = 0;
    Length = CFStringGetLength(ValueAtIndex);
    sub_299217A94(&buffer, Length);
    v40.length = CFStringGetLength(ValueAtIndex);
    v40.location = 0;
    CFStringGetCharacters(ValueAtIndex, v40, buffer);
    if ((sub_2993DEBE4(&buffer, &__p, a3) & 1) == 0)
    {
      goto LABEL_35;
    }

    v10 = *(a1 + 16);
    v11 = **v10;
    v12 = __p;
    if (v11)
    {
      v13 = v35 == __p;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = 0;
      v15 = v35 - __p;
      do
      {
        v11 = sub_2993B2448(v10, v11, v12[v14++]);
        if (v11)
        {
          v16 = v14 >= v15;
        }

        else
        {
          v16 = 1;
        }
      }

      while (!v16);
    }

    if (!v11 || (v17 = v11[1], v17 == 0xFFFF))
    {
LABEL_35:
      if (buffer)
      {
        v32 = buffer;
        operator delete(buffer);
      }

      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      v29 = 0;
      goto LABEL_40;
    }

    v18 = v38;
    if (v38 >= v39)
    {
      v20 = __src;
      v21 = v38 - __src;
      v22 = (v38 - __src) >> 1;
      if (v22 <= -2)
      {
        sub_299212A8C();
      }

      if (v39 - __src <= v22 + 1)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = v39 - __src;
      }

      v24 = 0x7FFFFFFFFFFFFFFFLL;
      if (v39 - __src < 0x7FFFFFFFFFFFFFFELL)
      {
        v24 = v23;
      }

      if (v24)
      {
        sub_299212A48(&__src, v24);
      }

      v25 = (2 * v22);
      v26 = &v25[-((v38 - __src) >> 1)];
      *v25 = v17;
      v19 = (v25 + 1);
      memcpy(v26, v20, v21);
      v27 = __src;
      __src = v26;
      v38 = v19;
      v39 = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v38 = v17;
      v19 = v18 + 2;
    }

    v38 = v19;
    if (buffer)
    {
      v32 = buffer;
      operator delete(buffer);
    }

    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }
  }

  v28 = __src;
  if (__src != v38)
  {
    v29 = CFStringCreateWithCharacters(0, __src, (v38 - __src) >> 1);
LABEL_40:
    v28 = __src;
    if (!__src)
    {
      return v29;
    }

LABEL_41:
    v38 = v28;
    operator delete(v28);
    return v29;
  }

  v29 = 0;
  if (__src)
  {
    goto LABEL_41;
  }

  return v29;
}

void sub_299252EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299252F14(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 56))
  {
    v4 = *(a1 + 56);
    sub_299252F98(a2, &v4);
  }

  if (*(a1 + 64))
  {
    v4 = *(a1 + 64);
    sub_299252F98(a2, &v4);
  }
}

void sub_299252F78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299252F98(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_29925306C();
    }

    v8 = v4 - *a1;
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
      sub_29920B86C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_299253084(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_2992530BC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_29925313C()
{
  if ((atomic_load_explicit(&qword_2A1461D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461D98))
  {
    unk_2A1A99F20 = 0u;
    unk_2A1A99F10 = 0u;
    qword_2A1461D90 = _CFRuntimeRegisterClass();
    __cxa_guard_release(&qword_2A1461D98);
  }

  return qword_2A1461D90;
}

uint64_t sub_2992531C4(uint64_t a1)
{
  CFAllocatorGetDefault();
  sub_29925313C();
  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

uint64_t sub_29925322C()
{
  if ((atomic_load_explicit(&qword_2A1461DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461DA8))
  {
    unk_2A1A99F80 = 0u;
    unk_2A1A99F70 = 0u;
    qword_2A1461DA0 = _CFRuntimeRegisterClass();
    __cxa_guard_release(&qword_2A1461DA8);
  }

  return qword_2A1461DA0;
}

uint64_t sub_2992532B4(uint64_t a1)
{
  CFAllocatorGetDefault();
  sub_29925322C();
  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

void *sub_2992532F8(void *a1)
{
  *a1 = &unk_2A1F68170;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  return a1;
}

void sub_299253364(void *a1)
{
  *a1 = &unk_2A1F68170;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 32))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_299253414(void *a1)
{
  sub_29925344C(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_29925344C(void *a1)
{
  *a1 = &unk_2A1F681D8;
  v2 = a1[1];
  if (v2)
  {
    sub_299219AB4((v2 + 24), 0);
    MEMORY[0x29C29BFB0](v2, 0x1060C40B5E1536ALL);
  }

  return a1;
}

uint64_t sub_2992534B8(uint64_t a1, char *a2, void *a3)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v5 = *(a3 + 23);
    if (v5 > 7)
    {
      if (*(a3 + 23) <= 0xAu)
      {
        if (v5 != 8)
        {
          if (v5 != 10)
          {
            goto LABEL_176;
          }

          if (*a3 != 0x656D656C70707573 || *(a3 + 4) != 29806)
          {
            goto LABEL_176;
          }

          goto LABEL_78;
        }

        if (*a3 != 0x79726F6765746163)
        {
          goto LABEL_176;
        }

        goto LABEL_72;
      }

      if (v5 != 11)
      {
        if (v5 != 16)
        {
          goto LABEL_176;
        }

        if (*a3 != 0x635F656C676E6973 || a3[1] != 0x7265746361726168)
        {
          goto LABEL_176;
        }

        goto LABEL_36;
      }

      if (*a3 != 0x696D5F7465737361 || *(a3 + 3) != 0x646578696D5F7465)
      {
LABEL_176:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Wrong dictionary type string");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

LABEL_111:
      v11 = 15;
      goto LABEL_115;
    }

    if (v5 != 5)
    {
      if (v5 != 6)
      {
        if (v5 != 7)
        {
          goto LABEL_176;
        }

        if (*a3 != 1818717797 || *(a3 + 3) != 1752394092)
        {
          goto LABEL_176;
        }

LABEL_110:
        v11 = 6;
        goto LABEL_115;
      }

      v13 = *a3 == 1953724787 && *(a3 + 2) == 28005;
      v14 = a3;
      if (!v13)
      {
LABEL_104:
        v28 = *v14;
        v29 = *(v14 + 2);
        if (v28 == 1768383858 && v29 == 28271)
        {
          v11 = 16;
          goto LABEL_115;
        }

        goto LABEL_176;
      }

LABEL_50:
      v11 = 0;
      goto LABEL_115;
    }

    if (*a3 != 1702390125 || *(a3 + 4) != 100)
    {
      if (*a3 != 1785687397 || *(a3 + 4) != 105)
      {
        if (*a3 != 1702064993 || *(a3 + 4) != 116)
        {
          goto LABEL_176;
        }

        goto LABEL_112;
      }

LABEL_114:
      v11 = 4;
      goto LABEL_115;
    }

LABEL_113:
    v11 = 12;
    goto LABEL_115;
  }

  v7 = a3[1];
  if (v7 <= 7)
  {
    if (v7 == 5)
    {
      v20 = *a3;
      if (**a3 == 1702390125 && *(*a3 + 4) == 100)
      {
        goto LABEL_113;
      }

      v22 = *v20;
      v23 = *(v20 + 4);
      if (v22 == 1785687397 && v23 == 105)
      {
        goto LABEL_114;
      }
    }

    else if (v7 == 6 && **a3 == 1953724787 && *(*a3 + 4) == 28005)
    {
      goto LABEL_50;
    }

LABEL_87:
    if (a3[1] == 7 && **a3 == 1818717797 && *(*a3 + 3) == 1752394092)
    {
      goto LABEL_110;
    }

    if (a3[1] != 5 || (**a3 == 1702064993 ? (v26 = *(*a3 + 4) == 116) : (v26 = 0), !v26))
    {
      if (a3[1] == 11 && **a3 == 0x696D5F7465737361 && *(*a3 + 3) == 0x646578696D5F7465)
      {
        goto LABEL_111;
      }

      if (a3[1] != 6)
      {
        goto LABEL_176;
      }

      v14 = *a3;
      goto LABEL_104;
    }

LABEL_112:
    v11 = 7;
    goto LABEL_115;
  }

  if (v7 == 8)
  {
    if (**a3 == 0x79726F6765746163)
    {
LABEL_72:
      v11 = 3;
      goto LABEL_115;
    }

    goto LABEL_87;
  }

  if (v7 == 10)
  {
    if (**a3 == 0x656D656C70707573 && *(*a3 + 8) == 29806)
    {
LABEL_78:
      v11 = 5;
      goto LABEL_115;
    }

    goto LABEL_87;
  }

  if (v7 != 16)
  {
    goto LABEL_87;
  }

  if (**a3 != 0x635F656C676E6973 || *(*a3 + 8) != 0x7265746361726168)
  {
    goto LABEL_87;
  }

LABEL_36:
  v11 = 1;
LABEL_115:
  *(a1 + 40) = v11;
  if (a2[23] >= 0)
  {
    v31 = a2;
  }

  else
  {
    v31 = *a2;
  }

  v32 = sub_29927901C(v31);
  v76 = v32;
  if (!v32)
  {
    v68 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v68, "Cannot load dictionary index property plist.");
    __cxa_throw(v68, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v33 = *(a3 + 23);
  if (v33 >= 0)
  {
    v34 = a3;
  }

  else
  {
    v34 = *a3;
  }

  if (v33 >= 0)
  {
    v35 = *(a3 + 23);
  }

  else
  {
    v35 = a3[1];
  }

  v36 = sub_299279868(v34, v35);
  v75 = v36;
  Value = CFDictionaryGetValue(v32, v36);
  v38 = Value;
  if (!Value)
  {
    v69 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x29C29BA60](v69, v74);
    __cxa_throw(v69, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v39 = CFDictionaryGetValue(Value, @"feature_format");
  if (CFStringCompare(v39, @"full", 0))
  {
    if (CFStringCompare(v39, @"skip_syllable_lengths", 0))
    {
      v71 = __cxa_allocate_exception(8uLL);
      *v71 = "Unrecognized feature format.";
      __cxa_throw(v71, MEMORY[0x29EDC9468], 0);
    }

    v40 = 1;
  }

  else
  {
    v40 = 0;
  }

  *(a1 + 24) = v40;
  v41 = CFDictionaryGetValue(v38, @"indexes");
  v42 = v41;
  if (!v41 || !CFArrayGetCount(v41))
  {
    v67 = __cxa_allocate_exception(0x18uLL);
    std::operator+<char>();
    __cxa_throw(v67, &unk_2A1F638C0, MEMORY[0x29EDC9388]);
  }

  v43 = 0;
  v44 = 0;
  v72 = v36;
  v73 = v32;
  while (v44 < CFArrayGetCount(v42))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v42, v44);
    v46 = CFDictionaryGetValue(ValueAtIndex, @"is_reversed");
    if (v46)
    {
      v47 = CFBooleanGetValue(v46) != 0;
    }

    else
    {
      v47 = 0;
    }

    v48 = CFDictionaryGetValue(ValueAtIndex, @"type");
    v49 = CFStringCompare(v48, @"string", 0);
    v50 = v49 == kCFCompareEqualTo;
    if (v49)
    {
      if (CFStringCompare(v48, @"syllable_id", 0))
      {
        v66 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v66, "Unrecognized dictionary key type.");
        goto LABEL_170;
      }

      if (!v47)
      {
        v66 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v66, "syllable_id based dictionary key must be in reversed direction");
LABEL_170:
        __cxa_throw(v66, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      if (v43)
      {
        v66 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v66, "Syllable ID indexes must be before string indexes");
        goto LABEL_170;
      }

      ++*(a1 + 32);
      v51 = 1;
    }

    else
    {
      v51 = 0;
    }

    v52 = CFDictionaryGetValue(ValueAtIndex, @"has_sub_index_for_prefix");
    if (v52)
    {
      v53 = (CFBooleanGetValue(v52) != 0) << 40;
    }

    else
    {
      v53 = 0;
    }

    v55 = *(a1 + 8);
    v54 = *(a1 + 16);
    if (v55 >= v54)
    {
      v58 = *a1;
      v59 = v55 - *a1;
      v60 = (v59 >> 3) + 1;
      if (v60 >> 61)
      {
        sub_299212A8C();
      }

      v61 = v54 - v58;
      if (v61 >> 2 > v60)
      {
        v60 = v61 >> 2;
      }

      if (v61 >= 0x7FFFFFFFFFFFFFF8)
      {
        v62 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v60;
      }

      if (v62)
      {
        if (!(v62 >> 61))
        {
          operator new();
        }

        sub_29919600C();
      }

      v63 = (8 * (v59 >> 3));
      v64 = 0x100000000;
      if (!v47)
      {
        v64 = 0;
      }

      *v63 = v51 | v53 | v64;
      v57 = v63 + 1;
      memcpy(0, v58, v59);
      *a1 = 0;
      *(a1 + 8) = v57;
      *(a1 + 16) = 0;
      if (v58)
      {
        operator delete(v58);
      }
    }

    else
    {
      v56 = 0x100000000;
      if (!v47)
      {
        v56 = 0;
      }

      *v55 = v51 | v53 | v56;
      v57 = v55 + 1;
    }

    *(a1 + 8) = v57;
    ++v44;
    v43 = v50;
    v36 = v72;
    v32 = v73;
  }

  if (v36)
  {
    CFRelease(v36);
  }

  CFRelease(v32);
  return a1;
}

void sub_299253D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *v22;
  if (*v22)
  {
    *(v22 + 8) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_299253E70(void *a1, char *__s)
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
      sub_29922F0C0();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_299253EF4(uint64_t a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = MEMORY[0x29EDB9010];
  v4 = MEMORY[0x29EDB9020];
  *a1 = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *(a1 + 8) = CFDictionaryCreateMutable(v2, 0, v3, v4);
  *(a1 + 16) = 0;
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  CFDictionaryAddValue(*a1, qword_2A145E808, Mutable);
  CFRelease(Mutable);
  CFDictionaryAddValue(*a1, qword_2A145E810, *MEMORY[0x29EDB8F80]);
  return a1;
}

uint64_t sub_299253FC0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_299254000(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v6 = v1;
    v7 = v2;
    valuePtr = 1;
    v4 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt8Type, &valuePtr);
    CFDictionaryAddValue(*(a1 + 8), qword_2A145E818, v4);
    CFRelease(v4);
  }
}

_BYTE *sub_299254078(_BYTE *result, const __CFString *a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  valuePtr = a4;
  if (result[16] != 1)
  {
    return result;
  }

  v10 = result;
  result = CFDictionaryGetValue(*result, qword_2A145E808);
  if (!result || !*(v10 + 1))
  {
    return result;
  }

  v11 = result;
  v12 = *MEMORY[0x29EDB8ED8];
  v13 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberLongType, &valuePtr);
  CFDictionaryAddValue(*(v10 + 1), @"MecabraAnalysisOption", v13);
  CFRelease(v13);
  if (a2)
  {
    CFDictionaryAddValue(*(v10 + 1), @"CurrentAnalysisString", a2);
  }

  if (a5 && a6)
  {
    if ((*(*a6 + 24))(a6))
    {
      goto LABEL_22;
    }

    v50 = a2;
    v51 = v12;
    Mutable = CFStringCreateMutable(v12, 0);
    v15 = *(a5 + 16);
    if (v15)
    {
      Count = CFArrayGetCount(v15);
      if (Count >= 1)
      {
        v17 = Count;
        for (i = 0; i != v17; ++i)
        {
          v19 = sub_299324228(a5, i);
          v22 = sub_29928BDA8(v19, v20, v21);
          v53 = v22;
          if (v22)
          {
            v23 = v22;
            CFStringAppend(Mutable, v22);
            CFStringAppend(Mutable, @"\n");
            CFRelease(v23);
          }
        }
      }
    }

    v24 = CFArrayGetCount(*(a5 + 32));
    if (v24 >= 1)
    {
      v25 = v24;
      for (j = 0; j != v25; ++j)
      {
        v27 = sub_299324314(a5, j);
        v30 = sub_29928BDA8(v27, v28, v29);
        v53 = v30;
        if (v30)
        {
          v31 = v30;
          CFStringAppend(Mutable, v30);
          CFStringAppend(Mutable, @"\n");
          CFRelease(v31);
        }
      }
    }

    CFDictionaryAddValue(*(v10 + 1), @"CandidateContext", Mutable);
    CFRelease(Mutable);
    a2 = v50;
    v12 = v51;
  }

  if (a6)
  {
LABEL_22:
    v32 = sub_29939AF08(a6, 0);
    CFDictionaryAddValue(*(v10 + 1), @"InputContext", v32);
    CFRelease(v32);
    if (!a5)
    {
      goto LABEL_26;
    }

LABEL_25:
    v33 = *(a5 + 72);
    if (v33)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  CFDictionaryAddValue(*(v10 + 1), @"InputContext", @"Empty Input Context.");
  if (a5)
  {
    goto LABEL_25;
  }

LABEL_26:
  v33 = @"Empty App Context.";
LABEL_27:
  CFDictionaryAddValue(*(v10 + 1), @"AppContext", v33);
  if (a3)
  {
    v34 = CFStringCreateMutable(v12, 0);
    v35 = CFArrayGetCount(a3);
    if (v35 >= 1)
    {
      v36 = v35;
      for (k = 0; k != v36; ++k)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, k);
        v39 = (*(*ValueAtIndex[3] + 40))(ValueAtIndex[3]);
        v53 = v39;
        if (v39)
        {
          v40 = v39;
          CFStringAppend(v34, v39);
          CFRelease(v40);
        }
      }
    }

    CFDictionaryAddValue(*(v10 + 1), @"GesturesData", v34);
    if (v34)
    {
      CFRelease(v34);
    }
  }

  if (a5)
  {
    v41 = *(a5 + 48);
    if (v41)
    {
      if (CFStringGetLength(a2) <= 80)
      {
        v42 = sub_2993086FC(v41);
        if (v42)
        {
          v43 = v42;
          CFDictionaryAddValue(*(v10 + 1), @"GeometryData", v42);
          CFRelease(v43);
        }
      }
    }
  }

  if (!a2)
  {
    v45 = 1;
    goto LABEL_44;
  }

  Length = CFStringGetLength(a2);
  v45 = Length < 31;
  if (Length <= 50)
  {
LABEL_44:
    v46 = 5;
    goto LABEL_45;
  }

  v46 = 1;
LABEL_45:
  if (v45)
  {
    v47 = 10;
  }

  else
  {
    v47 = v46;
  }

  v48 = CFArrayGetCount(v11);
  if (v48 >= v47)
  {
    v49 = v48 + 1;
    do
    {
      CFArrayRemoveValueAtIndex(v11, 0);
      --v49;
    }

    while (v49 > v47);
  }

  CFArrayAppendValue(v11, *(v10 + 1));
  CFRelease(*(v10 + 1));
  result = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *(v10 + 1) = result;
  return result;
}

void sub_299254498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992544D0(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    CFDictionaryReplaceValue(*a1, qword_2A145E808, Mutable);

    CFRelease(Mutable);
  }
}

uint64_t sub_299254548(uint64_t result, uint64_t a2, uint64_t a3, int a4, unsigned __int16 **a5)
{
  *(result + 8) = a4;
  *(result + 16) = 0;
  *(result + 24) = 0u;
  *(result + 40) = 0xFFFFFFFFLL;
  *result = &unk_2A1F68230;
  *(result + 48) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 64) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = a5[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *a5;
    do
    {
      v8 = *v7++;
      v6 = v6 + v8 - 48;
      if (v6 <= 0x20)
      {
        *(result + 44) |= 1 << (v6 - 1);
      }

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2992545E4(uint64_t result, uint64_t a2)
{
  *result = &unk_2A1F73CB8;
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  *(result + 40) = *(a2 + 40);
  *(result + 24) = v3;
  *(result + 8) = v2;
  *result = &unk_2A1F68230;
  v4 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29925466C(void *a1)
{
  sub_299254760(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992546AC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    v3 = **(a1 + 48);
    if (!v3)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (*v2)
  {
    CFStringGetLength(*v2);
  }

  v3 = **(a1 + 48);
  if (v3)
  {
LABEL_7:
    CFStringGetLength(v3);
  }

  return 0;
}

void sub_29925472C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_299254738(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_299254744(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *sub_299254760(void *a1)
{
  *a1 = &unk_2A1F68230;
  v2 = a1[9];
  if (v2)
  {
    sub_2991A893C(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_2991A893C(v3);
  }

  return a1;
}

uint64_t sub_2992547B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 48) = 0u;
  v8 = a1 + 48;
  *(a1 + 40) = v7;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v9 = **(a2 + 104);
  v10 = *(a2 + 56);
  v11 = (*(a2 + 64) - v10) >> 1;
  v12 = v10 + 2 * v9;
  if (v11 <= v9)
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v11 - v9;
  }

  else
  {
    v13 = 0;
  }

  if (v11 <= v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  v15 = **(a2 + 80);
  v16 = *(a2 + 32);
  v17 = (*(a2 + 40) - v16) >> 1;
  v18 = v16 + 2 * v15;
  if (v17 <= v15)
  {
    v18 = 0;
  }

  if (v16)
  {
    v19 = v17 - v15;
  }

  else
  {
    v19 = 0;
  }

  if (v17 <= v15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  sub_299218E20((a1 + 48), *(a3 + 8) + v14);
  sub_29925493C(&v22, *(a1 + 8), (*(a1 + 8) + 2 * *(a1 + 16)), v8);
  sub_29925493C(&v23, *a3, (*a3 + 2 * *(a3 + 8)), v8);
  sub_299218E20((v8 + 24), *(a4 + 8) + *(a1 + 16));
  sub_29925493C(&v24, *(a1 + 8), (*(a1 + 8) + 2 * *(a1 + 16)), (v8 + 24));
  sub_29925493C(&v25, *a4, (*a4 + 2 * *(a4 + 8)), (v8 + 24));
  return a1;
}

void sub_299254910(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

_WORD *sub_29925493C(uint64_t a1, _WORD *a2, _WORD *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 1;
        if (v10 >> 1 <= -2)
        {
          sub_299212A8C();
        }

        v12 = v8 - v9;
        if (v12 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v12;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_299212A48(a4, v14);
        }

        *(2 * v11) = *v5;
        v7 = (2 * v11 + 2);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 2;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_299254A50(int *a1, CFArrayRef *a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, float a8)
{
  v10 = a5;
  v14 = a3[a5];
  *a6 = v14;
  *(a6 + 4) = a8;
  v15 = *(a1 + 10);
  v16 = *(a1 + 11);
  if (v16 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = *(a1 + 11);
  }

  if (v17)
  {
    if (*a3 == *v15)
    {
      v18 = 0;
      while (v17 - 1 != v18)
      {
        v19 = a3[v18 + 1];
        v20 = v15[++v18];
        if (v19 != v20)
        {
          goto LABEL_12;
        }
      }

      v18 = v17;
LABEL_12:
      v21 = v17 > v18;
    }

    else
    {
      v21 = 1;
    }

    v22 = &v15[v16 - 1];
    v23 = &a3[a4 - 1];
    while (1)
    {
      v25 = *v23--;
      v24 = v25;
      v26 = *v22--;
      if (v24 != v26)
      {
        break;
      }

      if (!--v17)
      {
        goto LABEL_16;
      }
    }

    if (v21)
    {
      return 1;
    }
  }

  else
  {
LABEL_16:
    v10 = a5 - a4 + v16;
  }

  if (v10 < 0)
  {
    return 1;
  }

  v27 = *a1;
  v28 = sub_299237120();
  if ((v27 & 0x40) == 0)
  {
    v29 = v10 & 0x7FFFFFFF;
LABEL_44:
    v30 = 1;
    goto LABEL_45;
  }

  v31 = 255;
  if (*v28)
  {
    v31 = 60;
  }

  v29 = v10 & 0x7FFFFFFF;
  if (v31 <= v29)
  {
    goto LABEL_44;
  }

  v32 = v10 ? v15[v10 - 1] : 0;
  v33 = v16 - 1 <= v29 ? 0 : v15[v10 + 1];
  v34 = sub_2993C4830(v14, v32, v33, (*a1 >> 6) & 8 | *a1 & 0x20 | (*a1 >> 4) & 0x10 | (*a1 << 24 >> 31) & 6);
  if (!v34)
  {
    goto LABEL_44;
  }

  v35 = *v34;
  v36 = v34[1];
  if (*v34 == v36)
  {
    goto LABEL_44;
  }

  v37 = a8 + -1.0;
  v30 = 1;
  do
  {
    v38 = *v35;
    if (v38 != v14)
    {
      if (v30 < 1)
      {
LABEL_39:
        v41 = a6 + 8 * v30;
        *v41 = v38;
        *(v41 + 4) = v37;
        v30 = (v30 + 1);
      }

      else
      {
        v39 = v30;
        v40 = (a6 + 4);
        while (*(v40 - 2) != v38)
        {
          v40 += 2;
          if (!--v39)
          {
            goto LABEL_39;
          }
        }

        if (*v40 < v37)
        {
          *v40 = v37;
        }
      }
    }

    ++v35;
  }

  while (v35 != v36);
LABEL_45:
  if ((v27 & 0x20) != 0)
  {
    if (v29 < 0x28)
    {
      v42 = -0.65;
      goto LABEL_54;
    }

    v43 = v29 >= 0x78;
  }

  else
  {
    v42 = -0.5;
    if (v29 < 0x14)
    {
      goto LABEL_54;
    }

    v43 = v29 >= 0x3C;
  }

  if (v43)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = -0.2;
  }

LABEL_54:
  if (a2)
  {
    if ((v27 & 0x10) != 0)
    {
      if (*a2)
      {
        if (CFArrayGetCount(*a2) > v29)
        {
          v44 = sub_299308694(a2, v29);
          if (v44)
          {
            v45 = v44;
            v46 = *v44;
            if (*v44)
            {
              v47 = *(v44 + 1);
            }

            else
            {
              v47 = 0.0;
            }

            v48 = 0;
            if ((v27 & 0x20) != 0)
            {
              v49 = 4.0;
            }

            else
            {
              v49 = 7.5;
            }

            v50 = a8;
            while (1)
            {
              v51 = v14 == 9787;
              if (v46 == 9787)
              {
                goto LABEL_120;
              }

              if (!v46)
              {
                return v30;
              }

              v52 = u_charType(v46);
              v51 = v14 == v46;
              if (v14 == v46 || (v52 - 30) <= 0xF4u)
              {
LABEL_120:
                if (!v51)
                {
                  v53 = *(v45 + 1) - v47;
                  if (v53 >= v42)
                  {
                    v54 = v49 * v53;
                    if ((v27 & 0x20) != 0)
                    {
                      if (v14 == 105 && v46 == 111 || v14 == 111 && v46 == 105 || (v14 == 105 ? (v62 = v46 == 117) : (v62 = 0), !v62 ? (v63 = 0) : (v63 = 1), v46 == 105 ? (v64 = v14 == 117) : (v64 = 0), v64 || v63))
                      {
                        v54 = v54 + -2.0;
                      }

                      else
                      {
                        v66 = v14 == 109 && v46 == 110;
                        if (v14 == 110 && v46 == 109 || v66)
                        {
                          v54 = v54 + -0.3;
                        }
                      }
                    }

                    v55 = v54 + -0.3 + v50;
                    if (v30 < 1)
                    {
LABEL_82:
                      v58 = a6 + 8 * v30;
                      *v58 = v46;
                      *(v58 + 4) = v55;
                      v30 = (v30 + 1);
                    }

                    else
                    {
                      v56 = v30;
                      v57 = (a6 + 4);
                      while (*(v57 - 2) != v46)
                      {
                        v57 += 2;
                        if (!--v56)
                        {
                          goto LABEL_82;
                        }
                      }

                      if (*v57 < v55)
                      {
                        *v57 = v55;
                      }
                    }

                    v59 = v30 >= a7 ? v48 : v48 + 1;
                    if (v30 >= a7)
                    {
                      break;
                    }

                    v60 = v48 + 1;
                    v48 = v59;
                    if (v60 > 2)
                    {
                      break;
                    }
                  }
                }
              }

              v61 = *(v45 + 4);
              v45 += 8;
              v46 = v61;
            }
          }
        }
      }
    }
  }

  return v30;
}

uint64_t sub_299254EB8(int *a1, CFArrayRef *a2, float a3, uint64_t a4, int a5, int a6, uint64_t a7, unint64_t a8)
{
  if (*sub_299237120())
  {
    v15 = 60;
  }

  else
  {
    v15 = 255;
  }

  if (a5 >= a6)
  {
    return 0;
  }

  v16 = *(a1 + 13);
  if (v16 <= a5)
  {
    return 0;
  }

  v17 = *(a1 + 12);
  v18 = *a1;
  v19 = (v17 + 2 * a5);
  v20 = *v19;
  *a7 = v20;
  *(a7 + 4) = a3;
  v21 = 1;
  if ((v18 & 0x40) != 0 && v15 > a5)
  {
    if (a5 < 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v17 + 2 * a5 - 2);
    }

    if (v16 - 1 <= a5)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19[1];
    }

    v25 = sub_2993C4830(v20, v22, v24, (v18 >> 4) & 0x10 | (v18 >> 6) & 8 | (v18 >> 7) & 6 | v18 & 0x20);
    if (!v25 || (v26 = *v25, v27 = v25[1], *v25 == v27))
    {
      v21 = 1;
    }

    else
    {
      v28 = a3 + -1.0;
      v21 = 1;
      do
      {
        v29 = *v26;
        if (v29 != v20)
        {
          if (v21 < 1)
          {
LABEL_24:
            v32 = a7 + 8 * v21;
            *v32 = v29;
            *(v32 + 4) = v28;
            v21 = (v21 + 1);
          }

          else
          {
            v30 = v21;
            v31 = (a7 + 4);
            while (*(v31 - 2) != v29)
            {
              v31 += 2;
              if (!--v30)
              {
                goto LABEL_24;
              }
            }

            if (*v31 < v28)
            {
              *v31 = v28;
            }
          }
        }

        ++v26;
      }

      while (v26 != v27);
    }
  }

  if ((v18 & 0x20) != 0)
  {
    if (a5 >= 0x28)
    {
      v34 = a5 >= 0x78;
LABEL_36:
      if (v34)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = -0.2;
      }

      goto LABEL_39;
    }

    v33 = -0.65;
  }

  else
  {
    v33 = -0.5;
    if (a5 >= 0x14)
    {
      v34 = a5 >= 0x3C;
      goto LABEL_36;
    }
  }

LABEL_39:
  if (a2 && (v18 & 0x10) != 0)
  {
    Count = *a2;
    if (*a2)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count > a5)
    {
      v36 = sub_299308694(a2, a5);
      if (v36)
      {
        v37 = v36;
        v38 = *v36;
        if (*v36)
        {
          v39 = *(v36 + 1);
        }

        else
        {
          v39 = 0.0;
        }

        v40 = 0;
        v41 = a3;
        if ((v18 & 0x20) != 0)
        {
          v42 = 4.0;
        }

        else
        {
          v42 = 7.5;
        }

        while (1)
        {
          v43 = v20 == 9787;
          if (v38 == 9787)
          {
            goto LABEL_104;
          }

          if (!v38)
          {
            return v21;
          }

          v44 = u_charType(v38);
          v43 = v20 == v38;
          if (v20 == v38 || (v44 - 30) <= 0xF4u)
          {
LABEL_104:
            if (!v43)
            {
              v45 = *(v37 + 1) - v39;
              if (v45 >= v33)
              {
                v46 = v42 * v45;
                if ((v18 & 0x20) != 0)
                {
                  if (v20 == 105 && v38 == 111 || v20 == 111 && v38 == 105 || (v20 == 105 ? (v54 = v38 == 117) : (v54 = 0), !v54 ? (v55 = 0) : (v55 = 1), v38 == 105 ? (v56 = v20 == 117) : (v56 = 0), v56 || v55))
                  {
                    v46 = v46 + -2.0;
                  }

                  else
                  {
                    v58 = v20 == 109 && v38 == 110;
                    if (v20 == 110 && v38 == 109 || v58)
                    {
                      v46 = v46 + -0.3;
                    }
                  }
                }

                v47 = v46 + -0.3 + v41;
                if (v21 < 1)
                {
LABEL_67:
                  v50 = a7 + 8 * v21;
                  *v50 = v38;
                  *(v50 + 4) = v47;
                  v21 = (v21 + 1);
                }

                else
                {
                  v48 = v21;
                  v49 = (a7 + 4);
                  while (*(v49 - 2) != v38)
                  {
                    v49 += 2;
                    if (!--v48)
                    {
                      goto LABEL_67;
                    }
                  }

                  if (*v49 < v47)
                  {
                    *v49 = v47;
                  }
                }

                v51 = v21 >= a8 ? v40 : v40 + 1;
                if (v21 >= a8)
                {
                  break;
                }

                v52 = v40 + 1;
                v40 = v51;
                if (v52 > 2)
                {
                  break;
                }
              }
            }
          }

          v53 = *(v37 + 4);
          v37 += 8;
          v38 = v53;
        }
      }
    }
  }

  return v21;
}

const UInt8 *sub_299255298(CFArrayRef *a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_2A1461DB8, memory_order_acquire) & 1) == 0)
  {
    v11 = a1;
    v10 = __cxa_guard_acquire(&qword_2A1461DB8);
    a1 = v11;
    if (v10)
    {
      qword_2A1461DB0 = L"'aeinouyxa";
      __cxa_guard_release(&qword_2A1461DB8);
      a1 = v11;
    }
  }

  result = sub_299308694(a1, a2);
  if (result)
  {
    v5 = result + 8;
    v4 = *(result + 4);
    if (*(result + 4))
    {
      v6 = *(result + 1);
      v7 = -0.2;
      if (a2 >= 0x78)
      {
        v7 = 0.0;
      }

      if (a2 < 0x28)
      {
        v7 = -0.65;
      }

      while (1)
      {
        v8 = *(result + 3);
        result = v5;
        if (v7 <= (v8 - v6))
        {
          break;
        }

LABEL_14:
        v5 = result + 8;
        v4 = *(result + 4);
        if (!*(result + 4))
        {
          return 0;
        }
      }

      v9 = 0;
      while (*(qword_2A1461DB0 + v9) != v4)
      {
        v9 += 2;
        if (v9 == 16)
        {
          goto LABEL_14;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2992553B4(const char *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = strlen(a1);
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = &v5[v6];
  v34 = a3;
  while (1)
  {
    for (i = v5; ; ++i)
    {
      v10 = *i;
      if (v10 != 9 && v10 != 32)
      {
        break;
      }

      ++v5;
    }

    if (v10 == 34)
    {
      v11 = ++i;
      v12 = i;
      if (i < v8)
      {
        v12 = i;
        v11 = i;
        do
        {
          v13 = *v12;
          if (v13 == 34)
          {
            v14 = *++v12;
            if (v14 != 34)
            {
              break;
            }
          }

          *v11++ = v13;
          ++v12;
        }

        while (v12 < v8);
      }

      v15 = memchr(v12, 44, v8 - v12);
      v16 = v15 ? v15 : v8;
    }

    else
    {
      v17 = memchr(i, 44, v8 - v5);
      v18 = v17 ? v17 : v8;
      v11 = &i[v18 - v5];
      v16 = v11;
    }

    if (a3 >= 2)
    {
      *v11 = 0;
    }

    v19 = strlen(i);
    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2991A11B0();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v36) = v19;
    if (v19)
    {
      memmove(&__dst, i, v19);
    }

    *(&__dst + v20) = 0;
    v22 = *(a2 + 8);
    v21 = *(a2 + 16);
    if (v22 >= v21)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *a2) >> 3);
      v25 = v24 + 1;
      if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_299212A8C();
      }

      v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a2) >> 3);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      v27 = v26 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v25;
      v37[4] = a2;
      if (v27)
      {
        sub_299212AA4(a2, v27);
      }

      v28 = 24 * v24;
      *v28 = __dst;
      *(v28 + 16) = v36;
      v23 = 24 * v24 + 24;
      v29 = *(a2 + 8) - *a2;
      v30 = 24 * v24 - v29;
      memcpy((v28 - v29), *a2, v29);
      v31 = *a2;
      *a2 = v30;
      v37[0] = v31;
      v37[1] = v31;
      *(a2 + 8) = v23;
      v37[2] = v31;
      v32 = *(a2 + 16);
      *(a2 + 16) = 0;
      v37[3] = v32;
      sub_299212AFC(v37);
    }

    else
    {
      *v22 = __dst;
      *(v22 + 16) = v36;
      v23 = v22 + 24;
    }

    *(a2 + 8) = v23;
    if (!--a3)
    {
      break;
    }

    ++v7;
    v5 = (v16 + 1);
    if ((v16 + 1) >= v8)
    {
      return v7;
    }
  }

  return v34;
}

void sub_299255680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992556A0(void *a1)
{
  *a1 = &unk_2A1F682B8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_2992556FC(void *a1)
{
  *a1 = &unk_2A1F682B8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t *sub_299255778(const __CFURL *a1)
{
  if ((atomic_load_explicit(&qword_2A1460308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460308))
  {
    sub_299255848(a1);
    __cxa_atexit(sub_299255818, &qword_2A1461DC0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460308);
  }

  return &qword_2A1461DC0;
}

void sub_299255848(const __CFURL *a1)
{
  qword_2A1461DC0 = 1616;
  qword_2A1461DC8 = 0;
  qword_2A1461DD0 = &unk_2994037F8;
  unk_2A1461DD8 = 193;
  qword_2A1461DE0 = &unk_29940397A;
  qword_2A1461DE8 = 1616;
  *&word_2A1461DF0 = xmmword_2994037C0;
  *&word_2A1461E00 = xmmword_2994037D0;
  xmmword_2A1461E10 = xmmword_2994037E0;
  qword_2A1461E20 = 0x64C0644061F061CLL;
  v1 = sub_299275654(a1);
  Value = CFDictionaryGetValue(off_2A145E150, @"posmap-migration.plist");
  v3 = CFDictionaryGetValue(Value, @"innsbruck");
  sub_299240D80(&qword_2A1461DC8, v3);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_299255944(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 72);
  if (v3 <= a2 && ((v4 = *(a1 + 74), v4 >= a3) ? (v5 = v3 >= a3, v6 = v3 == a3) : (v5 = 1, v6 = 0), v6 || !v5 ? (v7 = v4 >= a2) : (v7 = 0), v7))
  {
    return 0;
  }

  else
  {
    return sub_299255970(a1, a2, a3);
  }
}

uint64_t sub_299255970(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 50);
  if (v3 != a2 || (v4 = 0, a3 != 1607) && a2 != a3)
  {
    v5 = a2 - 1607;
    if (a2 == 1607 && v3 == a3)
    {
      return 0;
    }

    v6 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * a2 + 5]);
    if (v6[1] >= 3)
    {
      v8 = 0;
      v9 = *v6;
      while (word_29940A968[v8] == *(v9 + v8 * 2))
      {
        if (++v8 == 3)
        {
          if (*(a1 + 84) <= a3 && *(a1 + 86) >= a3)
          {
            return 0;
          }

          break;
        }
      }
    }

    if (v5 > 5 || (v4 = 1, ((1 << v5) & 0x25) == 0))
    {
      v10 = *(a1 + 40);
      if (v10 > a2)
      {
        v11 = *(a1 + 32);
        if ((*(v11 + a2) & 1) != 0 && v10 > a3)
        {
          return (*(v11 + a3) >> 1) & 1;
        }
      }

      return 0;
    }
  }

  return v4;
}

uint64_t sub_299255A70(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 50);
  if (v3 == a2 && v3 == a3)
  {
    return 0;
  }

  if (sub_299255BA0(a1, a2))
  {
    v8 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * a2 + 5]);
    if (v8[1] >= 3)
    {
      v13 = 0;
      v14 = *v8;
      while (*&aBBkb[v13] == *(v14 + v13))
      {
        v13 += 2;
        if (v13 == 6)
        {
          return 1;
        }
      }

      v15 = 0;
      while (word_29940A992[v15] == *(v14 + v15 * 2))
      {
        if (++v15 == 3)
        {
          return 1;
        }
      }
    }
  }

  v9 = sub_299255CA8(a1, a2);
  result = 1;
  if (a2 != 1609 && !v9)
  {
    v11 = *(a1 + 40);
    if (v11 > a2 && (v12 = *(a1 + 32), (*(v12 + a2) & 1) != 0) && v11 > a3)
    {
      return (*(v12 + a3) >> 1) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_299255BA0(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 76) <= a2 && *(a1 + 78) >= a2)
  {
    return 1;
  }

  v2 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * a2]);
  if (v2[1] == 3)
  {
    v3 = 0;
    v4 = *v2;
    while (word_29940A970[v3] == *(v4 + v3 * 2))
    {
      if (++v3 == 3)
      {
        return 1;
      }
    }
  }

  v6 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * a2 + 1]);
  v7 = v6[1];
  if (v7 == 4)
  {
    v13 = 0;
    v14 = *v6;
    do
    {
      v15 = *(v14 + v13 * 2);
      v16 = word_29940A980[v13];
      result = v16 == v15;
    }

    while (v16 == v15 && v13++ != 3);
  }

  else if (v7 == 3)
  {
    v8 = 0;
    v9 = *v6;
    do
    {
      v10 = *(v9 + v8 * 2);
      v11 = word_29940A978[v8];
      result = v11 == v10;
    }

    while (v11 == v10 && v8++ != 2);
  }

  else
  {
    return 0;
  }

  return result;
}

BOOL sub_299255CA8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 72) <= a2 && *(a1 + 74) >= a2)
  {
    return 1;
  }

  v2 = &off_29EF0DFF0 + 2 * word_299403FCA[7 * a2];
  v3 = v2[1];
  if (v3 == 3)
  {
    v5 = 0;
    while (word_29940A9A0[v5] == *(*v2 + v5 * 2))
    {
      if (++v5 == 3)
      {
        return 1;
      }
    }

    v4 = 1;
    goto LABEL_13;
  }

  if (v3 == 2 && **v2 == 21103 && *(*v2 + 1) == 35422)
  {
    return 1;
  }

  v4 = 0;
LABEL_13:
  v6 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * a2 + 1]);
  v7 = v6[1];
  if (v7 == 4)
  {
    v10 = 0;
    v11 = *v6;
    while (word_29940A9B0[v10] == *(v11 + v10 * 2))
    {
      if (++v10 == 4)
      {
        return 1;
      }
    }
  }

  else if (v7 == 3)
  {
    v8 = 0;
    v9 = *v6;
    while (word_29940A9A8[v8] == *(v9 + v8 * 2))
    {
      if (++v8 == 3)
      {
        return 1;
      }
    }
  }

  if (!v4)
  {
    return 0;
  }

  v12 = 0;
  v13 = *v2;
  while (word_29940A9BA[v12] == v13[v12])
  {
    if (++v12 == 3)
    {
      return 1;
    }
  }

  v15 = 0;
  do
  {
    v16 = v13[v15];
    v17 = word_29940A9C2[v15];
    result = v17 == v16;
  }

  while (v17 == v16 && v15++ != 2);
  return result;
}

uint64_t sub_299255E90(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_299255EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = 0;
  sub_2991BF614(&v33);
  v10 = MEMORY[0x29C29BD30](&v33, 0);
  LOBYTE(__p) = 44;
  v11 = sub_2991C0E9C(v10, &__p, 1);
  v12 = MEMORY[0x29C29BD70](v11, a3);
  sub_2991C0E9C(v12, "\t", 1);
  sub_2992563AC(&v33, &__p);
  if (SHIBYTE(v29[0].__locale_) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  sub_29918D9AC((a1 + 8), p_p);
  if (SHIBYTE(v29[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  v38 = 0;
  do
  {
    sub_299256454(&__p, a1, a4, &v38);
    if (!__p)
    {
      break;
    }

    v32 = __p;
    (*(a5 + 16))(a5, &v32, v38, &v39);
    v14 = v32;
    v32 = 0;
    if (v14)
    {
      (*(*v14 + 16))(v14);
    }
  }

  while ((v39 & 1) == 0);
  v15 = MEMORY[0x29EDC9538];
  if (a2)
  {
    sub_2991BF614(&__p);
    v16 = MEMORY[0x29C29BD70](&__p, a2);
    LOBYTE(v25[0]) = 44;
    v17 = sub_2991C0E9C(v16, v25, 1);
    v18 = MEMORY[0x29C29BD70](v17, a3);
    sub_2991C0E9C(v18, "\t", 1);
    sub_2992563AC(&__p, v25);
    if (v26 >= 0)
    {
      v19 = v25;
    }

    else
    {
      v19 = v25[0];
    }

    sub_29918D9AC((a1 + 8), v19);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    do
    {
      sub_299256454(v25, a1, a4, &v38);
      if (!v25[0])
      {
        break;
      }

      v24 = v25[0];
      (*(a5 + 16))(a5, &v24, v38, &v39);
      v20 = v24;
      v24 = 0;
      if (v20)
      {
        (*(*v20 + 16))(v20);
      }
    }

    while ((v39 & 1) == 0);
    v21 = *v15;
    __p = *v15;
    v22 = *(v15 + 24);
    *(&__p + *(__p - 3)) = v22;
    v28 = MEMORY[0x29EDC9570] + 16;
    if (v30 < 0)
    {
      operator delete(v29[7].__locale_);
    }

    v28 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v29);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](&v31);
  }

  else
  {
    v21 = *MEMORY[0x29EDC9538];
    v22 = *(MEMORY[0x29EDC9538] + 24);
  }

  v33 = v21;
  *(&v33 + *(v21 - 3)) = v22;
  v34 = MEMORY[0x29EDC9570] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  return MEMORY[0x29C29BF00](&v37);
}

void sub_2992562D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2992568C8(&a16);
  sub_2992568C8(&a53);
  _Unwind_Resume(a1);
}

const void *sub_2992563AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29920B5BC(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void sub_299256454(void *a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v31 = *MEMORY[0x29EDCA608];
  if (sub_29919CAD4(a2, a2 + 8))
  {
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    if (v8 >= 0x17)
    {
      operator new();
    }

    v24 = *(a2 + 40);
    if (v8)
    {
      memmove(&__dst, v7, v8);
    }

    *(&__dst + v8) = 0;
    if (v24 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    strncpy(*(a2 + 56), p_dst, 0x80uLL);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v10 = *(a2 + 56);
    v11 = strlen(v10);
    v12 = 0;
    v13 = &v10[v11];
    v14 = &v28;
    while (v10 != v13)
    {
      v15 = v10;
      while (*v15 != 9)
      {
        if (++v15 == v13)
        {
          goto LABEL_20;
        }
      }

      *v15 = 0;
      *v14++ = v10;
      ++v12;
      v10 = v15 + 1;
      if (v12 == 3)
      {
        goto LABEL_21;
      }
    }

    v10 = v13;
LABEL_20:
    *v13 = 0;
    *v14 = v10;
    if (v12 == 2)
    {
LABEL_21:
      *a4 = atoi(v29);
      strncpy(*(a2 + 64), v30, 0x80uLL);
      *v26 = 0u;
      *cStr = 0u;
      *v25 = 0u;
      v16 = *(a2 + 64);
      v17 = strlen(v16);
      v18 = 0;
      v19 = &v16[v17];
      v20 = v25;
      while (v16 != v19)
      {
        v21 = v16;
        while (*v21 != 44)
        {
          if (++v21 == v19)
          {
            goto LABEL_30;
          }
        }

        *v21 = 0;
        *v20++ = v16;
        ++v18;
        v16 = v21 + 1;
        if (v18 == 6)
        {
          goto LABEL_31;
        }
      }

      v16 = v19;
LABEL_30:
      *v19 = 0;
      *v20 = v16;
      if (v18 == 5)
      {
LABEL_31:
        sub_2992769B0(cStr[1]);
      }
    }

    *a1 = 0;
    if (v24 < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    *a1 = 0;
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_2992567FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x29C29BFB0](v27, 0x10F3C4074548AAFLL);
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    MEMORY[0x29C29BF70](a16, v26);
  }

  if (a18)
  {
    MEMORY[0x29C29BF70](a18, v26);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    *v25 = 0;
    __cxa_end_catch();
    JUMPOUT(0x2992567C0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992568C8(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 112);
  return a1;
}

void sub_2992569E8(const void **a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 >= v2)
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 >> 1;
    if (v6 >> 1 <= -2)
    {
      sub_299212A8C();
    }

    v8 = v2 - v5;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = v8 >= 0x7FFFFFFFFFFFFFFELL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_299212A48(a1, v11);
    }

    *(2 * v7) = 32;
    v4 = 2 * v7 + 2;
    memcpy(0, v5, v6);
    v12 = *a1;
    *a1 = 0;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v3 = 32;
    v4 = (v3 + 2);
  }

  a1[1] = v4;
  v13 = a1[4];
  v14 = a1[5];
  if (v13 >= v14)
  {
    v16 = a1[3];
    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v16) >> 3);
    v18 = v17 + 1;
    if (v17 + 1 > 0x666666666666666)
    {
      sub_29921E9A8();
    }

    v19 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v16) >> 3);
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0x333333333333333)
    {
      v20 = 0x666666666666666;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      sub_29921E9C0((a1 + 3), v20);
    }

    v21 = 40 * v17;
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 65537;
    *(v21 + 28) = 1;
    *(v21 + 30) = 0;
    *(v21 + 38) = 0;
    v15 = 40 * v17 + 40;
    v22 = a1[3];
    v23 = a1[4] - v22;
    v24 = 40 * v17 - v23;
    memcpy((v21 - v23), v22, v23);
    v25 = a1[3];
    a1[3] = v24;
    a1[4] = v15;
    a1[5] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *(v13 + 6) = 65537;
    *(v13 + 14) = 1;
    *(v13 + 30) = 0;
    v15 = (v13 + 40);
    *(v13 + 19) = 0;
  }

  a1[4] = v15;
}

void sub_299256BBC(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(4u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = CFStringCreateWithCharacters(0, *a1, (*(a1 + 8) - *a1) >> 1);
    v4 = sub_2993652F8(4u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "History: [%@]", buf, 0xCu);
    }

    v5 = sub_2993652F8(4u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 32) - *(a1 + 24)) >> 3);
      *buf = 134217984;
      v9 = v7;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "History: [%zu words]", buf, 0xCu);
      if (!v3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (v3)
    {
LABEL_6:
      CFRelease(v3);
    }
  }

LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
}

void sub_299256D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_299256D3C(char *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 55);
    if (v4 >= 0)
    {
      v5 = (a2 + 32);
    }

    else
    {
      v5 = *(a2 + 32);
    }

    if (v4 < 0)
    {
      v4 = *(a2 + 40);
    }

    sub_29925493C(&v7, v5, &v5[v4], result);
    v6 = (*(*a2 + 304))(a2);
    return sub_299256DFC(v3 + 24, *v6, 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 8) - *v6) >> 3));
  }

  return result;
}

char *sub_299256DFC(char *result, char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v5 = result;
    sub_299256F7C(result, a3 - 0x3333333333333333 * ((*(result + 1) - *result) >> 3));
    v6 = *(v5 + 1);

    return sub_29925703C(v5, v6, a2, &a2[40 * a3], a3);
  }

  return result;
}

void sub_299256E88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a1 + 8) = *a1;
    *(a1 + 32) = *(a1 + 24);
    v4 = *(a2 + 16);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          v8 = sub_299324228(a2, i);
          v11 = sub_2992896C0(v8, v9, v10);
          if (v11)
          {
            v12 = **v11;
            v13 = __dynamic_cast(v11, &unk_2A1F72C30, &unk_2A1F70680, 0);
          }

          else
          {
            v13 = 0;
          }

          sub_299256D3C(a1, v13);
        }
      }
    }

    sub_299256BBC(a1);
  }
}

void *sub_299256F7C(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      sub_29921E9C0(result, a2);
    }

    sub_29921E9A8();
  }

  return result;
}

char *sub_29925703C(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - __dst) >> 3)) >= a5)
      {
        v21 = 5 * a5;
        v22 = &__dst[40 * a5];
        v23 = &v8[-40 * a5];
        v24 = a1[1];
        while (v23 < v8)
        {
          v25 = *v23;
          v26 = *(v23 + 1);
          *(v24 + 32) = *(v23 + 4);
          *v24 = v25;
          *(v24 + 16) = v26;
          v23 += 40;
          v24 += 40;
        }

        a1[1] = v24;
        if (v8 != v22)
        {
          memmove(&__dst[40 * a5], __dst, v8 - v22);
        }

        v32 = 8 * v21;
        v33 = v5;
        v34 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          v20 = *(v16 + 1);
          *(v18 + 32) = *(v16 + 4);
          *v18 = v19;
          *(v18 + 16) = v20;
          v16 += 40;
          v18 += 40;
          v17 += 40;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v27 = &__dst[40 * a5];
        v28 = v17 - 40 * a5;
        v29 = v17;
        while (v28 < v8)
        {
          v30 = *v28;
          v31 = *(v28 + 16);
          *(v29 + 32) = *(v28 + 32);
          *v29 = v30;
          *(v29 + 16) = v31;
          v28 += 40;
          v29 += 40;
        }

        a1[1] = v29;
        if (v18 != v27)
        {
          memmove(&__dst[40 * a5], __dst, v17 - v27);
        }

        v33 = v5;
        v34 = v6;
        v32 = v15;
      }

      memmove(v33, v34, v32);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x3333333333333333 * (&v8[-*a1] >> 3);
    if (v11 > 0x666666666666666)
    {
      sub_29921E9A8();
    }

    v12 = __dst - v10;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_29921E9C0(a1, v14);
    }

    v35 = 8 * (v12 >> 3);
    v36 = (v35 + 40 * a5);
    v37 = 40 * a5;
    v38 = v35;
    do
    {
      v39 = *v6;
      v40 = *(v6 + 1);
      *(v38 + 32) = *(v6 + 4);
      *v38 = v39;
      *(v38 + 16) = v40;
      v38 += 40;
      v6 += 40;
      v37 -= 40;
    }

    while (v37);
    memcpy(v36, v5, a1[1] - v5);
    v41 = *a1;
    v42 = &v36[a1[1] - v5];
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v35 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v35;
  }

  return v5;
}

uint64_t sub_2992572BC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (a1[2] - v3) >> 4;
  v5 = a1[5];
  v6 = v4 > v5;
  v7 = v4 - v5;
  if (!v6)
  {
LABEL_6:
    if (a1[6] > a2)
    {
      v11 = a1[6];
    }

    operator new[]();
  }

  v8 = a1[4];
  v9 = (v3 + 16 * v5 + 8);
  v10 = v5 + 1;
  while (v8 + a2 >= *(v9 - 1))
  {
    v8 = 0;
    a1[4] = 0;
    a1[5] = v10;
    v9 += 2;
    ++v10;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  result = *v9 + v8;
  a1[4] = v8 + a2;
  return result;
}

uint64_t sub_299257444(uint64_t a1, unint64_t a2)
{
  *&v10[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if (a2)
  {
    do
    {
      *p_s++ = (a2 % 0xA) | 0x30;
      v3 = a2 >= 0xA;
      a2 /= 0xAuLL;
    }

    while (v3);
  }

  else
  {
    p_s = v10;
    __s = 48;
  }

  *p_s = 0;
  v4 = p_s - 1;
  if (v4 > &__s)
  {
    v5 = v10;
    do
    {
      v6 = *(v5 - 1);
      *(v5 - 1) = *v4;
      *v4-- = v6;
      v3 = v5++ >= v4;
    }

    while (!v3);
  }

  result = sub_29925EDFC(a1, &__s);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_29925750C(void *a1)
{
  *a1 = &unk_2A1F68318;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x10C80436913F5);
  }

  return a1;
}

void sub_299257568(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v17[2] = *MEMORY[0x29EDCA608];
  sub_2991C6CA8(v14, a2);
  if ((a4 & 1) != 0 || a1 + 16 == sub_29920B95C(a1 + 8, v14))
  {
    if (*(a3 + 23) < 0)
    {
      sub_2991A110C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      __p[2] = *(a3 + 16);
    }

    v7 = __p[0];
    v17[0] = __p[1];
    *(v17 + 7) = *(&__p[1] + 7);
    v8 = HIBYTE(__p[2]);
    memset(__p, 0, 24);
    v16 = v14;
    v9 = sub_299257890(a1 + 8, v14);
    v10 = v9;
    if (*(v9 + 79) < 0)
    {
      operator delete(*(v9 + 56));
    }

    v11 = v17[0];
    *(v10 + 56) = v7;
    *(v10 + 64) = v11;
    *(v10 + 71) = *(v17 + 7);
    *(v10 + 79) = v8;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_2992576A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992576F0(void *a1)
{
  *a1 = &unk_2A1F682E8;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[2 * v5 + 1])
      {
        MEMORY[0x29C29BF70](v2[2 * v5 + 1], 0x1000C8077774924);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 4);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_299257794(void *a1)
{
  sub_2992576F0(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992577CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_299257814(void *a1)
{
  *a1 = &unk_2A1F68318;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x10C80436913F5);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299257890(uint64_t a1, void **a2)
{
  v2 = *sub_299228704(a1, &v4, a2);
  if (!v2)
  {
    sub_299257938();
  }

  return v2;
}

uint64_t sub_2992579DC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2992327A4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_299257A28(uint64_t a1, char *a2, char *a3)
{
  *(a1 + 8) = 0;
  v5 = sub_299257AA8(a2);
  v6 = sub_299257AA8(a3);
  if (!strcmp(v5, v6))
  {
    return 1;
  }

  v7 = MEMORY[0x29C29C520](v6, v5);
  result = v7 != -1;
  if (v7 == -1)
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  return result;
}

const char *sub_299257AA8(char *a1)
{
  v2 = sub_299260524(a1);
  if (v2 < 6)
  {
    return off_29EF0FD70[v2];
  }

  v4 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "charset ", 8);
  v5 = strlen(a1);
  v6 = sub_2991C0E9C(v4, a1, v5);
  sub_2991C0E9C(v6, " is not defined, use EUC-JP", 27);
  return "EUC-JP";
}

uint64_t sub_299257B30(uint64_t a1, std::string *a2)
{
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (!a2->__r_.__value_.__l.__size_)
    {
      return 1;
    }
  }

  else if (!*(&a2->__r_.__value_.__s + 23))
  {
    return 1;
  }

  if (!*(a1 + 8))
  {
    return 1;
  }

  if ((size & 0x80000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = 4 * size;
  v13 = 4 * size;
  v14 = size;
  memset(&v12, 0, sizeof(v12));
  std::string::reserve(&v12, 4 * size);
  v6 = a2;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  v11 = v6;
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  v10 = v7;
  if (v5 >= 1)
  {
    bzero(v7, v5);
  }

  MEMORY[0x29C29C500](*(a1 + 8), 0, &v14, 0, &v13);
  while (1)
  {
    v8 = v14 == 0;
    if (!v14)
    {
      break;
    }

    if (MEMORY[0x29C29C500](*(a1 + 8), &v11, &v14, &v10, &v13) == -1)
    {
      goto LABEL_21;
    }
  }

  sub_299248CC0(a2, v7, v5 - v13);
LABEL_21:
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_299257C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_299257C90(void *a1)
{
  *a1 = &unk_2A1F68348;
  if (a1[1])
  {
    MEMORY[0x29C29C510]();
  }

  return a1;
}

void sub_299257CE4(void *a1)
{
  sub_299257C90(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299257D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_299399A24(a1, a2, 0, a3);
  *result = &unk_2A1F68378;
  *(result + 112) = a4;
  v8 = *(*(result + 24) + 8);
  if (*(v8 + 5) != 1 || (v9 = *(v8 + 40)) == 0)
  {
    v9 = *(v8 + 32);
  }

  v10 = *(v9 + 32) - 1;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = v10;
  *(result + 144) = a5;
  *(result + 32) = -1;
  *(result + 40) = -1;
  return result;
}

uint64_t sub_299257DA8(void *a1, _BYTE *a2, __CFString *a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = a1[16];
  if (v12 >= CFArrayGetCount(*(a1[1] + 32)) || !sub_299257F20(a1))
  {
    return 0;
  }

  if ((a2[32] & 0x10) != 0)
  {
    v16 = (*(*a2 + 80))(a2, a4, a5);
    v17 = (*(*a2 + 88))(a2, a4, a5);
    v18 = v17;
    if (v16)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = 0;
      v15 = 0;
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = sub_29932EE1C(a1[14], a3, v16, v17, a6);
    }

    CFRelease(v16);
    v15 = v20;
LABEL_16:
    if (v18)
    {
      CFRelease(v18);
    }

    return v15;
  }

  v13 = a1[14];

  return sub_29932EE1C(v13, a3, 0, 0, a6);
}

uint64_t sub_299257F20(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 == *(a1 + 80))
  {
    v4 = 0;
  }

  else
  {
    v3 = *v1;
    if ((*(**v1 + 72))(*v1) == 5)
    {
      v4 = *(a1 + 144);
    }

    else
    {
      v4 = ((*(*v3 + 104))(v3) & 0x100) == 0;
    }
  }

  return v4 & 1;
}

unint64_t sub_299257FD0(void *a1)
{
  v2 = a1[16];
  result = CFArrayGetCount(*(a1[1] + 32));
  if (v2 < result)
  {
    a1[17] = (a1[7] - a1[6]) >> 2;
  }

  return result;
}

void sub_29925807C(uint64_t a1)
{
  sub_299399B00(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992580C4(uint64_t a1, void *a2, double a3)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  *(a1 + 7) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = v3;
  v6 = (a1 + 56);
  v5 = *(a1 + 56);
  *(a1 + 64) = v5;
  *(a1 + 16) = a3;
  if (a2)
  {
    v7 = a2;
    do
    {
      v9 = *v7;
      if ((*(*v7 + 8) - 1) >= 2)
      {
        v10 = *(v9 + 16);
        v11 = *v10;
        if (*v10)
        {
          v12 = v11[1];
          if (v12 - 1 >= 0)
          {
            v13 = (v11[4] + 4 * v12 - 3);
            v14 = (v11[2] + 2 * v12 - 2);
            do
            {
              sub_299258250(v4, *v4, v14);
              v15 = *v13;
              v13 -= 4;
              v22 = v15;
              sub_299266D00(v6, &v22);
              v14 -= 2;
              --v12;
            }

            while (v12);
          }

          v16 = v11[5];
          if ((v16 & 1) == 0)
          {
            *(a1 + 9) = 1;
          }

          if ((v16 & 0x10) != 0)
          {
            *(a1 + 8) = 1;
          }
        }

        else
        {
          sub_299258250(v4, *(a1 + 32), byte_29940BC32);
          v22 = v10[2];
          sub_299266D00(v6, &v22);
          *(a1 + 10) = 1;
        }

        *(a1 + 24) = v9;
        ++*a1;
      }

      v7 = v7[1];
    }

    while (v7);
    v5 = *(a1 + 56);
    v17 = *(a1 + 64);
  }

  else
  {
    v17 = v5;
  }

  v18 = v17 - v5;
  v19 = (v17 - v5) >> 3;
  if (v19 >= 2)
  {
    v20 = *(v18 + v5 - 8);
    v21 = v5 - 16;
    do
    {
      v20 += *(v21 + 8 * v19);
      *(v21 + 8 * v19--) = v20;
    }

    while (v19 != 1);
  }
}

char *sub_299258250(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1] >> 1;
    if (v11 <= -2)
    {
      sub_299212A8C();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    v30 = a1;
    if (v15)
    {
      sub_299212A48(a1, v15);
    }

    v27 = 0;
    v28 = 2 * v16;
    v29 = (2 * v16);
    sub_299258420(&v27, a3);
    v17 = v28;
    memcpy(v29, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v28;
    *&v29 = v29 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v22;
    *(&v29 + 1) = v23;
    v27 = v22;
    v28 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 2;
  }

  else
  {
    v8 = __src + 2;
    if (v6 < 2)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 2;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 2, __src, v6 - v8);
      v9 = a1[1];
    }

    v24 = v9 <= a3 || v4 > a3;
    v25 = 2;
    if (v24)
    {
      v25 = 0;
    }

    *v4 = *&a3[v25];
  }

  return v4;
}

void sub_2992583E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_299258420(void *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result];
      }

      sub_299212A48(result[4], v11);
    }

    v7 = ((v6 >> 1) + 1) / -2;
    v8 = ((v6 >> 1) + 1 + (((v6 >> 1) + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[2 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 2;
  return result;
}

_BYTE *sub_29925851C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a3 | 3) + 1;
    }

    sub_299212A48(__dst, v6);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *&__dst[2 * a3] = 0;
  return __dst;
}

uint64_t sub_2992585B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, char **a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = &unk_2A1F74930;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  return sub_299258654(a1, a8, a2, a3, a4, a5, a6, a7);
}

void sub_299258634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  *v10 = v11;
  a10 = v13;
  sub_299259FC8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_299258654(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5, void *a6, char **a7, void *a8)
{
  v198 = *MEMORY[0x29EDCA608];
  v180 = a3;
  v181 = a4;
  v10 = a2 + 1;
  v11 = (*(*a2 + 24))(a2);
  sub_299373E34(v10, v11 + a4);
  v177 = 0u;
  v178 = 0u;
  v179 = 1065353216;
  v176 = 0;
  sub_299216DAC(&v180, &v176, &v177, 0, v174);
  v12 = v175;
  if ((v175 & 0x80u) == 0)
  {
    v13 = v174;
  }

  else
  {
    v13 = v174[0];
  }

  if ((v175 & 0x80u) != 0)
  {
    v12 = v174[1];
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v180;
  v16 = v181;
  v168 = v176;
  v17 = sub_2993652F8(5u);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = *MEMORY[0x29EDB8ED8];
    v19 = *MEMORY[0x29EDB8EE8];
    v20 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], v15, v16, *MEMORY[0x29EDB8EE8]);
    v194[0] = v20;
    v21 = CFStringCreateWithCharactersNoCopy(v18, v13, v14, v19);
    *&v192 = v21;
    v22 = sub_2993652F8(5u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *__dst = 138413058;
      *&__dst[4] = v20;
      *&__dst[12] = 2112;
      *&__dst[14] = v21;
      *&__dst[22] = 1024;
      *&__dst[24] = a5 & 0x1E;
      *&__dst[28] = 1024;
      *&__dst[30] = a5 & 1;
      _os_log_debug_impl(&dword_29918C000, v22, OS_LOG_TYPE_DEBUG, "[TSC::generateReplacements] string:%@ converted:%@ non-geometric:%d, endingIncompleteRomaji: %d", __dst, 0x22u);
      if (!v21)
      {
LABEL_13:
        if (v20)
        {
          CFRelease(v20);
        }

        goto LABEL_15;
      }
    }

    else if (!v21)
    {
      goto LABEL_13;
    }

    CFRelease(v21);
    goto LABEL_13;
  }

LABEL_15:
  sub_29925851C(&v185, v15, v16);
  v164 = v11;
  v165 = a2;
  v160 = v14;
  v161 = v13;
  sub_29925851C(&__p, v13, v14);
  v171 = 0;
  v172 = 0;
  v173 = 0;
  memset(v194, 0, sizeof(v194));
  v195 = 1065353216;
  v23 = v178;
  if (!v178)
  {
    goto LABEL_34;
  }

  do
  {
    v24 = v23[3];
    if (!v194[1])
    {
      goto LABEL_32;
    }

    v25 = vcnt_s8(v194[1]);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = v23[3];
      if (v194[1] <= v24)
      {
        v26 = v24 % v194[1];
      }
    }

    else
    {
      v26 = (v194[1] - 1) & v24;
    }

    v27 = *(v194[0] + 8 * v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_32:
      operator new();
    }

    while (1)
    {
      v29 = v28[1];
      if (v29 == v24)
      {
        break;
      }

      if (v25.u32[0] > 1uLL)
      {
        if (v29 >= v194[1])
        {
          v29 %= v194[1];
        }
      }

      else
      {
        v29 &= v194[1] - 1;
      }

      if (v29 != v26)
      {
        goto LABEL_32;
      }

LABEL_31:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_32;
      }
    }

    if (v28[2] != v24)
    {
      goto LABEL_31;
    }

    v23 = *v23;
  }

  while (v23);
LABEL_34:
  v189 = 1;
  v30 = v187;
  if ((v187 & 0x80u) != 0)
  {
    v30 = v186;
  }

  if (v30)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = sub_29925A5D8(v194, &v189);
      v34 = v33;
      if (v33)
      {
        if ((v184 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        sub_29925851C(&v192, &p_p[2 * v31], v33[3] - v31);
        *__dst = v32;
        *&__dst[8] = v189 - v32;
        if (SHIBYTE(v193) < 0)
        {
          sub_29922C89C(&__dst[16], v192, *(&v192 + 1));
        }

        else
        {
          *&__dst[16] = v192;
          *&__dst[32] = v193;
        }

        v197 = 0;
        v36 = v172;
        if (v172 >= v173)
        {
          v172 = sub_299259DC4(&v171, __dst);
          if ((__dst[39] & 0x80000000) != 0)
          {
            operator delete(*&__dst[16]);
          }
        }

        else
        {
          *v172 = *__dst;
          v37 = *&__dst[16];
          *(v36 + 4) = *&__dst[32];
          v36[1] = v37;
          memset(&__dst[16], 0, 24);
          *(v36 + 5) = v197;
          v172 = v36 + 3;
        }

        v32 = v189;
        v31 = v34[3];
        if (SHIBYTE(v193) < 0)
        {
          operator delete(v192);
        }
      }

      v38 = ++v189;
      v39 = v187;
      if ((v187 & 0x80u) != 0)
      {
        v39 = v186;
      }
    }

    while (v38 <= v39);
  }

  v192 = 0uLL;
  v193 = 0;
  sub_299218E20(&v192, 3uLL);
  v40 = v184;
  if ((v184 & 0x80u) != 0)
  {
    v40 = v183;
  }

  v41 = v40 - v168;
  if ((a5 & 2) != 0)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40 - v168;
  }

  if ((a5 & 1) == 0 || (v41 = v40, v42 <= v40))
  {
    v43 = v42;
    v167 = v41;
    do
    {
      if (v43 == v41)
      {
        goto LABEL_75;
      }

      v44 = &__p;
      if ((v184 & 0x80u) != 0)
      {
        v44 = __p;
      }

      v45 = v44[v43];
      if ((v45 & 0xFFFFFFDF) - 65 < 0x1A || v45 == 12435)
      {
        v47 = v44[v43];
        if (v47 == 12435)
        {
          v48 = 110;
        }

        else
        {
          v48 = v47;
        }

        v49 = *(&v192 + 1);
        if (*(&v192 + 1) >= v193)
        {
          v66 = v43;
          v67 = v192;
          v68 = *(&v192 + 1) - v192;
          v69 = (*(&v192 + 1) - v192) >> 1;
          if (v69 <= -2)
          {
            sub_299212A8C();
          }

          if (v193 - v192 <= v69 + 1)
          {
            v70 = v69 + 1;
          }

          else
          {
            v70 = v193 - v192;
          }

          v71 = 0x7FFFFFFFFFFFFFFFLL;
          if (v193 - v192 < 0x7FFFFFFFFFFFFFFELL)
          {
            v71 = v70;
          }

          if (v71)
          {
            sub_299212A48(&v192, v71);
          }

          *(2 * v69) = v48;
          v50 = 2 * v69 + 2;
          memcpy(0, v67, v68);
          v72 = v192;
          *&v192 = 0;
          *(&v192 + 1) = v50;
          v193 = 0;
          if (v72)
          {
            operator delete(v72);
          }

          v43 = v66;
        }

        else
        {
          **(&v192 + 1) = v48;
          v50 = v49 + 2;
        }

        *(&v192 + 1) = v50;
        ++v43;
      }

      else
      {
LABEL_75:
        if (v192 == *(&v192 + 1))
        {
          ++v43;
        }

        else
        {
          sub_29921624C();
          v51 = v192;
          v190 = 0;
          v191 = 0;
          v189 = 0;
          *__dst = &v189;
          __dst[8] = 0;
          v52 = *(&v192 + 1) - v192;
          v169 = v43;
          if (*(&v192 + 1) != v192)
          {
            if (!((v52 >> 1) >> 59))
            {
              operator new();
            }

            sub_299212A8C();
          }

          v53 = 0;
          if (v52)
          {
            v54 = 0;
            do
            {
              v55 = (v53 + 32 * v54);
              v56 = *v55;
              v57 = v55[1];
              if (*v55 != v57)
              {
                v58 = v55[3];
                v188 = v54 + v42;
                if (v54 + v42)
                {
                  v59 = sub_29925A5D8(&v177, &v188)[3];
                  v56 = *v55;
                  v57 = v55[1];
                }

                else
                {
                  v59 = 0;
                }

                while (v56 != v57)
                {
                  v60 = *(v56 + 23);
                  if ((v60 & 0x8000000000000000) != 0)
                  {
                    v61 = *v56;
                    v60 = v56[1];
                  }

                  else
                  {
                    v61 = v56;
                  }

                  v62 = v60 >> 1;
                  if (v61)
                  {
                    v63 = v62;
                  }

                  else
                  {
                    v63 = 0;
                  }

                  if (v63 <= 1)
                  {
                    *__dst = v59;
                    *&__dst[8] = v58;
                    sub_29925851C(&__dst[16], v61, v63);
                    v197 = 0xBFF0000000000000;
                    v64 = v172;
                    if (v172 >= v173)
                    {
                      v172 = sub_299259DC4(&v171, __dst);
                      if ((__dst[39] & 0x80000000) != 0)
                      {
                        operator delete(*&__dst[16]);
                      }
                    }

                    else
                    {
                      *v172 = *__dst;
                      v65 = *&__dst[16];
                      *(v64 + 4) = *&__dst[32];
                      v64[1] = v65;
                      memset(&__dst[16], 0, 24);
                      *(v64 + 5) = v197;
                      v172 = v64 + 3;
                    }
                  }

                  v56 += 3;
                }

                v53 = v189;
                v52 = v190;
              }

              ++v54;
            }

            while (v54 < (v52 - v53) >> 5);
            v51 = v192;
            v41 = v167;
          }

          *(&v192 + 1) = v51;
          v43 = v169 + 1;
          *__dst = &v189;
          sub_29925A564(__dst);
        }

        v42 = v43;
      }
    }

    while (v43 <= v41);
  }

  if (v192)
  {
    *(&v192 + 1) = v192;
    operator delete(v192);
  }

  if ((a5 & 4) != 0)
  {
    v73 = v184;
    if ((v184 & 0x80u) != 0)
    {
      v73 = v183;
    }

    if (v73)
    {
      v74 = 0;
      v75 = 0;
      v76 = 1;
      do
      {
        v77 = v75 + 1;
        *__dst = v75 + 1;
        v78 = sub_29925A5D8(&v177, __dst);
        if (v78)
        {
          v79 = v78[3];
          if ((v76 & 1) != 0 || ((v184 & 0x80u) == 0 ? (v80 = &__p) : (v80 = __p), (v80[v75] & 0xFFDFu) - 65 > 0x19))
          {
            v76 = 0;
          }

          else
          {
            *__dst = v74;
            *&__dst[8] = v79 - v74;
            memset(&__dst[16], 0, 24);
            v197 = 0xC000000000000000;
            v81 = v172;
            if (v172 >= v173)
            {
              v172 = sub_299259DC4(&v171, __dst);
              if ((__dst[39] & 0x80000000) != 0)
              {
                operator delete(*&__dst[16]);
              }
            }

            else
            {
              *v172 = *__dst;
              v81[2] = 0;
              v81[3] = 0;
              v81[4] = 0;
              v81[5] = 0xC000000000000000;
              v172 = v81 + 6;
            }

            v76 = 1;
          }
        }

        else
        {
          v79 = v74;
        }

        v82 = v184;
        if ((v184 & 0x80u) != 0)
        {
          v82 = v183;
        }

        v74 = v79;
        ++v75;
      }

      while (v77 < v82);
    }
  }

  if ((a5 & 8) != 0)
  {
    v83 = v184;
    v84 = (v184 & 0x80u) != 0;
    v85 = (v184 & 0x80u) == 0 ? v184 : v183;
    if (v85 >= 2)
    {
      for (i = 1; i < v96; ++i)
      {
        v87 = __p;
        if (v84)
        {
          v88 = __p;
        }

        else
        {
          v88 = &__p;
        }

        if (v88[i - 1] == 12435)
        {
          v89 = 0;
          v90 = v88[i];
          do
          {
            if (*&aB0d0f0h0j0[v89] == v90)
            {
              if (i == 1)
              {
                LODWORD(v91) = 0;
              }

              else
              {
                *__dst = i - 1;
                v91 = sub_29925A5D8(&v177, __dst)[3];
                v83 = v184;
                v87 = __p;
              }

              v92 = 0;
              strcpy(__dst, "n");
              if ((v83 & 0x80u) == 0)
              {
                v93 = &__p;
              }

              else
              {
                v93 = v87;
              }

              v94 = *(v93 + i);
              while (*&aB0d0f0h0j0[v92 * 2] != v94)
              {
                if (++v92 == 5)
                {
                  v95 = 0;
                  goto LABEL_165;
                }
              }

              v95 = aAiueo[v92];
LABEL_165:
              *&__dst[2] = v95;
              sub_299259C44(&v171, v91, __dst, 2);
            }

            v89 += 2;
          }

          while (v89 != 10);
        }

        v84 = (v184 & 0x80u) != 0;
        if ((v184 & 0x80u) == 0)
        {
          v96 = v184;
        }

        else
        {
          v96 = v183;
        }
      }
    }
  }

  if ((a5 & 0x10) != 0)
  {
    v97 = v184;
    if ((v184 & 0x80u) != 0)
    {
      v97 = v183;
    }

    if (v97)
    {
      v98 = 0;
      do
      {
        v99 = v98++;
        *__dst = v98;
        v100 = sub_29925A5D8(&v177, __dst);
        v101 = v100;
        if (v100)
        {
          v102 = v184;
          if (v99)
          {
            v103 = 0;
            if ((v184 & 0x80u) == 0)
            {
              v104 = &__p;
            }

            else
            {
              v104 = __p;
            }

            v105 = &v104[v99];
            while (*&aB0d0f0h0j0[v103] != *(v105 - 1))
            {
              v103 += 2;
              if (v103 == 10)
              {
                goto LABEL_194;
              }
            }

            for (j = 0; j != 18; ++j)
            {
              if (aKstnhmyrwgzjdb[j] == v104[v99])
              {
                v107 = 0;
                *__dst = v104[v99];
                while (*&aB0d0f0h0j0[v107 * 2] != *(v105 - 1))
                {
                  if (++v107 == 5)
                  {
                    v108 = 0;
                    goto LABEL_193;
                  }
                }

                v108 = aAiueo[v107];
LABEL_193:
                *&__dst[2] = v108;
                sub_299259C44(&v171, v100[3] - 2, __dst, 2);
              }
            }
          }

LABEL_194:
          v109 = v99 + 2;
          if ((v184 & 0x80u) != 0)
          {
            v102 = v183;
          }

          if (v109 < v102)
          {
            v110 = 0;
            v111 = __p;
            if ((v184 & 0x80u) == 0)
            {
              v111 = &__p;
            }

            while (aKstnhmyrwgzjdb[v110] != v111[v99])
            {
              if (++v110 == 18)
              {
                goto LABEL_230;
              }
            }

            v112 = v111[v98];
            if ((v112 - 12353) < 0x56 || v112 == 12540 || v112 == 12316)
            {
              v115 = 0;
              while (*&aB0d0f0h0j0[v115] != v111[v98])
              {
                v115 += 2;
                if (v115 == 10)
                {
                  v116 = 0;
                  v117 = v111[v109];
                  while (*&aB0d0f0h0j0[v116] != v117)
                  {
                    v116 += 2;
                    if (v116 == 10)
                    {
                      goto LABEL_230;
                    }
                  }

                  *__dst = v99 + 2;
                  v118 = sub_29925A5D8(&v177, __dst);
                  if (v118)
                  {
                    v119 = v118[3];
                    v120 = v101[3];
                    if (v119 - v120 == 2)
                    {
                      v121 = 0;
                      v122 = __p;
                      if ((v184 & 0x80u) == 0)
                      {
                        v122 = &__p;
                      }

                      *__dst = v122[v99];
                      v123 = v185;
                      if ((v187 & 0x80u) == 0)
                      {
                        v123 = &v185;
                      }

                      *&__dst[2] = v123[v119 - 1];
                      *&__dst[4] = v123[v120];
                      while (*&aB0d0f0h0j0[v121 * 2] != v122[v109])
                      {
                        if (++v121 == 5)
                        {
                          v124 = 0;
                          goto LABEL_229;
                        }
                      }

                      v124 = aAiueo[v121];
LABEL_229:
                      *&__dst[6] = v124;
                      sub_299259C44(&v171, v120 - 1, __dst, 4);
                    }
                  }

                  break;
                }
              }
            }
          }
        }

LABEL_230:
        v125 = v184;
        if ((v184 & 0x80u) != 0)
        {
          v125 = v183;
        }
      }

      while (v98 < v125);
    }
  }

  sub_29921ED28(v194);
  if (v184 < 0)
  {
    operator delete(__p);
  }

  if (v187 < 0)
  {
    operator delete(v185);
  }

  v126 = v172;
  if (v171 != v172)
  {
    v127 = (v171 + 1);
    do
    {
      v128 = v127 - 2;
      v129 = *(v127 + 23);
      if ((v129 & 0x8000000000000000) != 0)
      {
        v130 = *v127;
        v129 = *(v127 + 1);
      }

      else
      {
        v130 = v127;
      }

      sub_299259B8C(v165, *(v127 - 2) + v164, v130, v129, *(v127 - 1), 0, 0xFFFFFF, -1, v127[3], 255);
      v127 += 6;
    }

    while (v128 + 6 != v126);
  }

  v131 = a6[2];
  if (v131)
  {
    v132 = 0;
    do
    {
      v133 = v131[2];
      if (v132 < v133)
      {
        v134 = v131[3];
      }

      if (v132 <= v133)
      {
        v132 = v131[2];
      }

      v131 = *v131;
    }

    while (v131);
  }

  else
  {
    v132 = 0;
  }

  v135 = v178;
  if (v178)
  {
LABEL_253:
    v136 = v135[3];
    v137 = v135[2] + v132;
    v138 = a6[1];
    if (!*&v138)
    {
      goto LABEL_269;
    }

    v139 = vcnt_s8(v138);
    v139.i16[0] = vaddlv_u8(v139);
    if (v139.u32[0] > 1uLL)
    {
      v140 = v135[2] + v132;
      if (*&v138 <= v137)
      {
        v140 = v137 % *&v138;
      }
    }

    else
    {
      v140 = (*&v138 - 1) & v137;
    }

    v141 = *(*a6 + 8 * v140);
    if (!v141 || (v142 = *v141) == 0)
    {
LABEL_269:
      operator new();
    }

    while (1)
    {
      v143 = v142[1];
      if (v143 == v137)
      {
        if (v142[2] == v137)
        {
          v135 = *v135;
          if (!v135)
          {
            break;
          }

          goto LABEL_253;
        }
      }

      else
      {
        if (v139.u32[0] > 1uLL)
        {
          if (v143 >= *&v138)
          {
            v143 %= *&v138;
          }
        }

        else
        {
          v143 &= *&v138 - 1;
        }

        if (v143 != v140)
        {
          goto LABEL_269;
        }
      }

      v142 = *v142;
      if (!v142)
      {
        goto LABEL_269;
      }
    }
  }

  if (a7)
  {
    v144 = sub_29925851C(__dst, v161, v160);
    v145 = *(a7 + 23);
    v146 = a7 + 1;
    if (v145 >= 0)
    {
      v147 = a7;
    }

    else
    {
      v147 = *a7;
    }

    if (v145 >= 0)
    {
      v148 = *(a7 + 23);
    }

    else
    {
      v148 = a7[1];
    }

    if (__dst[23] >= 0)
    {
      v149 = __dst[23];
    }

    else
    {
      v149 = *&__dst[8];
    }

    if (__dst[23] >= 0)
    {
      v150 = 10;
    }

    else
    {
      v150 = (*&__dst[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v150 - v149 < v148)
    {
      sub_29922C6D8(v144, v150, &v148[v149 - v150]);
    }

    if (v148)
    {
      if (__dst[23] >= 0)
      {
        v151 = __dst;
      }

      else
      {
        v151 = *__dst;
      }

      if (v149)
      {
        if (&v151[2 * v149] <= v147 || v151 > v147)
        {
          v153 = 0;
        }

        else
        {
          v153 = v148;
        }

        v147 += 2 * v153;
        memmove(&v151[2 * v148], v151, 2 * v149);
      }

      memmove(v151, v147, 2 * v148);
      v154 = &v148[v149];
      if ((__dst[23] & 0x80000000) != 0)
      {
        *&__dst[8] = &v148[v149];
      }

      else
      {
        __dst[23] = v154 & 0x7F;
      }

      *&v151[2 * v154] = 0;
    }

    v155 = *__dst;
    v194[0] = *&__dst[8];
    *(v194 + 7) = *&__dst[15];
    v156 = __dst[23];
    memset(__dst, 0, 24);
    if (*(a7 + 23) < 0)
    {
      operator delete(*a7);
      v157 = __dst[23];
      *a7 = v155;
      *v146 = v194[0];
      *(a7 + 15) = *(v194 + 7);
      *(a7 + 23) = v156;
      if (v157 < 0)
      {
        operator delete(*__dst);
      }
    }

    else
    {
      *a7 = v155;
      *v146 = v194[0];
      *(a7 + 15) = *(v194 + 7);
      *(a7 + 23) = v156;
    }
  }

  if (a8)
  {
    *a8 = v176;
  }

  *__dst = &v171;
  sub_29925A4D8(__dst);
  if (v175 < 0)
  {
    operator delete(v174[0]);
  }

  result = sub_29921ED28(&v177);
  v159 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992599C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  *(v50 - 160) = &a20;
  sub_29925A4D8((v50 - 160));
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_29921ED28(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_299259B8C(uint64_t a1, uint64_t a2, void *__src, unint64_t a4, uint64_t a5, __int16 a6, int a7, char a8, double a9, char a10)
{
  v18[0] = __src;
  v18[1] = a4;
  v17 = a7;
  v16 = a9;
  v15 = a5;
  v14 = a6;
  v13 = a8;
  v10 = *(a1 + 8) + 24 * a2;
  v11 = *(v10 + 8);
  if (v11 >= *(v10 + 16))
  {
    result = sub_29925A0E0(v10, v18, &v16, &v15, &v17, &v14, &v13, &a10);
  }

  else
  {
    sub_2993738E4(*(v10 + 8), __src, a4, a5, a7, a6, a8, a10, a9);
    result = v11 + 48;
    *(v10 + 8) = v11 + 48;
  }

  *(v10 + 8) = result;
  return result;
}

void sub_299259D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    MEMORY[0x29C29BF70](v17, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299259DC4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  v16[4] = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_29919600C();
  }

  v6 = 48 * v2;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(v6 + 40) = *(a2 + 40);
  v9 = *a1;
  v8 = a1[1];
  v10 = v6 + *a1 - v8;
  if (*a1 != v8)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v8;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 16);
      *(v12 + 32) = *(v11 + 32);
      *(v12 + 16) = v13;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 16) = 0;
      *(v12 + 40) = *(v11 + 40);
      v11 += 48;
      v12 += 48;
    }

    while (v11 != v8);
    do
    {
      if (*(v9 + 39) < 0)
      {
        operator delete(*(v9 + 16));
      }

      v9 += 48;
    }

    while (v9 != v8);
    v9 = *a1;
  }

  *a1 = v10;
  a1[1] = v6 + 48;
  v14 = a1[2];
  a1[2] = 0;
  v16[2] = v9;
  v16[3] = v14;
  v16[0] = v9;
  v16[1] = v9;
  sub_299259F64(v16);
  return v6 + 48;
}

uint64_t sub_299259F64(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 48;
      *(a1 + 16) = v2 - 48;
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

void sub_299259FC8(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_29925A03C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_29925A03C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29925A090(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29925A090(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_29925A0E0(uint64_t a1, uint64_t a2, double *a3, uint64_t *a4, int *a5, __int16 *a6, char *a7, char *a8)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v9)
  {
    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v12 = 0x555555555555555;
  }

  else
  {
    v12 = v9;
  }

  v22 = a1;
  if (v12)
  {
    sub_29925A258(a1, v12);
  }

  v19 = 0;
  v20 = 48 * v8;
  v21 = 48 * v8;
  sub_2993738E4((48 * v8), *a2, *(a2 + 8), *a4, *a5, *a6, *a7, *a8, *a3);
  *&v21 = 48 * v8 + 48;
  v13 = *(a1 + 8);
  v14 = (48 * v8 + *a1 - v13);
  sub_29925A2B0(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29925A42C(&v19);
  return v18;
}

void sub_29925A244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29925A42C(va);
  _Unwind_Resume(a1);
}

void sub_29925A258(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_29925A2B0(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v14 = __dst;
  v15 = __dst;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = __dst;
    v6 = a2;
    v7 = a2;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_29922C89C(v4, *v7, *(v7 + 1));
        v9 = v15;
      }

      else
      {
        v8 = *v7;
        *(v4 + 2) = *(v7 + 2);
        *v4 = v8;
        v9 = v4;
      }

      v10 = *(v7 + 24);
      *(v4 + 5) = *(v7 + 5);
      *(v4 + 24) = v10;
      v7 += 3;
      v4 = v9 + 48;
      v15 = v9 + 48;
    }

    while (v7 != a3);
    v13 = 1;
    do
    {
      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v6 += 3;
    }

    while (v6 != a3);
  }

  return sub_29925A3AC(v12);
}

uint64_t sub_29925A3AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29925A3E4(a1);
  }

  return a1;
}

void sub_29925A3E4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 25);
    v1 -= 6;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_29925A42C(uint64_t a1)
{
  sub_29925A464(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29925A464(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_29925A4D8(void ***a1)
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

        v4 -= 6;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29925A564(void ***a1)
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
        v4 -= 4;
        v6 = v4;
        sub_299212B90(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *sub_29925A5D8(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}