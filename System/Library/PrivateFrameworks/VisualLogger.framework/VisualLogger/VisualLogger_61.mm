void sub_2715C9DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  if (a12)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715C9DF4(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_2715CBDD8();
  }

  if (*(a1 + 8) == 1)
  {
    sub_2715CC004();
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_27157CA00();
  }

  v3 = *(v2 + 8);
  if (*(v2 + 23) >= 0)
  {
    v4 = *(v2 + 23);
  }

  else
  {
    v2 = *v2;
    v4 = v3;
  }

  return sub_271120E64(a2, v2, v4);
}

uint64_t sub_2715C9EC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1 && *(a2 + 96) == 1)
  {
    v4 = (a1 + 80);
    v9 = a1;
    v10 = &v11;
    v11 = 0;
    if (atomic_load_explicit((a1 + 80), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once(v4, &v12, sub_2715CB904);
    }

    v10 = &v11;
    v11 = 0;
    v9 = a2;
    if (atomic_load_explicit((a2 + 80), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once((a2 + 80), &v12, sub_2715CB904);
    }

    return sub_27181AD90(*(a1 + 16), *(a2 + 16));
  }

  else if (*(a1 + 64) == 1 && *(a2 + 64) == 1)
  {
    v6 = (a1 + 48);
    v7 = a2 + 48;

    return sub_27157BD28(v6, v7);
  }

  else
  {
    v8 = (a1 + 72);
    v9 = a1;
    v10 = &v11;
    v11 = 0;
    if (atomic_load_explicit((a1 + 72), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once(v8, &v12, sub_2715CB600);
    }

    v10 = &v11;
    v11 = 0;
    v9 = a2;
    if (atomic_load_explicit((a2 + 72), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once((a2 + 72), &v12, sub_2715CB600);
    }

    return sub_27181A984(*a1, *a2);
  }
}

void sub_2715CA184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27181A92C(va);
  MEMORY[0x2743BF050](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t ***sub_2715CA1BC(uint64_t ***a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2715CA718(v2);
    MEMORY[0x2743BF050](v4, 0x10E2C40590DAB7CLL);
    return v3;
  }

  return v1;
}

void sub_2715CA320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CA1BC(va);
  _Unwind_Resume(a1);
}

void sub_2715CA334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743BF050](v16, v17);
  _Unwind_Resume(a1);
}

void sub_2715CA4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t **a12)
{
  sub_2715CA1BC(&a12);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2715CA510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  MEMORY[0x2743BF050](v13, 0x10E2C40590DAB7CLL);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2715CA558(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 72);
  v4[0] = v1;
  v4[1] = &v5;
  v5 = 0;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = v4;
    v6 = &v7;
    std::__call_once(v2, &v6, sub_2715CB600);
  }

  return v1;
}

uint64_t sub_2715CA5C8(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 80);
  v4[0] = v1;
  v4[1] = &v5;
  v5 = 0;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = v4;
    v6 = &v7;
    std::__call_once(v2, &v6, sub_2715CB904);
  }

  return v1 + 16;
}

uint64_t sub_2715CA638(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 88);
  v4 = v1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, sub_2715CBC08);
  }

  return v1 + 48;
}

uint64_t sub_2715CA6A0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t **sub_2715CA718(uint64_t **a1)
{
  sub_2715CB200(a1[22]);
  std::mutex::~mutex((a1 + 13));
  if (*(a1 + 64) == 1)
  {
    v2 = a1[7];
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 24) != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 24) != 1)
  {
    goto LABEL_11;
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    sub_2715CC40C(v4 + 1, *v4);
    MEMORY[0x2743BF050](v4, 0x1022C40B06DCE69);
  }

LABEL_11:
  if (*(a1 + 8) == 1)
  {
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      sub_2715CA870(v5 + 1, *v5);
      MEMORY[0x2743BF050](v5, 0x1022C40B06DCE69);
    }
  }

  return a1;
}

void sub_2715CA870(uint64_t *a1, int a2)
{
  v2 = a1;
  __p = 0;
  v68 = 0;
  v69 = 0;
  if (a2 == 1)
  {
    v6 = *(*a1 + 16);
    if (v6)
    {
      if (!(v6 >> 60))
      {
        operator new();
      }

LABEL_114:
      sub_2715CB01C();
    }

    v3 = 0;
    v9 = *v2 + 8;
    v10 = **v2;
    if (v10 != v9)
    {
      do
      {
        if (v3 >= v69)
        {
          v3 = sub_2715CB034(&__p, (v10 + 7));
        }

        else
        {
          *v3 = *(v10 + 56);
          *(v3 + 1) = v10[8];
          *(v10 + 56) = 0;
          v10[8] = 0;
          v3 += 16;
        }

        v68 = v3;
        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v9);
    }
  }

  else
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = **v2;
      v5 = *(*v2 + 8);
      if (v5 != v4)
      {
        if (((v5 - v4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_114;
      }

      v3 = 0;
      v8 = **v2;
      v7 = *(*v2 + 8);
      while (v8 != v7)
      {
        if (v3 < v69)
        {
          *v3 = *v8;
          *(v3 + 1) = *(v8 + 8);
          *v8 = 0;
          *(v8 + 8) = 0;
          v3 += 16;
        }

        else
        {
          v3 = sub_2715CB034(&__p, v8);
        }

        v68 = v3;
        v8 += 16;
      }
    }
  }

  v11 = __p;
  if (__p != v3)
  {
    v63 = v2;
    do
    {
      v65 = *(v3 - 16);
      v66 = *(v3 - 1);
      *(v3 - 16) = 0;
      *(v3 - 1) = 0;
      v16 = v68 - 16;
      sub_2715CA870(v68 - 8, *(v68 - 16));
      v68 = v16;
      if (v65 == 1)
      {
        v15 = v66;
        v32 = v66 + 1;
        v33 = *v66;
        if (*v66 != v66 + 1)
        {
          do
          {
            if (v16 >= v69)
            {
              v34 = __p;
              v35 = (v16 - __p) >> 4;
              v36 = v35 + 1;
              if ((v35 + 1) >> 60)
              {
                goto LABEL_114;
              }

              v37 = v69 - __p;
              if ((v69 - __p) >> 3 > v36)
              {
                v36 = v37 >> 3;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF0)
              {
                v38 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 60))
                {
                  operator new();
                }

LABEL_115:
                sub_2711270EC();
              }

              v39 = (v16 - __p) >> 4;
              v40 = 16 * v35;
              *v40 = *(v33 + 56);
              *(v40 + 8) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v41 = (v40 - 16 * v39);
              if (v34 != v16)
              {
                v42 = v34;
                v43 = v41;
                do
                {
                  *v43 = *v42;
                  v43[1] = *(v42 + 1);
                  *v42 = 0;
                  *(v42 + 1) = 0;
                  v42 += 16;
                  v43 += 2;
                }

                while (v42 != v16);
                v44 = v34;
                do
                {
                  v45 = *v44;
                  v44 += 16;
                  sub_2715CA870(v34 + 8, v45);
                  v34 = v44;
                }

                while (v44 != v16);
                v34 = __p;
              }

              v16 = (v40 + 16);
              __p = v41;
              v68 = (v40 + 16);
              v69 = 0;
              if (v34)
              {
                operator delete(v34);
              }
            }

            else
            {
              *v16 = *(v33 + 56);
              *(v16 + 1) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v16 += 16;
            }

            v68 = v16;
            v46 = v33[1];
            if (v46)
            {
              do
              {
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            else
            {
              do
              {
                v47 = v33[2];
                v14 = *v47 == v33;
                v33 = v47;
              }

              while (!v14);
            }

            v33 = v47;
          }

          while (v47 != v32);
          v15 = v66;
        }

        sub_2715CB170(v15, *(v15 + 8));
        *v15 = v15 + 8;
        *(v15 + 16) = 0;
        *(v15 + 8) = 0;
      }

      else if (v65 == 2)
      {
        v17 = v66;
        v18 = *v66;
        v19 = v66[1];
        if (*v66 != v19)
        {
          do
          {
            if (v16 < v69)
            {
              *v16 = *v18;
              *(v16 + 1) = *(v18 + 8);
              *v18 = 0;
              *(v18 + 8) = 0;
              v16 += 16;
            }

            else
            {
              v20 = __p;
              v21 = (v16 - __p) >> 4;
              v22 = v21 + 1;
              if ((v21 + 1) >> 60)
              {
                goto LABEL_114;
              }

              v23 = v69 - __p;
              if ((v69 - __p) >> 3 > v22)
              {
                v22 = v23 >> 3;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF0)
              {
                v24 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                if (!(v24 >> 60))
                {
                  operator new();
                }

                goto LABEL_115;
              }

              v25 = 16 * v21;
              *v25 = *v18;
              *(v25 + 8) = *(v18 + 8);
              *v18 = 0;
              *(v18 + 8) = 0;
              v26 = v68;
              v27 = (16 * v21 + v20 - v68);
              if (v20 != v68)
              {
                v28 = v20;
                v29 = v25 + v20 - v68;
                do
                {
                  *v29 = *v28;
                  *(v29 + 8) = *(v28 + 1);
                  *v28 = 0;
                  *(v28 + 1) = 0;
                  v28 += 16;
                  v29 += 16;
                }

                while (v28 != v26);
                v30 = v20;
                do
                {
                  v31 = *v30;
                  v30 += 16;
                  sub_2715CA870(v20 + 8, v31);
                  v20 = v30;
                }

                while (v30 != v26);
                v20 = __p;
              }

              v16 = (v25 + 16);
              __p = v27;
              v68 = v16;
              v69 = 0;
              if (v20)
              {
                operator delete(v20);
              }
            }

            v68 = v16;
            v18 += 16;
          }

          while (v18 != v19);
          v17 = v66;
          v18 = *v66;
          v48 = v66[1];
          if (v48 != *v66)
          {
            v49 = v48 - 8;
            do
            {
              v50 = v49 - 8;
              sub_2715CA870(v49, *(v49 - 8));
              v49 -= 16;
            }

            while (v50 != v18);
          }
        }

        v17[1] = v18;
      }

      sub_2715CA870(&v66, v65);
      v11 = __p;
      v3 = v68;
    }

    while (__p != v68);
    v2 = v63;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      sub_2715CB170(*v2, *(*v2 + 8));
LABEL_105:
      v51 = *v2;
      goto LABEL_106;
    }

    if (a2 != 2)
    {
      goto LABEL_107;
    }

    v51 = *v2;
    v52 = **v2;
    if (!v52)
    {
      goto LABEL_106;
    }

    v53 = v51[1];
    v54 = **v2;
    if (v53 != v52)
    {
      v55 = *v2;
      v56 = v53 - 8;
      do
      {
        v57 = (v56 - 8);
        sub_2715CA870(v56, *(v56 - 8));
        v56 -= 16;
      }

      while (v57 != v52);
      v51 = v55;
      v54 = *v55;
    }

    v51[1] = v52;
    v58 = v54;
LABEL_104:
    operator delete(v58);
    goto LABEL_105;
  }

  if (a2 == 3)
  {
    v51 = *v2;
    if (*(*v2 + 23) < 0)
    {
      v58 = *v51;
      goto LABEL_104;
    }
  }

  else
  {
    if (a2 != 8)
    {
      goto LABEL_107;
    }

    v51 = *v2;
    v59 = **v2;
    if (v59)
    {
      v51[1] = v59;
      v58 = v59;
      goto LABEL_104;
    }
  }

LABEL_106:
  operator delete(v51);
  v11 = __p;
LABEL_107:
  if (v11)
  {
    v60 = v11;
    if (v68 != v11)
    {
      v61 = (v68 - 8);
      do
      {
        v62 = v61 - 8;
        sub_2715CA870(v61, *(v61 - 8));
        v61 -= 16;
      }

      while (v62 != v11);
      v60 = __p;
    }

    v68 = v11;
    operator delete(v60);
  }
}

uint64_t sub_2715CB034(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = 16 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = 16 * v2 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = 16 * v2 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      v11 += 16;
      v12 += 16;
    }

    while (v11 != v9);
    v13 = v8;
    do
    {
      v14 = *v13;
      v13 += 16;
      sub_2715CA870(v8 + 8, v14);
      v8 = v13;
    }

    while (v13 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = 16 * v2 + 16;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return 16 * v2 + 16;
}

void sub_2715CB170(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_2715CB170(a1, *a2);
    sub_2715CB170(a1, *(a2 + 1));
    sub_2715CA870(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_2715CB200(void *a1)
{
  if (a1)
  {
    sub_2715CB200(*a1);
    sub_2715CB200(a1[1]);
    v2 = a1[8];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void sub_2715CB4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2715CB544(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715CB57C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2715CB5A0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715CB600(uint64_t ***a1)
{
  v1 = **a1;
  v3 = *v1;
  v2 = v1[1];
  if (!*(v3 + 32) && *(v3 + 24) != 1)
  {
    sub_271150BA0(&v5, v3 + 48);
  }

  v4 = sub_2715C971C(v3, *v2);
  sub_271819F10(v4);
}

void sub_2715CB8A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  MEMORY[0x2743BF050](v3, v2);
  sub_27181A638(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CB8DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CB8F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_2715CB904(uint64_t ***a1)
{
  v1 = **a1;
  v3 = *v1;
  v2 = v1[1];
  if (!*(v3 + 32) && *(v3 + 8) != 1)
  {
    sub_271150BA0(&v5, v3 + 48);
  }

  v4 = sub_2715C971C(v3, *v2);
  sub_27181A058(v4);
}

void sub_2715CBBAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  MEMORY[0x2743BF050](v3, v2);
  sub_27181A92C(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CBBE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CBBF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_2715CBC08(uint64_t ***a1)
{
  v1 = ***a1;
  if (*(v1 + 96) == 1)
  {
    v2 = ***a1;
    v3 = &v4;
    v4 = 0;
    if (atomic_load_explicit((v1 + 80), memory_order_acquire) != -1)
    {
      v6 = &v2;
      v5 = &v6;
      std::__call_once((v1 + 80), &v5, sub_2715CB904);
    }

    v6 = *(v1 + 16);
    sub_2715D28CC(&v6);
  }

  v2 = ***a1;
  v3 = &v4;
  v4 = 0;
  if (atomic_load_explicit((v1 + 72), memory_order_acquire) != -1)
  {
    v6 = &v2;
    v5 = &v6;
    std::__call_once((v1 + 72), &v5, sub_2715CB600);
  }

  v6 = *v1;
  sub_2715D27C0(&v6);
}

void sub_2715CBFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715CC1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715CC250(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881339D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715CC2A4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_2715CC2C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t **sub_2715CC2F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2715CA718(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2715CC33C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2715CC39C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = v3;
      v3 -= 5;
      sub_2715CC40C(v5 - 1, *(v5 - 16));
      if (*(v5 - 17) < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_2715CC40C(uint64_t **a1, int a2)
{
  v2 = a1;
  __p = 0;
  v66 = 0;
  v67 = 0;
  if (a2 == 1)
  {
    v6 = (*a1)[1] - **a1;
    if (v6)
    {
      if (!((0xCCCCCCCCCCCCCCCDLL * (v6 >> 3)) >> 60))
      {
        operator new();
      }

LABEL_111:
      sub_2715CB01C();
    }

    v3 = 0;
    v9 = **v2;
    v10 = (*v2)[1];
    if (v9 != v10)
    {
      v11 = v9 + 24;
      do
      {
        if (v3 < v67)
        {
          *v3 = *v11;
          *(v3 + 1) = *(v11 + 8);
          *v11 = 0;
          *(v11 + 8) = 0;
          v3 += 16;
        }

        else
        {
          v3 = sub_2715CCBD8(&__p, v11);
        }

        v66 = v3;
        v12 = v11 + 16;
        v11 += 40;
      }

      while (v12 != v10);
    }
  }

  else
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = **v2;
      v5 = (*v2)[1];
      if (v5 != v4)
      {
        if (((v5 - v4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_111;
      }

      v3 = 0;
      v8 = **v2;
      v7 = (*v2)[1];
      while (v8 != v7)
      {
        if (v3 < v67)
        {
          *v3 = *v8;
          *(v3 + 1) = *(v8 + 8);
          *v8 = 0;
          *(v8 + 8) = 0;
          v3 += 16;
        }

        else
        {
          v3 = sub_2715CCBD8(&__p, v8);
        }

        v66 = v3;
        v8 += 16;
      }
    }
  }

  v13 = __p;
  if (__p == v3)
  {
    goto LABEL_81;
  }

  v61 = v2;
  do
  {
    v63 = *(v3 - 16);
    v64 = *(v3 - 1);
    *(v3 - 16) = 0;
    *(v3 - 1) = 0;
    v14 = v66 - 16;
    sub_2715CC40C(v66 - 8, *(v66 - 16));
    v66 = v14;
    if (v63 == 1)
    {
      v15 = v64;
      v16 = *v64;
      v30 = v64[1];
      if (*v64 != v30)
      {
        do
        {
          if (v14 < v67)
          {
            *v14 = *(v16 + 24);
            *(v14 + 1) = v16[4];
            *(v16 + 24) = 0;
            v16[4] = 0;
            v14 += 16;
          }

          else
          {
            v31 = __p;
            v32 = (v14 - __p) >> 4;
            v33 = v32 + 1;
            if ((v32 + 1) >> 60)
            {
              goto LABEL_111;
            }

            v34 = v67 - __p;
            if ((v67 - __p) >> 3 > v33)
            {
              v33 = v34 >> 3;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF0)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              if (!(v35 >> 60))
              {
                operator new();
              }

LABEL_112:
              sub_2711270EC();
            }

            v36 = (v14 - __p) >> 4;
            v37 = 16 * v32;
            *v37 = *(v16 + 24);
            *(v37 + 8) = v16[4];
            *(v16 + 24) = 0;
            v16[4] = 0;
            v38 = (v37 - 16 * v36);
            if (v31 != v14)
            {
              v39 = v31;
              v40 = v38;
              do
              {
                *v40 = *v39;
                v40[1] = *(v39 + 1);
                *v39 = 0;
                *(v39 + 1) = 0;
                v39 += 16;
                v40 += 2;
              }

              while (v39 != v14);
              v41 = v31;
              do
              {
                v42 = *v41;
                v41 += 16;
                sub_2715CC40C(v31 + 8, v42);
                v31 = v41;
              }

              while (v41 != v14);
              v31 = __p;
            }

            v14 = (v37 + 16);
            __p = v38;
            v66 = (v37 + 16);
            v67 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          v66 = v14;
          v16 += 5;
        }

        while (v16 != v30);
        v15 = v64;
        v16 = *v64;
        v30 = v64[1];
      }

      while (v30 != v16)
      {
        v46 = v30;
        v30 -= 5;
        sub_2715CC40C(v46 - 1, *(v46 - 16));
        if (*(v46 - 17) < 0)
        {
          operator delete(*v30);
        }
      }

      goto LABEL_23;
    }

    if (v63 == 2)
    {
      v15 = v64;
      v16 = *v64;
      v17 = v64[1];
      if (*v64 != v17)
      {
        do
        {
          if (v14 < v67)
          {
            *v14 = *v16;
            *(v14 + 1) = v16[1];
            *v16 = 0;
            v16[1] = 0;
            v14 += 16;
          }

          else
          {
            v18 = __p;
            v19 = (v14 - __p) >> 4;
            v20 = v19 + 1;
            if ((v19 + 1) >> 60)
            {
              goto LABEL_111;
            }

            v21 = v67 - __p;
            if ((v67 - __p) >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF0)
            {
              v22 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              if (!(v22 >> 60))
              {
                operator new();
              }

              goto LABEL_112;
            }

            v23 = 16 * v19;
            *v23 = *v16;
            *(v23 + 8) = v16[1];
            *v16 = 0;
            v16[1] = 0;
            v24 = v66;
            v25 = (16 * v19 + v18 - v66);
            if (v18 != v66)
            {
              v26 = v18;
              v27 = v23 + v18 - v66;
              do
              {
                *v27 = *v26;
                *(v27 + 8) = *(v26 + 1);
                *v26 = 0;
                *(v26 + 1) = 0;
                v26 += 16;
                v27 += 16;
              }

              while (v26 != v24);
              v28 = v18;
              do
              {
                v29 = *v28;
                v28 += 16;
                sub_2715CC40C(v18 + 8, v29);
                v18 = v28;
              }

              while (v28 != v24);
              v18 = __p;
            }

            v14 = (v23 + 16);
            __p = v25;
            v66 = v14;
            v67 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          v66 = v14;
          v16 += 2;
        }

        while (v16 != v17);
        v15 = v64;
        v16 = *v64;
        v43 = v64[1];
        if (v43 != *v64)
        {
          v44 = v43 - 1;
          do
          {
            v45 = v44 - 1;
            sub_2715CC40C(v44, *(v44 - 8));
            v44 -= 2;
          }

          while (v45 != v16);
        }
      }

LABEL_23:
      v15[1] = v16;
    }

    sub_2715CC40C(&v64, v63);
    v13 = __p;
    v3 = v66;
  }

  while (__p != v66);
  v2 = v61;
LABEL_81:
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v47 = *v2;
      if ((*(*v2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      v55 = *v47;
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_104;
      }

      v47 = *v2;
      v54 = **v2;
      if (!v54)
      {
        goto LABEL_103;
      }

      v47[1] = v54;
      v55 = v54;
    }

LABEL_102:
    operator delete(v55);
    v47 = *v2;
    goto LABEL_103;
  }

  if (a2 == 1)
  {
    v47 = *v2;
    v48 = **v2;
    if (!v48)
    {
      goto LABEL_103;
    }

    v56 = v47[1];
    v50 = **v2;
    if (v56 != v48)
    {
      v51 = *v2;
      do
      {
        v57 = v56;
        v56 -= 5;
        sub_2715CC40C(v57 - 1, *(v57 - 16));
        if (*(v57 - 17) < 0)
        {
          operator delete(*v56);
        }
      }

      while (v56 != v48);
LABEL_88:
      v47 = v51;
      v50 = *v51;
    }

LABEL_99:
    v47[1] = v48;
    v55 = v50;
    goto LABEL_102;
  }

  if (a2 == 2)
  {
    v47 = *v2;
    v48 = **v2;
    if (v48)
    {
      v49 = v47[1];
      v50 = **v2;
      if (v49 != v48)
      {
        v51 = *v2;
        v52 = v49 - 1;
        do
        {
          v53 = v52 - 1;
          sub_2715CC40C(v52, *(v52 - 8));
          v52 -= 2;
        }

        while (v53 != v48);
        goto LABEL_88;
      }

      goto LABEL_99;
    }

LABEL_103:
    operator delete(v47);
    v13 = __p;
  }

LABEL_104:
  if (v13)
  {
    v58 = v13;
    if (v66 != v13)
    {
      v59 = (v66 - 8);
      do
      {
        v60 = v59 - 8;
        sub_2715CC40C(v59, *(v59 - 8));
        v59 -= 16;
      }

      while (v60 != v13);
      v58 = __p;
    }

    v66 = v13;
    operator delete(v58);
  }
}

uint64_t sub_2715CCBD8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = 16 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = 16 * v2 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = 16 * v2 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      v11 += 16;
      v12 += 16;
    }

    while (v11 != v9);
    v13 = v8;
    do
    {
      v14 = *v13;
      v13 += 16;
      sub_2715CC40C(v8 + 8, v14);
      v8 = v13;
    }

    while (v13 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = 16 * v2 + 16;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return 16 * v2 + 16;
}

uint64_t *sub_2715CCD14(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_2715CA870((v1 + 64), *(v1 + 56));
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

uint64_t sub_2715CCD74(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = sub_2715C9EC0(v3, v5);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    result = v8;
  }

  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      return v9;
    }
  }

  return result;
}

void sub_2715CCE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a9);
  sub_27112F828(&a11);
  _Unwind_Resume(a1);
}

void *sub_2715CCEA0(uint64_t a1, unint64_t a2)
{
  sub_27180B5AC(a2, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v17;
  v12 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v19;
  v5 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v2 = v4 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if ((v7 == 0) == (v4 != 0))
    {
      goto LABEL_17;
    }
  }

  else if (*(&v7 + 1) != *(&v4 + 1))
  {
LABEL_17:
    sub_27180B2D8(&v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return sub_2715D2C8C(&v13);
}

void sub_2715CDAAC(_Unwind_Exception *a1)
{
  sub_27112F828(v1 - 224);
  sub_27112F828(&v3);
  sub_2715CDAE4(&v4);
  sub_2715CDAE4(&v5);
  sub_2715D2C8C(&v6);
  _Unwind_Resume(a1);
}

uint64_t sub_2715CDAE4(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 32);
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

void *sub_2715CDBAC(uint64_t a1, unint64_t a2)
{
  sub_27180B5AC(a2, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v17;
  v12 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v19;
  v5 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v2 = v4 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if ((v7 == 0) == (v4 != 0))
    {
      goto LABEL_17;
    }
  }

  else if (*(&v7 + 1) != *(&v4 + 1))
  {
LABEL_17:
    sub_27180B2D8(&v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return sub_2715D2C8C(&v13);
}

void sub_2715CE7B8(_Unwind_Exception *a1)
{
  sub_27112F828(v1 - 224);
  sub_27112F828(&v3);
  sub_2715CDAE4(&v4);
  sub_2715CDAE4(&v5);
  sub_2715D2C8C(&v6);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2715CE7F0(unsigned __int8 *result)
{
  v1 = *result;
  if (*result)
  {
    if (v1 == 6)
    {
      theArray[0] = 0;
      sub_2715D613C(result, theArray);
      LOBYTE(__p[0]) = 3;
      operator new();
    }

    if ((v1 - 5) <= 1)
    {
      theArray[0] = 0;
      sub_2715D6290(result, theArray);
      LOBYTE(__p[0]) = 8;
      operator new();
    }

    if (*result <= 2u)
    {
      if (v1 == 1)
      {
        __p[1] = 0;
        v8 = 0;
        __p[0] = &__p[1];
        sub_271810FE4();
      }

      if (v1 == 2)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        sub_271809D88(__p, Mutable);
      }
    }

    else
    {
      switch(v1)
      {
        case 3:
          __p[0] = 0;
          __p[1] = 0;
          v8 = 0;
          sub_2715D666C(result, __p);
          if (v8 >= 0)
          {
            v3 = __p;
          }

          else
          {
            v3 = __p[0];
          }

          if (v8 >= 0)
          {
            v4 = HIBYTE(v8);
          }

          else
          {
            v4 = __p[1];
          }

          v5 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v3, v4, 0x8000100u, 0);
          sub_2715CB2C0(theArray, v5);
        case 4:
          LOBYTE(__p[0]) = 0;
          sub_2715D6558(result, __p);
          v6 = MEMORY[0x277CBED28];
          if (!LOBYTE(__p[0]))
          {
            v6 = MEMORY[0x277CBED10];
          }

          sub_271809A48(__p, *v6);
        case 7:
          theArray[0] = 0;
          sub_2715D63E4(result, theArray);
          LOBYTE(__p[0]) = 12;
          operator new();
      }
    }
  }

  return result;
}

void sub_2715CF188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CF19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  sub_27112F828(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715CF254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CF268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_27112F828(&a9);
  sub_27112F828(&a17);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2715CF288(unsigned __int8 *result)
{
  v1 = *result;
  if (*result)
  {
    if (v1 == 6)
    {
      theArray[0] = 0;
      sub_2715D693C(result, theArray);
      LOBYTE(__p[0]) = 3;
      operator new();
    }

    if ((v1 - 5) <= 1)
    {
      theArray[0] = 0;
      sub_2715D6A90(result, theArray);
      LOBYTE(__p[0]) = 8;
      operator new();
    }

    if (*result <= 2u)
    {
      if (v1 == 1)
      {
        __p[1] = 0;
        v8 = 0;
        __p[0] = &__p[1];
        sub_271810FE4();
      }

      if (v1 == 2)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        sub_271809D88(__p, Mutable);
      }
    }

    else
    {
      switch(v1)
      {
        case 3:
          __p[0] = 0;
          __p[1] = 0;
          v8 = 0;
          sub_2715D6E6C(result, __p);
          if (v8 >= 0)
          {
            v3 = __p;
          }

          else
          {
            v3 = __p[0];
          }

          if (v8 >= 0)
          {
            v4 = HIBYTE(v8);
          }

          else
          {
            v4 = __p[1];
          }

          v5 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v3, v4, 0x8000100u, 0);
          sub_2715CB2C0(theArray, v5);
        case 4:
          LOBYTE(__p[0]) = 0;
          sub_2715D6D58(result, __p);
          v6 = MEMORY[0x277CBED28];
          if (!LOBYTE(__p[0]))
          {
            v6 = MEMORY[0x277CBED10];
          }

          sub_271809A48(__p, *v6);
        case 7:
          theArray[0] = 0;
          sub_2715D6BE4(result, theArray);
          LOBYTE(__p[0]) = 12;
          operator new();
      }
    }
  }

  return result;
}

void sub_2715CFC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CFC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  sub_27112F828(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715CFD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CFD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_27112F828(&a9);
  sub_27112F828(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_2715CFD34(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (*(v1 + 16))
    {
      v15 = xmmword_27189C8C0;
      v2 = *v1;
      v14[0] = result;
      v14[1] = v2;
      v13 = xmmword_27189C8C0;
      v12[0] = result;
      v12[1] = (v1 + 8);
      result = sub_2715D7290(v14, v12);
      if ((result & 1) == 0)
      {
        v3 = *MEMORY[0x277CBECE8];
        v4 = sub_2715D7024(v14);
        if (*(v4 + 23) < 0)
        {
          sub_271127178(__p, *v4, *(v4 + 8));
        }

        else
        {
          v5 = *v4;
          v11 = *(v4 + 16);
          *__p = v5;
        }

        v6 = sub_2715D75EC(v14);
        sub_2715CE7F0(v6);
        if (v11 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        if (v11 >= 0)
        {
          v8 = HIBYTE(v11);
        }

        else
        {
          v8 = __p[1];
        }

        v9 = CFStringCreateWithBytes(v3, v7, v8, 0x8000100u, 0);
        sub_2715CB2C0(&v16, v9);
      }
    }
  }

  return result;
}

void sub_2715CFFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715D0010(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    v2 = *v1;
    if (*v1 != v1[1])
    {
      v16 = xmmword_27189C8C0;
      v15[0] = result;
      v15[1] = v2;
      v14 = xmmword_27189C8C0;
      v3 = v1[1];
      v13[0] = result;
      v13[1] = v3;
      result = sub_2715D7838(v15, v13);
      if ((result & 1) == 0)
      {
        v4 = *MEMORY[0x277CBECE8];
        v5 = sub_2715D7768(v15);
        if (*(v5 + 23) < 0)
        {
          sub_271127178(__p, *v5, *(v5 + 8));
        }

        else
        {
          v6 = *v5;
          v12 = *(v5 + 16);
          *__p = v6;
        }

        v7 = sub_2715D7944(v15);
        sub_2715CF288(v7);
        if (v12 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (v12 >= 0)
        {
          v9 = HIBYTE(v12);
        }

        else
        {
          v9 = __p[1];
        }

        v10 = CFStringCreateWithBytes(v4, v8, v9, 0x8000100u, 0);
        sub_2715CB2C0(&v17, v10);
      }
    }
  }

  return result;
}

void sub_2715D0288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715D02C8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1[16] = 0;
  v2 = 0;
  sub_271150BA0(v1, a1);
}

void sub_2715D0434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2715D0464(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_2715D3EEC(a1);
    sub_27112B400(&v11, v10);
    sub_2714D199C("cannot use operator[] with a numeric argument with ", &v11, &v12);
    sub_2715D3D50(305, &v12, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v4 = *(a1 + 8);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = &v5[-*v4] >> 4;
  if (v7 <= a2)
  {
    v12.__r_.__value_.__s.__data_[0] = 0;
    v12.__r_.__value_.__l.__size_ = 0;
    sub_2715D890C(v4, v5, a2 - v7 + 1, &v12);
    sub_2715CA870(&v12.__r_.__value_.__l.__size_, v12.__r_.__value_.__s.__data_[0]);
    v6 = **(a1 + 8);
  }

  return &v6[2 * a2];
}

void sub_2715D05AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_2715D060C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1[16] = 0;
  v2 = 0;
  sub_271150BA0(v1, a1);
}

void sub_2715D0778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2715D07A8(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_2715D3EEC(a1);
    sub_27112B400(&v11, v10);
    sub_2714D199C("cannot use operator[] with a numeric argument with ", &v11, &v12);
    sub_2715D3D50(305, &v12, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v4 = *(a1 + 8);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = &v5[-*v4] >> 4;
  if (v7 <= a2)
  {
    v12.__r_.__value_.__s.__data_[0] = 0;
    v12.__r_.__value_.__l.__size_ = 0;
    sub_2715D8CAC(v4, v5, a2 - v7 + 1, &v12);
    sub_2715CC40C(&v12.__r_.__value_.__l.__size_, v12.__r_.__value_.__s.__data_[0]);
    v6 = **(a1 + 8);
  }

  return &v6[2 * a2];
}

void sub_2715D08F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_2715D0950(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  TypeID = CFNumberGetTypeID();
  if (CFGetTypeID(v3) == TypeID)
  {
    *a2 = 0;
LABEL_7:
    *(a2 + 120) = 1;
    return;
  }

  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v7 = CFStringGetTypeID();
  if (CFGetTypeID(v6) == v7)
  {
    *a2 = 1;
    goto LABEL_7;
  }

  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v9 = CFBooleanGetTypeID();
  if (CFGetTypeID(v8) == v9)
  {
    v10 = 2;
LABEL_17:
    *a2 = v10;
    goto LABEL_7;
  }

  v11 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v12 = CFArrayGetTypeID();
  if (CFGetTypeID(v11) == v12)
  {
    v10 = 3;
    goto LABEL_17;
  }

  v13 = *a1;
  if (*a1)
  {
    v14 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v13) == v14)
    {
      v10 = 4;
      goto LABEL_17;
    }

    v15 = *a1;
  }

  else
  {
LABEL_18:
    v15 = 0;
  }

  v16 = CFGetTypeID(v15);
  sub_271812CBC(v16, &v24);
  v19 = v17->__r_.__value_.__r.__words[0];
  size = v17->__r_.__value_.__l.__size_;
  v25[0] = v17->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
  v20 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    sub_271127178(v26, v19, size);
  }

  else
  {
    v26[0] = v19;
    v26[1] = size;
    *v27 = v25[0];
    *&v27[3] = *(v25 + 3);
    v28 = v20;
  }

  v29 = 1;
  LOBYTE(v30) = 0;
  v34 = 0;
  v35 = 1;
  sub_2711CBCA8(0x16u, v26, &v36);
  *a2 = v36;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v46 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_32;
  }

  *(a2 + 40) = 0;
  v21 = v39;
  if (v39 == 1)
  {
    *(a2 + 16) = __p;
    *(a2 + 32) = v38;
    v38 = 0;
    __p = 0uLL;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v22 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v45 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v22 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v45 & 1) == 0)
    {
LABEL_25:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (!v21)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }
  }

  v23 = v42;
  *(v22 + 16) = v41;
  *v22 = v40;
  v40 = 0uLL;
  *(a2 + 72) = v23;
  *(a2 + 80) = v43;
  *(a2 + 96) = v44;
  v41 = 0;
  v43 = 0uLL;
  v44 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v21)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

LABEL_32:
  if (v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v26[0]);
    }
  }

  if ((v20 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_45:
    operator delete(v24.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v19);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_45;
  }
}

void sub_2715D0CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  operator delete(v16);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2715D0DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112E024(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2715D0DE8()
{
  if ((atomic_load_explicit(&qword_28087C200, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087C200))
  {
    return &qword_28087C1D8;
  }

  qword_28087C1D8 = CFBooleanGetTypeID();
  qword_28087C1E0 = CFStringGetTypeID();
  qword_28087C1E8 = CFNumberGetTypeID();
  qword_28087C1F0 = CFArrayGetTypeID();
  qword_28087C1F8 = CFDictionaryGetTypeID();
  __cxa_guard_release(&qword_28087C200);
  return &qword_28087C1D8;
}

void sub_2715D114C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2743BF050](v2, 0x10B2C40EED050F3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2715D1178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2715D1194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271137AE8(&a10);
    _Unwind_Resume(a1);
  }

  sub_271137AE8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D11E0(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    operator delete(*result);
    return v3;
  }

  v2 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v2;
  if (*(v2 + 23) < 0)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_2715D127C(const UInt8 **a1@<X0>, int a2@<W8>)
{
  v4 = (a1[1] - *a1) >> 3;
  v27 = 0uLL;
  v26 = 0;
  sub_2715D2DE0(&v26, 0xAAAAAAAAAAAAAAABLL * v4);
  v5 = *a1;
  v6 = MEMORY[0x277CBECE8];
  if (*a1 != a1[1])
  {
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *a1;
    }

    else
    {
      v8 = *v5;
    }

    if (v7 >= 0)
    {
      v9 = v5[23];
    }

    else
    {
      v9 = *(v5 + 1);
    }

    v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
    sub_2715CB2C0(&v22, v10);
  }

  v11 = v26;
  __p = v26;
  v21 = v27;
  v25 = v27;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
  v27 = 0uLL;
  v26 = 0;
  sub_2715D2DE0(&v26, v12);
  v13 = a1[3];
  v14 = a1[4];
  if (v13 == v14)
  {
    v20 = v21;
  }

  else
  {
    do
    {
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      *&v28 = v15;
      *(&v28 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v27;
      if (v27 < *(&v27 + 1))
      {
        *v27 = v15;
        *(v17 + 8) = *(&v28 + 1);
        *&v27 = v17 + 16;
      }

      else
      {
        v18 = sub_2715D2FE0(&v26, &v28);
        v19 = *(&v28 + 1);
        *&v27 = v18;
        if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      v13 += 24;
    }

    while (v13 != v14);
    v11 = __p;
    v20 = v25;
  }

  v22 = v26;
  v23 = v27;
  sub_27180A890((v20 - v11) >> 4, (v27 - v26) >> 4, *v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150], a2);
}

void sub_2715D1720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_271347F18(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_271347F18(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D1758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D176C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_27112F828(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D1788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_27112F828(v6 - 96);
  sub_271347F18(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D17AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_27112F828(v12 - 96);
  sub_27112F828(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D17D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D18C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_27112F828(&a10);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_27112F828(&a10);
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  __cxa_free_exception(v18);
  sub_27112F828(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D1938(uint64_t a1, unint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v5 = *a2;
  v4 = *(a2 + 8);
  if (!v4 || (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  Count = CFDictionaryGetCount(*a2);
  v7 = Count;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < Count)
  {
    if (Count < 0xAAAAAAAAAAAAAABLL)
    {
      v8 = *(a1 + 8);
      operator new();
    }

    sub_271135560();
  }

LABEL_9:
  sub_27143B384((a1 + 24), v7);
  sub_27180B5AC(a2, &v20);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v24;
  v19 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v26;
  v12 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    v9 = v11 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if ((v14 == 0) == (v11 != 0))
    {
      goto LABEL_25;
    }
  }

  else if (*(&v14 + 1) != *(&v11 + 1))
  {
LABEL_25:
    sub_27180B2D8(&v14);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  sub_2715D2C8C(&v20);
  return a1;
}

void sub_2715D1EB8(_Unwind_Exception *a1)
{
  sub_271392A1C((v1 + 24));
  sub_27137F4D0(v1);
  _Unwind_Resume(a1);
}

void sub_2715D1ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v32 + 8) = v33;
  sub_2715D11E0(&__p);
  sub_2715CDAE4(&a24);
  sub_2715CDAE4(&a32);
  sub_2715D2C8C((v34 - 176));
  sub_271392A1C((v32 + 24));
  sub_27137F4D0(v32);
  _Unwind_Resume(a1);
}

void sub_2715D1F68(const UInt8 **a1@<X0>, int a2@<W8>)
{
  v4 = (a1[1] - *a1) >> 3;
  v27 = 0uLL;
  v26 = 0;
  sub_2715D2DE0(&v26, 0xAAAAAAAAAAAAAAABLL * v4);
  v5 = *a1;
  v6 = MEMORY[0x277CBECE8];
  if (*a1 != a1[1])
  {
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *a1;
    }

    else
    {
      v8 = *v5;
    }

    if (v7 >= 0)
    {
      v9 = v5[23];
    }

    else
    {
      v9 = *(v5 + 1);
    }

    v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
    sub_2715CB2C0(&v22, v10);
  }

  v11 = v26;
  __p = v26;
  v21 = v27;
  v25 = v27;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
  v27 = 0uLL;
  v26 = 0;
  sub_2715D2DE0(&v26, v12);
  v13 = a1[3];
  v14 = a1[4];
  if (v13 == v14)
  {
    v20 = v21;
  }

  else
  {
    do
    {
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      *&v28 = v15;
      *(&v28 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v27;
      if (v27 < *(&v27 + 1))
      {
        *v27 = v15;
        *(v17 + 8) = *(&v28 + 1);
        *&v27 = v17 + 16;
      }

      else
      {
        v18 = sub_2715D2FE0(&v26, &v28);
        v19 = *(&v28 + 1);
        *&v27 = v18;
        if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      v13 += 24;
    }

    while (v13 != v14);
    v11 = __p;
    v20 = v25;
  }

  v22 = v26;
  v23 = v27;
  sub_27180A890((v20 - v11) >> 4, (v27 - v26) >> 4, *v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150], a2);
}

void sub_2715D240C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_271347F18(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D2428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_271347F18(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D2444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D2458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_27112F828(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D2474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_27112F828(v6 - 96);
  sub_271347F18(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D2498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_27112F828(v12 - 96);
  sub_27112F828(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D24BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D24D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  v8 = *(a1 + 23);
  v9 = *(a1 + 8);
  if (v8 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  *(a5 + 8) = 0;
  if (v8 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v12 != a2)
  {
    v12 = (*(*v12 + 16))(v12);
LABEL_10:
    v16 = v12;
    goto LABEL_12;
  }

  v16 = v15;
  (*(*v12 + 24))(v12, v15);
LABEL_12:
  sub_2715D904C(v10, v10 + v11, v15, a3, a4, v17);
  sub_2715D91B4(v17, 1, a5);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v18 != v17)
  {
    if (v18)
    {
      (*(*v18 + 40))();
    }

    result = v16;
    if (v16 != v15)
    {
      goto LABEL_20;
    }

LABEL_23:
    result = (*(*result + 32))(result);
    goto LABEL_24;
  }

  (*(*v18 + 32))(v18);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715D2704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_2715E1D60(va1);
  sub_2715D2734(va);
  sub_2715CA870(v3, *v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D2734(uint64_t a1)
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

void sub_2715D27C0(uint64_t *a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  sub_271810FE4();
}

void sub_2715D28CC(uint64_t *a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  sub_271810FE4();
}

uint64_t *sub_2715D29D8(uint64_t *a1, _WORD *a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_2714A56E0(a1, &v21);
  v4 = SHIBYTE(v23);
  v5 = v21;
  v6 = v22;
  if (v23 < 0)
  {
    v7 = v21;
  }

  else
  {
    v6 = HIBYTE(v23);
    v7 = &v21;
  }

  if (v6 > 5)
  {
    if (v6 == 10)
    {
      v15 = *v7;
      v16 = *(v7 + 4);
      if (v15 == 0x616E6F6974636944 && v16 == 31090)
      {
        *a2 = (&off_279E2F940 - &off_279E2F900) >> 4;
        if ((v4 & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_39;
      }

      if (*v7 == 1651340622 && *(v7 + 2) == 29285)
      {
        *a2 = 0;
        if ((v4 & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_38;
      }

      v12 = *v7;
      v13 = *(v7 + 2);
      if (v12 == 1769108563 && v13 == 26478)
      {
        *a2 = (&off_279E2F910 - &off_279E2F900) >> 4;
        if ((v4 & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_38;
      }
    }

LABEL_39:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_39;
    }

    v8 = *v7;
    v9 = *(v7 + 4);
    if (v8 != 1634890305 || v9 != 121)
    {
      goto LABEL_39;
    }

    *a2 = (&off_279E2F930 - &off_279E2F900) >> 4;
    if (v4 < 0)
    {
      goto LABEL_38;
    }

    return a1;
  }

  if (*v7 != 1819242306)
  {
    goto LABEL_39;
  }

  *a2 = (&off_279E2F920 - &off_279E2F900) >> 4;
  if ((v4 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_38:
  operator delete(v5);
  return a1;
}

void sub_2715D2C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      if (a20 < 0)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void *sub_2715D2C8C(void *a1)
{
  v2 = a1[13];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[11];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[6];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[4];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void *sub_2715D2DE0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_2715D2F28();
  }

  return result;
}

void sub_2715D2F40(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  operator new();
}

void sub_2715D2FB4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

_OWORD *sub_2715D2FE0(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2715D2F28();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = (16 * v2);
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 == v10;
  v12 = (v7 + *a1 - v10);
  *v7 = v8;
  v13 = v7 + 1;
  if (!v11)
  {
    v14 = v9;
    v15 = v12;
    do
    {
      *v15++ = *v14;
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
    }

    while (v14 != v10);
    do
    {
      v16 = v9[1];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v13;
}

uint64_t sub_2715D3148(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_2715CA870((v4 + 8), v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2715D31A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_2715CA870(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

void *sub_2715D3208(uint64_t a1, const void **a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_2715D3EEC(a1);
    sub_27112B400(&v7, v6);
    sub_2714D199C("cannot use operator[] with a string argument with ", &v7, &v8);
    sub_2715D3D50(305, &v8, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v3 = *(a1 + 8);
  v8.__r_.__value_.__r.__words[0] = a2;
  return sub_2715D3F68(v3, a2) + 7;
}

void sub_2715D331C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_2715D3B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *__p, uint64_t a32)
{
  sub_2715CA870((v32 + 8), 7);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
    sub_27112F828(&a26);
    sub_27112F828(&a24);
    _Unwind_Resume(a1);
  }

  sub_27112F828(&a26);
  sub_27112F828(&a24);
  _Unwind_Resume(a1);
}

void sub_2715D3C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_2715CA870((v33 + 8), 3);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2715D3C9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  sub_27112E024(&a27);
  sub_27112F828(&a25);
  _Unwind_Resume(a1);
}

void sub_2715D3CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3D50(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 10;
  strcpy(__p, "type_error");
  sub_2715D429C(__p, a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_288108F10;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_288109010;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2715D3E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const char *sub_2715D3EEC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_279E2F950[v1];
  }
}

void sub_2715D3F14(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void *sub_2715D3F68(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_2715D4104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CCD14(va);
  _Unwind_Resume(a1);
}

void *sub_2715D4118(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

void sub_2715D429C(const void **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (v5 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v5 + 16 >= 0x17)
  {
    operator new();
  }

  v23[0] = 0;
  HIBYTE(v23[0]) = v5 + 16;
  *__p = *"[json.exception.";
  if (v5)
  {
    if ((v4 & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    memmove(v23, v7, v5);
  }

  *(v23 + v5) = 0;
  v8 = SHIBYTE(v23[0]);
  if ((SHIBYTE(v23[0]) & 0x8000000000000000) != 0)
  {
    v8 = __p[1];
    v10 = ((v23[0] & 0x7FFFFFFFFFFFFFFFLL) - 1);
    if (v10 == __p[1])
    {
      if ((v23[0] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

LABEL_17:
      operator new();
    }

    v9 = __p[0];
  }

  else
  {
    v9 = __p;
    if (SHIBYTE(v23[0]) == 22)
    {
      goto LABEL_17;
    }
  }

  *(v8 + v9) = 46;
  v11 = v8 + 1;
  if (SHIBYTE(v23[0]) < 0)
  {
    __p[1] = v11;
  }

  else
  {
    HIBYTE(v23[0]) = v11 & 0x7F;
  }

  *(v11 + v9) = 0;
  *&v24.__r_.__value_.__l.__data_ = *__p;
  v24.__r_.__value_.__r.__words[2] = v23[0];
  __p[1] = 0;
  v23[0] = 0;
  __p[0] = 0;
  std::to_string(&v21, a2);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v21;
  }

  else
  {
    v12 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v24, v12, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v26 = v14->__r_.__value_.__r.__words[2];
  v25 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = SHIBYTE(v26);
  if ((SHIBYTE(v26) & 0x8000000000000000) != 0)
  {
    v17 = *(&v25 + 1);
    v18 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v18 - *(&v25 + 1)) < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v26 & 0x7FFFFFFFFFFFFFFFLL) < *(&v25 + 1) + 2 - v18)
      {
        sub_271120DA8();
      }

LABEL_33:
      operator new();
    }

    v19 = v25;
    *(v25 + *(&v25 + 1)) = 8285;
    v20 = v17 + 2;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((SHIBYTE(v26) - 21) < 2)
    {
      goto LABEL_33;
    }

    v19 = &v25;
    *(&v25 + SHIBYTE(v26)) = 8285;
    v20 = v16 + 2;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_35:
      HIBYTE(v26) = v20 & 0x7F;
      goto LABEL_38;
    }
  }

  *(&v25 + 1) = v20;
LABEL_38:
  *(v19 + v20) = 0;
  *a3 = v25;
  *(a3 + 16) = v26;
  v26 = 0;
  v25 = 0uLL;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_40:
      if ((SHIBYTE(v23[0]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_44:
      operator delete(__p[0]);
      return;
    }
  }

  else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23[0]) < 0)
  {
    goto LABEL_44;
  }
}

void sub_2715D46D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p)
{
  if (v30 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if (a28 < 0)
      {
LABEL_8:
        operator delete(a23);
        if ((a21 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }

LABEL_10:
      if ((a21 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if (a28 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

__n128 sub_2715D476C@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_2715D47D4(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_2715D4828(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715D4890(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715D48F8(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_2715D3EEC(a1);
    sub_27112B400(&v8, v7);
    sub_2714D199C("cannot use operator[] with a string argument with ", &v8, &v9);
    sub_2715D3D50(305, &v9, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v3 = *(a1 + 8);
  v9.__r_.__value_.__s.__data_[0] = 0;
  v9.__r_.__value_.__l.__size_ = 0;
  v4 = sub_2715D546C(v3, a2, &v9);
  sub_2715CC40C(&v9.__r_.__value_.__l.__size_, v9.__r_.__value_.__s.__data_[0]);
  return v4 + 24;
}

void sub_2715D4A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void sub_2715D5220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *__p, uint64_t a32)
{
  sub_2715CC40C((v32 + 8), 7);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
    sub_27112F828(&a26);
    sub_27112F828(&a24);
    _Unwind_Resume(a1);
  }

  sub_27112F828(&a26);
  sub_27112F828(&a24);
  _Unwind_Resume(a1);
}

void sub_2715D534C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_2715CC40C((v33 + 8), 3);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2715D53B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D53E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D53F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  sub_27112E024(&a27);
  sub_27112F828(&a25);
  _Unwind_Resume(a1);
}

void sub_2715D5414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D5428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D543C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D5458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D546C(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_17:
    if (v6 >= a1[2])
    {
      v15 = sub_2715D55B4(a1, a2, a3);
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        sub_271127178(v6, *a2, *(a2 + 8));
      }

      else
      {
        v14 = *a2;
        *(v6 + 16) = *(a2 + 16);
        *v6 = v14;
      }

      sub_2715D5748(v6 + 24, a3);
      v15 = v6 + 40;
      a1[1] = v6 + 40;
    }

    a1[1] = v15;
    return v15 - 40;
  }

  else
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *(v7 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v7 + 8);
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? v7 : *v7;
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v7 += 40;
      if (v7 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  return v7;
}

void sub_2715D5594(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_2715D55B4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0x666666666666666)
  {
    sub_2715CB01C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_271127178(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  sub_2715D5748(v7 + 24, a3);
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_2715D5D3C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7 + 40;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7 + 40;
}

void sub_2715D5710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
    sub_2715D5E98(va);
    _Unwind_Resume(a1);
  }

  sub_2715D5E98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D5748(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  *(result + 8) = 0;
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        v6 = *(a2 + 1);
        operator new();
      }

      if (v2 == 2)
      {
        v3 = *(a2 + 1);
        operator new();
      }

      return result;
    }

    if (v2 == 3)
    {
      v7 = *(a2 + 1);
      operator new();
    }

    v5 = a2[8];
LABEL_12:
    *(result + 8) = v5;
    return result;
  }

  if (v2 < 8)
  {
    v5 = *(a2 + 1);
    goto LABEL_12;
  }

  if (v2 == 8)
  {
    v4 = *(a2 + 1);
    operator new();
  }

  return result;
}

void sub_2715D5A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2715D5A9C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_2715D5A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_2715CC39C(&a11);
  v11[1] = v12;
  sub_2715D5A9C(&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void ***sub_2715D5A9C(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = v4;
          v4 -= 5;
          sub_2715CC40C(v6 - 1, *(v6 - 16));
          if (*(v6 - 17) < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_2715D5B3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    sub_2715CB01C();
  }
}

void sub_2715D5C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_2715D5CD4(&a11);
  *(v11 + 8) = v12;
  sub_2715D5C48(&a9);
  _Unwind_Resume(a1);
}

void ***sub_2715D5C48(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 1;
        do
        {
          v7 = v6 - 1;
          sub_2715CC40C(v6, *(v6 - 8));
          v6 -= 2;
        }

        while (v7 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_2715D5CD4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_2715CC40C(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

void sub_2715D5D3C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v9 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_271127178(v4, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        *(v4 + 16) = *(v7 + 2);
        *v4 = v8;
      }

      sub_2715D5748(v4 + 24, v7 + 24);
      v7 = (v7 + 40);
      v4 = v9 + 40;
      v9 += 40;
    }

    while (v7 != a3);
    do
    {
      sub_2715CC40C(v6 + 4, *(v6 + 24));
      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v6 = (v6 + 40);
    }

    while (v6 != a3);
  }
}

void sub_2715D5E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2715CC39C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D5E98(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_2715CC40C((i - 8), *(i - 16));
    if (*(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2715D5F0C(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_2715D3EEC(a1);
    sub_27112B400(&v6, v5);
    sub_2714D199C("cannot use operator[] with a numeric argument with ", &v6, &v7);
    sub_2715D3D50(305, &v7, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_2715D5FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_2715D6024(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_27143C19C(&v3, a2);
}

double sub_2715D613C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_2715D6220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_2715D6290(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_2715D6374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_2715D63E4(uint64_t *a1, double *a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 5:
      result = a1[1];
      *a2 = result;
      break;
    case 7:
      result = *(a1 + 1);
      *a2 = result;
      break;
    case 6:
      result = a1[1];
      *a2 = result;
      break;
    default:
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  return result;
}

void sub_2715D64E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2715D6558(unsigned __int8 *result, _BYTE *a2)
{
  if (*result != 4)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_2715D3EEC(v2);
    sub_27112B400(&v5, v4);
    sub_2714D199C("type must be BOOLean, but is ", &v5, &v6);
    sub_2715D3D50(302, &v6, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  *a2 = result[8];
  return result;
}

void sub_2715D660C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void **sub_2715D666C(void **result, uint64_t a2)
{
  if (*result != 3)
  {
    v10 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_2715D3EEC(v10);
    sub_27112B400(&v13, v12);
    sub_2714D199C("type must be string, but is ", &v13, &v14);
    sub_2715D3D50(302, &v14, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v2 = result[1];
  if (v2 != a2)
  {
    v3 = v2[23];
    if (*(a2 + 23) < 0)
    {
      if ((v3 & 0x80u) == 0)
      {
        v5 = result[1];
      }

      else
      {
        v5 = *v2;
      }

      if ((v3 & 0x80u) == 0)
      {
        v6 = v2[23];
      }

      else
      {
        v6 = *(v2 + 1);
      }

      return sub_2711289F8(a2, v5, v6);
    }

    else if ((v2[23] & 0x80) != 0)
    {
      v7 = *(v2 + 1);
      v9 = *v2;

      return sub_271128928(a2, v9, v7);
    }

    else
    {
      v4 = *v2;
      *(a2 + 16) = *(v2 + 2);
      *a2 = v4;
    }
  }

  return result;
}

void sub_2715D67B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2715D6824(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_2715D3EEC(a1);
    sub_27112B400(&v6, v5);
    sub_2714D199C("cannot use operator[] with a numeric argument with ", &v6, &v7);
    sub_2715D3D50(305, &v7, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_2715D68DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

double sub_2715D693C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_2715D6A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_2715D6A90(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_2715D6B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_2715D6BE4(uint64_t *a1, double *a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 5:
      result = a1[1];
      *a2 = result;
      break;
    case 7:
      result = *(a1 + 1);
      *a2 = result;
      break;
    case 6:
      result = a1[1];
      *a2 = result;
      break;
    default:
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  return result;
}

void sub_2715D6CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2715D6D58(unsigned __int8 *result, _BYTE *a2)
{
  if (*result != 4)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_2715D3EEC(v2);
    sub_27112B400(&v5, v4);
    sub_2714D199C("type must be BOOLean, but is ", &v5, &v6);
    sub_2715D3D50(302, &v6, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  *a2 = result[8];
  return result;
}

void sub_2715D6E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void **sub_2715D6E6C(void **result, uint64_t a2)
{
  if (*result != 3)
  {
    v10 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_2715D3EEC(v10);
    sub_27112B400(&v13, v12);
    sub_2714D199C("type must be string, but is ", &v13, &v14);
    sub_2715D3D50(302, &v14, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v2 = result[1];
  if (v2 != a2)
  {
    v3 = v2[23];
    if (*(a2 + 23) < 0)
    {
      if ((v3 & 0x80u) == 0)
      {
        v5 = result[1];
      }

      else
      {
        v5 = *v2;
      }

      if ((v3 & 0x80u) == 0)
      {
        v6 = v2[23];
      }

      else
      {
        v6 = *(v2 + 1);
      }

      return sub_2711289F8(a2, v5, v6);
    }

    else if ((v2[23] & 0x80) != 0)
    {
      v7 = *(v2 + 1);
      v9 = *v2;

      return sub_271128928(a2, v9, v7);
    }

    else
    {
      v4 = *v2;
      *(a2 + 16) = *(v2 + 2);
      *a2 = v4;
    }
  }

  return result;
}

void sub_2715D6FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2715D7024(uint64_t a1)
{
  if (**a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v3, "cannot use key() for non-object iterators");
    sub_2715D739C(207, v3, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  return *(a1 + 8) + 32;
}

void sub_2715D70C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_2715D70F8(uint64_t a1, void *key, uint64_t a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  if (v6 && (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v7)
    {
      return;
    }
  }

  else if (!v7)
  {
    return;
  }

  if (!CFDictionaryContainsKey(*a1, key))
  {
    sub_2714421A8(&value, a3);
  }
}

BOOL sub_2715D7290(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v7, "cannot compare iterators of different containers");
    sub_2715D739C(212, v7, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_2715D7360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_2715D739C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 16;
  strcpy(__p, "invalid_iterator");
  sub_2715D429C(__p, a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*__p);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_288108F10;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_288108F98;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2715D74E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715D7530(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_2715D7584(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x2743BF050);
}

_BYTE *sub_2715D75EC(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v6, "cannot get value");
    sub_2715D739C(214, v6, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  if (*(a1 + 24))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v6, "cannot get value");
    sub_2715D739C(214, v6, v4);
    __cxa_throw(v4, &unk_28811C360, sub_2715D7530);
  }

  return result;
}

void sub_2715D7724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t sub_2715D7768(uint64_t a1)
{
  if (**a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v3, "cannot use key() for non-object iterators");
    sub_2715D739C(207, v3, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  return *(a1 + 8);
}

void sub_2715D7800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

BOOL sub_2715D7838(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v7, "cannot compare iterators of different containers");
    sub_2715D739C(212, v7, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_2715D7908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_2715D7944(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 24);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v6, "cannot get value");
    sub_2715D739C(214, v6, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  if (*(a1 + 24))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v6, "cannot get value");
    sub_2715D739C(214, v6, v4);
    __cxa_throw(v4, &unk_28811C360, sub_2715D7530);
  }

  return result;
}

void sub_2715D7A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_2715D7AC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v7 = (a2 + 16);
    v8 = 32 * a3;
    while (1)
    {
      v9 = *v7;
      if (**v7 != 2 || *(*(v9 + 1) + 8) - **(v9 + 1) != 32 || *sub_2715D5F0C(v9, 0) != 3)
      {
        break;
      }

      v7 += 4;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v10 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (a5 != 1)
      {
        LOBYTE(v10) = 1;
      }

      if ((v10 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_27112B400(&v14, "cannot create object from initializer list");
        sub_2715D3D50(301, &v14, exception);
        __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
      }

      if (!v11)
      {
LABEL_18:
        *a1 = 2;
        operator new();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v10 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v10)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

void sub_2715D7F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715D84A4(va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_2715D7F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_2715D31A0(va1);
  v3[1] = v4;
  sub_2715D84A4(va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_2715D7F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, ...)
{
  va_start(va, a6);
  sub_2715CA870(va, a6);
  _Unwind_Resume(a1);
}

void sub_2715D7F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

uint64_t sub_2715D7FA4(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  *(result + 8) = 0;
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        v6 = *(a2 + 1);
        operator new();
      }

      if (v2 == 2)
      {
        v3 = *(a2 + 1);
        operator new();
      }

      return result;
    }

    if (v2 == 3)
    {
      v7 = *(a2 + 1);
      operator new();
    }

    v5 = a2[8];
LABEL_13:
    *(result + 8) = v5;
    return result;
  }

  if (v2 < 8)
  {
    v5 = *(a2 + 1);
    goto LABEL_13;
  }

  if (v2 == 8)
  {
    v4 = *(a2 + 1);
    operator new();
  }

  return result;
}

void sub_2715D823C(_Unwind_Exception *a1)
{
  sub_2715CB170(v1, v1[1]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D825C(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = sub_2711B1458(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_2715D8360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715CCD14(va);
  _Unwind_Resume(a1);
}

void sub_2715D8374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_2715CCD14(va);
  _Unwind_Resume(a1);
}

void sub_2715D8398(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    sub_2715CB01C();
  }
}

void sub_2715D8484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_2715D31A0(&a11);
  *(v11 + 8) = v12;
  sub_2715D84A4(&a9);
  _Unwind_Resume(a1);
}

void ***sub_2715D84A4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 1;
        do
        {
          v7 = v6 - 1;
          sub_2715CA870(v6, *(v6 - 8));
          v6 -= 2;
        }

        while (v7 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_2715D8530(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_2715CC40C((v4 + 8), v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2715D8588(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v8 = (a2 + 16);
    v9 = 32 * a3;
    while (1)
    {
      v10 = *v8;
      if (**v8 != 2 || *(*(v10 + 1) + 8) - **(v10 + 1) != 32 || *sub_2715D6824(v10, 0) != 3)
      {
        break;
      }

      v8 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      if (a5 != 1)
      {
        LOBYTE(v11) = 1;
      }

      if ((v11 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_27112B400(&v14, "cannot create object from initializer list");
        sub_2715D3D50(301, &v14, exception);
        __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
      }

      if (!v12)
      {
LABEL_18:
        *a1 = 2;
        operator new();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v11 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

void sub_2715D8878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2715D5C48(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_2715D8894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_2715D5CD4(&a11);
  v11[1] = v12;
  sub_2715D5C48(&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_2715D88D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
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

uint64_t sub_2715D890C(uint64_t **a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (!a3)
  {
    return v4;
  }

  v9 = a1[1];
  v8 = a1[2];
  if (a3 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a3 + ((v9 - *a1) >> 4);
    if (v11 >> 60)
    {
      sub_2715CB01C();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v58 = a1;
    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v35 = 16 * ((a2 - v10) >> 4);
    v54 = 0;
    v55 = v35;
    v56 = v35;
    v57 = 0;
    v36 = 16 * a3;
    v37 = v35 + 16 * a3;
    do
    {
      sub_2715D7FA4(v35, a4);
      v35 += 16;
      v36 -= 16;
    }

    while (v36);
    v56 = v37;
    v38 = v55;
    v39 = a1[1];
    if (v39 == v4)
    {
      v45 = v55;
      v44 = v4;
    }

    else
    {
      v40 = v4;
      do
      {
        *v37 = *v40;
        *(v37 + 8) = *(v40 + 1);
        *v40 = 0;
        *(v40 + 1) = 0;
        v40 += 16;
        v37 += 16;
      }

      while (v40 != v39);
      v41 = v4;
      v42 = v4;
      do
      {
        v43 = *v42;
        v42 += 16;
        sub_2715CA870(v41 + 1, v43);
        v41 = v42;
      }

      while (v42 != v39);
      v44 = a1[1];
      v45 = v55;
      v37 = v56;
    }

    v46 = (v37 + v44 - v4);
    v56 = v46;
    a1[1] = v4;
    v47 = *a1;
    v48 = v45 + *a1 - v4;
    if (*a1 != v4)
    {
      v49 = *a1;
      v50 = v48;
      do
      {
        *v50 = *v49;
        *(v50 + 8) = v49[1];
        *v49 = 0;
        v49[1] = 0;
        v49 += 2;
        v50 += 16;
      }

      while (v49 != v4);
      v51 = v47;
      do
      {
        v52 = *v51;
        v51 += 2;
        sub_2715CA870(v47 + 1, v52);
        v47 = v51;
      }

      while (v51 != v4);
      v47 = *a1;
      v46 = v56;
    }

    *a1 = v48;
    a1[1] = v46;
    a1[2] = v57;
    if (v47)
    {
      operator delete(v47);
    }

    return v38;
  }

  v14 = (v9 - a2) >> 4;
  v15 = 16 * a3;
  if (a3 > v14)
  {
    v16 = &v9[16 * (a3 - v14)];
    v17 = a1[1];
    v18 = v15 - 16 * v14;
    do
    {
      sub_2715D7FA4(v17, a4);
      v17 += 16;
      v18 -= 16;
    }

    while (v18);
    a1[1] = v16;
    if (v9 == v4)
    {
      return v4;
    }

    v19 = &v4[v15];
    v20 = &v16[v15 / 0xFFFFFFFFFFFFFFF8];
    v21 = v16;
    if (&v16[v15 / 0xFFFFFFFFFFFFFFF8] >= v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v16 = a1[1];
  v14 = a3;
  v19 = &a2[v15];
  v20 = &v9[-v15];
  v21 = v16;
  if (v9 >= v15)
  {
LABEL_19:
    v22 = v20;
    v21 = v16;
    do
    {
      *v21 = *v22;
      v21[1] = v22[1];
      *v22 = 0;
      v22[1] = 0;
      v22 += 2;
      v21 += 2;
    }

    while (v22 < v9);
  }

LABEL_21:
  a1[1] = v21;
  if (v16 != v19)
  {
    v23 = 0;
    do
    {
      v24 = &v23[v20];
      v25 = v23[v20 - 16];
      v26 = *&v23[v20 - 8];
      *(v24 - 16) = 0;
      *(v24 - 1) = 0;
      v27 = &v23[v16];
      v28 = v23[v16 - 16];
      *(v27 - 16) = v25;
      LOBYTE(v54) = v28;
      v29 = *&v23[v16 - 8];
      *(v27 - 1) = v26;
      v55 = v29;
      sub_2715CA870(&v55, v28);
      v23 -= 16;
    }

    while ((&v4[16 * a3] - v16) != v23);
  }

  if (v4 <= a4)
  {
    if (a1[1] <= a4)
    {
      v30 = 0;
    }

    else
    {
      v30 = a3;
    }

    a4 += 16 * v30;
  }

  v31 = 0;
  do
  {
    v32 = &v4[v31];
    sub_2715D7FA4(&v54, a4);
    v33 = v4[v31];
    *v32 = v54;
    LOBYTE(v54) = v33;
    v34 = *&v4[v31 + 8];
    *(v32 + 1) = v55;
    v55 = v34;
    sub_2715CA870(&v55, v33);
    v31 += 16;
    --v14;
  }

  while (v14);
  return v4;
}

void sub_2715D8C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715D3148(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2715D8CAC(uint64_t ***a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (!a3)
  {
    return v4;
  }

  v9 = a1[1];
  v8 = a1[2];
  if (a3 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a3 + ((v9 - *a1) >> 4);
    if (v11 >> 60)
    {
      sub_2715CB01C();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v58 = a1;
    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v35 = (16 * ((a2 - v10) >> 4));
    v54 = 0;
    v55 = v35;
    v56 = v35;
    v57 = 0;
    v36 = 16 * a3;
    v37 = &v35[2 * a3];
    do
    {
      sub_2715D5748(v35, a4);
      v35 += 2;
      v36 -= 16;
    }

    while (v36);
    v56 = v37;
    v38 = v55;
    v39 = a1[1];
    if (v39 == v4)
    {
      v45 = v55;
      v44 = v4;
    }

    else
    {
      v40 = v4;
      do
      {
        *v37 = *v40;
        v37[1] = *(v40 + 1);
        *v40 = 0;
        *(v40 + 1) = 0;
        v40 += 16;
        v37 += 2;
      }

      while (v40 != v39);
      v41 = v4;
      v42 = v4;
      do
      {
        v43 = *v42;
        v42 += 16;
        sub_2715CC40C(v41 + 1, v43);
        v41 = v42;
      }

      while (v42 != v39);
      v44 = a1[1];
      v45 = v55;
      v37 = v56;
    }

    v46 = (v37 + v44 - v4);
    v56 = v46;
    a1[1] = v4;
    v47 = *a1;
    v48 = (v45 + *a1 - v4);
    if (*a1 != v4)
    {
      v49 = *a1;
      v50 = v48;
      do
      {
        *v50 = *v49;
        v50[1] = v49[1];
        *v49 = 0;
        v49[1] = 0;
        v49 += 2;
        v50 += 2;
      }

      while (v49 != v4);
      v51 = v47;
      do
      {
        v52 = *v51;
        v51 += 2;
        sub_2715CC40C(v47 + 1, v52);
        v47 = v51;
      }

      while (v51 != v4);
      v47 = *a1;
      v46 = v56;
    }

    *a1 = v48;
    a1[1] = v46;
    a1[2] = v57;
    if (v47)
    {
      operator delete(v47);
    }

    return v38;
  }

  v14 = (v9 - a2) >> 4;
  v15 = 16 * a3;
  if (a3 > v14)
  {
    v16 = &v9[16 * (a3 - v14)];
    v17 = a1[1];
    v18 = v15 - 16 * v14;
    do
    {
      sub_2715D5748(v17, a4);
      v17 += 16;
      v18 -= 16;
    }

    while (v18);
    a1[1] = v16;
    if (v9 == v4)
    {
      return v4;
    }

    v19 = &v4[v15];
    v20 = &v16[v15 / 0xFFFFFFFFFFFFFFF8];
    v21 = v16;
    if (&v16[v15 / 0xFFFFFFFFFFFFFFF8] >= v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v16 = a1[1];
  v14 = a3;
  v19 = &a2[v15];
  v20 = &v9[-v15];
  v21 = v16;
  if (v9 >= v15)
  {
LABEL_19:
    v22 = v20;
    v21 = v16;
    do
    {
      *v21 = *v22;
      v21[1] = *(v22 + 1);
      *v22 = 0;
      *(v22 + 1) = 0;
      v22 += 16;
      v21 += 2;
    }

    while (v22 < v9);
  }

LABEL_21:
  a1[1] = v21;
  if (v16 != v19)
  {
    v23 = 0;
    do
    {
      v24 = &v23[v20];
      v25 = v23[v20 - 16];
      v26 = *&v23[v20 - 8];
      *(v24 - 16) = 0;
      *(v24 - 1) = 0;
      v27 = &v23[v16];
      v28 = v23[v16 - 16];
      *(v27 - 16) = v25;
      LOBYTE(v54) = v28;
      v29 = *&v23[v16 - 8];
      *(v27 - 1) = v26;
      v55 = v29;
      sub_2715CC40C(&v55, v28);
      v23 -= 16;
    }

    while ((&v4[16 * a3] - v16) != v23);
  }

  if (v4 <= a4)
  {
    if (a1[1] <= a4)
    {
      v30 = 0;
    }

    else
    {
      v30 = a3;
    }

    a4 += 16 * v30;
  }

  v31 = 0;
  do
  {
    v32 = &v4[v31];
    sub_2715D5748(&v54, a4);
    v33 = v4[v31];
    *v32 = v54;
    LOBYTE(v54) = v33;
    v34 = *&v4[v31 + 8];
    *(v32 + 1) = v55;
    v55 = v34;
    sub_2715CC40C(&v55, v33);
    v31 += 16;
    --v14;
  }

  while (v14);
  return v4;
}

void sub_2715D9034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715D8530(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D904C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v6 = *(a3 + 24);
  if (v6)
  {
    if (v6 == a3)
    {
      v14 = v13;
      v7 = a5;
      v8 = a4;
      v9 = a6;
      (*(*v6 + 24))(v6, v13);
      a6 = v9;
      a4 = v8;
      a5 = v7;
    }

    else
    {
      v14 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  sub_2715D97D0(a6, &v12, v13, a4, a5);
  result = v14;
  if (v14 == v13)
  {
    result = (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    result = (*(*v14 + 40))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715D9190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715D91B4(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 24);
  if (v6)
  {
    if (v6 == a1)
    {
      v36 = v35;
      (*(*v6 + 24))(v6, v35);
    }

    else
    {
      v36 = (*(*v6 + 16))(v6);
    }

    sub_2715DDF10(&v37, a3, v35, *(a1 + 184));
    if (v36 == v35)
    {
      (*(*v36 + 32))(v36);
    }

    else if (v36)
    {
      (*(*v36 + 40))();
    }

    sub_2715DB56C(a1, &v37);
    if (a2)
    {
      v11 = sub_2715D990C((a1 + 40));
      *(a1 + 32) = v11;
      if (v11 != 15)
      {
        sub_2715DC130(a1 + 40, &v34);
        v30 = *(a1 + 72);
        v31 = *(a1 + 88);
        v27 = 5;
        strcpy(v26, "value");
        sub_2715DC81C(a1, 0xFu, v26, __p);
        sub_2715DC224(101, &v30, __p, &v32);
        v42 = 1;
        if (v43 == 1)
        {
          exception = __cxa_allocate_exception(0x28uLL);
          v18 = sub_2715E05B4(exception, &v32);
          __cxa_throw(v18, &unk_28811C390, sub_2715DD2A8);
        }

        v32.__vftable = &unk_288108F10;
        std::runtime_error::~runtime_error(&v33);
        std::exception::~exception(&v32);
        if (v29 < 0)
        {
          operator delete(__p[0]);
          if ((v27 & 0x80000000) == 0)
          {
LABEL_24:
            if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_25;
            }

LABEL_29:
            operator delete(v34.__r_.__value_.__l.__data_);
            if (v42 == 1)
            {
              goto LABEL_26;
            }

            goto LABEL_30;
          }
        }

        else if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        operator delete(v26[0]);
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_25:
    if (v42 == 1)
    {
LABEL_26:
      v12 = *a3;
      *a3 = 9;
      v24 = v12;
      v13 = *(a3 + 1);
      *(a3 + 1) = 0;
      v25 = v13;
      v14 = &v25;
      goto LABEL_32;
    }

LABEL_30:
    if (*a3 != 9)
    {
LABEL_33:
      sub_2715E09D8(&v37);
      goto LABEL_34;
    }

    *a3 = 0;
    v22 = 9;
    v15 = *(a3 + 1);
    *(a3 + 1) = 0;
    v23 = v15;
    v14 = &v23;
    v12 = 9;
LABEL_32:
    sub_2715CA870(v14, v12);
    goto LABEL_33;
  }

  v7 = *(a1 + 184);
  v37 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  v41 = v7;
  sub_2715DD2FC(a1, &v37);
  if (!a2)
  {
    goto LABEL_10;
  }

  v8 = sub_2715D990C((a1 + 40));
  *(a1 + 32) = v8;
  if (v8 == 15)
  {
    goto LABEL_10;
  }

  sub_2715DC130(a1 + 40, &v34);
  v30 = *(a1 + 72);
  v31 = *(a1 + 88);
  v27 = 5;
  strcpy(v26, "value");
  sub_2715DC81C(a1, 0xFu, v26, __p);
  sub_2715DC224(101, &v30, __p, &v32);
  v40 = 1;
  if (v41 == 1)
  {
    v19 = __cxa_allocate_exception(0x28uLL);
    v20 = sub_2715E05B4(v19, &v32);
    __cxa_throw(v20, &unk_28811C390, sub_2715DD2A8);
  }

  v32.__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(&v33);
  std::exception::~exception(&v32);
  if ((v29 & 0x80000000) == 0)
  {
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

  operator delete(__p[0]);
  if (v27 < 0)
  {
LABEL_36:
    operator delete(v26[0]);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_37;
    }

LABEL_10:
    if (v40 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_9:
  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_37:
  operator delete(v34.__r_.__value_.__l.__data_);
  if (v40 == 1)
  {
LABEL_11:
    v9 = *a3;
    *a3 = 9;
    v10 = *(a3 + 1);
    *(a3 + 1) = 0;
    v21 = v10;
    sub_2715CA870(&v21, v9);
  }

LABEL_12:
  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

LABEL_34:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_2715D9668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_2715DD2A8(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a40 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_4:
    v42 = *(v40 - 200);
    if (v42)
    {
LABEL_10:
      *(v40 - 192) = v42;
      operator delete(v42);
      _Unwind_Resume(a1);
    }

LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a35);
  v42 = *(v40 - 200);
  if (v42)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_2715D97D0(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, char a5)
{
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v9 + 16))(v9);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *a2;
  *(a1 + 56) = a5;
  *(a1 + 60) = -1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = "";
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  v10 = localeconv();
  if (v10->decimal_point)
  {
    v11 = *v10->decimal_point;
  }

  else
  {
    v11 = 46;
  }

  *(a1 + 176) = v11;
  *(a1 + 184) = a4;
  *(a1 + 32) = sub_2715D990C((a1 + 40));
  return a1;
}

void sub_2715D98EC(_Unwind_Exception *a1)
{
  sub_2715DB528(v1 + 40);
  sub_2715D2734(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D990C(int64x2_t *a1)
{
  if (!a1[2].i64[0])
  {
    if (sub_2715DB210(a1) == 239)
    {
      if (sub_2715DB210(a1) != 187 || sub_2715DB210(a1) != 191)
      {
        v2 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_6:
        a1[6].i64[1] = v2;
        return 14;
      }
    }

    else
    {
      v4 = (a1 + 40);
      v5 = a1[2].i64[1];
      a1[1].i8[8] = 1;
      --a1[2].i64[0];
      if (v5 || (v4 = a1 + 3, (v5 = a1[3].i64[0]) != 0))
      {
        v4->i64[0] = v5 - 1;
      }

      if (a1[1].i32[1] != -1)
      {
        --a1[4].i64[0];
      }
    }
  }

  sub_2715D9BD4(a1);
  if (a1[1].i8[0] == 1)
  {
    do
    {
      if (a1[1].i32[1] != 47)
      {
        break;
      }

      if (!sub_2715D9D8C(a1))
      {
        return 14;
      }

      sub_2715D9BD4(a1);
    }

    while ((a1[1].i8[0] & 1) != 0);
  }

  result = 8;
  switch(a1[1].i32[1])
  {
    case 0xFFFFFFFF:
    case 0:
      result = 15;
      break;
    case 0x22:

      result = sub_2715D9EB0(a1);
      break;
    case 0x2C:
      result = 13;
      break;
    case 0x2D:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:

      result = sub_2715DABBC(a1);
      break;
    case 0x3A:
      result = 12;
      break;
    case 0x5B:
      return result;
    case 0x5D:
      result = 10;
      break;
    case 0x66:
      if (sub_2715DB210(a1) != 97 || sub_2715DB210(a1) != 108 || sub_2715DB210(a1) != 115 || sub_2715DB210(a1) != 101)
      {
        goto LABEL_43;
      }

      result = 2;
      break;
    case 0x6E:
      if (sub_2715DB210(a1) != 117 || sub_2715DB210(a1) != 108 || sub_2715DB210(a1) != 108)
      {
        goto LABEL_43;
      }

      result = 3;
      break;
    case 0x74:
      if (sub_2715DB210(a1) != 114 || sub_2715DB210(a1) != 117 || sub_2715DB210(a1) != 101)
      {
        goto LABEL_43;
      }

      result = 1;
      break;
    case 0x7B:
      result = 9;
      break;
    case 0x7D:
      result = 11;
      break;
    default:
LABEL_43:
      v2 = "invalid literal";
      goto LABEL_6;
  }

  return result;
}

void sub_2715D9BD4(uint64_t a1)
{
  v2 = vdupq_n_s64(1uLL);
  v15 = v2;
  while (1)
  {
    *(a1 + 32) = vaddq_s64(*(a1 + 32), v2);
    if (*(a1 + 24) != 1)
    {
      break;
    }

    *(a1 + 24) = 0;
    v3 = *(a1 + 20);
    if (v3 == -1)
    {
      return;
    }

LABEL_7:
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 >= v6)
    {
      v10 = *(a1 + 56);
      v11 = (v7 - v10);
      v12 = v7 - v10 + 1;
      if (v12 < 0)
      {
        sub_271135560();
      }

      v13 = v6 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        operator new();
      }

      *v11 = v3;
      memcpy(0, v10, v7 - v10);
      *(a1 + 56) = 0;
      *(a1 + 64) = v11 + 1;
      *(a1 + 72) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      v2 = v15;
      *(a1 + 64) = v11 + 1;
      v8 = *(a1 + 20);
      if (v8 <= 12)
      {
        goto LABEL_9;
      }

LABEL_23:
      if (v8 != 13 && v8 != 32)
      {
        return;
      }
    }

    else
    {
      *v7 = v3;
      *(a1 + 64) = v7 + 1;
      v8 = *(a1 + 20);
      if (v8 > 12)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v8 != 9)
      {
        if (v8 != 10)
        {
          return;
        }

        v9 = *(a1 + 48) + 1;
        *(a1 + 40) = 0;
        *(a1 + 48) = v9;
      }
    }
  }

  v4 = *a1;
  if (*a1 != *(a1 + 8))
  {
    v5 = *v4;
    LOBYTE(v3) = *v4;
    *a1 = v4 + 1;
    *(a1 + 20) = v5;
    if (v5 == -1)
    {
      return;
    }

    goto LABEL_7;
  }

  *(a1 + 20) = -1;
}

uint64_t sub_2715D9D8C(int64x2_t *a1)
{
  v2 = sub_2715DB210(a1);
  if (v2 == 42)
  {
    v5 = a1 + 3;
    do
    {
      while (1)
      {
        v6 = sub_2715DB210(a1);
        if (v6 != 42)
        {
          break;
        }

        if (sub_2715DB210(a1) == 47)
        {
          return 1;
        }

        a1[1].i8[8] = 1;
        v7 = a1[2].i64[1];
        --a1[2].i64[0];
        v8 = (a1 + 40);
        if (v7 || (v7 = v5->i64[0], v8 = a1 + 3, v5->i64[0]))
        {
          v8->i64[0] = v7 - 1;
        }

        if (a1[1].i32[1] != -1)
        {
          --a1[4].i64[0];
        }
      }
    }

    while ((v6 + 1) >= 2);
    result = 0;
    a1[6].i64[1] = "invalid comment; missing closing '*/'";
  }

  else if (v2 == 47)
  {
    do
    {
      do
      {
        v3 = sub_2715DB210(a1) + 1;
      }

      while (v3 >= 0xF);
    }

    while (((0x4803u >> v3) & 1) == 0);
    return 1;
  }

  else
  {
    result = 0;
    a1[6].i64[1] = "invalid comment; expecting '/' or '*' after '/'";
  }

  return result;
}

uint64_t sub_2715D9EB0(unsigned __int8 **a1)
{
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 103) = 0;
    v2 = a1[7];
    a1[8] = v2;
    v3 = *(a1 + 5);
    v4 = a1[9];
    if (v2 < v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *a1[10] = 0;
  a1[11] = 0;
  v2 = a1[7];
  a1[8] = v2;
  v3 = *(a1 + 5);
  v5 = a1[9];
  if (v2 >= v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  v6 = (a1 + 10);
  a1[8] = v2 + 1;
  v76 = vdupq_n_s64(1uLL);
  while (2)
  {
    *(a1 + 2) = vaddq_s64(*(a1 + 2), v76);
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
      v10 = *(a1 + 5);
    }

    else
    {
      v11 = *a1;
      if (*a1 == a1[1])
      {
        v10 = -1;
      }

      else
      {
        v10 = *v11;
        *a1 = v11 + 1;
      }

      *(a1 + 5) = v10;
    }

    if (v10 == -1)
    {
      v22 = "invalid string: missing closing quote";
      goto LABEL_162;
    }

    v13 = a1[8];
    v12 = a1[9];
    if (v13 >= v12)
    {
      v15 = a1[7];
      v16 = (v13 - v15);
      v17 = v13 - v15 + 1;
      if (v17 < 0)
      {
        goto LABEL_197;
      }

      v18 = v12 - v15;
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        operator new();
      }

      v20 = v13 - v15;
      *v16 = v10;
      v14 = v16 + 1;
      memcpy(0, v15, v20);
      a1[7] = 0;
      a1[8] = v16 + 1;
      a1[9] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = v10;
      v14 = v13 + 1;
    }

    a1[8] = v14;
    v21 = *(a1 + 5);
    if (v21 == 10)
    {
      v73 = (a1[6] + 1);
      a1[5] = 0;
      a1[6] = v73;
      v22 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
      goto LABEL_162;
    }

    v22 = "invalid string: missing closing quote";
    switch(v21)
    {
      case -1:
        goto LABEL_162;
      case 0:
        v22 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_162;
      case 1:
        v22 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_162;
      case 2:
        v22 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_162;
      case 3:
        v22 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_162;
      case 4:
        v22 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_162;
      case 5:
        v22 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_162;
      case 6:
        v22 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_162;
      case 7:
        v22 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_162;
      case 8:
        v22 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_162;
      case 9:
        v22 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_162;
      case 11:
        v22 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_162;
      case 12:
        v22 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_162;
      case 13:
        v22 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_162;
      case 14:
        v22 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_162;
      case 15:
        v22 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_162;
      case 16:
        v22 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_162;
      case 17:
        v22 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_162;
      case 18:
        v22 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_162;
      case 19:
        v22 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_162;
      case 20:
        v22 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_162;
      case 21:
        v22 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_162;
      case 22:
        v22 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_162;
      case 23:
        v22 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_162;
      case 24:
        v22 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_162;
      case 25:
        v22 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_162;
      case 26:
        v22 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_162;
      case 27:
        v22 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_162;
      case 28:
        v22 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_162;
      case 29:
        v22 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_162;
      case 30:
        v22 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_162;
      case 31:
        v22 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_162;
      case 32:
      case 33:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
        goto LABEL_98;
      case 34:
        return 4;
      case 92:
        v69 = sub_2715DB210(a1);
        v22 = "invalid string: forbidden character after backslash";
        if (v69 <= 101)
        {
          if (v69 > 91)
          {
            if (v69 == 92)
            {
              std::string::push_back((a1 + 10), 92);
            }

            else
            {
              if (v69 != 98)
              {
                goto LABEL_162;
              }

              std::string::push_back((a1 + 10), 8);
            }
          }

          else if (v69 == 34)
          {
            std::string::push_back((a1 + 10), 34);
          }

          else
          {
            if (v69 != 47)
            {
              goto LABEL_162;
            }

            std::string::push_back((a1 + 10), 47);
          }
        }

        else if (v69 <= 113)
        {
          if (v69 == 102)
          {
            std::string::push_back((a1 + 10), 12);
          }

          else
          {
            if (v69 != 110)
            {
              goto LABEL_162;
            }

            std::string::push_back((a1 + 10), 10);
          }
        }

        else
        {
          switch(v69)
          {
            case 'r':
              std::string::push_back((a1 + 10), 13);
              break;
            case 't':
              std::string::push_back((a1 + 10), 9);
              break;
            case 'u':
              v70 = sub_2715DB378(a1);
              if (v70 == -1)
              {
LABEL_198:
                v22 = "invalid string: '\\u' must be followed by 4 hex digits";
                goto LABEL_162;
              }

              v71 = v70;
              if ((v70 & 0xFFFFFC00) == 0xD800)
              {
                if (sub_2715DB210(a1) != 92 || sub_2715DB210(a1) != 117)
                {
                  goto LABEL_199;
                }

                v72 = sub_2715DB378(a1);
                if (v72 == -1)
                {
                  goto LABEL_198;
                }

                if (v72 >> 10 != 55)
                {
LABEL_199:
                  v22 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                  goto LABEL_162;
                }

                v71 = v72 + (v71 << 10) - 56613888;
              }

              else
              {
                if ((v70 & 0xFFFFFC00) == 0xDC00)
                {
                  v22 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
                  goto LABEL_162;
                }

                if (v70 <= 127)
                {
                  v68 = v70;
LABEL_114:
                  std::string::push_back((a1 + 10), v68);
                  continue;
                }

                if (v70 <= 0x7FF)
                {
                  std::string::push_back((a1 + 10), (v70 >> 6) | 0xC0);
                  v68 = v71 & 0x3F | 0x80;
                  goto LABEL_114;
                }

                if (!HIWORD(v70))
                {
                  std::string::push_back((a1 + 10), (v70 >> 12) | 0xE0);
                  goto LABEL_128;
                }
              }

              std::string::push_back((a1 + 10), (v71 >> 18) | 0xF0);
              std::string::push_back((a1 + 10), (v71 >> 12) & 0x3F | 0x80);
LABEL_128:
              std::string::push_back((a1 + 10), (v71 >> 6) & 0x3F | 0x80);
              std::string::push_back((a1 + 10), v71 & 0x3F | 0x80);
              continue;
            default:
              goto LABEL_162;
          }
        }

        continue;
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
        std::string::push_back((a1 + 10), v21);
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v23 = *(a1 + 5);
        }

        else
        {
          v24 = *a1;
          if (*a1 == a1[1])
          {
            v23 = -1;
          }

          else
          {
            v23 = *v24;
            *a1 = v24 + 1;
          }

          *(a1 + 5) = v23;
        }

        if (v23 == -1)
        {
          goto LABEL_161;
        }

        v26 = a1[8];
        v25 = a1[9];
        if (v26 >= v25)
        {
          v28 = a1[7];
          v29 = (v26 - v28);
          v30 = v26 - v28 + 1;
          if (v30 < 0)
          {
            goto LABEL_197;
          }

          v31 = v25 - v28;
          if (2 * v31 > v30)
          {
            v30 = 2 * v31;
          }

          if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v32 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          if (v32)
          {
            operator new();
          }

          v43 = v26 - v28;
          *v29 = v23;
          v27 = v29 + 1;
          memcpy(0, v28, v43);
          a1[7] = 0;
          a1[8] = v29 + 1;
          a1[9] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v26 = v23;
          v27 = v26 + 1;
        }

        a1[8] = v27;
        v21 = *(a1 + 5);
        if (v21 == 10)
        {
          goto LABEL_160;
        }

        goto LABEL_97;
      case 224:
        std::string::push_back((a1 + 10), -32);
        sub_2715DB210(a1);
        v67 = *(a1 + 5);
        if ((v67 - 192) < 0xFFFFFFE0)
        {
          goto LABEL_161;
        }

        goto LABEL_112;
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 238:
      case 239:
        std::string::push_back((a1 + 10), v21);
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v33 = *(a1 + 5);
        }

        else
        {
          v34 = *a1;
          if (*a1 == a1[1])
          {
            v33 = -1;
          }

          else
          {
            v33 = *v34;
            *a1 = v34 + 1;
          }

          *(a1 + 5) = v33;
        }

        if (v33 == -1)
        {
          goto LABEL_161;
        }

        v36 = a1[8];
        v35 = a1[9];
        if (v36 >= v35)
        {
          v38 = a1[7];
          v39 = (v36 - v38);
          v40 = v36 - v38 + 1;
          if (v40 < 0)
          {
            goto LABEL_197;
          }

          v41 = v35 - v38;
          if (2 * v41 > v40)
          {
            v40 = 2 * v41;
          }

          if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            operator new();
          }

          v45 = v36 - v38;
          *v39 = v33;
          v37 = v39 + 1;
          memcpy(0, v38, v45);
          a1[7] = 0;
          a1[8] = v39 + 1;
          a1[9] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v36 = v33;
          v37 = v36 + 1;
        }

        a1[8] = v37;
        v46 = *(a1 + 5);
        if (v46 == 10)
        {
          goto LABEL_160;
        }

        if ((v46 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        v47 = *(a1 + 103);
        if (v47 < 0)
        {
          v48 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
          if (a1[11] == (v48 - 1))
          {
            if (v48 != 0x7FFFFFFFFFFFFFF8)
            {
              v49 = *v6;
              if ((v48 - 1) >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_76:
              operator new();
            }

            goto LABEL_201;
          }

          v51 = *v6;
          v50 = a1[11];
          a1[11] = v50 + 1;
        }

        else
        {
          if (*(a1 + 103) == 22)
          {
            goto LABEL_76;
          }

          v50 = *(a1 + 103);
          *(a1 + 103) = (v47 + 1) & 0x7F;
          v51 = a1 + 10;
        }

        v52 = &v50[v51];
        *v52 = v46;
        v52[1] = 0;
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (a1[3])
        {
          *(a1 + 24) = 0;
          v53 = *(a1 + 5);
          if (v53 == -1)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v54 = *a1;
          if (*a1 == a1[1])
          {
            *(a1 + 5) = -1;
            goto LABEL_161;
          }

          v55 = *v54;
          LOBYTE(v53) = *v54;
          *a1 = v54 + 1;
          *(a1 + 5) = v55;
          if (v55 == -1)
          {
            goto LABEL_161;
          }
        }

        v56 = a1[8];
        v57 = a1[9];
        if (v56 >= v57)
        {
          v59 = a1[7];
          v60 = (v56 - v59);
          v61 = v56 - v59 + 1;
          if (v61 < 0)
          {
LABEL_197:
            sub_271135560();
          }

          v62 = v57 - v59;
          if (2 * v62 > v61)
          {
            v61 = 2 * v62;
          }

          if (v62 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v63 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = v61;
          }

          if (v63)
          {
            operator new();
          }

          *v60 = v53;
          v58 = v60 + 1;
          memcpy(0, v59, v56 - v59);
          a1[7] = 0;
          a1[8] = v58;
          a1[9] = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        else
        {
          *v56 = v53;
          v58 = v56 + 1;
        }

        a1[8] = v58;
        v21 = *(a1 + 5);
        if (v21 != 10)
        {
LABEL_97:
          if ((v21 - 192) < 0xFFFFFFC0)
          {
            goto LABEL_161;
          }

LABEL_98:
          v64 = *(a1 + 103);
          if (v64 < 0)
          {
            v65 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
            if (a1[11] != (v65 - 1))
            {
              v8 = *v6;
              v7 = a1[11];
              a1[11] = v7 + 1;
              goto LABEL_7;
            }

            if (v65 != 0x7FFFFFFFFFFFFFF8)
            {
              v66 = *v6;
              if ((v65 - 1) >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_104:
              operator new();
            }

LABEL_201:
            sub_271120DA8();
          }

          if (*(a1 + 103) == 22)
          {
            goto LABEL_104;
          }

          v7 = *(a1 + 103);
          *(a1 + 103) = (v64 + 1) & 0x7F;
          v8 = a1 + 10;
LABEL_7:
          v9 = &v7[v8];
          *v9 = v21;
          v9[1] = 0;
          continue;
        }

LABEL_160:
        v74 = (a1[6] + 1);
        a1[5] = 0;
        a1[6] = v74;
LABEL_161:
        v22 = "invalid string: ill-formed UTF-8 byte";
LABEL_162:
        a1[13] = v22;
        return 14;
      case 237:
        std::string::push_back((a1 + 10), -19);
        sub_2715DB210(a1);
        v67 = *(a1 + 5);
        if ((v67 - 160) < 0xFFFFFFE0)
        {
          goto LABEL_161;
        }

        goto LABEL_112;
      case 240:
        std::string::push_back((a1 + 10), -16);
        sub_2715DB210(a1);
        v44 = *(a1 + 5);
        if ((v44 - 192) < 0xFFFFFFD0)
        {
          goto LABEL_161;
        }

        goto LABEL_111;
      case 241:
      case 242:
      case 243:
        std::string::push_back((a1 + 10), v21);
        sub_2715DB210(a1);
        v44 = *(a1 + 5);
        if ((v44 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        goto LABEL_111;
      case 244:
        std::string::push_back((a1 + 10), -12);
        sub_2715DB210(a1);
        v44 = *(a1 + 5);
        if ((v44 - 144) < 0xFFFFFFF0)
        {
          goto LABEL_161;
        }

LABEL_111:
        std::string::push_back((a1 + 10), v44);
        sub_2715DB210(a1);
        v67 = *(a1 + 5);
        if ((v67 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

LABEL_112:
        std::string::push_back((a1 + 10), v67);
        sub_2715DB210(a1);
        if ((*(a1 + 5) - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        v68 = *(a1 + 5);
        goto LABEL_114;
      default:
        goto LABEL_161;
    }
  }
}

uint64_t sub_2715DABBC(unsigned __int8 **a1)
{
  if (*(a1 + 103) < 0)
  {
    *a1[10] = 0;
    a1[11] = 0;
    v2 = a1[7];
    a1[8] = v2;
    v3 = *(a1 + 5);
    v5 = a1[9];
    if (v2 < v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *(a1 + 80) = 0;
  *(a1 + 103) = 0;
  v2 = a1[7];
  a1[8] = v2;
  v3 = *(a1 + 5);
  v4 = a1[9];
  if (v2 >= v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  v6 = (a1 + 10);
  a1[8] = v2 + 1;
  v7 = *(a1 + 5);
  v8 = 5;
  if ((v7 - 49) >= 9)
  {
    if (v7 != 48)
    {
      if (v7 == 45)
      {
        std::string::push_back((a1 + 10), 45);
      }

      v29 = sub_2715DB210(a1);
      if ((v29 - 49) < 9)
      {
        v7 = *(a1 + 5);
        v9 = 6;
        goto LABEL_8;
      }

      if (v29 != 48)
      {
        v31 = "invalid number; expected digit after '-'";
        goto LABEL_92;
      }

      v7 = *(a1 + 5);
      v8 = 6;
    }

    std::string::push_back((a1 + 10), v7);
    v32 = sub_2715DB210(a1);
    if (v32 != 46)
    {
      if (v32 != 69 && v32 != 101)
      {
        goto LABEL_67;
      }

LABEL_63:
      v24 = *(a1 + 5);
      goto LABEL_64;
    }

LABEL_43:
    std::string::push_back((a1 + 10), *(a1 + 136));
    if (sub_2715DB210(a1) - 48 > 9)
    {
      v31 = "invalid number; expected digit after '.'";
LABEL_92:
      a1[13] = v31;
      return 14;
    }

    do
    {
      std::string::push_back((a1 + 10), *(a1 + 20));
      v28 = sub_2715DB210(a1);
    }

    while ((v28 - 48) < 0xA);
    if (v28 != 101 && v28 != 69)
    {
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  v9 = 5;
LABEL_8:
  v41 = v9;
  std::string::push_back((a1 + 10), v7);
  v42 = vdupq_n_s64(1uLL);
  while (1)
  {
    *(a1 + 2) = vaddq_s64(*(a1 + 2), v42);
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
      v13 = *(a1 + 5);
    }

    else
    {
      v14 = *a1;
      if (*a1 == a1[1])
      {
        v13 = -1;
      }

      else
      {
        v13 = *v14;
        *a1 = v14 + 1;
      }

      *(a1 + 5) = v13;
    }

    if (v13 == -1)
    {
      v8 = v41;
      goto LABEL_67;
    }

    v16 = a1[8];
    v15 = a1[9];
    if (v16 >= v15)
    {
      v18 = a1[7];
      v19 = (v16 - v18);
      v20 = v16 - v18 + 1;
      if (v20 < 0)
      {
        sub_271135560();
      }

      v21 = v15 - v18;
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        operator new();
      }

      v23 = v16 - v18;
      *v19 = v13;
      v17 = v19 + 1;
      memcpy(0, v18, v23);
      a1[7] = 0;
      a1[8] = v19 + 1;
      a1[9] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v16 = v13;
      v17 = v16 + 1;
    }

    a1[8] = v17;
    v24 = *(a1 + 5);
    if ((v24 - 48) >= 0xA)
    {
      break;
    }

    v25 = *(a1 + 103);
    if (v25 < 0)
    {
      v26 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
      if (a1[11] == (v26 - 1))
      {
        if (v26 == 0x7FFFFFFFFFFFFFF8)
        {
          sub_271120DA8();
        }

        v27 = *v6;
        if ((v26 - 1) > 0x3FFFFFFFFFFFFFF2)
        {
          operator new();
        }

LABEL_36:
        operator new();
      }

      v11 = *v6;
      v10 = a1[11];
      a1[11] = v10 + 1;
    }

    else
    {
      if (*(a1 + 103) == 22)
      {
        goto LABEL_36;
      }

      v10 = *(a1 + 103);
      *(a1 + 103) = (v25 + 1) & 0x7F;
      v11 = (a1 + 10);
    }

    v12 = &v10[v11];
    *v12 = v24;
    v12[1] = 0;
  }

  if (v24 <= 68)
  {
    v8 = v41;
    if (v24 == 10)
    {
      v30 = (a1[6] + 1);
      a1[5] = 0;
      a1[6] = v30;
      goto LABEL_67;
    }

    if (v24 != 46)
    {
      goto LABEL_67;
    }

    goto LABEL_43;
  }

  v8 = v41;
  if (v24 != 69 && v24 != 101)
  {
    goto LABEL_67;
  }

LABEL_64:
  std::string::push_back((a1 + 10), v24);
  v33 = sub_2715DB210(a1);
  if ((v33 - 48) < 0xA)
  {
    goto LABEL_65;
  }

  if (v33 != 43 && v33 != 45)
  {
    v31 = "invalid number; expected '+', '-', or digit after exponent";
    goto LABEL_92;
  }

  std::string::push_back((a1 + 10), *(a1 + 20));
  if (sub_2715DB210(a1) - 48 >= 0xA)
  {
    v31 = "invalid number; expected digit after exponent sign";
    goto LABEL_92;
  }

  do
  {
LABEL_65:
    std::string::push_back((a1 + 10), *(a1 + 20));
  }

  while (sub_2715DB210(a1) - 48 < 0xA);
LABEL_66:
  v8 = 7;
LABEL_67:
  v34 = a1 + 5;
  v35 = a1[5];
  *(a1 + 24) = 1;
  --a1[4];
  if (v35 || (v34 = a1 + 6, (v35 = a1[6]) != 0))
  {
    *v34 = v35 - 1;
  }

  if (*(a1 + 5) != -1)
  {
    --a1[8];
  }

  __endptr = 0;
  *__error() = 0;
  if (v8 == 6)
  {
    v39 = (a1 + 10);
    if (*(a1 + 103) < 0)
    {
      v39 = *v6;
    }

    v40 = strtoll(v39, &__endptr, 10);
    if (!*__error())
    {
      a1[14] = v40;
      return 6;
    }
  }

  else if (v8 == 5)
  {
    v36 = (a1 + 10);
    if (*(a1 + 103) < 0)
    {
      v36 = *v6;
    }

    v37 = strtoull(v36, &__endptr, 10);
    if (!*__error())
    {
      a1[15] = v37;
      return 5;
    }
  }

  if (*(a1 + 103) < 0)
  {
    v6 = *v6;
  }

  *(a1 + 16) = strtod(v6, &__endptr);
  return 7;
}

uint64_t sub_2715DB210(int64x2_t *a1)
{
  a1[2] = vaddq_s64(a1[2], vdupq_n_s64(1uLL));
  if (a1[1].i8[8] == 1)
  {
    a1[1].i8[8] = 0;
    v2 = a1[1].i32[1];
  }

  else
  {
    v3 = a1->i64[0];
    if (a1->i64[0] == a1->i64[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      a1->i64[0] = (v3 + 1);
    }

    a1[1].i32[1] = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1[4].i64[0];
  v4 = a1[4].u64[1];
  if (v5 >= v4)
  {
    v7 = a1[3].i64[1];
    v8 = (v5 - v7);
    v9 = v5 - v7 + 1;
    if (v9 < 0)
    {
      sub_271135560();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v5 - v7;
    *v8 = v2;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    a1[3].i64[1] = 0;
    a1[4].i64[0] = (v8 + 1);
    a1[4].i64[1] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 1;
  }

  a1[4].i64[0] = v6;
  result = a1[1].u32[1];
  if (result == 10)
  {
    v14 = a1[3].i64[0] + 1;
    a1[2].i64[1] = 0;
    a1[3].i64[0] = v14;
  }

  return result;
}

uint64_t sub_2715DB378(int64x2_t *a1)
{
  sub_2715DB210(a1);
  v2 = a1[1].i32[1];
  v3 = v2 - 48;
  if ((v2 - 48) < 0xA)
  {
LABEL_4:
    sub_2715DB210(a1);
    v4 = a1[1].i32[1];
    v5 = v4 - 48;
    if ((v4 - 48) < 0xA)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if ((v2 - 65) <= 5)
  {
    v3 = v2 - 55;
    goto LABEL_4;
  }

  if ((v2 - 97) > 5)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2 - 87;
  sub_2715DB210(a1);
  v4 = a1[1].i32[1];
  v5 = v4 - 48;
  if ((v4 - 48) < 0xA)
  {
LABEL_5:
    sub_2715DB210(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) < 0xA)
    {
      goto LABEL_6;
    }

LABEL_12:
    if ((v6 - 65) < 6)
    {
      v7 = v6 - 55;
      sub_2715DB210(a1);
      v8 = a1[1].i32[1];
      v9 = v8 - 48;
      if ((v8 - 48) < 0xA)
      {
        return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
      }

      goto LABEL_20;
    }

    if ((v6 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6 - 87;
    sub_2715DB210(a1);
    v8 = a1[1].i32[1];
    v9 = v8 - 48;
    if ((v8 - 48) >= 0xA)
    {
      goto LABEL_20;
    }

    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

LABEL_10:
  if ((v4 - 65) >= 6)
  {
    if ((v4 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v4 - 87;
    sub_2715DB210(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = v4 - 55;
    sub_2715DB210(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

LABEL_6:
  sub_2715DB210(a1);
  v8 = a1[1].i32[1];
  v9 = v8 - 48;
  if ((v8 - 48) < 0xA)
  {
    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

LABEL_20:
  if ((v8 - 65) < 6)
  {
    v9 = v8 - 55;
    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

  if ((v8 - 97) <= 5)
  {
    v9 = v8 - 87;
    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2715DB528(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2715DB56C(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v30.__vftable = 0;
          sub_2715DFCF4(a2, &v30, 0);
        }

        else if (v4 == 4)
        {
          sub_2715E0120(a2);
        }

        else
        {
          v30.__vftable = *(a1 + 160);
          sub_2715E0398(a2, &v30, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v30.__vftable) = 1;
        sub_2715DFAD8(a2, &v30, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v30.__vftable) = 0;
        sub_2715DFAD8(a2, &v30, 0);
        goto LABEL_28;
      }

      goto LABEL_60;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v30.__vftable = *(a1 + 152);
        sub_2715DFF08(a2, &v30, 0);
      }

      else
      {
        if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v24 = *(a1 + 72);
          sub_2715DC130(a1 + 40, &v32);
          sub_2715DC130(a1 + 40, &v27);
          sub_2714D199C("number overflow parsing '", &v27, &__p);
          sub_2715D476C("'", &__p, &v29);
          sub_2715DECDC(406, &v29, &v30);
          v16 = sub_2715DEC80(a2, v24, &v32, &v30);
          sub_2715DEE7C(&v30);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          goto LABEL_72;
        }

        v30.__vftable = *(a1 + 168);
        sub_2715DF8BC(a2, &v30, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!sub_2715DE8F0(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_64;
    }

    v7 = sub_2715D990C((a1 + 40));
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = sub_2715DEB30(a2);
      goto LABEL_24;
    }

    v13 = v34;
    if (v34 == v35 << 6)
    {
      if ((v34 + 1) < 0)
      {
        sub_2715D2F28();
      }

      v14 = v35 << 7;
      if (v35 << 7 <= (v34 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v14 = (v34 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v34 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_2715DE0CC(&v33, v15);
      v13 = v34;
    }

    v34 = v13 + 1;
    *&v33[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      sub_2715DC130(a1 + 40, &v32);
      v29 = *(a1 + 72);
      *(&v27.__r_.__value_.__s + 23) = 5;
      strcpy(&v27, "value");
      sub_2715DC81C(a1, 0, &v27.__r_.__value_.__l.__data_, &__p);
      sub_2715DC224(101, &v29, &__p, &v30);
      *(a2 + 88) = 1;
      if (*(a2 + 128) == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v19 = sub_2715E05B4(exception, &v30);
        __cxa_throw(v19, &unk_28811C390, sub_2715DD2A8);
      }

LABEL_61:
      v30.__vftable = &unk_288108F10;
      std::runtime_error::~runtime_error(&v31);
      std::exception::~exception(&v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

LABEL_67:
          operator delete(v32.__r_.__value_.__l.__data_);
          goto LABEL_64;
        }
      }

      else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      operator delete(v27.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_67;
    }

LABEL_60:
    sub_2715DC130(a1 + 40, &v32);
    v29 = *(a1 + 72);
    *(&v27.__r_.__value_.__s + 23) = 5;
    strcpy(&v27, "value");
    sub_2715DC81C(a1, 0x10u, &v27.__r_.__value_.__l.__data_, &__p);
    sub_2715DC224(101, &v29, &__p, &v30);
    *(a2 + 88) = 1;
    if (*(a2 + 128) == 1)
    {
      v25 = __cxa_allocate_exception(0x28uLL);
      v26 = sub_2715E05B4(v25, &v30);
      __cxa_throw(v26, &unk_28811C390, sub_2715DD2A8);
    }

    goto LABEL_61;
  }

  if ((sub_2715DE1F8(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_64;
  }

  v5 = sub_2715D990C((a1 + 40));
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      sub_2715DE6B4();
    }

    goto LABEL_70;
  }

  v6 = sub_2715DE434(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_64:
    v16 = 0;
    goto LABEL_54;
  }

LABEL_28:
  v8 = v34;
  if (!v34)
  {
LABEL_53:
    v16 = 1;
    goto LABEL_54;
  }

  while (2)
  {
    if ((*&v33[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = sub_2715D990C((a1 + 40));
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = sub_2715D990C((a1 + 40));
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v20 = *(a1 + 72);
        sub_2715DC130(a1 + 40, &v32);
        v29 = *(a1 + 72);
        sub_27112B400(&v27, "array");
        sub_2715DC81C(a1, 0xAu, &v27.__r_.__value_.__l.__data_, &__p);
        sub_2715DC224(101, &v29, &__p, &v30);
        v21 = sub_2715DC0D4(a2, v20, &v32, &v30);
        goto LABEL_71;
      }

      v10 = sub_2715DEB30(a2);
LABEL_36:
      if ((v10 & 1) == 0)
      {
        goto LABEL_64;
      }

      v8 = v34 - 1;
      v34 = v8;
      if (!v8)
      {
        goto LABEL_53;
      }

      continue;
    }

    break;
  }

  v11 = sub_2715D990C((a1 + 40));
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v22 = *(a1 + 72);
      sub_2715DC130(a1 + 40, &v32);
      v29 = *(a1 + 72);
      sub_27112B400(&v27, "object");
      sub_2715DC81C(a1, 0xBu, &v27.__r_.__value_.__l.__data_, &__p);
      sub_2715DC224(101, &v29, &__p, &v30);
      v21 = sub_2715DC0D4(a2, v22, &v32, &v30);
      goto LABEL_71;
    }

    v10 = sub_2715DE434(a2);
    goto LABEL_36;
  }

  v12 = sub_2715D990C((a1 + 40));
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    sub_2715DE6B4();
  }

LABEL_70:
  v23 = *(a1 + 72);
  sub_2715DC130(a1 + 40, &v32);
  v29 = *(a1 + 72);
  sub_27112B400(&v27, "object key");
  sub_2715DC81C(a1, 4u, &v27.__r_.__value_.__l.__data_, &__p);
  sub_2715DC224(101, &v29, &__p, &v30);
  v21 = sub_2715DC0D4(a2, v23, &v32, &v30);
LABEL_71:
  v16 = v21;
  sub_2715DD2A8(&v30);
LABEL_72:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_77;
    }

LABEL_74:
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_78:
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_77:
    operator delete(v27.__r_.__value_.__l.__data_);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }
  }

LABEL_54:
  if (v33)
  {
    operator delete(v33);
  }

  return v16;
}

void sub_2715DBEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::runtime_error a27)
{
  sub_2715DD2A8(&a27);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v27 - 73) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(a9);
  if (*(v27 - 73) < 0)
  {
LABEL_4:
    operator delete(*(v27 - 96));
    v29 = *(v27 - 72);
    if (v29)
    {
LABEL_10:
      operator delete(v29);
      _Unwind_Resume(a1);
    }

LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  v29 = *(v27 - 72);
  if (v29)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_2715DC0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = sub_2715E05B4(exception, a4);
    __cxa_throw(v7, &unk_28811C390, sub_2715DD2A8);
  }

  return 0;
}