void sub_29B22EF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B22EF44(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B22EF94(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B22EFF4@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B22F040(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B22F040(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CAA50;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA9B8;
  return a1;
}

void sub_29B22F0E8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAA50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B22F154(uint64_t a1)
{
  sub_29A008864(v8);
  std::ostream::operator<<();
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = __p[1];
  }

  std::string::append((a1 + 400), v2, v3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v8[0] = *MEMORY[0x29EDC9528];
  v4 = *(MEMORY[0x29EDC9528] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v8[2] = v4;
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v12);
}

void sub_29B22F314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a15);
  _Unwind_Resume(a1);
}

double sub_29B22F344@<D0>(_OWORD *a1@<X8>)
{
  sub_29B22FD58(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B22F380(uint64_t a1, uint64_t a2, uint64_t **a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    sub_29A008E78(&__dst, "in");
    v13 = sub_29B23EC38(a2, &__dst);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__dst);
    }

    sub_29A008E78(&__dst, "channels");
    v14 = sub_29B23EC38(a2, &__dst);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__dst);
    }

    if (!v13 || !v14)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v46 = std::string::append(&v57, "' is not a valid swizzle node");
      v47 = *&v46->__r_.__value_.__l.__data_;
      v59 = v46->__r_.__value_.__r.__words[2];
      __dst = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &__dst);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    if (!v13[30])
    {
      v16 = v13[16];
      v15 = v13[17];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_29A014BEC(v15);
      }

      if (!v16)
      {
        v48 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v49 = std::string::append(&v57, "'");
        v50 = *&v49->__r_.__value_.__l.__data_;
        v59 = v49->__r_.__value_.__r.__words[2];
        __dst = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(v48, &__dst);
        *v48 = &unk_2A20C8F68;
        __cxa_throw(v48, &unk_2A20C8EF8, sub_29B20BED4);
      }
    }

    v17 = v14[16];
    v18 = v14[17];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      v19 = v14[16];
      v20 = v14[17];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v19 + 32))(&__dst);
      if (v20)
      {
        sub_29A014BEC(v20);
      }
    }

    else
    {
      v21 = sub_29B1F31FC();
      if (*(v21 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v21, *(v21 + 1));
      }

      else
      {
        v22 = *v21;
        v59 = *(v21 + 2);
        __dst = v22;
      }
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }

    (*(*a1 + 112))(&v57, a1, v13);
    if (!v13[30])
    {
      v23 = v13[16];
      v24 = v13[17];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v12[1];
      if (v23)
      {
        v26 = v13[17];
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v25 + 24))(&v56);
        if (v26)
        {
          sub_29A014BEC(v26);
        }
      }

      else
      {
        v27 = sub_29B243874(v25, v13[3], 0);
        if (*(v27 + 23) < 0)
        {
          sub_29A008D14(&v56, *v27, *(v27 + 8));
        }

        else
        {
          v28 = *v27;
          v56.__r_.__value_.__r.__words[2] = *(v27 + 16);
          *&v56.__r_.__value_.__l.__data_ = v28;
        }
      }

      if (v24)
      {
        sub_29A014BEC(v24);
      }

      v29 = sub_29B2438AC(v12[1], v13[3]);
      v30 = v29;
      if (*(v29 + 23) >= 0)
      {
        v31 = *(v29 + 23);
      }

      else
      {
        v31 = *(v29 + 8);
      }

      v32 = &v51;
      sub_29A022DE0(&v51, v31 + 1);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = v51.__r_.__value_.__r.__words[0];
      }

      if (v31)
      {
        if (v30[23] >= 0)
        {
          v33 = v30;
        }

        else
        {
          v33 = *v30;
        }

        memmove(v32, v33, v31);
      }

      *(&v32->__r_.__value_.__l.__data_ + v31) = 32;
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v57;
      }

      else
      {
        v34 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v57.__r_.__value_.__l.__size_;
      }

      v36 = std::string::append(&v51, v34, size);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v52, " = ");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v56;
      }

      else
      {
        v40 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v56.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v53, v40, v41);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v55 = v42->__r_.__value_.__r.__words[2];
      *__p = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 80))(v12, __p, a4, 1);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }
    }

    v44 = HIBYTE(v59);
    if (v59 < 0)
    {
      v44 = *(&__dst + 1);
    }

    if (v44)
    {
      (*(*v12[1] + 40))(&v56);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      v57 = v56;
    }

    (*(*v12 + 48))(v12, a4);
    (*(*v12 + 192))(v12, **(a2 + 152), 1, 0, a3, a4);
    std::operator+<char>();
    (*(*v12 + 72))(v12, &v56, a4);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    (*(*v12 + 56))(v12, a4, 1);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59) < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_29B22FAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
    if ((v42 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v43);
  goto LABEL_8;
}

BOOL sub_29B22FC24(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 32);
  v3 = *(a2 + 55);
  if ((v3 & 0x80000000) == 0)
  {
    if (v3 != 8)
    {
      return 1;
    }

    return *v2 != 0x736C656E6E616863;
  }

  if (*(a2 + 40) == 8)
  {
    v2 = *v2;
    return *v2 != 0x736C656E6E616863;
  }

  return 1;
}

void *sub_29B22FC74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    v2 = a1;
  }

  if (*(v2 + 127) < 0)
  {
    return sub_29A008D14(a2, *(v2 + 104), *(v2 + 112));
  }

  v3 = *(v2 + 104);
  *(a2 + 16) = *(v2 + 120);
  *a2 = v3;
  return result;
}

uint64_t sub_29B22FCA8(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B22FCF8(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B22FD58@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B22FDA4(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B22FDA4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CAB40;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CAAA0;
  return a1;
}

void sub_29B22FE4C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAB40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B22FEB8(uint64_t a1, __int128 *a2, void *a3)
{
  *a1 = &unk_2A20CAB90;
  v5 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  v7 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1065353216;
  return a1;
}

const void *sub_29B22FF64(uint64_t a1, const void **a2)
{
  v3 = sub_29A5DAB7C((a1 + 48), a2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v6 = std::string::append(&v18, "' doesn't exist in shader '");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v10 = *(a1 + 8);
    v9 = a1 + 8;
    v8 = v10;
    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    if (v11 >= 0)
    {
      v13 = *(v9 + 23);
    }

    else
    {
      v13 = *(v9 + 8);
    }

    v14 = std::string::append(&v19, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v20, "'");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v22 = v16->__r_.__value_.__r.__words[2];
    v21 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v21);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  return v3[5];
}

void sub_29B2300A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

void sub_29B230144(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  if (sub_29A5DAB7C((a1 + 48), a2))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v13 = std::string::append(&v25, "' already exist in shader '");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v17 = *(a1 + 8);
    v16 = a1 + 8;
    v15 = v17;
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    if (v18 >= 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = *(v16 + 8);
    }

    v21 = std::string::append(&v26, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v27, "'");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v29 = v23->__r_.__value_.__r.__words[2];
    v28 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v28);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B2303D8(a2, a3, a4);
  *&v28 = a2;
  v8 = sub_29B230594(a1 + 48, a2, &unk_29B76934F, &v28);
  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = v8[6];
  v8[5] = v10;
  v8[6] = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  *&v28 = *a4;
  sub_29A0A71C8(a1 + 88, &v28);
}

void sub_29B2302FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

void sub_29B2303B0(uint64_t a1)
{
  v1 = sub_29B2308A4(a1);

  operator delete(v1);
}

void *sub_29B2303D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x1C0uLL);
  result = sub_29B23043C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29B23043C(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CABC0;
  sub_29B230520(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B2304D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CABC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B230520(int a1, void *__dst, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B24063C(__dst);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29B23057C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B230594(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
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

  sub_29B230800(a1, v9, a4, v27);
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

void sub_29B2307E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B230800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
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

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29B2308A4(uint64_t a1)
{
  *a1 = &unk_2A20CAB90;
  sub_29AD97000(a1 + 112);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_29AD97000(a1 + 48);
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

double sub_29B23091C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = &unk_2A20CAC10;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  return result;
}

void sub_29B2309D0()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29B230AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, void ***a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  sub_29A012C90(&a10);
  a14 = &a18;
  sub_29A012C90(&a14);
  a18 = (v18 - 72);
  sub_29A012C90(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_29B230B4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 264);
  v5 = *(a2 + 272);
  if (v4 != v5)
  {
    v8 = result;
    do
    {
      v9 = *v4++;
      result = (*(*v8 + 112))(v8, v9, a3, a4);
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_29B230BCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_29B242018(a4, a2, a3);
  if ((result & 1) == 0)
  {

    return sub_29B241F68(a4, a2, a3, 1);
  }

  return result;
}

uint64_t sub_29B230C5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a2 + 264);
  v6 = *(a2 + 272);
  if (v5 != v6)
  {
    v10 = result;
    do
    {
      v11 = *v5;
      if (!a5 || (a5 & ~*(v11 + 40)) == 0)
      {
        result = (*(*v10 + 128))(v10, v11, a3, a4);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_29B230CF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  if (v5 != v6)
  {
    v10 = result;
    do
    {
      result = sub_29B23C5B0(*v5);
      if (result && (!a5 || (a5 & ~*(result + 40)) == 0))
      {
        result = (*(*v10 + 128))(v10, result, a3, a4);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_29B230DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 40))(a1, a4, 0, 1);
  v6 = *(*a1 + 64);

  return v6(a1, a4);
}

std::string *sub_29B230E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  while (v5 != v6)
  {
    v7 = *v5;
    if ((*(*v5 + 127) & 0x8000000000000000) == 0)
    {
      if (!*(*v5 + 127))
      {
        goto LABEL_6;
      }

LABEL_5:
      sub_29B241494(a3, v7 + 104, 0);
      goto LABEL_6;
    }

    if (*(v7 + 112))
    {
      goto LABEL_5;
    }

LABEL_6:
    v5 += 2;
  }

  return sub_29B241400(a3);
}

void sub_29B230ED0(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a3 + 23) >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  if (v10)
  {
    p_dst = &__dst;
    sub_29A022DE0(&__dst, v10 + 1);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    memmove(p_dst, v13, v10);
    *(&p_dst->__r_.__value_.__l.__data_ + v10) = 32;
  }

  else
  {
    v14 = sub_29B1F31FC();
    if (*(v14 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v14, *(v14 + 1));
    }

    else
    {
      v15 = *v14;
      __dst.__r_.__value_.__r.__words[2] = *(v14 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v15;
    }
  }

  v16 = sub_29B2438AC(*(a1 + 8), *(a2 + 24));
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = *v16;
  }

  if (v17 >= 0)
  {
    v19 = *(v16 + 23);
  }

  else
  {
    v19 = *(v16 + 8);
  }

  std::string::append(&__dst, v18, v19);
  if (*(*(a2 + 24) + 32))
  {
    goto LABEL_21;
  }

  v22 = *(a2 + 128);
  v21 = *(a2 + 136);
  if (!v21)
  {
    if (v22)
    {
      v23 = 0;
      v24 = *(a1 + 8);
      goto LABEL_28;
    }

LABEL_21:
    v20 = 0;
    goto LABEL_40;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_29A014BEC(v21);
  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = *(a2 + 136);
  v24 = *(a1 + 8);
  if (!v23)
  {
LABEL_28:
    v25 = 1;
    goto LABEL_29;
  }

  v25 = 0;
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_29:
  (*(*v24 + 152))(__p);
  if (v48 >= 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  if (v48 >= 0)
  {
    v27 = HIBYTE(v48);
  }

  else
  {
    v27 = __p[1];
  }

  std::string::append(&__dst, v26, v27);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v25 & 1) == 0)
  {
    sub_29A014BEC(v23);
  }

  v20 = 1;
LABEL_40:
  std::operator+<char>();
  if (v48 >= 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if (v48 >= 0)
  {
    v29 = HIBYTE(v48);
  }

  else
  {
    v29 = __p[1];
  }

  std::string::append(&__dst, v28, v29);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
    if (!v20)
    {
      goto LABEL_62;
    }
  }

  else if (!v20)
  {
    goto LABEL_62;
  }

  v30 = *(a1 + 8);
  v31 = *(a2 + 136);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v30 + 160))(__p);
  if (v48 >= 0)
  {
    v32 = __p;
  }

  else
  {
    v32 = __p[0];
  }

  if (v48 >= 0)
  {
    v33 = HIBYTE(v48);
  }

  else
  {
    v33 = __p[1];
  }

  std::string::append(&__dst, v32, v33);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (v31)
  {
    sub_29A014BEC(v31);
  }

LABEL_62:
  if (a6)
  {
    v34 = *(a2 + 128);
    v35 = *(a2 + 136);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = *(a1 + 8);
    if (v34)
    {
      v37 = *(a2 + 136);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v36 + 24))(__p);
      if (v37)
      {
        sub_29A014BEC(v37);
      }
    }

    else
    {
      v38 = sub_29B243874(v36, *(a2 + 24), 1);
      if (*(v38 + 23) < 0)
      {
        sub_29A008D14(__p, *v38, *(v38 + 8));
      }

      else
      {
        v39 = *v38;
        v48 = *(v38 + 16);
        *__p = v39;
      }
    }

    if (v35)
    {
      sub_29A014BEC(v35);
    }

    v40 = HIBYTE(v48);
    if (v48 < 0)
    {
      v40 = __p[1];
    }

    if (v40)
    {
      std::operator+<char>();
    }

    else
    {
      v41 = sub_29B1F31FC();
      if (*(v41 + 23) < 0)
      {
        sub_29A008D14(v45, *v41, *(v41 + 1));
      }

      else
      {
        v42 = *v41;
        v46 = *(v41 + 2);
        *v45 = v42;
      }
    }

    if (v46 >= 0)
    {
      v43 = v45;
    }

    else
    {
      v43 = v45[0];
    }

    if (v46 >= 0)
    {
      v44 = HIBYTE(v46);
    }

    else
    {
      v44 = v45[1];
    }

    std::string::append(&__dst, v43, v44);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29B241474(a5, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29B2312F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if ((v29 & 1) == 0)
  {
    sub_29A014BEC(v28);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2313C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a2 + 96) != *(a2 + 88))
  {
    v13 = result;
    v14 = 0;
    do
    {
      (*(*v13 + 48))(v13, a6);
      (*(*v13 + 208))(v13, *(*(a2 + 88) + 8 * v14), a3, a5, a6, a7);
      (*(*v13 + 72))(v13, a4, a6);
      result = (*(*v13 + 56))(v13, a6, 0);
      ++v14;
    }

    while (v14 < (*(a2 + 96) - *(a2 + 88)) >> 3);
  }

  return result;
}

void sub_29B231504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 224))(__p);
  sub_29B241474(a4, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B231570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23158C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v12 = sub_29B2438AC(*(a1 + 8), *(a2 + 24));
    v13 = v12;
    if (*(v12 + 23) >= 0)
    {
      v14 = *(v12 + 23);
    }

    else
    {
      v14 = *(v12 + 8);
    }

    v15 = &v27;
    sub_29A022DE0(&v27, v14 + 1);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v27.__r_.__value_.__r.__words[0];
    }

    if (v14)
    {
      if (v13[23] >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = *v13;
      }

      memmove(v15, v16, v14);
    }

    *(&v15->__r_.__value_.__l.__data_ + v14) = 32;
    v17 = *(a2 + 127);
    if (v17 >= 0)
    {
      v18 = (a2 + 104);
    }

    else
    {
      v18 = *(a2 + 104);
    }

    if (v17 >= 0)
    {
      v19 = *(a2 + 127);
    }

    else
    {
      v19 = *(a2 + 112);
    }

    v20 = std::string::append(&v27, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v29 = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
  }

  else if (*(a2 + 127) < 0)
  {
    sub_29A008D14(__p, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    *__p = *(a2 + 104);
    v29 = *(a2 + 120);
  }

  sub_29B241474(a6, __p);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if (!a3)
    {
      goto LABEL_28;
    }
  }

  else if (!a3)
  {
    goto LABEL_28;
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

LABEL_28:
  __p[0] = 0;
  __p[1] = 0;
  v29 = 0;
  sub_29B20D254(a5, a2, __p);
  v22 = HIBYTE(v29);
  if (v29 < 0)
  {
    v22 = __p[1];
  }

  if (v22)
  {
    sub_29B241474(a6, __p);
  }

  if (a4)
  {
    v23 = sub_29B243874(*(a1 + 8), *(a2 + 24), 0);
    v24 = *(v23 + 23);
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v23 + 8);
    }

    if (v24)
    {
      std::operator+<char>();
      sub_29B241474(a6, &v25);
      if (v26 < 0)
      {
        operator delete(v25);
      }
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B2317A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B231814(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 240);
  if (v7)
  {
    if (*(v7 + 127) < 0)
    {
      sub_29A008D14(a4, *(v7 + 104), *(v7 + 112));
    }

    else
    {
      v9 = *(v7 + 104);
      *(a4 + 16) = *(v7 + 120);
      *a4 = v9;
    }

    if ((*(a2 + 271) & 0x8000000000000000) != 0)
    {
      if (!*(a2 + 256))
      {
LABEL_19:
        __p[0] = 0;
        __p[1] = 0;
        v22 = 0;
        sub_29B20D164(a3, a2, __p);
        v16 = HIBYTE(v22);
        if (v22 >= 0)
        {
          v17 = HIBYTE(v22);
        }

        else
        {
          v17 = __p[1];
        }

        if (v17)
        {
          if (v22 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          std::string::append(a4, v18, v17);
          v16 = HIBYTE(v22);
        }

        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        return;
      }
    }

    else if (!*(a2 + 271))
    {
      goto LABEL_19;
    }

    (*(**(a1 + 8) + 40))(__p);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *__p;
    *(a4 + 16) = v22;
    goto LABEL_19;
  }

  v10 = *(a2 + 128);
  v11 = *(a2 + 136);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 8);
  v13 = *(a2 + 24);
  if (v10)
  {
    v14 = *(a2 + 128);
    v15 = *(a2 + 136);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v12 + 24))(v12, v13, v14, 0);
    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  else
  {
    v19 = sub_29B243874(v12, v13, 0);
    if (*(v19 + 23) < 0)
    {
      sub_29A008D14(a4, *v19, *(v19 + 8));
    }

    else
    {
      v20 = *v19;
      *(a4 + 16) = *(v19 + 16);
      *a4 = v20;
    }
  }

  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29B231A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B231A7C(uint64_t a1, __int128 *a2, const void *a3)
{
  v5 = a2;
  result = sub_29B2339D8(a1 + 24, a2, &unk_29B769375, &v5);
  result[5] = a3;
  return result;
}

const void **sub_29B231AC4(const void **result, __int128 **a2, const void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      v7 = v3;
      result = sub_29B2339D8((v6 + 3), v3, &unk_29B769375, &v7);
      result[5] = a3;
      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29B231B40(void *a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = (*(*a1 + 16))(a1);
  sub_29B1C5CA8(a2, v8, &v32);
  v9 = v32;
  if (!v32)
  {
    *a4 = 0;
    *(a4 + 1) = 0;
    goto LABEL_24;
  }

  sub_29B20D090(a3, (v32 + 48), &v31);
  if (v31)
  {
    v10 = *(&v31 + 1);
    *a4 = v31;
    *(a4 + 1) = v10;
    goto LABEL_24;
  }

  sub_29B1EAB28(a2, v30);
  if (v30[0] == v30[1])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v24 = std::string::append(&v27, "' has no outputs defined");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v29 = v24->__r_.__value_.__r.__words[2];
    v28 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v28);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v11 = (*(**v30[0] + 64))();
  v12 = sub_29B246738(v11);
  v13 = v32;
  v14 = sub_29B1F31FC();
  if (sub_29AAC05D4(v13, v14))
  {
    if (*(v12 + 25) - 5 > 2)
    {
      sub_29B21D784(&v28);
    }

    else
    {
      sub_29B216EF4(&v28);
    }
  }

  else
  {
    v15 = v32;
    v16 = sub_29B1F31FC();
    if (!sub_29B22CFC0(v15, v16))
    {
      goto LABEL_16;
    }

    v17 = sub_29A8877BC(a1 + 3, (v9 + 48));
    if (v17)
    {
      (v17[5])(&v28);
      v18 = v28;
    }

    else
    {
      v18 = 0uLL;
    }

    v28 = 0uLL;
    v22 = *(&v31 + 1);
    v31 = v18;
    if (v22)
    {
      sub_29A014BEC(v22);
      if (*(&v28 + 1))
      {
        sub_29A014BEC(*(&v28 + 1));
      }

      v21 = v31;
      if (v31)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = v18;
      if (v18)
      {
        goto LABEL_17;
      }
    }

    if (*(v12 + 25) - 5 > 2)
    {
      sub_29B22C640(&v28);
    }

    else
    {
      sub_29B21B7BC(&v28);
    }
  }

  v19 = v28;
  v28 = 0uLL;
  v20 = *(&v31 + 1);
  v31 = v19;
  if (v20)
  {
    sub_29A014BEC(v20);
    if (*(&v28 + 1))
    {
      sub_29A014BEC(*(&v28 + 1));
    }
  }

LABEL_16:
  v21 = v31;
  if (v31)
  {
LABEL_17:
    (*(*v21 + 24))(v21, v32, a3);
    v26 = v31;
    if (*(&v31 + 1))
    {
      atomic_fetch_add_explicit((*(&v31 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_29B20D024(a3, (v9 + 48), &v26);
    if (*(&v26 + 1))
    {
      sub_29A014BEC(*(&v26 + 1));
    }

    *a4 = v31;
    a4 = &v31;
  }

  *a4 = 0;
  *(a4 + 1) = 0;
  *&v28 = v30;
  sub_29A0176E4(&v28);
  if (*(&v31 + 1))
  {
    sub_29A014BEC(*(&v31 + 1));
  }

LABEL_24:
  if (v33)
  {
    sub_29A014BEC(v33);
  }
}

void sub_29B231E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  __p = &a24;
  sub_29A0176E4(&__p);
  v26 = *(v24 - 72);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  _Unwind_Resume(a1);
}

void sub_29B231F34(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v116 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, off_2A14FE690[0]);
  sub_29B2328AC(a3, __p, &v62);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v62)
  {
    sub_29B233DB0(__p);
    v5 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v6 = *(&v62 + 1);
    v62 = v5;
    if (v6)
    {
      sub_29A014BEC(v6);
      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }
    }

    sub_29A008E78(__p, off_2A14FE690[0]);
    v61 = v62;
    if (*(&v62 + 1))
    {
      atomic_fetch_add_explicit((*(&v62 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE19BF4(a3, __p, &v61);
    if (*(&v61 + 1))
    {
      sub_29A014BEC(*(&v61 + 1));
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29A008E78(__dst, off_2A14FDC90[0]);
  v7 = sub_29B247F60();
  if (SHIBYTE(v38) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v64 = v38;
  }

  v65[1] = 0;
  v66 = 0;
  v65[0] = v7;
  sub_29A008E78(&v59, off_2A14FDC98[0]);
  v8 = sub_29B247F60();
  if (SHIBYTE(v60) < 0)
  {
    sub_29A008D14(&v67, v59, *(&v59 + 1));
  }

  else
  {
    v67 = v59;
    v68 = v60;
  }

  v70 = 0;
  v71 = 0;
  v69 = v8;
  sub_29A008E78(v57, off_2A14FDCA0[0]);
  if (SHIBYTE(v58) < 0)
  {
    sub_29A008D14(&v72, v57[0], v57[1]);
  }

  else
  {
    v72 = *v57;
    v73 = v58;
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  sub_29A008E78(&v55, off_2A14FDCA8[0]);
  if (SHIBYTE(v56) < 0)
  {
    sub_29A008D14(&v77, v55, *(&v55 + 1));
  }

  else
  {
    v77 = v55;
    v78 = v56;
  }

  v80 = 0;
  v79 = 0;
  v81 = 0;
  sub_29A008E78(v53, off_2A14FDCB0[0]);
  if (SHIBYTE(v54) < 0)
  {
    sub_29A008D14(&v82, v53[0], v53[1]);
  }

  else
  {
    v82 = *v53;
    v83 = v54;
  }

  v85 = 0;
  v84 = 0;
  v86 = 0;
  sub_29A008E78(&v51, off_2A14FDCB8[0]);
  if (SHIBYTE(v52) < 0)
  {
    sub_29A008D14(&v87, v51, *(&v51 + 1));
  }

  else
  {
    v87 = v51;
    v88 = v52;
  }

  v90 = 0;
  v89 = 0;
  v91 = 0;
  sub_29A008E78(v49, off_2A14FDCC0[0]);
  if (SHIBYTE(v50) < 0)
  {
    sub_29A008D14(&v92, v49[0], v49[1]);
  }

  else
  {
    v92 = *v49;
    v93 = v50;
  }

  v95 = 0;
  v94 = 0;
  v96 = 0;
  sub_29A008E78(&v47, off_2A14FDCC8[0]);
  v9 = sub_29B24696C();
  if (SHIBYTE(v48) < 0)
  {
    sub_29A008D14(&v97, v47, *(&v47 + 1));
  }

  else
  {
    v97 = v47;
    v98 = v48;
  }

  v101 = 0;
  v99 = v9;
  v100 = 0;
  sub_29A008E78(v45, off_2A14FDC68[0]);
  v10 = sub_29B247F60();
  if (SHIBYTE(v46) < 0)
  {
    sub_29A008D14(&v102, v45[0], v45[1]);
  }

  else
  {
    v102 = *v45;
    v103 = v46;
  }

  v106 = 0;
  v104 = v10;
  v105 = 0;
  sub_29A008E78(v43, off_2A14FDCD0[0]);
  v11 = sub_29B247F60();
  if (SHIBYTE(v44) < 0)
  {
    sub_29A008D14(&v107, v43[0], v43[1]);
  }

  else
  {
    v107 = *v43;
    v108 = v44;
  }

  v111 = 0;
  v109 = v11;
  v110 = 0;
  sub_29A008E78(v41, off_2A14FDC50[0]);
  v12 = sub_29B247F60();
  v13 = v12;
  if (SHIBYTE(v42) < 0)
  {
    sub_29A008D14(&v112, v41[0], v41[1]);
    v114 = v13;
    v115 = 0u;
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41[0]);
    }
  }

  else
  {
    v112 = *v41;
    v113 = v42;
    v114 = v12;
    v115 = 0u;
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  for (i = 0; i != 66; i += 6)
  {
    v15 = &__p[i];
    if (*(&v64 + i * 8 + 7) < 0)
    {
      sub_29A008D14(__dst, *v15, v15[1]);
    }

    else
    {
      *__dst = *v15;
      v38 = v15[2];
    }

    v16 = *&v65[i];
    v39 = v16;
    v17 = *(&v66 + i * 8);
    v40 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v39;
    }

    else
    {
      v18 = v16;
    }

    v35 = 0;
    v36 = 0;
    sub_29B23294C(v62, __dst, v18, &v35);
    if (v36)
    {
      sub_29A014BEC(v36);
    }

    if (v40)
    {
      sub_29A014BEC(v40);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  v19 = *a2;
  v20 = sub_29B1F31FC();
  sub_29B233790(v19, v20, __dst);
  v21 = __dst[0];
  v22 = __dst[1];
  while (v21 != v22)
  {
    if (sub_29B232A2C(*v21))
    {
      v23 = sub_29B232AA8(*v21);
      v24 = (*(**v21 + 64))();
      v25 = sub_29B246738(v24);
      v26 = v25;
      v27 = *(v23 + 23);
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v23 + 1);
      }

      if (v27)
      {
        v28 = v25 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        v29 = v62;
        sub_29B232B34(*v21, &v33);
        sub_29B23294C(v29, v23, v26, &v33);
        if (v34)
        {
          sub_29A014BEC(v34);
        }
      }
    }

    v21 += 2;
  }

  *&v59 = __dst;
  sub_29A0176E4(&v59);
  v30 = 66;
  do
  {
    v31 = &__p[v30];
    v32 = __p[v30 - 1];
    if (v32)
    {
      sub_29A014BEC(v32);
    }

    if (*(v31 - 25) < 0)
    {
      operator delete(*(v31 - 6));
    }

    v30 -= 6;
  }

  while (v30 * 8);
  if (*(&v62 + 1))
  {
    sub_29A014BEC(*(&v62 + 1));
  }
}

void sub_29B232660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  while (v76 != &a76)
  {
    v76 -= 6;
    sub_29B23290C(v76);
  }

  if (a75)
  {
    sub_29A014BEC(a75);
  }

  _Unwind_Resume(a1);
}

void sub_29B2328AC(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A5DAB7C((a1 + 240), a2);
  if (!v4 || (v5 = v4[6], v4[5] == v5))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(v5 - 2);

    sub_29B233D00(v6, a3);
  }
}

uint64_t sub_29B23290C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29B23294C(uint64_t *a1, const void **a2, uint64_t a3, uint64_t *a4)
{
  v10 = a3;
  result = sub_29A8877BC(a1 + 6, a2);
  if (!result)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 4);
    v11 = a2;
    sub_29B23307C((a1 + 6), a2, &unk_29B769375, &v11)[5] = v8;
    v9 = a1[4];
    if (v9 >= a1[5])
    {
      result = sub_29B2333A4(a1 + 3, a2, &v10, a4);
    }

    else
    {
      sub_29B2334F0(a1 + 24, a1[4], a2, &v10, a4);
      result = v9 + 48;
      a1[4] = v9 + 48;
    }

    a1[4] = result;
  }

  return result;
}

const void **sub_29B232A2C(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC30[0]);
  v2 = sub_29AAC9C84(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29B232A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B232AA8(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC20[0]);
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

void sub_29B232B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B232B34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_29B2338CC(a1))
  {
    v4 = sub_29B23394C(a1);
    v5 = (*(*a1 + 64))(a1);

    sub_29B1FB24C(v4, v5, a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void sub_29B232BCC(int a1, void *a2, uint64_t a3)
{
  sub_29B24B500(a2, (a3 + 400));
  v5 = *(a3 + 256);
  if (*(a3 + 264) != v5)
  {
    v6 = 0;
    do
    {
      sub_29B232D08(a2, *(v5 + 8 * v6++));
      v5 = *(a3 + 256);
    }

    while (v6 < (*(a3 + 264) - v5) >> 3);
  }

  for (i = *(a3 + 296); i; i = *i)
  {
    v8 = i[5];
    v9 = *(v8 + 88);
    if (*(v8 + 96) != v9)
    {
      v10 = 0;
      do
      {
        sub_29B232D08(a2, *(v9 + 8 * v10++));
        v9 = *(v8 + 88);
      }

      while (v10 < (*(v8 + 96) - v9) >> 3);
    }
  }

  for (j = *(a3 + 336); j; j = *j)
  {
    v12 = j[5];
    v13 = *(v12 + 88);
    if (*(v12 + 96) != v13)
    {
      v14 = 0;
      do
      {
        sub_29B232D08(a2, *(v13 + 8 * v14++));
        v13 = *(v12 + 88);
      }

      while (v14 < (*(v12 + 96) - v13) >> 3);
    }
  }

  for (k = *(a3 + 376); k; k = *k)
  {
    v16 = k[5];
    v17 = *(v16 + 88);
    if (*(v16 + 96) != v17)
    {
      v18 = 0;
      do
      {
        sub_29B232D08(a2, *(v17 + 8 * v18++));
        v17 = *(v16 + 88);
      }

      while (v18 < (*(v16 + 96) - v17) >> 3);
    }
  }
}

void sub_29B232D08(void *a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_29A008D14(&__str, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    __str = *(a2 + 32);
  }

  sub_29B24B500(a1, &__str);
  std::string::operator=((a2 + 32), &__str);
  if (*(a2 + 127) < 0)
  {
    sub_29A008D14(&__p, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    __p = *(a2 + 104);
  }

  sub_29B24B500(a1, &__p);
  std::string::operator=((a2 + 104), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29B232DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B232E0C(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B230144(a3, a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B232E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B232E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  sub_29AE1443C(v11, a3 + 408);
  v7 = *(*a2 + 264);
  v8 = *(*a2 + 272);
  while (v7 != v8)
  {
    v9 = *v7;
    if (v12)
    {
      sub_29B232F80(v11, *v7);
    }

    (*(**(v9 + 176) + 56))(*(v9 + 176), v9, a3, a4);
    ++v7;
  }

  return sub_29AE1467C(v11);
}

uint64_t sub_29B232F80(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_29B232FD8(void *a1)
{
  v1 = sub_29AE1D49C(a1);

  operator delete(v1);
}

void *sub_29B233000(void *__dst, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v7;
  }

  v9 = *a4;
  v8 = a4[1];
  __dst[3] = a3;
  __dst[4] = v9;
  __dst[5] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

const void **sub_29B23307C(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
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

  sub_29B2332F4(a1, v9, a4, v27);
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

void sub_29B2332D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B2332F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
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

  v9[5] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B233388(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2333A4(uint64_t *a1, __int128 *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v10 = 0x555555555555555;
  }

  else
  {
    v10 = v5;
  }

  v21 = a1;
  if (v10)
  {
    v11 = sub_29A08E058(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v18 = v11;
  v19 = &v11[48 * v4];
  *(&v20 + 1) = &v11[48 * v10];
  sub_29B2334F0(a1, v19, a2, a3, a4);
  *&v20 = v19 + 48;
  v12 = a1[1];
  v13 = &v19[*a1 - v12];
  sub_29B233568(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29B233714(&v18);
  return v17;
}

void sub_29B2334DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29B233714(va);
  _Unwind_Resume(a1);
}

void sub_29B2334F0(int a1, void *__dst, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a4;
  v7 = a5[1];
  v8 = *a5;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B233000(__dst, a3, v6, &v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29B233550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B233568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29B233634(a1, v5);
      v5 += 48;
    }
  }

  return sub_29B233688(v10);
}

void sub_29B233634(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t sub_29B233688(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B2336C0(a1);
  }

  return a1;
}

void sub_29B2336C0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_29B233634(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29B233714(void **a1)
{
  sub_29B233748(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29B233748(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_29B233634(v4, i - 48);
  }
}

void sub_29B233790(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    sub_29B1D7770(v8, &v18);
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

void sub_29B233894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
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

BOOL sub_29B2338CC(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC28[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B233930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B23394C(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC28[0]);
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

void sub_29B2339BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B2339D8(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
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

  sub_29B233C50(a1, v9, a4, v27);
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

void sub_29B233C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B233C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
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

  v9[5] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B233CE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29B233D00(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20958E0, &unk_2A20CAD20, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B233DB0(void *a1@<X8>)
{
  v2 = operator new(0x70uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20CAD48;
  v2[3] = &unk_2A20CAD98;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  v2[12] = 0;
  *(v2 + 26) = 1065353216;
  *a1 = v2 + 3;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B233E70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAD48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B233EDC(uint64_t a1)
{
  *a1 = &unk_2A20CAD98;
  sub_29A0EB4E8(a1 + 48);
  v4 = (a1 + 24);
  sub_29B233FB0(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B233F44(char *a1)
{
  *a1 = &unk_2A20CAD98;
  sub_29A0EB4E8((a1 + 48));
  v3 = (a1 + 24);
  sub_29B233FB0(&v3);
  v2 = *(a1 + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_29B233FB0(void ***a1)
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
        v4 -= 48;
        sub_29B233634(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29B234038(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5)
{
  v8 = sub_29B23CA70(a1, a2, a3);
  *v8 = &unk_2A20CADB8;
  v9 = a4[1];
  v8[26] = *a4;
  v8[27] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 1065353216;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1065353216;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1065353216;
  v12 = *a5;
  v10 = a5 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      v17 = (v11 + 4);
      sub_29B23307C(a1 + 288, v11 + 4, &unk_29B769442, &v17)[5] = 1;
      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v11 = v14;
    }

    while (v14 != v10);
  }

  return a1;
}

void sub_29B234198(_Unwind_Exception *a1)
{
  sub_29B23A5AC(v2 + 224);
  sub_29B23A570(v5);
  sub_29B23A5AC(v4);
  sub_29B23A570(v3);
  sub_29A0EB4E8(v2 + 64);
  v8 = *v6;
  if (*v6)
  {
    *(v1 + 272) = v8;
    operator delete(v8);
  }

  sub_29AD97000(v2);
  v9 = *(v1 + 216);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29B2341F8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2341F8(uint64_t a1)
{
  *a1 = &unk_2A20CAE08;
  v2 = *(a1 + 200);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    *(a1 + 160) = v4;
    operator delete(v4);
  }

  sub_29AD97000(a1 + 112);
  v5 = *(a1 + 88);
  if (v5)
  {
    *(a1 + 96) = v5;
    operator delete(v5);
  }

  sub_29AD97000(a1 + 48);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29B234290(std::string::size_type a1, uint64_t a2, uint64_t a3)
{
  sub_29B1EA6E8(a2, &v32);
  v5 = v32;
  v6 = v33;
  while (v5 != v6)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = 0;
    v29 = 0;
    sub_29B2345F4(v8, &v28, &v30);
    if (v29)
    {
      sub_29A014BEC(v29);
    }

    if (v30)
    {
      (*(*v30 + 32))(__dst);
    }

    else
    {
      v9 = sub_29B1F31FC();
      if (*(v9 + 23) < 0)
      {
        sub_29A008D14(__dst, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v27 = *(v9 + 2);
        *__dst = v10;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    sub_29A008E78(&__p, off_2A14FDC88[0]);
    v11 = sub_29A8877BC((v8 + 160), &__p);
    if (v11)
    {
      v12 = (v11 + 5);
    }

    else
    {
      v12 = sub_29B1F31FC();
    }

    if (v22 < 0)
    {
      operator delete(__p);
    }

    v13 = (*(*v8 + 64))(v8);
    v14 = sub_29B246738(v13);
    if ((*(**(*a3 + 8) + 200))(*(*a3 + 8), __dst, v14, v12, &v23))
    {
      v15 = sub_29B23D768(a1, (v8 + 48), v23);
      v16 = v24;
      v17 = v25;
      if (v25)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = sub_29B23D768(a1, (v8 + 48), v14);
      v19 = HIBYTE(v27);
      if (v27 < 0)
      {
        v19 = __dst[1];
      }

      if (!v19)
      {
        goto LABEL_28;
      }

      v16 = v30;
      v17 = v31;
      if (v31)
      {
LABEL_18:
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v18 = *(v15 + 136);
    *(v15 + 128) = v16;
    *(v15 + 136) = v17;
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

LABEL_28:
    if (sub_29B2346E8(v8))
    {
      *(v15 + 232) |= 1u;
    }

    sub_29B1E9AA4(v8, &__p);
    if (__p)
    {
      std::string::operator=((v15 + 192), __p + 2);
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v25)
    {
      sub_29A014BEC(v25);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v31)
    {
      sub_29A014BEC(v31);
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }

    v5 += 2;
  }

  __dst[0] = &v32;
  sub_29A0176E4(__dst);
}

void sub_29B234558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, char a28)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    sub_29A014BEC(a27);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  a15 = &a28;
  sub_29A0176E4(&a15);
  _Unwind_Resume(a1);
}

void sub_29B2345F4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_29B1D41D0(a1))
  {
    v6 = a2[1];
    v8 = *a2;
    v9 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1DB034(a1, &v8, &__p);
    v7 = (*(*a1 + 64))(a1);
    sub_29B1FB24C(&__p, v7, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

void sub_29B2346B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B2346E8(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDCE0[0]);
  v2 = sub_29AAC9C84(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29B234748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B234764(std::string::size_type a1, uint64_t a2)
{
  sub_29B1EAB28(a2, __p);
  v4 = __p[0];
  v5 = __p[1];
  while (v4 != v5)
  {
    v6 = (*v4 + 48);
    v7 = (*(**v4 + 64))();
    v8 = sub_29B246738(v7);
    v9 = sub_29B23D9F0(a1, v6, v8);
    v10 = sub_29B1D22C0(*v4);
    std::string::operator=((v9 + 248), v10);
    v4 += 2;
  }

  v15 = __p;
  sub_29A0176E4(&v15);
  if (*(a1 + 96) == *(a1 + 88))
  {
    sub_29A008E78(__p, "out");
    v11 = (*(*a2 + 64))(a2);
    v12 = sub_29B246738(v11);
    sub_29B23D9F0(a1, __p, v12);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B234890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2348C4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_29B1D7E50(*a3, &v64);
  if (!v64)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v28 = std::string::append(&v61, "'");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v63 = v28->__r_.__value_.__r.__words[2];
    v62 = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v62);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v9 = sub_29A5DAB7C((a1 + 224), (v64 + 48));
  if (!v9 || (v10 = v9[5]) == 0)
  {
    v11 = v65;
    v60[0] = v64;
    v60[1] = v65;
    if (v65)
    {
      atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = sub_29B235098(a1, v60, a5);
    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  v12 = *a4;
  if (*a4)
  {
    goto LABEL_14;
  }

  v13 = *a2;
  v14 = sub_29B1F31FC();
  if (sub_29B1D18A4(v13, v14))
  {
    sub_29B1D8060(*a2, &v62);
    v15 = v62;
    v62 = 0uLL;
    v16 = a4[1];
    *a4 = v15;
    if (v16)
    {
      sub_29A014BEC(v16);
      if (*(&v62 + 1))
      {
        sub_29A014BEC(*(&v62 + 1));
      }
    }
  }

  v12 = *a4;
  if (*a4)
  {
LABEL_14:
    v17 = v64;
    v18 = a4[1];
    v56 = v12;
    v57 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1EDBDC(v17, &v56, &v58);
    if (v57)
    {
      sub_29A014BEC(v57);
    }

    if (v58)
    {
      v19 = sub_29B23EC14(v10, (v58 + 48));
      if (v19)
      {
        goto LABEL_20;
      }

LABEL_37:
      v23 = __cxa_allocate_exception(0x20uLL);
      if (v58)
      {
        if (*(v58 + 71) < 0)
        {
          sub_29A008D14(&v52, *(v58 + 48), *(v58 + 56));
        }

        else
        {
          v52 = *(v58 + 48);
          v53 = *(v58 + 64);
        }
      }

      else
      {
        sub_29A008E78(&v52, "out");
      }

      std::operator+<char>();
      v43 = std::string::append(&v54, "' on upstream node '");
      v44 = *&v43->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = *(v64 + 71);
      if (v45 >= 0)
      {
        v46 = (v64 + 48);
      }

      else
      {
        v46 = *(v64 + 48);
      }

      if (v45 >= 0)
      {
        v47 = *(v64 + 71);
      }

      else
      {
        v47 = *(v64 + 56);
      }

      v48 = std::string::append(&v55, v46, v47);
      v49 = *&v48->__r_.__value_.__l.__data_;
      v61.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v61.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      v50 = std::string::append(&v61, "'");
      v51 = *&v50->__r_.__value_.__l.__data_;
      v63 = v50->__r_.__value_.__r.__words[2];
      v62 = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(v23, &v62);
      *v23 = &unk_2A20C8F68;
      __cxa_throw(v23, &unk_2A20C8EF8, sub_29B20BED4);
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v19 = **(v10 + 152);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_20:
  sub_29B1D7E50(*a2, &v52);
  if (v52)
  {
    v20 = sub_29A5DAB7C((a1 + 224), (v52 + 48));
    if (!v20 || (v21 = v20[5]) == 0 || !*a4)
    {
      v24 = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v25 = std::string::append(&v61, "'");
      v26 = *&v25->__r_.__value_.__l.__data_;
      v63 = v25->__r_.__value_.__r.__words[2];
      v62 = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(v24, &v62);
      *v24 = &unk_2A20C8F68;
      __cxa_throw(v24, &unk_2A20C8EF8, sub_29B20BED4);
    }

    v22 = sub_29B23EB84(v20[5], (*a4 + 48));
    if (!v22)
    {
      v30 = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v31 = std::string::append(&v54, "' on downstream node '");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v35 = v21[2];
      v34 = (v21 + 2);
      v33 = v35;
      v36 = v34[23];
      if (v36 >= 0)
      {
        v37 = v34;
      }

      else
      {
        v37 = v33;
      }

      if (v36 >= 0)
      {
        v38 = v34[23];
      }

      else
      {
        v38 = *(v34 + 1);
      }

      v39 = std::string::append(&v55, v37, v38);
      v40 = *&v39->__r_.__value_.__l.__data_;
      v61.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v61.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v61, "'");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v63 = v41->__r_.__value_.__r.__words[2];
      v62 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(v30, &v62);
      *v30 = &unk_2A20C8F68;
      __cxa_throw(v30, &unk_2A20C8EF8, sub_29B20BED4);
    }
  }

  else
  {
    v22 = sub_29B23EB84(a1, (*a2 + 48));
    if (!v22)
    {
      goto LABEL_28;
    }
  }

  sub_29B23C4CC(v22, v19);
LABEL_28:
  if (*(&v52 + 1))
  {
    sub_29A014BEC(*(&v52 + 1));
  }

  if (v59)
  {
    sub_29A014BEC(v59);
  }

  if (v65)
  {
    sub_29A014BEC(v65);
  }
}

void sub_29B234E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v41 - 89) < 0)
  {
    operator delete(*(v41 - 112));
  }

  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v40 & 1) == 0)
    {
LABEL_12:
      if (a10)
      {
        sub_29A014BEC(a10);
      }

      if (a31)
      {
        sub_29A014BEC(a31);
      }

      v43 = *(v41 - 72);
      if (v43)
      {
        sub_29A014BEC(v43);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v39);
  goto LABEL_12;
}

std::string::size_type sub_29B235098(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = sub_29B1F31FC();
  sub_29B1ED628(v6, v7, 0, &v47);
  if (!v47)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v35 = std::string::append(&v44, "'");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v46 = v35->__r_.__value_.__r.__words[2];
    v45 = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v45);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v8 = a2[1];
  *&v43 = *a2;
  *(&v43 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A017F80((a3 + 384), &v43);
  if (*(&v43 + 1))
  {
    sub_29A014BEC(*(&v43 + 1));
  }

  sub_29B23CB10(a1, (*a2 + 48), v47, a3, &v44);
  sub_29B23E2B8(v44.__r_.__value_.__l.__data_, *a2, v47, a3);
  *&v45 = *a2 + 48;
  v9 = sub_29B23AA28(a1 + 224, v45, &unk_29B769442, &v45);
  size = v44.__r_.__value_.__l.__size_;
  v10 = v44.__r_.__value_.__r.__words[0];
  if (v44.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v44.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v9[6];
  v9[5] = v10;
  v9[6] = size;
  if (v12)
  {
    sub_29A014BEC(v12);
    v10 = v44.__r_.__value_.__r.__words[0];
  }

  *&v45 = v10;
  sub_29A0A71C8(a1 + 264, &v45);
  v13 = *(a3 + 392);
  v14 = *(v13 - 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  *(a3 + 392) = v13 - 16;
  v15 = *a2;
  v16 = sub_29B1F31FC();
  sub_29B1D2AF8(v15, v16, &v45);
  v18 = *(&v45 + 1);
  for (i = v45; i != v18; i += 2)
  {
    v20 = *i;
    v19 = i[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = sub_29AE15164(v20);
    v22 = *(v21 + 23);
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(v21 + 1);
    }

    if (v22)
    {
      v23 = sub_29B23EC14(a1, v21);
      if (v23)
      {
        v24 = sub_29B23EB84(v44.__r_.__value_.__l.__data_, (v20 + 48));
        if (v24)
        {
          sub_29B23C4CC(v24, v23);
        }
      }
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  v41 = &v45;
  sub_29A0176E4(&v41);
  sub_29B1EA6E8(v47, &v45);
  v26 = *(&v45 + 1);
  for (j = v45; j != v26; j += 2)
  {
    v27 = sub_29B23EB84(v44.__r_.__value_.__l.__data_, (*j + 48));
    sub_29AAC1E24(*a2, (*j + 48), &v41);
    if (v41)
    {
      v28 = sub_29B1D2C34(v41);
    }

    else
    {
      v28 = sub_29B1F31FC();
    }

    if ((*(v28 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v28 + 1))
      {
        goto LABEL_38;
      }
    }

    else if (*(v28 + 23))
    {
      goto LABEL_38;
    }

    if (!v27[30])
    {
      sub_29B1E9AA4(*j, &v39);
      if (v39)
      {
        sub_29B23599C(a1, v27, v39, a3);
      }

      if (v40)
      {
        sub_29A014BEC(v40);
      }
    }

LABEL_38:
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  v41 = &v45;
  sub_29A0176E4(&v41);
  v29 = *a2;
  v30 = a2[1];
  v38[0] = v29;
  v38[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = v44.__r_.__value_.__l.__size_;
  v37 = *&v44.__r_.__value_.__l.__data_;
  if (v44.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v44.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B2385F4(a1, v38, &v37, a3);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  if (v30)
  {
    sub_29A014BEC(v30);
  }

  v32 = v44.__r_.__value_.__r.__words[0];
  if (v44.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v44.__r_.__value_.__l.__size_);
  }

  if (v48)
  {
    sub_29A014BEC(v48);
  }

  return v32;
}

void sub_29B235470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    if ((v32 & 1) == 0)
    {
LABEL_8:
      v35 = *(v33 - 88);
      if (v35)
      {
        sub_29A014BEC(v35);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v31);
  goto LABEL_8;
}

void sub_29B2355A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46[0] = 0;
  v46[1] = 0;
  v45 = v46;
  sub_29B1DA55C(a2, &v37);
  if (v42 == v43)
  {
    sub_29B1F1C6C(&v37);
  }

  *(&v44 + 1) = 0;
  v33[0] = v37;
  v33[1] = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  v33[2] = v39;
  v33[3] = v40;
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1EBF20(v34, &v41);
  memset(v35, 0, sizeof(v35));
  sub_29B1D3464(v35, v42, v43, 0xAAAAAAAAAAAAAAABLL * (v43 - v42));
  v36 = v44;
  v5 = sub_29B1F1C4C();
  v6 = v5;
  v7 = v5[1];
  v29[0] = *v5;
  v29[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v5[3];
  v29[2] = v5[2];
  v29[3] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1EBF20(v30, (v5 + 4));
  memset(v31, 0, sizeof(v31));
  sub_29B1D3464(v31, v6[7], v6[8], 0xAAAAAAAAAAAAAAABLL * ((v6[8] - v6[7]) >> 3));
  v32 = *(v6 + 5);
  while (!sub_29B1EBF78(v33, v29))
  {
    sub_29B1EA37C(v33, &v24);
    v9 = v28;
    v23 = v28;
    if (*(&v28 + 1))
    {
      atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      v10 = v24;
      v11 = v25;
      v22[0] = v24;
      v22[1] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      for (i = v46[0]; i; i = *i)
      {
        v13 = i[4];
        if (v10 >= v13)
        {
          if (v13 >= v10)
          {
            goto LABEL_34;
          }

          ++i;
        }
      }

      v14 = sub_29B1F31FC();
      if (!sub_29B1D18A4(v9, v14))
      {
        goto LABEL_30;
      }

      sub_29A42F734(&v45, &v23, &v23);
      sub_29B1D8060(v23, &v19);
      (*(*v19 + 80))(&v21);
      v15 = v21;
      v21 = 0uLL;
      v16 = *(&v23 + 1);
      v23 = v15;
      if (v16)
      {
        sub_29A014BEC(v16);
        if (*(&v21 + 1))
        {
          sub_29A014BEC(*(&v21 + 1));
        }
      }

      if (v20)
      {
        sub_29A014BEC(v20);
      }

      if (v23)
      {
LABEL_30:
        v17 = v26;
        v18 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B2348C4(a1, v22, &v23, &v17, a3);
        if (v18)
        {
          sub_29A014BEC(v18);
        }
      }

LABEL_34:
      if (v11)
      {
        sub_29A014BEC(v11);
      }
    }

    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    sub_29ABF2F5C(&v24);
    sub_29B1F1C6C(v33);
  }

  sub_29B1EBFEC(v29);
  sub_29B1EBFEC(v33);
  sub_29B1EBFEC(&v37);
  sub_29A42FCE0(&v45, v46[0]);
}

void sub_29B235898(_Unwind_Exception *a1)
{
  sub_29B1EBFEC(v1 - 168);
  sub_29A42FCE0(v1 - 72, *(v1 - 64));
  _Unwind_Resume(a1);
}

void sub_29B23599C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  std::operator+<char>();
  v8 = sub_29A5DAB7C((a1 + 224), &v73);
  if (v8)
  {
    v9 = v8[5];
    if (v9)
    {
      goto LABEL_89;
    }
  }

  sub_29B1EE5C0(a3);
  std::operator+<char>();
  v10 = std::string::append(&v69, "_");
  v11 = *&v10->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = a2[3];
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = a2[3];
  }

  else
  {
    v14 = *v12;
  }

  if (v13 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = std::string::append(&__str, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v72 = v16->__r_.__value_.__r.__words[2];
  v71 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  sub_29AAC0094(*(a1 + 208), &v71, &v67);
  if (!v67)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v53 = std::string::append(&v65, "' for defaultgeomprop on input '");
    v54 = *&v53->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    sub_29B23C2B4(a2, &v64);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v64;
    }

    else
    {
      v55 = v64.__r_.__value_.__r.__words[0];
    }

    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v64.__r_.__value_.__l.__size_;
    }

    v57 = std::string::append(&__p, v55, size);
    v58 = *&v57->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = std::string::append(&v69, "'");
    v60 = *&v59->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &__str);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B23CB10(a1, &v73, v67, a4, &v65);
  v18 = v65.__r_.__value_.__l.__size_;
  v63 = *&v65.__r_.__value_.__l.__data_;
  if (v65.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v65.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B236264(a1, &v63);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v61 = 0;
  v62 = 0;
  sub_29B1D8824(a3, &v61, &__str);
  if (v62)
  {
    sub_29A014BEC(v62);
  }

  v19 = sub_29B2362F0(a3);
  v20 = v19;
  v21 = *(v19 + 23);
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(v19 + 1);
  }

  if (v21)
  {
    v22 = v65.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v69, off_2A14FDE38[0]);
    v23 = sub_29B23EB84(v22, &v69.__r_.__value_.__l.__data_);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    v24 = v67;
    sub_29A008E78(&v69, off_2A14FDE38[0]);
    sub_29B1EAF90(v24, &v69.__r_.__value_.__l.__data_, &v64);
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
      if (!v23)
      {
        goto LABEL_47;
      }
    }

    else if (!v23)
    {
LABEL_47:
      if (v64.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v64.__r_.__value_.__l.__size_);
      }

      goto LABEL_49;
    }

    v25 = v64.__r_.__value_.__r.__words[0];
    if (!v64.__r_.__value_.__r.__words[0])
    {
      goto LABEL_47;
    }

    memset(&v69, 0, sizeof(v69));
    sub_29A008E78(&__p, off_2A14FDC88[0]);
    v26 = sub_29A8877BC((v25 + 160), &__p.__r_.__value_.__l.__data_);
    if (v26)
    {
      v27 = (v26 + 5);
    }

    else
    {
      v27 = sub_29B1F31FC();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v28 = (*(*v64.__r_.__value_.__l.__data_ + 64))(v64.__r_.__value_.__r.__words[0]);
    v29 = sub_29B246738(v28);
    if ((*(**(*a4 + 8) + 200))(*(*a4 + 8), v20, v29, v27, &v69))
    {
      v31 = v69.__r_.__value_.__r.__words[2];
      v30 = v69.__r_.__value_.__l.__size_;
      if (v69.__r_.__value_.__r.__words[2])
      {
        v32 = (v69.__r_.__value_.__r.__words[2] + 8);
        atomic_fetch_add_explicit((v69.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
LABEL_40:
        atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      sub_29B201354(v20, &__p);
      v31 = __p.__r_.__value_.__l.__size_;
      v30 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_)
      {
        v32 = (__p.__r_.__value_.__l.__size_ + 8);
        goto LABEL_40;
      }
    }

    v33 = v23[17];
    v23[16] = v30;
    v23[17] = v31;
    if (v33)
    {
      sub_29A014BEC(v33);
    }

    if (v31)
    {
      sub_29A014BEC(v31);
    }

    std::string::operator=((v23 + 7), &__str);
    if (v69.__r_.__value_.__r.__words[2])
    {
      sub_29A014BEC(v69.__r_.__value_.__r.__words[2]);
    }

    goto LABEL_47;
  }

LABEL_49:
  v34 = sub_29B23637C(a3);
  v35 = v34;
  v36 = *(v34 + 23);
  if ((v36 & 0x80u) != 0)
  {
    v36 = *(v34 + 1);
  }

  if (v36)
  {
    v37 = v65.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v69, "index");
    v38 = sub_29B23EB84(v37, &v69.__r_.__value_.__l.__data_);
    v39 = v38;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
      if (!v39)
      {
        goto LABEL_63;
      }
    }

    else if (!v38)
    {
      goto LABEL_63;
    }

    sub_29B201354(v35, &v69);
    v40 = *&v69.__r_.__value_.__l.__data_;
    if (v69.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v69.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v41 = v39[17];
    *(v39 + 8) = v40;
    if (v41)
    {
      sub_29A014BEC(v41);
    }

    if (*(&v40 + 1))
    {
      sub_29A014BEC(*(&v40 + 1));
    }

    std::string::operator=((v39 + 7), &__str);
  }

LABEL_63:
  v42 = sub_29B1EE5C0(a3);
  v43 = v42;
  v44 = *(v42 + 23);
  if ((v44 & 0x80u) != 0)
  {
    v44 = *(v42 + 1);
  }

  if (!v44)
  {
    goto LABEL_77;
  }

  v45 = v65.__r_.__value_.__r.__words[0];
  sub_29A008E78(&v69, off_2A14FDE30[0]);
  v46 = sub_29B23EB84(v45, &v69.__r_.__value_.__l.__data_);
  v47 = v46;
  if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v46)
    {
      goto LABEL_77;
    }

LABEL_70:
    sub_29B201354(v43, &v69);
    v48 = *&v69.__r_.__value_.__l.__data_;
    if (v69.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v69.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v49 = v47[17];
    *(v47 + 8) = v48;
    if (v49)
    {
      sub_29A014BEC(v49);
    }

    if (*(&v48 + 1))
    {
      sub_29A014BEC(*(&v48 + 1));
    }

    std::string::operator=((v47 + 7), &__str);
    goto LABEL_77;
  }

  operator delete(v69.__r_.__value_.__l.__data_);
  if (v47)
  {
    goto LABEL_70;
  }

LABEL_77:
  v9 = v65.__r_.__value_.__r.__words[0];
  v50 = *(*a4 + 8);
  v51 = **(v65.__r_.__value_.__r.__words[0] + 152);
  sub_29B23C2B4(v51, &v69);
  (*(*v50 + 192))(&__p, v50, &v69, *(v51 + 24), a1 + 288);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v69 = __p;
  std::string::operator=((v51 + 104), &v69);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v65.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v65.__r_.__value_.__l.__size_);
  }

  if (v68)
  {
    sub_29A014BEC(v68);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

LABEL_89:
  sub_29B23C4CC(a2, **(v9 + 152));
  if (v74 < 0)
  {
    operator delete(v73);
  }
}

void sub_29B236068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v47 & 1) == 0)
    {
LABEL_14:
      if (a33)
      {
        sub_29A014BEC(a33);
      }

      if (*(v48 - 121) < 0)
      {
        operator delete(*(v48 - 144));
      }

      if (*(v48 - 89) < 0)
      {
        operator delete(*(v48 - 112));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v47)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v46);
  goto LABEL_14;
}

void sub_29B236264(uint64_t a1, const void ***a2)
{
  v8 = *a2 + 2;
  v4 = sub_29B23AA28(a1 + 224, v8, &unk_29B769442, &v8);
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = *a2;
  sub_29A0A71C8(a1 + 264, &v8);
}

__int128 *sub_29B2362F0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE38[0]);
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

void sub_29B236360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B23637C(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE40[0]);
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

void sub_29B2363EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236408(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!*(a2 + 240) || (*(a2 + 232) & 4) != 0)
  {
    v9 = *(*a4 + 64);
    v8 = *(*a4 + 72);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      sub_29B23C2B4(a2, &__str);
      v10 = std::string::append(&__str, "_cm");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v24 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      sub_29B20C044(v9, a1, a3, __p, a4, &v20);
      if (v20)
      {
        v12 = v21;
        v19[0] = v20;
        v19[1] = &v21->__vftable;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B236264(a1, v19);
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        v13 = **(v20 + 152);
        v14 = **(v20 + 88);
        sub_29B23C2B4(a2, &__str);
        std::string::operator=((v14 + 104), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v15 = *(a2 + 128);
        v16 = *(a2 + 136);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(v14 + 136);
        *(v14 + 128) = v15;
        *(v14 + 136) = v16;
        if (v17)
        {
          sub_29A014BEC(v17);
        }

        if (v16)
        {
          sub_29A014BEC(v16);
        }

        std::string::operator=((v14 + 56), (a2 + 56));
        v18 = sub_29B1F31FC();
        std::string::operator=((v14 + 144), v18);
        if ((*(a2 + 232) & 4) != 0)
        {
          sub_29B23C4CC(v14, *(a2 + 240));
        }

        sub_29B23C4CC(a2, v13);
      }

      if (v21)
      {
        sub_29A014BEC(v21);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

void sub_29B2365E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236670(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(*a4 + 64);
  v8 = *(*a4 + 72);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    sub_29B23C2B4(a2, &v21);
    v10 = std::string::append(&v21, "_cm");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v23 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    sub_29B20C044(v9, a1, a3, __p, a4, &v19);
    if (v19)
    {
      v12 = v20;
      v18[0] = v19;
      v18[1] = &v20->__vftable;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B236264(a1, v18);
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      v13 = v19;
      v14 = **(v19 + 152);
      memset(&v21, 0, sizeof(v21));
      sub_29B214228(&v21, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 3);
      size = v21.__r_.__value_.__l.__size_;
      for (i = v21.__r_.__value_.__r.__words[0]; i != size; ++i)
      {
        v17 = *i;
        sub_29B23C524(*i);
        sub_29B23C4CC(v17, v14);
      }

      sub_29B23C4CC(**(v13 + 88), a2);
      if (v21.__r_.__value_.__r.__words[0])
      {
        v21.__r_.__value_.__l.__size_ = v21.__r_.__value_.__r.__words[0];
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B23680C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236894(uint64_t a1, uint64_t a2, const void **a3, void *a4)
{
  if (!*(a2 + 240) || (*(a2 + 232) & 4) != 0)
  {
    v9 = *(*a4 + 80);
    v8 = *(*a4 + 88);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      sub_29B23C2B4(a2, &__str);
      v10 = std::string::append(&__str, "_unit");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v23 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      sub_29B249238(v9, a1, a3, __p, a4, &v19);
      if (v19)
      {
        v12 = v20;
        v18[0] = v19;
        v18[1] = &v20->__vftable;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B236264(a1, v18);
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        v13 = **(v19 + 152);
        v14 = **(v19 + 88);
        sub_29B23C2B4(a2, &__str);
        std::string::operator=((v14 + 104), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v15 = *(a2 + 128);
        v16 = *(a2 + 136);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(v14 + 136);
        *(v14 + 128) = v15;
        *(v14 + 136) = v16;
        if (v17)
        {
          sub_29A014BEC(v17);
        }

        if (v16)
        {
          sub_29A014BEC(v16);
        }

        std::string::operator=((v14 + 56), (a2 + 56));
        std::string::operator=((v14 + 144), (a2 + 144));
        std::string::operator=((v14 + 168), (a2 + 168));
        if ((*(a2 + 232) & 4) != 0)
        {
          sub_29B23C4CC(v14, *(a2 + 240));
        }

        sub_29B23C4CC(a2, v13);
      }

      if (v20)
      {
        sub_29A014BEC(v20);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

void sub_29B236A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236B04(uint64_t a1, uint64_t a2, const void **a3, void *a4)
{
  v9 = *(*a4 + 80);
  v8 = *(*a4 + 88);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    sub_29B23C2B4(a2, &v21);
    v10 = std::string::append(&v21, "_unit");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v23 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    sub_29B249238(v9, a1, a3, __p, a4, &v19);
    if (v19)
    {
      v12 = v20;
      v18[0] = v19;
      v18[1] = &v20->__vftable;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B236264(a1, v18);
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      v13 = v19;
      v14 = **(v19 + 152);
      memset(&v21, 0, sizeof(v21));
      sub_29B214228(&v21, *(a2 + 240), *(a2 + 248), (*(a2 + 248) - *(a2 + 240)) >> 3);
      size = v21.__r_.__value_.__l.__size_;
      for (i = v21.__r_.__value_.__r.__words[0]; i != size; ++i)
      {
        v17 = *i;
        sub_29B23C524(*i);
        sub_29B23C4CC(v17, v14);
      }

      sub_29B23C4CC(**(v13 + 88), a2);
      if (v21.__r_.__value_.__r.__words[0])
      {
        v21.__r_.__value_.__l.__size_ = v21.__r_.__value_.__r.__words[0];
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B236CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B236D28(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, std::string::size_type *a4@<X8>)
{
  v32 = a1;
  sub_29B1EE8F4(a2, &v30);
  if (!v30)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29AAD84E0(a2);
    std::operator+<char>();
    v13 = std::string::append(&v25, "' referenced by nodegraph '");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v17 = *(a2 + 48);
    v16 = a2 + 48;
    v15 = v17;
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    if (v18 >= 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = *(v16 + 8);
    }

    v21 = std::string::append(&v26, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v27, "'");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v29 = v23->__r_.__value_.__r.__words[2];
    *__p = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  if (*(a2 + 71) < 0)
  {
    sub_29A008D14(__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    *__p = *(a2 + 48);
    v29 = *(a2 + 64);
  }

  (*(**(*a3 + 8) + 176))(*(*a3 + 8), __p);
  sub_29B1D8ACC(a2, &v27);
  sub_29B23A694(&v32, __p, &v27, a3 + 22, a4);
  if (v27.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v27.__r_.__value_.__l.__size_);
  }

  v7 = *a4;
  *(v7 + 40) = 0;
  sub_29B234290(v7, v30, a3);
  sub_29B234764(*a4, a2);
  sub_29B1EAB28(a2, &v27);
  size = v27.__r_.__value_.__l.__size_;
  for (i = v27.__r_.__value_.__r.__words[0]; i != size; i += 2)
  {
    v10 = *i;
    v11 = i[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B2355A8(*a4, v10, a3);
    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  v26.__r_.__value_.__r.__words[0] = &v27;
  sub_29A0176E4(&v26);
  sub_29B2370D0(*a4, a3);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (v31)
  {
    sub_29A014BEC(v31);
  }
}

void sub_29B236FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v36 & 1) == 0)
    {
LABEL_12:
      v39 = *(v37 - 64);
      if (v39)
      {
        sub_29A014BEC(v39);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v35);
  goto LABEL_12;
}

void sub_29B2370D0(std::string::size_type a1, uint64_t a2)
{
  v4 = *(a1 + 264);
  v5 = *(a1 + 272);
  while (v4 != v5)
  {
    v6 = *v4++;
    (*(**(v6 + 176) + 48))(*(v6 + 176));
  }

  v7 = *(**(a1 + 88) + 240);
  if (v7)
  {
    *(a1 + 40) |= *(*(v7 + 16) + 40);
  }

  if (*(a2 + 148) == 1)
  {
    for (i = *(a1 + 344); i; i = *i)
    {
      sub_29B236408(a1, i[2], (i + 3), a2);
    }

    for (j = *(a1 + 424); j; j = *j)
    {
      sub_29B236670(a1, j[2], (j + 3), a2);
    }
  }

  sub_29B23AD38(a1 + 328);
  sub_29B23AD38(a1 + 408);
  for (k = *(a1 + 384); k; k = *k)
  {
    sub_29B236894(a1, k[2], k + 3, a2);
  }

  for (m = *(a1 + 464); m; m = *m)
  {
    sub_29B236B04(a1, m[2], m + 3, a2);
  }

  sub_29B23AD94(a1 + 368);
  sub_29B23AD94(a1 + 448);
  sub_29B23915C(a1, a2);
  sub_29B2394FC(a1);
  if (!*(a2 + 24))
  {
    v13 = *(a1 + 264);
    v12 = *(a1 + 272);
    v34 = v12;
    while (v13 != v12)
    {
      v14 = *v13;
      v15 = *(*v13 + 88);
      for (n = *(*v13 + 96); v15 != n; ++v15)
      {
        v17 = *v15;
        if (!*(*v15 + 240) && *(*(v17 + 24) + 40) == 1)
        {
          v18 = *(v14 + 176);
          if (!v18 || (*(*v18 + 96))(v18, *v15))
          {
            if (*(v14 + 39) >= 0)
            {
              v19 = *(v14 + 39);
            }

            else
            {
              v19 = *(v14 + 24);
            }

            sub_29A022DE0(&v35, v19 + 1);
            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v20 = &v35;
            }

            else
            {
              v20 = v35.__r_.__value_.__r.__words[0];
            }

            if (v19)
            {
              if (*(v14 + 39) >= 0)
              {
                v21 = (v14 + 16);
              }

              else
              {
                v21 = *(v14 + 16);
              }

              memmove(v20, v21, v19);
            }

            *(&v20->__r_.__value_.__l.__data_ + v19) = 95;
            v22 = *(v17 + 55);
            if (v22 >= 0)
            {
              v23 = (v17 + 32);
            }

            else
            {
              v23 = *(v17 + 32);
            }

            if (v22 >= 0)
            {
              v24 = *(v17 + 55);
            }

            else
            {
              v24 = *(v17 + 40);
            }

            v25 = std::string::append(&v35, v23, v24);
            v26 = *&v25->__r_.__value_.__l.__data_;
            v37 = v25->__r_.__value_.__r.__words[2];
            *__p = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }

            v27 = sub_29B23EC14(a1, __p);
            if (!v27)
            {
              v27 = sub_29B23D768(a1, __p, *(v17 + 24));
              std::string::operator=((v27 + 56), (v17 + 56));
              v28 = *(v17 + 128);
              v29 = *(v17 + 136);
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v30 = *(v27 + 136);
              *(v27 + 128) = v28;
              *(v27 + 136) = v29;
              if (v30)
              {
                sub_29A014BEC(v30);
              }

              if (v29)
              {
                sub_29A014BEC(v29);
              }

              std::string::operator=((v27 + 144), (v17 + 144));
              std::string::operator=((v27 + 168), (v17 + 168));
              if (*(v17 + 232))
              {
                *(v27 + 232) |= 1u;
              }
            }

            sub_29B23C5DC(v27, v17);
            v31 = *(v17 + 216);
            v32 = *(v17 + 224);
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v33 = *(v27 + 224);
            *(v27 + 216) = v31;
            *(v27 + 224) = v32;
            if (v33)
            {
              sub_29A014BEC(v33);
            }

            if (v32)
            {
              sub_29A014BEC(v32);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      ++v13;
      v12 = v34;
    }
  }

  sub_29B239740(a1, a2);
}

void sub_29B237480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2374B0(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, std::string::size_type *a5@<X8>)
{
  v6 = a3;
  v128[0] = a1;
  *a5 = 0;
  a5[1] = 0;
  v9 = *a3;
  v10 = sub_29B1F31FC();
  if (sub_29B1D18A4(v9, v10))
  {
    sub_29B1D8060(*v6, &v114);
    v11 = v114.__r_.__value_.__r.__words[0];
    v12 = *(v114.__r_.__value_.__r.__words[0] + 232);
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = *(v11 + 224);
        goto LABEL_99;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = 0;
LABEL_99:
    v56 = sub_29B1F31FC();
    if (!sub_29AAC05D4(v14, v56))
    {
      v59 = sub_29B1F31FC();
      if (!sub_29B238548(v14, v59))
      {
        goto LABEL_163;
      }

      (*(*v114.__r_.__value_.__l.__data_ + 80))(&__str);
      size = __str.__r_.__value_.__l.__size_;
      v58 = __str.__r_.__value_.__r.__words[0];
      *&__str.__r_.__value_.__l.__data_ = 0uLL;
      if (v13)
      {
        sub_29A014BEC(v13);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(__str.__r_.__value_.__l.__size_);
        }
      }

      if (v58)
      {
        sub_29B1D74B0(v58, &__str);
        v58 = __str.__r_.__value_.__l.__size_;
        v57 = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        v57 = 0;
      }

      v13 = size;
LABEL_117:
      if (v57)
      {
        sub_29B1D87A8(*v6, &v126);
        sub_29B23A8A4(v128, a2, &v126, (a4 + 176), &__str);
        v61 = *&__str.__r_.__value_.__l.__data_;
        *&__str.__r_.__value_.__l.__data_ = 0uLL;
        *a5 = v61;
        if (v126.__r_.__value_.__l.__size_)
        {
          v103 = v61;
          sub_29A014BEC(v126.__r_.__value_.__l.__size_);
          *&v61 = v103;
        }

        *(v61 + 40) = 0;
        sub_29B234290(v61, v57, a4);
        v62 = *a5;
        v63 = (v114.__r_.__value_.__r.__words[0] + 48);
        v64 = (*(*v114.__r_.__value_.__l.__data_ + 64))(v114.__r_.__value_.__r.__words[0]);
        v65 = sub_29B246738(v64);
        v66 = sub_29B23D9F0(v62, v63, v65);
        v124 = 0;
        v125 = 0;
        sub_29B1D8824(v114.__r_.__value_.__l.__data_, &v124, &__str);
        std::string::operator=((v66 + 56), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v125)
        {
          sub_29A014BEC(v125);
        }

        v67 = sub_29B1D22C0(v114.__r_.__value_.__l.__data_);
        std::string::operator=((v66 + 248), v67);
        v68 = sub_29B1DB728(v114.__r_.__value_.__l.__data_);
        v69 = *(v68 + 23);
        if ((v69 & 0x80u) != 0)
        {
          v69 = *(v68 + 1);
        }

        if (v69)
        {
          std::string::operator=((v66 + 144), v68);
        }

        v70 = sub_29AAC1F6C(v114.__r_.__value_.__l.__data_);
        v71 = *(v70 + 23);
        if ((v71 & 0x80u) != 0)
        {
          v71 = *(v70 + 1);
        }

        if (v71)
        {
          std::string::operator=((v66 + 168), v70);
        }

        v55 = v114.__r_.__value_.__l.__size_;
        v54 = v114.__r_.__value_.__r.__words[0];
        if (v114.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v114.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        if (v58)
        {
          sub_29A014BEC(v58);
        }

        if (v13)
        {
          sub_29A014BEC(v13);
        }

        if (v114.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v114.__r_.__value_.__l.__size_);
        }

        v20 = *a5;
        goto LABEL_141;
      }

LABEL_163:
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v99 = std::string::append(&v126, "' has no interface valid for shader generation");
      v100 = *&v99->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v100;
      v99->__r_.__value_.__l.__size_ = 0;
      v99->__r_.__value_.__r.__words[2] = 0;
      v99->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &__str);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    sub_29B1D7FB0(v14, &__str);
    sub_29B1EE8F4(__str.__r_.__value_.__l.__data_, &v126);
    v57 = v126.__r_.__value_.__r.__words[0];
    if (v126.__r_.__value_.__r.__words[0])
    {
      v58 = v126.__r_.__value_.__l.__size_;
      if (!v126.__r_.__value_.__l.__size_)
      {
LABEL_103:
        if (v126.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v126.__r_.__value_.__l.__size_);
        }

        if (__str.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(__str.__r_.__value_.__l.__size_);
        }

        goto LABEL_117;
      }
    }

    else
    {
      v58 = __str.__r_.__value_.__l.__size_;
      v57 = __str.__r_.__value_.__r.__words[0];
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_103;
      }
    }

    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_103;
  }

  v15 = *v6;
  v16 = sub_29B1F31FC();
  if (!sub_29AAD7980(v15, v16))
  {
    goto LABEL_155;
  }

  sub_29B1D7E50(*v6, &v122);
  v17 = v122;
  v18 = sub_29B1F31FC();
  sub_29B1ED628(v17, v18, 0, &v120);
  if (!v120)
  {
    v95 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v96 = std::string::append(&v126, "'");
    v97 = *&v96->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(v95, &__str);
    *v95 = &unk_2A20C8F68;
    __cxa_throw(v95, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B1D87A8(*v6, &v126);
  sub_29B23A8A4(v128, a2, &v126, (a4 + 176), &__str);
  v19 = *&__str.__r_.__value_.__l.__data_;
  *&__str.__r_.__value_.__l.__data_ = 0uLL;
  *a5 = v19;
  if (v126.__r_.__value_.__l.__size_)
  {
    v102 = v19;
    sub_29A014BEC(v126.__r_.__value_.__l.__size_);
    *&v19 = v102;
  }

  v20 = v19;
  sub_29B234290(v19, v120, a4);
  sub_29B234764(v20, v120);
  sub_29B23CB10(v20, (v122 + 48), v120, a4, &v118);
  v21 = v119;
  v117[0] = v118;
  v117[1] = &v119->__vftable;
  if (v119)
  {
    atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B236264(v20, v117);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  v22 = *(v118 + 192);
  v23 = *(v118 + 200);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v20[25];
  v20[24] = v22;
  v20[25] = v23;
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v25 = *(v118 + 152);
  if (*(v118 + 160) != v25)
  {
    v26 = 0;
    do
    {
      v27 = *(v20[11] + 8 * v26);
      sub_29B23C4CC(v27, *(v25 + 8 * v26));
      v115 = 0;
      v116 = 0;
      sub_29B1D8824(v122, &v115, &__str);
      std::string::operator=((v27 + 56), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v116)
      {
        sub_29A014BEC(v116);
      }

      ++v26;
      v25 = *(v118 + 152);
    }

    while (v26 < (*(v118 + 160) - v25) >> 3);
  }

  v101 = v6;
  sub_29B1EA6E8(v120, &__str);
  v28 = __str.__r_.__value_.__l.__size_;
  v29 = __str.__r_.__value_.__r.__words[0];
  if (__str.__r_.__value_.__r.__words[0] != __str.__r_.__value_.__l.__size_)
  {
    while (1)
    {
      v30 = sub_29B23EC14(v20, (*v29 + 48));
      v31 = sub_29B23EB84(v118, (*v29 + 48));
      v32 = v31;
      if (v30)
      {
        v33 = v31 == 0;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        v72 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v73 = std::string::append(&v112, "' doesn't match an existing input on graph '");
        v74 = *&v73->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        v77 = v20[2];
        v76 = (v20 + 2);
        v75 = v77;
        v78 = v76[23];
        if (v78 >= 0)
        {
          v79 = v76;
        }

        else
        {
          v79 = v75;
        }

        if (v78 >= 0)
        {
          v80 = *(v76 + 23);
        }

        else
        {
          v80 = *(v76 + 1);
        }

        v81 = std::string::append(&__p, v79, v80);
        v82 = *&v81->__r_.__value_.__l.__data_;
        v114.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
        *&v114.__r_.__value_.__l.__data_ = v82;
        v81->__r_.__value_.__l.__size_ = 0;
        v81->__r_.__value_.__r.__words[2] = 0;
        v81->__r_.__value_.__r.__words[0] = 0;
        v83 = std::string::append(&v114, "'");
        v84 = *&v83->__r_.__value_.__l.__data_;
        v126.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
        *&v126.__r_.__value_.__l.__data_ = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(v72, &v126);
        *v72 = &unk_2A20C8F68;
        __cxa_throw(v72, &unk_2A20C8EF8, sub_29B20BED4);
      }

      sub_29AAC1E24(v122, (*v29 + 48), &v112);
      if (!v112.__r_.__value_.__r.__words[0])
      {
        goto LABEL_69;
      }

      v108 = 0;
      v109 = 0;
      sub_29B2345F4(v112.__r_.__value_.__l.__data_, &v108, &v110);
      if (v109)
      {
        sub_29A014BEC(v109);
      }

      if (v110)
      {
        break;
      }

LABEL_51:
      *(v32 + 58) |= 4u;
      v106 = 0;
      v107 = 0;
      sub_29B1D8824(v112.__r_.__value_.__l.__data_, &v106, &v126);
      if (v107)
      {
        sub_29A014BEC(v107);
      }

      v42 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v126.__r_.__value_.__l.__size_;
      }

      if (v42)
      {
        std::string::operator=((v30 + 7), &v126);
        std::string::operator=((v32 + 7), &v126);
      }

      v43 = sub_29B1DB728(v112.__r_.__value_.__l.__data_);
      v44 = v43;
      v45 = *(v43 + 23);
      if ((v45 & 0x80u) != 0)
      {
        v45 = *(v43 + 1);
      }

      if (v45)
      {
        std::string::operator=(v30 + 6, v43);
        std::string::operator=(v32 + 6, v44);
      }

      v46 = sub_29AAC1F6C(v112.__r_.__value_.__l.__data_);
      v47 = v46;
      v48 = *(v46 + 23);
      if ((v48 & 0x80u) != 0)
      {
        v48 = *(v46 + 1);
      }

      if (v48)
      {
        std::string::operator=(v30 + 7, v46);
        std::string::operator=(v32 + 7, v47);
      }

      if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v126.__r_.__value_.__l.__data_);
      }

      if (v111)
      {
        sub_29A014BEC(v111);
      }

LABEL_69:
      sub_29B23C5DC(v30, v32);
      v49 = v32[27];
      v50 = v32[28];
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v51 = v30[28];
      v30[27] = v49;
      v30[28] = v50;
      if (v51)
      {
        sub_29A014BEC(v51);
      }

      if (v50)
      {
        sub_29A014BEC(v50);
      }

      if (v112.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v112.__r_.__value_.__l.__size_);
      }

      v29 += 16;
      if (v29 == v28)
      {
        goto LABEL_81;
      }
    }

    (*(*v110 + 32))(&v126);
    memset(&v114, 0, sizeof(v114));
    v34 = (*(**v29 + 64))();
    v35 = sub_29B246738(v34);
    v36 = *v29;
    sub_29A008E78(&__p, off_2A14FDC88[0]);
    v37 = sub_29A8877BC((v36 + 160), &__p.__r_.__value_.__l.__data_);
    if (v37)
    {
      v38 = (v37 + 5);
    }

    else
    {
      v38 = sub_29B1F31FC();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((*(**(*a4 + 8) + 200))(*(*a4 + 8), &v126, v35, v38, &v114))
    {
      v40 = v114.__r_.__value_.__r.__words[2];
      v39 = v114.__r_.__value_.__l.__size_;
      if (!v114.__r_.__value_.__r.__words[2])
      {
LABEL_43:
        v41 = v30[17];
        v30[16] = v39;
        v30[17] = v40;
        if (v41)
        {
          sub_29A014BEC(v41);
        }

        if (v40)
        {
          sub_29A014BEC(v40);
        }

        if (v114.__r_.__value_.__r.__words[2])
        {
          sub_29A014BEC(v114.__r_.__value_.__r.__words[2]);
        }

        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v126.__r_.__value_.__l.__data_);
        }

        goto LABEL_51;
      }
    }

    else
    {
      v39 = v110;
      v40 = v111;
      if (!v111)
      {
        goto LABEL_43;
      }
    }

    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_43;
  }

LABEL_81:
  v126.__r_.__value_.__r.__words[0] = &__str;
  sub_29A0176E4(&v126);
  v52 = v123;
  v105[0] = v122;
  v105[1] = v123;
  if (v123)
  {
    atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53 = v119;
  v104[0] = v118;
  v104[1] = v119;
  v6 = v101;
  if (v119)
  {
    atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B2385F4(v20, v105, v104, a4);
  if (v53)
  {
    sub_29A014BEC(v53);
  }

  if (v52)
  {
    sub_29A014BEC(v52);
  }

  v54 = v122;
  v55 = v123;
  if (v123)
  {
    atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v119)
  {
    sub_29A014BEC(v119);
  }

  if (v121)
  {
    sub_29A014BEC(v121);
  }

  if (v123)
  {
    sub_29A014BEC(v123);
  }

LABEL_141:
  if (!v20)
  {
LABEL_155:
    v85 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v86 = std::string::append(&__p, "' of type '");
    v87 = *&v86->__r_.__value_.__l.__data_;
    v114.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
    *&v114.__r_.__value_.__l.__data_ = v87;
    v86->__r_.__value_.__l.__size_ = 0;
    v86->__r_.__value_.__r.__words[2] = 0;
    v86->__r_.__value_.__r.__words[0] = 0;
    v88 = *(*v6 + 47);
    if (v88 >= 0)
    {
      v89 = (*v6 + 24);
    }

    else
    {
      v89 = *(*v6 + 24);
    }

    if (v88 >= 0)
    {
      v90 = *(*v6 + 47);
    }

    else
    {
      v90 = *(*v6 + 32);
    }

    v91 = std::string::append(&v114, v89, v90);
    v92 = *&v91->__r_.__value_.__l.__data_;
    v126.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
    *&v126.__r_.__value_.__l.__data_ = v92;
    v91->__r_.__value_.__l.__size_ = 0;
    v91->__r_.__value_.__r.__words[2] = 0;
    v91->__r_.__value_.__r.__words[0] = 0;
    v93 = std::string::append(&v126, "' is not supported");
    v94 = *&v93->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v94;
    v93->__r_.__value_.__l.__size_ = 0;
    v93->__r_.__value_.__r.__words[2] = 0;
    v93->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(v85, &__str);
    *v85 = &unk_2A20C8F68;
    __cxa_throw(v85, &unk_2A20C8EF8, sub_29B20BED4);
  }

  if (v54 && *(a4 + 80) == 1)
  {
    sub_29B2355A8(v20, v54, a4);
  }

  sub_29B2370D0(v20, a4);
  if (v55)
  {
    sub_29A014BEC(v55);
  }
}

void sub_29B238124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (*(v49 - 137) < 0)
  {
    operator delete(*(v49 - 160));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
    if ((v45 & 1) == 0)
    {
LABEL_12:
      if (v47)
      {
        sub_29A014BEC(v47);
      }

      v51 = *(v48 + 8);
      if (v51)
      {
        sub_29A014BEC(v51);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v46);
  goto LABEL_12;
}

uint64_t sub_29B238548(uint64_t a1, const void **a2)
{
  sub_29B1D78D0(a1, &v15);
  v4 = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_29B2385F4(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a4;
  v6 = *a4;
  v7 = *(*a4 + 72);
  v36 = *(*a4 + 64);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a4;
  }

  v8 = *(v6 + 88);
  v34 = *(v6 + 80);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 55);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 5);
  }

  if (v9)
  {
    v35 = a4 + 2;
  }

  else
  {
    v35 = sub_29AAC1FF8(*(a1 + 208));
  }

  v10 = *a2;
  v11 = sub_29B1F31FC();
  sub_29AAD5940(v10, v11, &v49);
  v12 = v49;
  v37 = v50;
  if (v49 != v50)
  {
    v31 = a3;
    v32 = v4;
    do
    {
      v14 = *v12;
      v13 = *(v12 + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!sub_29B1D41D0(v14) && !sub_29AE150E4(v14))
      {
        goto LABEL_64;
      }

      v15 = sub_29AAC1FF8(v14);
      if (*(v15 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v15, *(v15 + 1));
      }

      else
      {
        v16 = *v15;
        __dst.__r_.__value_.__r.__words[2] = *(v15 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v16;
      }

      v17 = (*(*v14 + 8))(v14);
      v18 = strlen(off_2A14FDEC0[0]);
      v19 = *(v17 + 23);
      if (v19 < 0)
      {
        if (v18 != v17[1])
        {
          goto LABEL_50;
        }

        if (v18 == -1)
        {
          sub_29A0F26CC();
        }

        v17 = *v17;
      }

      else if (v18 != v19)
      {
        goto LABEL_50;
      }

      if (memcmp(v17, off_2A14FDEC0[0], v18) || !sub_29B238B44(*a2))
      {
LABEL_50:
        v29 = sub_29B23EB84(*a3, v14 + 6);
        v41[0] = v36;
        v41[1] = &v7->__vftable;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B238C48(a1, v41, v29, &__dst, v35, 1);
        if (v7)
        {
          sub_29A014BEC(v7);
        }

        v40[0] = v34;
        v40[1] = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39[0] = v14;
        v39[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B238EC4(a1, v40, v29, v39, v4 + 56, 1);
        goto LABEL_59;
      }

      if (sub_29AE150E4(v14))
      {
        v21 = v32[48];
        v20 = v32[49];
        while (v21 != v20)
        {
          v22 = *v21;
          v23 = v21[1];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!sub_29B238B44(v22))
          {
            v24 = sub_29AE15164(v14);
            sub_29AAC1E24(v22, v24, &v46);
            if (v46)
            {
              v25 = sub_29AAC1FF8(v46);
            }

            else
            {
              v25 = sub_29B1F31FC();
            }

            if (*(v25 + 23) < 0)
            {
              sub_29A008D14(&__str, *v25, *(v25 + 1));
            }

            else
            {
              v26 = *v25;
              __str.__r_.__value_.__r.__words[2] = *(v25 + 2);
              *&__str.__r_.__value_.__l.__data_ = v26;
            }

            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              std::string::operator=(&__dst, &__str);
              v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            if (v28 < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (v47)
            {
              sub_29A014BEC(v47);
            }
          }

          if (v23)
          {
            sub_29A014BEC(v23);
          }

          v21 += 2;
        }
      }

      a3 = v31;
      v30 = **(*v31 + 152);
      v44[0] = v36;
      v44[1] = &v7->__vftable;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B238C48(a1, v44, v30, &__dst, v35, 0);
      v4 = v32;
      if (v7)
      {
        sub_29A014BEC(v7);
      }

      v43[0] = v34;
      v43[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v42[0] = v14;
      v42[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B238EC4(a1, v43, v30, v42, (v32 + 7), 0);
LABEL_59:
      if (v13)
      {
        sub_29A014BEC(v13);
      }

      if (v8)
      {
        sub_29A014BEC(v8);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (!v13)
        {
          goto LABEL_66;
        }

LABEL_65:
        sub_29A014BEC(v13);
        goto LABEL_66;
      }

LABEL_64:
      if (v13)
      {
        goto LABEL_65;
      }

LABEL_66:
      v12 += 16;
    }

    while (v12 != v37);
  }

  __dst.__r_.__value_.__r.__words[0] = &v49;
  sub_29A0176E4(&__dst);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29B238A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v35)
  {
    sub_29A014BEC(v35);
  }

  if (v34)
  {
    sub_29A014BEC(v34);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B238B44(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8) != 6)
    {
      goto LABEL_10;
    }

    v2 = *v2;
  }

  else if (v3 != 6)
  {
    goto LABEL_10;
  }

  if (*v2 == 1869377379 && *(v2 + 4) == 13170)
  {
    return 1;
  }

LABEL_10:
  v5 = (*(*a1 + 64))(a1);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (*(v5 + 8) != 6)
    {
      return 0;
    }

    v5 = *v5;
  }

  else if (v6 != 6)
  {
    return 0;
  }

  return *v5 == 1869377379 && *(v5 + 4) == 13426;
}

void sub_29B238C48(uint64_t a1, void **a2, std::string *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a3)
  {
    v8 = *(a4 + 23);
    v9 = v8 >= 0 ? *(a4 + 23) : *(a4 + 8);
    if (v9)
    {
      v11 = *(a5 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a5 + 8);
      }

      if (v11)
      {
        if (v9 != v11 || (v8 >= 0 ? (v16 = a4) : (v16 = *a4), v12 >= 0 ? (v17 = a5) : (v17 = *a5), memcmp(v16, v17, v9)))
        {
          data = a3[1].__r_.__value_.__l.__data_;
          v19 = sub_29B247ADC();
          if (sub_29A1B00DC(data, v19) || (v20 = a3[1].__r_.__value_.__l.__data_, v21 = sub_29B247C28(), sub_29A1B00DC(v20, v21)))
          {
            std::string::operator=(a3 + 7, a4);
            if (*a2)
            {
              sub_29B20BED8(v33);
              if (sub_29B20BF2C(*a2))
              {
                v37.__locale_ = a3;
                if (a6)
                {
                  sub_29B23B200(a1 + 328, &v37, &v37, v33);
                }

                else
                {
                  sub_29B23B588(a1 + 408, &v37, &v37, v33);
                }
              }

              else
              {
                v22 = sub_29A00911C(MEMORY[0x29EDC93C0], "Unsupported color space transform from ", 39);
                v23 = *(a4 + 23);
                if (v23 >= 0)
                {
                  v24 = a4;
                }

                else
                {
                  v24 = *a4;
                }

                if (v23 >= 0)
                {
                  v25 = *(a4 + 23);
                }

                else
                {
                  v25 = *(a4 + 8);
                }

                v26 = sub_29A00911C(v22, v24, v25);
                v27 = sub_29A00911C(v26, " to ", 4);
                v28 = *(a5 + 23);
                if (v28 >= 0)
                {
                  v29 = a5;
                }

                else
                {
                  v29 = *a5;
                }

                if (v28 >= 0)
                {
                  v30 = *(a5 + 23);
                }

                else
                {
                  v30 = *(a5 + 8);
                }

                v31 = sub_29A00911C(v27, v29, v30);
                std::ios_base::getloc((v31 + *(*v31 - 24)));
                v32 = std::locale::use_facet(&v37, MEMORY[0x29EDC93D0]);
                (v32->__vftable[2].~facet_0)(v32, 10);
                std::locale::~locale(&v37);
                std::ostream::put();
                std::ostream::flush();
              }

              if (v36 < 0)
              {
                operator delete(__p);
              }

              if (v34 < 0)
              {
                operator delete(v33[0]);
              }
            }
          }
        }
      }
    }
  }
}

void sub_29B238EC4(uint64_t a1, uint64_t *a2, std::string *a3, uint64_t *a4, uint64_t a5, int a6)
{
  if (*a2)
  {
    v7 = *(a5 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a5 + 8);
    }

    if (v7)
    {
      v13 = sub_29B1DB728(*a4);
      if (a3)
      {
        v14 = v13;
        v15 = *(v13 + 23);
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v13 + 1);
        }

        if (v15)
        {
          v16 = sub_29B1DC058(*a4);
          sub_29B1D87A8(*a4, &__dst);
          sub_29B1DDDC4(__dst.__r_.__value_.__l.__data_, v16, v31);
          v17 = v31[0];
          if (v31[1])
          {
            sub_29A014BEC(v31[1]);
          }

          if (__dst.__r_.__value_.__l.__size_)
          {
            sub_29A014BEC(__dst.__r_.__value_.__l.__size_);
          }

          if (v17)
          {
            v18 = sub_29B1DB5B4(*a4);
            if (*(v18 + 23) < 0)
            {
              sub_29A008D14(&__dst, *v18, *(v18 + 1));
            }

            else
            {
              v19 = *v18;
              __dst.__r_.__value_.__r.__words[2] = *(v18 + 2);
              *&__dst.__r_.__value_.__l.__data_ = v19;
            }

            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            if (!size)
            {
              std::string::operator=(&__dst, a5);
            }

            data = a3[1].__r_.__value_.__l.__data_;
            v22 = sub_29B246C60();
            v23 = sub_29A1B00DC(data, v22);
            if (v23 || (v24 = a3[1].__r_.__value_.__l.__data_, Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v23), sub_29A1B00DC(v24, Vector2Name)) || (v26 = a3[1].__r_.__value_.__l.__data_, v27 = sub_29B2470A0(), sub_29A1B00DC(v26, v27)) || (v28 = a3[1].__r_.__value_.__l.__data_, v29 = sub_29B2471EC(), sub_29A1B00DC(v28, v29)))
            {
              sub_29B2491D4(v31);
              if (sub_29B2491D8(*a2))
              {
                std::string::operator=(a3 + 6, v14);
                v30 = a3;
                if (a6)
                {
                  sub_29B23B910(a1 + 368, &v30, &v30, v31);
                }

                else
                {
                  sub_29B23BD34(a1 + 448, &v30, &v30, v31);
                }
              }

              if (v36 < 0)
              {
                operator delete(__p);
              }

              if (v34 < 0)
              {
                operator delete(v33);
              }

              if (v32 < 0)
              {
                operator delete(v31[0]);
              }
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }
}

void sub_29B23910C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_29B239FD0(&a11);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29B23915C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  if (v2 == v3)
  {
    return;
  }

  v5 = a1;
  v6 = 0;
  v7 = (a1 + 264);
  do
  {
    v8 = *v2;
    v9 = *(*v2 + 40);
    if ((v9 & 0x40) != 0)
    {
      goto LABEL_12;
    }

    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    sub_29A008E78(__p, "in");
    a1 = sub_29B23EB84(v8, __p);
    v10 = a1;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if ((*(v10 + 271) & 0x8000000000000000) != 0)
    {
      if (*(v10 + 256))
      {
        goto LABEL_13;
      }
    }

    else if (*(v10 + 271))
    {
      goto LABEL_13;
    }

    v11 = *(v10 + 24);
    v12 = sub_29B24805C();
    a1 = sub_29A1B00DC(v11, v12);
    if (a1)
    {
LABEL_12:
      sub_29B239A30(a1, a2, v8, 0, 0);
      ++v6;
    }

LABEL_13:
    ++v2;
  }

  while (v2 != v3);
  if (v6)
  {
    v40[0] = 0;
    v40[1] = 0;
    v38 = 0;
    v39 = v40;
    v36 = 0;
    v37 = 0;
    v13 = v5[11];
    for (i = v5[12]; v13 != i; v13 += 8)
    {
      v15 = *(*v13 + 240);
      if (v15 && *(v15 + 16) != v5)
      {
        v35[0] = 0;
        v35[1] = 0;
        *&__p[8] = 0u;
        v33 = 0u;
        *__p = v15;
        v34 = v35;
        v29 = *__p;
        memset(v30, 0, sizeof(v30));
        sub_29B23A1FC(v30, 0, 0, 0);
        sub_29B23A270(v31, &v34);
        sub_29B239CC0();
        v26 = xmmword_2A1787298;
        memset(v27, 0, sizeof(v27));
        sub_29B23A1FC(v27, qword_2A17872A8, qword_2A17872B0, (qword_2A17872B0 - qword_2A17872A8) >> 4);
        sub_29B23A270(v28, &qword_2A17872C0);
        while (!sub_29B23A2C8(&v29, &v26))
        {
          v16 = *(v29 + 16);
          v25 = v16;
          for (j = v40[0]; j; j = *j)
          {
            v18 = j[4];
            if (v16 >= v18)
            {
              if (v18 >= v16)
              {
                goto LABEL_26;
              }

              ++j;
            }
          }

          sub_29A0F2BE4(&v39, &v25, &v25);
          sub_29A0A71C8(&v36, &v25);
LABEL_26:
          sub_29B239CF8(&v29);
        }

        sub_29B23A33C(&v26);
        sub_29B23A33C(&v29);
        a1 = sub_29B23A33C(__p);
      }
    }

    v19 = v5[33];
    v20 = v5[34];
    while (v19 != v20)
    {
      v21 = *v19;
      for (k = v40[0]; k; k = *k)
      {
        v23 = k[4];
        if (v21 >= v23)
        {
          if (v23 >= v21)
          {
            goto LABEL_37;
          }

          ++k;
        }
      }

      sub_29B2399D8(a1, *v19);
      a1 = sub_29B1E5270(v5 + 28, (v21 + 16));
LABEL_37:
      ++v19;
    }

    v24 = v36;
    if (v7 != &v36)
    {
      sub_29A00CB24(v7, v36, v37, (v37 - v36) >> 3);
      v24 = v36;
    }

    if (v24)
    {
      v37 = v24;
      operator delete(v24);
    }

    sub_29A082B84(&v39, v40[0]);
  }
}

void sub_29B239454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 136);
  if (v35)
  {
    *(v33 - 128) = v35;
    operator delete(v35);
  }

  sub_29A082B84(v33 - 112, *(v33 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_29B2394FC(void *a1)
{
  v2 = a1[31];
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  sub_29A019AA0(v24, v2);
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v3 = a1[33];
  for (i = a1[34]; v3 != i; ++v3)
  {
    v21 = *v3;
    v5 = v21[11];
    v6 = v21[12];
    if (v5 == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = *(*v5 + 240);
        if (v8 && *(v8 + 16) != a1)
        {
          ++v7;
        }

        v5 += 8;
      }

      while (v5 != v6);
    }

    v26 = &v21;
    *(sub_29B23ADF0(v24, &v21, &unk_29B769442, &v26) + 6) = v7;
    if (!v7)
    {
      sub_29B239F48(v22, &v21);
    }
  }

  v9 = a1[31];
  v26 = 0;
  sub_29ABB7A3C(a1 + 33, v9, &v26);
  v10 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    v11 = 0;
    do
    {
      v12 = *(*(*(&v22[0] + 1) + ((v23 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v23 & 0x1FF));
      *&v23 = v23 + 1;
      *(&v23 + 1) = v10 - 1;
      if (v23 >= 0x400)
      {
        operator delete(**(&v22[0] + 1));
        *(&v22[0] + 1) += 8;
        *&v23 = v23 - 512;
      }

      *(a1[33] + 8 * v11) = v12;
      v13 = *(v12 + 152);
      v14 = *(v12 + 160);
      while (v13 != v14)
      {
        v15 = *(*v13 + 240);
        v16 = *(*v13 + 248);
        while (v15 != v16)
        {
          v21 = *(*v15 + 16);
          if (v21 != a1)
          {
            v26 = &v21;
            v17 = sub_29B23ADF0(v24, &v21, &unk_29B769442, &v26);
            v18 = *(v17 + 6);
            v19 = __OFSUB__(v18--, 1);
            *(v17 + 6) = v18;
            if ((v18 < 0) ^ v19 | (v18 == 0))
            {
              sub_29B239F48(v22, &v21);
            }
          }

          v15 += 8;
        }

        v13 += 8;
      }

      ++v11;
      v10 = *(&v23 + 1);
    }

    while (*(&v23 + 1));
  }

  sub_29A10C468(v22);
  return sub_29A0EB570(v24);
}

void sub_29B239714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_29A10C468(va);
  sub_29A0EB570(va1);
  _Unwind_Resume(a1);
}

void sub_29B239740(void *a1, uint64_t a2)
{
  v3 = *(*a2 + 8);
  v4 = a1[19];
  v5 = a1[20];
  while (v4 != v5)
  {
    v6 = *v4;
    (*(*v3 + 192))(&__str, v3, *v4 + 32, *(*v4 + 24), a1 + 36);
    std::string::operator=((v6 + 104), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    ++v4;
  }

  v7 = a1[11];
  v8 = a1[12];
  while (v7 != v8)
  {
    v9 = *v7;
    (*(*v3 + 192))(&__str, v3, *v7 + 32, *(*v7 + 24), a1 + 36);
    std::string::operator=((v9 + 104), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    ++v7;
  }

  v10 = a1[33];
  v11 = a1[34];
  while (v10 != v11)
  {
    v12 = *v10;
    v13 = *(*v10 + 88);
    v14 = *(*v10 + 96);
    while (v13 != v14)
    {
      v15 = *v13;
      sub_29B23C2B4(*v13, &__str);
      (*(*v3 + 192))(&v19, v3, &__str, *(v15 + 24), a1 + 36);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v19;
      std::string::operator=((v15 + 104), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v13;
    }

    v17 = *(v12 + 152);
    v16 = *(v12 + 160);
    while (v17 != v16)
    {
      v18 = *v17;
      sub_29B23C2B4(*v17, &__str);
      (*(*v3 + 192))(&v19, v3, &__str, *(v18 + 24), a1 + 36);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v19;
      std::string::operator=((v18 + 104), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v17;
    }

    ++v10;
  }
}

void sub_29B2399A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2399D8(uint64_t a1, void *a2)
{
  v3 = a2[11];
  v4 = a2[12];
  while (v3 != v4)
  {
    v5 = *v3++;
    sub_29B23C524(v5);
  }

  v7 = a2[19];
  v6 = a2[20];
  while (v7 != v6)
  {
    v8 = *v7++;
    sub_29B23C81C(v8);
  }
}

void sub_29B239A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a3 + 88) + 8 * a4);
  v6 = *(*(a3 + 152) + 8 * a5);
  v7 = *(v5 + 240);
  if (v7)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    sub_29B214228(&v28, *(v6 + 240), *(v6 + 248), (*(v6 + 248) - *(v6 + 240)) >> 3);
    v8 = v28;
    v9 = v29;
    if (v28 != v29)
    {
      do
      {
        v10 = *v8;
        sub_29B23C5EC(v6, *v8);
        sub_29B23C4CC(v10, v7);
        ++v8;
      }

      while (v8 != v9);
      v8 = v28;
    }

    if (v8)
    {
      v29 = v8;
      v11 = v8;
      goto LABEL_43;
    }

    return;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_29B214228(&v28, *(v6 + 240), *(v6 + 248), (*(v6 + 248) - *(v6 + 240)) >> 3);
  v13 = v28;
  v14 = v29;
  if (v28 == v29)
  {
    goto LABEL_41;
  }

  do
  {
    v15 = *v13;
    sub_29B23C5EC(v6, *v13);
    v16 = *(v5 + 128);
    v17 = *(v5 + 136);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(v15 + 136);
    *(v15 + 128) = v16;
    *(v15 + 136) = v17;
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    std::string::operator=((v15 + 56), (v5 + 56));
    if ((*(v5 + 167) & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 152))
      {
        goto LABEL_19;
      }

LABEL_18:
      std::string::operator=((v15 + 144), (v5 + 144));
      goto LABEL_19;
    }

    if (*(v5 + 167))
    {
      goto LABEL_18;
    }

LABEL_19:
    if ((*(v5 + 191) & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 176))
      {
        goto LABEL_24;
      }

LABEL_23:
      std::string::operator=((v15 + 168), (v5 + 168));
      goto LABEL_24;
    }

    if (*(v5 + 191))
    {
      goto LABEL_23;
    }

LABEL_24:
    if ((*(v15 + 271) & 0x8000000000000000) != 0)
    {
      if (!*(v15 + 256))
      {
        goto LABEL_39;
      }
    }

    else if (!*(v15 + 271))
    {
      goto LABEL_39;
    }

    v19 = *(*a2 + 8);
    v20 = *(v5 + 136);
    v25 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v19 + 48))(&v26);
    v22 = v26;
    v21 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(v15 + 136);
    *(v15 + 128) = v22;
    *(v15 + 136) = v21;
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    if (v27)
    {
      sub_29A014BEC(v27);
    }

    if (v25)
    {
      sub_29A014BEC(v25);
    }

    v24 = sub_29B1F31FC();
    std::string::operator=((v15 + 248), v24);
LABEL_39:
    ++v13;
  }

  while (v13 != v14);
  v13 = v28;
LABEL_41:
  if (v13)
  {
    v29 = v13;
    v11 = v13;
LABEL_43:
    operator delete(v11);
  }
}

void sub_29B239C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B239CC0()
{
  if ((atomic_load_explicit(&qword_2A1787290, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D1BA0();
  }

  return &xmmword_2A1787298;
}

__int128 *sub_29B239CF8(__int128 *a1)
{
  v2 = *a1;
  if (*a1 && *(*(v2 + 16) + 96) != *(*(v2 + 16) + 88))
  {
    v4 = *(a1 + 3);
    v3 = *(a1 + 4);
    if (v4 >= v3)
    {
      v6 = *(a1 + 2);
      v7 = v4 - v6;
      v8 = (v4 - v6) >> 4;
      v9 = v8 + 1;
      if ((v8 + 1) >> 60)
      {
        sub_29A00C9A4();
      }

      v10 = v3 - v6;
      if (v10 >> 3 > v9)
      {
        v9 = v10 >> 3;
      }

      v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
      v12 = 0xFFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v9;
      }

      if (v12)
      {
        v13 = sub_29A017BD4((a1 + 1), v12);
        v12 = v14;
        v6 = *(a1 + 2);
        v7 = *(a1 + 3) - v6;
        v15 = v7 >> 4;
        v2 = *a1;
      }

      else
      {
        v13 = 0;
        v15 = v8;
      }

      v16 = &v13[16 * v8];
      v17 = &v13[16 * v12];
      *v16 = v2;
      v16[1] = 0;
      v5 = v16 + 2;
      v18 = &v16[-2 * v15];
      memcpy(v18, v6, v7);
      v19 = *(a1 + 2);
      *(a1 + 2) = v18;
      *(a1 + 3) = v5;
      *(a1 + 4) = v17;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v4 = v2;
      v4[1] = 0;
      v5 = v4 + 2;
    }

    *(a1 + 3) = v5;
    v2 = *a1;
    v20 = *(*(*a1 + 16) + 88);
    v21 = *v20;
    v22 = *(*v20 + 240);
    if (v22)
    {
      if (!(*(**(v22 + 16) + 16))(*(v22 + 16)))
      {
LABEL_29:
        sub_29B23A024(a1, v22, v21);
        return a1;
      }

      v2 = *a1;
    }
  }

LABEL_24:
  if (v2)
  {
    v28 = v2;
    sub_29A479190(a1 + 5, &v28);
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  v26 = *(a1 + 3);
  if (*(a1 + 2) != v26)
  {
    while (2)
    {
      v23 = *(v26 - 16);
      v24 = *(v26 - 8);
      do
      {
        ++v24;
        v25 = *(*(v23 + 16) + 88);
        if (v24 >= (*(*(v23 + 16) + 96) - v25) >> 3)
        {
          v28 = v23;
          sub_29A479190(a1 + 5, &v28);
          v2 = 0;
          *a1 = 0;
          *(a1 + 1) = 0;
          *(a1 + 3) -= 16;
          goto LABEL_24;
        }

        *(v26 - 8) = v24;
        v21 = *(v25 + 8 * v24);
        v22 = *(v21 + 240);
      }

      while (!v22);
      if ((*(**(v22 + 16) + 16))(*(v22 + 16)))
      {
        continue;
      }

      goto LABEL_29;
    }
  }

  sub_29B239CC0();
  *a1 = xmmword_2A1787298;
  if (a1 != &xmmword_2A1787298)
  {
    sub_29A0D7024(a1 + 2, qword_2A17872A8, qword_2A17872B0, (qword_2A17872B0 - qword_2A17872A8) >> 4);
    sub_29B23A37C(a1 + 5, qword_2A17872C0, &qword_2A17872C8);
  }

  return a1;
}

void sub_29B239F48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = *(a1 + 40);
  v8 = v7 + *(a1 + 32);
  if (v6 == v8)
  {
    sub_29B23B04C(a1);
    v5 = *(a1 + 8);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32) + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  *(a1 + 40) = v7 + 1;
}

uint64_t sub_29B239FD0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
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

uint64_t *sub_29B23A024(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v15 = a2;
  for (i = *(a1 + 48); i; i = *i)
  {
    v7 = i[4];
    if (v7 <= a2)
    {
      if (v7 >= a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_29B23C2B4(a2, &v12);
        v10 = std::string::insert(&v12, 0, "Encountered cycle at element: ");
        v11 = *&v10->__r_.__value_.__l.__data_;
        v14 = v10->__r_.__value_.__r.__words[2];
        v13 = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(exception, &v13);
        *exception = &unk_2A20C79E8;
        __cxa_throw(exception, &unk_2A2070D20, sub_29AAD6B10);
      }

      ++i;
    }
  }

  result = sub_29A0F2BE4((a1 + 40), &v15, &v15);
  *a1 = v15;
  *(a1 + 8) = a3;
  return result;
}

void sub_29B23A134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B23A198(void *a1)
{
  v1 = sub_29B23C0FC(a1);

  operator delete(v1);
}

void sub_29B23A1CC(uint64_t a1)
{
  v1 = sub_29B2341F8(a1);

  operator delete(v1);
}

char *sub_29B23A1FC(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0D0518(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29B23A254(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29B23A270(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29B226FB8(a1, *a2, (a2 + 8));
  return a1;
}

BOOL sub_29B23A2C8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v4 = a2[2];
  if (v2 - v3 != a2[3] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    v5 = *v3;
    v6 = *(v3 + 1);
    v3 += 16;
    v7 = *v4;
    v8 = v4[1];
    v4 += 2;
    result = v5 == v7 && v6 == v8;
  }

  while (result && v3 != v2);
  return result;
}

uint64_t sub_29B23A33C(uint64_t a1)
{
  sub_29A082B84(a1 + 40, *(a1 + 48));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_29B23A37C(uint64_t **result, void *a2, void *a3)
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

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          sub_29B1F278C(v5, v8);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = sub_29A028760(v15);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
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

    result = sub_29A08623C(&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29B23A4E0(v5, a2 + 4);
      v12 = a2[1];
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
          v13 = a2[2];
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_29B23A4CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A08623C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B23A4E0(uint64_t **a1, unint64_t *a2)
{
  v4 = operator new(0x28uLL);
  v5 = *a2;
  v4[4] = *a2;
  v6 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (v5 >= v7[4])
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v6, v8, v4);
  return v4;
}

uint64_t sub_29B23A570(uint64_t a1)
{
  sub_29AA9DEE4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29B23A5AC(uint64_t a1)
{
  sub_29B23A5E8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B23A5E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B23A62C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29B23A62C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void *sub_29B23A694@<X0>(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x200uLL);
  result = sub_29B23A710(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29B23A710(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CAE30;
  sub_29B23A818(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_29B23A7AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAE30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B23A818(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, void *a5, void *a6)
{
  v7 = *a3;
  v8 = a5[1];
  v9[0] = *a5;
  v9[1] = v8;
  *a5 = 0;
  a5[1] = 0;
  sub_29B234038(a2, v7, a4, v9, a6);
  if (v8)
  {

    sub_29A014BEC(v8);
  }
}

void sub_29B23A88C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B23A8A4@<X0>(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x200uLL);
  result = sub_29B23A920(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *sub_29B23A920(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CAE30;
  sub_29B23A99C(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_29B23A99C(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, void *a5, void *a6)
{
  v7 = *a3;
  v8 = a5[1];
  v9[0] = *a5;
  v9[1] = v8;
  *a5 = 0;
  a5[1] = 0;
  sub_29B234038(a2, v7, a4, v9, a6);
  if (v8)
  {

    sub_29A014BEC(v8);
  }
}

void sub_29B23AA10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B23AA28(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
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

  sub_29B23AC94(a1, v9, a4, v27);
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

void sub_29B23AC7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B23AC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
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

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B23AD38(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AA9DEE4(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29B23AD94(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29B23A5E8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_29B23ADF0(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v9)
          {
            if (v13[2] == *a2)
            {
              return v13;
            }
          }

          else
          {
            if (v11.u32[0] > 1uLL)
            {
              if (v14 >= v10)
              {
                v14 %= v10;
              }
            }

            else
            {
              v14 &= v10 - 1;
            }

            if (v14 != v4)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v13 = operator new(0x20uLL);
  *v13 = 0;
  v13[1] = v9;
  v13[2] = **a4;
  *(v13 + 6) = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *v13 = *v22;
LABEL_38:
    *v22 = v13;
    goto LABEL_39;
  }

  *v13 = *(a1 + 16);
  *(a1 + 16) = v13;
  *(v21 + 8 * v4) = a1 + 16;
  if (*v13)
  {
    v23 = *(*v13 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v13;
}

void sub_29B23B04C(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0x1000uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0x1000uLL);
    sub_29A0D671C(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    sub_29A0D6614(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = sub_29A00C9BC(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0x1000uLL);
  sub_29A0D6828(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    sub_29A0D6930(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_29B23B1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_29B23B200(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      result = *v11;
      if (*v11)
      {
        do
        {
          v13 = result[1];
          if (v13 == v8)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v13 >= v9)
              {
                v13 %= v9;
              }
            }

            else
            {
              v13 &= v9 - 1;
            }

            if (v13 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29B23B458(a1, v8, a3, a4, &v24);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    result = v24;
    *v24 = *v21;
    *v21 = result;
  }

  else
  {
    v22 = v24;
    *v24 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    result = v24;
    if (*v24)
    {
      v23 = *(*v24 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v23 >= v9)
        {
          v23 %= v9;
        }
      }

      else
      {
        v23 &= v9 - 1;
      }

      *(*a1 + 8 * v23) = v24;
      result = v24;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B23B440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A892918(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B23B458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29B23B4D8((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29B23B4D8(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = *(a3 + 6);
  return a1;
}

void sub_29B23B56C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B23B588(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      result = *v11;
      if (*v11)
      {
        do
        {
          v13 = result[1];
          if (v13 == v8)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v13 >= v9)
              {
                v13 %= v9;
              }
            }

            else
            {
              v13 &= v9 - 1;
            }

            if (v13 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29B23B7E0(a1, v8, a3, a4, &v24);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    result = v24;
    *v24 = *v21;
    *v21 = result;
  }

  else
  {
    v22 = v24;
    *v24 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    result = v24;
    if (*v24)
    {
      v23 = *(*v24 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v23 >= v9)
        {
          v23 %= v9;
        }
      }

      else
      {
        v23 &= v9 - 1;
      }

      *(*a1 + 8 * v23) = v24;
      result = v24;
    }
  }

  ++*(a1 + 24);
  return result;
}