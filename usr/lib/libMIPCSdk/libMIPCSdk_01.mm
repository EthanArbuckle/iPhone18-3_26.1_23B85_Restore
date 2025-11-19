void sub_297A634F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A63508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297A63524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<unsigned short,60ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v6;
  v41 = v6;
  *v39 = v6;
  *&v39[16] = v6;
  mipc::Message::findTLV(this, 0x104u, v39);
  *&v38[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v38 = v7;
  *__p = v7;
  v36 = *v39;
  if ((v39[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v39[8], *&v39[16]);
  }

  else
  {
    *__p = *&v39[8];
    *v38 = *&v39[24];
  }

  *&v38[8] = v40;
  if (*(&v40 + 1))
  {
    atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v36)
  {
    if (v36 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v36, a1);
      goto LABEL_51;
    }

    v8 = 0;
    a3[1] = *a3;
  }

  else
  {
    v9 = v41;
    v10 = *(&v41 + 1);
    v11 = *a3;
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v33 = a1;
      v12 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v14 = v11 - *a3;
        if (v14 == 120)
        {
          v8 = 0x100000010;
          goto LABEL_45;
        }

        v15 = v12 - v10;
        if ((v12 - v10) < 4)
        {
          a1 = v33;
          v8 = 0x100000005;
          goto LABEL_46;
        }

        v16 = v10 + 2;
        if (v15 <= 2)
        {
          v16 = v12;
        }

        v17 = v12 - v16 <= 2;
        v20 = *v16;
        v18 = (v16 + 2);
        v19 = v20;
        v21 = v17 ? v12 : v18;
        v22 = a3[2];
        if (v11 >= v22)
        {
          v23 = v14 >> 1;
          if (v14 >> 1 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v24 = v22 - v13;
          v25 = v24 <= v23 + 1 ? v23 + 1 : v24;
          v26 = v24 >= 0x7FFFFFFFFFFFFFFELL ? 0x7FFFFFFFFFFFFFFFLL : v25;
          if (v26)
          {
            if (v26 < 0)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(2 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[2 * v23];
          *v28 = 0;
          v11 = v28 + 2;
          memcpy(v27, v13, v14);
          *a3 = v27;
          a3[1] = v11;
          a3[2] = &v27[2 * v26];
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v11++ = 0;
        }

        a3[1] = v11;
        if (v19 > 2)
        {
          break;
        }

        if (v19 != 2)
        {
          v8 = 0x100000011;
          goto LABEL_45;
        }

        v10 = (v21 + 2);
        *(v11 - 1) = *v21;
        if (v12 - v21 <= 4)
        {
          v10 = v12;
        }

        if ((v12 - v10) <= 7)
        {
          v8 = 0;
          goto LABEL_45;
        }
      }

      v8 = 0x100000012;
LABEL_45:
      a1 = v33;
    }
  }

LABEL_46:
  v29 = this[3];
  v34 = this[2];
  v35 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x104u, &v34, "", 0, a1);
  v30 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

LABEL_51:
  v31 = *&v38[16];
  if (*&v38[16] && !atomic_fetch_add((*&v38[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
    if ((v38[7] & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if ((v38[7] & 0x80000000) != 0)
  {
LABEL_54:
    operator delete(__p[0]);
  }

LABEL_55:
  v32 = *(&v40 + 1);
  if (!*(&v40 + 1) || atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v39[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v32);
  if ((v39[31] & 0x80000000) != 0)
  {
LABEL_58:
    operator delete(*&v39[8]);
  }
}

void sub_297A63918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

uint64_t mipc::sms::Cbm_Cfg_V2_Cnf::getSize(mipc::sms::Cbm_Cfg_V2_Cnf *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2 * (v2 - v1) + 16;
  }

  v4 = *(this + 16);
  v5 = *(this + 17);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4 * (v5 - v4) + 16;
  }

  v7 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v7 = 32;
  }

  return v7 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + v3 + v6;
}

mipc::sms::Scbm_Ind *mipc::sms::Scbm_Ind::Scbm_Ind(mipc::sms::Scbm_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17928, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E63C78;
  *(this + 11) = 0;
  mipc::sms::Scbm_Ind::deserialize(this, &v7);
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

void sub_297A63B04(_Unwind_Exception *a1)
{
  v3 = *(v1 + 11);
  *(v1 + 11) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sms::Scbm_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v8);
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

void *mipc::sms::Scbm_Ind::Scbm_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17928, &v14, a3, 3);
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
  *a1 = &unk_2A1E64500;
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
  *a1 = &unk_2A1E63C78;
  a1[11] = 0;
  return a1;
}

void sub_297A63F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Scbm_Ind::~Scbm_Ind(mipc::sms::Scbm_Ind *this)
{
  *this = &unk_2A1E63C78;
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
  *this = &unk_2A1E63C78;
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
  *this = &unk_2A1E63C78;
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

uint64_t mipc::sms::Scbm_Ind::getSize(mipc::sms::Scbm_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

mipc::sms::Cfg_V2_Ind *mipc::sms::Cfg_V2_Ind::Cfg_V2_Ind(mipc::sms::Cfg_V2_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17931, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E63CC0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  mipc::sms::Cfg_V2_Ind::deserialize(this, v7);
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

void sub_297A6441C(_Unwind_Exception *a1)
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

void mipc::sms::Cfg_V2_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v20);
  v4 = v20;
  *a2 = v20;
  v5 = v23;
  *(a2 + 1) = *__p;
  a2[3] = v22;
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v20);
  *a2 = v20;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v22;
  HIBYTE(v22) = 0;
  LOBYTE(__p[0]) = 0;
  v6 = v23;
  v23 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v23 + 1);
  if (!*(&v23 + 1) || atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v22) & 0x80000000) == 0)
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
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v7)
  {
    return;
  }

LABEL_15:
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 12, 0x101u, &v20);
  *a2 = v20;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v22;
  HIBYTE(v22) = 0;
  LOBYTE(__p[0]) = 0;
  v9 = v23;
  v23 = 0uLL;
  v10 = a2[5];
  *(a2 + 2) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *a2;
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v11)
  {
    mipc::Message::deserializeTlv<unsigned char,true>(this, this + 13, 0x102u, &v20);
    *a2 = v20;
    if (*(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }

    *(a2 + 1) = *__p;
    a2[3] = v22;
    HIBYTE(v22) = 0;
    LOBYTE(__p[0]) = 0;
    v13 = v23;
    v23 = 0uLL;
    v14 = a2[5];
    *(a2 + 2) = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *a2;
    v16 = *(&v23 + 1);
    if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v15)
    {
      mipc::Message::deserializeTlv<unsigned char,true>(this, this + 14, 0x103u, &v20);
      *a2 = v20;
      if (*(a2 + 31) < 0)
      {
        operator delete(a2[1]);
      }

      *(a2 + 1) = *__p;
      a2[3] = v22;
      HIBYTE(v22) = 0;
      LOBYTE(__p[0]) = 0;
      v17 = v23;
      v23 = 0uLL;
      v18 = a2[5];
      *(a2 + 2) = v17;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = *(&v23 + 1);
      if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t mipc::sms::Cfg_V2_Ind::Cfg_V2_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17931, &v14, a3, 3);
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
  *a1 = &unk_2A1E64548;
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
  *a1 = &unk_2A1E63CC0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_297A64BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Cfg_V2_Ind::~Cfg_V2_Ind(mipc::sms::Cfg_V2_Ind *this)
{
  *this = &unk_2A1E63CC0;
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
  *this = &unk_2A1E63CC0;
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
  *this = &unk_2A1E63CC0;
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

uint64_t mipc::sms::Cfg_V2_Ind::getSize(mipc::sms::Cfg_V2_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0) + 8 * (*(this + 14) != 0);
}

mipc::sms::New_Sms_V2_Ind *mipc::sms::New_Sms_V2_Ind::New_Sms_V2_Ind(mipc::sms::New_Sms_V2_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17932, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E63D08;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::sms::New_Sms_V2_Ind::deserialize(this, v7);
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

void sub_297A65190(_Unwind_Exception *a1)
{
  v4 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 12);
    *(v1 + 12) = 0;
    if (!v5)
    {
LABEL_3:
      mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v2);
      mipc::ResponseMessage::~ResponseMessage(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *(v1 + 12);
    *(v1 + 12) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v2);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sms::New_Sms_V2_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v16);
  v4 = v16;
  *a2 = v16;
  v5 = v19;
  *(a2 + 1) = *__p;
  a2[3] = v18;
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,false>,false>(this, this + 11, 0x101u, &v16);
  *a2 = v16;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v18;
  HIBYTE(v18) = 0;
  LOBYTE(__p[0]) = 0;
  v6 = v19;
  v19 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v19 + 1);
  if (!*(&v19 + 1) || atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v18) & 0x80000000) == 0)
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
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v7)
  {
    return;
  }

LABEL_15:
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x102u, &v16);
  *a2 = v16;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v18;
  HIBYTE(v18) = 0;
  LOBYTE(__p[0]) = 0;
  v9 = v19;
  v19 = 0uLL;
  v10 = a2[5];
  *(a2 + 2) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *a2;
  v12 = *(&v19 + 1);
  if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v11)
  {
    mipc::Message::deserializeTlv<unsigned short,false>(this, this + 13, 0x103u, &v16);
    *a2 = v16;
    if (*(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }

    *(a2 + 1) = *__p;
    a2[3] = v18;
    HIBYTE(v18) = 0;
    LOBYTE(__p[0]) = 0;
    v13 = v19;
    v19 = 0uLL;
    v14 = a2[5];
    *(a2 + 2) = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t mipc::sms::New_Sms_V2_Ind::New_Sms_V2_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17932, &v14, a3, 3);
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
  *a1 = &unk_2A1E64590;
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
  *a1 = &unk_2A1E63D08;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297A657F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::New_Sms_V2_Ind::~New_Sms_V2_Ind(mipc::sms::New_Sms_V2_Ind *this)
{
  *this = &unk_2A1E63D08;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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
  *this = &unk_2A1E63D08;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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
  *this = &unk_2A1E63D08;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,false>,false>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v8;
  v26 = v8;
  *v24 = v8;
  *&v24[16] = v8;
  mipc::Message::findTLV(a1, a3, v24);
  *&v23[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v23 = v9;
  *__p = v9;
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

  if (v21 && v21 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(a1, &v21, a4);
  }

  else
  {
    v18 = v21;
    v19 = v26;
    v20 = *(&v26 + 1);
    v10 = *(a1 + 4);
    v11 = mipc::tlv<mipc::mipc_byte_array_t<256ul,false>,false>::deserialize(a2, &v18);
    v12 = *(a1 + 3);
    v16 = *(a1 + 2);
    v17 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(a1, v11, a3, &v16, "", 0, a4);
    v13 = v17;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v14 = *&v23[16];
  if (*&v23[16] && !atomic_fetch_add((*&v23[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if ((v23[7] & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

LABEL_18:
  v15 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(*&v24[8]);
    return;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if ((v24[31] & 0x80000000) != 0)
  {
    goto LABEL_25;
  }
}

void sub_297A65EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A65EDC(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_297A65F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void mipc::Message::deserializeTlv<unsigned short,false>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v8;
  v27 = v8;
  *v25 = v8;
  *&v25[16] = v8;
  mipc::Message::findTLV(a1, a3, v25);
  *&v24[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v24 = v9;
  *__p = v9;
  v22 = *v25;
  if ((v25[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v25[8], *&v25[16]);
  }

  else
  {
    *__p = *&v25[8];
    *v24 = *&v25[24];
  }

  *&v24[8] = v26;
  if (*(&v26 + 1))
  {
    atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v22;
  if (v22 && v22 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(a1, &v22, a4);
  }

  else
  {
    v11 = v27;
    v12 = *(&v27 + 1);
    v13 = *a2;
    *a2 = 0;
    if (v13)
    {
      operator delete(v13);
    }

    if (v10)
    {
      if (v10 == 0x10000000ELL)
      {
        v10 = 0;
      }
    }

    else
    {
      v14 = operator new(2uLL);
      *v14 = 0;
      v15 = *a2;
      *a2 = v14;
      if (v15)
      {
        operator delete(v15);
        v14 = *a2;
      }

      v10 = 0x100000011;
      if (v11 <= 2)
      {
        if (v11 == 2)
        {
          v10 = 0;
          *v14 = *v12;
        }
      }

      else
      {
        v10 = 0x100000012;
      }
    }

    v16 = *(a1 + 3);
    v20 = *(a1 + 2);
    v21 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(a1, v10, a3, &v20, "", 0, a4);
    v17 = v21;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  v18 = *&v24[16];
  if (*&v24[16] && !atomic_fetch_add((*&v24[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if ((v24[7] & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v24[7] & 0x80000000) != 0)
  {
LABEL_28:
    operator delete(__p[0]);
  }

LABEL_29:
  v19 = *(&v26 + 1);
  if (!*(&v26 + 1) || atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v25[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if ((v25[31] & 0x80000000) != 0)
  {
LABEL_32:
    operator delete(*&v25[8]);
  }
}

void sub_297A661E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A661F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297A66210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void *mipc::sms::New_Sms_V2_Ind::getSize(mipc::sms::New_Sms_V2_Ind *this)
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

  return &v1[v4 + (*(this + 12) != 0) + (*(this + 13) != 0)];
}

mipc::sms::Store_Status_V2_Ind *mipc::sms::Store_Status_V2_Ind::Store_Status_V2_Ind(mipc::sms::Store_Status_V2_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17933, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E63D50;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::sms::Store_Status_V2_Ind::deserialize(this, v7);
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

void sub_297A663D0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 12);
  *(v1 + 12) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *v2;
    *v2 = 0;
    if (!v5)
    {
LABEL_3:
      mipc::ResponseMessage::~ResponseMessage(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v2;
    *v2 = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sms::Store_Status_V2_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v12);
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

  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 11, 0x100u, &v12);
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
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, &v12);
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

void *mipc::sms::Store_Status_V2_Ind::Store_Status_V2_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17933, &v14, a3, 3);
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
  *a1 = &unk_2A1E645D8;
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
  *a1 = &unk_2A1E63D50;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297A6690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Store_Status_V2_Ind::~Store_Status_V2_Ind(mipc::sms::Store_Status_V2_Ind *this)
{
  *this = &unk_2A1E63D50;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
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
  *this = &unk_2A1E63D50;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
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
  *this = &unk_2A1E63D50;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
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

uint64_t mipc::sms::Store_Status_V2_Ind::getSize(mipc::sms::Store_Status_V2_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

mipc::sms::New_Status_Report_V2_Ind *mipc::sms::New_Status_Report_V2_Ind::New_Status_Report_V2_Ind(mipc::sms::New_Status_Report_V2_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17934, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E63D98;
  *(this + 11) = 0;
  *(this + 80) = 1;
  mipc::sms::New_Status_Report_V2_Ind::deserialize(this, &v7);
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

void sub_297A66E58(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sms::New_Status_Report_V2_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,false>,true>(this, this + 11, 0x101u, &v8);
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

uint64_t mipc::sms::New_Status_Report_V2_Ind::New_Status_Report_V2_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17934, &v14, a3, 3);
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
  *a1 = &unk_2A1E64620;
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
  *a1 = &unk_2A1E63D98;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297A67258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::New_Status_Report_V2_Ind::~New_Status_Report_V2_Ind(mipc::sms::New_Status_Report_V2_Ind *this)
{
  *this = &unk_2A1E63D98;
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
  *this = &unk_2A1E63D98;
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
  *this = &unk_2A1E63D98;
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

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,false>,true>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
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
    v10 = mipc::tlv<mipc::mipc_byte_array_t<256ul,false>,true>::deserialize(a2, &v17, *(a1 + 4) == 0);
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

void sub_297A678C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A678DC(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_297A67900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void *mipc::sms::New_Status_Report_V2_Ind::getSize(mipc::sms::New_Status_Report_V2_Ind *this)
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

mipc::sms::New_Cbm_V2_Ind *mipc::sms::New_Cbm_V2_Ind::New_Cbm_V2_Ind(mipc::sms::New_Cbm_V2_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17935, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *(this + 88) = 0u;
  *this = &unk_2A1E63DE0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 80) = 1;
  mipc::sms::New_Cbm_V2_Ind::deserialize(this, &v7);
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

void sub_297A67AB0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 136);
  *(v1 + 136) = 0;
  if (v4)
  {
    operator delete(v4);
    mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 128));
    v5 = *(v1 + 120);
    *(v1 + 120) = 0;
    if (!v5)
    {
LABEL_3:
      mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 112));
      v6 = *(v1 + 104);
      *(v1 + 104) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 128));
    v5 = *(v1 + 120);
    *(v1 + 120) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 112));
  v6 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 96);
    *(v1 + 96) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v6);
  v7 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *v2;
    *v2 = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v7);
  v8 = *v2;
  *v2 = 0;
  if (!v8)
  {
LABEL_6:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(v8);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sms::New_Cbm_V2_Ind::deserialize(mipc::sms::New_Cbm_V2_Ind *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v29);
  *a2 = v29;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v31;
  HIBYTE(v31) = 0;
  LOBYTE(__p) = 0;
  v4 = v32;
  v32 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned short,false>(this, this + 11, 0x101u, &v29);
  *a2 = v29;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v31;
  HIBYTE(v31) = 0;
  LOBYTE(__p) = 0;
  v8 = v32;
  v32 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v32 + 1);
  if (!*(&v32 + 1) || atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(__p);
    if (v10)
    {
      return;
    }

    goto LABEL_25;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 12, 0x102u, &v29);
  *a2 = v29;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v31;
  HIBYTE(v31) = 0;
  LOBYTE(__p) = 0;
  v12 = v32;
  v32 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 13, 0x103u, &v29);
    *a2 = v29;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v31;
    HIBYTE(v31) = 0;
    LOBYTE(__p) = 0;
    v16 = v32;
    v32 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v32 + 1);
    if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<1246ul,false>,false>(&v29, this, this + 14);
      *a2 = v29;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v31;
      HIBYTE(v31) = 0;
      LOBYTE(__p) = 0;
      v20 = v32;
      v32 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v32 + 1);
      if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<unsigned short,true>(this, this + 15, 0x106u, &v29);
        *a2 = v29;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v31;
        HIBYTE(v31) = 0;
        LOBYTE(__p) = 0;
        v24 = v32;
        v32 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v32 + 1);
        if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<65535ul,false>,false>(this, this + 16, 0x109u, &v29);
          v28 = *mipc::Error::operator=(a2, &v29);
          mipc::Error::~Error(&v29);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned char,true>(this, this + 17, 0x10Au, &v29);
            mipc::Error::operator=(a2, &v29);
            mipc::Error::~Error(&v29);
          }
        }
      }
    }
  }
}

uint64_t mipc::sms::New_Cbm_V2_Ind::New_Cbm_V2_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17935, &v14, a3, 3);
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
  *a1 = &unk_2A1E64668;
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
  *a1 = &unk_2A1E63DE0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297A68500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::New_Cbm_V2_Ind::~New_Cbm_V2_Ind(mipc::sms::New_Cbm_V2_Ind *this)
{
  *this = &unk_2A1E63DE0;
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
    v4 = *v3;
    if (*v3)
    {
      v3[1] = v4;
      operator delete(v4);
    }

    operator delete(v3);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
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
    operator delete(v10);
  }

  *this = &unk_2A1E85968;
  v11 = *(this + 9);
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (*(this + 63) < 0)
  {
LABEL_22:
    operator delete(*(this + 5));
  }

LABEL_23:
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
  mipc::sms::New_Cbm_V2_Ind::~New_Cbm_V2_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<1246ul,false>,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v6;
  v27 = v6;
  *v25 = v6;
  *&v25[16] = v6;
  mipc::Message::findTLV(this, 0x104u, v25);
  *&v24[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v24 = v7;
  *__p = v7;
  v22 = *v25;
  if ((v25[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v25[8], *&v25[16]);
  }

  else
  {
    *__p = *&v25[8];
    *v24 = *&v25[24];
  }

  *&v24[8] = v26;
  if (*(&v26 + 1))
  {
    atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v22;
  if (v22 && v22 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v22, a1);
    goto LABEL_30;
  }

  v9 = v27;
  v10 = *(&v27 + 1);
  v11 = *a3;
  *a3 = 0;
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v11[1] = v12;
      operator delete(v12);
    }

    operator delete(v11);
  }

  if (v8)
  {
    if (v8 != 0x10000000ELL)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v13 = operator new(0x18uLL);
  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;
  v14 = *a3;
  *a3 = v13;
  if (v14)
  {
    v15 = *v14;
    if (*v14)
    {
      v14[1] = v15;
      operator delete(v15);
    }

    operator delete(v14);
    v13 = *a3;
  }

  v8 = 0x100000003;
  if (!v9)
  {
    goto LABEL_25;
  }

  if (v9 <= 0x4DE)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v13, v10, &v10[v9], v9);
LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

  v8 = 0x100000010;
LABEL_25:
  v16 = this[3];
  v20 = this[2];
  v21 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x104u, &v20, "", 0, a1);
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_30:
  v18 = *&v24[16];
  if (*&v24[16] && !atomic_fetch_add((*&v24[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if ((v24[7] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ((v24[7] & 0x80000000) != 0)
  {
LABEL_33:
    operator delete(__p[0]);
  }

LABEL_34:
  v19 = *(&v26 + 1);
  if (!*(&v26 + 1) || atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v25[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if ((v25[31] & 0x80000000) != 0)
  {
LABEL_37:
    operator delete(*&v25[8]);
  }
}

void sub_297A689EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A68A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297A68A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<65535ul,false>,false>(mipc::Message *a1@<X0>, void ***a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v8;
  v26 = v8;
  *v24 = v8;
  *&v24[16] = v8;
  mipc::Message::findTLV(a1, a3, v24);
  *&v23[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v23 = v9;
  *__p = v9;
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

  if (v21 && v21 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(a1, &v21, a4);
  }

  else
  {
    v18 = v21;
    v19 = v26;
    v20 = *(&v26 + 1);
    v10 = *(a1 + 4);
    v11 = mipc::tlv<mipc::mipc_byte_array_t<65535ul,false>,false>::deserialize(a2, &v18);
    v12 = *(a1 + 3);
    v16 = *(a1 + 2);
    v17 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(a1, v11, a3, &v16, "", 0, a4);
    v13 = v17;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v14 = *&v23[16];
  if (*&v23[16] && !atomic_fetch_add((*&v23[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if ((v23[7] & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

LABEL_18:
  v15 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(*&v24[8]);
    return;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if ((v24[31] & 0x80000000) != 0)
  {
    goto LABEL_25;
  }
}

void sub_297A68CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A68CD0(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_297A68CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sms::New_Cbm_V2_Ind::getSize(int64x2_t *this)
{
  v1 = this[7].i64[0];
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

  v4 = this[8].i64[0];
  if (v4)
  {
    v5 = v4[1] - *v4;
    v3 = __CFADD__(v5 - 65532, 0x10000);
    v4 = ((v5 + 11) & 0xFFF8);
    if (!v3)
    {
      v4 = 0;
    }
  }

  v6 = 3;
  if (HIDWORD(this[2].i64[0]))
  {
    v6 = 4;
  }

  v7.i64[0] = this[7].i64[1];
  v7.i64[1] = this[8].i64[1];
  v8 = vdupq_n_s64(8uLL);
  return &v4[v6 + (this[5].i64[1] != 0)] + v1 + vaddvq_s64(vaddq_s64(vbicq_s8(v8, vceqzq_s64(this[6])), vbicq_s8(v8, vceqzq_s64(v7))));
}

mipc::sms::Service_Info_Ind *mipc::sms::Service_Info_Ind::Service_Info_Ind(mipc::sms::Service_Info_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17937, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E63E28;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  mipc::sms::Service_Info_Ind::deserialize(this, v7);
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

void sub_297A68F08(_Unwind_Exception *a1)
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

void mipc::sms::Service_Info_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v20);
  v4 = v20;
  *a2 = v20;
  v5 = v23;
  *(a2 + 1) = *__p;
  a2[3] = v22;
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v20);
  *a2 = v20;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v22;
  HIBYTE(v22) = 0;
  LOBYTE(__p[0]) = 0;
  v6 = v23;
  v23 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v23 + 1);
  if (!*(&v23 + 1) || atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v22) & 0x80000000) == 0)
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
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v7)
  {
    return;
  }

LABEL_15:
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, &v20);
  *a2 = v20;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v22;
  HIBYTE(v22) = 0;
  LOBYTE(__p[0]) = 0;
  v9 = v23;
  v23 = 0uLL;
  v10 = a2[5];
  *(a2 + 2) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *a2;
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v11)
  {
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 13, 0x102u, &v20);
    *a2 = v20;
    if (*(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }

    *(a2 + 1) = *__p;
    a2[3] = v22;
    HIBYTE(v22) = 0;
    LOBYTE(__p[0]) = 0;
    v13 = v23;
    v23 = 0uLL;
    v14 = a2[5];
    *(a2 + 2) = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *a2;
    v16 = *(&v23 + 1);
    if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v15)
    {
      mipc::Message::deserializeTlv<unsigned char,false>(this, this + 14, 0x103u, &v20);
      *a2 = v20;
      if (*(a2 + 31) < 0)
      {
        operator delete(a2[1]);
      }

      *(a2 + 1) = *__p;
      a2[3] = v22;
      HIBYTE(v22) = 0;
      LOBYTE(__p[0]) = 0;
      v17 = v23;
      v23 = 0uLL;
      v18 = a2[5];
      *(a2 + 2) = v17;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = *(&v23 + 1);
      if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t mipc::sms::Service_Info_Ind::Service_Info_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17937, &v14, a3, 3);
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
  *a1 = &unk_2A1E646B0;
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
  *a1 = &unk_2A1E63E28;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_297A696A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Service_Info_Ind::~Service_Info_Ind(mipc::sms::Service_Info_Ind *this)
{
  *this = &unk_2A1E63E28;
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
  *this = &unk_2A1E63E28;
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
  *this = &unk_2A1E63E28;
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

uint64_t mipc::sms::Service_Info_Ind::getSize(mipc::sms::Service_Info_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0) + 8 * (*(this + 14) != 0);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE845D8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

void *mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void **mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      v1[1] = v3;
      operator delete(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void **mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void mipc::Message::handle<(mipc::Error::Type)1>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a7 + 16) = v10;
  *(a7 + 32) = v10;
  *a7 = v10;
  v11 = *(a1 + 8);
  v12 = *a4;
  v13 = a4[1];
  v23 = v12;
  v24 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v30 = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v30 = 0;
  }

  v29 = v12;
  mipc::Error::Error<>(&v25, 1u, a2, v11, a3, &v29, a5, a6);
  v14 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v24;
  *a7 = v25;
  *(a7 + 8) = v26;
  *(a7 + 24) = v27;
  v26 = 0uLL;
  *(a7 + 32) = v28;
  v27 = 0;
  v28 = 0uLL;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    if (*a7)
    {
LABEL_10:
      std::__memberwise_copy_assign[abi:ne200100]<std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,0ul,1ul,2ul>(a1 + 32, a7);
      v16 = mipc::Message::sSerializeErrHandler;
      v17 = *(a1 + 8);
      v19 = *(a1 + 32);
      if (*(a1 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
      }

      else
      {
        __p = *(a1 + 40);
      }

      v18 = *(a1 + 72);
      v21 = *(a1 + 64);
      v22 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v16(v17, &v19);
    }
  }

  else if (*a7)
  {
    goto LABEL_10;
  }
}

void sub_297A6A0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::Error::~Error(v9);
  _Unwind_Resume(a1);
}

void sub_297A6A0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v7 - 48);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *mipc::Error::Error<>(uint64_t *a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t *a6, unsigned __int8 *a7, uint64_t a8)
{
  v80 = *MEMORY[0x29EDCA608];
  *a1 = a3;
  a1[1] = 0;
  v11 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = *a6;
  v12 = a6[1];
  a1[5] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  if (!a3)
  {
    goto LABEL_74;
  }

  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if (a5 == 0x8000)
  {
    if (a2 > 3)
    {
      v13 = &str_4;
    }

    else
    {
      v13 = (&off_29EE845E8)[a2];
    }

    v48 = a4;
    v49 = 0;
    v50 = v13;
    v51 = 0xAAAAAAAAAAAAAAAALL;
    v53 = 0xAAAAAAAAAAAAAAAALL;
    v54 = 12678;
    v52 = mipc::asString(a3);
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v77 = v15;
    v78 = v15;
    v76 = v15;
    v75 = v15;
    v74 = v15;
    v73 = v15;
    v72 = v15;
    v71 = v15;
    v70 = v15;
    v69 = v15;
    v68 = v15;
    v67 = v15;
    v66 = v15;
    v65 = v15;
    v64 = v15;
    v63 = v15;
    v59 = &v63;
    v60 = xmmword_297DCA3A0;
    v61 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v62 = 0;
    __p = &v63;
    __dst[0] = 3;
    __dst[1] = &v48;
    __dst[2] = 12678;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v59, "[MIPC] Msg ({:#x}): {} error ({})", 33, __dst);
    v16 = *(&v60 + 1);
    if (*(&v60 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = __p;
    if (*(&v60 + 1) >= 0x17uLL)
    {
      if ((*(&v60 + 1) | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (*(&v60 + 1) | 7) + 1;
      }

LABEL_81:
      v22 = operator new(v18);
      *(&v43 + 1) = v16;
      v44 = v18 | 0x8000000000000000;
      *&v43 = v22;
      goto LABEL_82;
    }
  }

  else if (a5 > 0xFF)
  {
    if (a2 > 3)
    {
      v19 = &str_4;
    }

    else
    {
      v19 = (&off_29EE845E8)[a2];
    }

    v48 = a4;
    v49 = 0;
    v50 = 256;
    v51 = 0;
    v52 = (a5 - 256);
    v53 = 0;
    v54 = v19;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0xAAAAAAAAAAAAAAAALL;
    v58 = 12979398;
    v56 = mipc::asString(a3);
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v77 = v21;
    v78 = v21;
    v76 = v21;
    v75 = v21;
    v74 = v21;
    v73 = v21;
    v72 = v21;
    v71 = v21;
    v70 = v21;
    v69 = v21;
    v68 = v21;
    v67 = v21;
    v66 = v21;
    v65 = v21;
    v64 = v21;
    v63 = v21;
    v59 = &v63;
    v60 = xmmword_297DCA3A0;
    v61 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v62 = 0;
    __p = &v63;
    __dst[0] = 5;
    __dst[1] = &v48;
    __dst[2] = 12979398;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v59, "[MIPC] Msg ({:#x}): TLV ({:#x} + {:#x}): {} error ({})", 54, __dst);
    v16 = *(&v60 + 1);
    if (*(&v60 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = __p;
    if (*(&v60 + 1) >= 0x17uLL)
    {
      if ((*(&v60 + 1) | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (*(&v60 + 1) | 7) + 1;
      }

      goto LABEL_81;
    }
  }

  else
  {
    if (a2 > 3)
    {
      v14 = &str_4;
    }

    else
    {
      v14 = (&off_29EE845E8)[a2];
    }

    v48 = a4;
    v49 = 0;
    v50 = a5;
    v51 = 0;
    v52 = v14;
    v53 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 405702;
    v54 = mipc::asString(a3);
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v77 = v20;
    v78 = v20;
    v76 = v20;
    v75 = v20;
    v74 = v20;
    v73 = v20;
    v72 = v20;
    v71 = v20;
    v70 = v20;
    v69 = v20;
    v68 = v20;
    v67 = v20;
    v66 = v20;
    v65 = v20;
    v64 = v20;
    v63 = v20;
    v59 = &v63;
    v60 = xmmword_297DCA3A0;
    v61 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v62 = 0;
    __p = &v63;
    __dst[0] = 4;
    __dst[1] = &v48;
    __dst[2] = 405702;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v59, "[MIPC] Msg ({:#x}): TLV ({:#x}): {} error ({})", 46, __dst);
    v16 = *(&v60 + 1);
    if (*(&v60 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = __p;
    if (*(&v60 + 1) >= 0x17uLL)
    {
      if ((*(&v60 + 1) | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (*(&v60 + 1) | 7) + 1;
      }

      goto LABEL_81;
    }
  }

  HIBYTE(v44) = v16;
  v22 = &v43;
  if (!v16)
  {
    LOBYTE(v43) = 0;
    v23 = __p;
    if (__p == &v63)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_82:
  memmove(v22, v17, v16);
  *(v22 + v16) = 0;
  v23 = __p;
  if (__p != &v63)
  {
LABEL_29:
    operator delete(v23);
  }

LABEL_30:
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  *v45 = v43;
  v46 = v44;
  if (v44 >= 0)
  {
    v24 = v45;
  }

  else
  {
    v24 = v43;
  }

  if (v44 >= 0)
  {
    v25 = HIBYTE(v44);
  }

  else
  {
    v25 = *(&v43 + 1);
  }

  std::string::append(v11, v24, v25);
  if (!a8)
  {
    goto LABEL_72;
  }

  memset(__dst, 170, sizeof(__dst));
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v77 = v26;
  v78 = v26;
  v76 = v26;
  v75 = v26;
  v74 = v26;
  v73 = v26;
  v72 = v26;
  v71 = v26;
  v70 = v26;
  v69 = v26;
  v68 = v26;
  v67 = v26;
  v66 = v26;
  v65 = v26;
  v64 = v26;
  v63 = v26;
  v59 = &v63;
  v60 = xmmword_297DCA3A0;
  v61 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v62 = 0;
  __p = &v63;
  v48 = 0;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v59, a7, a8, &v48);
  v27 = *(&v60 + 1);
  if (*(&v60 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = __p;
  if (*(&v60 + 1) >= 0x17uLL)
  {
    if ((*(&v60 + 1) | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (*(&v60 + 1) | 7) + 1;
    }

    v29 = operator new(v36);
    __dst[1] = v27;
    __dst[2] = v36 | 0x8000000000000000;
    __dst[0] = v29;
  }

  else
  {
    HIBYTE(__dst[2]) = BYTE8(v60);
    v29 = __dst;
    if (!*(&v60 + 1))
    {
      LOBYTE(__dst[0]) = 0;
      v30 = __p;
      if (__p == &v63)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  memmove(v29, v28, v27);
  *(v29 + v27) = 0;
  v30 = __p;
  if (__p != &v63)
  {
LABEL_43:
    operator delete(v30);
  }

LABEL_44:
  v31 = SHIBYTE(__dst[2]);
  if (__dst[2] >= 0)
  {
    v32 = HIBYTE(__dst[2]);
  }

  else
  {
    v32 = __dst[1];
  }

  if (!v32)
  {
    goto LABEL_71;
  }

  v33 = v32 + 2;
  if (v32 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 <= 0x16)
  {
    v60 = 0uLL;
    v59 = 0;
    v35 = &v59;
    HIBYTE(v60) = v32 + 2;
  }

  else
  {
    v34 = (v33 | 7) == 0x17 ? 25 : (v33 | 7) + 1;
    v35 = operator new(v34);
    *&v60 = v32 + 2;
    *(&v60 + 1) = v34 | 0x8000000000000000;
    v59 = v35;
  }

  *v35 = 8250;
  v37 = v35 + 1;
  v38 = v31 >= 0 ? __dst : __dst[0];
  memmove(v37, v38, v32);
  *(v37 + v32) = 0;
  v39 = v60 >= 0 ? &v59 : v59;
  v40 = v60 >= 0 ? HIBYTE(v60) : v60;
  std::string::append(v11, v39, v40);
  if ((SHIBYTE(v60) & 0x80000000) == 0)
  {
LABEL_71:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_76:
    operator delete(__dst[0]);
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  operator delete(v59);
  if (v31 < 0)
  {
    goto LABEL_76;
  }

LABEL_72:
  if (SHIBYTE(v46) < 0)
  {
LABEL_73:
    operator delete(v45[0]);
  }

LABEL_74:
  v41 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_297A6A7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p != v73)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  mipc::Error::~Error(v72);
  _Unwind_Resume(a1);
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    v6 = operator new(v4);
    v7 = v6;
    v8 = *(a1 + 296);
    v9 = *(a1 + 16);
    if (v9)
    {
      memmove(v6, *(a1 + 296), v9);
    }

    if (v8 != (a1 + 40))
    {
      operator delete(v8);
    }

    *(a1 + 296) = v7;
    *a1 = v7;
    *(a1 + 8) = v4;
  }
}

uint64_t *std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  result = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    v6 = result;
    std::locale::~locale(&v12);
    return v6;
  }

  return result;
}

void sub_297A6A9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  if (v3 != v4)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_12;
      }

      if (++v3 == v4)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_12:
        v8 = v5[4];
        if (!v8 || (v10 = *v8, v9 = v8[1], v8[1] = v9 + 1, v9 < v10))
        {
          v11 = *v5;
          v12 = v5[2];
          v5[2] = v12 + 1;
          *(v11 + v12) = v7;
          if (v5[2] == v5[1])
          {
            v13 = v3;
            (v5[3])(v5, 2);
            v3 = v13;
          }
        }

        if (++v3 == v4)
        {
          return v5;
        }
      }

      else
      {
        *a2 = v5;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v4, a1, a2);
        v5 = *a2;
        if (v3 == v4)
        {
          return v5;
        }
      }
    }

    if (++v3 == v4 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_12;
  }

  return v5;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v21 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = &v21;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v23) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v22 = v13;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14;
  }

  (std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)(v20, &v22);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17 + 1;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1E64710;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

uint64_t std::invoke[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},void const*&>(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v12 = 0;
  v13 = -1;
  v14 = 32;
  v15 = 0;
  v16 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v12, *a1, 292);
    if (BYTE1(v12) - 8 >= 2 && BYTE1(v12) != 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v12, v7);
  v10 = 1536;
  if ((v8 & 0xFF00) == 0x900)
  {
    v10 = 1792;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v7, v8 & 0xFFFFFFFFFFFF00FFLL | v10 | 0x20, v9, 0);
  *v7 = result;
  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<BOOL>(uint64_t a1, unsigned int a2)
{
  v15 = 0;
  v16 = -1;
  v17 = 32;
  v18 = 0;
  v19 = 0;
  if (**(a1 + 16))
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v15, *a1, 311);
    if (BYTE1(v15) - 2 < 6)
    {
      *v4 = v5;
      v6 = *(a1 + 8);
LABEL_4:
      v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v6);
      result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v6, v7, v8, 0);
      *v6 = result;
      return result;
    }

    if (BYTE1(v15) > 1u)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
    }

    v12 = v5;
    std::__format_spec::__parser<char>::__validate[abi:ne200100](&v15, 48, "a BOOL", -1);
    if ((v15 & 7) != 0)
    {
      v13 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v13 > 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      LOBYTE(v15) = v15 | 1;
      v14 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v14 > 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v10 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v6);
  result = std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v6, v10, v11);
  *v6 = result;
  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v18 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = a1;
  v10 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v18, v5);
  result = v18;
  if (v10)
  {
    if (v18 == v5)
    {
      return result;
    }
  }

  if (a3)
  {
    v13 = *v18;
    v11 = v9;
    v12 = a2;
    switch(v13)
    {
      case ' ':
        v14 = *v9 | 0x18;
        break;
      case '+':
        v14 = *v9 & 0xE7 | 0x10;
        break;
      case '-':
        v14 = *v9 & 0xE7 | 8;
        break;
      default:
        goto LABEL_16;
    }

    *v9 = v14;
    v18 = ++result;
    if (result == v5)
    {
      return result;
    }
  }

  else
  {
    v11 = v9;
    v12 = a2;
  }

LABEL_16:
  if ((a3 & 2) == 0 || *result != 35 || (*v11 |= 0x20u, ++result, v18 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_24;
    }

    if ((*v11 & 7) == 0)
    {
      *v11 |= 4u;
    }

    v18 = ++result;
    if (result != v5)
    {
LABEL_24:
      v15 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v11, &v18, v5, v12);
      result = v18;
      if (!v15 || v18 != v5)
      {
        v16 = v9;
        if ((a3 & 8) != 0)
        {
          v17 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v9, &v18, v5, a2);
          result = v18;
          if (v17)
          {
            v16 = v9;
            if (v18 == v5)
            {
              return result;
            }
          }

          else
          {
            v16 = v9;
          }
        }

        if ((a3 & 0x10) == 0 || *result != 76 || (*v16 |= 0x40u, ++result, v18 = result, result != v5))
        {
          if ((a3 & 0x80) == 0 || *result != 110 || (*v16 |= 0x80u, ++result, v18 = result, result != v5))
          {
            if ((a3 & 0x20) != 0)
            {
              std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(v16, &v18);
              result = v18;
            }

            if ((a3 & 0x100) != 0 && result != v5 && *result != 125)
            {
              std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v16[0] = *a2;
  v16[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v16) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v6 = v16[0];
  if (v16[0] < a3)
  {
    v7 = *v16[0];
    switch(v7)
    {
      case '<':
        v8 = 1;
        goto LABEL_17;
      case '>':
        v8 = 3;
        goto LABEL_17;
      case '^':
        v8 = 2;
LABEL_17:
        *a1 = *a1 & 0xF8 | v8;
        v13 = *a2;
        v14 = v6 - *a2;
        if (v14 == 1)
        {
          v15 = *v13;
          if (v15 == 123)
          {
            std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
          }

          a1[12] = v15;
        }

        else if (v6 != v13)
        {
          memmove(a1 + 12, v13, v6 - *a2);
        }

        v11 = &(*a2)[v14];
        goto LABEL_23;
    }
  }

  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    *a2 = v6 + 1;
    if (v6 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
    }

    v11 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v6 + 1, a3, a4);
    if (v11 == a3 || *v11 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The argument index is invalid");
    }

    v12 = v11 + 1;
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    LODWORD(v8) = v7 - 48;
    if (v7 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v13 = v6 + 9;
    if (a3 - v6 <= 9)
    {
      v13 = a3;
    }

    v12 = v6 + 1;
    if (v6 + 1 == v13)
    {
LABEL_17:
      if (v12 == a3)
      {
        v12 = a3;
      }

      else
      {
        v15 = *v12;
        if ((v15 - 48) <= 9)
        {
          v8 = v15 + 10 * v8 - 48;
          if (v8 >> 31 || (v12 = v6 + 2, v6 + 2 != a3) && *v12 - 48 <= 9)
          {
            std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
          }
        }
      }
    }

    else
    {
      v6 = v13 - 1;
      while (1)
      {
        v14 = *v12;
        if ((v14 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        LODWORD(v8) = v14 + 10 * v8 - 48;
        if (++v12 == v13)
        {
          v12 = v13;
          goto LABEL_17;
        }
      }
    }
  }

  *(a1 + 4) = v8;
  *a2 = v12;
  return 1;
}

BOOL std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v6 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v7 = *v6;
    if (v7 == 123)
    {
      *a2 = v4 + 2;
      if (v4 + 2 == a3)
      {
        std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
      }

      v9 = a2;
      v11 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, a3, a4);
      if (v11 == a3 || *v11 != 125)
      {
        std::__throw_format_error[abi:ne200100]("The argument index is invalid");
      }

      v13 = v11 + 1;
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v12;
      a2 = v9;
    }

    else
    {
      if ((v7 - 58) <= 0xFFFFFFF5)
      {
        std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
      }

      if (a3 - v6 <= 9)
      {
        v14 = a3;
      }

      else
      {
        v14 = v4 + 10;
      }

      LODWORD(v15) = v7 - 48;
      v13 = v4 + 2;
      if (v13 == v14)
      {
        v14 = v13;
        if (v13 == a3)
        {
LABEL_23:
          v13 = a3;
        }

        else
        {
LABEL_17:
          v17 = *v14;
          if ((v17 - 48) > 9)
          {
            v13 = v14;
          }

          else
          {
            v15 = v17 + 10 * v15 - 48;
            if (v15 >> 31 || (v13 = v6 + 2, v6 + 2 != a3) && *v13 - 48 <= 9)
            {
              std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
            }
          }
        }
      }

      else
      {
        v6 = v14 - 1;
        while (1)
        {
          v16 = *v13;
          if ((v16 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          LODWORD(v15) = v16 + 10 * v15 - 48;
          if (++v13 == v14)
          {
            if (v14 == a3)
            {
              goto LABEL_23;
            }

            goto LABEL_17;
          }
        }
      }

      *(a1 + 8) = v15;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v13;
  }

  return v5 == 46;
}

uint64_t std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(uint64_t result, void *a2)
{
  v2 = *a2;
  v3 = 12;
  switch(**a2)
  {
    case 'A':
      goto LABEL_19;
    case 'B':
      v3 = 3;
      goto LABEL_19;
    case 'E':
      v3 = 14;
      goto LABEL_19;
    case 'F':
      v3 = 16;
      goto LABEL_19;
    case 'G':
      v3 = 18;
      goto LABEL_19;
    case 'P':
      v3 = 9;
      goto LABEL_19;
    case 'X':
      v3 = 7;
      goto LABEL_19;
    case 'a':
      v3 = 11;
      goto LABEL_19;
    case 'b':
      v3 = 2;
      goto LABEL_19;
    case 'c':
      v3 = 10;
      goto LABEL_19;
    case 'd':
      v3 = 5;
      goto LABEL_19;
    case 'e':
      v3 = 13;
      goto LABEL_19;
    case 'f':
      v3 = 15;
      goto LABEL_19;
    case 'g':
      v3 = 17;
      goto LABEL_19;
    case 'o':
      v3 = 4;
      goto LABEL_19;
    case 'p':
      v3 = 8;
      goto LABEL_19;
    case 's':
      v3 = 1;
      goto LABEL_19;
    case 'x':
      v3 = 6;
LABEL_19:
      *(result + 1) = v3;
      *a2 = v2 + 1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

    goto LABEL_28;
  }

  if (v2 != 3)
  {
    if (v2 == 4 && a1[1] - v1 >= 4)
    {
      v6 = (v1[1] & 0xC0) == 128;
      if ((v1[1] & 0xC0) == 0x80)
      {
        v6 = (v1[2] & 0xC0) == 128;
        if ((v1[2] & 0xC0) == 0x80)
        {
          v6 = (v1[3] & 0xC0) == 128;
        }
      }

      if (v6)
      {
        *a1 = v1 + 1;
        v7 = *v1 & 7;
        *a1 = v1 + 2;
        v8 = (v7 << 12) | ((v1[1] & 0x3F) << 6);
        *a1 = v1 + 3;
        v9 = v1[2];
        *a1 = v1 + 4;
        if (v8 >= 0x400)
        {
          v10 = v1[3] & 0x3F | ((v8 | v9 & 0x3F) << 6);
          if (v8 >> 10 >= 0x11)
          {
            return 2147549181;
          }

          else
          {
            return v10;
          }
        }

        return 2147549181;
      }
    }

LABEL_28:
    *a1 = v1 + 1;
    return 2147549181;
  }

  if (a1[1] - v1 < 3)
  {
    goto LABEL_28;
  }

  v11 = (v1[1] & 0xC0) == 128;
  if ((v1[1] & 0xC0) == 0x80)
  {
    v11 = (v1[2] & 0xC0) == 128;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  *a1 = v1 + 1;
  v12 = *v1 & 0xF;
  *a1 = v1 + 2;
  v13 = (v12 << 12) | ((v1[1] & 0x3F) << 6);
  *a1 = v1 + 3;
  if (v13 < 0x800)
  {
    return 2147549181;
  }

  v14 = v13 | v1[2] & 0x3F;
  if ((v13 & 0xF800) == 0xD800)
  {
    return 2147549181;
  }

  else
  {
    return v14;
  }
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  v21.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v21.__r_.__value_.__r.__words[1] = xmmword_297DCA3B0;
  strcpy(v21.__r_.__value_.__l.__data_, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v21, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v23 = v3->__r_.__value_.__r.__words[2];
  v22 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = SHIBYTE(v23);
  if ((SHIBYTE(v23) & 0x8000000000000000) != 0)
  {
    v5 = *(&v22 + 1);
    v6 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - *(&v22 + 1) < 0x14)
    {
      v7 = 0x7FFFFFFFFFFFFFF7;
      v8 = *(&v22 + 1) + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v23 & 0x7FFFFFFFFFFFFFFFLL) < *(&v22 + 1) + 20 - v6)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v22;
      if (v6 > 0x3FFFFFFFFFFFFFF2)
      {
        v12 = 0;
LABEL_16:
        v13 = operator new(v7);
        v14 = v13;
        if (v5)
        {
          memmove(v13, v9, v5);
        }

        v15 = &v14[v5];
        *v15 = *" formatting argument";
        *(v15 + 4) = 1953391981;
        if (!v12)
        {
          operator delete(v9);
        }

        *(&v22 + 1) = v8;
        v23 = v7 | 0x8000000000000000;
        *&v22 = v14;
        v16 = &v14[v8];
LABEL_27:
        *v16 = 0;
        v25 = v23;
        v24 = v22;
        v23 = 0;
        v22 = 0uLL;
        if (v25 >= 0)
        {
          v20 = &v24;
        }

        else
        {
          v20 = v24;
        }

        std::__throw_format_error[abi:ne200100](v20);
      }

LABEL_7:
      v10 = 2 * v6;
      if (v8 > 2 * v6)
      {
        v10 = v8;
      }

      if ((v10 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v10 | 7) + 1;
      }

      if (v10 >= 0x17)
      {
        v7 = v11;
      }

      else
      {
        v7 = 23;
      }

      v12 = v6 == 22;
      goto LABEL_16;
    }

    v17 = v22;
  }

  else
  {
    if ((SHIBYTE(v23) - 3) < 0x14)
    {
      v8 = SHIBYTE(v23) + 20;
      v9 = &v22;
      v6 = 22;
      goto LABEL_7;
    }

    v17 = &v22;
  }

  v18 = v17 + v5;
  *v18 = *" formatting argument";
  *(v18 + 4) = 1953391981;
  v19 = v5 + 20;
  if (SHIBYTE(v23) < 0)
  {
    *(&v22 + 1) = v5 + 20;
  }

  else
  {
    HIBYTE(v23) = v19 & 0x7F;
  }

  v16 = v17 + v19;
  goto LABEL_27;
}

void sub_297A6C3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "sign");
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "alternate form");
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "zero-padding");
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "precision");
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "locale-specific form");
  }

  v4 = *(result + 1);
  if (!*(result + 1))
  {
    if (a4)
    {
      return result;
    }

LABEL_16:
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a3);
  }

  if (v4 >= 0x20)
  {
    std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
  }

  if (((1 << v4) & a4) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  v41.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v41.__r_.__value_.__r.__words[1] = xmmword_297DCA3C0;
  strcpy(v41.__r_.__value_.__l.__data_, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v41, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
    v8 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 - v42.__r_.__value_.__l.__size_ < 0x14)
    {
      v9 = 0x7FFFFFFFFFFFFFF7;
      v10 = v42.__r_.__value_.__l.__size_ + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v42.__r_.__value_.__l.__size_ + 20 - v8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v42.__r_.__value_.__r.__words[0];
      if (v8 >= 0x3FFFFFFFFFFFFFF3)
      {
        v14 = 0;
LABEL_16:
        v15 = operator new(v9);
        v16 = v15;
        if (size)
        {
          memmove(v15, v11, size);
        }

        v17 = v16 + size;
        *v17 = *" does not allow the ";
        *(v17 + 16) = 543516788;
        if (!v14)
        {
          operator delete(v11);
        }

        v42.__r_.__value_.__l.__size_ = v10;
        v42.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
        v42.__r_.__value_.__r.__words[0] = v16;
        v18 = (v16 + v10);
LABEL_27:
        *v18 = 0;
        v43 = v42;
        memset(&v42, 0, sizeof(v42));
        v22 = strlen(a2);
        v23 = std::string::append(&v43, a2, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v45 = v23->__r_.__value_.__r.__words[2];
        v44 = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = SHIBYTE(v45);
        if ((SHIBYTE(v45) & 0x8000000000000000) != 0)
        {
          v25 = *(&v44 + 1);
          v26 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v26 - *(&v44 + 1) < 7)
          {
            v27 = 0x7FFFFFFFFFFFFFF7;
            v28 = *(&v44 + 1) + 7;
            if (0x7FFFFFFFFFFFFFF7 - (v45 & 0x7FFFFFFFFFFFFFFFLL) < *(&v44 + 1) + 7 - v26)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v29 = v44;
            if (v26 >= 0x3FFFFFFFFFFFFFF3)
            {
              v32 = 0;
LABEL_42:
              v33 = operator new(v27);
              v34 = v33;
              if (v25)
              {
                memmove(v33, v29, v25);
              }

              v35 = &v34[v25];
              *(v35 + 3) = 1852795252;
              *v35 = 1953525536;
              if (!v32)
              {
                operator delete(v29);
              }

              *(&v44 + 1) = v28;
              v45 = v27 | 0x8000000000000000;
              *&v44 = v34;
              v36 = &v34[v28];
LABEL_55:
              *v36 = 0;
              v47 = v45;
              v46 = v44;
              v45 = 0;
              v44 = 0uLL;
              if (v47 >= 0)
              {
                v40 = &v46;
              }

              else
              {
                v40 = v46;
              }

              std::__throw_format_error[abi:ne200100](v40);
            }

LABEL_33:
            v30 = 2 * v26;
            if (v28 > 2 * v26)
            {
              v30 = v28;
            }

            if ((v30 | 7) == 0x17)
            {
              v31 = 25;
            }

            else
            {
              v31 = (v30 | 7) + 1;
            }

            if (v30 >= 0x17)
            {
              v27 = v31;
            }

            else
            {
              v27 = 23;
            }

            v32 = v26 == 22;
            goto LABEL_42;
          }

          v37 = v44;
        }

        else
        {
          if ((SHIBYTE(v45) - 16) < 7)
          {
            v28 = SHIBYTE(v45) + 7;
            v29 = &v44;
            v26 = 22;
            goto LABEL_33;
          }

          v37 = &v44;
        }

        v38 = (v37 + v25);
        *(v38 + 3) = 1852795252;
        *v38 = 1953525536;
        v39 = v25 + 7;
        if (SHIBYTE(v45) < 0)
        {
          *(&v44 + 1) = v25 + 7;
        }

        else
        {
          HIBYTE(v45) = v39 & 0x7F;
        }

        v36 = v37 + v39;
        goto LABEL_55;
      }

LABEL_7:
      v12 = 2 * v8;
      if (v10 > 2 * v8)
      {
        v12 = v10;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v9 = v13;
      }

      else
      {
        v9 = 23;
      }

      v14 = v8 == 22;
      goto LABEL_16;
    }

    v19 = v42.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) - 3) < 0x14)
    {
      v10 = SHIBYTE(v42.__r_.__value_.__r.__words[2]) + 20;
      v11 = &v42;
      v8 = 22;
      goto LABEL_7;
    }

    v19 = &v42;
  }

  v20 = v19 + size;
  *v20 = *" does not allow the ";
  *(v20 + 4) = 543516788;
  v21 = size + 20;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    v42.__r_.__value_.__l.__size_ = size + 20;
  }

  else
  {
    *(&v42.__r_.__value_.__s + 23) = v21 & 0x7F;
  }

  v18 = v19 + v21;
  goto LABEL_27;
}

void sub_297A6C90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(a30);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(a10);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

uint64_t std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      MEMORY[0x29C27AC20](__p);
      v12 = (a2 + 32);
      if (*(a2 + 40) == 1)
      {
        std::locale::operator=(v12, __p);
      }

      else
      {
        std::locale::locale(v12, __p);
        *(a2 + 40) = 1;
      }

      std::locale::~locale(__p);
    }

    std::locale::locale(&v19, (a2 + 32));
    v13 = std::locale::use_facet(&v19, MEMORY[0x29EDC93F8]);
    std::locale::~locale(&v19);
    memset(__p, 170, sizeof(__p));
    v14 = v13->__vftable;
    if (a1)
    {
      (v14[2].~facet)(__p, v13);
    }

    else
    {
      (v14[2].~facet_0)(__p, v13);
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v16 = HIBYTE(__p[2]);
    }

    else
    {
      v16 = __p[1];
    }

    result = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v16, *a2, a3, a4);
    if (SHIBYTE(__p[2]) < 0)
    {
      v17 = result;
      operator delete(__p[0]);
      return v17;
    }
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v8, v9, a3, a4, v8);
  }

  return result;
}

void sub_297A6CBA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v27[23] = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) != 0)
  {
    v9 = *(a1 + 1);
    v10 = a2[1];
    if (v10 <= v9)
    {
      LOBYTE(v11) = 0;
    }

    else if (v10 > 0xC)
    {
      v13 = a2[2] + 32 * v9;
      v9 = *v13;
      v2 = *(v13 + 8);
      LOBYTE(v11) = *(v13 + 16);
      v23[0] = *(v13 + 17);
      *(v23 + 7) = *(v13 + 24);
    }

    else
    {
      v11 = (a2[3] >> (5 * v9)) & 0x1FLL;
      v12 = (a2[2] + 16 * v9);
      v9 = *v12;
      v2 = v12[1];
    }

    v24 = v9;
    v25 = v2;
    v26 = v11;
    *v27 = v23[0];
    *&v27[7] = *(v23 + 7);
    v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v22, &v24);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
LABEL_3:
      v8 = *(a1 + 2);
      goto LABEL_16;
    }
  }

  v14 = *(a1 + 2);
  v15 = a2[1];
  if (v15 <= v14)
  {
    LOBYTE(v16) = 0;
  }

  else if (v15 > 0xC)
  {
    v18 = a2[2] + 32 * v14;
    v14 = *v18;
    v2 = *(v18 + 8);
    LOBYTE(v16) = *(v18 + 16);
    v23[0] = *(v18 + 17);
    *(v23 + 7) = *(v18 + 24);
  }

  else
  {
    v16 = (a2[3] >> (5 * v14)) & 0x1FLL;
    v17 = (a2[2] + 16 * v14);
    v14 = *v17;
    v2 = v17[1];
  }

  v24 = v14;
  v25 = v2;
  v26 = v16;
  *v27 = v23[0];
  *&v27[7] = *(v23 + 7);
  v8 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v22, &v24);
LABEL_16:
  v19 = *MEMORY[0x29EDCA608];
  v20 = v8 | (*(a1 + 3) << 32);
  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v15[5] = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v14[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v7;
    *v14 = v7;
    v12 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v15;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, &v13, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 7) = -1431655766;
    v12 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &v13 + 11;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 7) = -1431655766;
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, &v13, &v13 + 11, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *(&v13 + 5) = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, &v13, &v13 + 13, v5, 8u);
LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = __src;
  v7 = HIDWORD(a4);
  if (a4 <= 0)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), v6, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      v6 += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  if (a2)
  {
    if (*__src < 0)
    {
      v11 = a4;
      v12 = a5;
    }

    else
    {
      v8 = 0;
      v9 = &__src[v7];
      __src = &__src[v7 - 1];
      while (1)
      {
        if (a2 - 1 == v8)
        {
          v19 = a2;
          goto LABEL_36;
        }

        if (v7 - 1 == v8)
        {
          break;
        }

        v10 = v6[++v8];
        if (v10 < 0)
        {
          v11 = a4;
          v12 = a5;
          v7 = v7 - v8 + 1;
          __src = &v6[v8 - 1];
          goto LABEL_21;
        }
      }

      if ((*v9 & 0x80000000) == 0)
      {
        v19 = HIDWORD(a4);
        goto LABEL_36;
      }

      v11 = a4;
      v12 = a5;
      v7 = 1;
    }

LABEL_21:
    v20 = (__src - v6);
    v21 = a2;
    v22 = std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(__src, &v6[a2], v7, 1);
    a2 = v21;
    v19 = &v20[v22];
    a5 = v12;
    a4 = v11;
  }

  else
  {
    v19 = 0;
  }

LABEL_36:

  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v6, a2, a3, a4, a5, v19);
}

uint64_t std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), __src, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      __src += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v27 = v9 >> 1;
      v9 -= v9 >> 1;
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v27, SHIDWORD(a5));
      v12 = *(v11 + 32);
      if (v12)
      {
        goto LABEL_18;
      }

LABEL_41:
      v21 = a2;
      goto LABEL_42;
    }

LABEL_17:
    v9 = 0;
    v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - a6, SHIDWORD(a5));
    v12 = *(v11 + 32);
    if (v12)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  if ((a4 & 7) == 0)
  {
    goto LABEL_17;
  }

  v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
  v12 = *(v11 + 32);
  if (!v12)
  {
    goto LABEL_41;
  }

LABEL_18:
  v20 = *v12;
  v19 = v12[1];
  if (*v12 - v19 >= a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = *v12 - v19;
  }

  v12[1] = v19 + a2;
  if (v20 > v19 && v21 != 0)
  {
LABEL_42:
    v28 = *(v11 + 16);
    do
    {
      v29 = *(v11 + 8) - v28;
      if (v29 < v21 + 1)
      {
        (*(v11 + 24))(v11, v21 + 2);
        v28 = *(v11 + 16);
        v29 = *(v11 + 8) - v28;
      }

      if (v29 >= v21)
      {
        v30 = v21;
      }

      else
      {
        v30 = v29;
      }

      if (v30)
      {
        memmove((*v11 + v28), __src, v30);
        v28 = *(v11 + 16);
      }

      v28 += v30;
      *(v11 + 16) = v28;
      __src += v30;
      v24 = v21 > v29;
      v21 -= v30;
    }

    while (v24);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v9, v10);
}

uint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v105 = a2;
  memset(v106, 170, sizeof(v106));
  v104 = a1;
  v7 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v104);
  v8 = v7 & 0x7FFFFFFF;
  LODWORD(v106[0]) = v7 & 0x7FFFFFFF;
  v9 = (v7 << 11) | 0x7FF;
  v10 = 1496;
  v11 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v12 = v10 >> 1;
    v13 = &v11[v10 >> 1];
    v15 = *v13;
    v14 = v13 + 1;
    v10 += ~(v10 >> 1);
    if (v9 >= v15)
    {
      v11 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  while (v10);
  if (v11 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100] || (v16 = *(v11 - 1), ((v16 >> 4) & 0x7F) + (v16 >> 11) < v8))
  {
    BYTE4(v106[0]) = 16;
    v106[1] = 0;
    LODWORD(v106[2]) = 0;
  }

  else
  {
    v26 = v16 & 0xF;
    BYTE4(v106[0]) = v26;
    v106[1] = 0;
    LODWORD(v106[2]) = 0;
    if (v26 == 9)
    {
      v25 = 3;
      goto LABEL_25;
    }

    if (v26 == 3)
    {
      v25 = 2;
      goto LABEL_25;
    }
  }

  v17 = 201;
  v18 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v19 = v17 >> 1;
    v20 = &v18[v17 >> 1];
    v22 = *v20;
    v21 = v20 + 1;
    v17 += ~(v17 >> 1);
    if (v9 >= v22)
    {
      v18 = v21;
    }

    else
    {
      v17 = v19;
    }
  }

  while (v17);
  if (v18 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v23 = *(v18 - 1);
    v24 = (v23 & 3) == 0 && ((v23 >> 2) & 0x1FF) + (v23 >> 11) >= v8;
    if (v24)
    {
      v25 = 1;
LABEL_25:
      LODWORD(v106[1]) = v25;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  if (v104 != v105)
  {
    v101 = a2;
    v102 = a3;
    v27 = 0;
LABEL_35:
    v31 = v8;
    while (1)
    {
      v32 = v104;
      if (v104 == v105)
      {
LABEL_75:
        if (v31 - 262142 < 0xFFFC1102)
        {
          goto LABEL_29;
        }

        v55 = &std::__width_estimation_table::__entries[abi:ne200100];
        v56 = 107;
        do
        {
          v57 = v56 >> 1;
          v58 = &v55[v56 >> 1];
          v60 = *v58;
          v59 = v58 + 1;
          v56 += ~(v56 >> 1);
          if (((v31 << 14) | 0x3FFF) >= v60)
          {
            v55 = v59;
          }

          else
          {
            v56 = v57;
          }
        }

        while (v56);
        if (v55 == &std::__width_estimation_table::__entries[abi:ne200100])
        {
LABEL_29:
          v28 = v27 + 1;
          v29 = v102;
          if (a4)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v24 = (*(v55 - 1) & 0x3FFF) + (*(v55 - 1) >> 14) >= v31;
          v61 = 1;
          if (v24)
          {
            v61 = 2;
          }

          v28 = v61 + v27;
          v29 = v102;
          if (a4)
          {
LABEL_31:
            v30 = v32 == v101 || v28 > v29;
            v27 = v28;
            if (v30)
            {
              return v27;
            }

            goto LABEL_35;
          }
        }

        if (v28 <= v29)
        {
          goto LABEL_31;
        }

        return v27;
      }

      v33 = (__clz(*v104 ^ 0xFF) - 24);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          if (v105 - v104 >= 3)
          {
            v41 = (v104[1] & 0xC0) == 128;
            if ((v104[1] & 0xC0) == 0x80)
            {
              v41 = (v104[2] & 0xC0) == 128;
            }

            if (v41)
            {
              ++v104;
              v42 = *v32 & 0xF;
              v104 = v32 + 2;
              v43 = (v42 << 12) | ((v32[1] & 0x3F) << 6);
              v104 = v32 + 3;
              v36 = -2147418115;
              if (v43 >= 0x800)
              {
                v36 = v43 | v32[2] & 0x3F;
                if ((v43 & 0xF800) == 0xD800)
                {
                  v36 = -2147418115;
                }
              }

              goto LABEL_64;
            }
          }
        }

        else if (v33 == 4 && v105 - v104 >= 4)
        {
          v37 = (v104[1] & 0xC0) == 128;
          if ((v104[1] & 0xC0) == 0x80)
          {
            v37 = (v104[2] & 0xC0) == 128;
            if ((v104[2] & 0xC0) == 0x80)
            {
              v37 = (v104[3] & 0xC0) == 128;
            }
          }

          if (v37)
          {
            ++v104;
            v38 = *v32 & 7;
            v104 = v32 + 2;
            v39 = (v38 << 12) | ((v32[1] & 0x3F) << 6);
            v104 = v32 + 3;
            v40 = v32[2];
            v104 = v32 + 4;
            v36 = -2147418115;
            if (v39 >= 0x400)
            {
              v36 = v32[3] & 0x3F | ((v39 | v40 & 0x3F) << 6);
              if (v39 >> 10 >= 0x11)
              {
                v36 = -2147418115;
              }
            }

            goto LABEL_64;
          }
        }
      }

      else
      {
        if (!v33)
        {
          ++v104;
          v36 = *v32;
          goto LABEL_64;
        }

        if (v33 == 2 && v105 - v104 >= 2)
        {
          v34 = v104 + 1;
          if ((v104[1] & 0xC0) == 0x80)
          {
            ++v104;
            v35 = *v32 & 0x1F;
            v104 = v32 + 2;
            v36 = -2147418115;
            if (v35 >= 2)
            {
              v36 = *v34 & 0x3F | (v35 << 6);
            }

            goto LABEL_64;
          }
        }
      }

      ++v104;
      v36 = -2147418115;
LABEL_64:
      v44 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
      v45 = 1496;
      do
      {
        v46 = v45 >> 1;
        v47 = &v44[v45 >> 1];
        v49 = *v47;
        v48 = v47 + 1;
        v45 += ~(v45 >> 1);
        if (((v36 << 11) | 0x7FFu) >= v49)
        {
          v44 = v48;
        }

        else
        {
          v45 = v46;
        }
      }

      while (v45);
      v8 = v36 & 0x7FFFFFFF;
      if (v44 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
      {
        v53 = 16;
      }

      else
      {
        v50 = *(v44 - 1);
        v51 = ((v50 >> 4) & 0x7F) + (v50 >> 11);
        v52 = v50 & 0xF;
        if (v51 >= v8)
        {
          v53 = v52;
        }

        else
        {
          v53 = 16;
        }
      }

      v54 = std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](v106, v8, v53);
      LODWORD(v106[0]) = v8;
      BYTE4(v106[0]) = v53;
      if (v54)
      {
        goto LABEL_75;
      }
    }
  }

  if (v8 - 262142 >= 0xFFFC1102)
  {
    v63 = (v7 << 14) | 0x3FFF;
    if (a4)
    {
      if (v104 == a2)
      {
        v79 = 107;
        v80 = &std::__width_estimation_table::__entries[abi:ne200100];
        do
        {
          v81 = v79 >> 1;
          v82 = &v80[v79 >> 1];
          v84 = *v82;
          v83 = v82 + 1;
          v79 += ~(v79 >> 1);
          if (v63 >= v84)
          {
            v80 = v83;
          }

          else
          {
            v79 = v81;
          }
        }

        while (v79);
        if (v80 == &std::__width_estimation_table::__entries[abi:ne200100])
        {
          return 1;
        }

        else if ((*(v80 - 1) & 0x3FFFu) + (*(v80 - 1) >> 14) < v8)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        v27 = 0;
        do
        {
          while (1)
          {
            v64 = &std::__width_estimation_table::__entries[abi:ne200100];
            v65 = 107;
            do
            {
              v66 = v65 >> 1;
              v67 = &v64[v65 >> 1];
              v69 = *v67;
              v68 = v67 + 1;
              v65 += ~(v65 >> 1);
              if (v63 >= v69)
              {
                v64 = v68;
              }

              else
              {
                v65 = v66;
              }
            }

            while (v65);
            if (v64 != &std::__width_estimation_table::__entries[abi:ne200100])
            {
              break;
            }

            if (++v27 > a3)
            {
              return v27;
            }
          }

          if ((*(v64 - 1) & 0x3FFFu) + (*(v64 - 1) >> 14) < v8)
          {
            v70 = 1;
          }

          else
          {
            v70 = 2;
          }

          v27 += v70;
        }

        while (v27 <= a3);
      }
    }

    else if (v104 == a2)
    {
      v92 = 107;
      v93 = &std::__width_estimation_table::__entries[abi:ne200100];
      do
      {
        v94 = v92 >> 1;
        v95 = &v93[v92 >> 1];
        v97 = *v95;
        v96 = v95 + 1;
        v92 += ~(v92 >> 1);
        if (v63 >= v97)
        {
          v93 = v96;
        }

        else
        {
          v92 = v94;
        }
      }

      while (v92);
      if (v93 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
        v98 = 1;
      }

      else
      {
        v98 = 1;
        if ((*(v93 - 1) & 0x3FFFu) + (*(v93 - 1) >> 14) >= v8)
        {
          v98 = 2;
        }
      }

      if (v98 <= a3)
      {
        return v98;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v71 = 0;
      do
      {
        while (1)
        {
          v27 = v71;
          v72 = &std::__width_estimation_table::__entries[abi:ne200100];
          v73 = 107;
          do
          {
            v74 = v73 >> 1;
            v75 = &v72[v73 >> 1];
            v77 = *v75;
            v76 = v75 + 1;
            v73 += ~(v73 >> 1);
            if (v63 >= v77)
            {
              v72 = v76;
            }

            else
            {
              v73 = v74;
            }
          }

          while (v73);
          if (v72 != &std::__width_estimation_table::__entries[abi:ne200100])
          {
            break;
          }

          v71 = v27 + 1;
          if (v27 + 1 > a3)
          {
            return v27;
          }
        }

        if ((*(v72 - 1) & 0x3FFFu) + (*(v72 - 1) >> 14) < v8)
        {
          v78 = 1;
        }

        else
        {
          v78 = 2;
        }

        v71 = v78 + v27;
      }

      while (v71 <= a3);
    }
  }

  else
  {
    v27 = a4 != 0 || a3 != 0;
    if ((a4 != 0 || a3 != 0) && v104 != a2)
    {
      if (a4)
      {
        if (a3 + 1 > 1)
        {
          return a3 + 1;
        }

        else
        {
          return 1;
        }
      }

      if (a3 <= 1)
      {
        v85 = 1;
      }

      else
      {
        v85 = a3;
      }

      v24 = v85 != 0;
      v86 = v85 - 1;
      if (__PAIR128__(v24 - 1, v86) >= a3)
      {
        v86 = a3;
      }

      if (v86 && (a3 <= 1 ? (v87 = 1) : (v87 = a3), (v24 = v87 != 0, v88 = v87 - 1, __PAIR128__(v24 - 1, v88) >= a3) ? (v89 = a3) : (v89 = v88), (~v89 & 0xFFFFFFFFFFFFFFFELL) != 0))
      {
        v99 = v86 + 1;
        v27 = (v86 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v90 = (v86 + 1) | 1;
        v100 = v27;
        do
        {
          v100 -= 2;
        }

        while (v100);
        if (v99 == v27)
        {
          return v27;
        }
      }

      else
      {
        v90 = 1;
      }

      do
      {
        v91 = v90 + 1;
        if (v90 > a3)
        {
          break;
        }

        ++v90;
      }

      while (v91 <= a3);
      return v91 - 1;
    }
  }

  return v27;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v6 = *(a1 + 12);
      if (v6 != 2)
      {
        if (v6 == 1)
        {
          if (a3 == 2)
          {
            return 0;
          }

          if (a3 != 13)
          {
LABEL_45:
            *(a1 + 8) = 0;
            v4 = *(a1 + 4);
            if (a3 == 5 && !*(a1 + 4))
            {
              return 0;
            }

            if ((v4 > 5 || ((1 << v4) & 0x23) == 0) && (a3 > 5 || ((1 << a3) & 0x23) == 0))
            {
              if (*(a1 + 4) <= 6u)
              {
                if (v4 != 4)
                {
LABEL_14:
                  if (v4 != 6)
                  {
LABEL_78:
                    if ((a3 != 11 || v4 != 11) && (a3 > 0xD || ((1 << a3) & 0x2404) == 0) && v4 != 8)
                    {
                      goto LABEL_74;
                    }

                    return 0;
                  }

LABEL_69:
                  if ((a3 - 11) < 2u)
                  {
                    return 0;
                  }

                  goto LABEL_78;
                }

                goto LABEL_53;
              }

LABEL_67:
              if (v4 != 7)
              {
                if (v4 != 12)
                {
                  goto LABEL_78;
                }

                goto LABEL_69;
              }

              v10 = a3 - 2;
              if (a3 - 2 >= 0xC)
              {
LABEL_74:
                if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
                {
                  v16 = 1;
                  v17 = 16;
                  v15 = a1;
                  goto LABEL_91;
                }

                v15 = a1;
                if (a3 == 9)
                {
                  *(a1 + 8) = 3;
                  return 1;
                }

                if (a3 == 3)
                {
                  v16 = 2;
                  v17 = 12;
LABEL_91:
                  *(v15 + 8) = v16;
                  *(v15 + v17) = 0;
                  return 1;
                }

                return 1;
              }

              v11 = 2817;
LABEL_73:
              if ((v11 >> v10))
              {
                return 0;
              }

              goto LABEL_74;
            }

            return 1;
          }
        }

        else if (a3 != 13)
        {
          if (a3 == 2)
          {
            *(a1 + 12) = 1;
            return 0;
          }

          goto LABEL_45;
        }

        *(a1 + 12) = 2;
        return 0;
      }

      if (a3 == 3)
      {
        *(a1 + 12) = 0;
        return 0;
      }

      *(a1 + 8) = 0;
      v12 = *(a1 + 4);
      if (a3 == 5 && !*(a1 + 4))
      {
        return 0;
      }

      if (v12 <= 5 && ((1 << v12) & 0x23) != 0 || a3 <= 5 && ((1 << a3) & 0x23) != 0)
      {
        return 1;
      }

      if (*(a1 + 4) > 6u)
      {
        if (v12 != 7)
        {
          if (v12 != 12)
          {
            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v25 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v26 = 2817;
          goto LABEL_122;
        }
      }

      else
      {
        if (v12 != 4)
        {
          if (v12 != 6)
          {
LABEL_114:
            if (a3 == 11 && v12 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v12 == 8)
            {
              return 0;
            }

            goto LABEL_123;
          }

LABEL_107:
          if ((a3 - 11) < 2u)
          {
            return 0;
          }

          goto LABEL_114;
        }

        v25 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v26 = 3381;
LABEL_122:
          if ((v26 >> v25))
          {
            return 0;
          }
        }
      }

LABEL_123:
      if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
      {
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        return 1;
      }

      if (a3 == 9)
      {
        *(a1 + 8) = 3;
        return 1;
      }

      return 1;
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }

    v8 = *(a1 + 4);
    if (a3 == 5 && !*(a1 + 4))
    {
      return 0;
    }

    v9 = v8 > 5 || ((1 << v8) & 0x23) == 0;
    if (!v9 || a3 <= 5 && ((1 << a3) & 0x23) != 0)
    {
      return 1;
    }

    if (*(a1 + 4) > 6u)
    {
      if (v8 != 7)
      {
        if (v8 != 12)
        {
          goto LABEL_92;
        }

        goto LABEL_86;
      }

      v18 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_102;
      }

      v19 = 2817;
    }

    else
    {
      if (v8 != 4)
      {
        if (v8 != 6)
        {
LABEL_92:
          if (a3 == 11 && v8 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v8 == 8)
          {
            return 0;
          }

          goto LABEL_102;
        }

LABEL_86:
        if ((a3 - 11) < 2u)
        {
          return 0;
        }

        goto LABEL_92;
      }

      v18 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_102;
      }

      v19 = 3381;
    }

    if ((v19 >> v18))
    {
      return 0;
    }

LABEL_102:
    if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
    {
      if (a3 != 3)
      {
        return 1;
      }

      v22 = a1;
      v23 = 2;
      v24 = 12;
    }

    else
    {
      v23 = 1;
      v24 = 16;
      v22 = a1;
    }

    *(v22 + 8) = v23;
    *(v22 + v24) = 0;
    return 1;
  }

  if (!v3)
  {
    v4 = *(a1 + 4);
    if (a3 == 5 && !*(a1 + 4))
    {
      return 0;
    }

    v5 = v4 > 5 || ((1 << v4) & 0x23) == 0;
    if (v5 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
    {
      if (*(a1 + 4) <= 6u)
      {
        if (v4 != 4)
        {
          goto LABEL_14;
        }

LABEL_53:
        v10 = a3 - 2;
        if (a3 - 2 >= 0xC)
        {
          goto LABEL_74;
        }

        v11 = 3381;
        goto LABEL_73;
      }

      goto LABEL_67;
    }

    return 1;
  }

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 201;
  v4 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v5 = v3 >> 1;
    v6 = &v4[v3 >> 1];
    v8 = *v6;
    v7 = v6 + 1;
    v3 += ~(v3 >> 1);
    if (((a2 << 11) | 0x7FF) >= v8)
    {
      v4 = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  while (v3);
  if (v4 == &std::__indic_conjunct_break::__entries[abi:ne200100] || ((v9 = *(v4 - 1), v10 = ((v9 >> 2) & 0x1FF) + (v9 >> 11), v11 = v9 & 3, v11 != 3) ? (v12 = v10 >= a2) : (v12 = 0), !v12))
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 4);
    if (a3 == 5 && !*(a1 + 4))
    {
      return 0;
    }

    if ((v13 > 5 || ((1 << v13) & 0x23) == 0) && (a3 > 5 || ((1 << a3) & 0x23) == 0))
    {
      if (*(a1 + 4) > 6u)
      {
        if (v13 != 7)
        {
          if (v13 != 12)
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        v16 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v17 = 2817;
          goto LABEL_53;
        }
      }

      else
      {
        if (v13 != 4)
        {
          if (v13 != 6)
          {
            goto LABEL_45;
          }

LABEL_41:
          if ((a3 - 11) >= 2u)
          {
LABEL_45:
            if (a3 == 11 && v13 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v13 == 8)
            {
              return 0;
            }

            goto LABEL_54;
          }

          return 0;
        }

        v16 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v17 = 3381;
LABEL_53:
          if ((v17 >> v16))
          {
            return 0;
          }
        }
      }

LABEL_54:
      if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
      {
        v21 = 1;
        v22 = 16;
        v20 = a1;
        goto LABEL_59;
      }

      v20 = a1;
      if (a3 == 9)
      {
        *(a1 + 8) = 3;
      }

      else if (a3 == 3)
      {
        v21 = 2;
        v22 = 12;
LABEL_59:
        *(v20 + 8) = v21;
        *(v20 + v22) = 0;
        return 1;
      }

      return 1;
    }

    return 1;
  }

  if (*(a1 + 16))
  {
    if ((v11 - 1) >= 2)
    {
      *(a1 + 16) = 0;
      return 0;
    }

    return 0;
  }

  if (v11 == 1)
  {
    return 0;
  }

  if (v11 == 2)
  {
    *(a1 + 16) = 1;
    return 0;
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  if (v15 <= 5 && ((1 << v15) & 0x23) != 0 || a3 <= 5 && ((1 << a3) & 0x23) != 0)
  {
    return 1;
  }

  if (*(a1 + 4) > 6u)
  {
    if (v15 != 7)
    {
      if (v15 != 12)
      {
        goto LABEL_68;
      }

      goto LABEL_64;
    }

    v23 = a3 - 2;
    if (a3 - 2 >= 0xC)
    {
      goto LABEL_77;
    }

    v24 = 2817;
  }

  else
  {
    if (v15 != 4)
    {
      if (v15 != 6)
      {
LABEL_68:
        if (a3 == 11 && v15 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v15 == 8)
        {
          return 0;
        }

        goto LABEL_77;
      }

LABEL_64:
      if ((a3 - 11) < 2u)
      {
        return 0;
      }

      goto LABEL_68;
    }

    v23 = a3 - 2;
    if (a3 - 2 >= 0xC)
    {
      goto LABEL_77;
    }

    v24 = 3381;
  }

  if ((v24 >> v23))
  {
    return 0;
  }

LABEL_77:
  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
  {
    v27 = 1;
    v28 = 16;
LABEL_82:
    *(a1 + 8) = v27;
    *(a1 + v28) = 0;
    return 1;
  }

  if (a3 != 9)
  {
    if (a3 != 3)
    {
      return 1;
    }

    v27 = 2;
    v28 = 12;
    goto LABEL_82;
  }

  *(a1 + 8) = 3;
  return 1;
}

uint64_t std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, size_t a2, int __c)
{
  v4 = a2;
  __src = __c;
  v6 = __clz(~__c) - 24;
  if (v6)
  {
    if (a2)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = *(a1 + 32);
        v10 = v8;
        if (!v9 || ((v12 = *v9, v11 = v9[1], *v9 - v11 >= v8) ? (v10 = v8) : (v10 = *v9 - v11), v9[1] = v11 + v8, v12 > v11))
        {
          v13 = *(a1 + 16);
          p_src = &__src;
          do
          {
            v16 = *(a1 + 8) - v13;
            if (v16 < v10 + 1)
            {
              (*(a1 + 24))(a1, v10 + 2);
              v13 = *(a1 + 16);
              v16 = *(a1 + 8) - v13;
            }

            if (v16 >= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              memcpy((*a1 + v13), p_src, v17);
              v13 = *(a1 + 16);
            }

            v13 += v17;
            *(a1 + 16) = v13;
            p_src = (p_src + v17);
            v15 = v10 > v16;
            v10 -= v17;
          }

          while (v15);
        }

        ++v7;
      }

      while (v7 != v4);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      goto LABEL_29;
    }

    v20 = *v18;
    v19 = v18[1];
    if (*v18 - v19 < a2)
    {
      v4 = *v18 - v19;
    }

    v18[1] = v19 + a2;
    if (v20 > v19 && v4 != 0)
    {
LABEL_29:
      v23 = *(a1 + 16);
      do
      {
        v24 = *(a1 + 8) - v23;
        if (v24 < v4 + 1)
        {
          (*(a1 + 24))(a1, v4 + 2);
          v23 = *(a1 + 16);
          v24 = *(a1 + 8) - v23;
        }

        if (v24 >= v4)
        {
          v25 = v4;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          memset((*a1 + v23), __c, v25);
          v23 = *(a1 + 16);
        }

        v23 += v25;
        *(a1 + 16) = v23;
        v15 = v4 > v24;
        v4 -= v25;
      }

      while (v15);
    }
  }

  return a1;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_12;
    case 4:
      result = *a2;
      if ((*a2 & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v10 = a3;
  v12 = a3;
  if (a5)
  {
    v13 = 45;
LABEL_7:
    *a6 = v13;
    v15 = a6 + 1;
    goto LABEL_8;
  }

  v14 = (a3 >> 3) & 3;
  if (v14 == 2)
  {
    v13 = 43;
    goto LABEL_7;
  }

  v15 = a6;
  if (v14 == 3)
  {
    v13 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v16 = *a8;
      if (*a8)
      {
        v17 = a8 + 1;
        do
        {
          *v15 = v16;
          v15 = (v15 + 1);
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }
    }
  }

  v19 = std::__to_chars_integral[abi:ne200100]<unsigned int>(v15, a7, a1, a9);
  v87 = v10;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C27AC20](v93);
    v20 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v20, v93);
    }

    else
    {
      std::locale::locale(v20, v93);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v93);
  }

  std::locale::locale(&v90, (a2 + 32));
  v21 = std::locale::use_facet(&v90, MEMORY[0x29EDC93F8]);
  v22 = v19 - v15;
  std::locale::~locale(&v90);
  memset(v93, 170, sizeof(v93));
  (v21->__vftable[1].__on_zero_shared)(v93, v21);
  if ((SHIBYTE(v93[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v93[0].__locale_;
    v24 = v93[1].__locale_;
    if (v93[1].__locale_ && v22 > *v93[0].__locale_)
    {
      v86 = v21;
      v25 = v93[0].__locale_;
      goto LABEL_26;
    }

    operator delete(v93[0].__locale_);
LABEL_67:
    v47 = v19;
    v48 = HIDWORD(v10);
    v49 = *a2;
    if ((v12 & 7) == 4)
    {
      v50 = v15 - v9;
      v51 = *(v49 + 32);
      v52 = v15 - v9;
      if (!v51 || ((v54 = *v51, v53 = v51[1], *v51 - v53 >= v50) ? (v52 = v15 - v9) : (v52 = *v51 - v53), (v51[1] = v53 + v50, v54 > v53) ? (v55 = v52 == 0) : (v55 = 1), !v55))
      {
        v63 = *(v49 + 16);
        do
        {
          v65 = *(v49 + 8) - v63;
          if (v65 < v52 + 1)
          {
            (*(v49 + 24))(v49, v52 + 2);
            v63 = *(v49 + 16);
            v65 = *(v49 + 8) - v63;
          }

          if (v65 >= v52)
          {
            v66 = v52;
          }

          else
          {
            v66 = v65;
          }

          if (v66)
          {
            memmove((*v49 + v63), v9, v66);
            v63 = *(v49 + 16);
          }

          v63 += v66;
          *(v49 + 16) = v63;
          v9 += v66;
          v64 = v52 > v65;
          v52 -= v66;
        }

        while (v64);
      }

      LODWORD(v10) = v87;
      v56 = a4;
      v57 = v87 & 0xF8 | 3;
      if (v48 >= v50)
      {
        v58 = v50;
      }

      else
      {
        v58 = v48;
      }

      v48 = (v48 - v58);
      v49 = *a2;
      v59 = 48;
    }

    else
    {
      v56 = a4;
      v59 = BYTE4(a4);
      v57 = v10;
      v15 = v9;
    }

    v60 = v48 << 32;
    v61 = v56 & 0xFFFFFF00FFFFFFFFLL | (v59 << 32);
    if ((v10 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47, v49, v10 & 0xFFFF0700 | v60 | v57, v61, std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47 - v15, v49, v60 | v10 & 0xFFFFFF00 | v57, v61, v47 - v15);
    }
  }

  if (!HIBYTE(v93[2].__locale_) || v22 <= SLOBYTE(v93[0].__locale_))
  {
    goto LABEL_67;
  }

  v86 = v21;
  locale = v93;
  v25 = v93[0].__locale_;
  v24 = v93[1].__locale_;
LABEL_26:
  v85 = *a2;
  v90.__locale_ = 0;
  v91 = 0;
  v92 = 0;
  v26 = v24 + v25;
  if (SHIBYTE(v93[2].__locale_) >= 0)
  {
    v27 = v93 + SHIBYTE(v93[2].__locale_);
  }

  else
  {
    v27 = v26;
  }

  v28 = *locale;
  v29 = *locale;
  v30 = v22 - v28;
  if (v22 <= v28)
  {
    v68 = 0;
    v67 = v29 + v30;
    v69 = v86;
    goto LABEL_99;
  }

  v84 = v19;
  v31 = v27 - 1;
  do
  {
    while (1)
    {
      v32 = HIBYTE(v92);
      if ((SHIBYTE(v92) & 0x80000000) == 0)
      {
        break;
      }

      v34 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v91 != v34)
      {
        v40 = v90.__locale_;
        v34 = v91;
        goto LABEL_56;
      }

      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v33 = v90.__locale_;
      v89 = locale;
      if (v34 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_38;
      }

      v38 = 0;
      v37 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
      v39 = operator new(v37);
      v40 = v39;
      if (v34)
      {
        memmove(v39, v33, v34);
      }

      if (!v38)
      {
        operator delete(v33);
      }

      v90.__locale_ = v40;
      v92 = v37 | 0x8000000000000000;
      locale = v89;
LABEL_56:
      v91 = v34 + 1;
      v42 = v40 + v34;
      *v42 = v29;
      v42[1] = 0;
      if (locale != v31)
      {
        goto LABEL_57;
      }

LABEL_31:
      v29 = *locale;
      v30 -= *locale;
      if (v30 <= 0)
      {
        goto LABEL_95;
      }
    }

    if (HIBYTE(v92) == 22)
    {
      v89 = locale;
      v33 = &v90;
      v34 = 22;
LABEL_38:
      if (v34 + 1 > 2 * v34)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 2 * v34;
      }

      if ((v35 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v35 | 7) + 1;
      }

      if (v35 >= 0x17)
      {
        v37 = v36;
      }

      else
      {
        v37 = 23;
      }

      v38 = v34 == 22;
      goto LABEL_48;
    }

    HIBYTE(v92) = (HIBYTE(v92) + 1) & 0x7F;
    v41 = &v90 + v32;
    *v41 = v29;
    v41[1] = 0;
    if (locale == v31)
    {
      goto LABEL_31;
    }

LABEL_57:
    v43 = (locale + 1);
    v44 = (locale + 1);
    do
    {
      v45 = *v44++;
      v29 = v45;
      if (v45)
      {
        v46 = 1;
      }

      else
      {
        v46 = v43 == v31;
      }

      v43 = v44;
    }

    while (!v46);
    locale = (v44 - 1);
    v30 -= v29;
  }

  while (v30 > 0);
LABEL_95:
  v67 = v29 + v30;
  if (SHIBYTE(v92) < 0)
  {
    v72 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    LODWORD(v19) = v84;
    v69 = v86;
    if (v91 == v72)
    {
      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v71 = v90.__locale_;
      v70 = v86;
      if (v72 >= 0x3FFFFFFFFFFFFFF3)
      {
        v77 = 0;
        v76 = 0x7FFFFFFFFFFFFFF7;
      }

      else
      {
LABEL_103:
        if (v72 + 1 > 2 * v72)
        {
          v74 = v72 + 1;
        }

        else
        {
          v74 = 2 * v72;
        }

        if ((v74 | 7) == 0x17)
        {
          v75 = 25;
        }

        else
        {
          v75 = (v74 | 7) + 1;
        }

        if (v74 >= 0x17)
        {
          v76 = v75;
        }

        else
        {
          v76 = 23;
        }

        v77 = v72 == 22;
      }

      v78 = v76;
      v79 = operator new(v76);
      v73 = v79;
      if (v72)
      {
        memmove(v79, v71, v72);
      }

      if (!v77)
      {
        operator delete(v71);
      }

      v90.__locale_ = v73;
      v92 = v78 | 0x8000000000000000;
      v69 = v70;
    }

    else
    {
      v73 = v90.__locale_;
      v72 = v91;
    }

    v91 = v72 + 1;
  }

  else
  {
    v68 = HIBYTE(v92);
    LODWORD(v19) = v84;
    v69 = v86;
    if (HIBYTE(v92) == 22)
    {
      v70 = v86;
      v71 = &v90;
      v72 = 22;
      goto LABEL_103;
    }

LABEL_99:
    v72 = v68;
    HIBYTE(v92) = (v68 + 1) & 0x7F;
    v73 = &v90;
  }

  v80 = v73 + v72;
  *v80 = v67;
  v80[1] = 0;
  v81 = (v69->__vftable[1].~facet_0)(v69);
  result = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v85, v9, v15, v19, &v90, v81, v87, a4);
  if (SHIBYTE(v92) < 0)
  {
    v82 = result;
    operator delete(v90.__locale_);
    result = v82;
  }

  if (SHIBYTE(v93[2].__locale_) < 0)
  {
    v83 = result;
    operator delete(v93[0].__locale_);
    return v83;
  }

  return result;
}

void sub_297A6EE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(uint64_t a1, _BYTE *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v10 = a3;
  v11 = __src;
  v12 = a1;
  v13 = HIDWORD(a7);
  v14 = a3 - __src;
  LODWORD(v15) = *(a5 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = a5[1];
  }

  v16 = a4 - __src - 1 + v15;
  v85 = HIDWORD(a8);
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v16)
    {
      v84 = 0;
      v29 = *(a1 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v28 = (a7 >> 32) - v16;
      if ((a7 & 7u) > 1)
      {
        if ((a7 & 7) != 3)
        {
          v84 = v28 - (v28 >> 1);
          v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v28 >> 1, SHIDWORD(a8));
          v29 = *(v12 + 32);
          if (!v29)
          {
            goto LABEL_121;
          }

          goto LABEL_56;
        }
      }

      else if ((a7 & 7) != 0)
      {
        v84 = (a7 >> 32) - v16;
        v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, 0, SHIDWORD(a8));
        v29 = *(v12 + 32);
        if (!v29)
        {
          goto LABEL_121;
        }

LABEL_56:
        v38 = *v29;
        v37 = v29[1];
        v39 = v37 + v14;
        if (*v29 - v37 < v14)
        {
          v14 = *v29 - v37;
        }

        v29[1] = v39;
        if (v38 <= v37 || v14 == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_121;
      }

      v84 = 0;
      v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, (a7 >> 32) - v16, SHIDWORD(a8));
      v29 = *(v12 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

LABEL_121:
    v80 = *(v12 + 16);
    do
    {
      v81 = *(v12 + 8) - v80;
      if (v81 < v14 + 1)
      {
        (*(v12 + 24))(v12, v14 + 2);
        v80 = *(v12 + 16);
        v81 = *(v12 + 8) - v80;
      }

      if (v81 >= v14)
      {
        v82 = v14;
      }

      else
      {
        v82 = v81;
      }

      if (v82)
      {
        memmove((*v12 + v80), v11, v82);
        v80 = *(v12 + 16);
      }

      v80 += v82;
      *(v12 + 16) = v80;
      v11 += v82;
      v31 = v14 > v81;
      v14 -= v82;
    }

    while (v31);
    goto LABEL_63;
  }

  v83 = a7;
  v17 = *(a1 + 32);
  if (!v17)
  {
    goto LABEL_28;
  }

  v19 = *v17;
  v18 = v17[1];
  v20 = v18 + v14;
  if (*v17 - v18 < v14)
  {
    v14 = *v17 - v18;
  }

  v17[1] = v20;
  if (v19 > v18 && v14 != 0)
  {
LABEL_28:
    v30 = *(a1 + 16);
    do
    {
      v32 = *(v12 + 8) - v30;
      if (v32 < v14 + 1)
      {
        (*(v12 + 24))(v12, v14 + 2);
        v30 = *(v12 + 16);
        v32 = *(v12 + 8) - v30;
      }

      if (v32 >= v14)
      {
        v33 = v14;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        memmove((*v12 + v30), v11, v33);
        v30 = *(v12 + 16);
      }

      v30 += v33;
      *(v12 + 16) = v30;
      v11 += v33;
      v31 = v14 > v32;
      v14 -= v33;
    }

    while (v31);
  }

  if (v13 <= v16)
  {
    v84 = 0;
    v8 = v83;
    goto LABEL_63;
  }

  v22 = v13 - v16;
  v23 = *(v12 + 32);
  if (!v23)
  {
    v26 = v13 - v16;
    v8 = v83;
    goto LABEL_45;
  }

  v25 = *v23;
  v24 = v23[1];
  if (*v23 - v24 >= v22)
  {
    v26 = v13 - v16;
  }

  else
  {
    v26 = *v23 - v24;
  }

  v23[1] = v24 + v22;
  v27 = v25 <= v24 || v26 == 0;
  v8 = v83;
  if (!v27)
  {
LABEL_45:
    v34 = *(v12 + 16);
    do
    {
      v35 = *(v12 + 8) - v34;
      if (v35 < v26 + 1)
      {
        (*(v12 + 24))(v12, v26 + 2);
        v34 = *(v12 + 16);
        v35 = *(v12 + 8) - v34;
      }

      if (v35 >= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = v35;
      }

      if (v36)
      {
        memset((*v12 + v34), 48, v36);
        v34 = *(v12 + 16);
      }

      v34 += v36;
      *(v12 + 16) = v34;
      v31 = v26 > v35;
      v26 -= v36;
    }

    while (v31);
  }

  v84 = 0;
LABEL_63:
  v41 = *(a5 + 23);
  v42 = v41;
  v43 = a5 + v41;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = (*a5 + a5[1]);
  }

  if (v42 >= 0)
  {
    v45 = a5;
  }

  else
  {
    v45 = *a5;
  }

  v46 = v45 + 1;
  v47 = v8 & 0xFF00;
  while (1)
  {
    v49 = v44 - 1;
    v48 = *(v44 - 1);
    if (v47 != 1792)
    {
      break;
    }

    v50 = &v10[v48];
    v51 = *(v12 + 32);
    if (!v51)
    {
      goto LABEL_94;
    }

    v53 = *v51;
    v52 = v51[1];
    v54 = v52 + v48;
    if (*v51 - v52 < v48)
    {
      v48 = *v51 - v52;
    }

    v51[1] = v54;
    if (v53 > v52 && v48 != 0)
    {
LABEL_94:
      v66 = *(v12 + 16);
      do
      {
        v67 = *(v12 + 8) - v66;
        if (v67 < v48 + 1)
        {
          (*(v12 + 24))(v12, v48 + 2);
          v66 = *(v12 + 16);
          v67 = *(v12 + 8) - v66;
        }

        if (v67 >= v48)
        {
          v68 = v48;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          v69 = (*v12 + v66);
          v70 = v68;
          v71 = v10;
          do
          {
            v73 = *v71++;
            v72 = v73;
            v74 = v73 - 32;
            if ((v73 - 97) < 6)
            {
              v72 = v74;
            }

            *v69++ = v72;
            --v70;
          }

          while (v70);
          v66 = *(v12 + 16);
        }

        v10 += v68;
        v66 += v68;
        *(v12 + 16) = v66;
        v31 = v48 > v67;
        v48 -= v68;
      }

      while (v31);
    }

    v10 = v50;
    if (v44 == v46)
    {
      goto LABEL_118;
    }

LABEL_90:
    v61 = *(v12 + 32);
    if (v61)
    {
      v63 = *v61;
      v62 = v61[1];
      v61[1] = v62 + 1;
      --v44;
      if (v62 >= v63)
      {
        continue;
      }
    }

    v64 = *v12;
    v65 = *(v12 + 16);
    *(v12 + 16) = v65 + 1;
    *(v64 + v65) = a6;
    v44 = v49;
    if (*(v12 + 16) == *(v12 + 8))
    {
      (*(v12 + 24))(v12, 2);
      v44 = v49;
    }
  }

  v56 = *(v12 + 32);
  if (!v56)
  {
    goto LABEL_108;
  }

  v58 = *v56;
  v57 = v56[1];
  v59 = v57 + v48;
  if (*v56 - v57 < v48)
  {
    v48 = *v56 - v57;
  }

  v56[1] = v59;
  if (v58 > v57 && v48 != 0)
  {
LABEL_108:
    v75 = *(v12 + 16);
    v76 = v10;
    do
    {
      v77 = *(v12 + 8) - v75;
      if (v77 < v48 + 1)
      {
        (*(v12 + 24))(v12, v48 + 2);
        v75 = *(v12 + 16);
        v77 = *(v12 + 8) - v75;
      }

      if (v77 >= v48)
      {
        v78 = v48;
      }

      else
      {
        v78 = v77;
      }

      if (v78)
      {
        memmove((*v12 + v75), v76, v78);
        v75 = *(v12 + 16);
      }

      v75 += v78;
      *(v12 + 16) = v75;
      v76 += v78;
      v31 = v48 > v77;
      v48 -= v78;
    }

    while (v31);
  }

  v10 += *v49;
  if (v44 != v46)
  {
    goto LABEL_90;
  }

LABEL_118:

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v12, v84, v85);
}