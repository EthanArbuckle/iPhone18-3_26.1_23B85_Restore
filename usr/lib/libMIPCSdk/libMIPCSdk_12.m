void sub_297AF6DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  mipc::Error::~Error(&a27);
  mipc::Error::~Error(v27);
  _Unwind_Resume(a1);
}

void sub_297AF6DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a19);
  mipc::Error::~Error(&a21);
  mipc::Error::~Error(&a27);
  mipc::Error::~Error(v27);
  _Unwind_Resume(a1);
}

uint64_t mipc::dale_cps::Laps_Fetch_Ind::Laps_Fetch_Ind(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 62338, &v14, a3, 3);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6AE48;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E69C60;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return a1;
}

void sub_297AF70B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Laps_Fetch_Ind::~Laps_Fetch_Ind(mipc::dale_cps::Laps_Fetch_Ind *this)
{
  *this = &unk_2A1E69C60;
  v2 = *(this + 19);
  if (v2)
  {
    v3 = *(this + 20);
    v4 = *(this + 19);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 19);
    }

    *(this + 20) = v2;
    operator delete(v4);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    v8 = *(this + 16);
    v9 = *(this + 15);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(this + 15);
    }

    *(this + 16) = v7;
    operator delete(v9);
  }

  v11 = *(this + 12);
  if (v11)
  {
    v12 = *(this + 13);
    v13 = *(this + 12);
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = *(this + 12);
    }

    *(this + 13) = v11;
    operator delete(v13);
  }

  v15 = *(this + 11);
  *(this + 11) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  *this = &unk_2A1E85968;
  v16 = *(this + 9);
  if (!v16 || atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (*(this + 63) < 0)
  {
LABEL_32:
    operator delete(*(this + 5));
  }

LABEL_33:
  v17 = *(this + 3);
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

{
  mipc::dale_cps::Laps_Fetch_Ind::~Laps_Fetch_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_LapsFetchDataCellInfo_struct8,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  *v24 = v6;
  *&v24[16] = v6;
  mipc::Message::findTLV(this, 0x103u, v24);
  *&v23[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v23 = v7;
  *__p = v7;
  v21 = *v24;
  if ((v24[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v24[8], *&v24[16]);
  }

  else
  {
    *__p = *&v24[8];
    *v23 = *&v24[24];
  }

  *&v23[8] = v25;
  if (*(&v25 + 1))
  {
    atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v21;
  if (v21 && v21 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v21, a1);
  }

  else
  {
    v9 = v26;
    v10 = *(&v26 + 1);
    v11 = *a3;
    *a3 = 0;
    if (v11)
    {
      operator delete(v11);
    }

    if (v8)
    {
      if (v8 == 0x10000000ELL)
      {
        v8 = 0;
      }
    }

    else
    {
      v12 = operator new(0x18uLL);
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 0x18)
      {
        if (v9 == 24)
        {
          v8 = 0;
          v14 = *v10;
          v12[2] = *(v10 + 2);
          *v12 = v14;
        }
      }

      else
      {
        v8 = 0x100000012;
      }
    }

    v15 = this[3];
    v19 = this[2];
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x103u, &v19, "", 0, a1);
    v16 = v20;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  v17 = *&v23[16];
  if (*&v23[16] && !atomic_fetch_add((*&v23[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if ((v23[7] & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_28:
    operator delete(__p[0]);
  }

LABEL_29:
  v18 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(*&v24[8]);
    return;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if ((v24[31] & 0x80000000) != 0)
  {
    goto LABEL_36;
  }
}

void sub_297AF75F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF7608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  mipc::Error::~Error(va);
  mipc::Error::~Error(va1);
  _Unwind_Resume(a1);
}

void sub_297AF7624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<7ul,false>,12ul,false>(void *a1, mipc::Message *this, void ***a3)
{
  v4 = this;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v6;
  v50 = v6;
  *v48 = v6;
  *&v48[16] = v6;
  mipc::Message::findTLV(this, 0x104u, v48);
  *&v47[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v47 = v7;
  *__p = v7;
  v45 = *v48;
  if ((v48[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v48[8], *&v48[16]);
  }

  else
  {
    *__p = *&v48[8];
    *v47 = *&v48[24];
  }

  *&v47[8] = v49;
  if (*(&v49 + 1))
  {
    atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v45;
  if (v45 && v45 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(v4, &v45, a1);
    goto LABEL_63;
  }

  v9 = v50;
  v10 = *(&v50 + 1);
  v11 = *a3;
  v12 = a3[1];
  while (v12 != v11)
  {
    v13 = *(v12 - 1);
    v12 -= 3;
    if (v13 < 0)
    {
      operator delete(*v12);
    }
  }

  a3[1] = v11;
  if (v8)
  {
    if (v8 == 0x10000000ELL)
    {
      v8 = 0;
      v14 = *(v4 + 3);
      v43 = *(v4 + 2);
      v44 = v14;
      if (!v14)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else
  {
    if (v9 >= 8)
    {
      v40 = a1;
      v41 = v4;
      v15 = (v10 + v9);
      v8 = 0x100000010;
      while (1)
      {
        v16 = *a3;
        v17 = a3[1];
        v18 = v17 - *a3;
        if (v18 == 288)
        {
          goto LABEL_77;
        }

        if ((v15 - v10) < 4)
        {
          v8 = 0x100000005;
LABEL_77:
          a1 = v40;
          v4 = v41;
          v14 = *(v41 + 3);
          v43 = *(v41 + 2);
          v44 = v14;
          if (v14)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v19 = v15 - v10 <= 2 ? v15 : v10 + 1;
        v20 = v15 - v19 <= 2;
        v23 = *v19;
        v21 = v19 + 1;
        v22 = v23;
        v24 = (v20 ? v15 : v21);
        v25 = a3[2];
        if (v17 >= v25)
        {
          v27 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3) + 1;
          if (v27 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v28 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v16) >> 3);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          v29 = v28 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v27;
          v42 = v29;
          if (v29)
          {
            if (v29 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v30 = operator new(24 * v29);
          }

          else
          {
            v30 = 0;
          }

          v31 = &v30[8 * (v18 >> 3)];
          *v31 = 0;
          *(v31 + 1) = 0;
          *(v31 + 2) = 0;
          v32 = &v31[-v18];
          if (v16 != v17)
          {
            v33 = v16;
            v34 = v32;
            do
            {
              v35 = *v33;
              v34[2] = v33[2];
              *v34 = v35;
              v34 += 3;
              v33[1] = 0;
              v33[2] = 0;
              *v33 = 0;
              v33 += 3;
            }

            while (v33 != v17);
            do
            {
              if (*(v16 + 23) < 0)
              {
                operator delete(*v16);
              }

              v16 += 3;
            }

            while (v16 != v17);
            v16 = *a3;
          }

          v26 = (v31 + 24);
          *a3 = v32;
          a3[1] = v26;
          a3[2] = &v30[24 * v42];
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v17 = 0;
          v17[1] = 0;
          v26 = v17 + 3;
          v17[2] = 0;
        }

        a3[1] = v26;
        if (!v22)
        {
          break;
        }

        if (v22 > 7)
        {
          goto LABEL_77;
        }

        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v26 - 3, v24, (v24 + v22 - 1), v22 - 1);
        v36 = (((v22 + 11) & 0x18) - 4) & 0xFFFC;
        if (v15 - v24 <= v36)
        {
          v10 = v15;
        }

        else
        {
          v10 = (v24 + v36);
        }

        if ((v15 - v10) <= 7)
        {
          v8 = 0;
          a1 = v40;
          v4 = v41;
          v14 = *(v41 + 3);
          v43 = *(v41 + 2);
          v44 = v14;
          if (v14)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }
      }

      v8 = 0x100000003;
      a1 = v40;
      v4 = v41;
      v14 = *(v41 + 3);
      v43 = *(v41 + 2);
      v44 = v14;
      if (v14)
      {
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v8 = 0;
  }

  v14 = *(v4 + 3);
  v43 = *(v4 + 2);
  v44 = v14;
  if (v14)
  {
LABEL_59:
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_60:
  mipc::Message::handle<(mipc::Error::Type)2>(v4, v8, 0x104u, &v43, "", 0, a1);
  v37 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_63:
  v38 = *&v47[16];
  if (*&v47[16] && !atomic_fetch_add((*&v47[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
    if ((v47[7] & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if ((v47[7] & 0x80000000) != 0)
  {
LABEL_66:
    operator delete(__p[0]);
  }

LABEL_67:
  v39 = *(&v49 + 1);
  if (!*(&v49 + 1) || atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v48[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_70;
  }

  (v39->__on_zero_shared)(v39);
  std::__shared_weak_count::__release_weak(v39);
  if ((v48[31] & 0x80000000) != 0)
  {
LABEL_70:
    operator delete(*&v48[8]);
  }
}

void sub_297AF7B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF7B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  mipc::Error::~Error(va1);
  mipc::Error::~Error(va2);
  _Unwind_Resume(a1);
}

void sub_297AF7B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  mipc::Error::~Error(va);
  mipc::Error::~Error(va1);
  _Unwind_Resume(a1);
}

uint64_t mipc::dale_cps::Laps_Fetch_Ind::getSize(mipc::dale_cps::Laps_Fetch_Ind *this)
{
  v1 = *(this + 6);
  v2 = *(this + 13);
  v3 = *(this + 12);
  if (v3 == v2)
  {
    v4 = 0;
    v9 = *(this + 120);
    v7 = *(this + 16);
    v8 = *(this + 15);
    if (v8 == v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = 16;
    while (1)
    {
      v5 = *(v3 + 23);
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(v3 + 8);
      }

      if ((v5 + 5) >> 16)
      {
        break;
      }

      v4 += (v5 + 12) & 0xFFF8;
      v3 += 24;
      if (v3 == v2)
      {
        v6 = *(this + 120);
        v7 = *(this + 16);
        v8 = *(this + 15);
        if (v8 != v7)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    v4 = 0;
    v10 = *(this + 120);
    v7 = *(this + 16);
    v8 = *(this + 15);
    if (v8 == v7)
    {
      goto LABEL_18;
    }
  }

LABEL_12:
  v11 = 16;
  while (1)
  {
    v12 = *(v8 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v8 + 8);
    }

    if ((v12 + 5) >> 16)
    {
      break;
    }

    v11 += (v12 + 12) & 0xFFF8;
    v8 += 24;
    if (v8 == v7)
    {
      goto LABEL_19;
    }
  }

LABEL_18:
  v11 = 0;
LABEL_19:
  v13 = *(this + 152);
  v14 = *(this + 20);
  v15 = *(this + 19);
  if (v15 != v14)
  {
    v16 = 16;
    while (1)
    {
      v17 = *(v15 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v15 + 8);
      }

      if ((v17 + 5) >> 16)
      {
        break;
      }

      v16 += (v17 + 12) & 0xFFF8;
      v15 += 24;
      if (v15 == v14)
      {
        goto LABEL_27;
      }
    }
  }

  v16 = 0;
LABEL_27:
  v18 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v18 = 32;
  }

  return v18 + 8 * (*(this + 11) != 0) + v4 + v11 + 32 * (*(this + 18) != 0) + v16;
}

mipc::dale_cps::P2P_Bb_Info_Ind *mipc::dale_cps::P2P_Bb_Info_Ind::P2P_Bb_Info_Ind(mipc::dale_cps::P2P_Bb_Info_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62339, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E69CA8;
  *(this + 11) = 0;
  mipc::dale_cps::P2P_Bb_Info_Ind::deserialize(this, &v7);
  v5 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v9 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(__p);
  return this;
}

void sub_297AF7E28(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::P2P_Bb_Info_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v8);
  v4 = v8;
  *a2 = v8;
  v5 = v11;
  *(a2 + 8) = *__p;
  *(a2 + 24) = v10;
  *(a2 + 32) = v5;
  if (!v4)
  {
    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<200ul,false>,true>(this, this + 11, 0x100u, &v8);
    *a2 = v8;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = *__p;
    *(a2 + 24) = v10;
    HIBYTE(v10) = 0;
    LOBYTE(__p[0]) = 0;
    v6 = v11;
    v11 = 0uLL;
    *(a2 + 32) = v6;
    if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v5 + 1) + 16))(*(&v5 + 1));
      std::__shared_weak_count::__release_weak(*(&v5 + 1));
    }

    v7 = *(&v11 + 1);
    if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return;
    }

    operator delete(__p[0]);
  }
}

void *mipc::dale_cps::P2P_Bb_Info_Ind::P2P_Bb_Info_Ind(void *a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 62339, &v14, a3, 3);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6AE90;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E69CA8;
  a1[11] = 0;
  return a1;
}

void sub_297AF8220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::P2P_Bb_Info_Ind::~P2P_Bb_Info_Ind(mipc::dale_cps::P2P_Bb_Info_Ind *this)
{
  *this = &unk_2A1E69CA8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v2[1] = v3;
      operator delete(v3);
    }

    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v4 = *(this + 9);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 63) < 0)
  {
LABEL_8:
    operator delete(*(this + 5));
  }

LABEL_9:
  v5 = *(this + 3);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

{
  *this = &unk_2A1E69CA8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v2[1] = v3;
      operator delete(v3);
    }

    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v4 = *(this + 9);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 63) < 0)
  {
LABEL_8:
    operator delete(*(this + 5));
  }

LABEL_9:
  v5 = *(this + 3);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

{
  *this = &unk_2A1E69CA8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v2[1] = v3;
      operator delete(v3);
    }

    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v4 = *(this + 9);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(this + 63) < 0)
  {
LABEL_8:
    operator delete(*(this + 5));
  }

LABEL_9:
  v5 = *(this + 3);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = this;
  }

  else
  {
    v6 = this;
  }

  operator delete(v6);
}

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<200ul,false>,true>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v8;
  v25 = v8;
  *v23 = v8;
  *&v23[16] = v8;
  mipc::Message::findTLV(a1, a3, v23);
  *&v22[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v22 = v9;
  *__p = v9;
  v20 = *v23;
  if ((v23[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v23[8], *&v23[16]);
  }

  else
  {
    *__p = *&v23[8];
    *v22 = *&v23[24];
  }

  *&v22[8] = v24;
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v20 && v20 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(a1, &v20, a4);
  }

  else
  {
    v17 = v20;
    v18 = v25;
    v19 = *(&v25 + 1);
    v10 = mipc::tlv<mipc::mipc_byte_array_t<200ul,false>,true>::deserialize(a2, &v17, *(a1 + 4) == 0);
    v11 = *(a1 + 3);
    v15 = *(a1 + 2);
    v16 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(a1, v10, a3, &v15, "", 0, a4);
    v12 = v16;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  v13 = *&v22[16];
  if (*&v22[16] && !atomic_fetch_add((*&v22[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if ((v22[7] & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v22[7] & 0x80000000) != 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

LABEL_18:
  v14 = *(&v24 + 1);
  if (!*(&v24 + 1) || atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v23[31] & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(*&v23[8]);
    return;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if ((v23[31] & 0x80000000) != 0)
  {
    goto LABEL_25;
  }
}

void sub_297AF8890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF88A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  mipc::Error::~Error(va1);
  mipc::Error::~Error(va2);
  _Unwind_Resume(a1);
}

void sub_297AF88C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  mipc::Error::~Error(va);
  mipc::Error::~Error(va1);
  _Unwind_Resume(a1);
}

void *mipc::dale_cps::P2P_Bb_Info_Ind::getSize(mipc::dale_cps::P2P_Bb_Info_Ind *this)
{
  v1 = *(this + 11);
  if (v1)
  {
    v2 = v1[1] - *v1;
    v3 = __CFADD__(v2 - 65532, 0x10000);
    v1 = ((v2 + 11) & 0xFFF8);
    if (!v3)
    {
      v1 = 0;
    }
  }

  v4 = 3;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 4;
  }

  return &v1[v4];
}

mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind *mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind::Nw_Emergency_First_Scan_Fail_Ind(mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62340, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E69CF0;
  if (HIDWORD(v5))
  {
    if (*(this + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(this + 5), *(this + 6));
    }

    else
    {
      v11 = *(this + 40);
    }

    v7 = *(this + 9);
    *&v12 = *(this + 8);
    *(&v12 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v6 = *(&v12 + 1);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v12 = 0uLL;
    memset(&v11, 0, sizeof(v11));
  }

  __p_8 = v11.__r_.__value_.__r.__words[0];
  v10 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((v10 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(__p_8);
  return this;
}

void sub_297AF8AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind::deserialize@<D0>(mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v4);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  return result;
}

void *mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind::Nw_Emergency_First_Scan_Fail_Ind(void *a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 62340, &v14, a3, 3);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6AED8;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E69CF0;
  return a1;
}

void sub_297AF8D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind::~Nw_Emergency_First_Scan_Fail_Ind(mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind *this)
{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

uint64_t mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind::getSize(mipc::dale_cps::Nw_Emergency_First_Scan_Fail_Ind *this)
{
  if (*(this + 9))
  {
    return 32;
  }

  else
  {
    return 24;
  }
}

mipc::dale_cps::Nw_Scan_Info_Ind *mipc::dale_cps::Nw_Scan_Info_Ind::Nw_Scan_Info_Ind(mipc::dale_cps::Nw_Scan_Info_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62341, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E69D38;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  mipc::dale_cps::Nw_Scan_Info_Ind::deserialize(this, v7);
  v5 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v8 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(v7[1]);
  return this;
}

void sub_297AF921C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 12);
      *(v1 + 12) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 12);
  *(v1 + 12) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *v2;
    *v2 = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v6);
  v7 = *v2;
  *v2 = 0;
  if (!v7)
  {
LABEL_5:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v7);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Nw_Scan_Info_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(__p);
  v4 = *__p;
  *a2 = *__p;
  v5 = v43;
  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v6 = v43;
  v43 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v43 + 1);
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((__p[31] & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(*&__p[8]);
    if (v7)
    {
      return;
    }

    goto LABEL_15;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if ((__p[31] & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v7)
  {
    return;
  }

LABEL_15:
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v9 = v43;
  v43 = 0uLL;
  v10 = a2[5];
  *(a2 + 2) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *a2;
  v12 = *(&v43 + 1);
  if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v11)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v13;
    v44 = v13;
    *__p = v13;
    *&__p[16] = v13;
    mipc::Message::findTLV(this, 0x102u, __p);
    *&v41[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v41 = v14;
    *v40 = v14;
    v39 = *__p;
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v40, *&__p[8], *&__p[16]);
    }

    else
    {
      *v40 = *&__p[8];
      *v41 = *&__p[24];
    }

    *&v41[8] = v43;
    if (*(&v43 + 1))
    {
      atomic_fetch_add_explicit((*(&v43 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v39;
    if (v39 && v39 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v39, &v33);
    }

    else
    {
      v16 = v44;
      v17 = *(&v44 + 1);
      v18 = this[13];
      this[13] = 0;
      if (v18)
      {
        operator delete(v18);
      }

      if (v15)
      {
        if (v15 == 0x10000000ELL)
        {
          v15 = 0;
        }
      }

      else
      {
        v19 = operator new(6uLL);
        v19[2] = 0;
        *v19 = 0;
        v20 = this[13];
        this[13] = v19;
        if (v20)
        {
          operator delete(v20);
          v19 = this[13];
        }

        v15 = 0x100000011;
        if (v16 <= 6)
        {
          if (v16 == 6)
          {
            v15 = 0;
            v21 = *v17;
            v19[2] = *(v17 + 2);
            *v19 = v21;
          }
        }

        else
        {
          v15 = 0x100000012;
        }
      }

      v22 = this[3];
      v37 = this[2];
      v38 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mipc::Message::handle<(mipc::Error::Type)2>(this, v15, 0x102u, &v37, "", 0, &v33);
      v23 = v38;
      if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }
    }

    v24 = *&v41[16];
    if (*&v41[16] && !atomic_fetch_add((*&v41[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    if ((v41[7] & 0x80000000) != 0)
    {
      operator delete(v40[0]);
    }

    v25 = *(&v43 + 1);
    if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    *a2 = v33;
    if (*(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }

    *(a2 + 1) = v34;
    a2[3] = v35;
    HIBYTE(v35) = 0;
    LOBYTE(v34) = 0;
    v26 = v36;
    v36 = 0uLL;
    v27 = a2[5];
    *(a2 + 2) = v26;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = *a2;
    v29 = *(&v36 + 1);
    if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (!v28)
    {
      mipc::Message::deserializeTlv<unsigned char,false>(this, this + 14, 0x103u, __p);
      *a2 = *__p;
      if (*(a2 + 31) < 0)
      {
        operator delete(a2[1]);
      }

      *(a2 + 1) = *&__p[8];
      a2[3] = *&__p[24];
      __p[31] = 0;
      __p[8] = 0;
      v30 = v43;
      v43 = 0uLL;
      v31 = a2[5];
      *(a2 + 2) = v30;
      if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      v32 = *(&v43 + 1);
      if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
      }

      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }
    }
  }
}

void sub_297AF99B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

uint64_t mipc::dale_cps::Nw_Scan_Info_Ind::Nw_Scan_Info_Ind(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 62341, &v14, a3, 3);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6AF20;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E69D38;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_297AF9C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Nw_Scan_Info_Ind::~Nw_Scan_Info_Ind(mipc::dale_cps::Nw_Scan_Info_Ind *this)
{
  *this = &unk_2A1E69D38;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  *this = &unk_2A1E85968;
  v6 = *(this + 9);
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (*(this + 63) < 0)
  {
LABEL_12:
    operator delete(*(this + 5));
  }

LABEL_13:
  v7 = *(this + 3);
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

{
  *this = &unk_2A1E69D38;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  *this = &unk_2A1E85968;
  v6 = *(this + 9);
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (*(this + 63) < 0)
  {
LABEL_12:
    operator delete(*(this + 5));
  }

LABEL_13:
  v7 = *(this + 3);
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

{
  *this = &unk_2A1E69D38;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  *this = &unk_2A1E85968;
  v6 = *(this + 9);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(this + 63) < 0)
  {
LABEL_12:
    operator delete(*(this + 5));
  }

LABEL_13:
  v7 = *(this + 3);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = this;
  }

  else
  {
    v8 = this;
  }

  operator delete(v8);
}

uint64_t mipc::dale_cps::Nw_Scan_Info_Ind::getSize(mipc::dale_cps::Nw_Scan_Info_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 16 * (*(this + 13) != 0) + 8 * (*(this + 14) != 0);
}

uint64_t mipc::tlv<mipc::mipc_byte_array_t<200ul,false>,true>::deserialize(void **a1, uint64_t a2, int a3)
{
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v6[1] = v7;
      operator delete(v7);
    }

    operator delete(v6);
  }

  if (*a2)
  {
    v8 = 0x10000000FLL;
    if (!a3)
    {
      v8 = 0;
    }

    if (*a2 == 0x10000000ELL)
    {
      return v8;
    }

    else
    {
      return *a2;
    }
  }

  else
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = operator new(0x18uLL);
    v12[1] = 0;
    v12[2] = 0;
    *v12 = 0;
    v13 = *a1;
    *a1 = v12;
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v13[1] = v14;
        operator delete(v14);
      }

      operator delete(v13);
      v12 = *a1;
    }

    if (v10)
    {
      if (v10 <= 0xC8)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v12, v11, &v11[v10], v10);
        return 0;
      }

      else
      {
        return 0x100000010;
      }
    }

    else
    {
      return 0x100000003;
    }
  }
}

double mipc::apn::Set_Ia_Req::Set_Ia_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 257;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E6AF68;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 257;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E6AF68;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 80) = 1;
  return result;
}

void mipc::apn::Set_Ia_Req::~Set_Ia_Req(mipc::apn::Set_Ia_Req *this)
{
  *this = &unk_2A1E6AF68;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  v6 = *(this + 15);
  *(this + 15) = 0;
  if (v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }

  v7 = *(this + 14);
  *(this + 14) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 13);
  *(this + 13) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 12);
  *(this + 12) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete(v10);
  }

  *this = &unk_2A1E85968;
  v11 = *(this + 9);
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (*(this + 63) < 0)
  {
LABEL_28:
    operator delete(*(this + 5));
  }

LABEL_29:
  v12 = *(this + 3);
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

{
  mipc::apn::Set_Ia_Req::~Set_Ia_Req(this);

  operator delete(v1);
}

void mipc::apn::Set_Ia_Req::serialize(mipc::apn::Set_Ia_Req *this@<X0>, uint64_t a2@<X8>)
{
  Size = mipc::apn::Set_Ia_Req::getSize(this);
  *&v50 = operator new(Size);
  v51 = v50 + Size;
  bzero(v50, Size);
  *(&v50 + 1) = v50 + Size;
  v49 = v50;
  v48 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v43, this, &v49);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v5 = v46;
  v46 = 0uLL;
  v6 = *(&v48 + 1);
  v48 = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = *(&v46 + 1);
    v8 = __p[0];
    if (!*(&v46 + 1))
    {
LABEL_7:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(v44);
      if (v8)
      {
        goto LABEL_92;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = *(&v46 + 1);
    v8 = __p[0];
    if (!*(&v46 + 1))
    {
      goto LABEL_7;
    }
  }

  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v8)
  {
    goto LABEL_92;
  }

LABEL_14:
  mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, this + 11, 0x101u, &v49, &v43);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v9 = v46;
  v46 = 0uLL;
  v10 = *(&v48 + 1);
  v48 = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = *(&v46 + 1);
    v12 = __p[0];
    if (!*(&v46 + 1))
    {
LABEL_20:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_26:
      operator delete(v44);
      if (v12)
      {
        goto LABEL_92;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v11 = *(&v46 + 1);
    v12 = __p[0];
    if (!*(&v46 + 1))
    {
      goto LABEL_20;
    }
  }

  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_20;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v12)
  {
    goto LABEL_92;
  }

LABEL_27:
  if (*(this + 12))
  {
    *v49 = 258;
    v13 = v49++;
    v13[1] = 1;
    v14 = v49++;
    *(v14 + 2) = **(this + 12);
    v49 += 2;
  }

  else if (!*(this + 4))
  {
    v15 = 0x10000000FLL;
    goto LABEL_31;
  }

  v15 = 0;
LABEL_31:
  v52 = 0;
  v53 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v15, 0x102u, &v52, "", 0, &v43);
  v16 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v17 = v46;
  v46 = 0uLL;
  v18 = *(&v48 + 1);
  v48 = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(&v46 + 1);
  v20 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
    if (!v20)
    {
      goto LABEL_46;
    }

LABEL_92:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v48;
    v48 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_93;
  }

  if (v20)
  {
    goto LABEL_92;
  }

LABEL_46:
  if (*(this + 13))
  {
    *v49 = 259;
    v21 = v49++;
    v21[1] = 1;
    v22 = v49++;
    *(v22 + 2) = **(this + 13);
    v49 += 2;
  }

  else if (!*(this + 4))
  {
    v23 = 0x10000000FLL;
    goto LABEL_51;
  }

  v23 = 0;
LABEL_51:
  v52 = 0;
  v53 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v23, 0x103u, &v52, "", 0, &v43);
  v24 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v25 = v46;
  v46 = 0uLL;
  v26 = *(&v48 + 1);
  v48 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v46 + 1);
  v28 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (v28)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 14, 260, &v49, &v43);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v29 = v46;
  v46 = 0uLL;
  v30 = *(&v48 + 1);
  v48 = v29;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *(&v46 + 1);
  v32 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (v32)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,true>(&v43, this, this + 15, 0x105u, &v49);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v33 = v46;
  v46 = 0uLL;
  v34 = *(&v48 + 1);
  v48 = v33;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *(&v46 + 1);
  v36 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (v36)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,true>(&v43, this, this + 16, 0x106u, &v49);
  v37 = *mipc::Error::operator=(__p, &v43);
  mipc::Error::~Error(&v43);
  if (v37)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned int,false>(this, this + 17, 263, &v49, &v43);
  v38 = *mipc::Error::operator=(__p, &v43);
  mipc::Error::~Error(&v43);
  if (v38)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 18, 264, &v49, &v43);
  v39 = *mipc::Error::operator=(__p, &v43);
  mipc::Error::~Error(&v43);
  if (v39)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 19, 265, &v49, &v43);
  v40 = *mipc::Error::operator=(__p, &v43);
  mipc::Error::~Error(&v43);
  if (v40)
  {
    goto LABEL_92;
  }

  (*(*this + 32))(&v43, this, &v50);
  v41 = *mipc::Error::operator=(__p, &v43);
  mipc::Error::~Error(&v43);
  if (v41)
  {
    goto LABEL_92;
  }

  *a2 = v50;
  *(a2 + 16) = v51;
  v51 = 0;
  v50 = 0uLL;
  *(a2 + 48) = 0;
  v42 = *(&v48 + 1);
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

LABEL_93:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }
}

void sub_297AFAFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::Error::~Error(va);
  v9 = *(v7 - 96);
  if (v9)
  {
    *(v7 - 88) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::apn::Set_Ia_Req::getSize(int64x2_t *this)
{
  v1 = this[5].i64[1];
  if (!v1)
  {
    v5 = 16;
    v6 = this[7].i64[1];
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v2 = *(v1 + 23);
  v3 = *(v1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v3 = v2;
  }

  v4 = __CFADD__(v3 - 65531, 0x10000);
  v5 = ((v3 + 12) & 0xFFF8) + 16;
  if (!v4)
  {
    v5 = 16;
  }

  v6 = this[7].i64[1];
  if (v6)
  {
LABEL_7:
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v4 = __CFADD__(v8 - 65531, 0x10000);
    v6 = (v8 + 12) & 0xFFF8;
    if (!v4)
    {
      v6 = 0;
    }
  }

LABEL_11:
  v9 = this[8].i64[0];
  if (v9)
  {
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v4 = __CFADD__(v11 - 65531, 0x10000);
    v9 = (v11 + 12) & 0xFFF8;
    if (!v4)
    {
      v9 = 0;
    }
  }

  v12.i64[0] = this[7].i64[0];
  v12.i64[1] = this[8].i64[1];
  v13 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v13, vceqzq_s64(this[6])), vbicq_s8(v13, vceqzq_s64(v12)))) + 8 * (this[9].i64[0] != 0) + v9 + 8 * (this[9].i64[1] != 0) + v6 + v5;
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,true>(uint64_t a1@<X0>, char **a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = v5[23];
    v7 = *(v5 + 4);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    **a4 = a3;
    v8 = (*a4 + 2);
    *a4 = v8;
    *v8 = v7 + 1;
    v9 = (*a4 + 2);
    *a4 = v9;
    v10 = *a2;
    v11 = (*a2)[23];
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = a5;
      v13 = a1;
      v11 = *(v10 + 1);
      if (v11 > 0x63)
      {
        v14 = a3;
        v10 = *v10;
        goto LABEL_11;
      }

      v16 = a4;
      v17 = a3;
      v18 = *v10;
    }

    else
    {
      v12 = a5;
      v13 = a1;
      if (v11 > 0x63)
      {
        v14 = a3;
LABEL_11:
        v24 = &v10[v11];
        v25 = v10;
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v25, &v24, &v22);
        v15 = 0x100000010;
        a3 = v14;
        a1 = v13;
        a5 = v12;
        goto LABEL_18;
      }

      v16 = a4;
      v17 = a3;
      v18 = *a2;
    }

    memcpy(v9, v18, v11);
    v20 = (*v16 + v11);
    *v16 = v20;
    *v20 = 0;
    v19 = *v16 + 1;
    *v16 = v19;
    LOWORD(v20) = v10[23];
    if (v20 < 0)
    {
      v20 = *(v10 + 1);
    }

    *v16 = v19 + (((v20 + 12) & 0xFFF8) - v20 - 5);
    a3 = v17;
    a1 = v13;
    a5 = v12;
  }

  else if (!*(a1 + 32))
  {
    v15 = 0x10000000FLL;
    v22 = 0;
    v23 = 0;
    goto LABEL_18;
  }

  v15 = 0;
  v22 = 0;
  v23 = 0;
LABEL_18:
  mipc::Message::handle<(mipc::Error::Type)1>(a1, v15, a3, &v22, "", 0, a5);
  v21 = v23;
  if (v23)
  {
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }
}

void sub_297AFB374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,true>(uint64_t a1, uint64_t a2, char **a3, unsigned int a4, uint64_t *a5)
{
  v8 = *a3;
  if (*a3)
  {
    v10 = v8[23];
    v11 = *(v8 + 4);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    **a5 = a4;
    v12 = (*a5 + 2);
    *a5 = v12;
    *v12 = v11 + 1;
    v13 = (*a5 + 2);
    *a5 = v13;
    v14 = *a3;
    v15 = (*a3)[23];
    if ((v15 & 0x8000000000000000) != 0)
    {
      v15 = *(v14 + 1);
      if (v15 > 0x7F)
      {
        v24 = *v14;
        v23 = &v24[v15];
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v24, &v23, &v21);
        v17 = 0x100000010;
        goto LABEL_15;
      }

      v16 = *v14;
    }

    else
    {
      v16 = *a3;
    }

    memcpy(v13, v16, v15);
    v19 = (*a5 + v15);
    *a5 = v19;
    *v19 = 0;
    v18 = *a5 + 1;
    *a5 = v18;
    LOWORD(v19) = v14[23];
    if (v19 < 0)
    {
      v19 = *(v14 + 1);
    }

    *a5 = v18 + (((v19 + 12) & 0xFFF8) - v19 - 5);
  }

  else if (!*(a2 + 32))
  {
    v17 = 0x10000000FLL;
    v21 = 0;
    v22 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  v21 = 0;
  v22 = 0;
LABEL_15:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v17, a4, &v21, "", 0, a1);
  v20 = v22;
  if (v22)
  {
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

void sub_297AFB568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::apn::Set_Ia_Cnf *mipc::apn::Set_Ia_Cnf::Set_Ia_Cnf(mipc::apn::Set_Ia_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 258, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6AFB0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 80) = 1;
  mipc::apn::Set_Ia_Cnf::deserialize(this, v7);
  v5 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v8 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(v7[1]);
  return this;
}

void sub_297AFB6C0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      mipc::ResponseMessage::~ResponseMessage(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 12) = v5;
  operator delete(v5);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::apn::Set_Ia_Cnf::deserialize(mipc::apn::Set_Ia_Cnf *this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v12);
  v4 = v12;
  *a2 = v12;
  v5 = v15;
  *(a2 + 1) = *__p;
  a2[3] = v14;
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<mipc::mipc_apn_ia_struct4,3ul,false>(&v12, this, this + 11);
  *a2 = v12;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v14;
  HIBYTE(v14) = 0;
  LOBYTE(__p[0]) = 0;
  v6 = v15;
  v15 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v15 + 1);
  if (!*(&v15 + 1) || atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(__p[0]);
    if (v7)
    {
      return;
    }

    goto LABEL_15;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v7)
  {
    return;
  }

LABEL_15:
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 14, 0x103u, &v12);
  *a2 = v12;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v14;
  HIBYTE(v14) = 0;
  LOBYTE(__p[0]) = 0;
  v9 = v15;
  v15 = 0uLL;
  v10 = a2[5];
  *(a2 + 2) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(&v15 + 1);
  if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t mipc::apn::Set_Ia_Cnf::Set_Ia_Cnf(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 258, &v14, a3, 2);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6B9B8;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E6AFB0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AFBC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::Set_Ia_Cnf::~Set_Ia_Cnf(mipc::apn::Set_Ia_Cnf *this)
{
  *this = &unk_2A1E6AFB0;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *this = &unk_2A1E85968;
  v4 = *(this + 9);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 63) < 0)
  {
LABEL_8:
    operator delete(*(this + 5));
  }

LABEL_9:
  v5 = *(this + 3);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

{
  *this = &unk_2A1E6AFB0;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *this = &unk_2A1E85968;
  v4 = *(this + 9);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 63) < 0)
  {
LABEL_8:
    operator delete(*(this + 5));
  }

LABEL_9:
  v5 = *(this + 3);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

{
  *this = &unk_2A1E6AFB0;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *this = &unk_2A1E85968;
  v4 = *(this + 9);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(this + 63) < 0)
  {
LABEL_8:
    operator delete(*(this + 5));
  }

LABEL_9:
  v5 = *(this + 3);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = this;
  }

  else
  {
    v6 = this;
  }

  operator delete(v6);
}

void mipc::Message::deserializeTlv<mipc::mipc_apn_ia_struct4,3ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v6;
  v43 = v6;
  *v41 = v6;
  *&v41[16] = v6;
  mipc::Message::findTLV(this, 0x102u, v41);
  *&v40[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v40 = v7;
  *__p = v7;
  v38 = *v41;
  if ((v41[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v41[8], *&v41[16]);
  }

  else
  {
    *__p = *&v41[8];
    *v40 = *&v41[24];
  }

  *&v40[8] = v42;
  if (*(&v42 + 1))
  {
    atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v38)
  {
    if (v38 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v38, a1);
      goto LABEL_50;
    }

    v8 = 0;
    a3[1] = *a3;
  }

  else
  {
    v9 = v43;
    v10 = *(&v43 + 1);
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v35 = a1;
      v11 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v12 = a3[1];
        v14 = v12 - *a3;
        if (v14 == 1104)
        {
          v8 = 0x100000010;
          goto LABEL_44;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v35;
          v8 = 0x100000005;
          goto LABEL_45;
        }

        v16 = v10 + 2;
        if (v15 <= 2)
        {
          v16 = v11;
        }

        v17 = v11 - v16 <= 2;
        v20 = *v16;
        v18 = (v16 + 2);
        v19 = v20;
        v21 = v17 ? v11 : v18;
        v22 = a3[2];
        if (v12 >= v22)
        {
          v24 = 0xD37A6F4DE9BD37A7 * (v14 >> 4) + 1;
          if (v24 > 0xB21642C8590B21)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xD37A6F4DE9BD37A7 * ((v22 - v13) >> 4);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          v26 = v25 >= 0x590B21642C8590 ? 0xB21642C8590B21 : v24;
          if (v26)
          {
            if (v26 > 0xB21642C8590B21)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(368 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[16 * (v14 >> 4)];
          *(v28 + 21) = 0u;
          *(v28 + 22) = 0u;
          *(v28 + 19) = 0u;
          *(v28 + 20) = 0u;
          v29 = &v27[368 * v26];
          *(v28 + 17) = 0u;
          *(v28 + 18) = 0u;
          *(v28 + 15) = 0u;
          *(v28 + 16) = 0u;
          *(v28 + 13) = 0u;
          *(v28 + 14) = 0u;
          *(v28 + 11) = 0u;
          *(v28 + 12) = 0u;
          *(v28 + 9) = 0u;
          *(v28 + 10) = 0u;
          *(v28 + 7) = 0u;
          *(v28 + 8) = 0u;
          *(v28 + 5) = 0u;
          *(v28 + 6) = 0u;
          *(v28 + 3) = 0u;
          *(v28 + 4) = 0u;
          *(v28 + 1) = 0u;
          *(v28 + 2) = 0u;
          v23 = v28 + 368;
          *v28 = 0u;
          v30 = &v28[-v14];
          memcpy(&v28[-v14], v13, v14);
          *a3 = v30;
          a3[1] = v23;
          a3[2] = v29;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          v12[21] = 0u;
          v12[22] = 0u;
          v12[19] = 0u;
          v12[20] = 0u;
          v12[17] = 0u;
          v12[18] = 0u;
          v12[15] = 0u;
          v12[16] = 0u;
          v12[13] = 0u;
          v12[14] = 0u;
          v12[11] = 0u;
          v12[12] = 0u;
          v12[9] = 0u;
          v12[10] = 0u;
          v12[7] = 0u;
          v12[8] = 0u;
          v12[5] = 0u;
          v12[6] = 0u;
          v12[3] = 0u;
          v12[4] = 0u;
          v12[1] = 0u;
          v12[2] = 0u;
          *v12 = 0u;
          v23 = v12 + 23;
        }

        a3[1] = v23;
        if (v19 > 0x170)
        {
          break;
        }

        if (v19 != 368)
        {
          v8 = 0x100000011;
          goto LABEL_44;
        }

        memcpy(v23 - 23, v21, 0x170uLL);
        v10 = v21 + 372;
        if (v11 - v21 <= 372)
        {
          v10 = v11;
        }

        if ((v11 - v10) <= 7)
        {
          v8 = 0;
          goto LABEL_44;
        }
      }

      v8 = 0x100000012;
LABEL_44:
      a1 = v35;
    }
  }

LABEL_45:
  v31 = this[3];
  v36 = this[2];
  v37 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x102u, &v36, "", 0, a1);
  v32 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

LABEL_50:
  v33 = *&v40[16];
  if (*&v40[16] && !atomic_fetch_add((*&v40[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    if ((v40[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v40[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v34 = *(&v42 + 1);
  if (!*(&v42 + 1) || atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v41[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

  (v34->__on_zero_shared)(v34);
  std::__shared_weak_count::__release_weak(v34);
  if ((v41[31] & 0x80000000) != 0)
  {
LABEL_57:
    operator delete(*&v41[8]);
  }
}

void sub_297AFC490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  mipc::Error::~Error(va);
  mipc::Error::~Error(va1);
  _Unwind_Resume(a1);
}

unint64_t mipc::apn::Set_Ia_Cnf::getSize(mipc::apn::Set_Ia_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 376 * ((v2 - v1 - 368) / 0x170uLL) + 392;
  }

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v3 + v4 + 8 * (*(this + 14) != 0);
}

double mipc::apn::Get_Ia_Req::Get_Ia_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 259;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6AFF8;
  return result;
}

{
  *(a1 + 8) = 259;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6AFF8;
  return result;
}

void mipc::apn::Get_Ia_Req::~Get_Ia_Req(mipc::apn::Get_Ia_Req *this)
{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

void mipc::apn::Get_Ia_Req::serialize(mipc::apn::Get_Ia_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *(&v18 + 1) = v4 + 2;
  v19 = v4 + 2;
  *v4 = 0;
  v4[1] = 0;
  v17 = v4;
  *&v18 = v4;
  v16 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v11, this, &v17);
  v5 = v14;
  *&__p[1] = *v12;
  __p[3] = v13;
  __p[0] = v11;
  v16 = v14;
  if (v11)
  {
    *a2 = v11;
    *(a2 + 8) = *&__p[1];
    v6 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
LABEL_13:
    *(a2 + 48) = 1;
    goto LABEL_14;
  }

  (*(*this + 32))(&v11, this, &v18);
  __p[0] = v11;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v12;
  __p[3] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12[0]) = 0;
  v7 = v14;
  v14 = 0uLL;
  v16 = v7;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v8 = *(&v14 + 1);
  v9 = __p[0];
  if (!*(&v14 + 1) || atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    operator delete(v12[0]);
    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (v9)
  {
LABEL_12:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v16;
    goto LABEL_13;
  }

LABEL_21:
  *a2 = v18;
  *(a2 + 16) = v19;
  v19 = 0;
  v18 = 0uLL;
  *(a2 + 48) = 0;
  v10 = *(&v16 + 1);
  if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_14:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v18)
  {
    *(&v18 + 1) = v18;
    operator delete(v18);
  }
}

void sub_297AFCBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::Error::~Error(va);
  v9 = *(v7 - 80);
  if (v9)
  {
    *(v7 - 72) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

mipc::apn::Get_Ia_Cnf *mipc::apn::Get_Ia_Cnf::Get_Ia_Cnf(mipc::apn::Get_Ia_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 260, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6B040;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::apn::Get_Ia_Cnf::deserialize(this, &v7);
  v5 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v9 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(__p);
  return this;
}

void sub_297AFCD28(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 12) = v5;
    operator delete(v5);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::apn::Get_Ia_Cnf::deserialize(std::__shared_weak_count **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  ((*this)[1].__shared_weak_owners_)(&v8);
  v4 = v8;
  *a2 = v8;
  v5 = v11;
  *(a2 + 8) = *__p;
  *(a2 + 24) = v10;
  *(a2 + 32) = v5;
  if (!v4)
  {
    mipc::Message::deserializeTlv<mipc::mipc_apn_ia_struct4,3ul,false>(&v8, this, this + 11);
    *a2 = v8;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = *__p;
    *(a2 + 24) = v10;
    HIBYTE(v10) = 0;
    LOBYTE(__p[0]) = 0;
    v6 = v11;
    v11 = 0uLL;
    *(a2 + 32) = v6;
    if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v5 + 1) + 16))(*(&v5 + 1));
      std::__shared_weak_count::__release_weak(*(&v5 + 1));
    }

    v7 = *(&v11 + 1);
    if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return;
    }

    operator delete(__p[0]);
  }
}

uint64_t mipc::apn::Get_Ia_Cnf::Get_Ia_Cnf(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 260, &v14, a3, 2);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6BA00;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E6B040;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AFD130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::Get_Ia_Cnf::~Get_Ia_Cnf(mipc::apn::Get_Ia_Cnf *this)
{
  *this = &unk_2A1E6B040;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B040;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B040;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  operator delete(v5);
}

unint64_t mipc::apn::Get_Ia_Cnf::getSize(mipc::apn::Get_Ia_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 376 * ((v2 - v1 - 368) / 0x170uLL) + 392;
  }

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v3 + v4;
}

double mipc::apn::Add_Profile_Req::Add_Profile_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 261;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E6B088;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 261;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E6B088;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 80) = 1;
  return result;
}

void mipc::apn::Add_Profile_Req::~Add_Profile_Req(mipc::apn::Add_Profile_Req *this)
{
  *this = &unk_2A1E6B088;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 15);
  *(this + 15) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 13);
  *(this + 13) = 0;
  if (v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    operator delete(v11);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    operator delete(v12);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  *this = &unk_2A1E85968;
  v14 = *(this + 9);
  if (!v14 || atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (*(this + 63) < 0)
  {
LABEL_36:
    operator delete(*(this + 5));
  }

LABEL_37:
  v15 = *(this + 3);
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }
}

{
  mipc::apn::Add_Profile_Req::~Add_Profile_Req(this);

  operator delete(v1);
}

void mipc::apn::Add_Profile_Req::serialize(char **this@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, int64x2_t a6@<Q3>)
{
  Size = mipc::apn::Add_Profile_Req::getSize(this, a3, a4, a5, a6);
  *&v53 = operator new(Size);
  v54 = v53 + Size;
  bzero(v53, Size);
  *(&v53 + 1) = v53 + Size;
  v52 = v53;
  v51 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 3))(&v46, this, &v52);
  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v9 = v49;
  v49 = 0uLL;
  v10 = *(&v51 + 1);
  v51 = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(&v49 + 1);
  v12 = __p[0];
  if (!*(&v49 + 1) || atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v47);
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_13;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_13:
  if (this[11])
  {
    *v52 = 257;
    v13 = v52++;
    v13[1] = 4;
    v14 = v52++;
    *(v14 + 1) = *this[11];
    v52 += 2;
  }

  else if (!this[4])
  {
    v15 = 0x10000000FLL;
    goto LABEL_17;
  }

  v15 = 0;
LABEL_17:
  v55 = 0;
  v56 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v15, 0x101u, &v55, "", 0, &v46);
  v16 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    __p[0] = v46;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_20:
    operator delete(__p[1]);
  }

LABEL_21:
  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v17 = v49;
  v49 = 0uLL;
  v18 = *(&v51 + 1);
  v51 = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(&v49 + 1);
  v20 = __p[0];
  if (!*(&v49 + 1) || atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    operator delete(v47);
    if (v20)
    {
      goto LABEL_87;
    }

    goto LABEL_33;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  if (v20)
  {
    goto LABEL_87;
  }

LABEL_33:
  mipc::Message::serializeTlv<mipc::mipc_string_t<7ul,false>,false>(this, this + 12, 0x102u, &v52, &v46);
  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v21 = v49;
  v49 = 0uLL;
  v22 = *(&v51 + 1);
  v51 = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(&v49 + 1);
  v24 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
    if (!v24)
    {
      goto LABEL_46;
    }

LABEL_87:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v51;
    v51 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_88;
  }

  if (v24)
  {
    goto LABEL_87;
  }

LABEL_46:
  mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, this + 13, 0x103u, &v52, &v46);
  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v25 = v49;
  v49 = 0uLL;
  v26 = *(&v51 + 1);
  v51 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v49 + 1);
  v28 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (v28)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, this + 14, 260, &v52, &v46);
  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v29 = v49;
  v49 = 0uLL;
  v30 = *(&v51 + 1);
  v51 = v29;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *(&v49 + 1);
  v32 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (v32)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 15, 261, &v52, &v46);
  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v33 = v49;
  v49 = 0uLL;
  v34 = *(&v51 + 1);
  v51 = v33;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *(&v49 + 1);
  v36 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (v36)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 16, 262, &v52, &v46);
  v37 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v37)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 17, 263, &v52, &v46);
  v38 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v38)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,true>(&v46, this, this + 18, 0x108u, &v52);
  v39 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v39)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,true>(&v46, this, this + 19, 0x109u, &v52);
  v40 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v40)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned int,false>(this, this + 20, 266, &v52, &v46);
  v41 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v41)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 21, 267, &v52, &v46);
  v42 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v42)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 22, 268, &v52, &v46);
  v43 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v43)
  {
    goto LABEL_87;
  }

  (*(*this + 4))(&v46, this, &v53);
  v44 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v44)
  {
    goto LABEL_87;
  }

  *a2 = v53;
  *(a2 + 16) = v54;
  v54 = 0;
  v53 = 0uLL;
  *(a2 + 48) = 0;
  v45 = *(&v51 + 1);
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

LABEL_88:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v53)
  {
    *(&v53 + 1) = v53;
    operator delete(v53);
  }
}

void sub_297AFE264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::Error::~Error(va);
  v9 = *(v7 - 96);
  if (v9)
  {
    *(v7 - 88) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::apn::Add_Profile_Req::getSize(mipc::apn::Add_Profile_Req *this, double a2, double a3, double a4, int64x2_t a5)
{
  v5 = *(this + 12);
  if (v5)
  {
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    if ((v7 - 65531) >= 0xFFFFFFFFFFFF0000)
    {
      v5 = (v7 + 12) & 0xFFF8;
      v8 = *(this + 13);
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    v5 = 0;
  }

  v8 = *(this + 13);
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *(v8 + 23);
  v10 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  v11 = __CFADD__(v10 - 65531, 0x10000);
  v8 = (v10 + 12) & 0xFFF8;
  if (!v11)
  {
    v8 = 0;
  }

LABEL_11:
  v12 = *(this + 18);
  if (v12)
  {
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v11 = __CFADD__(v14 - 65531, 0x10000);
    v12 = (v14 + 12) & 0xFFF8;
    if (!v11)
    {
      v12 = 0;
    }
  }

  v15 = *(this + 19);
  if (v15)
  {
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v11 = __CFADD__(v17 - 65531, 0x10000);
    v15 = (v17 + 12) & 0xFFF8;
    if (!v11)
    {
      v15 = 0;
    }
  }

  a5.i64[0] = *(this + 11);
  v18 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(vzip1q_s64(a5, *(this + 7))), xmmword_297DCA390, xmmword_297DCA380), vaddq_s64(vbicq_s8(v18, vceqzq_s64(vextq_s8(*(this + 7), *(this + 8), 8uLL))), vbicq_s8(v18, vceqzq_s64(*(this + 168))))), vbicq_s8(v18, vceqzq_s64(vzip1q_s64(vdupq_laneq_s64(*(this + 8), 1), *(this + 10)))))) + v15 + v12 + v8 + v5;
}

mipc::apn::Add_Profile_Cnf *mipc::apn::Add_Profile_Cnf::Add_Profile_Cnf(mipc::apn::Add_Profile_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 262, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6B0D0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::apn::Add_Profile_Cnf::deserialize(this, &v7);
  v5 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v9 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(__p);
  return this;
}

void sub_297AFE560(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 12) = v5;
    operator delete(v5);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::apn::Add_Profile_Cnf::deserialize(mipc::apn::Add_Profile_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v8);
  v4 = v8;
  *a2 = v8;
  v5 = v11;
  *(a2 + 8) = *__p;
  *(a2 + 24) = v10;
  *(a2 + 32) = v5;
  if (!v4)
  {
    mipc::Message::deserializeTlv<mipc::mipc_apn_profile_struct4,20ul,false>(&v8, this, this + 11);
    *a2 = v8;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = *__p;
    *(a2 + 24) = v10;
    HIBYTE(v10) = 0;
    LOBYTE(__p[0]) = 0;
    v6 = v11;
    v11 = 0uLL;
    *(a2 + 32) = v6;
    if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v5 + 1) + 16))(*(&v5 + 1));
      std::__shared_weak_count::__release_weak(*(&v5 + 1));
    }

    v7 = *(&v11 + 1);
    if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return;
    }

    operator delete(__p[0]);
  }
}

uint64_t mipc::apn::Add_Profile_Cnf::Add_Profile_Cnf(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 262, &v14, a3, 2);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6BA48;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E6B0D0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AFE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::Add_Profile_Cnf::~Add_Profile_Cnf(mipc::apn::Add_Profile_Cnf *this)
{
  *this = &unk_2A1E6B0D0;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B0D0;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B0D0;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  operator delete(v5);
}

void mipc::Message::deserializeTlv<mipc::mipc_apn_profile_struct4,20ul,false>(void *a1, std::__shared_weak_count **this, char **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v6;
  v43 = v6;
  *v41 = v6;
  *&v41[16] = v6;
  mipc::Message::findTLV(this, 0x102u, v41);
  *&v40[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v40 = v7;
  *__p = v7;
  v38 = *v41;
  if ((v41[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v41[8], *&v41[16]);
  }

  else
  {
    *__p = *&v41[8];
    *v40 = *&v41[24];
  }

  *&v40[8] = v42;
  if (*(&v42 + 1))
  {
    atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v38)
  {
    if (v38 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v38, a1);
      goto LABEL_50;
    }

    v8 = 0;
    a3[1] = *a3;
  }

  else
  {
    v9 = v43;
    v10 = *(&v43 + 1);
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v35 = a1;
      v11 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v12 = a3[1];
        v14 = v12 - *a3;
        if (v14 == 7760)
        {
          v8 = 0x100000010;
          goto LABEL_44;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v35;
          v8 = 0x100000005;
          goto LABEL_45;
        }

        v16 = v10 + 2;
        if (v15 <= 2)
        {
          v16 = v11;
        }

        v17 = v11 - v16 <= 2;
        v20 = *v16;
        v18 = (v16 + 2);
        v19 = v20;
        v21 = v17 ? v11 : v18;
        v22 = a3[2];
        if (v12 >= v22)
        {
          v24 = 0xA3A0FD5C5F02A3A1 * (v14 >> 2) + 1;
          if (v24 > 0xA8E83F5717C0A8)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xA3A0FD5C5F02A3A1 * ((v22 - v13) >> 2);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          v26 = v25 >= 0x54741FAB8BE054 ? 0xA8E83F5717C0A8 : v24;
          if (v26)
          {
            if (v26 > 0xA8E83F5717C0A8)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(388 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[4 * (v14 >> 2)];
          *(v28 + 96) = 0;
          *(v28 + 22) = 0u;
          *(v28 + 23) = 0u;
          v29 = &v27[388 * v26];
          *(v28 + 20) = 0u;
          *(v28 + 21) = 0u;
          *(v28 + 18) = 0u;
          *(v28 + 19) = 0u;
          *(v28 + 16) = 0u;
          *(v28 + 17) = 0u;
          *(v28 + 14) = 0u;
          *(v28 + 15) = 0u;
          *(v28 + 12) = 0u;
          *(v28 + 13) = 0u;
          *(v28 + 10) = 0u;
          *(v28 + 11) = 0u;
          *(v28 + 8) = 0u;
          *(v28 + 9) = 0u;
          *(v28 + 6) = 0u;
          *(v28 + 7) = 0u;
          *(v28 + 4) = 0u;
          *(v28 + 5) = 0u;
          *(v28 + 2) = 0u;
          *(v28 + 3) = 0u;
          v23 = v28 + 388;
          *v28 = 0u;
          *(v28 + 1) = 0u;
          v30 = &v28[-v14];
          memcpy(&v28[-v14], v13, v14);
          *a3 = v30;
          a3[1] = v23;
          a3[2] = v29;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *(v12 + 384) = 0;
          *(v12 + 352) = 0u;
          *(v12 + 368) = 0u;
          *(v12 + 320) = 0u;
          *(v12 + 336) = 0u;
          *(v12 + 288) = 0u;
          *(v12 + 304) = 0u;
          *(v12 + 256) = 0u;
          *(v12 + 272) = 0u;
          *(v12 + 224) = 0u;
          *(v12 + 240) = 0u;
          *(v12 + 192) = 0u;
          *(v12 + 208) = 0u;
          *(v12 + 160) = 0u;
          *(v12 + 176) = 0u;
          *(v12 + 128) = 0u;
          *(v12 + 144) = 0u;
          *(v12 + 96) = 0u;
          *(v12 + 112) = 0u;
          *(v12 + 64) = 0u;
          *(v12 + 80) = 0u;
          *(v12 + 32) = 0u;
          *(v12 + 48) = 0u;
          *v12 = 0u;
          *(v12 + 16) = 0u;
          v23 = (v12 + 388);
        }

        a3[1] = v23;
        if (v19 > 0x184)
        {
          break;
        }

        if (v19 != 388)
        {
          v8 = 0x100000011;
          goto LABEL_44;
        }

        memcpy(v23 - 388, v21, 0x184uLL);
        v10 = v21 + 388;
        if (v11 - v21 <= 388)
        {
          v10 = v11;
        }

        if ((v11 - v10) <= 7)
        {
          v8 = 0;
          goto LABEL_44;
        }
      }

      v8 = 0x100000012;
LABEL_44:
      a1 = v35;
    }
  }

LABEL_45:
  v31 = this[3];
  v36 = this[2];
  v37 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x102u, &v36, "", 0, a1);
  v32 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

LABEL_50:
  v33 = *&v40[16];
  if (*&v40[16] && !atomic_fetch_add((*&v40[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    if ((v40[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v40[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v34 = *(&v42 + 1);
  if (!*(&v42 + 1) || atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v41[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

  (v34->__on_zero_shared)(v34);
  std::__shared_weak_count::__release_weak(v34);
  if ((v41[31] & 0x80000000) != 0)
  {
LABEL_57:
    operator delete(*&v41[8]);
  }
}

void sub_297AFF1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  mipc::Error::~Error(va);
  mipc::Error::~Error(va1);
  _Unwind_Resume(a1);
}

unint64_t mipc::apn::Add_Profile_Cnf::getSize(mipc::apn::Add_Profile_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 392 * ((v2 - v1 - 388) / 0x184uLL) + 408;
  }

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v3 + v4;
}

double mipc::apn::List_Profile_Req::List_Profile_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 263;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B118;
  return result;
}

{
  *(a1 + 8) = 263;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B118;
  return result;
}

void mipc::apn::List_Profile_Req::~List_Profile_Req(mipc::apn::List_Profile_Req *this)
{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

void mipc::apn::List_Profile_Req::serialize(mipc::apn::List_Profile_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *(&v18 + 1) = v4 + 2;
  v19 = v4 + 2;
  *v4 = 0;
  v4[1] = 0;
  v17 = v4;
  *&v18 = v4;
  v16 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v11, this, &v17);
  v5 = v14;
  *&__p[1] = *v12;
  __p[3] = v13;
  __p[0] = v11;
  v16 = v14;
  if (v11)
  {
    *a2 = v11;
    *(a2 + 8) = *&__p[1];
    v6 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
LABEL_13:
    *(a2 + 48) = 1;
    goto LABEL_14;
  }

  (*(*this + 32))(&v11, this, &v18);
  __p[0] = v11;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v12;
  __p[3] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12[0]) = 0;
  v7 = v14;
  v14 = 0uLL;
  v16 = v7;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v8 = *(&v14 + 1);
  v9 = __p[0];
  if (!*(&v14 + 1) || atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    operator delete(v12[0]);
    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (v9)
  {
LABEL_12:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v16;
    goto LABEL_13;
  }

LABEL_21:
  *a2 = v18;
  *(a2 + 16) = v19;
  v19 = 0;
  v18 = 0uLL;
  *(a2 + 48) = 0;
  v10 = *(&v16 + 1);
  if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_14:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v18)
  {
    *(&v18 + 1) = v18;
    operator delete(v18);
  }
}

void sub_297AFF8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::Error::~Error(va);
  v9 = *(v7 - 80);
  if (v9)
  {
    *(v7 - 72) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

mipc::apn::List_Profile_Cnf *mipc::apn::List_Profile_Cnf::List_Profile_Cnf(mipc::apn::List_Profile_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 264, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6B160;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::apn::List_Profile_Cnf::deserialize(this, &v7);
  v5 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v9 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(__p);
  return this;
}

void sub_297AFFA5C(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 12) = v5;
    operator delete(v5);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::apn::List_Profile_Cnf::deserialize(mipc::apn::List_Profile_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v8);
  v4 = v8;
  *a2 = v8;
  v5 = v11;
  *(a2 + 8) = *__p;
  *(a2 + 24) = v10;
  *(a2 + 32) = v5;
  if (!v4)
  {
    mipc::Message::deserializeTlv<mipc::mipc_apn_profile_struct4,20ul,false>(&v8, this, this + 11);
    *a2 = v8;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = *__p;
    *(a2 + 24) = v10;
    HIBYTE(v10) = 0;
    LOBYTE(__p[0]) = 0;
    v6 = v11;
    v11 = 0uLL;
    *(a2 + 32) = v6;
    if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v5 + 1) + 16))(*(&v5 + 1));
      std::__shared_weak_count::__release_weak(*(&v5 + 1));
    }

    v7 = *(&v11 + 1);
    if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return;
    }

    operator delete(__p[0]);
  }
}

uint64_t mipc::apn::List_Profile_Cnf::List_Profile_Cnf(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 264, &v14, a3, 2);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6BA90;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E6B160;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AFFE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::List_Profile_Cnf::~List_Profile_Cnf(mipc::apn::List_Profile_Cnf *this)
{
  *this = &unk_2A1E6B160;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B160;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B160;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  operator delete(v5);
}

unint64_t mipc::apn::List_Profile_Cnf::getSize(mipc::apn::List_Profile_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 392 * ((v2 - v1 - 388) / 0x184uLL) + 408;
  }

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v3 + v4;
}

double mipc::apn::Del_Profile_Req::Del_Profile_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 265;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B1A8;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 265;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B1A8;
  *(a1 + 88) = 0;
  return result;
}

void mipc::apn::Del_Profile_Req::~Del_Profile_Req(mipc::apn::Del_Profile_Req *this)
{
  *this = &unk_2A1E6B1A8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B1A8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B1A8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  operator delete(v5);
}

void mipc::apn::Del_Profile_Req::serialize(mipc::apn::Del_Profile_Req *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 11))
  {
    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  *&v26 = operator new(v4);
  v27 = v26 + v4;
  bzero(v26, v4);
  *(&v26 + 1) = v26 + v4;
  v25 = v26;
  v24 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v19, this, &v25);
  v5 = v22;
  *&__p[1] = *v20;
  __p[3] = v21;
  __p[0] = v19;
  v24 = v22;
  if (v19)
  {
    *a2 = v19;
    *(a2 + 8) = *&__p[1];
    v6 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
LABEL_37:
    *(a2 + 48) = 1;
    goto LABEL_38;
  }

  if (*(this + 11))
  {
    *v25 = 257;
    v7 = v25++;
    v7[1] = 4;
    v8 = v25++;
    *(v8 + 1) = **(this + 11);
    v25 += 2;
  }

  else if (!*(this + 4))
  {
    v9 = 0x10000000FLL;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:
  v28 = 0;
  v29 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v9, 0x101u, &v28, "", 0, &v19);
  v10 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    __p[0] = v19;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __p[0] = v19;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_13:
    operator delete(__p[1]);
  }

LABEL_14:
  *&__p[1] = *v20;
  __p[3] = v21;
  HIBYTE(v21) = 0;
  LOBYTE(v20[0]) = 0;
  v11 = v22;
  v22 = 0uLL;
  v24 = v11;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v12 = *(&v22 + 1);
  v13 = __p[0];
  if (!*(&v22 + 1) || atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    operator delete(v20[0]);
    if (!v13)
    {
      goto LABEL_26;
    }

LABEL_36:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v24;
    goto LABEL_37;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v13)
  {
    goto LABEL_36;
  }

LABEL_26:
  (*(*this + 32))(&v19, this, &v26);
  __p[0] = v19;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v20;
  __p[3] = v21;
  HIBYTE(v21) = 0;
  LOBYTE(v20[0]) = 0;
  v14 = v22;
  v22 = 0uLL;
  v15 = *(&v24 + 1);
  v24 = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(&v22 + 1);
  v17 = __p[0];
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
    if (v17)
    {
      goto LABEL_36;
    }
  }

  else if (v17)
  {
    goto LABEL_36;
  }

  *a2 = v26;
  *(a2 + 16) = v27;
  v27 = 0;
  v26 = 0uLL;
  *(a2 + 48) = 0;
  v18 = *(&v24 + 1);
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_38:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v26)
  {
    *(&v26 + 1) = v26;
    operator delete(v26);
  }
}

void sub_297B00B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::Error::~Error(va);
  v9 = *(v7 - 96);
  if (v9)
  {
    *(v7 - 88) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::apn::Del_Profile_Req::getSize(mipc::apn::Del_Profile_Req *this)
{
  if (*(this + 11))
  {
    return 24;
  }

  else
  {
    return 16;
  }
}

mipc::apn::Del_Profile_Cnf *mipc::apn::Del_Profile_Cnf::Del_Profile_Cnf(mipc::apn::Del_Profile_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 266, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6B1F0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::apn::Del_Profile_Cnf::deserialize(this, &v7);
  v5 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v9 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(__p);
  return this;
}

void sub_297B00CFC(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 12) = v5;
    operator delete(v5);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::apn::Del_Profile_Cnf::deserialize(mipc::apn::Del_Profile_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v8);
  v4 = v8;
  *a2 = v8;
  v5 = v11;
  *(a2 + 8) = *__p;
  *(a2 + 24) = v10;
  *(a2 + 32) = v5;
  if (!v4)
  {
    mipc::Message::deserializeTlv<mipc::mipc_apn_profile_struct4,20ul,false>(&v8, this, this + 11);
    *a2 = v8;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = *__p;
    *(a2 + 24) = v10;
    HIBYTE(v10) = 0;
    LOBYTE(__p[0]) = 0;
    v6 = v11;
    v11 = 0uLL;
    *(a2 + 32) = v6;
    if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v5 + 1) + 16))(*(&v5 + 1));
      std::__shared_weak_count::__release_weak(*(&v5 + 1));
    }

    v7 = *(&v11 + 1);
    if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return;
    }

    operator delete(__p[0]);
  }
}

uint64_t mipc::apn::Del_Profile_Cnf::Del_Profile_Cnf(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 266, &v14, a3, 2);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6BAD8;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E6B1F0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297B01104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::Del_Profile_Cnf::~Del_Profile_Cnf(mipc::apn::Del_Profile_Cnf *this)
{
  *this = &unk_2A1E6B1F0;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B1F0;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B1F0;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  operator delete(v5);
}

unint64_t mipc::apn::Del_Profile_Cnf::getSize(mipc::apn::Del_Profile_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 392 * ((v2 - v1 - 388) / 0x184uLL) + 408;
  }

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v3 + v4;
}

double mipc::apn::Set_Profile_Status_Req::Set_Profile_Status_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 267;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B238;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 267;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B238;
  *(a1 + 88) = 0;
  return result;
}

void mipc::apn::Set_Profile_Status_Req::~Set_Profile_Status_Req(mipc::apn::Set_Profile_Status_Req *this)
{
  *this = &unk_2A1E6B238;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B238;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B238;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  operator delete(v5);
}

void mipc::apn::Set_Profile_Status_Req::serialize(mipc::apn::Set_Profile_Status_Req *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 11))
  {
    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  *&v26 = operator new(v4);
  v27 = v26 + v4;
  bzero(v26, v4);
  *(&v26 + 1) = v26 + v4;
  v25 = v26;
  v24 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v19, this, &v25);
  v5 = v22;
  *&__p[1] = *v20;
  __p[3] = v21;
  __p[0] = v19;
  v24 = v22;
  if (v19)
  {
    *a2 = v19;
    *(a2 + 8) = *&__p[1];
    v6 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
LABEL_37:
    *(a2 + 48) = 1;
    goto LABEL_38;
  }

  if (*(this + 11))
  {
    *v25 = 257;
    v7 = v25++;
    v7[1] = 1;
    v8 = v25++;
    *(v8 + 2) = **(this + 11);
    v25 += 2;
  }

  else if (!*(this + 4))
  {
    v9 = 0x10000000FLL;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:
  v28 = 0;
  v29 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v9, 0x101u, &v28, "", 0, &v19);
  v10 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    __p[0] = v19;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __p[0] = v19;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_13:
    operator delete(__p[1]);
  }

LABEL_14:
  *&__p[1] = *v20;
  __p[3] = v21;
  HIBYTE(v21) = 0;
  LOBYTE(v20[0]) = 0;
  v11 = v22;
  v22 = 0uLL;
  v24 = v11;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v12 = *(&v22 + 1);
  v13 = __p[0];
  if (!*(&v22 + 1) || atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    operator delete(v20[0]);
    if (!v13)
    {
      goto LABEL_26;
    }

LABEL_36:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v24;
    goto LABEL_37;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v13)
  {
    goto LABEL_36;
  }

LABEL_26:
  (*(*this + 32))(&v19, this, &v26);
  __p[0] = v19;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v20;
  __p[3] = v21;
  HIBYTE(v21) = 0;
  LOBYTE(v20[0]) = 0;
  v14 = v22;
  v22 = 0uLL;
  v15 = *(&v24 + 1);
  v24 = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(&v22 + 1);
  v17 = __p[0];
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
    if (v17)
    {
      goto LABEL_36;
    }
  }

  else if (v17)
  {
    goto LABEL_36;
  }

  *a2 = v26;
  *(a2 + 16) = v27;
  v27 = 0;
  v26 = 0uLL;
  *(a2 + 48) = 0;
  v18 = *(&v24 + 1);
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_38:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v26)
  {
    *(&v26 + 1) = v26;
    operator delete(v26);
  }
}

void sub_297B01E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::Error::~Error(va);
  v9 = *(v7 - 96);
  if (v9)
  {
    *(v7 - 88) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::apn::Set_Profile_Status_Req::getSize(mipc::apn::Set_Profile_Status_Req *this)
{
  if (*(this + 11))
  {
    return 24;
  }

  else
  {
    return 16;
  }
}

mipc::apn::Set_Profile_Status_Cnf *mipc::apn::Set_Profile_Status_Cnf::Set_Profile_Status_Cnf(mipc::apn::Set_Profile_Status_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 268, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E6B280;
  if (HIDWORD(v5))
  {
    if (*(this + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(this + 5), *(this + 6));
    }

    else
    {
      v11 = *(this + 40);
    }

    v7 = *(this + 9);
    *&v12 = *(this + 8);
    *(&v12 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v6 = *(&v12 + 1);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v12 = 0uLL;
    memset(&v11, 0, sizeof(v11));
  }

  __p_8 = v11.__r_.__value_.__r.__words[0];
  v10 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((v10 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(__p_8);
  return this;
}

void sub_297B02000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::apn::Set_Profile_Status_Cnf::deserialize@<D0>(mipc::apn::Set_Profile_Status_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v4);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  return result;
}

void *mipc::apn::Set_Profile_Status_Cnf::Set_Profile_Status_Cnf(void *a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 268, &v14, a3, 2);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6BB20;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E6B280;
  return a1;
}

void sub_297B022D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::Set_Profile_Status_Cnf::~Set_Profile_Status_Cnf(mipc::apn::Set_Profile_Status_Cnf *this)
{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

uint64_t mipc::apn::Set_Profile_Status_Cnf::getSize(mipc::apn::Set_Profile_Status_Cnf *this)
{
  if (*(this + 9))
  {
    return 32;
  }

  else
  {
    return 24;
  }
}

double mipc::apn::List_Md_Profile_Req::List_Md_Profile_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 269;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B2C8;
  return result;
}

{
  *(a1 + 8) = 269;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B2C8;
  return result;
}

void mipc::apn::List_Md_Profile_Req::~List_Md_Profile_Req(mipc::apn::List_Md_Profile_Req *this)
{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  *this = &unk_2A1E85968;
  v2 = *(this + 9);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(this + 63) < 0)
  {
LABEL_4:
    operator delete(*(this + 5));
  }

LABEL_5:
  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

void mipc::apn::List_Md_Profile_Req::serialize(mipc::apn::List_Md_Profile_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *(&v18 + 1) = v4 + 2;
  v19 = v4 + 2;
  *v4 = 0;
  v4[1] = 0;
  v17 = v4;
  *&v18 = v4;
  v16 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v11, this, &v17);
  v5 = v14;
  *&__p[1] = *v12;
  __p[3] = v13;
  __p[0] = v11;
  v16 = v14;
  if (v11)
  {
    *a2 = v11;
    *(a2 + 8) = *&__p[1];
    v6 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
LABEL_13:
    *(a2 + 48) = 1;
    goto LABEL_14;
  }

  (*(*this + 32))(&v11, this, &v18);
  __p[0] = v11;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v12;
  __p[3] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12[0]) = 0;
  v7 = v14;
  v14 = 0uLL;
  v16 = v7;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v8 = *(&v14 + 1);
  v9 = __p[0];
  if (!*(&v14 + 1) || atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    operator delete(v12[0]);
    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (v9)
  {
LABEL_12:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v16;
    goto LABEL_13;
  }

LABEL_21:
  *a2 = v18;
  *(a2 + 16) = v19;
  v19 = 0;
  v18 = 0uLL;
  *(a2 + 48) = 0;
  v10 = *(&v16 + 1);
  if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_14:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v18)
  {
    *(&v18 + 1) = v18;
    operator delete(v18);
  }
}

void sub_297B02C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mipc::Error::~Error(va);
  v9 = *(v7 - 80);
  if (v9)
  {
    *(v7 - 72) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

mipc::apn::List_Md_Profile_Cnf *mipc::apn::List_Md_Profile_Cnf::List_Md_Profile_Cnf(mipc::apn::List_Md_Profile_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 270, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6B310;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::apn::List_Md_Profile_Cnf::deserialize(this, &v7);
  v5 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v9 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(__p);
  return this;
}

void sub_297B02DE8(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 12) = v5;
    operator delete(v5);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::apn::List_Md_Profile_Cnf::deserialize(mipc::apn::List_Md_Profile_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(v48);
  v4 = *v48;
  *a2 = *v48;
  v6 = *(&v49 + 1);
  v5 = v49;
  *(a2 + 8) = *&v48[8];
  *(a2 + 24) = *&v48[24];
  *(a2 + 32) = __PAIR128__(v6, v5);
  if (v4)
  {
    return;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v7;
  v50 = v7;
  *v48 = v7;
  *&v48[16] = v7;
  mipc::Message::findTLV(this, 0x102u, v48);
  *&v47[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v47 = v8;
  *__p = v8;
  v45 = *v48;
  if ((v48[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v48[8], *&v48[16]);
  }

  else
  {
    *__p = *&v48[8];
    *v47 = *&v48[24];
  }

  *&v47[8] = v49;
  if (*(&v49 + 1))
  {
    atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (!v45)
  {
    v11 = v50;
    v12 = *(&v50 + 1);
    *(this + 12) = *(this + 11);
    if (v11 < 8)
    {
      v9 = 0;
      v10 = *(this + 3);
      v43 = *(this + 2);
      v44 = v10;
      if (!v10)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v38 = v6;
      v13 = &v12[v11];
      while (1)
      {
        v15 = *(this + 11);
        v14 = *(this + 12);
        v16 = v14 - v15;
        if (v14 - v15 == 11520)
        {
          v9 = 0x100000010;
          goto LABEL_73;
        }

        v17 = v13 - v12;
        if ((v13 - v12) < 4)
        {
          v9 = 0x100000005;
          goto LABEL_73;
        }

        v18 = v12 + 2;
        if (v17 <= 2)
        {
          v18 = v13;
        }

        v19 = v13 - v18 <= 2;
        v22 = *v18;
        v20 = (v18 + 2);
        v21 = v22;
        v23 = v19 ? v13 : v20;
        v24 = *(this + 13);
        if (v14 >= v24)
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 7) + 1;
          if (v26 > 0xAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v15) >> 7);
          if (2 * v27 > v26)
          {
            v26 = 2 * v27;
          }

          v28 = v27 >= 0x55555555555555 ? 0xAAAAAAAAAAAAAALL : v26;
          if (v28)
          {
            if (v28 > 0xAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(384 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[128 * (v16 >> 7)];
          *(v30 + 22) = 0u;
          *(v30 + 23) = 0u;
          *(v30 + 20) = 0u;
          *(v30 + 21) = 0u;
          v31 = &v29[384 * v28];
          *(v30 + 18) = 0u;
          *(v30 + 19) = 0u;
          *(v30 + 16) = 0u;
          *(v30 + 17) = 0u;
          *(v30 + 14) = 0u;
          *(v30 + 15) = 0u;
          *(v30 + 12) = 0u;
          *(v30 + 13) = 0u;
          *(v30 + 10) = 0u;
          *(v30 + 11) = 0u;
          *(v30 + 8) = 0u;
          *(v30 + 9) = 0u;
          *(v30 + 6) = 0u;
          *(v30 + 7) = 0u;
          *(v30 + 4) = 0u;
          *(v30 + 5) = 0u;
          *(v30 + 2) = 0u;
          *(v30 + 3) = 0u;
          v25 = v30 + 384;
          *v30 = 0u;
          *(v30 + 1) = 0u;
          v32 = &v30[-v16];
          memcpy(&v30[-v16], v15, v16);
          *(this + 11) = v32;
          *(this + 12) = v25;
          *(this + 13) = v31;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *(v14 + 22) = 0u;
          *(v14 + 23) = 0u;
          *(v14 + 20) = 0u;
          *(v14 + 21) = 0u;
          *(v14 + 18) = 0u;
          *(v14 + 19) = 0u;
          *(v14 + 16) = 0u;
          *(v14 + 17) = 0u;
          *(v14 + 14) = 0u;
          *(v14 + 15) = 0u;
          *(v14 + 12) = 0u;
          *(v14 + 13) = 0u;
          *(v14 + 10) = 0u;
          *(v14 + 11) = 0u;
          *(v14 + 8) = 0u;
          *(v14 + 9) = 0u;
          *(v14 + 6) = 0u;
          *(v14 + 7) = 0u;
          *(v14 + 4) = 0u;
          *(v14 + 5) = 0u;
          *(v14 + 2) = 0u;
          *(v14 + 3) = 0u;
          *v14 = 0u;
          *(v14 + 1) = 0u;
          v25 = v14 + 384;
        }

        *(this + 12) = v25;
        if (v21 > 0x180)
        {
          break;
        }

        if (v21 != 384)
        {
          v9 = 0x100000011;
          goto LABEL_73;
        }

        memcpy(v25 - 24, v23, 0x180uLL);
        v12 = v23 + 388;
        if (v13 - v23 <= 388)
        {
          v12 = v13;
        }

        if ((v13 - v12) <= 7)
        {
          v9 = 0;
          goto LABEL_73;
        }
      }

      v9 = 0x100000012;
LABEL_73:
      v6 = v38;
      v10 = *(this + 3);
      v43 = *(this + 2);
      v44 = v10;
      if (!v10)
      {
        goto LABEL_44;
      }
    }

LABEL_43:
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_44;
  }

  if (v45 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v45, &v39);
    goto LABEL_47;
  }

  v9 = 0;
  *(this + 12) = *(this + 11);
  v10 = *(this + 3);
  v43 = *(this + 2);
  v44 = v10;
  if (v10)
  {
    goto LABEL_43;
  }

LABEL_44:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v9, 0x102u, &v43, "", 0, &v39);
  v33 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_47:
  v34 = *&v47[16];
  if (*&v47[16] && !atomic_fetch_add((*&v47[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    if ((v47[7] & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if ((v47[7] & 0x80000000) != 0)
  {
LABEL_50:
    operator delete(__p[0]);
  }

LABEL_51:
  v35 = *(&v49 + 1);
  if (!*(&v49 + 1) || atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v48[31] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_66:
    operator delete(*&v48[8]);
    *a2 = v39;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_67;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if ((v48[31] & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_54:
  *a2 = v39;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

LABEL_67:
  operator delete(*(a2 + 8));
LABEL_55:
  *(a2 + 8) = v40;
  *(a2 + 24) = v41;
  HIBYTE(v41) = 0;
  LOBYTE(v40) = 0;
  v36 = v42;
  v42 = 0uLL;
  *(a2 + 32) = v36;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v37 = *(&v42 + 1);
  if (!*(&v42 + 1) || atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_61;
  }

  (v37->__on_zero_shared)(v37);
  std::__shared_weak_count::__release_weak(v37);
  if (SHIBYTE(v41) < 0)
  {
LABEL_61:
    operator delete(v40);
  }
}

void sub_297B033F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  mipc::Error::~Error(va);
  mipc::Error::~Error(va1);
  mipc::Error::~Error(v11);
  _Unwind_Resume(a1);
}

uint64_t mipc::apn::List_Md_Profile_Cnf::List_Md_Profile_Cnf(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v11 = *(a2 + 8);
    v6 = *(a2 + 40);
    v12 = *(a2 + 32);
    v13 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v11, *(a2 + 8), *(a2 + 16));
  v6 = *(a2 + 40);
  v12 = *(a2 + 32);
  v13 = v6;
  if (v6)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v14 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v16 = v12;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::ResponseMessage::ResponseMessage(a1, 270, &v14, a3, 2);
  v7 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  *a1 = &unk_2A1E6BB68;
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_19:
  *a1 = &unk_2A1E6B310;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297B03680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::List_Md_Profile_Cnf::~List_Md_Profile_Cnf(mipc::apn::List_Md_Profile_Cnf *this)
{
  *this = &unk_2A1E6B310;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B310;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

{
  *this = &unk_2A1E6B310;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(this + 63) < 0)
  {
LABEL_6:
    operator delete(*(this + 5));
  }

LABEL_7:
  v4 = *(this + 3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  operator delete(v5);
}

unint64_t mipc::apn::List_Md_Profile_Cnf::getSize(mipc::apn::List_Md_Profile_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 392 * ((v2 - v1 - 384) / 0x180uLL) + 408;
  }

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v3 + v4;
}

double mipc::apn::Set_Op12_Apn_Req::Set_Op12_Apn_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 271;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B358;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

{
  *(a1 + 8) = 271;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1E6B358;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

void mipc::apn::Set_Op12_Apn_Req::~Set_Op12_Apn_Req(mipc::apn::Set_Op12_Apn_Req *this)
{
  *this = &unk_2A1E6B358;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  *this = &unk_2A1E85968;
  v9 = *(this + 9);
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(this + 63) < 0)
  {
LABEL_22:
    operator delete(*(this + 5));
  }

LABEL_23:
  v10 = *(this + 3);
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

{
  mipc::apn::Set_Op12_Apn_Req::~Set_Op12_Apn_Req(this);

  operator delete(v1);
}

void mipc::apn::Set_Op12_Apn_Req::serialize(mipc::apn::Set_Op12_Apn_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 104);
  v4 = *(this + 13);
  if (v4)
  {
    v6 = *(v4 + 23);
    v7 = *(v4 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v8 = __CFADD__(v7 - 65531, 0x10000);
    v4 = (v7 + 12) & 0xFFF8;
    if (!v8)
    {
      v4 = 0;
    }
  }

  v9 = *(this + 15);
  if (v9)
  {
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v8 = __CFADD__(v11 - 65531, 0x10000);
    v9 = (v11 + 12) & 0xFFF8;
    if (!v8)
    {
      v9 = 0;
    }
  }

  v12.i64[1] = *(this + 14);
  v12.i64[0] = *(this + 11);
  v13 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(v12), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 8))))) + 8 * (*(this + 12) != 0) + v9 + v4;
  v57[0] = operator new(v13);
  v58 = v57[0] + v13;
  bzero(v57[0], v13);
  v57[1] = v57[0] + v13;
  v56 = v57[0];
  v55 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v50, this, &v56);
  __p[0] = v50;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v51;
  __p[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v14 = v53;
  v53 = 0uLL;
  v15 = *(&v55 + 1);
  v55 = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    v16 = *(&v53 + 1);
    v17 = __p[0];
    if (!*(&v53 + 1))
    {
LABEL_17:
      if ((SHIBYTE(v52) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      operator delete(v51);
      if (v17)
      {
        goto LABEL_101;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v16 = *(&v53 + 1);
    v17 = __p[0];
    if (!*(&v53 + 1))
    {
      goto LABEL_17;
    }
  }

  if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_17;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (SHIBYTE(v52) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v17)
  {
    goto LABEL_101;
  }

LABEL_24:
  if (*(this + 11))
  {
    *v56 = 256;
    v18 = v56++;
    v18[1] = 1;
    v19 = v56++;
    *(v19 + 2) = **(this + 11);
    v56 += 2;
  }

  else if (!*(this + 4))
  {
    v20 = 0x10000000FLL;
    goto LABEL_28;
  }

  v20 = 0;
LABEL_28:
  v59 = 0;
  v60 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v20, 0x100u, &v59, "", 0, &v50);
  v21 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    __p[0] = v50;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  __p[0] = v50;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_31:
    operator delete(__p[1]);
  }

LABEL_32:
  *&__p[1] = v51;
  __p[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v22 = v53;
  v53 = 0uLL;
  v23 = *(&v55 + 1);
  v55 = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v24 = *(&v53 + 1);
    v25 = __p[0];
    if (!*(&v53 + 1))
    {
LABEL_36:
      if ((SHIBYTE(v52) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      operator delete(v51);
      if (v25)
      {
        goto LABEL_101;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v24 = *(&v53 + 1);
    v25 = __p[0];
    if (!*(&v53 + 1))
    {
      goto LABEL_36;
    }
  }

  if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_36;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if (SHIBYTE(v52) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  if (v25)
  {
    goto LABEL_101;
  }

LABEL_45:
  if (*(this + 12))
  {
    *v56 = 257;
    v26 = v56++;
    v26[1] = 1;
    v27 = v56++;
    *(v27 + 2) = **(this + 12);
    v56 += 2;
  }

  else if (!*(this + 4))
  {
    v28 = 0x10000000FLL;
    goto LABEL_50;
  }

  v28 = 0;
LABEL_50:
  v59 = 0;
  v60 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v28, 0x101u, &v59, "", 0, &v50);
  v29 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  __p[0] = v50;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v51;
  __p[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v30 = v53;
  v53 = 0uLL;
  v31 = *(&v55 + 1);
  v55 = v30;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(&v53 + 1);
  v33 = __p[0];
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
    if (!v33)
    {
      goto LABEL_65;
    }

LABEL_101:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v55;
    v55 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_102;
  }

  if (v33)
  {
    goto LABEL_101;
  }

LABEL_65:
  mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, v5, 0x102u, &v56, &v50);
  __p[0] = v50;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v51;
  __p[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v34 = v53;
  v53 = 0uLL;
  v35 = *(&v55 + 1);
  v55 = v34;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *(&v53 + 1);
  v37 = __p[0];
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (v37)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 14, 259, &v56, &v50);
  __p[0] = v50;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v51;
  __p[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v38 = v53;
  v53 = 0uLL;
  v39 = *(&v55 + 1);
  v55 = v38;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = *(&v53 + 1);
  v41 = __p[0];
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (v41)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<10ul,false>,true>(&v50, this, this + 15, &v56);
  __p[0] = v50;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v51;
  __p[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v42 = v53;
  v53 = 0uLL;
  v43 = *(&v55 + 1);
  v55 = v42;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  v44 = *(&v53 + 1);
  v45 = __p[0];
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (v45)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 16, 261, &v56, &v50);
  v46 = *mipc::Error::operator=(__p, &v50);
  mipc::Error::~Error(&v50);
  if (v46)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, this + 17, 262, &v56, &v50);
  v47 = *mipc::Error::operator=(__p, &v50);
  mipc::Error::~Error(&v50);
  if (v47)
  {
    goto LABEL_101;
  }

  (*(*this + 32))(&v50, this, v57);
  v48 = *mipc::Error::operator=(__p, &v50);
  mipc::Error::~Error(&v50);
  if (v48)
  {
    goto LABEL_101;
  }

  *a2 = *v57;
  *(a2 + 16) = v58;
  v57[1] = 0;
  v58 = 0;
  v57[0] = 0;
  *(a2 + 48) = 0;
  v49 = *(&v55 + 1);
  if (*(&v55 + 1) && !atomic_fetch_add((*(&v55 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

LABEL_102:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }
}

void sub_297B047D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::apn::Set_Op12_Apn_Req::getSize(int64x2_t *this)
{
  v1 = this[6].i64[1];
  if (v1)
  {
    v2 = *(v1 + 23);
    v3 = *(v1 + 8);
    if ((v2 & 0x80u) == 0)
    {
      v3 = v2;
    }

    v4 = __CFADD__(v3 - 65531, 0x10000);
    v1 = (v3 + 12) & 0xFFF8;
    if (!v4)
    {
      v1 = 0;
    }
  }

  v5 = this[7].i64[1];
  if (v5)
  {
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v4 = __CFADD__(v7 - 65531, 0x10000);
    v5 = (v7 + 12) & 0xFFF8;
    if (!v4)
    {
      v5 = 0;
    }
  }

  v8.i64[0] = this[5].i64[1];
  v8.i64[1] = this[7].i64[0];
  return vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(v8), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(this[8])))) + 8 * (this[6].i64[0] != 0) + v5 + v1;
}