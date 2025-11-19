pxrInternal__aapl__pxrReserved__::TfToken *sub_29ABB6524(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29ABB6598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29ABB65B4(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29ABB6628(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABB6644(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = a2;
  *&v47 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1748A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748A18))
  {
    sub_29A008E78(qword_2A1748A00, "");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1748A00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748A18);
    v5 = a2;
  }

  *a4 = 0;
  a4[1] = 0;
  v37 = a4;
  a4[2] = 0;
  if (!a3)
  {
    sub_29A008E78(&__dst, "color");
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    sub_29ABB744C(v44, &__dst.__r_.__value_.__l.__data_, 1);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v13 = *a1;
    v14 = a1[1];
    if (*a1 == v14)
    {
LABEL_69:
      sub_29A0EB4E8(v44);
      return;
    }

    while ((sub_29ABB3370(v13, 0) & 1) != 0)
    {
LABEL_65:
      v13 += 120;
      if (v13 == v14)
      {
        goto LABEL_69;
      }
    }

    memset(v43, 0, 7);
    if ((*(v13 + 95) & 0x8000000000000000) != 0)
    {
      if (!*(v13 + 80))
      {
        goto LABEL_25;
      }
    }

    else if (!*(v13 + 95))
    {
      goto LABEL_25;
    }

    v15 = sub_29A5DAB7C(v44, (v13 + 72));
    v16 = v15;
    if (v15)
    {
      std::to_string(&__dst, *(v15 + 10));
      size = __dst.__r_.__value_.__l.__size_;
      v17 = __dst.__r_.__value_.__r.__words[0];
      v43[0] = __dst.__r_.__value_.__r.__words[2];
      *(v43 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
      v19 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      ++*(v16 + 10);
      goto LABEL_26;
    }

LABEL_25:
    v19 = 0;
    size = 0;
    v17 = 0;
LABEL_26:
    v40 = 0;
    v41 = 0;
    v42 = 0;
    if (*(v13 + 95) < 0)
    {
      v20 = *(v13 + 80);
      if (v20)
      {
        sub_29A008D14(&__dst, *(v13 + 72), v20);
        goto LABEL_31;
      }
    }

    else if (*(v13 + 95))
    {
      __dst = *(v13 + 72);
LABEL_31:
      if (v19 < 0)
      {
        sub_29A008D14(&__p, v17, size);
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = v17;
        __p.__r_.__value_.__l.__size_ = size;
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v43[0];
        *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v43 + 3);
        *(&__p.__r_.__value_.__s + 23) = v19;
      }

      v27 = v41;
      if (v41 >= v42)
      {
        v41 = sub_29AB97520(&v40, &__dst);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v28 = *&__dst.__r_.__value_.__l.__data_;
        *(v41 + 16) = *(&__dst.__r_.__value_.__l + 2);
        *v27 = v28;
        memset(&__dst, 0, sizeof(__dst));
        v29 = __p.__r_.__value_.__r.__words[2];
        *(v27 + 24) = *&__p.__r_.__value_.__l.__data_;
        *(v27 + 40) = v29;
        memset(&__p, 0, sizeof(__p));
        v41 = v27 + 48;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      goto LABEL_57;
    }

    v21 = *(v13 + 52);
    if (v21 == -1)
    {
LABEL_57:
      sub_29ABB7314(*(v13 + 56), *(v13 + 60), &__dst);
      sub_29A008E78(&__p, "");
      v33 = v41;
      if (v41 >= v42)
      {
        v41 = sub_29AB97520(&v40, &__dst);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v34 = *&__dst.__r_.__value_.__l.__data_;
        *(v41 + 16) = *(&__dst.__r_.__value_.__l + 2);
        *v33 = v34;
        memset(&__dst, 0, sizeof(__dst));
        v35 = __p.__r_.__value_.__r.__words[2];
        *(v33 + 24) = *&__p.__r_.__value_.__l.__data_;
        *(v33 + 40) = v35;
        memset(&__p, 0, sizeof(__p));
        v41 = v33 + 48;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst.__r_.__value_.__r.__words[0] = sub_29ABB503C(v5, v13, v13 + 24, qword_2A1748A00, &v40, v13 + 96);
      sub_29A0A71C8(v37, &__dst);
      __dst.__r_.__value_.__r.__words[0] = &v40;
      sub_29A0D2770(&__dst);
      if (v19 < 0)
      {
        operator delete(v17);
      }

      goto LABEL_65;
    }

    std::to_string(&v38, v21);
    v22 = std::string::insert(&v38, 0, "user(slot");
    v23 = *&v22->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&__dst, ")");
    v25 = v24->__r_.__value_.__l.__size_;
    __src = v24->__r_.__value_.__r.__words[0];
    v39[0] = v24->__r_.__value_.__r.__words[2];
    *(v39 + 3) = *(&v24->__r_.__value_.__r.__words[2] + 3);
    v26 = SHIBYTE(v24->__r_.__value_.__r.__words[2]);
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v26 & 0x80000000) == 0)
    {
LABEL_38:
      __dst.__r_.__value_.__r.__words[0] = __src;
      __dst.__r_.__value_.__l.__size_ = v25;
      LODWORD(__dst.__r_.__value_.__r.__words[2]) = v39[0];
      *(&__dst.__r_.__value_.__r.__words[2] + 3) = *(v39 + 3);
      *(&__dst.__r_.__value_.__s + 23) = v26;
      goto LABEL_48;
    }

    sub_29A008D14(&__dst, __src, v25);
LABEL_48:
    if (v19 < 0)
    {
      sub_29A008D14(&__p, v17, size);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = v17;
      __p.__r_.__value_.__l.__size_ = size;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v43[0];
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v43 + 3);
      *(&__p.__r_.__value_.__s + 23) = v19;
    }

    v30 = v41;
    if (v41 >= v42)
    {
      v41 = sub_29AB97520(&v40, &__dst);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v31 = *&__dst.__r_.__value_.__l.__data_;
      *(v41 + 16) = *(&__dst.__r_.__value_.__l + 2);
      *v30 = v31;
      memset(&__dst, 0, sizeof(__dst));
      v32 = __p.__r_.__value_.__r.__words[2];
      *(v30 + 24) = *&__p.__r_.__value_.__l.__data_;
      *(v30 + 40) = v32;
      memset(&__p, 0, sizeof(__p));
      v41 = v30 + 48;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    operator delete(__src);
    goto LABEL_57;
  }

  v9 = *a1;
  if (a1[1] != *a1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if ((sub_29ABB3370(v9 + v10, 0) & 1) == 0)
      {
        if (*(v9 + v10 + 48) != -1)
        {
          v11 = *(v9 + v10 + 48);
        }

        sub_29A008E78(&__dst, "attribute");
        std::to_string(&__p, v11);
        memset(v44, 0, 24);
        sub_29AB96C94(v44, &__dst, &v47, 1uLL);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst.__r_.__value_.__r.__words[0] = sub_29ABB7384(a2, v9 + v10, v9 + v10 + 24, qword_2A1748A00, v44, v9 + v10 + 96);
        sub_29A0A71C8(v37, &__dst);
        ++v11;
        __dst.__r_.__value_.__r.__words[0] = v44;
        sub_29A0D2770(&__dst);
      }

      ++v12;
      v9 = *a1;
      v10 += 120;
    }

    while (v12 < 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3));
  }
}

void sub_29ABB6DF0(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v36 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v24 = a1[1];
  if (*a1 != v24)
  {
    while (1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v5 = *(v3 + 48);
      if (*(v3 + 56) != v5)
      {
        break;
      }

LABEL_22:
      if (*(v3 + 23) >= 0)
      {
        v15 = *(v3 + 23);
      }

      else
      {
        v15 = *(v3 + 8);
      }

      sub_29A022DE0(&v28, v15 + 1);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v28;
      }

      else
      {
        v16 = v28.__r_.__value_.__r.__words[0];
      }

      if (v15)
      {
        if (*(v3 + 23) >= 0)
        {
          v17 = v3;
        }

        else
        {
          v17 = *v3;
        }

        memmove(v16, v17, v15);
      }

      *(&v16->__r_.__value_.__l.__data_ + v15) = 95;
      v18 = *(v3 + 47);
      if (v18 >= 0)
      {
        v19 = (v3 + 24);
      }

      else
      {
        v19 = *(v3 + 24);
      }

      if (v18 >= 0)
      {
        v20 = *(v3 + 47);
      }

      else
      {
        v20 = *(v3 + 32);
      }

      v21 = std::string::append(&v28, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = sub_29ABB76FC(a2, &__dst, &v30);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v26[0] = v23;
      __dst.__r_.__value_.__r.__words[0] = sub_29ABB77C0(a2, v3, v3 + 24, v26);
      sub_29A0A71C8(a3, &__dst);
      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      v3 += 104;
      if (v3 == v24)
      {
        return;
      }
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      std::to_string(&v28, v7 + *(v3 + 96));
      v8 = std::string::insert(&v28, 0, "user(slot");
      v9 = *&v8->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&__dst, ")");
      v11 = v10->__r_.__value_.__r.__words[0];
      size = v10->__r_.__value_.__l.__size_;
      v29[0] = v10->__r_.__value_.__r.__words[2];
      *(v29 + 3) = *(&v10->__r_.__value_.__r.__words[2] + 3);
      v13 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
        if (v13 < 0)
        {
LABEL_10:
          sub_29A008D14(&__dst, v11, size);
          goto LABEL_11;
        }
      }

      else if (v13 < 0)
      {
        goto LABEL_10;
      }

      __dst.__r_.__value_.__r.__words[0] = v11;
      __dst.__r_.__value_.__l.__size_ = size;
      LODWORD(__dst.__r_.__value_.__r.__words[2]) = v29[0];
      *(&__dst.__r_.__value_.__r.__words[2] + 3) = *(v29 + 3);
      *(&__dst.__r_.__value_.__s + 23) = v13;
LABEL_11:
      sub_29A008E78(&__p, "");
      memset(&v28, 0, sizeof(v28));
      sub_29AB96C94(&v28, &__dst, &v36, 1uLL);
      if (v35 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      sub_29ABB7314(*(v5 + v6 + 48), *(v5 + v6 + 52), &__dst);
      v26[0] = 0;
      v26[1] = 0;
      v27 = 0;
      v14 = sub_29ABB75D4(a2, v5 + v6, v5 + v6 + 24, &__dst, &v28, v26, v3 + 24);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst.__r_.__value_.__r.__words[0] = v14;
      sub_29A0A71C8(&v30, &__dst);
      __dst.__r_.__value_.__r.__words[0] = &v28;
      sub_29A0D2770(&__dst);
      if (v13 < 0)
      {
        operator delete(v11);
      }

      ++v7;
      v5 = *(v3 + 48);
      v6 += 56;
      if (v7 >= 0x6DB6DB6DB6DB6DB7 * ((*(v3 + 56) - v5) >> 3))
      {
        goto LABEL_22;
      }
    }
  }
}

void sub_29ABB717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  v39 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABB7270@<X0>(pxrInternal__aapl__pxrReserved__::HgiMetalInterstageBlockShaderSection ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = sub_29ABB79C0(a3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v7 = *a1;
  v6 = a1[1];
  while (v7 != v6)
  {
    StructTypeDeclaration = pxrInternal__aapl__pxrReserved__::HgiMetalInterstageBlockShaderSection::GetStructTypeDeclaration(*v7);
    Members = pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::GetMembers(StructTypeDeclaration);
    result = sub_29A36E4AC(a3, *(a3 + 8), *Members, Members[1], (Members[1] - *Members) >> 3);
    ++v7;
  }

  return result;
}

void sub_29ABB72F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABB7314@<X0>(int a1@<W0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = "";
  if (a2 == 2)
  {
    v3 = "sample_perspective";
  }

  if (a2 == 1)
  {
    v3 = "centroid_perspective";
  }

  v4 = "center_no_perspective";
  if (a2 == 2)
  {
    v4 = "sample_no_perspective";
  }

  if (a2 == 1)
  {
    v4 = "centroid_no_perspective";
  }

  if (a1 == 2)
  {
    v3 = v4;
  }

  if (a1 == 1)
  {
    v5 = "flat";
  }

  else
  {
    v5 = v3;
  }

  return sub_29A008E78(a3, v5);
}

pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection *sub_29ABB7384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29ABB74C4(a2, a3, a4, a5, a6, &v13);
  v7 = v13;
  v12 = v13;
  v13 = 0;
  sub_29AB94DF4((a1 + 48), &v12);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v13;
  v13 = 0;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::~HgiMetalMemberShaderSection(v9);
    operator delete(v10);
  }

  return v7;
}

void sub_29ABB7424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection *a10)
{
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_29B2C2CDC();
  }

  sub_29B2C3F94(&a9, &a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABB744C(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_29AA26980(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

void sub_29ABB74C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = operator new(0xB0uLL);
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14(__dst, *a5, *(a5 + 8));
  }

  else
  {
    *__dst = *a5;
    v16 = *(a5 + 16);
  }

  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::HgiMetalMemberShaderSection(v12, a1, a2, a3, a4, __dst, __p);
  *a6 = v12;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }
}

void *sub_29ABB75D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = operator new(0xB0uLL);
  *__p = *a6;
  v18 = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::HgiMetalMemberShaderSection(v14, a2, a3, a4, a5, __p, a7);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v14;
  sub_29AB94DF4((a1 + 48), __p);
  v15 = __p[0];
  __p[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return v14;
}

void sub_29ABB76C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (__p)
  {
    sub_29B2C2CDC();
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection *sub_29ABB76FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29ABB7890(a2, a3, &v9);
  v4 = v9;
  v8 = v9;
  v9 = 0;
  sub_29AB94DF4((a1 + 48), &v8);
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v9;
  v9 = 0;
  if (v6)
  {
    sub_29ABB7950(&v9, v6);
  }

  return v4;
}

void sub_29ABB7790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  if (a9)
  {
    sub_29B2C2CDC();
  }

  v11 = a10;
  a10 = 0;
  if (v11)
  {
    sub_29ABB7950(&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABB77C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = operator new(0x88uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalInterstageBlockShaderSection::HgiMetalInterstageBlockShaderSection(v8, a2, a3, *a4);
  v11 = v8;
  sub_29AB94DF4((a1 + 48), &v11);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return v8;
}

void sub_29ABB7864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B2C2CDC();
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABB7890(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xC8uLL);
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::HgiMetalStructTypeDeclarationShaderSection(v6, a1, a2, v9, __p);
  *a3 = v6;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29ABB791C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_29ABB7950(int a1, void **this)
{
  if (this)
  {
    if (*(this + 199) < 0)
    {
      operator delete(this[22]);
    }

    if (*(this + 175) < 0)
    {
      operator delete(this[19]);
    }

    v3 = this[16];
    if (v3)
    {
      this[17] = v3;
      operator delete(v3);
    }

    pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::~HgiMetalShaderSection(this);

    operator delete(v4);
  }
}

void *sub_29ABB79C0(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29ABB7A20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABB7A3C(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_29ABB7D48(a1, a2 - v3, a3);
  }
}

uint64_t sub_29ABB7A6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int *a5, unsigned __int8 *a6, uint64_t a7)
{
  v14 = operator new(0xD0uLL);
  v15 = v14;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::HgiMetalBufferShaderSection(v15, a2, EmptyString, a4, *a5, *a6, a7);
  v20 = v15;
  v21 = 0;
  sub_29AB94DF4((a1 + 48), &v20);
  v17 = v20;
  v20 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v18 = v21;
    v21 = 0;
    if (v18)
    {
      sub_29ABB7F18(&v21, v18);
    }
  }

  return v15;
}

void sub_29ABB7B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a9)
  {
    sub_29B2C3FC0();
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABB7B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = operator new(0xD0uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::HgiMetalBufferShaderSection(v6, a2, a3);
  v10 = v6;
  v11 = 0;
  sub_29AB94DF4((a1 + 48), &v10);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      sub_29ABB7F18(&v11, v8);
    }
  }

  return v6;
}

void sub_29ABB7C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a9)
  {
    sub_29B2C3FC0();
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABB7C70(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v6 = 0;
    v7 = a1[1];
    v8 = v7 + 8 * a2;
    v9 = *a3;
    v10 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = (v7 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v6), xmmword_29B430070)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v6 += 2;
      v12 += 2;
    }

    while (v10 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v6);
    a1[1] = v8;
  }

  return a1;
}

void sub_29ABB7D2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABB7D48(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v14 = 0;
      v15 = v7 + 8 * a2;
      v16 = *a3;
      v17 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v18 = vdupq_n_s64(v17);
      v19 = (v7 + 8);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_29B430070)));
        if (v20.i8[0])
        {
          *(v19 - 1) = v16;
        }

        if (v20.i8[4])
        {
          *v19 = v16;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v14);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 3;
    v11 = v6 - *a1;
    if (v11 >> 2 > v9)
    {
      v9 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = sub_29A00C9BC(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v21 = 0;
    v22 = &v13[8 * v10];
    v23 = &v22[8 * a2];
    v24 = *a3;
    v25 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v26 = v25 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = v22 + 8;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v21), xmmword_29B430070)));
      if (v29.i8[0])
      {
        *(v28 - 1) = v24;
      }

      if (v29.i8[4])
      {
        *v28 = v24;
      }

      v21 += 2;
      v28 += 2;
    }

    while (v26 != v21);
    v30 = &v13[8 * v12];
    v31 = *(a1 + 8) - *a1;
    v32 = &v22[-v31];
    memcpy(&v22[-v31], *a1, v31);
    v33 = *a1;
    *a1 = v32;
    *(a1 + 8) = v23;
    *(a1 + 16) = v30;
    if (v33)
    {

      operator delete(v33);
    }
  }
}

void sub_29ABB7F18(int a1, void **this)
{
  if (this)
  {
    if (*(this + 207) < 0)
    {
      operator delete(this[23]);
    }

    if (*(this + 183) < 0)
    {
      operator delete(this[20]);
    }

    if (*(this + 151) < 0)
    {
      operator delete(this[16]);
    }

    pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::~HgiMetalShaderSection(this);

    operator delete(v3);
  }
}

uint64_t sub_29ABB7F88(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5)
{
  v10 = operator new(0xB8uLL);
  v11 = v10;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::HgiMetalSamplerShaderSection(v11, a2, EmptyString, *a4, a5);
  v16 = v11;
  v17 = 0;
  sub_29AB94DF4((a1 + 48), &v16);
  v13 = v16;
  v16 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v14 = v17;
    v17 = 0;
    if (v14)
    {
      sub_29ABB81F4(&v17, v14);
    }
  }

  return v11;
}

void sub_29ABB8064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a9)
  {
    sub_29B2C400C();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABB8098(uint64_t a1, __int128 *a2, void *a3, __int128 **a4, uint64_t *a5, int *a6, unsigned int *a7, char *a8, void *a9, char *a10, char *a11, __int128 *a12)
{
  v20 = operator new(0x100uLL);
  v21 = v20;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v20);
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::HgiMetalTextureShaderSection(v21, a2, EmptyString, a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, a12);
  v26 = v21;
  v27 = 0;
  sub_29AB94DF4((a1 + 48), &v26);
  v23 = v26;
  v26 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
    v24 = v27;
    v27 = 0;
    if (v24)
    {
      sub_29ABB8254(&v27, v24);
    }
  }

  return v21;
}

void sub_29ABB81C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a11)
  {
    sub_29B2C4058();
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABB81F4(int a1, void **this)
{
  if (this)
  {
    if (*(this + 183) < 0)
    {
      operator delete(this[20]);
    }

    if (*(this + 151) < 0)
    {
      operator delete(this[16]);
    }

    pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::~HgiMetalShaderSection(this);

    operator delete(v3);
  }
}

void sub_29ABB8254(int a1, void **this)
{
  if (this)
  {
    if (*(this + 255) < 0)
    {
      operator delete(this[29]);
    }

    if (*(this + 231) < 0)
    {
      operator delete(this[26]);
    }

    if (*(this + 207) < 0)
    {
      operator delete(this[23]);
    }

    if (*(this + 151) < 0)
    {
      operator delete(this[16]);
    }

    pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::~HgiMetalShaderSection(this);

    operator delete(v3);
  }
}

uint64_t sub_29ABB82D4(void *a1, char a2)
{
  sub_29A008864(v35);
  if (sub_29B275AB0(2, 100, 100, 0))
  {
    sub_29A00911C(&v36, "#define ARCH_OS_MACOS\n", 22);
    if ([a1 supportsFeatureSet:10003])
    {
      sub_29A00911C(&v36, "#define METAL_FEATURESET_MACOS_GPUFAMILY1_v3\n", 45);
    }
  }

  if (sub_29B275AB0(2, 100, 100, 0) && [a1 supportsFeatureSet:10004])
  {
    sub_29A00911C(&v36, "#define METAL_FEATURESET_MACOS_GPUFAMILY1_v4\n", 45);
  }

  if (sub_29B275AB0(2, 100, 100, 0) && [a1 supportsFeatureSet:10005])
  {
    sub_29A00911C(&v36, "#define METAL_FEATURESET_MACOS_GPUFAMILY2_v1\n", 45);
  }

  sub_29A00911C(&v36, "#define ARCH_OS_IPHONE\n", 23);
  if ([a1 supportsFeatureSet:12])
  {
    sub_29A00911C(&v36, "#define METAL_FEATURESET_IOS_GPUFAMILY1_v5\n", 43);
  }

  if ([a1 supportsFeatureSet:12])
  {
    sub_29A00911C(&v36, "#define METAL_FEATURESET_IOS_GPUFAMILY2_v5\n", 43);
  }

  if ([a1 supportsFeatureSet:13])
  {
    sub_29A00911C(&v36, "#define METAL_FEATURESET_IOS_GPUFAMILY3_v4\n", 43);
  }

  if ([a1 supportsFeatureSet:14])
  {
    sub_29A00911C(&v36, "#define METAL_FEATURESET_IOS_GPUFAMILY4_v2\n", 43);
  }

  v4 = sub_29A00911C(&v36, "#include <metal_stdlib>\n", 24);
  v5 = sub_29A00911C(v4, "#include <simd/simd.h>\n", 23);
  v6 = sub_29A00911C(v5, "#include <metal_pack>\n", 22);
  v7 = sub_29A00911C(v6, "#pragma clang diagnostic ignored -Wunused-variable\n", 53);
  v8 = sub_29A00911C(v7, "#pragma clang diagnostic ignored -Wsign-compare\n", 50);
  sub_29A00911C(v8, "using namespace metal;\n", 23);
  v9 = sub_29A00911C(&v36, "#define double float\n", 21);
  v10 = sub_29A00911C(v9, "#define vec2 float2\n", 20);
  v11 = sub_29A00911C(v10, "#define vec3 float3\n", 20);
  v12 = sub_29A00911C(v11, "#define vec4 float4\n", 20);
  v13 = sub_29A00911C(v12, "#define mat2 float2x2\n", 22);
  v14 = sub_29A00911C(v13, "#define mat3 float3x3\n", 22);
  v15 = sub_29A00911C(v14, "#define mat4 float4x4\n", 22);
  v16 = sub_29A00911C(v15, "#define ivec2 int2\n", 19);
  v17 = sub_29A00911C(v16, "#define ivec3 int3\n", 19);
  v18 = sub_29A00911C(v17, "#define ivec4 int4\n", 19);
  v19 = sub_29A00911C(v18, "#define uvec2 uint2\n", 20);
  v20 = sub_29A00911C(v19, "#define uvec3 uint3\n", 20);
  v21 = sub_29A00911C(v20, "#define uvec4 uint4\n", 20);
  v22 = sub_29A00911C(v21, "#define bvec2 BOOL2\n", 20);
  v23 = sub_29A00911C(v22, "#define bvec3 BOOL3\n", 20);
  v24 = sub_29A00911C(v23, "#define bvec4 BOOL4\n", 20);
  v25 = sub_29A00911C(v24, "#define dvec2 float2\n", 21);
  v26 = sub_29A00911C(v25, "#define dvec3 float3\n", 21);
  v27 = sub_29A00911C(v26, "#define dvec4 float4\n", 21);
  v28 = sub_29A00911C(v27, "#define dmat2 float2x2\n", 23);
  v29 = sub_29A00911C(v28, "#define dmat3 float3x3\n", 23);
  v30 = sub_29A00911C(v29, "#define dmat4 float4x4\n", 23);
  v31 = sub_29A00911C(v30, "#define usampler1DArray texture1d_array<uint16_t>\n", 50);
  v32 = sub_29A00911C(v31, "#define sampler2DArray texture2d_array<float>\n", 46);
  sub_29A00911C(v32, "#define sampler2DShadow depth2d<float>\n", 39);
  sub_29A00911C(&v36, "#define MAT4 mat4\n", 18);
  sub_29A00911C(&v36, "#define REF(space,type) space type &\n#define FORWARD_DECL(...)\n#define ATOMIC_LOAD(a) atomic_load_explicit(&a, memory_order_relaxed)\n#define ATOMIC_STORE(a, v) atomic_store_explicit(&a, v, memory_order_relaxed)\n#define ATOMIC_ADD(a, v) atomic_fetch_add_explicit(&a, v, memory_order_relaxed)\n#define ATOMIC_EXCHANGE(a, desired) atomic_exchange_explicit(&a, desired, memory_order_relaxed)\nint atomicCompSwap(device atomic_int *a, int expected, int desired) {\n    int found = expected;\n    while (!atomic_compare_exchange_weak_explicit(a, &found, desired,\n        memory_order_relaxed, memory_order_relaxed)) {\n        if (found != expected) { return found; }\n        else { found = expected; }\n    } return expected; }\nuint atomicCompSwap(device atomic_uint *a, uint expected, uint desired) {\n    uint found = expected;\n    while (!atomic_compare_exchange_weak_explicit(a, &found, desired,\n        memory_order_relaxed, memory_order_relaxed)) {\n        if (found != expected) { return found; }\n        else { found = expected; }\n    } return expected; }\n#define ATOMIC_COMP_SWAP(a, expected, desired) atomicCompSwap(&a, expected, desired)\n\n", 1136);
  sub_29A00911C(&v36, "struct hgi_ivec3 { int    x, y, z;\n  hgi_ivec3(int _x, int _y, int _z): x(_x), y(_y), z(_z) {}\n};\nstruct hgi_vec3  { float  x, y, z;\n  hgi_vec3(float _x, float _y, float _z): x(_x), y(_y), z(_z) {}\n};\nstruct hgi_dvec3 { double x, y, z;\n  hgi_dvec3(double _x, double _y, double _z): x(_x), y(_y), z(_z) {}\n};\nstruct hgi_mat3 { float m00, m01, m02,\n                        m10, m11, m12,\n                        m20, m21, m22;\n  hgi_mat3(float _00, float _01, float _02, \\\n           float _10, float _11, float _12, \\\n           float _20, float _21, float _22) \\\n             : m00(_00), m01(_01), m02(_02) \\\n             , m10(_10), m11(_11), m12(_12) \\\n             , m20(_20), m21(_21), m22(_22) {}\n};\nstruct hgi_dmat3 { double m00, m01, m02,\n                          m10, m11, m12,\n                          m20, m21, m22;\n  hgi_dmat3(double _00, double _01, double _02, \\\n            double _10, double _11, double _12, \\\n            double _20, double _21, double _22) \\\n              : m00(_00), m01(_01), m02(_02) \\\n              , m10(_10), m11(_11), m12(_12) \\\n              , m20(_20), m21(_21), m22(_22) {}\n};\n\nmat4 inverse_fast(float4x4 a) { return transpose(a); }\nmat4 inverse(float4x4 a) {\n    float b00 = a[0][0] * a[1][1] - a[0][1] * a[1][0];\n    float b01 = a[0][0] * a[1][2] - a[0][2] * a[1][0];\n    float b02 = a[0][0] * a[1][3] - a[0][3] * a[1][0];\n    float b03 = a[0][1] * a[1][2] - a[0][2] * a[1][1];\n    float b04 = a[0][1] * a[1][3] - a[0][3] * a[1][1];\n    float b05 = a[0][2] * a[1][3] - a[0][3] * a[1][2];\n    float b06 = a[2][0] * a[3][1] - a[2][1] * a[3][0];\n    float b07 = a[2][0] * a[3][2] - a[2][2] * a[3][0];\n    float b08 = a[2][0] * a[3][3] - a[2][3] * a[3][0];\n    float b09 = a[2][1] * a[3][2] - a[2][2] * a[3][1];\n    float b10 = a[2][1] * a[3][3] - a[2][3] * a[3][1];\n    float b11 = a[2][2] * a[3][3] - a[2][3] * a[3][2];\n    float invdet = 1.0 / (b00 * b11 - b01 * b10 + b02 * b09 +\n                          b03 * b08 - b04 * b07 + b05 * b06);\n    return mat4(a[1][1] * b11 - a[1][2] * b10 + a[1][3] * b09,\n                a[0][2] * b10 - a[0][1] * b11 - a[0][3] * b09,\n                a[3][1] * b05 - a[3][2] * b04 + a[3][3] * b03,\n                a[2][2] * b04 - a[2][1] * b05 - a[2][3] * b03,\n                a[1][2] * b08 - a[1][0] * b11 - a[1][3] * b07,\n                a[0][0] * b11 - a[0][2] * b08 + a[0][3] * b07,\n                a[3][2] * b02 - a[3][0] * b05 - a[3][3] * b01,\n                a[2][0] * b05 - a[2][2] * b02 + a[2][3] * b01,\n                a[1][0] * b10 - a[1][1] * b08 + a[1][3] * b06,\n                a[0][1] * b08 - a[0][0] * b10 - a[0][3] * b06,\n                a[3][0] * b04 - a[3][1] * b02 + a[3][3] * b00,\n                a[2][1] * b02 - a[2][0] * b04 - a[2][3] * b00,\n                a[1][1] * b07 - a[1][0] * b09 - a[1][2] * b06,\n                a[0][0] * b09 - a[0][1] * b07 + a[0][2] * b06,\n                a[3][1] * b01 - a[3][0] * b03 - a[3][2] * b00,\n                a[2][0] * b03 - a[2][1] * b01 + a[2][2] * b00) * invdet;\n}\n\n", 3011);
  sub_29A00911C( &v36,  "#define in /*in*/\n #define radians(d) (d * 0.01745329252)\n #define noperspective /*center_no_perspective MTL_FIXME*/\n #define dFdx    dfdx\n #define dFdy    dfdy\n #define lessThan(a, b) ((a) < (b))\n #define lessThanEqual(a, b) ((a) <= (b))\n #define greaterThan(a, b) ((a) > (b))\n #define greaterThanEqual(a, b) ((a) >= (b))\n #define equal(a, b) ((a) == (b))\n #define notEqual(a, b) ((a) != (b))\n union HgiPackedf16 { uint i; half2 h; };\n"
    "vec2 unpackHalf2x16(uint val)\n"
    "{\n"
    "    HgiPackedf16 v;\n"
    "    v.i = val;\n"
    "    return vec2(v.h.x, v.h.y);\n"
    "}\n"
    "uint packHalf2x16(vec2 val)\n"
    "{\n"
    "    HgiPackedf16 v;\n"
    "    v.h = half2(val.x, val.y);\n"
    "    return v.i;\n"
    "}\n"
    "template <typename T>\n"
    "T mod(T y, T x) { return fmod(y, x); }\n"
    "\n"
    "template <typename T>\n"
    "T atan(T y, T x) { return atan2(y, x); }\n"
    "\n"
    "template <typename T>\n"
    "T bitfieldReverse(T x) { return reverse_bits(x); }\n"
    "\n"
    "template <typename T>\n"
    "T bitfieldExtract(T value, int offset, int bits) {\n"
    "  return extract_bits(value, offset, bits); }\n"
    "\n"
    "template <typename T>\n"
    "int imageSize1d(T texture) {\n"
    "    return int(texture.get_width());\n"
    "}\n"
    "template <typename T>\n"
    "ivec2 imageSize2d(T texture) {\n"
    "    return ivec2(texture.get_width(), texture.get_height());\n"
    "}\n"
    "template <typename T>\n"
    "ivec3 imageSize3d(T texture) {\n"
    "    return ivec3(texture.get_width(),\n"
    "        texture.get_height(), texture.get_depth());\n"
    "}\n"
    "template <typename T>\n"
    "ivec2 textureSize(T texture, uint lod = 0) {\n"
    "    return ivec2(texture.get_width(lod), texture.get_height(lod));\n"
    "}\n"
    "ivec2 textureSize(texture1d_array<uint16_t> texture, uint lod = 0) {\n"
    "    return ivec2(texture.get_width(),\n"
    "        texture.get_array_size());\n"
    "}\n"
    "ivec3 textureSize(texture2d_array<float> texture, uint lod = 0) {\n"
    "    return ivec3(texture.get_width(lod),\n"
    "        texture.get_height(lod), texture.get_array_size());\n"
    "}\n"
    "template <typename T>\n"
    "int textureSize1d(T texture, uint lod = 0) {\n"
    "    return int(texture.get_width());\n"
    "}\n"
    "template <typename T>\n"
    "ivec2 textureSize2d(T texture, uint lod = 0) {\n"
    "    return ivec2(texture.get_width(lod), texture.get_height(lod));\n"
    "}\n"
    "template <typename T>\n"
    "ivec3 textureSize3d(T texture, uint lod = 0) {\n"
    "    return ivec3(texture.get_width(lod),\n"
    "        texture.get_height(lod), texture.get_depth(lod));\n"
    "}\n"
    "\n"
    "template<typename T, typename Tc>\n"
    "float4 texelFetch(T texture, Tc coords, uint lod = 0) {\n"
    "    return texture.read(uint2(coords), lod);\n"
    "}\n"
    "template<typename Tc>\n"
    "uint4 texelFetch(texture1d_array<uint16_t> texture, Tc coords, uint lod = 0) {\n"
    "    return uint4(texture.read((uint)coords.x, (uint)coords.y, 0));\n"
    "}\n"
    "template<typename Tc>\n"
    "vec4 texelFetch(texture2d_array<float> texture, Tc coords, uint lod = 0) {\n"
    "    return texture.read(uint2(coords.xy), (uint)coords.z, 0);\n"
    "}\n"
    "#define textureQueryLevels(texture) texture.get_num_mip_levels()\n"
    "template <typename T, typename Tv>\n"
    "void imageStore(T texture, short2 coords, Tv color) {\n"
    "    return texture.write(color, ushort2(coords.x, coords.y));\n"
    "}\n"
    "template <typename T, typename Tv>\n"
    "void imageStore(T texture, int2 coords, Tv color) {\n"
    "    return texture.write(color, uint2(coords.x, coords.y));\n"
    "}\n"
    "\n"
    "constexpr sampler texelSampler(address::clamp_to_edge,\n"
    "                               filter::linear);\n"
    "template<typename T, typename Tc>\n"
    "float4 texture(T texture, Tc coords) {\n"
    "    return texture.sample(texelSampler, coords);\n"
    "}\n"
    "template<typename Tc>\n"
    "vec4 texture(texture2d_array<float> texture, Tc coords) {\n"
    "    return texture.sample(texelSampler, coords.xy, coords.z);\n"
    "}\n",
    3366);
  if (a2)
  {
    sub_29A00911C(&v36, "int HgiGetBaseVertex() {\n  return 0;\n}\n", 39);
  }

  std::stringbuf::str();
  v35[0] = *MEMORY[0x29EDC9528];
  v33 = *(MEMORY[0x29EDC9528] + 72);
  *(v35 + *(v35[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v36 = v33;
  v37 = MEMORY[0x29EDC9570] + 16;
  if (v39 < 0)
  {
    operator delete(v38[7].__locale_);
  }

  v37 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v40);
}

void sub_29ABB8834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

void sub_29ABB8848(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = operator new(0xB0uLL);
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14(__dst, *a5, *(a5 + 8));
  }

  else
  {
    *__dst = *a5;
    v16 = *(a5 + 16);
  }

  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::HgiMetalMemberShaderSection(v12, a1, a2, a3, a4, __dst, __p);
  *a6 = v12;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }
}

unint64_t sub_29ABB8958()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "bufferBindings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "samplerBindings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "textureBindings", 0);
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A1748928, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A1748928);
  }

  return v0;
}

void sub_29ABB8AD4(_Unwind_Exception *a1)
{
  v4 = 16;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29ABB8B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = operator new(0xC8uLL);
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::HgiMetalStructTypeDeclarationShaderSection(v8, a2, a3, a4, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = 0;
  __p[0] = v8;
  sub_29AB94DF4((a1 + 48), __p);
  v9 = __p[0];
  __p[0] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v11 = 0;
  }

  return v8;
}

void sub_29ABB8C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    sub_29B2C40A4();
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABB8C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  v12 = operator new(0xA8uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalParameterInputShaderSection::HgiMetalParameterInputShaderSection(v12, a2, a3, a4, *a5, *a6);
  v16 = v12;
  v17 = 0;
  sub_29AB94DF4((a1 + 48), &v16);
  v13 = v16;
  v16 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v14 = v17;
    v17 = 0;
    if (v14)
    {
      sub_29ABB8D8C(&v17, v14);
    }
  }

  return v12;
}

void sub_29ABB8D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a9)
  {
    sub_29B2C40F0();
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABB8D8C(int a1, void **this)
{
  if (this)
  {
    if (*(this + 159) < 0)
    {
      operator delete(this[17]);
    }

    pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::~HgiMetalShaderSection(this);

    operator delete(v3);
  }
}

void *sub_29ABB8DDC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t *a6)
{
  v12 = operator new(0x88uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalStageOutputShaderSection::HgiMetalStageOutputShaderSection(v12, a2, a3, a4, *a5, *a6);
  v15 = v12;
  sub_29AB94DF4((a1 + 48), &v15);
  v13 = v15;
  v15 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return v12;
}

void sub_29ABB8E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B2C2CDC();
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABB8EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  v12 = operator new(0xA8uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalArgumentBufferInputShaderSection::HgiMetalArgumentBufferInputShaderSection(v12, a2, a3, a4, *a5, *a6);
  v16 = v12;
  v17 = 0;
  sub_29AB94DF4((a1 + 48), &v16);
  v13 = v16;
  v16 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v14 = v17;
    v17 = 0;
    if (v14)
    {
      sub_29ABB8D8C(&v17, v14);
    }
  }

  return v12;
}

void sub_29ABB8F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a9)
  {
    sub_29B2C40F0();
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABB8FC8(int a1, void **this)
{
  if (this)
  {
    if (*(this + 151) < 0)
    {
      operator delete(this[16]);
    }

    pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::~HgiMetalShaderSection(this);

    operator delete(v3);
  }
}

uint64_t sub_29ABB9018(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 48), *a2, *(a2 + 1));
  }

  else
  {
    v16 = *a2;
    *(a1 + 64) = *(a2 + 2);
    *(a1 + 48) = v16;
  }

  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 72), *a4, *(a4 + 1));
  }

  else
  {
    v17 = *a4;
    *(a1 + 88) = *(a4 + 2);
    *(a1 + 72) = v17;
  }

  if (*(a5 + 23) < 0)
  {
    sub_29A008D14((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v18 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v18;
  }

  if (*(a6 + 23) < 0)
  {
    sub_29A008D14((a1 + 120), *a6, *(a6 + 1));
  }

  else
  {
    v19 = *a6;
    *(a1 + 136) = *(a6 + 2);
    *(a1 + 120) = v19;
  }

  sub_29A008864(v33);
  v32 = a3;
  v20 = sub_29A00911C(&v34, "MSL", 3);
  if (*(a1 + 95) >= 0)
  {
    v21 = (a1 + 72);
  }

  else
  {
    v21 = *(a1 + 72);
  }

  v39[0] = __toupper(*v21);
  v22 = sub_29A00911C(v20, v39, 1);
  if (*(a1 + 95) >= 0)
  {
    v23 = a1 + 72;
  }

  else
  {
    v23 = *(a1 + 72);
  }

  v39[0] = *(v23 + 1);
  v24 = sub_29A00911C(v22, v39, 1);
  sub_29A00911C(v24, "Outputs", 7);
  std::stringbuf::str();
  v33[0] = *MEMORY[0x29EDC9528];
  v25 = *(MEMORY[0x29EDC9528] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v34 = v25;
  v35 = MEMORY[0x29EDC9570] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v38);
  if (*(a6 + 23) >= 0)
  {
    v26 = *(a6 + 23);
  }

  else
  {
    v26 = *(a6 + 1);
  }

  sub_29A022DE0(a1 + 168, v26 + 10);
  if (*(a1 + 191) >= 0)
  {
    v27 = (a1 + 168);
  }

  else
  {
    v27 = *(a1 + 168);
  }

  if (v26)
  {
    if (*(a6 + 23) >= 0)
    {
      v28 = a6;
    }

    else
    {
      v28 = *a6;
    }

    memmove(v27, v28, v26);
  }

  strcpy(v27 + v26, "EntryPoint");
  if (*(a8 + 23) < 0)
  {
    sub_29A008D14((a1 + 192), *a8, *(a8 + 1));
  }

  else
  {
    v29 = *a8;
    *(a1 + 208) = *(a8 + 2);
    *(a1 + 192) = v29;
  }

  if (*(a7 + 23) < 0)
  {
    sub_29A008D14((a1 + 216), *a7, *(a7 + 1));
  }

  else
  {
    v30 = *a7;
    *(a1 + 232) = *(a7 + 2);
    *(a1 + 216) = v30;
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::_Init(a1, a2 + 6, a2 + 15, a2 + 18, a2 + 21, a2 + 24, a2 + 27, v32);
  return a1;
}

void sub_29ABB93DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 215) < 0)
  {
    operator delete(*(v10 + 192));
  }

  if (*(v10 + 191) < 0)
  {
    operator delete(*v12);
  }

  if (*(v10 + 167) < 0)
  {
    operator delete(*(v10 + 144));
  }

  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*v11);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABB94B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29ABB94EC(v3);

    operator delete(v4);
  }
}

uint64_t sub_29ABB94EC(uint64_t a1)
{
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram *pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram::HgiMetalShaderProgram(pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram *this, pxrInternal__aapl__pxrReserved__::HgiShaderFunction ***a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HgiShaderProgram::HgiShaderProgram(this, a2);
  *v4 = &unk_2A20751F0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  v5 = a2[3];
  v6 = a2[4];
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = *(pxrInternal__aapl__pxrReserved__::HgiShaderFunction::GetDescriptor(*v5) + 24);
    if (v8 <= 3)
    {
      if (v8 == 1)
      {
        *(this + 10) = pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction::GetShaderId(v7);
      }

      else if (v8 == 2)
      {
        *(this + 11) = pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction::GetShaderId(v7);
      }
    }

    else
    {
      switch(v8)
      {
        case 4:
          *(this + 12) = pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction::GetShaderId(v7);
          break;
        case 64:
          *(this + 14) = pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction::GetShaderId(v7);
          break;
        case 128:
          *(this + 13) = pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction::GetShaderId(v7);
          break;
      }
    }

    v5 += 2;
  }

  return this;
}

void sub_29ABB96BC(_Unwind_Exception *a1)
{
  if (v1[79] < 0)
  {
    operator delete(*v2);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderProgram::~HgiShaderProgram(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram::~HgiMetalShaderProgram(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderProgram::~HgiShaderProgram(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram::~HgiMetalShaderProgram(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram::GetByteSizeOfResource(pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1;
    v1 += 2;
    v3 += (*(*v4 + 32))(v4);
  }

  while (v1 != v2);
  return v3;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::~HgiMetalShaderSection(void **this)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::WriteAttributesWithIndex(pxrInternal__aapl__pxrReserved__::HgiShaderSection *a1, void *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HgiShaderSection::GetAttributes(a1);
  v4 = result;
  v6 = *result;
  v5 = result[1];
  if (v5 != *result)
  {
    result = sub_29A00911C(a2, "[[", 2);
    v6 = *v4;
    v5 = v4[1];
  }

  if (v5 != v6)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (v8)
      {
        sub_29A00911C(a2, ", ", 2);
        v6 = *v4;
      }

      v9 = v6 + v7;
      v10 = *(v6 + v7 + 23);
      if (v10 >= 0)
      {
        v11 = v6 + v7;
      }

      else
      {
        v11 = *(v6 + v7);
      }

      if (v10 >= 0)
      {
        v12 = *(v6 + v7 + 23);
      }

      else
      {
        v12 = *(v6 + v7 + 8);
      }

      result = sub_29A00911C(a2, v11, v12);
      if ((*(v9 + 47) & 0x8000000000000000) != 0)
      {
        if (*(v9 + 32))
        {
LABEL_15:
          v13 = sub_29A00911C(a2, "(", 1);
          v14 = *(v9 + 47);
          if (v14 >= 0)
          {
            v15 = v9 + 24;
          }

          else
          {
            v15 = *(v9 + 24);
          }

          if (v14 >= 0)
          {
            v16 = *(v9 + 47);
          }

          else
          {
            v16 = *(v6 + v7 + 32);
          }

          v17 = sub_29A00911C(v13, v15, v16);
          result = sub_29A00911C(v17, ")", 1);
        }
      }

      else if (*(v9 + 47))
      {
        goto LABEL_15;
      }

      ++v8;
      v6 = *v4;
      v18 = v4[1];
      v7 += 48;
      if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v18 - *v4) >> 4))
      {
        if (v18 != v6)
        {

          return sub_29A00911C(a2, "]]", 2);
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::HgiMetalMemberShaderSection(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 **a5, __int128 *a6, __int128 *a7)
{
  __p = 0uLL;
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, a2, a5, &__p, a6, a7);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  *a1 = &unk_2A2075250;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 128), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 144) = *(a3 + 2);
    *(a1 + 128) = v10;
  }

  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 152), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 168) = *(a4 + 2);
    *(a1 + 152) = v11;
  }

  return a1;
}

void sub_29ABB9AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 151) < 0)
  {
    operator delete(*v16);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(v15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::~HgiMetalMemberShaderSection(void **this)
{
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::~HgiMetalMemberShaderSection(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::WriteType(uint64_t a1, void *a2)
{
  v5 = *(a1 + 128);
  v3 = a1 + 128;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_29A00911C(a2, v7, v8);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::WriteParameter(uint64_t a1, void *a2)
{
  v4 = *(a1 + 151);
  if (v4 >= 0)
  {
    v5 = a1 + 128;
  }

  else
  {
    v5 = *(a1 + 128);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 151);
  }

  else
  {
    v6 = *(a1 + 136);
  }

  sub_29A00911C(a2, v5, v6);
  sub_29A00911C(a2, " ", 1);
  result = pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  if ((*(a1 + 175) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 160))
    {
      return result;
    }
  }

  else if (!*(a1 + 175))
  {
    return result;
  }

  v8 = sub_29A00911C(a2, "[[", 2);
  v9 = *(a1 + 175);
  if (v9 >= 0)
  {
    v10 = a1 + 152;
  }

  else
  {
    v10 = *(a1 + 152);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 175);
  }

  else
  {
    v11 = *(a1 + 160);
  }

  v12 = sub_29A00911C(v8, v10, v11);

  return sub_29A00911C(v12, "]]", 2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::VisitScopeMemberDeclarations(uint64_t a1, void *a2)
{
  if ((*(a1 + 127) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 112))
    {
LABEL_5:
      pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteDeclaration(a1, a2);
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v3 = std::locale::use_facet(&v5, MEMORY[0x29EDC93D0]);
      (v3->__vftable[2].~facet_0)(v3, 10);
      std::locale::~locale(&v5);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  else if (!*(a1 + 127))
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::HgiMetalSamplerShaderSection(uint64_t a1, __int128 *a2, __int128 *a3, int a4, __int128 **a5)
{
  std::operator+<char>();
  v17 = 0uLL;
  v18 = 0;
  v15 = 0uLL;
  v16 = 0;
  __p = 0uLL;
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, &v19, a5, &v17, &v15, &__p);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  *a1 = &unk_2A20752F0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 128), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 144) = *(a2 + 2);
    *(a1 + 128) = v10;
  }

  *(a1 + 152) = a4;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 160), *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 176) = *(a3 + 2);
    *(a1 + 160) = v11;
  }

  return a1;
}

void sub_29ABB9EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (*(v21 + 151) < 0)
  {
    operator delete(*v22);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(v21);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::WriteType(uint64_t a1, void *a2)
{
  if (*(a1 + 152))
  {
    v5 = sub_29A00911C(a2, "array<sampler, ", 15);
    v8 = *(a1 + 128);
    v7 = a1 + 128;
    v6 = v8;
    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = *(v7 + 8);
    }

    v12 = sub_29A00911C(v5, v10, v11);
    v13 = "_SIZE>";
    v14 = 6;
  }

  else
  {
    v13 = "sampler";
    v12 = a2;
    v14 = 7;
  }

  return sub_29A00911C(v12, v13, v14);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::WriteParameter(uint64_t a1, void *a2)
{
  if (*(a1 + 152))
  {
    v4 = sub_29A00911C(a2, "#define ", 8);
    v5 = *(a1 + 151);
    if (v5 >= 0)
    {
      v6 = a1 + 128;
    }

    else
    {
      v6 = *(a1 + 128);
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 151);
    }

    else
    {
      v7 = *(a1 + 136);
    }

    v8 = sub_29A00911C(v4, v6, v7);
    v9 = sub_29A00911C(v8, "_SIZE ", 6);
    v10 = MEMORY[0x29C2C1EE0](v9, *(a1 + 152));
    sub_29A00911C(v10, "\n", 1);
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::WriteType(a1, a2);
  sub_29A00911C(a2, " ", 1);

  return pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::VisitScopeConstructorDeclarations(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::WriteType(a1, a2);
  sub_29A00911C(a2, " _", 2);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::VisitScopeConstructorInitialization(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, "(_", 2);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, ")", 1);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::VisitScopeConstructorInstantiation(uint64_t a1, void *a2)
{
  v4 = *(a1 + 183);
  if (v4 < 0)
  {
    if (!*(a1 + 168))
    {
      goto LABEL_10;
    }
  }

  else if (!*(a1 + 183))
  {
    goto LABEL_10;
  }

  if (v4 >= 0)
  {
    v5 = a1 + 160;
  }

  else
  {
    v5 = *(a1 + 160);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 183);
  }

  else
  {
    v6 = *(a1 + 168);
  }

  v7 = sub_29A00911C(a2, v5, v6);
  sub_29A00911C(v7, "->", 2);
LABEL_10:
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalSamplerShaderSection::VisitScopeMemberDeclarations(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteDeclaration(a1, a2);
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v3 = std::locale::use_facet(&v5, MEMORY[0x29EDC93D0]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v5);
  std::ostream::put();
  std::ostream::flush();
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::HgiMetalTextureShaderSection(uint64_t a1, __int128 *a2, __int128 *a3, __int128 **a4, uint64_t a5, int a6, uint64_t a7, char a8, int a9, char a10, char a11, __int128 *a12)
{
  std::operator+<char>();
  v34 = 0uLL;
  v35 = 0;
  __p = 0uLL;
  v33 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, &v28, a4, a12, &v34, &__p);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  *a1 = &unk_2A2075390;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 128), *a2, *(a2 + 1));
  }

  else
  {
    v20 = *a2;
    *(a1 + 144) = *(a2 + 2);
    *(a1 + 128) = v20;
  }

  *(a1 + 184) = 0u;
  *(a1 + 152) = a5;
  *(a1 + 160) = a6;
  *(a1 + 164) = a7;
  *(a1 + 168) = a8;
  *(a1 + 172) = a9;
  *(a1 + 176) = a10;
  *(a1 + 177) = a11;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 232), *a3, *(a3 + 1));
    a7 = *(a1 + 164);
  }

  else
  {
    v21 = *a3;
    *(a1 + 248) = *(a3 + 2);
    *(a1 + 232) = v21;
  }

  HIDWORD(v23) = pxrInternal__aapl__pxrReserved__::HgiGetComponentBaseFormat(a7);
  LODWORD(v23) = HIDWORD(v23);
  v22 = v23 >> 1;
  if (v22 <= 6)
  {
    v24 = "float";
    switch(v22)
    {
      case 0:
        goto LABEL_26;
      case 3:
        v24 = "half";
        goto LABEL_26;
      case 5:
LABEL_26:
        MEMORY[0x29C2C1A60](a1 + 184, v24);
        v26 = "vec";
        goto LABEL_28;
    }

LABEL_24:
    *&v28 = "hgiMetal/shaderSection.mm";
    *(&v28 + 1) = "HgiMetalTextureShaderSection";
    v29 = 263;
    v30 = "pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::HgiMetalTextureShaderSection(const std::string &, const std::string &, const HgiShaderSectionAttributeVector &, const HgiMetalSamplerShaderSection *, uint32_t, HgiFormat, BOOL, uint32_t, BOOL, BOOL, const std::string &)";
    v31 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v28, 1, "Invalid Format");
    v24 = "float";
    goto LABEL_26;
  }

  if (v22 == 7)
  {
    v25 = "int16_t";
    goto LABEL_23;
  }

  if (v22 != 9)
  {
    if (v22 != 11)
    {
      goto LABEL_24;
    }

    v25 = "int32_t";
LABEL_23:
    MEMORY[0x29C2C1A60](a1 + 184, v25);
    v26 = "ivec";
    goto LABEL_28;
  }

  MEMORY[0x29C2C1A60](a1 + 184, "uint16_t");
  v26 = "uvec";
LABEL_28:
  MEMORY[0x29C2C1A60](a1 + 208, v26);
  if (a10)
  {
    MEMORY[0x29C2C1A60](a1 + 184, "float");
    MEMORY[0x29C2C1A60](a1 + 208, "float");
  }

  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::HgiMetalTextureShaderSection(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_29ABBA554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (*(v21 + 255) < 0)
  {
    operator delete(v23[6]);
  }

  if (*(v21 + 231) < 0)
  {
    operator delete(v23[3]);
  }

  if (*(v21 + 207) < 0)
  {
    operator delete(*v23);
  }

  if (*(v21 + 151) < 0)
  {
    operator delete(*v22);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(v21);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::WriteType(uint64_t a1, void *a2)
{
  if (*(a1 + 172))
  {
    if (*(a1 + 176))
    {
      v4 = "array<depth";
      v5 = a2;
      v6 = 11;
    }

    else
    {
      v4 = "array<texture";
      v5 = a2;
      v6 = 13;
    }

    v10 = sub_29A00911C(v5, v4, v6);
    v11 = MEMORY[0x29C2C1EE0](v10, *(a1 + 160));
    sub_29A00911C(v11, "d", 1);
    v12 = sub_29A00911C(a2, "<", 1);
    v13 = *(a1 + 207);
    if (v13 >= 0)
    {
      v14 = a1 + 184;
    }

    else
    {
      v14 = *(a1 + 184);
    }

    if (v13 >= 0)
    {
      v15 = *(a1 + 207);
    }

    else
    {
      v15 = *(a1 + 192);
    }

    sub_29A00911C(v12, v14, v15);
    v16 = sub_29A00911C(a2, ">, ", 3);
    v17 = *(a1 + 151);
    if (v17 >= 0)
    {
      v18 = a1 + 128;
    }

    else
    {
      v18 = *(a1 + 128);
    }

    if (v17 >= 0)
    {
      v19 = *(a1 + 151);
    }

    else
    {
      v19 = *(a1 + 136);
    }

    v20 = sub_29A00911C(v16, v18, v19);
    v21 = "_SIZE>";
    v22 = 6;
  }

  else
  {
    if (*(a1 + 176))
    {
      v7 = "depth";
      v8 = a2;
      v9 = 5;
    }

    else
    {
      v7 = "texture";
      v8 = a2;
      v9 = 7;
    }

    v23 = sub_29A00911C(v8, v7, v9);
    v24 = MEMORY[0x29C2C1EE0](v23, *(a1 + 160));
    sub_29A00911C(v24, "d", 1);
    if (*(a1 + 168) == 1)
    {
      sub_29A00911C(a2, "_array", 6);
    }

    v25 = sub_29A00911C(a2, "<", 1);
    v28 = *(a1 + 184);
    v27 = a1 + 184;
    v26 = v28;
    v29 = *(v27 + 23);
    if (v29 >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = v26;
    }

    if (v29 >= 0)
    {
      v31 = *(v27 + 23);
    }

    else
    {
      v31 = *(v27 + 8);
    }

    sub_29A00911C(v25, v30, v31);
    if (*(v27 - 7) == 1)
    {
      sub_29A00911C(a2, ", access::write", 15);
    }

    v21 = ">";
    v20 = a2;
    v22 = 1;
  }

  return sub_29A00911C(v20, v21, v22);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::WriteParameter(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::WriteType(a1, a2);
  sub_29A00911C(a2, " ", 1);

  return pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::VisitScopeConstructorDeclarations(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::WriteType(a1, a2);
  sub_29A00911C(a2, " _", 2);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::VisitScopeConstructorInitialization(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, "(_", 2);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, ")", 1);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::VisitScopeConstructorInstantiation(uint64_t a1, void *a2)
{
  v4 = *(a1 + 255);
  if (v4 < 0)
  {
    if (!*(a1 + 240))
    {
      goto LABEL_10;
    }
  }

  else if (!*(a1 + 255))
  {
    goto LABEL_10;
  }

  if (v4 >= 0)
  {
    v5 = a1 + 232;
  }

  else
  {
    v5 = *(a1 + 232);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 255);
  }

  else
  {
    v6 = *(a1 + 240);
  }

  v7 = sub_29A00911C(a2, v5, v6);
  sub_29A00911C(v7, "->", 2);
LABEL_10:
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::VisitScopeMemberDeclarations(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteDeclaration(a1, a2);
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v3 = std::locale::use_facet(&v5, MEMORY[0x29EDC93D0]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v5);
  std::ostream::put();
  std::ostream::flush();
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalTextureShaderSection::VisitScopeFunctionDefinitions(uint64_t a1, void *a2)
{
  DefaultValue = pxrInternal__aapl__pxrReserved__::HgiShaderSection::_GetDefaultValue(a1);
  v5 = *(DefaultValue + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(DefaultValue + 8);
  }

  if (v5)
  {
    v6 = pxrInternal__aapl__pxrReserved__::HgiShaderSection::_GetDefaultValue(a1);
    if (*(v6 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v6, *(v6 + 8));
    }

    else
    {
      v7 = *v6;
      v246 = *(v6 + 16);
      __dst = v7;
    }
  }

  else
  {
    sub_29A008E78(&__dst, "0");
  }

  if (*(a1 + 172))
  {
    if (*(a1 + 176))
    {
      v8 = "depth";
    }

    else
    {
      v8 = "texture";
    }

    if (*(a1 + 176))
    {
      v9 = 5;
    }

    else
    {
      v9 = 7;
    }

    v10 = sub_29A00911C(a2, v8, v9);
    v11 = MEMORY[0x29C2C1EE0](v10, *(a1 + 160));
    sub_29A00911C(v11, "d", 1);
    v12 = sub_29A00911C(a2, "<", 1);
    v13 = *(a1 + 207);
    if (v13 >= 0)
    {
      v14 = a1 + 184;
    }

    else
    {
      v14 = *(a1 + 184);
    }

    if (v13 >= 0)
    {
      v15 = *(a1 + 207);
    }

    else
    {
      v15 = *(a1 + 192);
    }

    sub_29A00911C(v12, v14, v15);
    sub_29A00911C(a2, ">", 1);
    v16 = sub_29A00911C(a2, " HgiGetSampler_", 15);
    v17 = *(a1 + 151);
    if (v17 >= 0)
    {
      v18 = a1 + 128;
    }

    else
    {
      v18 = *(a1 + 128);
    }

    if (v17 >= 0)
    {
      v19 = *(a1 + 151);
    }

    else
    {
      v19 = *(a1 + 136);
    }

    v20 = sub_29A00911C(v16, v18, v19);
    v21 = sub_29A00911C(v20, "(uint index) {\n", 15);
    sub_29A00911C(v21, "    return ", 11);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v22 = "[index];\n}\n";
    v23 = 11;
  }

  else
  {
    v24 = sub_29A00911C(a2, "#define HgiGetSampler_", 22);
    v25 = *(a1 + 151);
    if (v25 >= 0)
    {
      v26 = a1 + 128;
    }

    else
    {
      v26 = *(a1 + 128);
    }

    if (v25 >= 0)
    {
      v27 = *(a1 + 151);
    }

    else
    {
      v27 = *(a1 + 136);
    }

    v28 = sub_29A00911C(v24, v26, v27);
    sub_29A00911C(v28, "() ", 3);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v22 = "\n";
    v23 = 1;
  }

  sub_29A00911C(a2, v22, v23);
  v29 = *(a1 + 168);
  v30 = *(a1 + 160);
  if (v30 == 1)
  {
    sub_29A008E78(&v243, "int");
  }

  else
  {
    std::to_string(&v242, *(a1 + 160));
    v31 = std::string::insert(&v242, 0, "ivec");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v244 = v31->__r_.__value_.__r.__words[2];
    v243 = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v242.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 177) == 1)
  {
    sub_29A00911C(a2, "void HgiSet_", 12);
    v33 = *(a1 + 151);
    if (v33 >= 0)
    {
      v34 = a1 + 128;
    }

    else
    {
      v34 = *(a1 + 128);
    }

    if (v33 >= 0)
    {
      v35 = *(a1 + 151);
    }

    else
    {
      v35 = *(a1 + 136);
    }

    sub_29A00911C(a2, v34, v35);
    v36 = sub_29A00911C(a2, "(", 1);
    if (v244 >= 0)
    {
      v37 = &v243;
    }

    else
    {
      v37 = v243;
    }

    if (v244 >= 0)
    {
      v38 = HIBYTE(v244);
    }

    else
    {
      v38 = *(&v243 + 1);
    }

    v39 = sub_29A00911C(v36, v37, v38);
    sub_29A00911C(v39, " uv, vec4 data) {\n", 18);
    sub_29A00911C(a2, "    ", 4);
    sub_29A00911C(a2, "imageStore(", 11);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, ", uv, ", 6);
    v40 = *(a1 + 207);
    if (v40 >= 0)
    {
      v41 = a1 + 184;
    }

    else
    {
      v41 = *(a1 + 184);
    }

    if (v40 >= 0)
    {
      v42 = *(a1 + 207);
    }

    else
    {
      v42 = *(a1 + 192);
    }

    sub_29A00911C(a2, v41, v42);
    sub_29A00911C(a2, "4(data));\n", 10);
    sub_29A00911C(a2, "}\n", 2);
    if (v244 >= 0)
    {
      v43 = &v243;
    }

    else
    {
      v43 = v243;
    }

    if (v244 >= 0)
    {
      v44 = HIBYTE(v244);
    }

    else
    {
      v44 = *(&v243 + 1);
    }

    v45 = sub_29A00911C(a2, v43, v44);
    sub_29A00911C(v45, " HgiGetSize_", 12);
    v46 = *(a1 + 151);
    if (v46 >= 0)
    {
      v47 = a1 + 128;
    }

    else
    {
      v47 = *(a1 + 128);
    }

    if (v46 >= 0)
    {
      v48 = *(a1 + 151);
    }

    else
    {
      v48 = *(a1 + 136);
    }

    sub_29A00911C(a2, v47, v48);
    sub_29A00911C(a2, "() {\n", 5);
    sub_29A00911C(a2, "    ", 4);
    sub_29A00911C(a2, "return imageSize", 16);
    MEMORY[0x29C2C1EE0](a2, *(a1 + 160));
    sub_29A00911C(a2, "d(", 2);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, ");\n", 3);
    sub_29A00911C(a2, "}\n", 2);
    goto LABEL_409;
  }

  if (*(a1 + 176) == 1)
  {
    sub_29A008E78(&v242, "float");
  }

  else
  {
    if (*(a1 + 231) >= 0)
    {
      v49 = *(a1 + 231);
    }

    else
    {
      v49 = *(a1 + 216);
    }

    v50 = &v242;
    sub_29A022DE0(&v242, v49 + 1);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = v242.__r_.__value_.__r.__words[0];
    }

    if (v49)
    {
      if (*(a1 + 231) >= 0)
      {
        v51 = (a1 + 208);
      }

      else
      {
        v51 = *(a1 + 208);
      }

      memmove(v50, v51, v49);
    }

    *(&v50->__r_.__value_.__l.__data_ + v49) = 52;
  }

  v52 = v30 + v29;
  if (v52 < 2)
  {
    sub_29A008E78(__p, "float");
  }

  else
  {
    std::to_string(&v239, v52);
    v53 = std::string::insert(&v239, 0, "vec");
    v54 = *&v53->__r_.__value_.__l.__data_;
    v241 = v53->__r_.__value_.__r.__words[2];
    *__p = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v239.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v238, v52 + 1);
  v55 = std::string::insert(&v238, 0, "vec");
  v56 = *&v55->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  v57 = *(a1 + 172);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = &v242;
  }

  else
  {
    v58 = v242.__r_.__value_.__r.__words[0];
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v242.__r_.__value_.__l.__size_;
  }

  if (*(a1 + 176) == 1)
  {
    if (v57)
    {
      v60 = sub_29A00911C(a2, v58, size);
      v61 = sub_29A00911C(v60, " HgiGet_", 8);
      v62 = *(a1 + 151);
      if (v62 >= 0)
      {
        v63 = a1 + 128;
      }

      else
      {
        v63 = *(a1 + 128);
      }

      if (v62 >= 0)
      {
        v64 = *(a1 + 151);
      }

      else
      {
        v64 = *(a1 + 136);
      }

      sub_29A00911C(v61, v63, v64);
      sub_29A00911C(a2, "(uint index, ", 13);
      if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = &v239;
      }

      else
      {
        v65 = v239.__r_.__value_.__r.__words[0];
      }

      if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = HIBYTE(v239.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v66 = v239.__r_.__value_.__l.__size_;
      }

      v67 = sub_29A00911C(a2, v65, v66);
      sub_29A00911C(v67, " coord) {\n", 10);
      v68 = sub_29A00911C(a2, "    ", 4);
      if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &v242;
      }

      else
      {
        v69 = v242.__r_.__value_.__r.__words[0];
      }

      if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v70 = v242.__r_.__value_.__l.__size_;
      }

      v71 = sub_29A00911C(v68, v69, v70);
      sub_29A00911C(v71, " result = is_null_texture(", 26);
      pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
      v72 = sub_29A00911C(a2, "[index]) ? ", 11);
      if (v246 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (v246 >= 0)
      {
        v74 = HIBYTE(v246);
      }

      else
      {
        v74 = *(&__dst + 1);
      }

      v75 = sub_29A00911C(v72, p_dst, v74);
      v76 = sub_29A00911C(v75, " : ", 3);
      if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &v242;
      }

      else
      {
        v77 = v242.__r_.__value_.__r.__words[0];
      }

      if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v78 = v242.__r_.__value_.__l.__size_;
      }

      v79 = sub_29A00911C(v76, v77, v78);
      sub_29A00911C(v79, "(", 1);
      pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
      sub_29A00911C(a2, "[index].sample_compare(", 23);
      pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(*(a1 + 152), a2);
      v80 = sub_29A00911C(a2, "[index], coord.xy, coord.z", 26);
      v81 = "));\n";
      v82 = 4;
      goto LABEL_231;
    }

    v103 = sub_29A00911C(a2, v58, size);
    v104 = sub_29A00911C(v103, " HgiGet_", 8);
    v105 = *(a1 + 151);
    if (v105 >= 0)
    {
      v106 = a1 + 128;
    }

    else
    {
      v106 = *(a1 + 128);
    }

    if (v105 >= 0)
    {
      v107 = *(a1 + 151);
    }

    else
    {
      v107 = *(a1 + 136);
    }

    sub_29A00911C(v104, v106, v107);
    v108 = sub_29A00911C(a2, "(", 1);
    if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v109 = &v239;
    }

    else
    {
      v109 = v239.__r_.__value_.__r.__words[0];
    }

    if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v110 = HIBYTE(v239.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v110 = v239.__r_.__value_.__l.__size_;
    }

    v111 = sub_29A00911C(v108, v109, v110);
    sub_29A00911C(v111, " coord) {\n", 10);
    v112 = sub_29A00911C(a2, "    ", 4);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v113 = &v242;
    }

    else
    {
      v113 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v114 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v114 = v242.__r_.__value_.__l.__size_;
    }

    v115 = sub_29A00911C(v112, v113, v114);
    sub_29A00911C(v115, " result = is_null_texture(", 26);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v116 = sub_29A00911C(a2, ") ? ", 4);
    if (v246 >= 0)
    {
      v117 = &__dst;
    }

    else
    {
      v117 = __dst;
    }

    if (v246 >= 0)
    {
      v118 = HIBYTE(v246);
    }

    else
    {
      v118 = *(&__dst + 1);
    }

    v119 = sub_29A00911C(v116, v117, v118);
    v120 = sub_29A00911C(v119, " : ", 3);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v121 = &v242;
    }

    else
    {
      v121 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v122 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v122 = v242.__r_.__value_.__l.__size_;
    }

    v123 = sub_29A00911C(v120, v121, v122);
    sub_29A00911C(v123, "(", 1);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, ".sample_compare(", 16);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(*(a1 + 152), a2);
    v81 = ", coord.xy, coord.z));\n";
    v82 = 23;
  }

  else if (v57)
  {
    v83 = sub_29A00911C(a2, v58, size);
    v84 = sub_29A00911C(v83, " HgiGet_", 8);
    v85 = *(a1 + 151);
    if (v85 >= 0)
    {
      v86 = a1 + 128;
    }

    else
    {
      v86 = *(a1 + 128);
    }

    if (v85 >= 0)
    {
      v87 = *(a1 + 151);
    }

    else
    {
      v87 = *(a1 + 136);
    }

    sub_29A00911C(v84, v86, v87);
    sub_29A00911C(a2, "(uint index, ", 13);
    if (v241 >= 0)
    {
      v88 = __p;
    }

    else
    {
      v88 = __p[0];
    }

    if (v241 >= 0)
    {
      v89 = HIBYTE(v241);
    }

    else
    {
      v89 = __p[1];
    }

    v90 = sub_29A00911C(a2, v88, v89);
    sub_29A00911C(v90, " coord) {\n", 10);
    v91 = sub_29A00911C(a2, "    ", 4);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = &v242;
    }

    else
    {
      v92 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v93 = v242.__r_.__value_.__l.__size_;
    }

    v94 = sub_29A00911C(v91, v92, v93);
    sub_29A00911C(v94, " result = is_null_texture(", 26);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v95 = sub_29A00911C(a2, "[index]) ? ", 11);
    if (v246 >= 0)
    {
      v96 = &__dst;
    }

    else
    {
      v96 = __dst;
    }

    if (v246 >= 0)
    {
      v97 = HIBYTE(v246);
    }

    else
    {
      v97 = *(&__dst + 1);
    }

    v98 = sub_29A00911C(v95, v96, v97);
    v99 = sub_29A00911C(v98, " : ", 3);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v100 = &v242;
    }

    else
    {
      v100 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v101 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v101 = v242.__r_.__value_.__l.__size_;
    }

    v102 = sub_29A00911C(v99, v100, v101);
    sub_29A00911C(v102, "(", 1);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, "[index].sample(", 15);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(*(a1 + 152), a2);
    v81 = "[index], coord));\n";
    v82 = 18;
  }

  else
  {
    v124 = sub_29A00911C(a2, v58, size);
    v125 = sub_29A00911C(v124, " HgiGet_", 8);
    v126 = *(a1 + 151);
    if (v126 >= 0)
    {
      v127 = a1 + 128;
    }

    else
    {
      v127 = *(a1 + 128);
    }

    if (v126 >= 0)
    {
      v128 = *(a1 + 151);
    }

    else
    {
      v128 = *(a1 + 136);
    }

    sub_29A00911C(v125, v127, v128);
    v129 = sub_29A00911C(a2, "(", 1);
    if (v241 >= 0)
    {
      v130 = __p;
    }

    else
    {
      v130 = __p[0];
    }

    if (v241 >= 0)
    {
      v131 = HIBYTE(v241);
    }

    else
    {
      v131 = __p[1];
    }

    v132 = sub_29A00911C(v129, v130, v131);
    sub_29A00911C(v132, " coord) {\n", 10);
    v133 = sub_29A00911C(a2, "    ", 4);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v134 = &v242;
    }

    else
    {
      v134 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v135 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v135 = v242.__r_.__value_.__l.__size_;
    }

    v136 = sub_29A00911C(v133, v134, v135);
    sub_29A00911C(v136, " result = is_null_texture(", 26);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v137 = sub_29A00911C(a2, ") ? ", 4);
    if (v246 >= 0)
    {
      v138 = &__dst;
    }

    else
    {
      v138 = __dst;
    }

    if (v246 >= 0)
    {
      v139 = HIBYTE(v246);
    }

    else
    {
      v139 = *(&__dst + 1);
    }

    v140 = sub_29A00911C(v137, v138, v139);
    v141 = sub_29A00911C(v140, " : ", 3);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v142 = &v242;
    }

    else
    {
      v142 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v143 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v143 = v242.__r_.__value_.__l.__size_;
    }

    v144 = sub_29A00911C(v141, v142, v143);
    sub_29A00911C(v144, "(", 1);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, ".sample(", 8);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(*(a1 + 152), a2);
    if (*(a1 + 168) == 1)
    {
      v145 = *(a1 + 160);
      if (v145 == 2)
      {
        v81 = ", coord.xy, coord.z));\n";
      }

      else
      {
        v81 = ", coord.x, coord.y));\n";
      }

      if (v145 == 2)
      {
        v82 = 23;
      }

      else
      {
        v82 = 22;
      }
    }

    else
    {
      v81 = ", coord));\n";
      v82 = 11;
    }
  }

  v80 = a2;
LABEL_231:
  sub_29A00911C(v80, v81, v82);
  sub_29A00911C(a2, "    return result;\n", 19);
  sub_29A00911C(a2, "}\n", 2);
  if (v244 >= 0)
  {
    v146 = &v243;
  }

  else
  {
    v146 = v243;
  }

  if (v244 >= 0)
  {
    v147 = HIBYTE(v244);
  }

  else
  {
    v147 = *(&v243 + 1);
  }

  v148 = sub_29A00911C(a2, v146, v147);
  sub_29A00911C(v148, " HgiGetSize_", 12);
  v149 = *(a1 + 151);
  if (v149 >= 0)
  {
    v150 = a1 + 128;
  }

  else
  {
    v150 = *(a1 + 128);
  }

  if (v149 >= 0)
  {
    v151 = *(a1 + 151);
  }

  else
  {
    v151 = *(a1 + 136);
  }

  sub_29A00911C(a2, v150, v151);
  v152 = *(a1 + 172);
  if (v152)
  {
    v153 = "(uint index) {\n";
  }

  else
  {
    v153 = "() {\n";
  }

  if (v152)
  {
    v154 = 15;
  }

  else
  {
    v154 = 5;
  }

  sub_29A00911C(a2, v153, v154);
  sub_29A00911C(a2, "    ", 4);
  sub_29A00911C(a2, "return textureSize", 18);
  MEMORY[0x29C2C1EE0](a2, *(a1 + 160));
  sub_29A00911C(a2, "d(", 2);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  if (*(a1 + 172))
  {
    sub_29A00911C(a2, "[index]", 7);
  }

  sub_29A00911C(a2, ", 0);\n", 6);
  sub_29A00911C(a2, "}\n", 2);
  if (v52 < 2)
  {
    sub_29A008E78(&v238, "int");
  }

  else
  {
    std::to_string(&v237, v52);
    v155 = std::string::insert(&v237, 0, "ivec");
    v156 = *&v155->__r_.__value_.__l.__data_;
    v238.__r_.__value_.__r.__words[2] = v155->__r_.__value_.__r.__words[2];
    *&v238.__r_.__value_.__l.__data_ = v156;
    v155->__r_.__value_.__l.__size_ = 0;
    v155->__r_.__value_.__r.__words[2] = 0;
    v155->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v237.__r_.__value_.__l.__data_);
    }
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v157 = &v242;
  }

  else
  {
    v157 = v242.__r_.__value_.__r.__words[0];
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v158 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v158 = v242.__r_.__value_.__l.__size_;
  }

  v159 = sub_29A00911C(a2, v157, v158);
  v160 = sub_29A00911C(v159, " HgiTexelFetch_", 15);
  v161 = *(a1 + 151);
  if (v161 >= 0)
  {
    v162 = a1 + 128;
  }

  else
  {
    v162 = *(a1 + 128);
  }

  if (v161 >= 0)
  {
    v163 = *(a1 + 151);
  }

  else
  {
    v163 = *(a1 + 136);
  }

  sub_29A00911C(v160, v162, v163);
  if (*(a1 + 172))
  {
    v164 = sub_29A00911C(a2, "(uint index, ", 13);
  }

  else
  {
    v164 = sub_29A00911C(a2, "(", 1);
  }

  if ((v238.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v165 = &v238;
  }

  else
  {
    v165 = v238.__r_.__value_.__r.__words[0];
  }

  if ((v238.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v166 = HIBYTE(v238.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v166 = v238.__r_.__value_.__l.__size_;
  }

  v167 = sub_29A00911C(v164, v165, v166);
  sub_29A00911C(v167, " coord) {\n", 10);
  v168 = sub_29A00911C(a2, "    ", 4);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v169 = &v242;
  }

  else
  {
    v169 = v242.__r_.__value_.__r.__words[0];
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v170 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v170 = v242.__r_.__value_.__l.__size_;
  }

  v171 = sub_29A00911C(v168, v169, v170);
  v172 = sub_29A00911C(v171, " result = ", 10);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v173 = &v242;
  }

  else
  {
    v173 = v242.__r_.__value_.__r.__words[0];
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v174 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v174 = v242.__r_.__value_.__l.__size_;
  }

  v175 = sub_29A00911C(v172, v173, v174);
  v176 = sub_29A00911C(v175, "(textureBind_", 13);
  v177 = *(a1 + 151);
  if (v177 >= 0)
  {
    v178 = a1 + 128;
  }

  else
  {
    v178 = *(a1 + 128);
  }

  if (v177 >= 0)
  {
    v179 = *(a1 + 151);
  }

  else
  {
    v179 = *(a1 + 136);
  }

  sub_29A00911C(v176, v178, v179);
  if (*(a1 + 172))
  {
    sub_29A00911C(a2, "[index]", 7);
  }

  v180 = *(a1 + 160);
  if (*(a1 + 168) == 1)
  {
    if (v180 == 2)
    {
      v181 = ".read(ushort2(coord.x, coord.y), coord.z));\n";
    }

    else
    {
      v181 = ".read(ushort(coord.x), coord.y));\n";
    }

    if (v180 == 2)
    {
      v182 = 44;
    }

    else
    {
      v182 = 34;
    }
  }

  else if (v180 == 3)
  {
    v181 = ".read(ushort3(coord.x, coord.y, coord.z)));\n";
    v182 = 44;
  }

  else if (v180 == 2)
  {
    v181 = ".read(ushort2(coord.x, coord.y)));\n";
    v182 = 35;
  }

  else
  {
    v181 = ".read(ushort(coord)));\n";
    v182 = 23;
  }

  sub_29A00911C(a2, v181, v182);
  sub_29A00911C(a2, "    return result;\n", 19);
  sub_29A00911C(a2, "}\n", 2);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v183 = &v242;
  }

  else
  {
    v183 = v242.__r_.__value_.__r.__words[0];
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v184 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v184 = v242.__r_.__value_.__l.__size_;
  }

  if (*(a1 + 176) == 1)
  {
    v185 = sub_29A00911C(a2, v183, v184);
    v186 = sub_29A00911C(v185, " HgiTextureLod_", 15);
    v187 = *(a1 + 151);
    if (v187 >= 0)
    {
      v188 = a1 + 128;
    }

    else
    {
      v188 = *(a1 + 128);
    }

    if (v187 >= 0)
    {
      v189 = *(a1 + 151);
    }

    else
    {
      v189 = *(a1 + 136);
    }

    sub_29A00911C(v186, v188, v189);
    if (*(a1 + 172))
    {
      v190 = sub_29A00911C(a2, "(uint index, ", 13);
    }

    else
    {
      v190 = sub_29A00911C(a2, "(", 1);
    }

    if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v197 = &v239;
    }

    else
    {
      v197 = v239.__r_.__value_.__r.__words[0];
    }

    if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v198 = HIBYTE(v239.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v198 = v239.__r_.__value_.__l.__size_;
    }

    v199 = sub_29A00911C(v190, v197, v198);
    sub_29A00911C(v199, " coord", 6);
    v200 = sub_29A00911C(a2, ", float lod) {\n", 15);
    v201 = sub_29A00911C(v200, "    ", 4);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v202 = &v242;
    }

    else
    {
      v202 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v203 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v203 = v242.__r_.__value_.__l.__size_;
    }

    v204 = sub_29A00911C(v201, v202, v203);
    v205 = sub_29A00911C(v204, " result = ", 10);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v206 = &v242;
    }

    else
    {
      v206 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v207 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v207 = v242.__r_.__value_.__l.__size_;
    }

    v208 = sub_29A00911C(v205, v206, v207);
    v209 = sub_29A00911C(v208, "(textureBind_", 13);
    v210 = *(a1 + 151);
    if (v210 >= 0)
    {
      v211 = a1 + 128;
    }

    else
    {
      v211 = *(a1 + 128);
    }

    if (v210 >= 0)
    {
      v212 = *(a1 + 151);
    }

    else
    {
      v212 = *(a1 + 136);
    }

    sub_29A00911C(v209, v211, v212);
    if (*(a1 + 172))
    {
      sub_29A00911C(a2, "[index]", 7);
    }

    sub_29A00911C(a2, ".sample(", 8);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(*(a1 + 152), a2);
    if (*(a1 + 172))
    {
      sub_29A00911C(a2, "[index]", 7);
    }

    v213 = ", coord.xy, level(lod)));\n";
    v214 = 26;
  }

  else
  {
    v191 = sub_29A00911C(a2, v183, v184);
    v192 = sub_29A00911C(v191, " HgiTextureLod_", 15);
    v193 = *(a1 + 151);
    if (v193 >= 0)
    {
      v194 = a1 + 128;
    }

    else
    {
      v194 = *(a1 + 128);
    }

    if (v193 >= 0)
    {
      v195 = *(a1 + 151);
    }

    else
    {
      v195 = *(a1 + 136);
    }

    sub_29A00911C(v192, v194, v195);
    if (*(a1 + 172))
    {
      v196 = sub_29A00911C(a2, "(uint index, ", 13);
    }

    else
    {
      v196 = sub_29A00911C(a2, "(", 1);
    }

    if (v241 >= 0)
    {
      v215 = __p;
    }

    else
    {
      v215 = __p[0];
    }

    if (v241 >= 0)
    {
      v216 = HIBYTE(v241);
    }

    else
    {
      v216 = __p[1];
    }

    v217 = sub_29A00911C(v196, v215, v216);
    sub_29A00911C(v217, " coord", 6);
    v218 = sub_29A00911C(a2, ", float lod) {\n", 15);
    v219 = sub_29A00911C(v218, "    ", 4);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v220 = &v242;
    }

    else
    {
      v220 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v221 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v221 = v242.__r_.__value_.__l.__size_;
    }

    v222 = sub_29A00911C(v219, v220, v221);
    v223 = sub_29A00911C(v222, " result = ", 10);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v224 = &v242;
    }

    else
    {
      v224 = v242.__r_.__value_.__r.__words[0];
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v225 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v225 = v242.__r_.__value_.__l.__size_;
    }

    v226 = sub_29A00911C(v223, v224, v225);
    v227 = sub_29A00911C(v226, "(textureBind_", 13);
    v228 = *(a1 + 151);
    if (v228 >= 0)
    {
      v229 = a1 + 128;
    }

    else
    {
      v229 = *(a1 + 128);
    }

    if (v228 >= 0)
    {
      v230 = *(a1 + 151);
    }

    else
    {
      v230 = *(a1 + 136);
    }

    sub_29A00911C(v227, v229, v230);
    if (*(a1 + 172))
    {
      sub_29A00911C(a2, "[index]", 7);
    }

    sub_29A00911C(a2, ".sample(", 8);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(*(a1 + 152), a2);
    if (*(a1 + 172))
    {
      sub_29A00911C(a2, "[index]", 7);
    }

    if (*(a1 + 168) == 1)
    {
      v231 = *(a1 + 160);
      if (v231 == 2)
      {
        v232 = ", coord.xy, coord.z";
      }

      else
      {
        v232 = ", coord.x, coord.y";
      }

      if (v231 == 2)
      {
        v233 = 19;
      }

      else
      {
        v233 = 18;
      }
    }

    else
    {
      v232 = ", coord";
      v233 = 7;
    }

    sub_29A00911C(a2, v232, v233);
    if (*(a1 + 160) >= 2u)
    {
      sub_29A00911C(a2, ", level(lod)", 12);
    }

    v213 = "));\n";
    v214 = 4;
  }

  v234 = sub_29A00911C(a2, v213, v214);
  v235 = sub_29A00911C(v234, "    return result;\n", 19);
  sub_29A00911C(v235, "}\n", 2);
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v241) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

LABEL_409:
  if (SHIBYTE(v244) < 0)
  {
    operator delete(v243);
  }

  if (SHIBYTE(v246) < 0)
  {
    operator delete(__dst);
  }

  return 1;
}

void sub_29ABBBE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::HgiMetalBufferShaderSection(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, int a5, char a6, __int128 **a7)
{
  sub_29A008E78(v22, "");
  v20 = 0uLL;
  v21 = 0;
  __p = 0uLL;
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, a2, a7, v22, &v20, &__p);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  *a1 = &unk_2A2075430;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 128), *a4, *(a4 + 1));
  }

  else
  {
    v14 = *a4;
    *(a1 + 144) = *(a4 + 2);
    *(a1 + 128) = v14;
  }

  *(a1 + 152) = a5;
  *(a1 + 156) = a6;
  *(a1 + 157) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 160), *a2, *(a2 + 8));
  }

  else
  {
    v15 = *a2;
    *(a1 + 176) = *(a2 + 16);
    *(a1 + 160) = v15;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 184), *a3, *(a3 + 1));
  }

  else
  {
    v16 = *a3;
    *(a1 + 200) = *(a3 + 2);
    *(a1 + 184) = v16;
  }

  return a1;
}

void sub_29ABBC0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (*(v19 + 183) < 0)
  {
    operator delete(*(v19 + 160));
  }

  if (*(v19 + 151) < 0)
  {
    operator delete(*v20);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(v19);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::HgiMetalBufferShaderSection(uint64_t a1, __int128 *a2, __int128 **a3)
{
  sub_29A008E78(v11, "");
  v9 = 0uLL;
  v10 = 0;
  __p = 0uLL;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, a2, a3, v11, &v9, &__p);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  *a1 = &unk_2A2075430;
  sub_29A008E78((a1 + 128), "void");
  *(a1 + 152) = 4;
  *(a1 + 156) = 256;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::WriteType(uint64_t a1, void *a2)
{
  v5 = *(a1 + 128);
  v3 = a1 + 128;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_29A00911C(a2, v7, v8);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::WriteParameter(uint64_t a1, void *a2)
{
  if (*(a1 + 156))
  {
    v4 = "device ";
    v5 = a2;
    v6 = 7;
  }

  else
  {
    v4 = "constant ";
    v5 = a2;
    v6 = 9;
  }

  sub_29A00911C(v5, v4, v6);
  v7 = *(a1 + 151);
  if (v7 >= 0)
  {
    v8 = a1 + 128;
  }

  else
  {
    v8 = *(a1 + 128);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 151);
  }

  else
  {
    v9 = *(a1 + 136);
  }

  sub_29A00911C(a2, v8, v9);
  v10 = *(a1 + 152);
  if (v10 <= 4)
  {
    sub_29A00911C(a2, off_29F296950[v10], 2);
  }

  return pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::VisitScopeMemberDeclarations(uint64_t a1, void *a2)
{
  v2 = *(a1 + 157);
  if ((v2 & 1) == 0)
  {
    if (*(a1 + 156))
    {
      v5 = "device ";
      v6 = a2;
      v7 = 7;
    }

    else
    {
      v5 = "constant ";
      v6 = a2;
      v7 = 9;
    }

    sub_29A00911C(v6, v5, v7);
    v8 = *(a1 + 151);
    if (v8 >= 0)
    {
      v9 = a1 + 128;
    }

    else
    {
      v9 = *(a1 + 128);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 151);
    }

    else
    {
      v10 = *(a1 + 136);
    }

    sub_29A00911C(a2, v9, v10);
    v11 = *(a1 + 152);
    if (v11 <= 4)
    {
      sub_29A00911C(a2, off_29F296950[v11], 2);
    }

    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, ";\n", 2);
  }

  return v2 ^ 1u;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::VisitScopeConstructorDeclarations(uint64_t a1, void *a2)
{
  v2 = *(a1 + 157);
  if ((v2 & 1) == 0)
  {
    if (*(a1 + 156))
    {
      v5 = "device ";
      v6 = a2;
      v7 = 7;
    }

    else
    {
      sub_29A00911C(a2, "const ", 6);
      v5 = "constant ";
      v6 = a2;
      v7 = 9;
    }

    sub_29A00911C(v6, v5, v7);
    v8 = *(a1 + 151);
    if (v8 >= 0)
    {
      v9 = a1 + 128;
    }

    else
    {
      v9 = *(a1 + 128);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 151);
    }

    else
    {
      v10 = *(a1 + 136);
    }

    sub_29A00911C(a2, v9, v10);
    sub_29A00911C(a2, "* _", 3);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  }

  return v2 ^ 1u;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::VisitScopeConstructorInitialization(uint64_t a1, void *a2)
{
  v2 = *(a1 + 157);
  if ((v2 & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v5 = *(a1 + 152);
    if (v5 - 2 >= 3)
    {
      if (v5 > 1)
      {
LABEL_7:
        pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
        sub_29A00911C(a2, ")", 1);
        return v2 ^ 1u;
      }

      v6 = "(*_";
      v7 = a2;
      v8 = 3;
    }

    else
    {
      v6 = "(_";
      v7 = a2;
      v8 = 2;
    }

    sub_29A00911C(v7, v6, v8);
    goto LABEL_7;
  }

  return v2 ^ 1u;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalBufferShaderSection::VisitScopeConstructorInstantiation(uint64_t a1, void *a2)
{
  v2 = *(a1 + 157);
  if ((v2 & 1) == 0)
  {
    v5 = *(a1 + 207);
    if (v5 < 0)
    {
      if (!*(a1 + 192))
      {
LABEL_15:
        pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
        return v2 ^ 1u;
      }
    }

    else if (!*(a1 + 207))
    {
      goto LABEL_15;
    }

    if (*(a1 + 152) <= 1u)
    {
      sub_29A00911C(a2, "&", 1);
      LOBYTE(v5) = *(a1 + 207);
    }

    if ((v5 & 0x80u) == 0)
    {
      v6 = a1 + 184;
    }

    else
    {
      v6 = *(a1 + 184);
    }

    if ((v5 & 0x80u) == 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *(a1 + 192);
    }

    v8 = sub_29A00911C(a2, v6, v7);
    sub_29A00911C(v8, "->", 2);
    goto LABEL_15;
  }

  return v2 ^ 1u;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::HgiMetalStructTypeDeclarationShaderSection(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  memset(v18, 0, sizeof(v18));
  v16 = 0uLL;
  v17 = 0;
  v14 = 0uLL;
  v15 = 0;
  __p = 0uLL;
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, a2, v18, &v16, &v14, &__p);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  *&v16 = v18;
  sub_29A0D2770(&v16);
  *a1 = &unk_2A20754D0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_29ABB79C0((a1 + 128), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 152), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 168) = *(a4 + 2);
    *(a1 + 152) = v9;
  }

  if (*(a5 + 23) < 0)
  {
    sub_29A008D14((a1 + 176), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 192) = *(a5 + 2);
    *(a1 + 176) = v10;
  }

  return a1;
}

void sub_29ABBC7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (*(v27 + 175) < 0)
  {
    operator delete(*(v27 + 152));
  }

  v30 = *v28;
  if (*v28)
  {
    *(v27 + 136) = v30;
    operator delete(v30);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(v27);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::WriteDeclaration(uint64_t a1, void *a2)
{
  sub_29A00911C(a2, "struct", 6);
  sub_29A00911C(a2, " ", 1);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, " {\n", 3);
  v4 = (a1 + 8);
  v5 = *(a1 + 31);
  if ((v5 & 0x80000000) == 0)
  {
    if (v5 == 10)
    {
      if (*v4 != 0x706E4963544C534DLL || *(a1 + 16) != 29813)
      {
        goto LABEL_16;
      }

LABEL_23:
      v11 = 1;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (*(a1 + 16) == 10 && **v4 == 0x706E4963544C534DLL && *(*v4 + 8) == 29813)
  {
    goto LABEL_23;
  }

  if (*(a1 + 16) != 10)
  {
LABEL_22:
    v11 = 0;
    goto LABEL_24;
  }

  v4 = *v4;
LABEL_16:
  v8 = *v4;
  v9 = v4[4];
  v11 = v8 == 0x706E4976544C534DLL && v9 == 29813;
LABEL_24:
  v12 = *(a1 + 128);
  for (i = *(a1 + 136); v12 != i; ++v12)
  {
    v14 = *v12;
    (*(**v12 + 40))(*v12, a2);
    if ((*(v14 + 127) & 0x8000000000000000) != 0)
    {
      if (!*(v14 + 112))
      {
LABEL_32:
        pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::WriteAttributesWithIndex(v14, a2);
        if (v11)
        {
          goto LABEL_29;
        }

LABEL_28:
        (*(*v14 + 48))(v14, a2);
        goto LABEL_29;
      }
    }

    else if (!*(v14 + 127))
    {
      goto LABEL_32;
    }

    if (!v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    sub_29A00911C(a2, ";\n", 2);
  }

  return sub_29A00911C(a2, "};\n", 3);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::WriteTemplateWrapper(uint64_t a1, void *a2)
{
  v4 = *(a1 + 175);
  if (v4 < 0)
  {
    if (*(a1 + 160))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 175))
  {
LABEL_3:
    if (v4 >= 0)
    {
      v5 = a1 + 152;
    }

    else
    {
      v5 = *(a1 + 152);
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 175);
    }

    else
    {
      v6 = *(a1 + 160);
    }

    v7 = sub_29A00911C(a2, v5, v6);
    sub_29A00911C(v7, "<", 1);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v8 = *(a1 + 199);
    if (v8 < 0)
    {
      v9 = *(a1 + 184);
    }

    else
    {
      v9 = *(a1 + 199);
    }

    if (v9)
    {
      sub_29A00911C(a2, ", ", 2);
      LOBYTE(v8) = *(a1 + 199);
    }

    if ((v8 & 0x80u) == 0)
    {
      v11 = a1 + 176;
    }

    else
    {
      v11 = *(a1 + 176);
    }

    if ((v8 & 0x80u) == 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *(a1 + 184);
    }

    v13 = sub_29A00911C(a2, v11, v12);

    return sub_29A00911C(v13, ">", 1);
  }

  return pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalStructInstanceShaderSection::HgiMetalStructInstanceShaderSection(void *a1, __int128 *a2, __int128 **a3, uint64_t a4, __int128 *a5)
{
  v10 = 0uLL;
  v11 = 0;
  __p = 0uLL;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, a2, a3, a5, &v10, &__p);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  *a1 = &unk_2A2075570;
  a1[16] = a4;
  return a1;
}

void sub_29ABBCC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalParameterInputShaderSection::HgiMetalParameterInputShaderSection(uint64_t a1, __int128 *a2, __int128 **a3, __int128 *a4, char a5, uint64_t a6)
{
  __p = 0uLL;
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalStructInstanceShaderSection::HgiMetalStructInstanceShaderSection(a1, a2, a3, a6, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  *a1 = &unk_2A2075610;
  v9 = (a1 + 136);
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(v9, *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 152) = *(a4 + 2);
    *v9 = v10;
  }

  *(a1 + 160) = a5;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalParameterInputShaderSection::WriteParameter(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::WriteTemplateWrapper(*(a1 + 128), a2);
  sub_29A00911C(a2, " ", 1);
  if (*(a1 + 160) == 1)
  {
    sub_29A00911C(a2, "*", 1);
  }

  return pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalParameterInputShaderSection::VisitEntryPointParameterDeclarations(uint64_t a1, void *a2)
{
  v4 = *(a1 + 159);
  if (v4 < 0)
  {
    if (!*(a1 + 144))
    {
      goto LABEL_10;
    }
  }

  else if (!*(a1 + 159))
  {
    goto LABEL_10;
  }

  if (v4 >= 0)
  {
    v5 = a1 + 136;
  }

  else
  {
    v5 = *(a1 + 136);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 159);
  }

  else
  {
    v6 = *(a1 + 144);
  }

  v7 = sub_29A00911C(a2, v5, v6);
  sub_29A00911C(v7, " ", 1);
LABEL_10:
  pxrInternal__aapl__pxrReserved__::HgiMetalParameterInputShaderSection::WriteParameter(a1, a2);
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::WriteAttributesWithIndex(a1, a2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalParameterInputShaderSection::VisitEntryPointFunctionExecutions(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 128);
  v4 = *(v3 + 128);
  if (*(v3 + 136) != v4)
  {
    for (i = 0; i < (*(v3 + 136) - v4) >> 3; ++i)
    {
      if (i)
      {
        sub_29A00911C(a2, "\n", 1);
        v4 = *(v3 + 128);
      }

      v9 = *(v4 + 8 * i);
      if ((*(v9 + 103) & 0x8000000000000000) != 0)
      {
        if (!*(v9 + 88))
        {
LABEL_27:
          v23 = *(a3 + 23);
          if (v23 >= 0)
          {
            v24 = a3;
          }

          else
          {
            v24 = *a3;
          }

          if (v23 >= 0)
          {
            v25 = *(a3 + 23);
          }

          else
          {
            v25 = *(a3 + 8);
          }

          v26 = sub_29A00911C(a2, v24, v25);
          sub_29A00911C(v26, ".", 1);
          v27 = *(v9 + 127);
          if (v27 < 0)
          {
            v27 = *(v9 + 112);
          }

          if (v27)
          {
            (*(*v9 + 56))(v9, a2);
            sub_29A00911C(a2, ".", 1);
          }

          (*(*v9 + 24))(v9, a2);
          sub_29A00911C(a2, " = ", 3);
          pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
          if (*(a1 + 160))
          {
            v28 = "->";
          }

          else
          {
            v28 = ".";
          }

          if (*(a1 + 160))
          {
            v29 = 2;
          }

          else
          {
            v29 = 1;
          }

          sub_29A00911C(a2, v28, v29);
          (*(*v9 + 24))(v9, a2);
          v20 = a2;
          v21 = ";";
          v22 = 1;
          goto LABEL_44;
        }
      }

      else if (!*(v9 + 103))
      {
        goto LABEL_27;
      }

      sub_29A00911C(a2, "for (int arrInd = 0; arrInd < ", 30);
      v10 = *(v9 + 103);
      if (v10 >= 0)
      {
        v11 = v9 + 80;
      }

      else
      {
        v11 = *(v9 + 80);
      }

      if (v10 >= 0)
      {
        v12 = *(v9 + 103);
      }

      else
      {
        v12 = *(v9 + 88);
      }

      sub_29A00911C(a2, v11, v12);
      sub_29A00911C(a2, "; arrInd++) {\n", 14);
      v13 = *(a3 + 23);
      if (v13 >= 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = *a3;
      }

      if (v13 >= 0)
      {
        v15 = *(a3 + 23);
      }

      else
      {
        v15 = *(a3 + 8);
      }

      v16 = sub_29A00911C(a2, v14, v15);
      sub_29A00911C(v16, ".", 1);
      (*(*v9 + 24))(v9, a2);
      sub_29A00911C(a2, "[arrInd] = ", 11);
      pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
      v17 = sub_29A00911C(a2, "[arrInd]", 8);
      if (*(a1 + 160))
      {
        v18 = "->";
      }

      else
      {
        v18 = ".";
      }

      if (*(a1 + 160))
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      sub_29A00911C(v17, v18, v19);
      (*(*v9 + 24))(v9, a2);
      v20 = a2;
      v21 = ";\n}";
      v22 = 3;
LABEL_44:
      sub_29A00911C(v20, v21, v22);
      v4 = *(v3 + 128);
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalParameterInputShaderSection::VisitGlobalMemberDeclarations(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::WriteDeclaration(*(a1 + 128), a2);
  sub_29A00911C(a2, "\n", 1);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalArgumentBufferInputShaderSection::HgiMetalArgumentBufferInputShaderSection(uint64_t a1, __int128 *a2, __int128 **a3, __int128 *a4, char a5, uint64_t a6)
{
  __p = 0uLL;
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalStructInstanceShaderSection::HgiMetalStructInstanceShaderSection(a1, a2, a3, a6, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  *a1 = &unk_2A20756B0;
  v9 = (a1 + 136);
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(v9, *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 152) = *(a4 + 2);
    *v9 = v10;
  }

  *(a1 + 160) = a5;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalArgumentBufferInputShaderSection::WriteParameter(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(*(a1 + 128), a2);
  sub_29A00911C(a2, " ", 1);
  if (*(a1 + 160) == 1)
  {
    sub_29A00911C(a2, "*", 1);
  }

  return pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalArgumentBufferInputShaderSection::VisitEntryPointParameterDeclarations(uint64_t a1, void *a2)
{
  v4 = *(a1 + 159);
  if (v4 < 0)
  {
    if (!*(a1 + 144))
    {
      goto LABEL_10;
    }
  }

  else if (!*(a1 + 159))
  {
    goto LABEL_10;
  }

  if (v4 >= 0)
  {
    v5 = a1 + 136;
  }

  else
  {
    v5 = *(a1 + 136);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 159);
  }

  else
  {
    v6 = *(a1 + 144);
  }

  v7 = sub_29A00911C(a2, v5, v6);
  sub_29A00911C(v7, " ", 1);
LABEL_10:
  pxrInternal__aapl__pxrReserved__::HgiMetalArgumentBufferInputShaderSection::WriteParameter(a1, a2);
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::WriteAttributesWithIndex(a1, a2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalArgumentBufferInputShaderSection::VisitGlobalMemberDeclarations(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::WriteDeclaration(*(a1 + 128), a2);
  sub_29A00911C(a2, "\n", 1);
  return 1;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalKeywordInputShaderSection::HgiMetalKeywordInputShaderSection(void *a1, __int128 *a2, __int128 *a3, __int128 **a4)
{
  sub_29A008E78(v15, "");
  v13 = 0uLL;
  v14 = 0;
  __p = 0uLL;
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, a2, a4, v15, &v13, &__p);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  *a1 = &unk_2A2075750;
  v8 = a1 + 16;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(v8, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    a1[18] = *(a3 + 2);
    *v8 = v9;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalKeywordInputShaderSection::WriteType(uint64_t a1, void *a2)
{
  v5 = *(a1 + 128);
  v3 = a1 + 128;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_29A00911C(a2, v7, v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalKeywordInputShaderSection::VisitScopeMemberDeclarations(uint64_t a1, void *a2)
{
  v4 = *(a1 + 151);
  if (v4 >= 0)
  {
    v5 = a1 + 128;
  }

  else
  {
    v5 = *(a1 + 128);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 151);
  }

  else
  {
    v6 = *(a1 + 136);
  }

  sub_29A00911C(a2, v5, v6);
  sub_29A00911C(a2, " ", 1);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, ";\n", 2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalKeywordInputShaderSection::VisitEntryPointParameterDeclarations(uint64_t a1, void *a2)
{
  v4 = *(a1 + 151);
  if (v4 >= 0)
  {
    v5 = a1 + 128;
  }

  else
  {
    v5 = *(a1 + 128);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 151);
  }

  else
  {
    v6 = *(a1 + 136);
  }

  sub_29A00911C(a2, v5, v6);
  sub_29A00911C(a2, " ", 1);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderSection::WriteAttributesWithIndex(a1, a2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalKeywordInputShaderSection::VisitEntryPointFunctionExecutions(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = sub_29A00911C(a2, v6, v7);
  sub_29A00911C(v8, ".", 1);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, " = ", 3);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, ";", 1);
  return 1;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalStageOutputShaderSection::HgiMetalStageOutputShaderSection(void *a1, __int128 *a2, uint64_t a3)
{
  memset(v7, 0, sizeof(v7));
  __p = 0uLL;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalStructInstanceShaderSection::HgiMetalStructInstanceShaderSection(a1, a2, v7, a3, &__p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  *&__p = v7;
  sub_29A0D2770(&__p);
  *a1 = &unk_2A20757F0;
  return a1;
}

void sub_29ABBD770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_29A0D2770(&__p);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalStageOutputShaderSection::HgiMetalStageOutputShaderSection(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(v10, 0, sizeof(v10));
  __p = 0uLL;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalStructInstanceShaderSection::HgiMetalStructInstanceShaderSection(a1, a2, v10, a6, &__p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  *&__p = v10;
  sub_29A0D2770(&__p);
  *a1 = &unk_2A20757F0;
  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::HgiMetalStageOutputShaderSection::HgiMetalStageOutputShaderSection(a1, a2, a3, a4, 0, a6);
}

void sub_29ABBD828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_29A0D2770(&__p);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalStageOutputShaderSection::VisitEntryPointFunctionExecutions(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = sub_29A00911C(a2, v7, v8);
  sub_29A00911C(v9, ".main();\n", 9);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteDeclaration(a1, a2);
  sub_29A00911C(a2, "\n", 1);
  v10 = *(a1 + 128);
  v11 = *(v10 + 128);
  if (*(v10 + 136) != v11)
  {
    v12 = 0;
    while (1)
    {
      if (v12)
      {
        sub_29A00911C(a2, "\n", 1);
        v11 = *(v10 + 128);
      }

      v13 = *(v11 + 8 * v12);
      if ((*(v13 + 103) & 0x8000000000000000) != 0)
      {
        if (!*(v13 + 88))
        {
LABEL_30:
          pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
          sub_29A00911C(a2, ".", 1);
          (*(*v13 + 24))(v13, a2);
          v27 = sub_29A00911C(a2, " = ", 3);
          v28 = *(a3 + 23);
          if (v28 >= 0)
          {
            v29 = a3;
          }

          else
          {
            v29 = *a3;
          }

          if (v28 >= 0)
          {
            v30 = *(a3 + 23);
          }

          else
          {
            v30 = *(a3 + 8);
          }

          v31 = sub_29A00911C(v27, v29, v30);
          sub_29A00911C(v31, ".", 1);
          if ((*(v13 + 127) & 0x8000000000000000) != 0)
          {
            if (*(v13 + 112))
            {
LABEL_38:
              (*(*v13 + 56))(v13, a2);
              sub_29A00911C(a2, ".", 1);
            }
          }

          else if (*(v13 + 127))
          {
            goto LABEL_38;
          }

          (*(*v13 + 24))(v13, a2);
          v24 = a2;
          v25 = ";";
          v26 = 1;
          goto LABEL_40;
        }
      }

      else if (!*(v13 + 103))
      {
        goto LABEL_30;
      }

      v14 = sub_29A00911C(a2, "for (int arrInd = 0; arrInd < ", 30);
      v15 = *(v13 + 103);
      v16 = v15 >= 0 ? v13 + 80 : *(v13 + 80);
      v17 = v15 >= 0 ? *(v13 + 103) : *(v13 + 88);
      v18 = sub_29A00911C(v14, v16, v17);
      sub_29A00911C(v18, "; arrInd++) {\n", 14);
      pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
      sub_29A00911C(a2, ".", 1);
      (*(*v13 + 24))(v13, a2);
      sub_29A00911C(a2, "[arrInd]", 8);
      v19 = sub_29A00911C(a2, " = ", 3);
      v20 = *(a3 + 23);
      v21 = v20 >= 0 ? a3 : *a3;
      v22 = v20 >= 0 ? *(a3 + 23) : *(a3 + 8);
      v23 = sub_29A00911C(v19, v21, v22);
      sub_29A00911C(v23, ".", 1);
      if ((*(v13 + 127) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(v13 + 127))
      {
        goto LABEL_27;
      }

LABEL_28:
      (*(*v13 + 24))(v13, a2);
      v24 = a2;
      v25 = "[arrInd];\n}";
      v26 = 11;
LABEL_40:
      sub_29A00911C(v24, v25, v26);
      ++v12;
      v11 = *(v10 + 128);
      if (v12 >= (*(v10 + 136) - v11) >> 3)
      {
        return 1;
      }
    }

    if (!*(v13 + 112))
    {
      goto LABEL_28;
    }

LABEL_27:
    (*(*v13 + 56))(v13, a2);
    sub_29A00911C(a2, ".", 1);
    goto LABEL_28;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalStageOutputShaderSection::VisitGlobalMemberDeclarations(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalStructTypeDeclarationShaderSection::WriteDeclaration(*(a1 + 128), a2);
  sub_29A00911C(a2, "\n", 1);
  return 1;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalMacroShaderSection::HgiMetalMacroShaderSection(void *a1, __int128 *a2, __int128 *a3)
{
  memset(v14, 0, sizeof(v14));
  v12 = 0uLL;
  v13 = 0;
  v10 = 0uLL;
  v11 = 0;
  __p = 0uLL;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, a2, v14, &v12, &v10, &__p);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  *&v12 = v14;
  sub_29A0D2770(&v12);
  *a1 = &unk_2A2075890;
  v5 = a1 + 16;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(v5, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    a1[18] = *(a3 + 2);
    *v5 = v6;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalInterstageBlockShaderSection::HgiMetalInterstageBlockShaderSection(void *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  memset(v11, 0, sizeof(v11));
  v9 = 0uLL;
  v10 = 0;
  __p = 0uLL;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, a2, v11, &v9, &__p, a3);
  *a1 = &unk_2A20759D0;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  *&v9 = v11;
  sub_29A0D2770(&v9);
  *a1 = &unk_2A2075930;
  a1[16] = a4;
  return a1;
}

void sub_29ABBDE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  a16 = (v21 - 40);
  sub_29A0D2770(&a16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalInterstageBlockShaderSection::VisitScopeMemberDeclarations(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(*(a1 + 128), a2);
  sub_29A00911C(a2, " ", 1);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteBlockInstanceIdentifier(a1, a2);
  sub_29A00911C(a2, ";\n", 2);
  return 1;
}

void sub_29ABBDF50(void **this)
{
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

void sub_29ABBDFA4(void **this)
{
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v2);
}

void sub_29ABBDFFC(void **this)
{
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

void sub_29ABBE070(void **this)
{
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v2);
}

void sub_29ABBE0E8(void **this)
{
  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

void sub_29ABBE14C(void **this)
{
  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v2);
}

void sub_29ABBE1B4(void **this)
{
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v2 = this[16];
  if (v2)
  {
    this[17] = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

void sub_29ABBE218(void **this)
{
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v2 = this[16];
  if (v2)
  {
    this[17] = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v3);
}

void sub_29ABBE284(void **a1)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(a1);

  operator delete(v1);
}

void sub_29ABBE2AC(void **this)
{
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

void sub_29ABBE2F0(void **this)
{
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v2);
}

void sub_29ABBE338(void **this)
{
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

void sub_29ABBE37C(void **this)
{
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v2);
}

void sub_29ABBE3C4(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

void sub_29ABBE408(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v2);
}

void sub_29ABBE454(void **a1)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(a1);

  operator delete(v1);
}

void sub_29ABBE47C(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

void sub_29ABBE4C0(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v2);
}

void sub_29ABBE50C(void **a1)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions *pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::HgiMetalStepFunctions(pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions *this)
{
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  sub_29A3A41DC(this, 4uLL);
  sub_29A3A41DC(this + 24, 4uLL);
  return this;
}

void sub_29ABBE588(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_29B2C41CC(v1);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions *pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::HgiMetalStepFunctions(pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions *a1, const pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc *a2, uint64_t *a3)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  sub_29A3A41DC(a1, 4uLL);
  sub_29A3A41DC(a1 + 24, 4uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::Init(a1, a2);
  pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::Bind(a1, a3);
  return a1;
}

void sub_29ABBE61C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_29B2C41CC(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::Init(pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions *this, const pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc *a2)
{
  *(this + 1) = *this;
  v2 = (this + 24);
  *(this + 4) = *(this + 3);
  v3 = *(a2 + 22);
  if (*(a2 + 23) != v3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v3 + v6;
      v9 = *(v3 + v6 + 32);
      if (v9 == 4)
      {
        v15 = *(this + 4);
        v16 = *(this + 5);
        if (v15 >= v16)
        {
          v26 = *v2;
          v27 = v15 - *v2;
          v28 = 0xAAAAAAAAAAAAAAABLL * (v27 >> 2);
          v29 = v28 + 1;
          if (v28 + 1 > 0x1555555555555555)
          {
LABEL_33:
            sub_29A00C9A4();
          }

          v30 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v26) >> 2);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0xAAAAAAAAAAAAAAALL)
          {
            v29 = 0x1555555555555555;
          }

          if (v29)
          {
            v31 = sub_29A379A50(v2, v29);
            v29 = v32;
            v26 = *(this + 3);
            v27 = *(this + 4) - v26;
          }

          else
          {
            v31 = 0;
          }

          v38 = &v31[12 * v28];
          v39 = *(v8 + 36);
          v40 = &v31[12 * v29];
          *v38 = v7;
          *(v38 + 1) = 0;
          *(v38 + 2) = v39;
          v18 = v38 + 12;
          v41 = &v38[-v27];
          memcpy(&v38[-v27], v26, v27);
          v42 = *(this + 3);
          *(this + 3) = v41;
          *(this + 4) = v18;
          *(this + 5) = v40;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          v17 = *(v8 + 36);
          *v15 = v7;
          v15[1] = 0;
          v15[2] = v17;
          v18 = v15 + 3;
        }

        *(this + 4) = v18;
      }

      else if (v9 == 5)
      {
        v10 = v3 + v6;
        v11 = *(this + 1);
        v12 = *(this + 2);
        if (v11 >= v12)
        {
          v19 = *this;
          v20 = v11 - *this;
          v21 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 2);
          v22 = v21 + 1;
          if (v21 + 1 > 0x1555555555555555)
          {
            goto LABEL_33;
          }

          v23 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v19) >> 2);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0xAAAAAAAAAAAAAAALL)
          {
            v22 = 0x1555555555555555;
          }

          if (v22)
          {
            v24 = sub_29A379A50(this, v22);
            v22 = v25;
            v19 = *this;
            v20 = *(this + 1) - *this;
          }

          else
          {
            v24 = 0;
          }

          v33 = &v24[12 * v21];
          v34 = *(v10 + 36);
          v35 = &v24[12 * v22];
          *v33 = v7;
          *(v33 + 1) = 0;
          *(v33 + 2) = v34;
          v14 = v33 + 12;
          v36 = &v33[-v20];
          memcpy(&v33[-v20], v19, v20);
          v37 = *this;
          *this = v36;
          *(this + 1) = v14;
          *(this + 2) = v35;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          v13 = *(v10 + 36);
          *v11 = v7;
          v11[1] = 0;
          v11[2] = v13;
          v14 = v11 + 3;
        }

        *(this + 1) = v14;
        *(this + 12) = v7;
      }

      ++v7;
      v3 = *(a2 + 22);
      v6 += 40;
    }

    while (v7 < 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 23) - v3) >> 3));
  }
}

pxrInternal__aapl__pxrReserved__::HgiBuffer *pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::Bind(pxrInternal__aapl__pxrReserved__::HgiBuffer *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = *v2;
      if (*v2)
      {
        result = pxrInternal__aapl__pxrReserved__::HgiBuffer::GetDescriptor(result);
        if ((*(result + 6) & 4) == 0)
        {
          v11[0] = "hgiMetal/stepFunctions.mm";
          v11[1] = "Bind";
          v11[2] = 62;
          v11[3] = "void pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::Bind(const HgiVertexBufferBindingVector &)";
          v12 = 0;
          result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "desc.usage & HgiBufferUsageVertex", 0);
        }

        v5 = *v4;
        v6 = *(v4 + 1);
        if (*v4 != v6)
        {
          v7 = *(v2 + 20);
          do
          {
            if (*v5 == v7)
            {
              v5[1] = *(v2 + 16);
            }

            v5 += 3;
          }

          while (v5 != v6);
        }

        v8 = *(v4 + 3);
        v9 = *(v4 + 4);
        if (v8 != v9)
        {
          v10 = *(v2 + 20);
          do
          {
            if (*v8 == v10)
            {
              v8[1] = *(v2 + 16);
            }

            v8 += 3;
          }

          while (v8 != v9);
        }
      }

      v2 += 24;
    }

    while (v2 != v3);
  }

  return result;
}

unsigned int **pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetVertexBufferOffsets(unsigned int **result, void *a2, int a3)
{
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    do
    {
      v8 = v3[1];
      v7 = v3[2];
      v9 = *v3;
      v3 += 3;
      result = [a2 setVertexBufferOffset:v8 + v7 * a3 atIndex:v9];
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetPatchBaseOffsets(uint64_t result, void *a2, int a3)
{
  v3 = *(result + 24);
  for (i = *(result + 32); v3 != i; result = [a2 setVertexBufferOffset:v8 + v7 * a3 atIndex:v9])
  {
    v8 = v3[1];
    v7 = v3[2];
    v9 = *v3;
    v3 += 3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalTexture::HgiMetalTexture(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiMetal *a2, __int128 *a3)
{
  v3 = a3;
  v5 = a1;
  v6 = pxrInternal__aapl__pxrReserved__::HgiTexture::HgiTexture(a1, a3);
  *v6 = &unk_2A2075BA8;
  v6[12] = 0;
  v49 = 0;
  v7 = pxrInternal__aapl__pxrReserved__::HgiMetalTexture::CreateMetalTextureDescriptor(a2, v3, &v49);
  v8 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2) newTextureWithDescriptor:v7];
  *(v5 + 96) = v8;
  if (*(v3 + 80) && *(v3 + 72))
  {
    [v7 setResourceOptions:0];
    [v7 setSampleCount:1];
    v9 = *(v3 + 48);
    if (v9 < 5 && ((0x1Du >> v9) & 1) != 0)
    {
      [v7 setTextureType:qword_29B6CA160[v9]];
    }

    [v7 setUsage:1];
    [v7 setPixelFormat:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(*(v3 + 28), 8)];
    v36 = v5;
    v41 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2) newTextureWithDescriptor:v7];
    DataSizeOfFormat = pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(*(v3 + 28), 0, 0);
    v35 = a2;
    pxrInternal__aapl__pxrReserved__::HgiGetMipInfos(*(v3 + 28), (v3 + 52), *(v3 + 64), *(v3 + 72), &v47);
    v10 = (v48 - v47) >> 5;
    if (v10 >= *(v3 + 66))
    {
      v10 = *(v3 + 66);
    }

    v40 = v10;
    if (v10)
    {
      v11 = 0;
      v37 = vdupq_n_s64(1uLL);
      v38 = *(v3 + 80);
      v12 = v3;
      while (1)
      {
        v13 = v47 + 32 * v11;
        v14 = *(v13 + 2);
        v15 = *(v13 + 3);
        v16 = DataSizeOfFormat * v14;
        v17 = *(v3 + 48);
        if (v17 > 1)
        {
          break;
        }

        if (v17)
        {
          if (v17 != 1)
          {
            goto LABEL_30;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = v14;
          v46.i64[0] = v15;
          v46.i64[1] = 1;
          [v41 replaceRegion:&v42 mipmapLevel:v11 withBytes:v38 + *v13 bytesPerRow:DataSizeOfFormat * v14];
        }

        else
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = v14;
          v46 = v37;
          [v41 replaceRegion:&v42 mipmapLevel:v11 withBytes:v38 + *v13 bytesPerRow:DataSizeOfFormat * v14];
        }

LABEL_31:
        ++v11;
        v3 = v12;
        if (v11 == v40)
        {
          goto LABEL_32;
        }
      }

      switch(v17)
      {
        case 2:
          v21 = *(v13 + 4);
          if (v21)
          {
            v22 = 0;
            v23 = v38;
            do
            {
              v42 = 0;
              v43 = 0;
              v44 = v22;
              v45 = v14;
              v46.i64[0] = v15;
              v46.i64[1] = 1;
              [v41 replaceRegion:&v42 mipmapLevel:v11 slice:0 withBytes:v23 + *v13 bytesPerRow:v16 bytesPerImage:0];
              ++v22;
              v23 += v16 * v15;
            }

            while (v21 != v22);
          }

          goto LABEL_31;
        case 4:
          if (*(v3 + 64))
          {
            v24 = 0;
            v25 = v38;
            do
            {
              v26 = *v13;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = v14;
              v46.i64[0] = v15;
              v46.i64[1] = 1;
              [v41 replaceRegion:&v42 mipmapLevel:v11 slice:v24++ withBytes:v25 + v26 bytesPerRow:v16 bytesPerImage:0];
              v25 += v16 * v15;
            }

            while (v24 < *(v12 + 64));
          }

          goto LABEL_31;
        case 3:
          if (*(v3 + 64))
          {
            v18 = 0;
            v19 = v38;
            do
            {
              v20 = *v13;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = v14;
              v46 = vdupq_n_s64(1uLL);
              [v41 replaceRegion:&v42 mipmapLevel:v11 slice:v18++ withBytes:v19 + v20 bytesPerRow:v16 bytesPerImage:0];
              v19 += v16;
            }

            while (v18 < *(v12 + 64));
          }

          goto LABEL_31;
      }

LABEL_30:
      v42 = "hgiMetal/texture.mm";
      v43 = "HgiMetalTexture";
      v44 = 133;
      v45 = "pxrInternal__aapl__pxrReserved__::HgiMetalTexture::HgiMetalTexture(HgiMetal *, const HgiTextureDesc &)";
      v46.i8[0] = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v42, 1, "Missing Texture upload implementation");
      goto LABEL_31;
    }

LABEL_32:
    a2 = v35;
    v27 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetQueue(v35) commandBuffer];
    v5 = v36;
    v28 = [v27 blitCommandEncoder];
    v29 = v28;
    if ((*(v3 + 48) - 3) >= 2)
    {
      v30 = 1;
    }

    else
    {
      v30 = *(v3 + 64);
    }

    [v28 copyFromTexture:v41 sourceSlice:0 sourceLevel:0 toTexture:*(v36 + 96) destinationSlice:0 destinationLevel:0 sliceCount:v30 levelCount:v40];
    [v29 endEncoding];
    [v27 commit];

    v8 = v47;
    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }

  if ((v49 & 4) == 0)
  {
    v31 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetQueue(a2) commandBuffer];
    v32 = [v31 blitCommandEncoder];
    [v32 optimizeContentsForGPUAccess:*(v5 + 96)];
    [v32 endEncoding];
    v8 = [v31 commit];
  }

  if (pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(v8))
  {
    v33 = (v5 + 8);
    if (*(v5 + 31) < 0)
    {
      v33 = *v33;
    }

    [*(v5 + 96) setLabel:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v33)}];
  }

  return v5;
}

void sub_29ABBEF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v14 = *(v12 - 120);
  if (v14)
  {
    *(v12 - 112) = v14;
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::HgiTexture::~HgiTexture(a12);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalTexture::CreateMetalTextureDescriptor(pxrInternal__aapl__pxrReserved__::HgiMetal *a1, uint64_t a2, void *a3)
{
  *a3 = 1;
  if (*(a2 + 80))
  {
    v5 = *(a2 + 72) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 32;
  }

  else
  {
    v6 = *(pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(a1) + 56);
  }

  PixelFormat = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(*(a2 + 28), *(a2 + 24));
  v8 = *(a2 + 24);
  if ((v8 & 3) != 0)
  {
    *a3 |= 4uLL;
  }

  if ((v8 & 0x10) != 0)
  {
    *a3 |= 2uLL;
  }

  v9 = *(a2 + 60);
  v10 = [MEMORY[0x29EDBB670] texture2DDescriptorWithPixelFormat:PixelFormat width:*(a2 + 52) height:*(a2 + 56) mipmapped:0];
  [v10 setMipmapLevelCount:*(a2 + 66)];
  [v10 setArrayLength:*(a2 + 64)];
  [v10 setResourceOptions:v6];
  [v10 setUsage:*a3];
  ComponentSwizzle = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetComponentSwizzle(*(a2 + 32));
  v12 = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetComponentSwizzle(*(a2 + 36));
  v13 = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetComponentSwizzle(*(a2 + 40));
  [v10 setSwizzle:(v13 << 16) | (pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetComponentSwizzle(*(a2 + 44)) << 24) | (v12 << 8) | ComponentSwizzle];
  v14 = *(a2 + 48);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v15 = 1;
    }

    else
    {
      if (v14 != 4)
      {
        goto LABEL_21;
      }

      v15 = 3;
    }
  }

  else if (v14)
  {
    if (v14 != 2)
    {
      goto LABEL_21;
    }

    [v10 setDepth:v9];
    v15 = 7;
  }

  else
  {
    v15 = 0;
  }

  [v10 setTextureType:v15];
LABEL_21:
  if (*(a2 + 68) >= 2)
  {
    [v10 setSampleCount:?];
    [v10 setTextureType:4];
  }

  return v10;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalTexture::HgiMetalTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*(a3 + 32));
  pxrInternal__aapl__pxrReserved__::HgiTexture::HgiTexture(a1, Descriptor);
  *a1 = &unk_2A2075BA8;
  *(a1 + 96) = 0;
  *(a1 + 96) = [*(*(a3 + 32) + 96) newTextureViewWithPixelFormat:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(*(a3 + 24) textureType:1) levels:objc_msgSend(*(*(a3 + 32) + 96) slices:"textureType"), *(a3 + 50), *(a3 + 30), *(a3 + 48), *(a3 + 28)];
  std::string::operator=((a1 + 8), a3);
  *(a1 + 36) = *(a3 + 24);
  *(a1 + 72) = *(a3 + 28);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalTexture::~HgiMetalTexture(pxrInternal__aapl__pxrReserved__::HgiMetalTexture *this)
{
  v2 = *(this + 12);
  if (v2)
  {

    *(this + 12) = 0;
  }

  pxrInternal__aapl__pxrReserved__::HgiTexture::~HgiTexture(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalTexture::~HgiMetalTexture(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HgiInterop *pxrInternal__aapl__pxrReserved__::HgiInterop::HgiInterop(pxrInternal__aapl__pxrReserved__::HgiInterop *this)
{
  *this = operator new(1uLL);
  return this;
}

{
  *this = operator new(1uLL);
  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiInterop::~HgiInterop(void **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiInterop::TransferToApp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  (*(*a2 + 192))(a2);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  if (!v6)
  {
    v6 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  }

  if ((*(v6 + 2) ^ *a5) < 8)
  {
    v7 = "hgiInterop/hgiInterop.cpp";
    v8 = "TransferToApp";
    v9 = 107;
    v10 = "void pxrInternal__aapl__pxrReserved__::HgiInterop::TransferToApp(Hgi *, const HgiTextureHandle &, const HgiTextureHandle &, const TfToken &, const VtValue &, const GfVec4i &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Unsupported source Hgi backend: %s");
  }

  else
  {
    v7 = "hgiInterop/hgiInterop.cpp";
    v8 = "TransferToApp";
    v9 = 59;
    v10 = "void pxrInternal__aapl__pxrReserved__::HgiInterop::TransferToApp(Hgi *, const HgiTextureHandle &, const HgiTextureHandle &, const TfToken &, const VtValue &, const GfVec4i &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Unsupported destination Hgi backend: %s");
  }
}

pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL *pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL::HgiInteropOpenGL(pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = sub_29ABBF5EC("#version 120\nattribute vec4 position;\nattribute vec2 uvIn;\nvarying vec2 uv;\nvoid main(void)\n{\n    gl_Position = position;\n    uv = uvIn;\n}\n", 35633);
  *(this + 1) = sub_29ABBF5EC("#version 120\nvarying vec2 uv;\nuniform sampler2D colorIn;\nvoid main(void)\n{\n    gl_FragColor = texture2D(colorIn, uv);\n}\n", 35632);
  *(this + 2) = sub_29ABBF5EC("#version 120\nvarying vec2 uv;\nuniform sampler2D colorIn;\nuniform sampler2D depthIn;\nvoid main(void)\n{\n    float depth = texture2D(depthIn, uv).r;\n    gl_FragColor = texture2D(colorIn, uv);\n    gl_FragDepth = depth;\n}\n", 35632);
  *(this + 3) = sub_29ABBF698(*this, *(this + 1));
  *(this + 4) = sub_29ABBF698(*this, *(this + 2));
  LODWORD(v4[0]) = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenBuffers(1, v4);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34962, LODWORD(v4[0]));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferData(34962, 72, &unk_29B6CA188, 35044);
  v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34962, 0);
  *(this + 5) = v4[0];
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError(v2))
  {
    sub_29B2C41E0(v4);
  }

  return this;
}

uint64_t sub_29ABBF5EC(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  Shader = pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateShader(a2);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glShaderSource(Shader, 1, &v6, 0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompileShader(Shader);
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetShaderiv(Shader, 35713, &v5);
  if (v5 != 1)
  {
    sub_29B2C4228(v4);
  }

  return Shader;
}

uint64_t sub_29ABBF698(uint64_t a1, uint64_t a2)
{
  Program = pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateProgram();
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAttachShader(Program, a1);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAttachShader(Program, a2);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLinkProgram(Program);
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(Program, 35714, &v7);
  if (v7 != 1)
  {
    sub_29B2C4270(v6);
  }

  return Program;
}

void pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL::~HgiInteropOpenGL(pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteShader(*this);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteShader(*(this + 1));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteShader(*(this + 2));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteProgram(*(this + 3));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteProgram(*(this + 4));
  v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteBuffers(1, this + 20);
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError(v2))
  {
    v3[0] = "hgiInterop/opengl.cpp";
    v3[1] = "~HgiInteropOpenGL";
    v3[2] = 115;
    v3[3] = "pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL::~HgiInteropOpenGL()";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "glGetError() == GL_NO_ERROR", 0);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL::CompositeToInterop(uint64_t a1, void *a2, char *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, unsigned int *a5)
{
  v45 = *MEMORY[0x29EDCA608];
  if (*a2)
  {
    if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError(a1))
    {
      sub_29B2C42B8(&v39);
    }

    if (*a2)
    {
      v10 = (*(**a2 + 24))(*a2);
      if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTexture(v10))
      {
        if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushDebugGroup(33353, 0, 0xFFFFFFFFLL, "Interop");
        }

        if (*(a4 + 1))
        {
          if (sub_29A3F94B8(a4))
          {
            v11 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer;
            v12 = *(a4 + 1);
            if ((v12 & 4) != 0)
            {
              a4 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(a4);
            }

            v11(36009, *a4);
          }

          else
          {
            v39 = "hgiInterop/opengl.cpp";
            v40 = "CompositeToInterop";
            v41 = 160;
            v42 = "void pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL::CompositeToInterop(const HgiTextureHandle &, const HgiTextureHandle &, const VtValue &, const GfVec4i &)";
            v43 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v39, 1, "dstFramebuffer must hold uint32_t when targeting OpenGL");
          }
        }

        v38 = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34016, &v38);
        if (*a3)
        {
          v13 = *a2 == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = 12;
        if (!v13)
        {
          v14 = 16;
        }

        v15 = *(a1 + v14);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram(v15);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33984);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(3553, v10);
        UniformLocation = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformLocation(v15, "colorIn");
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1i(UniformLocation, 0);
        if (*a3)
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33985);
          v17 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture;
          v18 = (*(**a3 + 24))();
          v17(3553, v18);
          v19 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformLocation(v15, "depthIn");
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1i(v19, 1);
        }

        v37 = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34964, &v37);
        AttribLocation = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetAttribLocation(v15, "position");
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34962, *(a1 + 20));
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointer(AttribLocation, 4, 5126, 0, 24, 0);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray(AttribLocation);
        v21 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetAttribLocation(v15, "uvIn");
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointer(v21, 2, 5126, 0, 24, 16);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray(v21);
        IsEnabled = pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsEnabled(2929);
        v36 = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(2930, &v36);
        v35 = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2932, &v35);
        if (*a3)
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(2929);
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(1);
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthFunc(515);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(2929);
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(0);
        }

        v34 = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(3042, &v34);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(3042);
        v33 = 0;
        v32 = 0;
        v31 = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32969, &v33);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32971, &v32 + 4);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32968, &v32);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32970, &v31);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparate(1, 771, 1, 771);
        v29 = 0;
        v30 = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32777, &v30);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34877, &v29);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparate(32774, 32774);
        v28 = 0;
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(32926, &v28);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(32926);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2978, v44);
        v23 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewport(*a5, a5[1], a5[2], a5[3]);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArrays(4, 0, 3, v23);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexAttribArray(AttribLocation);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexAttribArray(v21);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34962, v37);
        if (!v34)
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(3042);
        }

        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparate(v33, v32, HIDWORD(v32), v31);
        v24 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparate(v30, v29);
        if (IsEnabled)
        {
          v25 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
        }

        else
        {
          v25 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
        }

        (*v25)(2929, v24);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(v36);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthFunc(v35);
        if (v28)
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(32926);
        }

        pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewport(v44[0], v44[1], v44[2], v44[3]);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram(0);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33985);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(3553, 0);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33984);
        v26 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(3553, 0);
        if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopDebugGroup(v26);
        }

        active = pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(v38);
        if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError(active))
        {
          sub_29B2C4300(&v39);
        }
      }

      else
      {
        v39 = "hgiInterop/opengl.cpp";
        v40 = "CompositeToInterop";
        v41 = 142;
        v42 = "void pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL::CompositeToInterop(const HgiTextureHandle &, const HgiTextureHandle &, const VtValue &, const GfVec4i &)";
        v43 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v39, 1, "Hgi color texture handle is not holding a valid OpenGL texture.");
      }
    }

    else
    {
      v39 = "hgiInterop/opengl.cpp";
      v40 = "CompositeToInterop";
      v41 = 134;
      v42 = "void pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL::CompositeToInterop(const HgiTextureHandle &, const HgiTextureHandle &, const VtValue &, const GfVec4i &)";
      v43 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v39, 1, "A valid color texture handle is required.\n");
    }
  }

  else
  {
    v39 = "hgiInterop/opengl.cpp";
    v40 = "CompositeToInterop";
    v41 = 126;
    v42 = "void pxrInternal__aapl__pxrReserved__::HgiInteropOpenGL::CompositeToInterop(const HgiTextureHandle &, const HgiTextureHandle &, const VtValue &, const GfVec4i &)";
    v43 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v39, "No valid color texture provided", a3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_CreateShaderContext(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  Program = pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateProgram();
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAttachShader(Program, a3);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glAttachShader(Program, a2);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLinkProgram(Program);
  __size[0] = 2048;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(Program, 35716, __size);
  v8 = __size[0];
  if (__size[0])
  {
    v9 = malloc(__size[0]);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramInfoLog(Program, v8, __size, v9);
    *&__size[1] = "hgiInterop/metal.mm";
    *&__size[3] = "_OutputShaderLog";
    *&v17 = 120;
    *(&v17 + 1) = "void pxrInternal__aapl__pxrReserved__::_OutputShaderLog(GLuint)";
    LOBYTE(v18) = 0;
    DWORD2(v18) = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&__size[1], "Failed to link GL program for Metal/GL interop:\n%s", v10, v9);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram(Program);
  a4[3] = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetAttribLocation(Program, "inPosition");
  a4[4] = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetAttribLocation(Program, "inTexCoord");
  a4[5] = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformLocation(Program, "interopTexture");
  a4[6] = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformLocation(Program, "depthTexture");
  UniformLocation = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformLocation(Program, "texSize");
  a4[1] = 0;
  a4[7] = UniformLocation;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenVertexArrays(1, a4 + 1);
  v13 = a4[1];
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexArray(v13, v12);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenBuffers(1, a4 + 2);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34962, a4[2]);
  if (a4[1])
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray(a4[3]);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointer(a4[3], 2, 5126, 0, 16, 0);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray(a4[4]);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointer(a4[4], 2, 5126, 0, 16, 8);
  }

  v24 = xmmword_29B6CA250;
  v25 = unk_29B6CA260;
  v26 = xmmword_29B6CA270;
  v27 = unk_29B6CA280;
  v20 = xmmword_29B6CA210;
  v21 = unk_29B6CA220;
  v22 = xmmword_29B6CA230;
  v23 = unk_29B6CA240;
  *&__size[1] = xmmword_29B6CA1D0;
  v17 = unk_29B6CA1E0;
  v18 = xmmword_29B6CA1F0;
  v19 = unk_29B6CA200;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBufferData(34962, 192, &__size[1], 35044);
  *a4 = Program;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexArray(0, v14);
  return pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram(0);
}

void *pxrInternal__aapl__pxrReserved__::HgiInteropMetal::HgiInteropMetal(void *this, pxrInternal__aapl__pxrReserved__::Hgi *a2)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiInteropMetal::~HgiInteropMetal(pxrInternal__aapl__pxrReserved__::HgiInteropMetal *this)
{
  pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_FreeTransientTextureCacheRefs(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_FreeTransientTextureCacheRefs(this);
}

void pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_FreeTransientTextureCacheRefs(pxrInternal__aapl__pxrReserved__::HgiInteropMetal *this)
{
  v2 = (this + 88);
  if (*(this + 22))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTextures(1, v2);
    *v2 = 0;
  }

  if (*(this + 23))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTextures(1, this + 92);
    *(this + 23) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {

    *(this + 3) = 0;
  }

  CVPixelBufferRelease(*(this + 9));
  *(this + 9) = 0;
  CVPixelBufferRelease(*(this + 10));
  *(this + 10) = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_CaptureOpenGlState(pxrInternal__aapl__pxrReserved__::HgiInteropMetal *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36006, this + 168);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34229, this + 172);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34964, this + 176);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(2929, this + 180);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(2930, this + 181);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(2968, this + 182);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(2884, this + 183);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2886, this + 184);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2932, this + 188);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2978, this + 192);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(3042, this + 208);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32777, this + 212);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34877, this + 216);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32969, this + 220);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32971, this + 224);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32968, this + 228);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32970, this + 232);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(32926, this + 236);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2880, this + 240);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34016, this + 244);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33984);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34038, this + 248);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33985);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34038, this + 252);
  if (!*(this + 43) && *(this + 44))
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = v3;
      v5 = this + 32 * v2 + 256;
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribiv(v2, 34338, v5);
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribiv(v2, 34339, v5 + 4);
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribiv(v2, 34341, v5 + 8);
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribiv(v2, 34922, v5 + 12);
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribiv(v2, 34340, v5 + 16);
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribiv(v2, 34975, v5 + 20);
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetVertexAttribPointerv(v2, 34373, v5 + 24);
      v3 = 0;
      v2 = 1;
    }

    while ((v4 & 1) != 0);
  }

  v6 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv;

  return v6(35725, this + 320);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_RestoreOpenGlState(pxrInternal__aapl__pxrReserved__::HgiInteropMetal *this)
{
  if (*(this + 236))
  {
    v2 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v2 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v2)(32926);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparate(*(this + 55), *(this + 57), *(this + 56), *(this + 58));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparate(*(this + 53), *(this + 54));
  if (*(this + 208))
  {
    v3 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v3 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v3)(3042);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewport(*(this + 48), *(this + 49), *(this + 50), *(this + 51));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthFunc(*(this + 47));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(*(this + 181));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilMask(*(this + 182));
  if (*(this + 183))
  {
    v4 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v4 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v4)(2884);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFrontFace(*(this + 46));
  if (*(this + 180))
  {
    v5 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v5 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v5)(2929);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonMode(1032, *(this + 60));
  if (*(this + 43))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexArray();
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34962, *(this + 44));
  if (!*(this + 43) && *(this + 44))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = v7;
      v9 = this + 32 * v6 + 256;
      v10 = *(v9 + 5);
      if (*v9)
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointer(v10, *(v9 + 1), *(v9 + 2), v9[12], *(v9 + 4), *(v9 + 3));
        (pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray)(*(v9 + 5));
      }

      else
      {
        (pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexAttribArray)(v10);
      }

      v7 = 0;
      v6 = 1;
    }

    while ((v8 & 1) != 0);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33984);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(34037, *(this + 62));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33985);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(34037, *(this + 63));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(*(this + 61));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram(*(this + 80));
  v11 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer;
  v12 = *(this + 42);

  return v11(36009, v12);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_BlitToOpenGL(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, unsigned int *a3, int a4)
{
  sub_29ABC0D18(1);
  pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_CaptureOpenGlState(a1);
  if (*(a2 + 1))
  {
    if (sub_29A3F94B8(a2))
    {
      v8 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer;
      v9 = *(a2 + 1);
      if ((v9 & 4) != 0)
      {
        a2 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
      }

      v8(36009, *a2);
    }

    else
    {
      v18[0] = "hgiInterop/metal.mm";
      v18[1] = "_BlitToOpenGL";
      v18[2] = 737;
      v18[3] = "void pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_BlitToOpenGL(const VtValue &, const GfVec4i &, int)";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "dstFramebuffer must hold uint32_t when targeting OpenGL");
    }
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthFunc(515);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(1);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(2929);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFrontFace(2305);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(2884);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonMode(1032, 6914);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(3042);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparate(1, 771, 1, 771);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparate(32774, 32774);
  v10 = a1 + 32 * a4;
  v12 = *(v10 + 96);
  v11 = (v10 + 96);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram(v12);
  v14 = v11[1];
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexArray(v14, v13);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34962, v11[2]);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray(v11[3]);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointer(v11[3], 2, 5126, 0, 16, 0);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray(v11[4]);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointer(v11[4], 2, 5126, 0, 16, 8);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33984);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(34037, *(a1 + 88));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1i(v11[5], 0);
  if (v11[6] != -1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glActiveTexture(33985);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTexture(34037, *(a1 + 92));
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1i(v11[6], 1);
  }

  (pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2f)(v11[7], [*(a1 + 16) width], objc_msgSend(*(a1 + 16), "height"));
  v15 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewport(*a3, a3[1], a3[2], a3[3]);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArrays(4, 0, 6, v15);
  v16 = pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_RestoreOpenGlState(a1);
  return pxrInternal__aapl__pxrReserved__::internal::GLApi::glFlush(v16);
}

uint64_t sub_29ABC0D18(uint64_t a1)
{
  v1 = a1;
  result = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError(a1);
  if (result)
  {
    v3 = result;
    v4 = 256;
    v5 = *MEMORY[0x29EDC9538];
    v6 = *(MEMORY[0x29EDC9538] + 24);
    while (1)
    {
      v7 = pxrInternal__aapl__pxrReserved__::internal::GLApi::gluErrorString(v3);
      sub_29A00B6DC(&v18);
      if (v7)
      {
        v8 = sub_29A00911C(&v18, "GL error: ", 10);
        v9 = strlen(v7);
        sub_29A00911C(v8, v7, v9);
        if ((v1 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v10 = sub_29A00911C(&v18, "GL error code: 0x", 17);
        *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
        v11 = MEMORY[0x29C2C1EE0]();
        *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
        if ((v1 & 1) == 0)
        {
LABEL_7:
          v16[0] = "hgiInterop/metal.mm";
          v16[1] = "_ProcessGLErrors";
          v16[2] = 52;
          v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::_ProcessGLErrors(BOOL)";
          v17 = 0;
          std::stringbuf::str();
          p_p = &__p;
          if (v15 < 0)
          {
            p_p = __p;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v16, "%s", v12, p_p);
          if (v15 < 0)
          {
            operator delete(__p);
          }
        }
      }

      v18 = v5;
      *(&v18 + *(v5 - 24)) = v6;
      v19 = MEMORY[0x29EDC9570] + 16;
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      v19 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v20);
      std::ostream::~ostream();
      result = MEMORY[0x29C2C4390](&v22);
      if (--v4)
      {
        result = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError(result);
        v3 = result;
        if (result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

void sub_29ABC0FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A00B848(&a22);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiInteropMetal::CompositeToInterop(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2, pxrInternal__aapl__pxrReserved__::HgiTexture **a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, unsigned int *a5)
{
  if (!*a2)
  {
    v29 = "hgiInterop/metal.mm";
    v30 = "CompositeToInterop";
    v31 = 811;
    v32 = "void pxrInternal__aapl__pxrReserved__::HgiInteropMetal::CompositeToInterop(const HgiTextureHandle &, const HgiTextureHandle &, const VtValue &, const GfVec4i &)";
    v33 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v29, 1, "No valid color texture provided");
    return;
  }

  pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2);
  v10 = *a2;
  if (!*a2)
  {
    v10 = *a3;
    if (!*a3)
    {
      v11 = 0;
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }
  }

  pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v10);
  if (*a2)
  {
    v11 = (*(**a2 + 24))(*a2);
  }

  else
  {
    v11 = 0;
  }

  if (!*a3)
  {
    goto LABEL_12;
  }

  v12 = (*(**a3 + 24))(*a3);
LABEL_13:
  PrimaryCommandBuffer = pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryCommandBuffer(*a1, 0, 1);
  if ((*(pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(*a1) + 48) & 4) != 0)
  {
    v14 = [PrimaryCommandBuffer computeCommandEncoderWithDispatchType:1];
  }

  else
  {
    v14 = [PrimaryCommandBuffer computeCommandEncoder];
  }

  v15 = v14;
  if (v12)
  {
    v16 = [*(a1 + 64) threadExecutionWidth];
    v17 = [*(a1 + 64) maxTotalThreadsPerThreadgroup] / v16;
    v25 = (v16 + [*(a1 + 24) width] - 1) / v16;
    v18 = v11;
    v19 = (v17 + [*(a1 + 24) height] - 1) / v17;
    [v15 setComputePipelineState:*(a1 + 64)];
    [v15 setTexture:v12 atIndex:0];
    [v15 setTexture:*(a1 + 24) atIndex:1];
    v29 = v25;
    v30 = v19;
    v11 = v18;
    v31 = 1;
    v26 = v16;
    v27 = v17;
    v28 = 1;
    [v15 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v26];
  }

  if (v11)
  {
    v20 = v12 != 0;
    v21 = [*(a1 + 56) threadExecutionWidth];
    v22 = [*(a1 + 56) maxTotalThreadsPerThreadgroup] / v21;
    v23 = (v21 + [*(a1 + 16) width] - 1) / v21;
    v24 = (v22 + [*(a1 + 16) height] - 1) / v22;
    [v15 setComputePipelineState:*(a1 + 56)];
    [v15 setTexture:v11 atIndex:0];
    [v15 setTexture:*(a1 + 16) atIndex:1];
    v29 = v23;
    v30 = v24;
    v31 = 1;
    v26 = v21;
    v27 = v22;
    v28 = 1;
    [v15 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v26];
    [v15 endEncoding];
    pxrInternal__aapl__pxrReserved__::HgiMetal::CommitPrimaryCommandBuffer(*a1, 1, 0);
    pxrInternal__aapl__pxrReserved__::HgiInteropMetal::_BlitToOpenGL(a1, a4, a5, v20);
    sub_29ABC0D18(0);
  }

  else
  {
    [v15 endEncoding];
    pxrInternal__aapl__pxrReserved__::HgiMetal::CommitPrimaryCommandBuffer(*a1, 1, 0);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdAovHasDepthSemantic(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(EmptyString, __p);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v3)
  {
    v3 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v3 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v4 = ((*(v3 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v4 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  if (*(v4 + 23) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = *v4;
  }

  v6 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = strlen(v5);
  if (v7 >= v8)
  {
    v10 = __p[0];
    if ((v13 & 0x80u) == 0)
    {
      v10 = __p;
    }

    v9 = strcmp(v10 + v7 - v8, v5) == 0;
    if (v6 < 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = 0;
    if (v13 < 0)
    {
LABEL_21:
      operator delete(__p[0]);
    }
  }

  return v9;
}

void sub_29ABC15D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::HdAovHasDepthStencilSemantic(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(EmptyString, __p);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v3)
  {
    v3 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v3 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v4 = ((*(v3 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v4 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  v5 = v14;
  pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(v4, v14);
  v6 = v15;
  v7 = v14[0];
  if (v15 < 0)
  {
    v5 = v14[0];
  }

  v8 = v17;
  if ((v17 & 0x80u) == 0)
  {
    v9 = v17;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = strlen(v5);
  if (v9 < v10)
  {
    v11 = 0;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v12 = __p[0];
  if ((v17 & 0x80u) == 0)
  {
    v12 = __p;
  }

  v11 = strcmp(v12 + v9 - v10, v5) == 0;
  if (v6 < 0)
  {
LABEL_20:
    operator delete(v7);
    v8 = v17;
  }

LABEL_21:
  if ((v8 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_29ABC1710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdParsedAovToken::HdParsedAovToken(uint64_t this)
{
  *this = 0;
  *(this + 8) &= 0xF8u;
  return this;
}

{
  *this = 0;
  *(this + 8) &= 0xF8u;
  return this;
}

pxrInternal__aapl__pxrReserved__::HdParsedAovToken *pxrInternal__aapl__pxrReserved__::HdParsedAovToken::HdParsedAovToken(pxrInternal__aapl__pxrReserved__::HdParsedAovToken *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  *this = 0;
  *(this + 8) &= 0xF8u;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v5)
  {
    v5 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v5 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = ((*(v5 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v7)
  {
    v7 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v7 + 15) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = ((*(v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v9)
  {
    v9 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*(v9 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v10 = ((*(v9 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v10 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  v11 = *(EmptyString + 23);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v12 = EmptyString[1];
  }

  else
  {
    v12 = *(EmptyString + 23);
  }

  v13 = *(v6 + 23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = v6[1];
    if (v12 <= v14)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v14 = *(v6 + 23);
    if (v12 <= v13)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x80000000) != 0)
  {
    v16 = *EmptyString;
    if (EmptyString[1] >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = EmptyString[1];
    }
  }

  else
  {
    if (v11 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(EmptyString + 23);
    }

    v16 = EmptyString;
  }

  if ((v13 & 0x80000000) == 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = *v6;
  }

  if (!memcmp(v16, v17, v15) && v15 == v14)
  {
    if ((v13 & 0x80000000) != 0)
    {
      v13 = v6[1];
    }

    std::string::basic_string(&v35, EmptyString, v13, 0xFFFFFFFFFFFFFFFFLL, &v37);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v36);
    if (&v36 == this)
    {
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*this & 7) != 0)
      {
        atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *this = v36;
      v36 = 0;
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v33 = *(this + 8) | 1;
    goto LABEL_119;
  }

LABEL_41:
  if ((v11 & 0x80000000) != 0)
  {
    v19 = EmptyString[1];
  }

  else
  {
    v19 = v11;
  }

  v20 = *(v8 + 23);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v21 = v8[1];
    if (v19 <= v21)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v21 = *(v8 + 23);
    if (v19 <= v20)
    {
      goto LABEL_69;
    }
  }

  if ((v11 & 0x80000000) != 0)
  {
    v23 = *EmptyString;
    if (EmptyString[1] >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = EmptyString[1];
    }
  }

  else
  {
    if (v11 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v11;
    }

    v23 = EmptyString;
  }

  if ((v20 & 0x80000000) == 0)
  {
    v24 = v8;
  }

  else
  {
    v24 = *v8;
  }

  if (!memcmp(v23, v24, v22) && v22 == v21)
  {
    if ((v20 & 0x80000000) != 0)
    {
      v20 = v8[1];
    }

    std::string::basic_string(&v35, EmptyString, v20, 0xFFFFFFFFFFFFFFFFLL, &v37);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v36);
    if (&v36 == this)
    {
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*this & 7) != 0)
      {
        atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *this = v36;
      v36 = 0;
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v33 = *(this + 8) | 2;
    goto LABEL_119;
  }

LABEL_69:
  if ((v11 & 0x80000000) != 0)
  {
    v26 = EmptyString[1];
  }

  else
  {
    v26 = v11;
  }

  v27 = *(v10 + 23);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = *(v10 + 23);
    if (v26 <= v27)
    {
      goto LABEL_97;
    }

    goto LABEL_76;
  }

  v28 = v10[1];
  if (v26 > v28)
  {
LABEL_76:
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *EmptyString;
      if (EmptyString[1] >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = EmptyString[1];
      }
    }

    else
    {
      if (v11 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v11;
      }

      v30 = EmptyString;
    }

    if ((v27 & 0x80000000) == 0)
    {
      v31 = v10;
    }

    else
    {
      v31 = *v10;
    }

    if (memcmp(v30, v31, v29) || v29 != v28)
    {
      goto LABEL_97;
    }

    if ((v27 & 0x80000000) != 0)
    {
      v27 = v10[1];
    }

    std::string::basic_string(&v35, EmptyString, v27, 0xFFFFFFFFFFFFFFFFLL, &v37);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v36);
    if (&v36 == this)
    {
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*this & 7) != 0)
      {
        atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *this = v36;
      v36 = 0;
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v33 = *(this + 8) | 4;
LABEL_119:
    *(this + 8) = v33;
    return this;
  }

LABEL_97:
  sub_29A166F2C(this, a2);
  return this;
}

void sub_29ABC1BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((*v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdAovTokens_StaticTokenType *sub_29ABC1C90(atomic_ullong *a1)
{
  result = sub_29ABC1CD8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdAovTokens_StaticTokenType::~HdAovTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdAovTokens_StaticTokenType *sub_29ABC1CD8()
{
  v0 = operator new(0xA0uLL);
  pxrInternal__aapl__pxrReserved__::HdAovTokens_StaticTokenType::HdAovTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens_StaticTokenType::~HdBasisCurvesReprDescTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens_StaticTokenType *this)
{
  v5 = (this + 32);
  sub_29A124AB0(&v5);
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 1);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens_StaticTokenType::HdBasisCurvesReprDescTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens_StaticTokenType *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "surfaceShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "surfaceShaderUnlit", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "hullColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "pointColor", 0);
  v3 = (this + 32);
  v4 = *this;
  v15 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v5;
    }
  }

  v6 = *(this + 1);
  v16 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v7;
    }
  }

  v8 = *(this + 2);
  v17 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v9;
    }
  }

  v10 = *(this + 3);
  v18 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v11;
    }
  }

  *v3 = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  sub_29A12EF7C(v3, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v15 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABC1F38(_Unwind_Exception *a1)
{
  v3 = 24;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[3];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29ABC1FD4()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_REFINED_CURVES))
  {
    sub_29B2C4348();
  }
}

pxrInternal__aapl__pxrReserved__::HdRprim *pxrInternal__aapl__pxrReserved__::HdBasisCurves::HdBasisCurves(pxrInternal__aapl__pxrReserved__::HdBasisCurves *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdRprim::HdRprim(this, a2);
  *result = &unk_2A2075BF8;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdBasisCurves::GetBuiltinPrimvarNames(pxrInternal__aapl__pxrReserved__::HdBasisCurves *this)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1748A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748A58))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v2)
    {
      v2 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v3 = *(v2 + 59);
    v11 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v4;
      }
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v6 = *(v5 + 54);
    v12 = v6;
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v8 = *(v7 + 84);
    v13 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    qword_2A1748A40 = 0;
    *algn_2A1748A48 = 0;
    qword_2A1748A50 = 0;
    sub_29A12EF7C(&qword_2A1748A40, &v11, &v14, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
      v10 = *(&v11 + i);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A1748A40, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748A58);
  }

  return &qword_2A1748A40;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdBasisCurves::_reprDescConfig(pxrInternal__aapl__pxrReserved__::HdBasisCurves *this)
{
  if ((atomic_load_explicit(&qword_2A1748A60, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C437C();
  }

  return &qword_2A1748A68;
}

BOOL pxrInternal__aapl__pxrReserved__::HdBasisCurves::IsEnabledForceRefinedCurves(pxrInternal__aapl__pxrReserved__::HdBasisCurves *this)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_REFINED_CURVES);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
  }

  return *v1 == 1;
}

void *pxrInternal__aapl__pxrReserved__::HdBasisCurves::ConfigureRepr(pxrInternal__aapl__pxrReserved__::HdBasisCurves *a1, int *a2)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_REFINED_CURVES);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
  }

  if (*v4 == 1)
  {
    *a2 = 2;
  }

  pxrInternal__aapl__pxrReserved__::HdBasisCurves::_reprDescConfig(a1);
  v8 = *a2;
  v5 = *(a2 + 1);
  v9 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 = v6;
    }
  }

  result = sub_29ABC2408(&qword_2A1748A68, a1, &v8);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29ABC2408(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_4:
    sub_29ABC2ACC(v7, a2, a3);
    result = sub_29ABC2754(a1, v7);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v7[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v7[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    while ((*a2 ^ *v4) >= 8)
    {
      v4 += 24;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    *(v4 + 8) = *a3;

    return sub_29A166F2C((v4 + 16), (a3 + 8));
  }

  return result;
}

void sub_29ABC24D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc@<X0>(pxrInternal__aapl__pxrReserved__::HdBasisCurves *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdBasisCurves::_reprDescConfig(this);

  return sub_29ABC2544(&qword_2A1748A68, this, a2);
}

uint64_t *sub_29ABC2544@<X0>(char **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  while (v5 != v6)
  {
    if ((*a2 ^ **sub_29ABC2B30(&v15)) <= 7)
    {
      result = sub_29ABC2B30(&v15);
      v10 = *result;
      *a3 = *(*result + 8);
      v11 = *(v10 + 16);
      *(a3 + 8) = v11;
      if ((v11 & 7) != 0)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 8) = v12;
        }
      }

      return result;
    }

    sub_29ABC2B58(&v15);
    v5 = v15;
    v6 = v16;
  }

  v15 = "hd/rprim.h";
  v16 = "Find";
  v17 = 312;
  v18 = "DescArray pxrInternal__aapl__pxrReserved__::HdRprim::_ReprDescConfigs<pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDesc>::Find(const TfToken &) const [DESC_TYPE = pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDesc, N = 1]";
  v19 = 0;
  v7 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v7)
  {
    v8 = (v7 + 16);
    if (*(v7 + 39) < 0)
    {
      v8 = *v8;
    }
  }

  else
  {
    v8 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Repr %s not found", v8);
  *a3 = 0;
  *(a3 + 8) = 0;
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!result)
  {
    result = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  v13 = *result;
  if ((*result & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    *a3 = 0;
    *(a3 + 8) = v13;
    if ((v13 & 7) != 0)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
      {
        *(a3 + 8) = v14;
      }

      atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = v13;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *sub_29ABC26C8(atomic_ullong *a1)
{
  result = sub_29ABC2710();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType::~HdTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *sub_29ABC2710()
{
  v0 = operator new(0x2D0uLL);
  pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType::HdTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29ABC2754(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ABC27B4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29ABC27B4(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[24 * v6];
  *v8 = *a2;
  *a2 = 0;
  *(v8 + 2) = *(a2 + 8);
  *(v8 + 2) = *(a2 + 16);
  *(a2 + 16) = 0;
  *&v17 = v8 + 24;
  v9 = *(a1 + 8);
  v10 = &v8[*a1 - v9];
  sub_29ABC28F4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ABC2A44(&v15);
  return v14;
}

void sub_29ABC28E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ABC2A44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABC28F4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a4;
  v10 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(a4 + 8) = *(v4 + 2);
      *(a4 + 16) = v4[2];
      v4[2] = 0;
      v4 += 3;
      a4 += 24;
    }

    while (v4 != a3);
    v10 = a4;
    for (i = 1; a2 != a3; a2 += 3)
    {
      v5 = a2[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return sub_29ABC29C0(v7);
}

uint64_t sub_29ABC29C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ABC29F8(a1);
  }

  return a1;
}

uint64_t sub_29ABC29F8(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *(v1 - 24);
    v1 -= 24;
    v4 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29ABC2A44(uint64_t a1)
{
  sub_29ABC2A7C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29ABC2A7C(uint64_t result, uint64_t a2)
{
  for (i = *(result + 16); i != a2; i = *(result + 16))
  {
    v3 = (i - 24);
    *(result + 16) = i - 24;
    v4 = *(i - 8);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((*v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29ABC2ACC(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 8) = *a3;
  v4 = *(a3 + 8);
  *(result + 16) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *sub_29ABC2B30(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C43D4();
  }

  return result;
}

void *sub_29ABC2B58(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::array<pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDesc, 1>>>>::operator++() [T = const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::array<pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDesc, 1>>>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens_StaticTokenType *sub_29ABC2BDC(atomic_ullong *a1)
{
  result = sub_29ABC2C24();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens_StaticTokenType::~HdBasisCurvesReprDescTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens_StaticTokenType *sub_29ABC2C24()
{
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens_StaticTokenType::HdBasisCurvesReprDescTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens_StaticTokenType::~HdBasisCurvesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens_StaticTokenType::HdBasisCurvesSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "basisCurves", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "topology", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABC2DE4(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetTopology(pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  }

  v5 = v4[1];
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABC2F3C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABC3244(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    }

    sub_29A166F2C(v11, v4 + 1);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABC30B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::Builder::SetTopology(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens))
    {
      sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

void *sub_29ABC3244@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2075C68, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  if (!result)
  {
    return sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748AB8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748A80, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748A80, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748AB8);
  }

  return &unk_2A1748A80;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetTopologyLocator(pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748AF8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1748AF8);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1748A80, (v3 + 1), dword_2A1748AC0);
      __cxa_atexit(sub_29ABC33B4, dword_2A1748AC0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748AF8);
    }
  }

  return dword_2A1748AC0;
}