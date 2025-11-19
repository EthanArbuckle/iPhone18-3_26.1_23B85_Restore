void sub_2714A53CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A5404(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v9 = 0;
  v8 = 0uLL;
  sub_2715D6E6C(v5, &v8);
  v7 = v9;
  *__p = v8;
  operator new();
}

void sub_2714A550C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = v21;
  a15 = 0;
  sub_27184D728(&a15, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t *sub_2714A55A8(uint64_t *a1, _OWORD *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  sub_2714A56E0(a1, __p);
  sub_271817BC0(__p, &v7);
  if ((v8 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v6);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = v7;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_2714A568C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

uint64_t *sub_2714A56E0(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x2743BE660](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v16 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v17 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_18:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      if (v9)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      goto LABEL_28;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_18;
  }

  v17 = 2;
  v16 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (v9)
  {
    goto LABEL_28;
  }

LABEL_27:
  v17 |= 4u;
LABEL_28:
  std::ios_base::clear((a1 + *(v16 - 24)), *(a1 + *(v16 - 24) + 32) | v17);
  return a1;
}

void sub_2714A5970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x2714A5930);
  }

  __cxa_rethrow();
}

void sub_2714A5A20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  v9 = 0;
  v8 = 0uLL;
  sub_2715D6E6C(v5, &v8);
  v7 = v9;
  *__p = v8;
  operator new();
}

void sub_2714A5B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a16 = 0;
  sub_27184D728(&a16, v23);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2714A5BD0(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
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
  if (v31 != v30)
  {
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
  LODWORD(v21[0]) = 6;
  sub_27183FB7C(*(a2 + 48), v21);
  sub_2713BF6F4(v21, a2, v3 + 16, v21[0]);
  LODWORD(v21[0]) = 2;
  sub_27183FB7C(*(a2 + 48), v21);
  result = sub_2714A5FF4(v21, a2, v3 + 200, v21[0]);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2714A5FF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = 0;
  sub_27183FF6C(*(a2 + 48), &v13);
  v7 = a2 + 16;
  *&v12 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v12 + 1) = v13;
  sub_2713BF82C(a2 + 24, &v12);
  if (a4 >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = a4;
  }

  sub_2714A6104(a2, a3, v8);
  v9 = *(a2 + 32);
  result = (*(*v7 + 32))(a2 + 16);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(*v7 + 40))(a2 + 16, v11);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_2714A6104(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_2718403E0(*(a1 + 48), a2);
  sub_2718403E0(*(a1 + 48), (a2 + 24));
  sub_2718403E0(*(a1 + 48), (a2 + 48));
  sub_2718403E0(*(a1 + 48), (a2 + 72));
  sub_2718403E0(*(a1 + 48), (a2 + 96));
  sub_2718403E0(*(a1 + 48), (a2 + 120));
  sub_27183FACC(*(a1 + 48), (a2 + 144));
  sub_2718403E0(*(a1 + 48), (a2 + 152));
  v6 = *(a1 + 48);
  sub_27183F824(v6, (a2 + 176));
  sub_27183F824(v6, (a2 + 177));
  sub_27183F824(v6, (a2 + 178));
  sub_27183F824(v6, (a2 + 179));
  sub_27183F824(v6, (a2 + 180));
  sub_27183F824(v6, (a2 + 181));
  sub_27183F824(v6, (a2 + 182));
  sub_27183F824(v6, (a2 + 183));
  sub_27183F824(v6, (a2 + 184));
  sub_27183F824(v6, (a2 + 185));
  sub_27183F824(v6, (a2 + 186));
  sub_27183F824(v6, (a2 + 187));
  sub_27183F824(v6, (a2 + 188));
  sub_27183F824(v6, (a2 + 189));
  sub_27183F824(v6, (a2 + 190));
  sub_27183F824(v6, (a2 + 191));
  if (a3 >= 2)
  {
    v8 = 1;
    sub_27183FB7C(*(a1 + 48), &v8);
    sub_2714A628C(&v7, a1, (a2 + 192));
  }
}

uint64_t sub_2714A628C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = 0;
  sub_27183FF6C(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_2713BF82C(a2 + 24, &v8);
  sub_27183FB7C(*(a2 + 48), a3);
  sub_27183FB7C(*(a2 + 48), a3 + 1);
  sub_27183FB7C(*(a2 + 48), a3 + 2);
  sub_27183FB7C(*(a2 + 48), a3 + 3);
  sub_27183FB7C(*(a2 + 48), a3 + 4);
  sub_27183FB7C(*(a2 + 48), a3 + 5);
  v5 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v7);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_2714A63C8(uint64_t *a1, uint64_t a2)
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

void sub_2714A68A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "user_given_name";
  *(a1 + 96) = 15;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D666C(v5, &v19);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v19;
  *(a2 + 16) = v20;
  v6 = *(a1 + 104);
  *(a1 + 88) = "product_name";
  *(a1 + 96) = 12;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D666C(v7, &v19);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = v19;
  *(a2 + 40) = v20;
  v8 = *(a1 + 104);
  *(a1 + 88) = "type";
  *(a1 + 96) = 4;
  if ((v8 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v9 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D666C(v9, &v19);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  v10 = *(a1 + 104);
  *(a1 + 88) = "serial_number";
  *(a1 + 96) = 13;
  if ((v10 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D666C(v11, &v19);
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = v19;
  *(a2 + 88) = v20;
  v12 = *(a1 + 104);
  *(a1 + 88) = "os_build_version";
  *(a1 + 96) = 16;
  if ((v12 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D666C(v13, &v19);
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  v14 = *(a1 + 104);
  *(a1 + 88) = "os_product_version";
  *(a1 + 96) = 18;
  if ((v14 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v15 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D666C(v15, &v19);
  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
  }

  *(a2 + 120) = v19;
  *(a2 + 136) = v20;
  v16 = *(a1 + 104);
  *(a1 + 88) = "process_id";
  *(a1 + 96) = 10;
  if ((v16 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_27182DB48(a1, (a2 + 144));
  v17 = *(a1 + 104);
  *(a1 + 88) = "process_name";
  *(a1 + 96) = 12;
  if ((v17 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v18 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v20 = 0;
  v19 = 0uLL;
  sub_2715D666C(v18, &v19);
  if (*(a2 + 175) < 0)
  {
    operator delete(*(a2 + 152));
  }

  *(a2 + 152) = v19;
  *(a2 + 168) = v20;
  *&v19 = "uuid";
  *(&v19 + 1) = 4;
  v20 = a2 + 176;
  sub_2714A6D2C(a1, &v19);
}

void sub_2714A6CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714A6D2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v9 = 0;
  v8 = 0uLL;
  sub_2715D666C(v5, &v8);
  v7 = v9;
  *__p = v8;
  operator new();
}

void sub_2714A6E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = v21;
  a15 = 0;
  sub_27184D728(&a15, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2714A6ED0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  v9 = 0;
  v8 = 0uLL;
  sub_2715D666C(v5, &v8);
  v7 = v9;
  *__p = v8;
  operator new();
}

void sub_2714A6FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a16 = 0;
  sub_27184D728(&a16, v23);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2714A7080(uint64_t *a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_2713DA430(v3 + 16, &v24);
      sub_2713B2524(v38, &v24);
      sub_2713E031C(v3 + 16, v38);
      if (v50 == 1)
      {
        v5 = __p;
        if (__p)
        {
          v6 = v49;
          v7 = __p;
          if (v49 != __p)
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

          v49 = v5;
          operator delete(v7);
        }
      }

      if (v47 == 1 && v46 < 0)
      {
        operator delete(v45);
      }

      if (v44 == 1 && v43 < 0)
      {
        operator delete(v42);
      }

      if (v41 == 1 && v40 < 0)
      {
        operator delete(v39);
      }

      if (v37 != 1)
      {
        goto LABEL_66;
      }

      v13 = v35;
      if (!v35)
      {
        goto LABEL_66;
      }

      v14 = v36;
      v15 = v35;
      if (v36 == v35)
      {
LABEL_65:
        v36 = v13;
        operator delete(v15);
LABEL_66:
        if (v34 == 1 && v33 < 0)
        {
          operator delete(v32);
        }

        if (v31 == 1 && v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 == 1 && v27 < 0)
        {
          operator delete(v26);
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

    sub_271399EB0(v3 + 16, &v24);
    sub_2713B2524(v38, &v24);
    sub_2713E031C(v3 + 16, v38);
    if (v50 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v49;
        v11 = __p;
        if (v49 != __p)
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

        v49 = v9;
        operator delete(v11);
      }
    }

    if (v47 == 1 && v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v37 != 1)
    {
      goto LABEL_66;
    }

    v13 = v35;
    if (!v35)
    {
      goto LABEL_66;
    }

    v17 = v36;
    v15 = v35;
    if (v36 == v35)
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
        v15 = v35;
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  LODWORD(v24) = 6;
  sub_27183A9AC(a2, &v24);
  if (v24 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v24;
  }

  if (v24 > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, &v24);
      if (SHIBYTE(v26) < 0)
      {
        if (v25 == 1 && *(a2 + 72) == *v24)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v26) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v26) == 1 && *(a2 + 72) == v24)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v26) < 0)
      {
LABEL_93:
        operator delete(v24);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(&v24, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v24) = 2;
  sub_27183A9AC(a2, &v24);
  if (v24 >= 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = v24;
  }

  sub_2714A7614(a2, v3 + 200, v21);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &v24);
    if (SHIBYTE(v26) < 0)
    {
      if (v25 == 1 && *(a2 + 72) == *v24)
      {
LABEL_108:
        v22 = 0;
        if (SHIBYTE(v26) < 0)
        {
          goto LABEL_111;
        }

        goto LABEL_99;
      }
    }

    else if (SHIBYTE(v26) == 1 && *(a2 + 72) == v24)
    {
      goto LABEL_108;
    }

    v22 = 1;
    if (SHIBYTE(v26) < 0)
    {
LABEL_111:
      operator delete(v24);
    }

LABEL_99:
    if ((v22 & 1) == 0)
    {
      break;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2714A7614(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 80);
  *(a1 + 80) = v6 + 1;
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    v7 = a2 + 24;
    v8 = v6 + 2;
    *(a1 + 80) = v8;
  }

  else
  {
    sub_27183D78C(a1, __p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = v28;
    ++*(a1 + 104);
    v9 = *(a1 + 128);
    v7 = a2 + 24;
    v8 = *(a1 + 80) + 1;
    *(a1 + 80) = v8;
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (*(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    v10 = a2 + 48;
    v11 = v8 + 1;
    *(a1 + 80) = v11;
    goto LABEL_12;
  }

LABEL_9:
  sub_27183D78C(a1, __p);
  if (*(a2 + 47) < 0)
  {
    operator delete(*v7);
  }

  v12 = *__p;
  *(v7 + 16) = v28;
  *v7 = v12;
  ++*(a1 + 104);
  v13 = *(a1 + 128);
  v10 = a2 + 48;
  v11 = *(a1 + 80) + 1;
  *(a1 + 80) = v11;
  if ((v13 & 1) == 0)
  {
LABEL_14:
    sub_27183D78C(a1, __p);
    if (*(a2 + 71) < 0)
    {
      operator delete(*v10);
    }

    v16 = *__p;
    *(v10 + 16) = v28;
    *v10 = v16;
    ++*(a1 + 104);
    v17 = *(a1 + 128);
    v14 = a2 + 72;
    v15 = *(a1 + 80) + 1;
    *(a1 + 80) = v15;
    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_12:
  if (*(a1 + 131) != 1)
  {
    goto LABEL_14;
  }

  *(a1 + 132) = 1;
  v14 = a2 + 72;
  v15 = v11 + 1;
  *(a1 + 80) = v15;
LABEL_17:
  if (*(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    v18 = a2 + 96;
    v19 = v15 + 1;
    *(a1 + 80) = v19;
    goto LABEL_22;
  }

LABEL_19:
  sub_27183D78C(a1, __p);
  if (*(a2 + 95) < 0)
  {
    operator delete(*v14);
  }

  v20 = *__p;
  *(v14 + 16) = v28;
  *v14 = v20;
  ++*(a1 + 104);
  v21 = *(a1 + 128);
  v18 = a2 + 96;
  v19 = *(a1 + 80) + 1;
  *(a1 + 80) = v19;
  if ((v21 & 1) == 0)
  {
LABEL_24:
    sub_27183D78C(a1, __p);
    if (*(a2 + 119) < 0)
    {
      operator delete(*v18);
    }

    v23 = *__p;
    *(v18 + 16) = v28;
    *v18 = v23;
    ++*(a1 + 104);
    v24 = *(a1 + 128);
    v22 = a2 + 120;
    ++*(a1 + 80);
    if ((v24 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_22:
  if (*(a1 + 131) != 1)
  {
    goto LABEL_24;
  }

  *(a1 + 132) = 1;
  v22 = a2 + 120;
  *(a1 + 80) = v19 + 1;
LABEL_27:
  if (*(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    goto LABEL_32;
  }

LABEL_29:
  sub_27183D78C(a1, __p);
  if (*(a2 + 143) < 0)
  {
    operator delete(*v22);
  }

  v25 = *__p;
  *(v22 + 16) = v28;
  *v22 = v25;
  ++*(a1 + 104);
LABEL_32:
  sub_27183A66C(a1, (a2 + 144));
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a1, __p);
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 152) = *__p;
    *(a2 + 168) = v28;
    ++*(a1 + 104);
  }

  sub_271839D90(a1, (a2 + 176));
  sub_271839D90(a1, (a2 + 177));
  sub_271839D90(a1, (a2 + 178));
  sub_271839D90(a1, (a2 + 179));
  sub_271839D90(a1, (a2 + 180));
  sub_271839D90(a1, (a2 + 181));
  sub_271839D90(a1, (a2 + 182));
  sub_271839D90(a1, (a2 + 183));
  sub_271839D90(a1, (a2 + 184));
  sub_271839D90(a1, (a2 + 185));
  sub_271839D90(a1, (a2 + 186));
  sub_271839D90(a1, (a2 + 187));
  sub_271839D90(a1, (a2 + 188));
  sub_271839D90(a1, (a2 + 189));
  sub_271839D90(a1, (a2 + 190));
  sub_271839D90(a1, (a2 + 191));
  if (a3 >= 2)
  {
    LODWORD(__p[0]) = 1;
    sub_27183A9AC(a1, __p);
    sub_27183A9AC(a1, (a2 + 192));
    sub_27183A9AC(a1, (a2 + 196));
    sub_27183A9AC(a1, (a2 + 200));
    sub_27183A9AC(a1, (a2 + 204));
    sub_27183A9AC(a1, (a2 + 208));
    sub_27183A9AC(a1, (a2 + 212));
    do
    {
      if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        return;
      }

      sub_27183D78C(a1, __p);
      if (SHIBYTE(v28) < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
LABEL_49:
          v26 = 0;
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_52;
          }

          continue;
        }
      }

      else if (SHIBYTE(v28) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_49;
      }

      v26 = 1;
      if (SHIBYTE(v28) < 0)
      {
LABEL_52:
        operator delete(__p[0]);
      }
    }

    while ((v26 & 1) != 0);
  }
}

void sub_2714A7B1C(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
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
  if (v30 != v29)
  {
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
  sub_2713C49D0(v20, a2, v3 + 16);
  sub_2714A7F0C(v20, a2, v3 + 200);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2714A7F0C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  sub_27173170C(a2);
  if (v9 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  sub_2714A7FEC(a2, a3, v10);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
}

void sub_2714A7FEC(void *a1, uint64_t a2, unsigned int a3)
{
  sub_2717318E8(a1, a2);
  sub_2717318E8(a1, a2 + 24);
  sub_2717318E8(a1, a2 + 48);
  sub_2717318E8(a1, a2 + 72);
  sub_2717318E8(a1, a2 + 96);
  sub_2717318E8(a1, a2 + 120);
  v6 = a1[6];
  v7 = a1[7];
  v8 = v7 >= v6;
  v9 = v7 - v6;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_12;
  }

  *(a2 + 144) = *(a1[3] + v6);
  a1[6] += 4;
  sub_2717318E8(a1, a2 + 152);
  v10 = a1[6];
  v11 = a1[7];
  v8 = v11 >= v10;
  v12 = v11 - v10;
  if (!v8)
  {
    v12 = 0;
  }

  if (v12 <= 0xF)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
LABEL_12:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 176) = *(a1[3] + v10);
  a1[6] += 16;
  if (a3 >= 2)
  {
    sub_2714A815C(&v14, a1, (a2 + 192));
  }
}

_DWORD **sub_2714A815C(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  v13 = a3;
  v14 = a3 + 1;
  v15 = a3 + 2;
  v16 = a2;
  sub_2714A8258(&v13, &v16);
  v13 = a3 + 3;
  v14 = a3 + 4;
  v15 = a3 + 5;
  v16 = a2;
  result = sub_2714A8258(&v13, &v16);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

_DWORD **sub_2714A8258(_DWORD **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 48);
  v4 = *(*a2 + 56);
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    goto LABEL_11;
  }

  **result = *(*(v2 + 24) + v3);
  *(v2 + 48) += 4;
  v7 = *a2;
  v8 = *(*a2 + 48);
  v9 = *(*a2 + 56);
  v5 = v9 >= v8;
  v10 = v9 - v8;
  if (!v5)
  {
    v10 = 0;
  }

  if (v10 <= 3)
  {
    goto LABEL_11;
  }

  *result[1] = *(*(v7 + 24) + v8);
  *(v7 + 48) += 4;
  v11 = *a2;
  v12 = *(*a2 + 48);
  v13 = *(*a2 + 56);
  v5 = v13 >= v12;
  v14 = v13 - v12;
  if (!v5)
  {
    v14 = 0;
  }

  if (v14 <= 3)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *result[2] = *(*(v11 + 24) + v12);
  *(v11 + 48) += 4;
  return result;
}

_BYTE *sub_2714A83BC(int *a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  if (*a1 == 2)
  {
    v13 = 1;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_280878910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878910))
      {
        sub_2714A8564();
      }

      sub_271847D5C(&stru_2808788F8, v12, 2u);
    }

    v7 = *a1;
  }

  if (v7 <= 0)
  {
    if (a4 >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = a4;
    }

    return sub_2714A8668(a2, a3, v11);
  }

  else
  {
    (*(*a2 + 16))(a2);
    if (a4 >= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = a4;
    }

    sub_2714A8668(a2, a3, v9);
    return (*(*a2 + 24))(a2);
  }
}

void sub_2714A8638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2714A8668(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 144))(a1);
  (*(*a1 + 144))(a1, a2 + 24);
  (*(*a1 + 144))(a1, a2 + 48);
  (*(*a1 + 144))(a1, a2 + 72);
  (*(*a1 + 144))(a1, a2 + 96);
  (*(*a1 + 144))(a1, a2 + 120);
  (*(*a1 + 56))(a1, a2 + 144);
  (*(*a1 + 144))(a1, a2 + 152);
  if ((a1[12] & 2) != 0)
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
    (*(*a1 + 144))(a1, &__p);
    operator new();
  }

  __p = (a2 + 176);
  result = sub_2714A89DC(a1, &__p);
  if (a3 >= 2)
  {
    v7 = *a1;
    *&v12 = *(a1 + 1);
    v8 = v12;
    LODWORD(__p) = 1;
    (*(v7 + 104))(a1, &__p);
    if (v8 < 1)
    {
      __p = "current";
      v10 = 7;
      v11 = a2 + 192;
      sub_2714A8E7C(a1, &__p);
      __p = "min";
      v10 = 3;
      v11 = a2 + 204;
      return sub_2714A8E7C(a1, &__p);
    }

    else
    {
      return sub_2714A8CC8(&v12, a1, a2 + 192);
    }
  }

  return result;
}

void sub_2714A8984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  a15 = 0;
  sub_27184D728(&a15, v15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714A89DC(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 80))(a1, *a2);
  (*(*a1 + 80))(a1, v3 + 1);
  (*(*a1 + 80))(a1, v3 + 2);
  (*(*a1 + 80))(a1, v3 + 3);
  (*(*a1 + 80))(a1, v3 + 4);
  (*(*a1 + 80))(a1, v3 + 5);
  (*(*a1 + 80))(a1, v3 + 6);
  (*(*a1 + 80))(a1, v3 + 7);
  (*(*a1 + 80))(a1, v3 + 8);
  (*(*a1 + 80))(a1, v3 + 9);
  (*(*a1 + 80))(a1, v3 + 10);
  (*(*a1 + 80))(a1, v3 + 11);
  (*(*a1 + 80))(a1, v3 + 12);
  (*(*a1 + 80))(a1, v3 + 13);
  (*(*a1 + 80))(a1, v3 + 14);
  v4 = *(*a1 + 80);

  return v4(a1, v3 + 15);
}

_BYTE *sub_2714A8CC8(int *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    LODWORD(v9) = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878930))
      {
        sub_2718519B4("cv3d::kit::kio::ProtocolInfoSample]", 0x22uLL, &stru_280878918);
        __cxa_guard_release(&qword_280878930);
        sub_271847D5C(&stru_280878918, v8, 1u);
      }

      sub_271847D5C(&stru_280878918, v8, 1u);
    }

    v5 = *a1;
  }

  if (v5 >= 1)
  {
    (*(*a2 + 16))(a2);
  }

  v9 = "current";
  v10 = 7;
  v11 = a3;
  sub_2714A8E7C(a2, &v9);
  v9 = "min";
  v10 = 3;
  v11 = a3 + 12;
  result = sub_2714A8E7C(a2, &v9);
  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

_BYTE *sub_2714A8E7C(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  (*(*a1 + 104))(a1, *(a2 + 16));
  (*(*a1 + 104))(a1, v3 + 4);
  (*(*a1 + 104))(a1, v3 + 8);
  return a1;
}

void sub_2714A8FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  a15 = 0;
  sub_27184D728(&a15, v15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2714A9050(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131350;
  v2 = (a2 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  *(a1 + 8) = &unk_288131398;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = a1 + 24;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    *(a2 + 16) = v2;
    *v2 = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v5;
  }

  v7 = *(a2 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = v7;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v8 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v8;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(a1 + 88) = 1;
  }

  result = *(a2 + 96);
  v10 = *(a2 + 112);
  *(a1 + 120) = 0;
  *(a1 + 112) = v10;
  *(a1 + 96) = result;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    result = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = result;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    *(a1 + 144) = 1;
    *(a1 + 160) = 0;
    v11 = (a1 + 160);
    *(a1 + 208) = 0;
    if (*(a2 + 208) != 1)
    {
LABEL_8:
      *(a1 + 224) = 0;
      v12 = (a1 + 224);
      *(a1 + 248) = 0;
      if (*(a2 + 248) != 1)
      {
        return result;
      }

LABEL_12:
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      result = *(a2 + 224);
      *(a1 + 224) = result;
      *(a1 + 240) = *(a2 + 240);
      *(a2 + 224) = 0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 0;
      *(a1 + 248) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 160) = 0;
    v11 = (a1 + 160);
    *(a1 + 208) = 0;
    if (*(a2 + 208) != 1)
    {
      goto LABEL_8;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 160);
  v11[1].n128_u64[0] = *(a2 + 176);
  *v11 = result;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 192) = _X2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 224) = 0;
  v12 = (a1 + 224);
  *(a1 + 248) = 0;
  if (*(a2 + 248) == 1)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2714A9210(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_2714A9280(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v34);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v34);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v34);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0(a2 + 16, &v19);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v19);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v19);
  }

  if (v34 != v19)
  {
    goto LABEL_18;
  }

  if (v35 != v20)
  {
    goto LABEL_18;
  }

  v18[0] = &v36;
  v18[1] = &v39;
  v18[2] = &v40;
  v18[3] = &v43;
  v18[4] = &v46;
  v17[0] = &v21;
  v17[1] = &v24;
  v17[2] = &v25;
  v17[3] = &v28;
  v17[4] = &__p;
  if (sub_2714FBB90(v18, v17))
  {
    v18[0] = a1 + 200;
    v17[0] = (a2 + 200);
    v6 = sub_2711B7DB8(v18, v17);
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_18:
    v6 = 0;
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v32;
    v9 = __p;
    if (v32 == __p)
    {
LABEL_31:
      v32 = v7;
      operator delete(v9);
      goto LABEL_32;
    }

    while (1)
    {
      v10 = v8;
      if (*(v8 - 16) == 1 && *(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
LABEL_26:
          if (*(v10 - 73) < 0)
          {
            operator delete(*v8);
          }
        }
      }

      else
      {
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
          goto LABEL_26;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v48 == 1)
  {
    v11 = v46;
    if (v46)
    {
      v12 = v47;
      v13 = v46;
      if (v47 == v46)
      {
LABEL_54:
        v47 = v11;
        operator delete(v13);
        goto LABEL_55;
      }

      while (1)
      {
        v14 = v12;
        if (*(v12 - 16) == 1 && *(v12 - 41) < 0)
        {
          operator delete(*(v12 - 8));
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
LABEL_49:
            if (*(v14 - 73) < 0)
            {
              operator delete(*v12);
            }
          }
        }

        else
        {
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
            goto LABEL_49;
          }
        }

        if (v12 == v11)
        {
          v13 = v46;
          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2714A960C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_2714A9648(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_2714A9C00(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_2714AAC50(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_2714AB104(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_2714ABAB0(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_2714ABE6C(&v16, v14);
      }

      else
      {
        sub_2714A9814(&v15, a1);
      }
    }
  }
}

void sub_2714A9814(uint64_t *a1, _DWORD *a2)
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
    sub_2714AC210(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 1;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_2714AC210(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_2714A9C00(uint64_t *a1, uint64_t a2)
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

void sub_2714AA128(uint64_t a1, const void ***a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_2711B1344(&v8, v9, v4 + 4);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  sub_2714AA220(a1, &v8);
  sub_271167834(&v8, v9[0]);
}

void sub_2714AA220(uint64_t a1, uint64_t a2)
{
  sub_2714AA44C(a2, &__p);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "context_enable_state_changes";
    *(a1 + 80) = 28;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_2718289B0(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    v5 = 0;
    *(a1 + 88) = 0;
  }

  if (__p.i64[0] != __p.i64[1])
  {
    v14 = __p.i64[0];
    v15 = __p.i64[0] + 24;
    sub_2714AA6FC(a1, &v14);
  }

  v10 = *(a1 + 56);
  *(a1 + 40) = *(v10 - 8);
  *(a1 + 56) = v10 - 8;
  if (v5)
  {
    *(a1 + 88) = 0;
  }

  v15 = 0;
  v16 = 0;
  v14 = &v15;
  sub_2714AAAF4(&v14, __p.i64[0], 0, __p.i64[1]);
  v6 = a2 + 8;
  sub_271167834(a2, *(a2 + 8));
  v7 = v15;
  *a2 = v14;
  *(a2 + 8) = v7;
  v8 = v16;
  *(a2 + 16) = v16;
  if (v8)
  {
    *(v7 + 16) = v6;
    v14 = &v15;
    v15 = 0;
    v16 = 0;
    sub_271167834(&v14, 0);
    v9 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  else
  {
    *a2 = v6;
    sub_271167834(&v14, v7);
    v9 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  v11 = __p.i64[1];
  v12 = v9;
  if (__p.i64[1] != v9)
  {
    do
    {
      v13 = *(v11 - 9);
      v11 -= 4;
      if (v13 < 0)
      {
        operator delete(*v11);
      }
    }

    while (v11 != v9);
    v12 = __p.i64[0];
  }

  __p.i64[1] = v9;
  operator delete(v12);
}

void sub_2714AA404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12)
{
  sub_271167834(&a9, a10);
  sub_2711BEA2C(&a12);
  _Unwind_Resume(a1);
}

void sub_2714AA424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AA438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AA44C(void *a1@<X0>, int64x2_t *a2@<X8>)
{
  v3 = a1[2];
  v19 = 0uLL;
  if (v3)
  {
    if (!(v3 >> 59))
    {
      operator new();
    }

    sub_271135560();
  }

  v18 = a1 + 1;
  v4 = *a1;
  if (*a1 == a1 + 1)
  {
    v17 = vdupq_n_s64(0);
    goto LABEL_31;
  }

  do
  {
    v5 = *(v4 + 56);
    if (*(v4 + 55) < 0)
    {
      sub_271127178(__p, v4[4], v4[5]);
    }

    else
    {
      *__p = *(v4 + 2);
      v21 = v4[6];
    }

    v22 = v5;
    v6 = v19.i64[0];
    v7 = (v19.i64[1] - v19.i64[0]) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_271135560();
    }

    v9 = -v19.i64[0];
    if (-v19.i64[0] >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = 32 * v7;
    *v11 = *__p;
    *(v11 + 16) = v21;
    __p[1] = 0;
    v21 = 0;
    __p[0] = 0;
    *(v11 + 24) = v5;
    v12 = 32 * v7 + 32;
    v13 = (v11 - 32 * ((v19.i64[1] - v19.i64[0]) >> 5));
    memcpy(v13, v19.i64[0], v19.i64[1] - v19.i64[0]);
    v19.i64[0] = v13;
    if (v6)
    {
      operator delete(v6);
      v19.i64[1] = v12;
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v4[1];
      if (v14)
      {
        do
        {
LABEL_22:
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
        goto LABEL_5;
      }
    }

    else
    {
      v19.i64[1] = v12;
      v14 = v4[1];
      if (v14)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v15 = v4[2];
      v16 = *v15 == v4;
      v4 = v15;
    }

    while (!v16);
LABEL_5:
    v4 = v15;
  }

  while (v15 != v18);
  v17 = v19;
LABEL_31:
  *a2 = v17;
  a2[1].i64[0] = 0;
}

void sub_2714AA6FC(uint64_t a1, uint64_t *a2)
{
  sub_27182791C(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_2718289B0(a1);
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  v4 = *a2;
  sub_27182B1E4(a1);
  v5 = *a2[1];
  v6 = 0;
  sub_2714AA85C();
}

void sub_2714AA818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AA834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714AA848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714AAAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AAAF4(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  if (a2 != a4)
  {
    v5 = a2;
    do
    {
      v7 = *(v5 + 24);
      if (*(v5 + 23) < 0)
      {
        sub_271127178(__p, *v5, *(v5 + 1));
      }

      else
      {
        v8 = *v5;
        v10 = *(v5 + 2);
        *__p = v8;
      }

      v11 = v7;
      if (!*sub_2711B1458(a1, (a1 + 8), &v13, &v12, __p))
      {
        operator new();
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 2;
    }

    while (v5 != a4);
  }
}

void sub_2714AAC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AAC50(uint64_t *a1, uint64_t a2)
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
    sub_2718460EC(&v25, 1u);
  }

  else
  {
    sub_27184636C(&v25, (v16 + 8));
  }

  sub_271840ADC(*(a2 + 24));
  sub_2714AAEE4(a2, (v3 + 200));
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

void sub_2714AAEE4(uint64_t a1, const void ***a2)
{
  v18 = 0;
  v19 = 0;
  v17 = &v18;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == (a2 + 1))
  {
    v5 = 0;
    v6 = *(a1 + 24);
    if (*(v6 + 40) != 1)
    {
LABEL_3:
      sub_271846E00((v6 + 8));
      goto LABEL_13;
    }
  }

  else
  {
    do
    {
      sub_2711B1344(&v17, &v18, v4 + 4);
      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v3);
    v5 = v19;
    v6 = *(a1 + 24);
    if (*(v6 + 40) != 1)
    {
      goto LABEL_3;
    }
  }

  v21 = (v6 + 16);
  sub_271846AEC(&v21, v5);
LABEL_13:
  v10 = v17;
  if (v17 != &v18)
  {
    do
    {
      v11 = *(a1 + 24);
      if (*(v11 + 40) == 1)
      {
        v21 = (v11 + 16);
        sub_271847238(&v21, v10 + 4);
      }

      else
      {
        sub_271847654((v11 + 8), v10 + 4);
      }

      v12 = *(v10 + 56);
      v20 = *(v10 + 56);
      v13 = *(a1 + 24);
      if (*(v13 + 40) == 1)
      {
        v21 = (v13 + 16);
        sub_2718454CC(&v21, &v20);
      }

      else
      {
        if (v12 < 0)
        {
          LOBYTE(v21) = -52;
          BYTE1(v21) = v12;
        }

        else
        {
          LOBYTE(v21) = v12;
        }

        v14 = *(v13 + 8);
        std::ostream::write();
      }

      v15 = v10[1];
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
          v16 = v10[2];
          v9 = *v16 == v10;
          v10 = v16;
        }

        while (!v9);
      }

      v10 = v16;
    }

    while (v16 != &v18);
  }

  sub_271167834(&v17, v18);
}

void sub_2714AB104(uint64_t *a1, uint64_t a2)
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

void sub_2714AB62C(uint64_t a1, const void ***a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_2711B1344(&v8, v9, v4 + 4);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  sub_2714AB724(a1, &v8);
  sub_271167834(&v8, v9[0]);
}

void sub_2714AB724(uint64_t a1, uint64_t a2)
{
  sub_2714AA44C(a2, &__p);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "context_enable_state_changes";
    *(a1 + 80) = 28;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_27182815C(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    v5 = 0;
    *(a1 + 88) = 0;
  }

  if (__p.i64[0] != __p.i64[1])
  {
    v14 = __p.i64[0];
    v15 = __p.i64[0] + 24;
    sub_2714AB950(a1, &v14);
  }

  v10 = *(a1 + 56);
  *(a1 + 40) = *(v10 - 8);
  *(a1 + 56) = v10 - 8;
  if (v5)
  {
    *(a1 + 88) = 0;
  }

  v15 = 0;
  v16 = 0;
  v14 = &v15;
  sub_2714AAAF4(&v14, __p.i64[0], 0, __p.i64[1]);
  v6 = a2 + 8;
  sub_271167834(a2, *(a2 + 8));
  v7 = v15;
  *a2 = v14;
  *(a2 + 8) = v7;
  v8 = v16;
  *(a2 + 16) = v16;
  if (v8)
  {
    *(v7 + 16) = v6;
    v14 = &v15;
    v15 = 0;
    v16 = 0;
    sub_271167834(&v14, 0);
    v9 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  else
  {
    *a2 = v6;
    sub_271167834(&v14, v7);
    v9 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  v11 = __p.i64[1];
  v12 = v9;
  if (__p.i64[1] != v9)
  {
    do
    {
      v13 = *(v11 - 9);
      v11 -= 4;
      if (v13 < 0)
      {
        operator delete(*v11);
      }
    }

    while (v11 != v9);
    v12 = __p.i64[0];
  }

  __p.i64[1] = v9;
  operator delete(v12);
}

void sub_2714AB908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12)
{
  sub_271167834(&a9, a10);
  sub_2711BEA2C(&a12);
  _Unwind_Resume(a1);
}

void sub_2714AB928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AB93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AB950(uint64_t a1, uint64_t *a2)
{
  sub_2715DF0F0(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_27182815C(a1);
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  v4 = *a2;
  sub_271829354(a1);
  v5 = *a2[1];
  v6 = 0;
  sub_2714AA85C();
}

void sub_2714ABA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714ABA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714ABA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_2714ABAB0(uint64_t *a1, uint64_t a2)
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
  sub_2714ABCC4(a2, (v3 + 200));
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

void sub_2714ABCC4(uint64_t a1, const void ***a2)
{
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_2711B1344(&v13, &v14, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
    v5 = v15;
    if (!*(a1 + 40))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v5 = 0;
  if (*(a1 + 40))
  {
LABEL_12:
    v9 = *(a1 + 24);
    v16 = *(a1 + 32);
    sub_271120E64(v9, &v16, 1);
  }

LABEL_13:
  MEMORY[0x2743BE850](*(a1 + 24), v5);
  ++*(a1 + 40);
  v10 = v13;
  if (v13 != &v14)
  {
    do
    {
      sub_271839128(a1, (v10 + 4));
      v16 = *(v10 + 56);
      sub_2718388F8(a1, &v16);
      v11 = v10[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v10[2];
          v8 = *v12 == v10;
          v10 = v12;
        }

        while (!v8);
      }

      v10 = v12;
    }

    while (v12 != &v14);
  }

  sub_271167834(&v13, v14);
}

void sub_2714ABE6C(uint64_t *a1, uint64_t a2)
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
  sub_2714AC020(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_2714AC020(uint64_t a1, const void ***a2)
{
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == (a2 + 1))
  {
    v5 = 0;
  }

  else
  {
    do
    {
      sub_2711B1344(&v16, &v17, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
    v5 = v18;
  }

  __src = v5;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v20, 8uLL);
  v9 = v16;
  if (v16 != &v17)
  {
    do
    {
      v10 = *(v9 + 55);
      if ((v10 & 0x80u) != 0)
      {
        v10 = v9[5];
      }

      __src = v10;
      sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v20, 8uLL);
      v11 = *(v9 + 55);
      if (v11 >= 0)
      {
        v12 = v9 + 4;
      }

      else
      {
        v12 = v9[4];
      }

      if (v11 >= 0)
      {
        v13 = *(v9 + 55);
      }

      else
      {
        v13 = v9[5];
      }

      sub_27173318C(a1 + 24, *(a1 + 32), v12, &v12[v13], v13);
      LOBYTE(__src) = *(v9 + 56);
      sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
      v14 = v9[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v9[2];
          v8 = *v15 == v9;
          v9 = v15;
        }

        while (!v8);
      }

      v9 = v15;
    }

    while (v15 != &v17);
  }

  sub_271167834(&v16, v17);
}

void sub_2714AC210(uint64_t a1, const void ***a2)
{
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == (a2 + 1))
  {
    v5 = 0;
  }

  else
  {
    do
    {
      sub_2711B1344(&v12, &v13, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
    v5 = v14;
  }

  v15 = v5;
  (*(*a1 + 120))(a1, &v15);
  v9 = v12;
  if (v12 != &v13)
  {
    do
    {
      (*(*a1 + 144))(a1, v9 + 4);
      LOBYTE(v15) = *(v9 + 56);
      (*(*a1 + 80))(a1, &v15);
      v10 = v9[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v9[2];
          v8 = *v11 == v9;
          v9 = v11;
        }

        while (!v8);
      }

      v9 = v11;
    }

    while (v11 != &v13);
  }

  sub_271167834(&v12, v13);
}

void sub_2714AC3E8(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_2714ACA6C(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_2714AD638(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v10)
    {
      sub_2714ADC38(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v12)
    {
      sub_2714AE694(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v14)
      {
        sub_2714AED5C(&v16, v14);
      }

      else
      {
        sub_2714AC5B4(&v15, a1);
      }
    }
  }
}

void sub_2714AC5B4(uint64_t *a1, void **a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v24);
    sub_2713B2524(v36, v24);
    sub_2713E031C(v3 + 16, v36);
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

  sub_2713DA430(v3 + 16, v24);
  sub_2713B2524(v36, v24);
  sub_2713E031C(v3 + 16, v36);
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
  if (v34 != v33)
  {
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
    operator delete(v24[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v24[0] = a2[1];
  v20 = v24[0];
  v36[0] = 6;
  v19[13](a2, v36);
  if (v20 < 1)
  {
    if (v36[0] < 3)
    {
      sub_2713C66D4(v36, a2, v3 + 16, v36[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v36[0]);
    }
  }

  else
  {
    sub_2713C62C8(v24, a2, v3 + 16, v36[0]);
  }

  v21 = *a2;
  v24[0] = a2[1];
  v22 = v24[0];
  v36[0] = 1;
  v21[13](a2, v36);
  if (v22 < 1)
  {
    sub_2714AF558(a2, v3 + 200);
  }

  else
  {
    sub_2714AF3C4(v24, a2, v3 + 200);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2714ACA6C(uint64_t *a1, uint64_t a2)
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

void sub_2714ACF44(uint64_t a1, uint64_t a2)
{
  sub_2714AA44C(a2, &__p);
  v4 = *(a1 + 104);
  *(a1 + 88) = "context_enable_state_changes";
  *(a1 + 96) = 28;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2714AD0B8(a1, __p.i64);
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  sub_2714AAAF4(&v12, __p.i64[0], 0, __p.i64[1]);
  v5 = a2 + 8;
  sub_271167834(a2, *(a2 + 8));
  v6 = v13;
  *a2 = v12;
  *(a2 + 8) = v6;
  v7 = v14;
  *(a2 + 16) = v14;
  if (v7)
  {
    *(v6 + 16) = v5;
    v12 = &v13;
    v13 = 0;
    v14 = 0;
    sub_271167834(&v12, 0);
    v8 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  else
  {
    *a2 = v5;
    sub_271167834(&v12, v6);
    v8 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  v9 = __p.i64[1];
  v10 = v8;
  if (__p.i64[1] != v8)
  {
    do
    {
      v11 = *(v9 - 9);
      v9 -= 4;
      if (v11 < 0)
      {
        operator delete(*v9);
      }
    }

    while (v9 != v8);
    v10 = __p.i64[0];
  }

  __p.i64[1] = v8;
  operator delete(v10);
}

void sub_2714AD084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12)
{
  sub_271167834(&a9, a10);
  sub_2711BEA2C(&a12);
  _Unwind_Resume(a1);
}

void sub_2714AD0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AD0B8(uint64_t a1, uint64_t *a2)
{
  v20[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v20);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 32);
  v6 = *v5;
  if (v6 == 2)
  {
    v7 = (*(*(v5 + 1) + 8) - **(v5 + 1)) >> 4;
  }

  else if (v6 == 1)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v5 + 1) + 8) - **(v5 + 1)) >> 3);
  }

  else
  {
    if (!*v5)
    {
      v7 = 0;
      v8 = (a2 + 1);
      v9 = a2[1];
      v10 = *a2;
      v11 = (v9 - *a2) >> 5;
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = (a2 + 1);
  v9 = a2[1];
  v10 = *a2;
  v11 = (v9 - *a2) >> 5;
  if (v7 > v11)
  {
    sub_2714AD314(a2, v7 - v11);
    v13 = a2;
    v12 = *a2;
    if (v12 == v13[1])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v11 <= v7)
  {
    v12 = *a2;
    if (v12 == v9)
    {
      goto LABEL_24;
    }

LABEL_19:
    v16 = *(a1 + 32);
    v20[0] = v12;
    v20[1] = v12 + 24;
    v21 = v16;
    v17 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v17;
    sub_27182D194(a1 + 40, &v21);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v21 = a1;
    sub_2714AD470(v20, &v21);
  }

  v14 = (v10 + 32 * v7);
  while (v9 != v14)
  {
    v15 = *(v9 - 9);
    v9 -= 4;
    if (v15 < 0)
    {
      operator delete(*v9);
    }
  }

  *v8 = v14;
  v12 = *a2;
  if (v12 != v14)
  {
    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 48);
  v19 = *(a1 + 72);
  *(a1 + 32) = *(v18 - 8);
  *(a1 + 112) = *(v19 - 8);
  *(a1 + 48) = v18 - 8;
  *(a1 + 72) = v19 - 8;
}

void sub_2714AD314(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v3) >> 5)
  {
    if (a2)
    {
      v9 = 32 * a2;
      v10 = v3 + 32 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 24) = 0;
        *(v3 + 16) = 0;
        v3 += 32;
        v9 -= 32;
      }

      while (v9);
      v3 = v10;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = (v3 - *a1) >> 5;
    v6 = v5 + a2;
    if ((v5 + a2) >> 59)
    {
      sub_271135560();
    }

    v7 = v4 - *a1;
    if (v7 >> 4 > v6)
    {
      v6 = v7 >> 4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 59))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = 32 * v5;
    v12 = 32 * a2;
    v13 = 32 * v5 + 32 * a2;
    v14 = 32 * v5;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 24) = 0;
      *(v14 + 16) = 0;
      v14 += 32;
      v12 -= 32;
    }

    while (v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_2714AD470(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_27182D6C4(*a2);
  ++*(v5 + 112);
  v14 = 0;
  v13 = 0uLL;
  sub_2715D6E6C(v6, &v13);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  v7 = v13;
  *(v4 + 16) = v14;
  *v4 = v7;
  v8 = a1[1];
  v9 = *a2;
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v10 = sub_27182D6C4(v9);
  ++v9[14];
  v14 = 0;
  v13 = 0uLL;
  sub_2715D6E6C(v10, &v13);
  v12 = v14;
  *__p = v13;
  operator new();
}

void sub_2714AD5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a17 = 0;
  sub_27184D728(&a17, v23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714AD638(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
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
  if (v31 != v30)
  {
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
  LODWORD(v21[0]) = 6;
  sub_27183FB7C(*(a2 + 48), v21);
  sub_2713BF6F4(v21, a2, v3 + 16, v21[0]);
  result = sub_2714ADA40(v21, a2, v3 + 200);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2714ADA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v8) = 1;
  sub_27183FB7C(*(a2 + 48), &v8);
  v9 = 0;
  sub_27183FF6C(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_2713BF82C(a2 + 24, &v8);
  sub_2714ADB54(a2, a3);
  v5 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v7);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_2714ADB54(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  sub_27183FF6C(*(a1 + 48), &v8);
  sub_271167834(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  for (i = v8; i; --i)
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    v6 = 0;
    sub_2718403E0(*(a1 + 48), __p);
    v9 = 0;
    sub_27183F824(*(a1 + 48), &v9);
    v7 = v9;
    sub_27123BAFC(a2, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714ADC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714ADC38(uint64_t *a1, uint64_t a2)
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

void sub_2714AE110(uint64_t a1, uint64_t a2)
{
  sub_2714AA44C(a2, &__p);
  v4 = *(a1 + 104);
  *(a1 + 88) = "context_enable_state_changes";
  *(a1 + 96) = 28;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2714AE284(a1, __p.i64);
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  sub_2714AAAF4(&v12, __p.i64[0], 0, __p.i64[1]);
  v5 = a2 + 8;
  sub_271167834(a2, *(a2 + 8));
  v6 = v13;
  *a2 = v12;
  *(a2 + 8) = v6;
  v7 = v14;
  *(a2 + 16) = v14;
  if (v7)
  {
    *(v6 + 16) = v5;
    v12 = &v13;
    v13 = 0;
    v14 = 0;
    sub_271167834(&v12, 0);
    v8 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  else
  {
    *a2 = v5;
    sub_271167834(&v12, v6);
    v8 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  v9 = __p.i64[1];
  v10 = v8;
  if (__p.i64[1] != v8)
  {
    do
    {
      v11 = *(v9 - 9);
      v9 -= 4;
      if (v11 < 0)
      {
        operator delete(*v9);
      }
    }

    while (v9 != v8);
    v10 = __p.i64[0];
  }

  __p.i64[1] = v8;
  operator delete(v10);
}

void sub_2714AE250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12)
{
  sub_271167834(&a9, a10);
  sub_2711BEA2C(&a12);
  _Unwind_Resume(a1);
}

void sub_2714AE270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AE284(uint64_t a1, uint64_t *a2)
{
  v20[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v20);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 32);
  v6 = *v5;
  if (v6 == 2)
  {
    v7 = (*(*(v5 + 1) + 8) - **(v5 + 1)) >> 4;
  }

  else if (v6 == 1)
  {
    v7 = *(*(v5 + 1) + 16);
  }

  else
  {
    if (!*v5)
    {
      v7 = 0;
      v8 = (a2 + 1);
      v9 = a2[1];
      v10 = *a2;
      v11 = (v9 - *a2) >> 5;
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = (a2 + 1);
  v9 = a2[1];
  v10 = *a2;
  v11 = (v9 - *a2) >> 5;
  if (v7 > v11)
  {
    sub_2714AD314(a2, v7 - v11);
    v13 = a2;
    v12 = *a2;
    if (v12 == v13[1])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v11 <= v7)
  {
    v12 = *a2;
    if (v12 == v9)
    {
      goto LABEL_24;
    }

LABEL_19:
    v16 = *(a1 + 32);
    v20[0] = v12;
    v20[1] = v12 + 24;
    v21 = v16;
    v17 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v17;
    sub_27182D194(a1 + 40, &v21);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v21 = a1;
    sub_2714AE4CC(v20, &v21);
  }

  v14 = (v10 + 32 * v7);
  while (v9 != v14)
  {
    v15 = *(v9 - 9);
    v9 -= 4;
    if (v15 < 0)
    {
      operator delete(*v9);
    }
  }

  *v8 = v14;
  v12 = *a2;
  if (v12 != v14)
  {
    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 48);
  v19 = *(a1 + 72);
  *(a1 + 32) = *(v18 - 8);
  *(a1 + 112) = *(v19 - 8);
  *(a1 + 48) = v18 - 8;
  *(a1 + 72) = v19 - 8;
}

void sub_2714AE4CC(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_27182D2AC(*a2);
  ++*(v5 + 112);
  v14 = 0;
  v13 = 0uLL;
  sub_2715D666C(v6, &v13);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  v7 = v13;
  *(v4 + 16) = v14;
  *v4 = v7;
  v8 = a1[1];
  v9 = *a2;
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v10 = sub_27182D2AC(v9);
  ++v9[14];
  v14 = 0;
  v13 = 0uLL;
  sub_2715D666C(v10, &v13);
  v12 = v14;
  *__p = v13;
  operator new();
}

void sub_2714AE610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a17 = 0;
  sub_27184D728(&a17, v23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714AE694(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_2713DA430(v3 + 16, &v23);
      sub_2713B2524(v37, &v23);
      sub_2713E031C(v3 + 16, v37);
      if (v49 == 1)
      {
        v5 = __p;
        if (__p)
        {
          v6 = v48;
          v7 = __p;
          if (v48 != __p)
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

          v48 = v5;
          operator delete(v7);
        }
      }

      if (v46 == 1 && v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 == 1 && v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 == 1 && v39 < 0)
      {
        operator delete(v38);
      }

      if (v36 != 1)
      {
        goto LABEL_66;
      }

      v13 = v34;
      if (!v34)
      {
        goto LABEL_66;
      }

      v14 = v35;
      v15 = v34;
      if (v35 == v34)
      {
LABEL_65:
        v35 = v13;
        operator delete(v15);
LABEL_66:
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

    sub_271399EB0(v3 + 16, &v23);
    sub_2713B2524(v37, &v23);
    sub_2713E031C(v3 + 16, v37);
    if (v49 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v48;
        v11 = __p;
        if (v48 != __p)
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

        v48 = v9;
        operator delete(v11);
      }
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v36 != 1)
    {
      goto LABEL_66;
    }

    v13 = v34;
    if (!v34)
    {
      goto LABEL_66;
    }

    v17 = v35;
    v15 = v34;
    if (v35 == v34)
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
        v15 = v34;
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  LODWORD(v23) = 6;
  sub_27183A9AC(a2, &v23);
  if (v23 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v23;
  }

  if (v23 > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, &v23);
      if (SHIBYTE(v25) < 0)
      {
        if (v24 == 1 && *(a2 + 72) == *v23)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v25) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v25) < 0)
      {
LABEL_93:
        operator delete(v23);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(&v23, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v23) = 1;
  sub_27183A9AC(a2, &v23);
  sub_2714AEC1C(a2, v3 + 200);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &v23);
    if (SHIBYTE(v25) < 0)
    {
      if (v24 == 1 && *(a2 + 72) == *v23)
      {
LABEL_105:
        v21 = 0;
        if (SHIBYTE(v25) < 0)
        {
          goto LABEL_108;
        }

        goto LABEL_96;
      }
    }

    else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
    {
      goto LABEL_105;
    }

    v21 = 1;
    if (SHIBYTE(v25) < 0)
    {
LABEL_108:
      operator delete(v23);
    }

LABEL_96:
    if ((v21 & 1) == 0)
    {
      break;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2714AEC1C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  sub_27183B6AC(a1, &v8);
  sub_271167834(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  for (i = v8; i; --i)
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    v6 = 0;
    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, &v9);
      if (SHIBYTE(v6) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v9;
      v6 = v10;
      ++*(a1 + 104);
    }

    LOBYTE(v9) = 0;
    sub_271839D90(a1, &v9);
    v7 = v9;
    sub_27123BAFC(a2, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714AED3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AED5C(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
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
  if (v30 != v29)
  {
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
  sub_2713C49D0(v20, a2, v3 + 16);
  sub_2714AF14C(v20, a2, v3 + 200);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2714AF14C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  sub_2714AF210(a2, a3);
  v9 = a2[12];
  v10 = a2[9];
  a2[6] = *(v9 - 8) + *(v10 - 8) + 8;
  a2[9] = v10 - 8;
  a2[12] = v9 - 8;
}

void sub_2714AF210(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  v9 = (a2 + 8);
  sub_271167834(a2, *(a2 + 8));
  *a2 = v9;
  *(a2 + 16) = 0;
  for (*v9 = 0; v8; --v8)
  {
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    v15 = 0;
    sub_2717318E8(a1, __p);
    v10 = a1[6];
    if (a1[7] <= v10)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v12, "Not enough data to read");
      v12->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(v12, off_279E2F400, MEMORY[0x277D825F8]);
    }

    v11 = *(a1[3] + v10);
    a1[6] = v10 + 1;
    v16 = v11;
    sub_27123BAFC(a2, __p);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714AF390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AF3C4(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 1;
    (*(*a2 + 104))(a2, &v8);
    if (v8 >= 2)
    {
      v7 = v8;
      if ((atomic_load_explicit(&qword_280878950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878950))
      {
        sub_2718519B4("cv3d::kit::viz::UpdateEnabledContextsSample]", 0x2BuLL, &stru_280878938);
        __cxa_guard_release(&qword_280878950);
        sub_271847D5C(&stru_280878938, v7, 1u);
      }

      sub_271847D5C(&stru_280878938, v7, 1u);
    }

    v5 = *a1;
  }

  if (v5 <= 0)
  {
    sub_2714AF558(a2, a3);
  }

  else
  {
    (*(*a2 + 16))(a2);
    sub_2714AF558(a2, a3);
    (*(*a2 + 24))(a2);
  }
}

void sub_2714AF558(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  (*(*a1 + 120))(a1, &v8);
  sub_271167834(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  for (i = v8; i; --i)
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    v6 = 0;
    (*(*a1 + 144))(a1, __p);
    v9 = 0;
    (*(*a1 + 80))(a1, &v9);
    v7 = v9;
    sub_27123BAFC(a2, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714AF678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714AF698(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2714AF768(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714AF868(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808789B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808789B0))
    {
      sub_2714B12F0();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&xmmword_280878998, "{", __p, ",");
}

void sub_2714AF968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AF984(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 4;
}

uint64_t sub_2714AF9FC(uint64_t a1)
{
  *a1 = &unk_288131BD0;
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2714AFAA8(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2714AFB78(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714AFC68()
{
  if ((atomic_load_explicit(&qword_280878990, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878990))
    {
      sub_2714B1058();
    }
  }

  sub_2714B0B0C(&xmmword_280878978, "{");
}

void sub_2714AFD1C(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2714AFD48(uint64_t a1)
{
  *a1 = &unk_288131BD0;
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714AFE14(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_288131BF0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_2714AFF64(a1, result);
    }
  }

  return result;
}

uint64_t sub_2714AFEB0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878970))
  {
    sub_2718519B4("cv3d::kit::viz::UpdateEnabledLoggers]", 0x24uLL, &xmmword_280878958);
    __cxa_guard_release(&qword_280878970);
  }

  return sub_2714B00CC(&xmmword_280878958, "{", a1 + 8, "}");
}

BOOL sub_2714AFF64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v7 = 0;
    do
    {
      v8 = (v4 + v7);
      v9 = v3 + v7;
      v10 = *(v3 + v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v3 + v7 + 23);
      }

      else
      {
        v11 = *(v3 + v7 + 8);
      }

      v12 = *(v8 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = v8[1];
      }

      if (v11 != v12)
      {
        return 0;
      }

      v14 = v10 >= 0 ? (v3 + v7) : *v9;
      v15 = *v8;
      v16 = (v13 >= 0 ? v4 + v7 : *v8);
      if (memcmp(v14, v16, v11) || *(v9 + 24) != *(v8 + 6))
      {
        return 0;
      }

      v7 += 32;
    }

    while (v3 + v7 != v2);
  }

  v18 = *(a2 + 56);
  v19 = *(a1 + 56);
  result = v19 == v18;
  if (v19 == v18 && v19 != 0)
  {
    v22 = *(a1 + 55);
    if (v22 >= 0)
    {
      v23 = *(a1 + 55);
    }

    else
    {
      v23 = *(a1 + 40);
    }

    v24 = *(a2 + 55);
    v25 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(a2 + 40);
    }

    if (v23 == v24)
    {
      v26 = (a2 + 32);
      if (v22 >= 0)
      {
        v27 = (a1 + 32);
      }

      else
      {
        v27 = *(a1 + 32);
      }

      v28 = *v26;
      if (v25 >= 0)
      {
        v29 = (a2 + 32);
      }

      else
      {
        v29 = *v26;
      }

      return memcmp(v27, v29, v23) == 0;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2714B00CC(__int128 *a1, const char *a2, uint64_t a3, const char *a4)
{
  v10 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v8, *a1, *(a1 + 1));
  }

  else
  {
    v8 = *a1;
    v9 = *(a1 + 2);
  }

  v10 = 1;
  v14 = &v8;
  v15 = a2;
  v16 = &v8;
  v17 = a2;
  v18 = a2;
  sub_271136F58(&v16, &v8);
  v11[0] = a3;
  v11[1] = a3 + 24;
  v14 = &v8;
  v15 = "{";
  v16 = &v8;
  v17 = "{";
  v18 = "{";
  if (v10 == -1)
  {
    goto LABEL_11;
  }

  v13 = &v14;
  (*(&off_2881319B8 + v10))(&v13, &v8);
  LOBYTE(v14) = 1;
  v15 = &v8;
  v16 = &v12;
  sub_2714B0314(v11, &v14);
  v14 = &v8;
  v15 = "}";
  v16 = &v8;
  v17 = "}";
  v18 = "}";
  if (v10 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v13 = &v14;
  (*(&off_2881319B8 + v10))(&v13, &v8);
  v14 = &v8;
  v15 = a4;
  v16 = &v8;
  v17 = a4;
  v18 = a4;
  if (v10 == -1)
  {
    sub_2711308D4();
  }

  v11[0] = &v14;
  (*(&off_2881319B8 + v10))(v11, &v8);
  if (v10 == -1)
  {
    sub_2711308D4();
  }

  v14 = v11;
  result = (off_288131958[v10])(&v14, &v8);
  if (v10 != -1)
  {
    return (off_288131940[v10])(&v14, &v8);
  }

  return result;
}

uint64_t sub_2714B0314(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    v12 = *(a2 + 8);
    v13 = ",";
    v14 = v12;
    v15 = ",";
    v16 = ",";
    v5 = *(v12 + 24);
    if (v5 == -1)
    {
      goto LABEL_13;
    }

    v17 = &v12;
    (*(&off_2881319B8 + v5))(&v17);
  }

  *a2 = 0;
  sub_2714B0474(&v12, *(a2 + 8), v4);
  v6 = a1[1];
  if ((*a2 & 1) == 0)
  {
    v12 = *(a2 + 8);
    v13 = ",";
    v14 = v12;
    v15 = ",";
    v16 = ",";
    v7 = *(v12 + 24);
    if (v7 == -1)
    {
      goto LABEL_13;
    }

    v17 = &v12;
    (*(&off_2881319B8 + v7))(&v17);
  }

  *a2 = 0;
  v8 = *(a2 + 8);
  if (*(v6 + 24) != 1)
  {
    v12 = *(a2 + 8);
    v13 = "nullopt";
    v14 = v8;
    v15 = "nullopt";
    v16 = "nullopt";
    v9 = *(v8 + 24);
    if (v9 != -1)
    {
      v17 = &v12;
      v10 = &off_2881319D0;
      return (v10[v9])(&v17);
    }

LABEL_13:
    sub_2711308D4();
  }

  v12 = *(a2 + 8);
  v13 = v6;
  v14 = v8;
  v15 = v6;
  v16 = v6;
  v9 = *(v8 + 24);
  if (v9 == -1)
  {
    goto LABEL_13;
  }

  v17 = &v12;
  v10 = off_2881319A0;
  return (v10[v9])(&v17);
}

uint64_t sub_2714B0474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 8) - *a3) > 31)
  {
    v11 = a2;
    v12 = "{";
    v13 = a2;
    v14 = "{";
    v15 = "{";
    v5 = *(a2 + 24);
    if (v5 != -1)
    {
      v16 = &v11;
      (*(&off_2881319B8 + v5))(&v16, a2);
      v7 = *a3;
      v11 = a2;
      v12 = "{";
      v13 = a2;
      v14 = "{";
      v15 = "{";
      v8 = *(a2 + 24);
      if (v8 != -1)
      {
        v16 = &v11;
        (*(&off_2881319B8 + v8))(&v16, a2);
        LOBYTE(v11) = 1;
        v12 = a2;
        v13 = &v10;
        sub_2714B06C8(v7, &v11);
      }
    }

LABEL_7:
    sub_2711308D4();
  }

  v11 = a2;
  v12 = "{}";
  v13 = a2;
  v14 = "{}";
  v15 = "{}";
  v4 = *(a2 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  return (*(&off_288131AA8 + v4))(&v16, a2);
}

void sub_2714B06C8(const char *a1, uint64_t a2)
{
  if ((*a2 & 1) == 0)
  {
    v8 = *(a2 + 8);
    v9 = ",";
    v10 = v8;
    v11 = ",";
    v12 = ",";
    v4 = *(v8 + 24);
    if (v4 == -1)
    {
      goto LABEL_9;
    }

    v13 = &v8;
    (*(&off_2881319B8 + v4))(&v13);
  }

  *a2 = 0;
  v8 = *(a2 + 8);
  v9 = a1;
  v10 = v8;
  v11 = a1;
  v12 = a1;
  v5 = *(v8 + 24);
  if (v5 != -1)
  {
    v13 = &v8;
    (off_2881319A0[v5])(&v13);
    if (*a2)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 8);
    v9 = ",";
    v10 = v8;
    v11 = ",";
    v12 = ",";
    v6 = *(v8 + 24);
    if (v6 != -1)
    {
      v13 = &v8;
      (*(&off_2881319B8 + v6))(&v13);
LABEL_8:
      *a2 = 0;
      v7 = *(a2 + 8);
      sub_2714B07D4();
    }
  }

LABEL_9:
  sub_2711308D4();
}

void sub_2714B09F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714B0A3C(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2714B0B0C(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2714B0D3C();
}

void sub_2714B0CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280878970);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2714B112C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714B12B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714B12F0()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_2714B1598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

__n128 sub_2714B1688(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131B88;
  *(a1 + 8) = &unk_288131BD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(a1 + 64) = 1;
  }

  v3 = *(a2 + 80);
  *(a1 + 96) = 0;
  *(a1 + 80) = v3;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v4 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v4;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    *(a1 + 120) = 1;
  }

  result = *(a2 + 128);
  v6 = *(a2 + 144);
  *(a1 + 152) = 0;
  *(a1 + 144) = v6;
  *(a1 + 128) = result;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    result = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = result;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    *(a1 + 176) = 1;
    *(a1 + 192) = 0;
    v7 = (a1 + 192);
    *(a1 + 240) = 0;
    if (*(a2 + 240) != 1)
    {
LABEL_7:
      *(a1 + 256) = 0;
      *(a1 + 280) = 0;
      if (*(a2 + 280) != 1)
      {
        return result;
      }

LABEL_11:
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      result = *(a2 + 256);
      *(a1 + 256) = result;
      *(a1 + 272) = *(a2 + 272);
      *(a2 + 256) = 0;
      *(a2 + 264) = 0;
      *(a2 + 272) = 0;
      *(a1 + 280) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 192) = 0;
    v7 = (a1 + 192);
    *(a1 + 240) = 0;
    if (*(a2 + 240) != 1)
    {
      goto LABEL_7;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 192);
  v7[1].n128_u64[0] = *(a2 + 208);
  *v7 = result;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 192) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 224) = _X2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    goto LABEL_11;
  }

  return result;
}

void *sub_2714B1860(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

void sub_2714B1970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_2711BE948(&a11);
  *(v11 + 8) = v12;
  sub_2711BE9A8(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_2714B1990(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v58);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v58);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v58);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0(a2 + 16, &v43);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v43);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v43);
  }

  if (v58 != v43)
  {
    goto LABEL_52;
  }

  if (v59 != v44)
  {
    goto LABEL_52;
  }

  v42[0] = &v60;
  v42[1] = &v63;
  v42[2] = &v64;
  v42[3] = &v67;
  v42[4] = &v70;
  v41[0] = &v45;
  v41[1] = &v48;
  v41[2] = &v49;
  v41[3] = &v52;
  v41[4] = &__p;
  if (!sub_2714FBB90(v42, v41))
  {
    goto LABEL_52;
  }

  v7 = *(a1 + 200);
  v6 = *(a1 + 208);
  v8 = *(a2 + 200);
  if (v6 - v7 != *(a2 + 208) - v8)
  {
    goto LABEL_52;
  }

  if (v7 != v6)
  {
    v9 = 0;
    do
    {
      v10 = (v8 + v9);
      v11 = v7 + v9;
      v12 = *(v7 + v9 + 23);
      if (v12 >= 0)
      {
        v13 = *(v7 + v9 + 23);
      }

      else
      {
        v13 = *(v7 + v9 + 8);
      }

      v14 = *(v10 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = v10[1];
      }

      if (v13 != v14)
      {
        goto LABEL_52;
      }

      v16 = v12 >= 0 ? (v7 + v9) : *v11;
      v17 = *v10;
      v18 = (v15 >= 0 ? v8 + v9 : *v10);
      if (memcmp(v16, v18, v13) || *(v11 + 24) != *(v10 + 6))
      {
        goto LABEL_52;
      }

      v9 += 32;
    }

    while (v7 + v9 != v6);
  }

  v20 = *(a2 + 248);
  v21 = *(a1 + 248);
  v22 = v21 == v20;
  if (v21 == v20 && *(a1 + 248))
  {
    v23 = *(a1 + 247);
    if (v23 >= 0)
    {
      v24 = *(a1 + 247);
    }

    else
    {
      v24 = *(a1 + 232);
    }

    v25 = *(a2 + 247);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(a2 + 232);
    }

    if (v24 == v25)
    {
      v27 = (a2 + 224);
      if (v23 >= 0)
      {
        v28 = (a1 + 224);
      }

      else
      {
        v28 = *(a1 + 224);
      }

      v29 = *v27;
      if (v26 >= 0)
      {
        v30 = (a2 + 224);
      }

      else
      {
        v30 = *v27;
      }

      v22 = memcmp(v28, v30, v24) == 0;
      goto LABEL_53;
    }

LABEL_52:
    v22 = 0;
  }

LABEL_53:
  if (v57 == 1)
  {
    v31 = __p;
    if (__p)
    {
      v32 = v56;
      v33 = __p;
      if (v56 == __p)
      {
LABEL_66:
        v56 = v31;
        operator delete(v33);
        goto LABEL_67;
      }

      while (1)
      {
        v34 = v32;
        if (*(v32 - 16) == 1 && *(v32 - 41) < 0)
        {
          operator delete(*(v32 - 8));
          v32 -= 12;
          if (*(v34 - 72) == 1)
          {
LABEL_61:
            if (*(v34 - 73) < 0)
            {
              operator delete(*v32);
            }
          }
        }

        else
        {
          v32 -= 12;
          if (*(v34 - 72) == 1)
          {
            goto LABEL_61;
          }
        }

        if (v32 == v31)
        {
          v33 = __p;
          goto LABEL_66;
        }
      }
    }
  }

LABEL_67:
  if (v54 == 1 && v53 < 0)
  {
    operator delete(v52);
  }

  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (v72 == 1)
  {
    v35 = v70;
    if (v70)
    {
      v36 = v71;
      v37 = v70;
      if (v71 == v70)
      {
LABEL_89:
        v71 = v35;
        operator delete(v37);
        goto LABEL_90;
      }

      while (1)
      {
        v38 = v36;
        if (*(v36 - 16) == 1 && *(v36 - 41) < 0)
        {
          operator delete(*(v36 - 8));
          v36 -= 12;
          if (*(v38 - 72) == 1)
          {
LABEL_84:
            if (*(v38 - 73) < 0)
            {
              operator delete(*v36);
            }
          }
        }

        else
        {
          v36 -= 12;
          if (*(v38 - 72) == 1)
          {
            goto LABEL_84;
          }
        }

        if (v36 == v35)
        {
          v37 = v70;
          goto LABEL_89;
        }
      }
    }
  }

LABEL_90:
  if (v69 == 1 && v68 < 0)
  {
    operator delete(v67);
  }

  if (v66 == 1 && v65 < 0)
  {
    operator delete(v64);
  }

  if (v62 == 1 && v61 < 0)
  {
    operator delete(v60);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_2714B1E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_2714B1E44(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_2714B23FC(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_2714B32F0(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_2714B38DC(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_2714B42E0(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_2714B4768(&v16, v14);
      }

      else
      {
        sub_2714B2010(&v15, a1);
      }
    }
  }
}

void sub_2714B2010(uint64_t *a1, _DWORD *a2)
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
    sub_2714B4C08(a2, v3 + 200);
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 1;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_2714B4C08(a2, v3 + 200);
    (*(*a2 + 24))(a2);
  }
}

void sub_2714B23FC(uint64_t *a1, uint64_t a2)
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

void sub_2714B2924(uint64_t a1, uint64_t a2)
{
  sub_2714B1860(&v8, a2);
  LOBYTE(__p) = 0;
  v12 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v11 = *(a2 + 40);
    }

    v12 = 1;
  }

  sub_2714B2A64(a1, &v8);
  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  v4 = v8;
  if (v8)
  {
    v5 = v9;
    v6 = v8;
    if (v9 != v8)
    {
      do
      {
        v7 = *(v5 - 9);
        v5 -= 4;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v8;
    }

    v9 = v4;
    operator delete(v6);
  }
}

void sub_2714B2A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B2A50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

void sub_2714B2A64(uint64_t a1, uint64_t a2)
{
  sub_2714B2E00(a2, &v20);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "logger_enable_state_changes";
    *(a1 + 80) = 27;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_2718289B0(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    LOBYTE(v5) = 0;
    *(a1 + 88) = 0;
  }

  v6 = v20.i64[0];
  if (v20.i64[0] != v20.i64[1])
  {
    sub_27182791C(a1 + 48, (a1 + 40));
    *(a1 + 40) = sub_2718289B0(a1);
    if (*(a1 + 88) == 1)
    {
      *(a1 + 88) = 0;
    }

    sub_27182B1E4(a1);
    v21 = *(v6 + 24);
    v24 = 0;
    sub_2714B07D4();
  }

  v19 = *(a1 + 56);
  *(a1 + 40) = *(v19 - 8);
  *(a1 + 56) = v19 - 8;
  if (v5)
  {
    *(a1 + 88) = 0;
  }

  sub_2714B3078(&v20, &v22);
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 8);
    v9 = *a2;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 9);
        v8 -= 4;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *a2;
    }

    *(a2 + 8) = v7;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v22;
  *(a2 + 16) = v23;
  v11 = v20.i64[0];
  if (v20.i64[0])
  {
    v12 = v20.i64[1];
    v13 = v20.i64[0];
    if (v20.i64[1] != v20.i64[0])
    {
      do
      {
        v14 = *(v12 - 9);
        v12 -= 4;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v20.i64[0];
    }

    v20.i64[1] = v11;
    operator delete(v13);
  }

  if (**(a1 + 40) <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "target_context";
    *(a1 + 80) = 14;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  if (*(a2 + 48))
  {
    sub_27182B1E4(a1);
  }

  else
  {
    v22.i8[0] = 0;
    v22.i64[1] = 0;
    v16 = sub_2718289B0(a1);
    v17 = *v16;
    *v16 = 0;
    v22.i8[0] = v17;
    v18 = v16[1];
    v16[1] = v22.i64[1];
    v22.i64[1] = v18;
    sub_2715CC40C(&v22.i64[1], v17);
  }
}

uint64_t sub_2714B2E00@<X0>(void *a1@<X0>, int64x2_t *a2@<X8>)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  result = 0;
  *a2 = vdupq_n_s64(0);
  a2[1].i64[0] = 0;
  return result;
}

void sub_2714B303C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2714B3078@<X0>(void *a1@<X0>, int64x2_t *a2@<X8>)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  result = 0;
  *a2 = vdupq_n_s64(0);
  a2[1].i64[0] = 0;
  return result;
}

void sub_2714B32B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a9);
  _Unwind_Resume(a1);
}

void sub_2714B32F0(uint64_t *a1, uint64_t a2)
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
    sub_2718460EC(&v25, 1u);
  }

  else
  {
    sub_27184636C(&v25, (v16 + 8));
  }

  sub_271840ADC(*(a2 + 24));
  sub_2714B3584(a2, v3 + 200);
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

void sub_2714B3584(uint64_t a1, uint64_t a2)
{
  sub_2714B1860(&v8, a2);
  LOBYTE(__p) = 0;
  v12 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v11 = *(a2 + 40);
    }

    v12 = 1;
  }

  sub_2714B36C4(a1, &v8);
  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  v4 = v8;
  if (v8)
  {
    v5 = v9;
    v6 = v8;
    if (v9 != v8)
    {
      do
      {
        v7 = *(v5 - 9);
        v5 -= 4;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v8;
    }

    v9 = v4;
    operator delete(v6);
  }
}

void sub_2714B3680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B36B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2714B36C4(uint64_t a1, uint64_t *a2)
{
  v4 = (a2[1] - *a2) >> 5;
  v5 = *(a1 + 24);
  if (*(v5 + 40) != 1)
  {
    sub_271846E00((v5 + 8));
    v6 = *a2;
    v7 = a2[1];
    if (v7 == *a2)
    {
      goto LABEL_12;
    }

    while (1)
    {
LABEL_7:
      v8 = *(a1 + 24);
      if (*(v8 + 40) == 1)
      {
        v18 = (v8 + 16);
        sub_271847238(&v18, v6);
        v9 = *(v6 + 6);
        v10 = *(a1 + 24);
        if (*(v10 + 40) != 1)
        {
          goto LABEL_11;
        }

LABEL_6:
        v18 = (v10 + 16);
        sub_271845BC4(&v18, v9);
        v6 += 32;
        if (v6 == v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_271847654((v8 + 8), v6);
        v9 = *(v6 + 6);
        v10 = *(a1 + 24);
        if (*(v10 + 40) == 1)
        {
          goto LABEL_6;
        }

LABEL_11:
        sub_271845FEC((v10 + 8));
        v6 += 32;
        if (v6 == v7)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v18 = (v5 + 16);
  sub_271846AEC(&v18, v4);
  v6 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (*(a2 + 48) == 1)
  {
    v17 = 1;
    v11 = *(a1 + 24);
    if (*(v11 + 40) == 1)
    {
      v18 = (v11 + 16);
      sub_2718454CC(&v18, &v17);
      v12 = *(a1 + 24);
      if (*(v12 + 40) != 1)
      {
        return sub_271847654((v12 + 8), a2 + 3);
      }
    }

    else
    {
      LOBYTE(v18) = 1;
      v15 = *(v11 + 8);
      std::ostream::write();
      v12 = *(a1 + 24);
      if (*(v12 + 40) != 1)
      {
        return sub_271847654((v12 + 8), a2 + 3);
      }
    }

    v18 = (v12 + 16);
    return sub_271847238(&v18, a2 + 3);
  }

  else
  {
    v17 = 0;
    v14 = *(a1 + 24);
    if (*(v14 + 40) == 1)
    {
      v18 = (v14 + 16);
      return sub_2718454CC(&v18, &v17);
    }

    else
    {
      LOBYTE(v18) = 0;
      v16 = *(v14 + 8);
      return std::ostream::write();
    }
  }
}

void sub_2714B38DC(uint64_t *a1, uint64_t a2)
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

void sub_2714B3E04(uint64_t a1, uint64_t a2)
{
  sub_2714B1860(&v8, a2);
  LOBYTE(__p) = 0;
  v12 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v11 = *(a2 + 40);
    }

    v12 = 1;
  }

  sub_2714B3F44(a1, &v8);
  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  v4 = v8;
  if (v8)
  {
    v5 = v9;
    v6 = v8;
    if (v9 != v8)
    {
      do
      {
        v7 = *(v5 - 9);
        v5 -= 4;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v8;
    }

    v9 = v4;
    operator delete(v6);
  }
}

void sub_2714B3F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B3F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

void sub_2714B3F44(uint64_t a1, uint64_t a2)
{
  sub_2714B2E00(a2, &v20);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "logger_enable_state_changes";
    *(a1 + 80) = 27;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_27182815C(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    LOBYTE(v5) = 0;
    *(a1 + 88) = 0;
  }

  v6 = v20.i64[0];
  if (v20.i64[0] != v20.i64[1])
  {
    sub_2715DF0F0(a1 + 48, (a1 + 40));
    *(a1 + 40) = sub_27182815C(a1);
    if (*(a1 + 88) == 1)
    {
      *(a1 + 88) = 0;
    }

    sub_271829354(a1);
    v21 = *(v6 + 24);
    v24 = 0;
    sub_2714B07D4();
  }

  v19 = *(a1 + 56);
  *(a1 + 40) = *(v19 - 8);
  *(a1 + 56) = v19 - 8;
  if (v5)
  {
    *(a1 + 88) = 0;
  }

  sub_2714B3078(&v20, &v22);
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 8);
    v9 = *a2;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 9);
        v8 -= 4;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *a2;
    }

    *(a2 + 8) = v7;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v22;
  *(a2 + 16) = v23;
  v11 = v20.i64[0];
  if (v20.i64[0])
  {
    v12 = v20.i64[1];
    v13 = v20.i64[0];
    if (v20.i64[1] != v20.i64[0])
    {
      do
      {
        v14 = *(v12 - 9);
        v12 -= 4;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v20.i64[0];
    }

    v20.i64[1] = v11;
    operator delete(v13);
  }

  if (**(a1 + 40) <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "target_context";
    *(a1 + 80) = 14;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  if (*(a2 + 48))
  {
    sub_271829354(a1);
  }

  else
  {
    v22.i8[0] = 0;
    v22.i64[1] = 0;
    v16 = sub_27182815C(a1);
    v17 = *v16;
    *v16 = 0;
    v22.i8[0] = v17;
    v18 = v16[1];
    v16[1] = v22.i64[1];
    v22.i64[1] = v18;
    sub_2715CA870(&v22.i64[1], v17);
  }
}

void *sub_2714B42E0(uint64_t *a1, uint64_t a2)
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
  sub_2714B44F4(a2, v3 + 200);
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

void sub_2714B44F4(uint64_t a1, uint64_t a2)
{
  sub_2714B1860(&v8, a2);
  LOBYTE(__p) = 0;
  v12 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v11 = *(a2 + 40);
    }

    v12 = 1;
  }

  sub_2714B4634(a1, &v8);
  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  v4 = v8;
  if (v8)
  {
    v5 = v9;
    v6 = v8;
    if (v9 != v8)
    {
      do
      {
        v7 = *(v5 - 9);
        v5 -= 4;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v8;
    }

    v9 = v4;
    operator delete(v6);
  }
}