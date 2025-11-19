void sub_297CA6CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Dmf_Cnf::~Dmf_Cnf(mipc::sys::Dmf_Cnf *this)
{
  *this = &unk_2A1E80688;
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 13);
    v4 = *(this + 12);
    if (v3 != v2)
    {
      v5 = *(this + 13);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 12);
    }

    *(this + 13) = v2;
    operator delete(v4);
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
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(this + 63) < 0)
  {
LABEL_14:
    operator delete(*(this + 5));
  }

LABEL_15:
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
  *this = &unk_2A1E80688;
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 13);
    v4 = *(this + 12);
    if (v3 != v2)
    {
      v5 = *(this + 13);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 12);
    }

    *(this + 13) = v2;
    operator delete(v4);
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
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(this + 63) < 0)
  {
LABEL_14:
    operator delete(*(this + 5));
  }

LABEL_15:
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
  *this = &unk_2A1E80688;
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 13);
    v4 = *(this + 12);
    if (v3 != v2)
    {
      v5 = *(this + 13);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 12);
    }

    *(this + 13) = v2;
    operator delete(v4);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  *this = &unk_2A1E85968;
  v9 = *(this + 9);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*(this + 63) < 0)
  {
LABEL_14:
    operator delete(*(this + 5));
  }

LABEL_15:
  v10 = *(this + 3);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = this;
  }

  else
  {
    v11 = this;
  }

  operator delete(v11);
}

uint64_t mipc::sys::Dmf_Cnf::getSize(mipc::sys::Dmf_Cnf *this)
{
  v1 = *(this + 6);
  v2 = *(this + 13);
  v3 = *(this + 12);
  if (v3 != v2)
  {
    v4 = 16;
    while (1)
    {
      v5 = v3[1] - *v3;
      if ((v5 + 4) >> 16)
      {
        break;
      }

      v4 += (v5 + 11) & 0xFFF8;
      v3 += 3;
      if (v3 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  v4 = 0;
LABEL_7:
  v6 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v6 = 32;
  }

  return v6 + 8 * (*(this + 11) != 0) + v4;
}

double mipc::sys::Set_Md_Log_Flush_Interval_Req::Set_Md_Log_Flush_Interval_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 119;
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
  *a1 = &unk_2A1E806D0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 119;
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
  *a1 = &unk_2A1E806D0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sys::Set_Md_Log_Flush_Interval_Req::~Set_Md_Log_Flush_Interval_Req(mipc::sys::Set_Md_Log_Flush_Interval_Req *this)
{
  *this = &unk_2A1E806D0;
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
  *this = &unk_2A1E806D0;
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
  *this = &unk_2A1E806D0;
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

void mipc::sys::Set_Md_Log_Flush_Interval_Req::serialize(mipc::sys::Set_Md_Log_Flush_Interval_Req *this@<X0>, uint64_t a2@<X8>)
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
    *v25 = 256;
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
  mipc::Message::handle<(mipc::Error::Type)1>(this, v9, 0x100u, &v28, "", 0, &v19);
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

void sub_297CA7AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sys::Set_Md_Log_Flush_Interval_Req::getSize(mipc::sys::Set_Md_Log_Flush_Interval_Req *this)
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

mipc::sys::Set_Md_Log_Flush_Interval_Cnf *mipc::sys::Set_Md_Log_Flush_Interval_Cnf::Set_Md_Log_Flush_Interval_Cnf(mipc::sys::Set_Md_Log_Flush_Interval_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 120, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E80718;
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

void sub_297CA7CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sys::Set_Md_Log_Flush_Interval_Cnf::deserialize@<D0>(mipc::sys::Set_Md_Log_Flush_Interval_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sys::Set_Md_Log_Flush_Interval_Cnf::Set_Md_Log_Flush_Interval_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 120, &v14, a3, 2);
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
  *a1 = &unk_2A1E84918;
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
  *a1 = &unk_2A1E80718;
  return a1;
}

void sub_297CA7F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Set_Md_Log_Flush_Interval_Cnf::~Set_Md_Log_Flush_Interval_Cnf(mipc::sys::Set_Md_Log_Flush_Interval_Cnf *this)
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

uint64_t mipc::sys::Set_Md_Log_Flush_Interval_Cnf::getSize(mipc::sys::Set_Md_Log_Flush_Interval_Cnf *this)
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

double mipc::sys::Get_Md_Log_Flush_Interval_Req::Get_Md_Log_Flush_Interval_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 121;
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
  *a1 = &unk_2A1E80760;
  return result;
}

{
  *(a1 + 8) = 121;
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
  *a1 = &unk_2A1E80760;
  return result;
}

void mipc::sys::Get_Md_Log_Flush_Interval_Req::~Get_Md_Log_Flush_Interval_Req(mipc::sys::Get_Md_Log_Flush_Interval_Req *this)
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

void mipc::sys::Get_Md_Log_Flush_Interval_Req::serialize(mipc::sys::Get_Md_Log_Flush_Interval_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297CA8950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Get_Md_Log_Flush_Interval_Cnf *mipc::sys::Get_Md_Log_Flush_Interval_Cnf::Get_Md_Log_Flush_Interval_Cnf(mipc::sys::Get_Md_Log_Flush_Interval_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 122, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E807A8;
  *(this + 11) = 0;
  mipc::sys::Get_Md_Log_Flush_Interval_Cnf::deserialize(this, &v7);
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

void sub_297CA8AA4(_Unwind_Exception *a1)
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

void mipc::sys::Get_Md_Log_Flush_Interval_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v8);
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

void *mipc::sys::Get_Md_Log_Flush_Interval_Cnf::Get_Md_Log_Flush_Interval_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 122, &v14, a3, 2);
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
  *a1 = &unk_2A1E84960;
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
  *a1 = &unk_2A1E807A8;
  a1[11] = 0;
  return a1;
}

void sub_297CA8EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Md_Log_Flush_Interval_Cnf::~Get_Md_Log_Flush_Interval_Cnf(mipc::sys::Get_Md_Log_Flush_Interval_Cnf *this)
{
  *this = &unk_2A1E807A8;
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
  *this = &unk_2A1E807A8;
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
  *this = &unk_2A1E807A8;
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

uint64_t mipc::sys::Get_Md_Log_Flush_Interval_Cnf::getSize(mipc::sys::Get_Md_Log_Flush_Interval_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sys::Trigger_Md_Log_Flush_Req::Trigger_Md_Log_Flush_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 137;
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
  *a1 = &unk_2A1E807F0;
  return result;
}

{
  *(a1 + 8) = 137;
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
  *a1 = &unk_2A1E807F0;
  return result;
}

void mipc::sys::Trigger_Md_Log_Flush_Req::~Trigger_Md_Log_Flush_Req(mipc::sys::Trigger_Md_Log_Flush_Req *this)
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

void mipc::sys::Trigger_Md_Log_Flush_Req::serialize(mipc::sys::Trigger_Md_Log_Flush_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297CA98E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Trigger_Md_Log_Flush_Cnf *mipc::sys::Trigger_Md_Log_Flush_Cnf::Trigger_Md_Log_Flush_Cnf(mipc::sys::Trigger_Md_Log_Flush_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 138, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80838;
  *(this + 11) = 0;
  mipc::sys::Trigger_Md_Log_Flush_Cnf::deserialize(this, &v7);
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

void sub_297CA9A3C(_Unwind_Exception *a1)
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

void mipc::sys::Trigger_Md_Log_Flush_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 11, 0x100u, &v8);
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

void *mipc::sys::Trigger_Md_Log_Flush_Cnf::Trigger_Md_Log_Flush_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 138, &v14, a3, 2);
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
  *a1 = &unk_2A1E849A8;
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
  *a1 = &unk_2A1E80838;
  a1[11] = 0;
  return a1;
}

void sub_297CA9E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Trigger_Md_Log_Flush_Cnf::~Trigger_Md_Log_Flush_Cnf(mipc::sys::Trigger_Md_Log_Flush_Cnf *this)
{
  *this = &unk_2A1E80838;
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
  *this = &unk_2A1E80838;
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
  *this = &unk_2A1E80838;
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

uint64_t mipc::sys::Trigger_Md_Log_Flush_Cnf::getSize(mipc::sys::Trigger_Md_Log_Flush_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sys::Get_Md_Log_Flush_Status_Req::Get_Md_Log_Flush_Status_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 139;
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
  *a1 = &unk_2A1E80880;
  return result;
}

{
  *(a1 + 8) = 139;
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
  *a1 = &unk_2A1E80880;
  return result;
}

void mipc::sys::Get_Md_Log_Flush_Status_Req::~Get_Md_Log_Flush_Status_Req(mipc::sys::Get_Md_Log_Flush_Status_Req *this)
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

void mipc::sys::Get_Md_Log_Flush_Status_Req::serialize(mipc::sys::Get_Md_Log_Flush_Status_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297CAA880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Get_Md_Log_Flush_Status_Cnf *mipc::sys::Get_Md_Log_Flush_Status_Cnf::Get_Md_Log_Flush_Status_Cnf(mipc::sys::Get_Md_Log_Flush_Status_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 140, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E808C8;
  *(this + 11) = 0;
  mipc::sys::Get_Md_Log_Flush_Status_Cnf::deserialize(this, &v7);
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

void sub_297CAA9D4(_Unwind_Exception *a1)
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

void mipc::sys::Get_Md_Log_Flush_Status_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 11, 0x100u, &v8);
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

void *mipc::sys::Get_Md_Log_Flush_Status_Cnf::Get_Md_Log_Flush_Status_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 140, &v14, a3, 2);
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
  *a1 = &unk_2A1E849F0;
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
  *a1 = &unk_2A1E808C8;
  a1[11] = 0;
  return a1;
}

void sub_297CAADD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Md_Log_Flush_Status_Cnf::~Get_Md_Log_Flush_Status_Cnf(mipc::sys::Get_Md_Log_Flush_Status_Cnf *this)
{
  *this = &unk_2A1E808C8;
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
  *this = &unk_2A1E808C8;
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
  *this = &unk_2A1E808C8;
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

uint64_t mipc::sys::Get_Md_Log_Flush_Status_Cnf::getSize(mipc::sys::Get_Md_Log_Flush_Status_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sys::Set_Sbp_Info_Req::Set_Sbp_Info_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 143;
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
  *a1 = &unk_2A1E80910;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

{
  *(a1 + 8) = 143;
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
  *a1 = &unk_2A1E80910;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void mipc::sys::Set_Sbp_Info_Req::~Set_Sbp_Info_Req(mipc::sys::Set_Sbp_Info_Req *this)
{
  *this = &unk_2A1E80910;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  *this = &unk_2A1E85968;
  v7 = *(this + 9);
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (*(this + 63) < 0)
  {
LABEL_16:
    operator delete(*(this + 5));
  }

LABEL_17:
  v8 = *(this + 3);
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

{
  mipc::sys::Set_Sbp_Info_Req::~Set_Sbp_Info_Req(this);

  operator delete(v1);
}

void mipc::sys::Set_Sbp_Info_Req::serialize(mipc::sys::Set_Sbp_Info_Req *this@<X0>, uint64_t a2@<X8>)
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

  v9 = vceqzq_s64(*(this + 88));
  v10 = vbslq_s8(v9, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + v4 + vbicq_s8(xmmword_297DCA380, v9).i64[1] + 8 * (*(this + 14) != 0) + 8 * (*(this + 15) != 0);
  v51[0] = operator new(v10);
  v52 = v51[0] + v10;
  bzero(v51[0], v10);
  v51[1] = v51[0] + v10;
  v50 = v51[0];
  v49 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v44, this, &v50);
  __p[0] = v44;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v45;
  __p[3] = v46;
  HIBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  v11 = v47;
  v47 = 0uLL;
  v12 = *(&v49 + 1);
  v49 = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v13 = *(&v47 + 1);
    v14 = __p[0];
    if (!*(&v47 + 1))
    {
LABEL_12:
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      operator delete(v45);
      if (v14)
      {
        goto LABEL_92;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v13 = *(&v47 + 1);
    v14 = __p[0];
    if (!*(&v47 + 1))
    {
      goto LABEL_12;
    }
  }

  if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_12;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (SHIBYTE(v46) < 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v14)
  {
    goto LABEL_92;
  }

LABEL_19:
  if (*(this + 11))
  {
    *v50 = 256;
    v15 = v50++;
    v15[1] = 1;
    v16 = v50++;
    *(v16 + 2) = **(this + 11);
    v50 += 2;
  }

  else if (!*(this + 4))
  {
    v17 = 0x10000000FLL;
    goto LABEL_23;
  }

  v17 = 0;
LABEL_23:
  v53 = 0;
  v54 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v17, 0x100u, &v53, "", 0, &v44);
  v18 = v54;
  if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    __p[0] = v44;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  __p[0] = v44;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_26:
    operator delete(__p[1]);
  }

LABEL_27:
  *&__p[1] = v45;
  __p[3] = v46;
  HIBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  v19 = v47;
  v47 = 0uLL;
  v20 = *(&v49 + 1);
  v49 = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    v21 = *(&v47 + 1);
    v22 = __p[0];
    if (!*(&v47 + 1))
    {
LABEL_31:
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_39:
      operator delete(v45);
      if (v22)
      {
        goto LABEL_92;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v21 = *(&v47 + 1);
    v22 = __p[0];
    if (!*(&v47 + 1))
    {
      goto LABEL_31;
    }
  }

  if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_31;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (SHIBYTE(v46) < 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (v22)
  {
    goto LABEL_92;
  }

LABEL_40:
  if (*(this + 12))
  {
    *v50 = 257;
    v23 = v50++;
    v23[1] = 4;
    v24 = v50++;
    *(v24 + 1) = **(this + 12);
    v50 += 2;
  }

  v53 = 0;
  v54 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v53, "", 0, &v44);
  v25 = v54;
  if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  __p[0] = v44;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v45;
  __p[3] = v46;
  HIBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  v26 = v47;
  v47 = 0uLL;
  v27 = *(&v49 + 1);
  v49 = v26;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(&v47 + 1);
  v29 = __p[0];
  if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
    if (!v29)
    {
      goto LABEL_58;
    }

LABEL_92:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v49;
    v49 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_93;
  }

  if (v29)
  {
    goto LABEL_92;
  }

LABEL_58:
  mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,false>(this, v5, 0x102u, &v50, &v44);
  __p[0] = v44;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v45;
  __p[3] = v46;
  HIBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  v30 = v47;
  v47 = 0uLL;
  v31 = *(&v49 + 1);
  v49 = v30;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(&v47 + 1);
  v33 = __p[0];
  if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (v33)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 259, &v50, &v44);
  __p[0] = v44;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v45;
  __p[3] = v46;
  HIBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  v34 = v47;
  v47 = 0uLL;
  v35 = *(&v49 + 1);
  v49 = v34;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *(&v47 + 1);
  v37 = __p[0];
  if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (v37)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 15, 260, &v50, &v44);
  __p[0] = v44;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v45;
  __p[3] = v46;
  HIBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  v38 = v47;
  v47 = 0uLL;
  v39 = *(&v49 + 1);
  v49 = v38;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = *(&v47 + 1);
  v41 = __p[0];
  if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (v41)
  {
    goto LABEL_92;
  }

  (*(*this + 32))(&v44, this, v51);
  v42 = *mipc::Error::operator=(__p, &v44);
  mipc::Error::~Error(&v44);
  if (v42)
  {
    goto LABEL_92;
  }

  *a2 = *v51;
  *(a2 + 16) = v52;
  v51[1] = 0;
  v52 = 0;
  v51[0] = 0;
  *(a2 + 48) = 0;
  v43 = *(&v49 + 1);
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

LABEL_93:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }
}

void sub_297CABDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t mipc::sys::Set_Sbp_Info_Req::getSize(mipc::sys::Set_Sbp_Info_Req *this)
{
  v1 = *(this + 13);
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

  v5 = vceqzq_s64(*(this + 88));
  return vbslq_s8(v5, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + v1 + vbicq_s8(xmmword_297DCA380, v5).i64[1] + 8 * (*(this + 14) != 0) + 8 * (*(this + 15) != 0);
}

mipc::sys::Set_Sbp_Info_Cnf *mipc::sys::Set_Sbp_Info_Cnf::Set_Sbp_Info_Cnf(mipc::sys::Set_Sbp_Info_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 144, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80958;
  *(this + 11) = 0;
  mipc::sys::Set_Sbp_Info_Cnf::deserialize(this, &v7);
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

void sub_297CABFE0(_Unwind_Exception *a1)
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

void mipc::sys::Set_Sbp_Info_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 11, 0x100u, &v8);
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

void *mipc::sys::Set_Sbp_Info_Cnf::Set_Sbp_Info_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 144, &v14, a3, 2);
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
  *a1 = &unk_2A1E84A38;
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
  *a1 = &unk_2A1E80958;
  a1[11] = 0;
  return a1;
}

void sub_297CAC3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Set_Sbp_Info_Cnf::~Set_Sbp_Info_Cnf(mipc::sys::Set_Sbp_Info_Cnf *this)
{
  *this = &unk_2A1E80958;
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
  *this = &unk_2A1E80958;
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
  *this = &unk_2A1E80958;
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

uint64_t mipc::sys::Set_Sbp_Info_Cnf::getSize(mipc::sys::Set_Sbp_Info_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sys::Get_Sbp_Info_Req::Get_Sbp_Info_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 145;
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
  *a1 = &unk_2A1E809A0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

{
  *(a1 + 8) = 145;
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
  *a1 = &unk_2A1E809A0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void mipc::sys::Get_Sbp_Info_Req::~Get_Sbp_Info_Req(mipc::sys::Get_Sbp_Info_Req *this)
{
  *this = &unk_2A1E809A0;
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
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

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
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (*(this + 63) < 0)
  {
LABEL_14:
    operator delete(*(this + 5));
  }

LABEL_15:
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
  mipc::sys::Get_Sbp_Info_Req::~Get_Sbp_Info_Req(this);

  operator delete(v1);
}

void mipc::sys::Get_Sbp_Info_Req::serialize(mipc::sys::Get_Sbp_Info_Req *this@<X0>, uint64_t a2@<X8>)
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

  v9 = vceqzq_s64(*(this + 88));
  v10 = vbslq_s8(v9, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + v4 + vbicq_s8(xmmword_297DCA380, v9).i64[1] + 8 * (*(this + 14) != 0);
  v48[0] = operator new(v10);
  v49 = v48[0] + v10;
  bzero(v48[0], v10);
  v48[1] = v48[0] + v10;
  v47 = v48[0];
  v46 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v41, this, &v47);
  v11 = v44;
  *&__p[1] = *v42;
  __p[3] = v43;
  __p[0] = v41;
  v46 = v44;
  if (v41)
  {
    *a2 = v41;
    *(a2 + 8) = *&__p[1];
    v12 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v12;
    *(a2 + 32) = v11;
LABEL_81:
    *(a2 + 48) = 1;
    goto LABEL_82;
  }

  if (*(this + 11))
  {
    *v47 = 256;
    v13 = v47++;
    v13[1] = 1;
    v14 = v47++;
    *(v14 + 2) = **(this + 11);
    v47 += 2;
  }

  else if (!*(this + 4))
  {
    v15 = 0x10000000FLL;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_12:
  v50 = 0;
  v51 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v15, 0x100u, &v50, "", 0, &v41);
  v16 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    __p[0] = v41;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_15:
    operator delete(__p[1]);
  }

LABEL_16:
  *&__p[1] = *v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42[0]) = 0;
  v17 = v44;
  v44 = 0uLL;
  v18 = *(&v46 + 1);
  v46 = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = *(&v44 + 1);
    v20 = __p[0];
    if (!*(&v44 + 1))
    {
LABEL_20:
      if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_28:
      operator delete(v42[0]);
      if (v20)
      {
        goto LABEL_80;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v19 = *(&v44 + 1);
    v20 = __p[0];
    if (!*(&v44 + 1))
    {
      goto LABEL_20;
    }
  }

  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_20;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(v43) < 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v20)
  {
    goto LABEL_80;
  }

LABEL_29:
  if (*(this + 12))
  {
    *v47 = 257;
    v21 = v47++;
    v21[1] = 4;
    v22 = v47++;
    *(v22 + 1) = **(this + 12);
    v47 += 2;
  }

  v50 = 0;
  v51 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v50, "", 0, &v41);
  v23 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42[0]) = 0;
  v24 = v44;
  v44 = 0uLL;
  v25 = *(&v46 + 1);
  v46 = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&v44 + 1);
  v27 = __p[0];
  if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
    if (!v27)
    {
      goto LABEL_47;
    }

LABEL_80:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v46;
    goto LABEL_81;
  }

  if (v27)
  {
    goto LABEL_80;
  }

LABEL_47:
  mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,false>(this, v5, 0x102u, &v47, &v41);
  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42[0]) = 0;
  v28 = v44;
  v44 = 0uLL;
  v29 = *(&v46 + 1);
  v46 = v28;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *(&v44 + 1);
  v31 = __p[0];
  if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  if (v31)
  {
    goto LABEL_80;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 260, &v47, &v41);
  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42[0]) = 0;
  v32 = v44;
  v44 = 0uLL;
  v33 = *(&v46 + 1);
  v46 = v32;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(&v44 + 1);
  v35 = __p[0];
  if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  if (v35)
  {
    goto LABEL_80;
  }

  (*(*this + 32))(&v41, this, v48);
  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42[0]) = 0;
  v36 = v44;
  v44 = 0uLL;
  v37 = *(&v46 + 1);
  v46 = v36;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(&v44 + 1);
  v39 = __p[0];
  if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  if (v39)
  {
    goto LABEL_80;
  }

  *a2 = *v48;
  *(a2 + 16) = v49;
  v48[1] = 0;
  v49 = 0;
  v48[0] = 0;
  *(a2 + 48) = 0;
  v40 = *(&v46 + 1);
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_82:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }
}

void sub_297CAD2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t mipc::sys::Get_Sbp_Info_Req::getSize(mipc::sys::Get_Sbp_Info_Req *this)
{
  v1 = *(this + 13);
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

  v5 = vceqzq_s64(*(this + 88));
  return vbslq_s8(v5, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + v1 + vbicq_s8(xmmword_297DCA380, v5).i64[1] + 8 * (*(this + 14) != 0);
}

mipc::sys::Get_Sbp_Info_Cnf *mipc::sys::Get_Sbp_Info_Cnf::Get_Sbp_Info_Cnf(mipc::sys::Get_Sbp_Info_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 146, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E809E8;
  *(this + 11) = 0;
  mipc::sys::Get_Sbp_Info_Cnf::deserialize(this, &v7);
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

void sub_297CAD4B8(_Unwind_Exception *a1)
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

void mipc::sys::Get_Sbp_Info_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 11, 0x100u, &v8);
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

void *mipc::sys::Get_Sbp_Info_Cnf::Get_Sbp_Info_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 146, &v14, a3, 2);
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
  *a1 = &unk_2A1E84A80;
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
  *a1 = &unk_2A1E809E8;
  a1[11] = 0;
  return a1;
}

void sub_297CAD8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Sbp_Info_Cnf::~Get_Sbp_Info_Cnf(mipc::sys::Get_Sbp_Info_Cnf *this)
{
  *this = &unk_2A1E809E8;
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
  *this = &unk_2A1E809E8;
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
  *this = &unk_2A1E809E8;
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

uint64_t mipc::sys::Get_Sbp_Info_Cnf::getSize(mipc::sys::Get_Sbp_Info_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sys::Set_Md_Log_Filter_Req::Set_Md_Log_Filter_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 161;
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
  *a1 = &unk_2A1E80A30;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 161;
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
  *a1 = &unk_2A1E80A30;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sys::Set_Md_Log_Filter_Req::~Set_Md_Log_Filter_Req(mipc::sys::Set_Md_Log_Filter_Req *this)
{
  *this = &unk_2A1E80A30;
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
  *this = &unk_2A1E80A30;
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
  *this = &unk_2A1E80A30;
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

void mipc::sys::Set_Md_Log_Filter_Req::serialize(mipc::sys::Set_Md_Log_Filter_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 88);
  v4 = *(this + 11);
  if (v4 && (v6 = v4[1] - *v4, (v6 - 65532) >= 0xFFFFFFFFFFFF0000))
  {
    v7 = ((v6 + 11) & 0xFFF8) + 16;
  }

  else
  {
    v7 = 16;
  }

  *&v25 = operator new(v7);
  v26 = v25 + v7;
  bzero(v25, v7);
  *(&v25 + 1) = v25 + v7;
  v24 = v25;
  v23 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v18, this, &v24);
  v8 = v21;
  *&__p[1] = *v19;
  __p[3] = v20;
  __p[0] = v18;
  v23 = v21;
  if (v18)
  {
    *a2 = v18;
    *(a2 + 8) = *&__p[1];
    v9 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v9;
    *(a2 + 32) = v8;
LABEL_31:
    *(a2 + 48) = 1;
    goto LABEL_32;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<65535ul,false>,true>(&v18, this, v5, &v24);
  __p[0] = v18;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v19;
  __p[3] = v20;
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  v10 = v21;
  v21 = 0uLL;
  v23 = v10;
  if (*(&v8 + 1) && !atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v8 + 1) + 16))(*(&v8 + 1));
    std::__shared_weak_count::__release_weak(*(&v8 + 1));
    v11 = *(&v21 + 1);
    v12 = __p[0];
    if (!*(&v21 + 1))
    {
LABEL_13:
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_19:
      operator delete(v19[0]);
      if (!v12)
      {
        goto LABEL_20;
      }

LABEL_30:
      *a2 = __p[0];
      *(a2 + 8) = *&__p[1];
      *(a2 + 24) = __p[3];
      memset(&__p[1], 0, 24);
      *(a2 + 32) = v23;
      goto LABEL_31;
    }
  }

  else
  {
    v11 = *(&v21 + 1);
    v12 = __p[0];
    if (!*(&v21 + 1))
    {
      goto LABEL_13;
    }
  }

  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_13;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if (v12)
  {
    goto LABEL_30;
  }

LABEL_20:
  (*(*this + 32))(&v18, this, &v25);
  __p[0] = v18;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v19;
  __p[3] = v20;
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  v13 = v21;
  v21 = 0uLL;
  v14 = *(&v23 + 1);
  v23 = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(&v21 + 1);
  v16 = __p[0];
  if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
    if (v16)
    {
      goto LABEL_30;
    }
  }

  else if (v16)
  {
    goto LABEL_30;
  }

  *a2 = v25;
  *(a2 + 16) = v26;
  v26 = 0;
  v25 = 0uLL;
  *(a2 + 48) = 0;
  v17 = *(&v23 + 1);
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_32:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }
}

void sub_297CAE518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sys::Set_Md_Log_Filter_Req::getSize(mipc::sys::Set_Md_Log_Filter_Req *this)
{
  v1 = *(this + 11);
  if (v1 && (v2 = v1[1] - *v1, (v2 - 65532) >= 0xFFFFFFFFFFFF0000))
  {
    return ((v2 + 11) & 0xFFF8) + 16;
  }

  else
  {
    return 16;
  }
}

mipc::sys::Set_Md_Log_Filter_Cnf *mipc::sys::Set_Md_Log_Filter_Cnf::Set_Md_Log_Filter_Cnf(mipc::sys::Set_Md_Log_Filter_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 162, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80A78;
  *(this + 11) = 0;
  mipc::sys::Set_Md_Log_Filter_Cnf::deserialize(this, &v7);
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

void sub_297CAE6A0(_Unwind_Exception *a1)
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

void mipc::sys::Set_Md_Log_Filter_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 11, 0x100u, &v8);
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

void *mipc::sys::Set_Md_Log_Filter_Cnf::Set_Md_Log_Filter_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 162, &v14, a3, 2);
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
  *a1 = &unk_2A1E84AC8;
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
  *a1 = &unk_2A1E80A78;
  a1[11] = 0;
  return a1;
}

void sub_297CAEA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Set_Md_Log_Filter_Cnf::~Set_Md_Log_Filter_Cnf(mipc::sys::Set_Md_Log_Filter_Cnf *this)
{
  *this = &unk_2A1E80A78;
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
  *this = &unk_2A1E80A78;
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
  *this = &unk_2A1E80A78;
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

uint64_t mipc::sys::Set_Md_Log_Filter_Cnf::getSize(mipc::sys::Set_Md_Log_Filter_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sys::Read_Soc_Register_Req::Read_Soc_Register_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 165;
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
  *a1 = &unk_2A1E80AC0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 165;
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
  *a1 = &unk_2A1E80AC0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sys::Read_Soc_Register_Req::~Read_Soc_Register_Req(mipc::sys::Read_Soc_Register_Req *this)
{
  *this = &unk_2A1E80AC0;
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
  *this = &unk_2A1E80AC0;
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
  *this = &unk_2A1E80AC0;
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

void mipc::sys::Read_Soc_Register_Req::serialize(mipc::sys::Read_Soc_Register_Req *this@<X0>, uint64_t a2@<X8>)
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
    *v25 = 256;
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
  mipc::Message::handle<(mipc::Error::Type)1>(this, v9, 0x100u, &v28, "", 0, &v19);
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

void sub_297CAF774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sys::Read_Soc_Register_Req::getSize(mipc::sys::Read_Soc_Register_Req *this)
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

mipc::sys::Read_Soc_Register_Cnf *mipc::sys::Read_Soc_Register_Cnf::Read_Soc_Register_Cnf(mipc::sys::Read_Soc_Register_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 166, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80B08;
  *(this + 11) = 0;
  mipc::sys::Read_Soc_Register_Cnf::deserialize(this, &v7);
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

void sub_297CAF8E8(_Unwind_Exception *a1)
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

void mipc::sys::Read_Soc_Register_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v8);
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

void *mipc::sys::Read_Soc_Register_Cnf::Read_Soc_Register_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 166, &v14, a3, 2);
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
  *a1 = &unk_2A1E84B10;
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
  *a1 = &unk_2A1E80B08;
  a1[11] = 0;
  return a1;
}

void sub_297CAFCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Read_Soc_Register_Cnf::~Read_Soc_Register_Cnf(mipc::sys::Read_Soc_Register_Cnf *this)
{
  *this = &unk_2A1E80B08;
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
  *this = &unk_2A1E80B08;
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
  *this = &unk_2A1E80B08;
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

uint64_t mipc::sys::Read_Soc_Register_Cnf::getSize(mipc::sys::Read_Soc_Register_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sys::Write_Soc_Register_Req::Write_Soc_Register_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 167;
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
  *a1 = &unk_2A1E80B50;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = 167;
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
  *a1 = &unk_2A1E80B50;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::sys::Write_Soc_Register_Req::~Write_Soc_Register_Req(mipc::sys::Write_Soc_Register_Req *this)
{
  *this = &unk_2A1E80B50;
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
  *this = &unk_2A1E80B50;
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
  *this = &unk_2A1E80B50;
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

void mipc::sys::Write_Soc_Register_Req::serialize(mipc::sys::Write_Soc_Register_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vceqzq_s64(*(this + 88));
  v5 = vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1];
  *&v35 = operator new(v5);
  v36 = v35 + v5;
  bzero(v35, v5);
  *(&v35 + 1) = v35 + v5;
  v34 = v35;
  v33 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v28, this, &v34);
  v6 = v31;
  *&__p[1] = *v29;
  __p[3] = v30;
  __p[0] = v28;
  v33 = v31;
  if (v28)
  {
    *a2 = v28;
    *(a2 + 8) = *&__p[1];
    v7 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
LABEL_56:
    *(a2 + 48) = 1;
    goto LABEL_57;
  }

  if (*(this + 11))
  {
    *v34 = 256;
    v8 = v34++;
    v8[1] = 4;
    v9 = v34++;
    *(v9 + 1) = **(this + 11);
    v34 += 2;
  }

  else if (!*(this + 4))
  {
    v10 = 0x10000000FLL;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v37 = 0;
  v38 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v10, 0x100u, &v37, "", 0, &v28);
  v11 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    __p[0] = v28;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __p[0] = v28;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_10:
    operator delete(__p[1]);
  }

LABEL_11:
  *&__p[1] = *v29;
  __p[3] = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29[0]) = 0;
  v12 = v31;
  v31 = 0uLL;
  v33 = v12;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
    v13 = *(&v31 + 1);
    v14 = __p[0];
    if (!*(&v31 + 1))
    {
LABEL_15:
      if ((SHIBYTE(v30) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_23:
      operator delete(v29[0]);
      if (v14)
      {
        goto LABEL_55;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = *(&v31 + 1);
    v14 = __p[0];
    if (!*(&v31 + 1))
    {
      goto LABEL_15;
    }
  }

  if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_15;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v14)
  {
    goto LABEL_55;
  }

LABEL_24:
  if (*(this + 12))
  {
    *v34 = 257;
    v15 = v34++;
    v15[1] = 4;
    v16 = v34++;
    *(v16 + 1) = **(this + 12);
    v34 += 2;
  }

  else if (!*(this + 4))
  {
    v17 = 0x10000000FLL;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_29:
  v37 = 0;
  v38 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v17, 0x101u, &v37, "", 0, &v28);
  v18 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  __p[0] = v28;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v29;
  __p[3] = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29[0]) = 0;
  v19 = v31;
  v31 = 0uLL;
  v20 = *(&v33 + 1);
  v33 = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *(&v31 + 1);
  v22 = __p[0];
  if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
    if (!v22)
    {
      goto LABEL_44;
    }

LABEL_55:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v33;
    goto LABEL_56;
  }

  if (v22)
  {
    goto LABEL_55;
  }

LABEL_44:
  (*(*this + 32))(&v28, this, &v35);
  __p[0] = v28;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v29;
  __p[3] = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29[0]) = 0;
  v23 = v31;
  v31 = 0uLL;
  v24 = *(&v33 + 1);
  v33 = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v31 + 1);
  v26 = __p[0];
  if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (v26)
  {
    goto LABEL_55;
  }

  *a2 = v35;
  *(a2 + 16) = v36;
  v36 = 0;
  v35 = 0uLL;
  *(a2 + 48) = 0;
  v27 = *(&v33 + 1);
  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

LABEL_57:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }
}

void sub_297CB0BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Write_Soc_Register_Cnf *mipc::sys::Write_Soc_Register_Cnf::Write_Soc_Register_Cnf(mipc::sys::Write_Soc_Register_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 168, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E80B98;
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

void sub_297CB0DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sys::Write_Soc_Register_Cnf::deserialize@<D0>(mipc::sys::Write_Soc_Register_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sys::Write_Soc_Register_Cnf::Write_Soc_Register_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 168, &v14, a3, 2);
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
  *a1 = &unk_2A1E84B58;
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
  *a1 = &unk_2A1E80B98;
  return a1;
}

void sub_297CB10A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Write_Soc_Register_Cnf::~Write_Soc_Register_Cnf(mipc::sys::Write_Soc_Register_Cnf *this)
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

uint64_t mipc::sys::Write_Soc_Register_Cnf::getSize(mipc::sys::Write_Soc_Register_Cnf *this)
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

double mipc::sys::Read_Pmic_Req::Read_Pmic_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 169;
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
  *a1 = &unk_2A1E80BE0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 169;
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
  *a1 = &unk_2A1E80BE0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sys::Read_Pmic_Req::~Read_Pmic_Req(mipc::sys::Read_Pmic_Req *this)
{
  *this = &unk_2A1E80BE0;
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
    operator delete(v4);
  }

  *this = &unk_2A1E85968;
  v5 = *(this + 9);
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (*(this + 63) < 0)
  {
LABEL_10:
    operator delete(*(this + 5));
  }

LABEL_11:
  v6 = *(this + 3);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

{
  *this = &unk_2A1E80BE0;
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
    operator delete(v4);
  }

  *this = &unk_2A1E85968;
  v5 = *(this + 9);
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (*(this + 63) < 0)
  {
LABEL_10:
    operator delete(*(this + 5));
  }

LABEL_11:
  v6 = *(this + 3);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

{
  *this = &unk_2A1E80BE0;
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
    operator delete(v4);
  }

  *this = &unk_2A1E85968;
  v5 = *(this + 9);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(this + 63) < 0)
  {
LABEL_10:
    operator delete(*(this + 5));
  }

LABEL_11:
  v6 = *(this + 3);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = this;
  }

  else
  {
    v7 = this;
  }

  operator delete(v7);
}

void mipc::sys::Read_Pmic_Req::serialize(mipc::sys::Read_Pmic_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vceqzq_s64(*(this + 88));
  v5 = vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1] + 8 * (*(this + 13) != 0);
  *&v42 = operator new(v5);
  v43 = v42 + v5;
  bzero(v42, v5);
  *(&v42 + 1) = v42 + v5;
  v41 = v42;
  v40 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v35, this, &v41);
  v6 = v38;
  *&__p[1] = *v36;
  __p[3] = v37;
  __p[0] = v35;
  v40 = v38;
  if (v35)
  {
    *a2 = v35;
    *(a2 + 8) = *&__p[1];
    v7 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
LABEL_71:
    *(a2 + 48) = 1;
    goto LABEL_72;
  }

  if (*(this + 11))
  {
    *v41 = 256;
    v8 = v41++;
    v8[1] = 2;
    v9 = v41++;
    v9[1] = **(this + 11);
    v41 += 2;
  }

  v44 = 0;
  v45 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v44, "", 0, &v35);
  v10 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    __p[0] = v35;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __p[0] = v35;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_8:
    operator delete(__p[1]);
  }

LABEL_9:
  *&__p[1] = *v36;
  __p[3] = v37;
  HIBYTE(v37) = 0;
  LOBYTE(v36[0]) = 0;
  v11 = v38;
  v38 = 0uLL;
  v40 = v11;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
  }

  v12 = *(&v38 + 1);
  v13 = __p[0];
  if (!*(&v38 + 1) || atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    operator delete(v36[0]);
    if (v13)
    {
      goto LABEL_70;
    }

    goto LABEL_21;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v13)
  {
    goto LABEL_70;
  }

LABEL_21:
  if (*(this + 12))
  {
    *v41 = 257;
    v14 = v41++;
    v14[1] = 2;
    v15 = v41++;
    v15[1] = **(this + 12);
    v41 += 2;
  }

  else if (!*(this + 4))
  {
    v16 = 0x10000000FLL;
    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:
  v44 = 0;
  v45 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v16, 0x101u, &v44, "", 0, &v35);
  v17 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  __p[0] = v35;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v36;
  __p[3] = v37;
  HIBYTE(v37) = 0;
  LOBYTE(v36[0]) = 0;
  v18 = v38;
  v38 = 0uLL;
  v19 = *(&v40 + 1);
  v40 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(&v38 + 1);
  v21 = __p[0];
  if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
    if (!v21)
    {
      goto LABEL_40;
    }

LABEL_70:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v40;
    goto LABEL_71;
  }

  if (v21)
  {
    goto LABEL_70;
  }

LABEL_40:
  if (*(this + 13))
  {
    *v41 = 258;
    v22 = v41++;
    v22[1] = 2;
    v23 = v41++;
    v23[1] = **(this + 13);
    v41 += 2;
  }

  else if (!*(this + 4))
  {
    v24 = 0x10000000FLL;
    goto LABEL_45;
  }

  v24 = 0;
LABEL_45:
  v44 = 0;
  v45 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v24, 0x102u, &v44, "", 0, &v35);
  v25 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  __p[0] = v35;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v36;
  __p[3] = v37;
  HIBYTE(v37) = 0;
  LOBYTE(v36[0]) = 0;
  v26 = v38;
  v38 = 0uLL;
  v27 = *(&v40 + 1);
  v40 = v26;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(&v38 + 1);
  v29 = __p[0];
  if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (v29)
  {
    goto LABEL_70;
  }

  (*(*this + 32))(&v35, this, &v42);
  __p[0] = v35;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v36;
  __p[3] = v37;
  HIBYTE(v37) = 0;
  LOBYTE(v36[0]) = 0;
  v30 = v38;
  v38 = 0uLL;
  v31 = *(&v40 + 1);
  v40 = v30;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(&v38 + 1);
  v33 = __p[0];
  if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (v33)
  {
    goto LABEL_70;
  }

  *a2 = v42;
  *(a2 + 16) = v43;
  v43 = 0;
  v42 = 0uLL;
  *(a2 + 48) = 0;
  v34 = *(&v40 + 1);
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_72:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v42)
  {
    *(&v42 + 1) = v42;
    operator delete(v42);
  }
}

void sub_297CB20E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Read_Pmic_Cnf *mipc::sys::Read_Pmic_Cnf::Read_Pmic_Cnf(mipc::sys::Read_Pmic_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 170, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80C28;
  *(this + 11) = 0;
  mipc::sys::Read_Pmic_Cnf::deserialize(this, &v7);
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

void sub_297CB2284(_Unwind_Exception *a1)
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

void mipc::sys::Read_Pmic_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<unsigned short,true>(this, this + 11, 0x100u, &v8);
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

void *mipc::sys::Read_Pmic_Cnf::Read_Pmic_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 170, &v14, a3, 2);
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
  *a1 = &unk_2A1E84BA0;
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
  *a1 = &unk_2A1E80C28;
  a1[11] = 0;
  return a1;
}

void sub_297CB2680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Read_Pmic_Cnf::~Read_Pmic_Cnf(mipc::sys::Read_Pmic_Cnf *this)
{
  *this = &unk_2A1E80C28;
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
  *this = &unk_2A1E80C28;
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
  *this = &unk_2A1E80C28;
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

uint64_t mipc::sys::Read_Pmic_Cnf::getSize(mipc::sys::Read_Pmic_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sys::Write_Pmic_Req::Write_Pmic_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 171;
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
  *a1 = &unk_2A1E80C70;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

{
  *(a1 + 8) = 171;
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
  *a1 = &unk_2A1E80C70;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void mipc::sys::Write_Pmic_Req::~Write_Pmic_Req(mipc::sys::Write_Pmic_Req *this)
{
  *this = &unk_2A1E80C70;
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
  *this = &unk_2A1E80C70;
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
  *this = &unk_2A1E80C70;
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

void mipc::sys::Write_Pmic_Req::serialize(mipc::sys::Write_Pmic_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 104)))));
  *&v46 = operator new(v4);
  v47 = v46 + v4;
  bzero(v46, v4);
  *(&v46 + 1) = v46 + v4;
  v45 = v46;
  v44 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v39, this, &v45);
  v5 = v42;
  *&__p[1] = *v40;
  __p[3] = v41;
  __p[0] = v39;
  v44 = v42;
  if (v39)
  {
    *a2 = v39;
    *(a2 + 8) = *&__p[1];
    v6 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
LABEL_82:
    *(a2 + 48) = 1;
    goto LABEL_83;
  }

  if (*(this + 11))
  {
    *v45 = 256;
    v7 = v45++;
    v7[1] = 2;
    v8 = v45++;
    v8[1] = **(this + 11);
    v45 += 2;
  }

  v48 = 0;
  v49 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v48, "", 0, &v39);
  v9 = v49;
  if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    __p[0] = v39;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __p[0] = v39;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_8:
    operator delete(__p[1]);
  }

LABEL_9:
  *&__p[1] = *v40;
  __p[3] = v41;
  HIBYTE(v41) = 0;
  LOBYTE(v40[0]) = 0;
  v10 = v42;
  v42 = 0uLL;
  v11 = *(&v44 + 1);
  v44 = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(&v42 + 1);
  v13 = __p[0];
  if (!*(&v42 + 1) || atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    operator delete(v40[0]);
    if (v13)
    {
      goto LABEL_81;
    }

    goto LABEL_21;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v41) < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v13)
  {
    goto LABEL_81;
  }

LABEL_21:
  if (*(this + 12))
  {
    *v45 = 257;
    v14 = v45++;
    v14[1] = 2;
    v15 = v45++;
    v15[1] = **(this + 12);
    v45 += 2;
  }

  else if (!*(this + 4))
  {
    v16 = 0x10000000FLL;
    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:
  v48 = 0;
  v49 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v16, 0x101u, &v48, "", 0, &v39);
  v17 = v49;
  if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  __p[0] = v39;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v40;
  __p[3] = v41;
  HIBYTE(v41) = 0;
  LOBYTE(v40[0]) = 0;
  v18 = v42;
  v42 = 0uLL;
  v19 = *(&v44 + 1);
  v44 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(&v42 + 1);
  v21 = __p[0];
  if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
    if (!v21)
    {
      goto LABEL_40;
    }

LABEL_81:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v44;
    goto LABEL_82;
  }

  if (v21)
  {
    goto LABEL_81;
  }

LABEL_40:
  if (*(this + 13))
  {
    *v45 = 258;
    v22 = v45++;
    v22[1] = 2;
    v23 = v45++;
    v23[1] = **(this + 13);
    v45 += 2;
  }

  else if (!*(this + 4))
  {
    v24 = 0x10000000FLL;
    goto LABEL_45;
  }

  v24 = 0;
LABEL_45:
  v48 = 0;
  v49 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v24, 0x102u, &v48, "", 0, &v39);
  v25 = v49;
  if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  __p[0] = v39;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v40;
  __p[3] = v41;
  HIBYTE(v41) = 0;
  LOBYTE(v40[0]) = 0;
  v26 = v42;
  v42 = 0uLL;
  v27 = *(&v44 + 1);
  v44 = v26;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(&v42 + 1);
  v29 = __p[0];
  if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (v29)
  {
    goto LABEL_81;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, this + 14, 259, &v45, &v39);
  __p[0] = v39;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v40;
  __p[3] = v41;
  HIBYTE(v41) = 0;
  LOBYTE(v40[0]) = 0;
  v30 = v42;
  v42 = 0uLL;
  v31 = *(&v44 + 1);
  v44 = v30;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(&v42 + 1);
  v33 = __p[0];
  if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (v33)
  {
    goto LABEL_81;
  }

  (*(*this + 32))(&v39, this, &v46);
  __p[0] = v39;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v40;
  __p[3] = v41;
  HIBYTE(v41) = 0;
  LOBYTE(v40[0]) = 0;
  v34 = v42;
  v42 = 0uLL;
  v35 = *(&v44 + 1);
  v44 = v34;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *(&v42 + 1);
  v37 = __p[0];
  if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (v37)
  {
    goto LABEL_81;
  }

  *a2 = v46;
  *(a2 + 16) = v47;
  v47 = 0;
  v46 = 0uLL;
  *(a2 + 48) = 0;
  v38 = *(&v44 + 1);
  if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_83:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v46)
  {
    *(&v46 + 1) = v46;
    operator delete(v46);
  }
}

void sub_297CB387C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Write_Pmic_Cnf *mipc::sys::Write_Pmic_Cnf::Write_Pmic_Cnf(mipc::sys::Write_Pmic_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 172, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E80CB8;
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

void sub_297CB3A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sys::Write_Pmic_Cnf::deserialize@<D0>(mipc::sys::Write_Pmic_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sys::Write_Pmic_Cnf::Write_Pmic_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 172, &v14, a3, 2);
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
  *a1 = &unk_2A1E84BE8;
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
  *a1 = &unk_2A1E80CB8;
  return a1;
}

void sub_297CB3D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Write_Pmic_Cnf::~Write_Pmic_Cnf(mipc::sys::Write_Pmic_Cnf *this)
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

uint64_t mipc::sys::Write_Pmic_Cnf::getSize(mipc::sys::Write_Pmic_Cnf *this)
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

double mipc::sys::Set_Idc_Cfg_Req::Set_Idc_Cfg_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 179;
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
  *a1 = &unk_2A1E80D00;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

{
  *(a1 + 8) = 179;
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
  *a1 = &unk_2A1E80D00;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

void mipc::sys::Set_Idc_Cfg_Req::~Set_Idc_Cfg_Req(mipc::sys::Set_Idc_Cfg_Req *this)
{
  *this = &unk_2A1E80D00;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 12);
  *(this + 12) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 11);
  *(this + 11) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  *this = &unk_2A1E85968;
  v12 = *(this + 9);
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (*(this + 63) < 0)
  {
LABEL_24:
    operator delete(*(this + 5));
  }

LABEL_25:
  v13 = *(this + 3);
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

{
  mipc::sys::Set_Idc_Cfg_Req::~Set_Idc_Cfg_Req(this);

  operator delete(v1);
}

void mipc::sys::Set_Idc_Cfg_Req::serialize(mipc::sys::Set_Idc_Cfg_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v5 = (this + 136);
  v6 = vdupq_n_s64(8uLL);
  v7 = (this + 152);
  v8 = (this + 160);
  v9 = vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v6, vceqzq_s64(*(this + 120)))), vaddq_s64(vbicq_s8(v6, vceqzq_s64(*(this + 104))), vbicq_s8(v6, vceqzq_s64(*(this + 136)))))) + 8 * (*(this + 19) != 0) + 8 * (*(this + 20) != 0);
  v57[0] = operator new(v9);
  v58 = v57[0] + v9;
  bzero(v57[0], v9);
  v57[1] = v57[0] + v9;
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
  v10 = v53;
  v53 = 0uLL;
  v11 = *(&v55 + 1);
  v55 = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(&v53 + 1);
  v13 = __p[0];
  if (!*(&v53 + 1) || atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v51);
    if (v13)
    {
      goto LABEL_92;
    }

    goto LABEL_13;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v52) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v13)
  {
    goto LABEL_92;
  }

LABEL_13:
  if (*(this + 11))
  {
    *v56 = 256;
    v14 = v56++;
    v14[1] = 1;
    v15 = v56++;
    *(v15 + 2) = **(this + 11);
    v56 += 2;
  }

  v59 = 0;
  v60 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v59, "", 0, &v50);
  v16 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    __p[0] = v50;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  __p[0] = v50;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_18:
    operator delete(__p[1]);
  }

LABEL_19:
  *&__p[1] = v51;
  __p[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v17 = v53;
  v53 = 0uLL;
  v18 = *(&v55 + 1);
  v55 = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(&v53 + 1);
  v20 = __p[0];
  if (!*(&v53 + 1) || atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    operator delete(v51);
    if (v20)
    {
      goto LABEL_92;
    }

    goto LABEL_31;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(v52) < 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v20)
  {
    goto LABEL_92;
  }

LABEL_31:
  if (*(this + 12))
  {
    *v56 = 257;
    v21 = v56++;
    v21[1] = 1;
    v22 = v56++;
    *(v22 + 2) = **(this + 12);
    v56 += 2;
  }

  v59 = 0;
  v60 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v59, "", 0, &v50);
  v23 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
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
  v24 = v53;
  v53 = 0uLL;
  v25 = *(&v55 + 1);
  v55 = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&v53 + 1);
  v27 = __p[0];
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
    if (!v27)
    {
      goto LABEL_48;
    }

LABEL_92:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v55;
    v55 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_93;
  }

  if (v27)
  {
    goto LABEL_92;
  }

LABEL_48:
  if (*(this + 13))
  {
    *v56 = 258;
    v28 = v56++;
    v28[1] = 1;
    v29 = v56++;
    *(v29 + 2) = **(this + 13);
    v56 += 2;
  }

  v59 = 0;
  v60 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v59, "", 0, &v50);
  v30 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
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
  v31 = v53;
  v53 = 0uLL;
  v32 = *(&v55 + 1);
  v55 = v31;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&v53 + 1);
  v34 = __p[0];
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (v34)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 259, &v56, &v50);
  __p[0] = v50;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v51;
  __p[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v35 = v53;
  v53 = 0uLL;
  v36 = *(&v55 + 1);
  v55 = v35;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = *(&v53 + 1);
  v38 = __p[0];
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (v38)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v4, 260, &v56, &v50);
  __p[0] = v50;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v51;
  __p[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v39 = v53;
  v53 = 0uLL;
  v40 = *(&v55 + 1);
  v55 = v39;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  v41 = *(&v53 + 1);
  v42 = __p[0];
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (v42)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 16, 261, &v56, &v50);
  v43 = *mipc::Error::operator=(__p, &v50);
  mipc::Error::~Error(&v50);
  if (v43)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v5, 262, &v56, &v50);
  v44 = *mipc::Error::operator=(__p, &v50);
  mipc::Error::~Error(&v50);
  if (v44)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 18, 263, &v56, &v50);
  v45 = *mipc::Error::operator=(__p, &v50);
  mipc::Error::~Error(&v50);
  if (v45)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v7, 264, &v56, &v50);
  v46 = *mipc::Error::operator=(__p, &v50);
  mipc::Error::~Error(&v50);
  if (v46)
  {
    goto LABEL_92;
  }

  mipc::Message::serializeTlv<mipc::mipc_sys_idc_gpio_cfg_struct4,false>(&v50, this, v8, &v56);
  v47 = *mipc::Error::operator=(__p, &v50);
  mipc::Error::~Error(&v50);
  if (v47)
  {
    goto LABEL_92;
  }

  (*(*this + 32))(&v50, this, v57);
  v48 = *mipc::Error::operator=(__p, &v50);
  mipc::Error::~Error(&v50);
  if (v48)
  {
    goto LABEL_92;
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

LABEL_93:
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

void sub_297CB4EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mipc::Message::serializeTlv<mipc::mipc_sys_idc_gpio_cfg_struct4,false>(uint64_t a1, uint64_t a2, __int16 **a3, _WORD **a4)
{
  if (*a3)
  {
    **a4 = 265;
    v4 = (*a4)++;
    v4[1] = 3;
    v5 = (*a4)++;
    v6 = **a3;
    *(v5 + 4) = *(*a3 + 2);
    v5[1] = v6;
    *a4 += 2;
  }

  v8 = 0;
  v9 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a2, 0, 0x109u, &v8, "", 0, a1);
  v7 = v9;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

mipc::sys::Set_Idc_Cfg_Cnf *mipc::sys::Set_Idc_Cfg_Cnf::Set_Idc_Cfg_Cnf(mipc::sys::Set_Idc_Cfg_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 180, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E80D48;
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

void sub_297CB5224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sys::Set_Idc_Cfg_Cnf::deserialize@<D0>(mipc::sys::Set_Idc_Cfg_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sys::Set_Idc_Cfg_Cnf::Set_Idc_Cfg_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 180, &v14, a3, 2);
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
  *a1 = &unk_2A1E84C30;
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
  *a1 = &unk_2A1E80D48;
  return a1;
}

void sub_297CB54F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Set_Idc_Cfg_Cnf::~Set_Idc_Cfg_Cnf(mipc::sys::Set_Idc_Cfg_Cnf *this)
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

uint64_t mipc::sys::Set_Idc_Cfg_Cnf::getSize(mipc::sys::Set_Idc_Cfg_Cnf *this)
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

double mipc::sys::Forward_At_Req::Forward_At_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 181;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E80D90;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 181;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E80D90;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sys::Forward_At_Req::~Forward_At_Req(mipc::sys::Forward_At_Req *this)
{
  *this = &unk_2A1E80D90;
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
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete(v3);
  }

  *this = &unk_2A1E85968;
  v4 = *(this + 9);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 63) < 0)
  {
LABEL_10:
    operator delete(*(this + 5));
  }

LABEL_11:
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
  *this = &unk_2A1E80D90;
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
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete(v3);
  }

  *this = &unk_2A1E85968;
  v4 = *(this + 9);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 63) < 0)
  {
LABEL_10:
    operator delete(*(this + 5));
  }

LABEL_11:
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
  *this = &unk_2A1E80D90;
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
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

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
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(this + 63) < 0)
  {
LABEL_10:
    operator delete(*(this + 5));
  }

LABEL_11:
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

void mipc::sys::Forward_At_Req::serialize(mipc::sys::Forward_At_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 88);
  v4 = *(this + 11);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *(v4 + 23);
  v7 = *(v4 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  if ((v7 - 65531) >= 0xFFFFFFFFFFFF0000)
  {
    v8 = ((v7 + 12) & 0xFFF8) + 16;
  }

  else
  {
LABEL_5:
    v8 = 16;
  }

  v9 = v8 + 8 * (*(this + 12) != 0);
  *&v35 = operator new(v9);
  v36 = v35 + v9;
  bzero(v35, v9);
  *(&v35 + 1) = v35 + v9;
  v34 = v35;
  v33 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v28, this, &v34);
  v10 = v31;
  *&__p[1] = *v29;
  __p[3] = v30;
  __p[0] = v28;
  v33 = v31;
  if (v28)
  {
    *a2 = v28;
    *(a2 + 8) = *&__p[1];
    v11 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
LABEL_53:
    *(a2 + 48) = 1;
    goto LABEL_54;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<2048ul,false>,true>(&v28, this, v5, &v34);
  __p[0] = v28;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v29;
  __p[3] = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29[0]) = 0;
  v12 = v31;
  v31 = 0uLL;
  v33 = v12;
  if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v10 + 1) + 16))(*(&v10 + 1));
    std::__shared_weak_count::__release_weak(*(&v10 + 1));
    v13 = *(&v31 + 1);
    v14 = __p[0];
    if (!*(&v31 + 1))
    {
LABEL_15:
      if ((SHIBYTE(v30) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      operator delete(v29[0]);
      if (v14)
      {
        goto LABEL_52;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v13 = *(&v31 + 1);
    v14 = __p[0];
    if (!*(&v31 + 1))
    {
      goto LABEL_15;
    }
  }

  if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_15;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v14)
  {
    goto LABEL_52;
  }

LABEL_22:
  if (*(this + 12))
  {
    *v34 = 257;
    v15 = v34++;
    v15[1] = 1;
    v16 = v34++;
    *(v16 + 2) = **(this + 12);
    v34 += 2;
  }

  else if (!*(this + 4))
  {
    v17 = 0x10000000FLL;
    goto LABEL_26;
  }

  v17 = 0;
LABEL_26:
  v37 = 0;
  v38 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v17, 0x101u, &v37, "", 0, &v28);
  v18 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  __p[0] = v28;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v29;
  __p[3] = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29[0]) = 0;
  v19 = v31;
  v31 = 0uLL;
  v20 = *(&v33 + 1);
  v33 = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *(&v31 + 1);
  v22 = __p[0];
  if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
    if (!v22)
    {
      goto LABEL_41;
    }

LABEL_52:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v33;
    goto LABEL_53;
  }

  if (v22)
  {
    goto LABEL_52;
  }

LABEL_41:
  (*(*this + 32))(&v28, this, &v35);
  __p[0] = v28;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v29;
  __p[3] = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29[0]) = 0;
  v23 = v31;
  v31 = 0uLL;
  v24 = *(&v33 + 1);
  v33 = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v31 + 1);
  v26 = __p[0];
  if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (v26)
  {
    goto LABEL_52;
  }

  *a2 = v35;
  *(a2 + 16) = v36;
  v36 = 0;
  v35 = 0uLL;
  *(a2 + 48) = 0;
  v27 = *(&v33 + 1);
  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

LABEL_54:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }
}