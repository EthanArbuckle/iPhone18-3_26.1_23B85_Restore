void sub_297C14050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::data::Get_Anbr_Cnf *mipc::data::Get_Anbr_Cnf::Get_Anbr_Cnf(mipc::data::Get_Anbr_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 600, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E79530;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::data::Get_Anbr_Cnf::deserialize(this, v7);
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

void sub_297C141F4(_Unwind_Exception *a1)
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

void mipc::data::Get_Anbr_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 12, 0x101u, &v12);
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

void *mipc::data::Get_Anbr_Cnf::Get_Anbr_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 600, &v14, a3, 2);
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
  *a1 = &unk_2A1E7AB80;
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
  *a1 = &unk_2A1E79530;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297C14730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Get_Anbr_Cnf::~Get_Anbr_Cnf(mipc::data::Get_Anbr_Cnf *this)
{
  *this = &unk_2A1E79530;
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
  *this = &unk_2A1E79530;
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
  *this = &unk_2A1E79530;
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

uint64_t mipc::data::Get_Anbr_Cnf::getSize(mipc::data::Get_Anbr_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::data::Get_Link_Capacity_Estimate_Req::Get_Link_Capacity_Estimate_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 605;
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
  *a1 = &unk_2A1E79578;
  return result;
}

{
  *(a1 + 8) = 605;
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
  *a1 = &unk_2A1E79578;
  return result;
}

void mipc::data::Get_Link_Capacity_Estimate_Req::~Get_Link_Capacity_Estimate_Req(mipc::data::Get_Link_Capacity_Estimate_Req *this)
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

void mipc::data::Get_Link_Capacity_Estimate_Req::serialize(mipc::data::Get_Link_Capacity_Estimate_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C151B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::data::Get_Link_Capacity_Estimate_Cnf *mipc::data::Get_Link_Capacity_Estimate_Cnf::Get_Link_Capacity_Estimate_Cnf(mipc::data::Get_Link_Capacity_Estimate_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 606, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E795C0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  mipc::data::Get_Link_Capacity_Estimate_Cnf::deserialize(this, v7);
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

void sub_297C15324(_Unwind_Exception *a1)
{
  v4 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 13);
      *(v1 + 13) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 12);
    *(v1 + 12) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v6);
  v7 = *(v1 + 12);
  *(v1 + 12) = 0;
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

void mipc::data::Get_Link_Capacity_Estimate_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v24);
  v4 = v24;
  *a2 = v24;
  v5 = v27;
  *(a2 + 1) = *__p;
  a2[3] = v26;
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v24);
  *a2 = v24;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v26;
  HIBYTE(v26) = 0;
  LOBYTE(__p[0]) = 0;
  v6 = v27;
  v27 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v27 + 1);
  if (!*(&v27 + 1) || atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v26) & 0x80000000) == 0)
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
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v7)
  {
    return;
  }

LABEL_15:
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x101u, &v24);
  *a2 = v24;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v26;
  HIBYTE(v26) = 0;
  LOBYTE(__p[0]) = 0;
  v9 = v27;
  v27 = 0uLL;
  v10 = a2[5];
  *(a2 + 2) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *a2;
  v12 = *(&v27 + 1);
  if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v11)
  {
    mipc::Message::deserializeTlv<unsigned int,true>(this, this + 13, 0x102u, &v24);
    *a2 = v24;
    if (*(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }

    *(a2 + 1) = *__p;
    a2[3] = v26;
    HIBYTE(v26) = 0;
    LOBYTE(__p[0]) = 0;
    v13 = v27;
    v27 = 0uLL;
    v14 = a2[5];
    *(a2 + 2) = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *a2;
    v16 = *(&v27 + 1);
    if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v15)
    {
      mipc::Message::deserializeTlv<unsigned int,true>(this, this + 14, 0x103u, &v24);
      *a2 = v24;
      if (*(a2 + 31) < 0)
      {
        operator delete(a2[1]);
      }

      *(a2 + 1) = *__p;
      a2[3] = v26;
      HIBYTE(v26) = 0;
      LOBYTE(__p[0]) = 0;
      v17 = v27;
      v27 = 0uLL;
      v18 = a2[5];
      *(a2 + 2) = v17;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = *a2;
      v20 = *(&v27 + 1);
      if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v19)
      {
        mipc::Message::deserializeTlv<unsigned char,true>(this, this + 15, 0x104u, &v24);
        *a2 = v24;
        if (*(a2 + 31) < 0)
        {
          operator delete(a2[1]);
        }

        *(a2 + 1) = *__p;
        a2[3] = v26;
        HIBYTE(v26) = 0;
        LOBYTE(__p[0]) = 0;
        v21 = v27;
        v27 = 0uLL;
        v22 = a2[5];
        *(a2 + 2) = v21;
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v23 = *(&v27 + 1);
        if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

uint64_t mipc::data::Get_Link_Capacity_Estimate_Cnf::Get_Link_Capacity_Estimate_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 606, &v14, a3, 2);
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
  *a1 = &unk_2A1E7ABC8;
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
  *a1 = &unk_2A1E795C0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_297C15BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Get_Link_Capacity_Estimate_Cnf::~Get_Link_Capacity_Estimate_Cnf(mipc::data::Get_Link_Capacity_Estimate_Cnf *this)
{
  *this = &unk_2A1E795C0;
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
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (*(this + 63) < 0)
  {
LABEL_14:
    operator delete(*(this + 5));
  }

LABEL_15:
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
  mipc::data::Get_Link_Capacity_Estimate_Cnf::~Get_Link_Capacity_Estimate_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::data::Get_Link_Capacity_Estimate_Cnf::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1;
}

mipc::data::Act_Call_Ind *mipc::data::Act_Call_Ind::Act_Call_Ind(mipc::data::Act_Call_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16897, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E79608;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 47) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 80) = 1;
  mipc::data::Act_Call_Ind::deserialize(this, &v7);
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

void sub_297C15F74(_Unwind_Exception *a1)
{
  v4 = *(v1 + 47);
  *(v1 + 47) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 46);
    *(v1 + 46) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 45);
      *(v1 + 45) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v5 = *(v1 + 46);
    *(v1 + 46) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 45);
  *(v1 + 45) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 44);
    *(v1 + 44) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v6);
  v7 = *(v1 + 44);
  *(v1 + 44) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 43);
    *(v1 + 43) = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v7);
  v8 = *(v1 + 43);
  *(v1 + 43) = 0;
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 42);
    *(v1 + 42) = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v8);
  v9 = *(v1 + 42);
  *(v1 + 42) = 0;
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 39);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v9);
  v10 = *(v1 + 39);
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 36);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v1 + 40) = v10;
  operator delete(v10);
  v11 = *(v1 + 36);
  if (!v11)
  {
LABEL_9:
    v12 = *(v1 + 33);
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v1 + 37) = v11;
  operator delete(v11);
  v12 = *(v1 + 33);
  if (!v12)
  {
LABEL_10:
    v13 = *(v1 + 30);
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v1 + 34) = v12;
  operator delete(v12);
  v13 = *(v1 + 30);
  if (!v13)
  {
LABEL_11:
    v14 = *(v1 + 27);
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v1 + 31) = v13;
  operator delete(v13);
  v14 = *(v1 + 27);
  if (!v14)
  {
LABEL_12:
    v15 = *(v1 + 24);
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v1 + 28) = v14;
  operator delete(v14);
  v15 = *(v1 + 24);
  if (!v15)
  {
LABEL_13:
    v16 = *(v1 + 23);
    *(v1 + 23) = 0;
    if (!v16)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v1 + 25) = v15;
  operator delete(v15);
  v16 = *(v1 + 23);
  *(v1 + 23) = 0;
  if (!v16)
  {
LABEL_14:
    v17 = *(v1 + 22);
    *(v1 + 22) = 0;
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v16);
  v17 = *(v1 + 22);
  *(v1 + 22) = 0;
  if (!v17)
  {
LABEL_15:
    v18 = *(v1 + 21);
    *(v1 + 21) = 0;
    if (!v18)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v17);
  v18 = *(v1 + 21);
  *(v1 + 21) = 0;
  if (!v18)
  {
LABEL_16:
    v19 = *(v1 + 20);
    *(v1 + 20) = 0;
    if (!v19)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v18);
  v19 = *(v1 + 20);
  *(v1 + 20) = 0;
  if (!v19)
  {
LABEL_17:
    v20 = *(v1 + 19);
    *(v1 + 19) = 0;
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v19);
  v20 = *(v1 + 19);
  *(v1 + 19) = 0;
  if (!v20)
  {
LABEL_18:
    v21 = *(v1 + 18);
    *(v1 + 18) = 0;
    if (!v21)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(v20);
  v21 = *(v1 + 18);
  *(v1 + 18) = 0;
  if (!v21)
  {
LABEL_19:
    v22 = *(v1 + 17);
    *(v1 + 17) = 0;
    if (!v22)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v21);
  v22 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (!v22)
  {
LABEL_20:
    v23 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(v22);
  v23 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (!v23)
  {
LABEL_21:
    v24 = *(v1 + 15);
    *(v1 + 15) = 0;
    if (!v24)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  operator delete(v23);
  v24 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (!v24)
  {
LABEL_22:
    v25 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v25)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  operator delete(v24);
  v25 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (!v25)
  {
LABEL_23:
    v26 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v26)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  operator delete(v25);
  v26 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v26)
  {
LABEL_24:
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 12);
    v27 = *v2;
    *v2 = 0;
    if (!v27)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  operator delete(v26);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 12);
  v27 = *v2;
  *v2 = 0;
  if (!v27)
  {
LABEL_25:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_49:
  operator delete(v27);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::data::Act_Call_Ind::deserialize(mipc::data::Act_Call_Ind *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v47);
  *a2 = v47;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v49;
  HIBYTE(v49) = 0;
  LOBYTE(__p) = 0;
  v4 = v50;
  v50 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v50 + 1);
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v49) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v47);
  *a2 = v47;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v49;
  HIBYTE(v49) = 0;
  LOBYTE(__p) = 0;
  v8 = v50;
  v50 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v50 + 1);
  if (!*(&v50 + 1) || atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v49) & 0x80000000) == 0)
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
  if (SHIBYTE(v49) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, this + 12, 0x101u, &v47);
  *a2 = v47;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v49;
  HIBYTE(v49) = 0;
  LOBYTE(__p) = 0;
  v12 = v50;
  v50 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v50 + 1);
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 13, 0x102u, &v47);
    *a2 = v47;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v49;
    HIBYTE(v49) = 0;
    LOBYTE(__p) = 0;
    v16 = v50;
    v50 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v50 + 1);
    if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,false>(this, this + 14, 0x121u, &v47);
      *a2 = v47;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v49;
      HIBYTE(v49) = 0;
      LOBYTE(__p) = 0;
      v20 = v50;
      v50 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v50 + 1);
      if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<unsigned int,false>(this, this + 15, 0x123u, &v47);
        *a2 = v47;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v49;
        HIBYTE(v49) = 0;
        LOBYTE(__p) = 0;
        v24 = v50;
        v50 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v50 + 1);
        if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<unsigned int,false>(this, this + 16, 0x124u, &v47);
          v28 = *mipc::Error::operator=(a2, &v47);
          mipc::Error::~Error(&v47);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned int,false>(this, this + 17, 0x125u, &v47);
            v29 = *mipc::Error::operator=(a2, &v47);
            mipc::Error::~Error(&v47);
            if (!v29)
            {
              mipc::Message::deserializeTlv<unsigned char,false>(this, this + 18, 0x126u, &v47);
              v30 = *mipc::Error::operator=(a2, &v47);
              mipc::Error::~Error(&v47);
              if (!v30)
              {
                mipc::Message::deserializeTlv<unsigned char,false>(this, this + 19, 0x127u, &v47);
                v31 = *mipc::Error::operator=(a2, &v47);
                mipc::Error::~Error(&v47);
                if (!v31)
                {
                  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 20, 0x128u, &v47);
                  v32 = *mipc::Error::operator=(a2, &v47);
                  mipc::Error::~Error(&v47);
                  if (!v32)
                  {
                    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 21, 0x129u, &v47);
                    v33 = *mipc::Error::operator=(a2, &v47);
                    mipc::Error::~Error(&v47);
                    if (!v33)
                    {
                      mipc::Message::deserializeTlv<unsigned int,false>(this, this + 22, 0x12Bu, &v47);
                      v34 = *mipc::Error::operator=(a2, &v47);
                      mipc::Error::~Error(&v47);
                      if (!v34)
                      {
                        mipc::Message::deserializeTlv<unsigned char,false>(this, this + 23, 0x12Cu, &v47);
                        v35 = *mipc::Error::operator=(a2, &v47);
                        mipc::Error::~Error(&v47);
                        if (!v35)
                        {
                          mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,4ul,false>(&v47, this, this + 24, 0x12Eu);
                          v36 = *mipc::Error::operator=(a2, &v47);
                          mipc::Error::~Error(&v47);
                          if (!v36)
                          {
                            mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,4ul,false>(&v47, this, this + 27, 0x12Fu);
                            v37 = *mipc::Error::operator=(a2, &v47);
                            mipc::Error::~Error(&v47);
                            if (!v37)
                            {
                              mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,10ul,false>(&v47, this, this + 30, 0x130u);
                              v38 = *mipc::Error::operator=(a2, &v47);
                              mipc::Error::~Error(&v47);
                              if (!v38)
                              {
                                mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,10ul,false>(&v47, this, this + 33, 0x131u);
                                v39 = *mipc::Error::operator=(a2, &v47);
                                mipc::Error::~Error(&v47);
                                if (!v39)
                                {
                                  mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,16ul,false>(&v47, this, this + 36, 0x132u);
                                  v40 = *mipc::Error::operator=(a2, &v47);
                                  mipc::Error::~Error(&v47);
                                  if (!v40)
                                  {
                                    mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,16ul,false>(&v47, this, this + 39, 0x133u);
                                    v41 = *mipc::Error::operator=(a2, &v47);
                                    mipc::Error::~Error(&v47);
                                    if (!v41)
                                    {
                                      mipc::Message::deserializeTlv<unsigned char,false>(this, this + 42, 0x134u, &v47);
                                      v42 = *mipc::Error::operator=(a2, &v47);
                                      mipc::Error::~Error(&v47);
                                      if (!v42)
                                      {
                                        mipc::Message::deserializeTlv<mipc::mipc_s_nssai_struct_struct4,false>(&v47, this, this + 43, 0x136u);
                                        v43 = *mipc::Error::operator=(a2, &v47);
                                        mipc::Error::~Error(&v47);
                                        if (!v43)
                                        {
                                          mipc::Message::deserializeTlv<unsigned char,false>(this, this + 44, 0x137u, &v47);
                                          v44 = *mipc::Error::operator=(a2, &v47);
                                          mipc::Error::~Error(&v47);
                                          if (!v44)
                                          {
                                            mipc::Message::deserializeTlv<unsigned char,false>(this, this + 45, 0x138u, &v47);
                                            v45 = *mipc::Error::operator=(a2, &v47);
                                            mipc::Error::~Error(&v47);
                                            if (!v45)
                                            {
                                              mipc::Message::deserializeTlv<unsigned char,false>(this, this + 46, 0x139u, &v47);
                                              v46 = *mipc::Error::operator=(a2, &v47);
                                              mipc::Error::~Error(&v47);
                                              if (!v46)
                                              {
                                                mipc::Message::deserializeTlv<unsigned int,false>(this, this + 47, 0x13Au, &v47);
                                                mipc::Error::operator=(a2, &v47);
                                                mipc::Error::~Error(&v47);
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t mipc::data::Act_Call_Ind::Act_Call_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16897, &v14, a3, 3);
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
  *a1 = &unk_2A1E7AC10;
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
  *a1 = &unk_2A1E79608;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297C170B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Act_Call_Ind::~Act_Call_Ind(mipc::data::Act_Call_Ind *this)
{
  *this = &unk_2A1E79608;
  v2 = *(this + 47);
  *(this + 47) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 45);
  *(this + 45) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 44);
  *(this + 44) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 43);
  *(this + 43) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 42);
  *(this + 42) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 39);
  if (v8)
  {
    *(this + 40) = v8;
    operator delete(v8);
  }

  v9 = *(this + 36);
  if (v9)
  {
    *(this + 37) = v9;
    operator delete(v9);
  }

  v10 = *(this + 33);
  if (v10)
  {
    *(this + 34) = v10;
    operator delete(v10);
  }

  v11 = *(this + 30);
  if (v11)
  {
    *(this + 31) = v11;
    operator delete(v11);
  }

  v12 = *(this + 27);
  if (v12)
  {
    *(this + 28) = v12;
    operator delete(v12);
  }

  v13 = *(this + 24);
  if (v13)
  {
    *(this + 25) = v13;
    operator delete(v13);
  }

  v14 = *(this + 23);
  *(this + 23) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 22);
  *(this + 22) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(this + 21);
  *(this + 21) = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(this + 20);
  *(this + 20) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(this + 19);
  *(this + 19) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(this + 18);
  *(this + 18) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(this + 17);
  *(this + 17) = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(this + 16);
  *(this + 16) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(this + 15);
  *(this + 15) = 0;
  if (v22)
  {
    operator delete(v22);
  }

  v23 = *(this + 14);
  *(this + 14) = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(this + 13);
  *(this + 13) = 0;
  if (v24)
  {
    operator delete(v24);
  }

  v25 = *(this + 12);
  *(this + 12) = 0;
  if (v25)
  {
    if (*(v25 + 23) < 0)
    {
      operator delete(*v25);
    }

    operator delete(v25);
  }

  v26 = *(this + 11);
  *(this + 11) = 0;
  if (v26)
  {
    operator delete(v26);
  }

  *this = &unk_2A1E85968;
  v27 = *(this + 9);
  if (!v27 || atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if (*(this + 63) < 0)
  {
LABEL_56:
    operator delete(*(this + 5));
  }

LABEL_57:
  v28 = *(this + 3);
  if (v28)
  {
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }
  }
}

{
  mipc::data::Act_Call_Ind::~Act_Call_Ind(this);

  operator delete(v1);
}

unint64_t mipc::data::Act_Call_Ind::getSize(mipc::data::Act_Call_Ind *this, double a2, double a3, double a4, double a5, double a6, double a7, double a8, int64x2_t a9)
{
  v9 = *(this + 12);
  if (v9)
  {
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v12 = __CFADD__(v11 - 65531, 0x10000);
    v9 = (v11 + 12) & 0xFFF8;
    if (!v12)
    {
      v9 = 0;
    }
  }

  v13 = *(this + 24);
  v14 = *(this + 25);
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = ((2 * (v14 - v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v16 = *(this + 27);
  v17 = *(this + 28);
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 24 * ((v17 - v16 - 16) >> 4) + 40;
  }

  v19 = *(this + 30);
  v20 = *(this + 31);
  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = ((2 * (v20 - v19)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v22 = *(this + 33);
  v23 = *(this + 34);
  if (v22 == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 24 * ((v23 - v22 - 16) >> 4) + 40;
  }

  v26 = *(this + 36);
  v25 = *(this + 37);
  if (v26 == v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = ((2 * (v25 - v26)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v28 = *(this + 39);
  v29 = *(this + 40);
  v30 = 24 * ((v29 - v28 - 16) >> 4) + 40;
  if (v28 == v29)
  {
    v30 = 0;
  }

  v31 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v31 = 32;
  }

  a9.i64[0] = *(this + 23);
  v32 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vbicq_s8(v32, vceqzq_s64(*(this + 104))), vbicq_s8(v32, vceqzq_s64(*(this + 168)))), vaddq_s64(vbicq_s8(v32, vceqzq_s64(*(this + 136))), vbicq_s8(xmmword_297DCA380, vceqzq_s64(vextq_s8(*(this + 21), *(this + 22), 8uLL))))), vaddq_s64(vaddq_s64(vbicq_s8(v32, vceqzq_s64(*(this + 120))), vbicq_s8(v32, vceqzq_s64(vzip1q_s64(a9, *(this + 21))))), vaddq_s64(vbicq_s8(v32, vceqzq_s64(*(this + 152))), vbicq_s8(v32, vceqzq_s64(*(this + 360))))))) + 8 * (*(this + 11) != 0) + v31 + 8 * (*(this + 47) != 0) + v30 + v27 + v24 + v21 + v18 + v15 + v9;
}

mipc::data::Deact_Call_Ind *mipc::data::Deact_Call_Ind::Deact_Call_Ind(mipc::data::Deact_Call_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16898, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E79650;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::data::Deact_Call_Ind::deserialize(this, v7);
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

void sub_297C176D8(_Unwind_Exception *a1)
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

void mipc::data::Deact_Call_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v12);
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
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x102u, &v12);
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

void *mipc::data::Deact_Call_Ind::Deact_Call_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16898, &v14, a3, 3);
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
  *a1 = &unk_2A1E7AC58;
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
  *a1 = &unk_2A1E79650;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297C17C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Deact_Call_Ind::~Deact_Call_Ind(mipc::data::Deact_Call_Ind *this)
{
  *this = &unk_2A1E79650;
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
  *this = &unk_2A1E79650;
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
  *this = &unk_2A1E79650;
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

uint64_t mipc::data::Deact_Call_Ind::getSize(mipc::data::Deact_Call_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

mipc::data::Mod_Call_Ind *mipc::data::Mod_Call_Ind::Mod_Call_Ind(mipc::data::Mod_Call_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16899, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E79698;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 80) = 1;
  mipc::data::Mod_Call_Ind::deserialize(this, &v7);
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

void sub_297C181A0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 38);
  *(v1 + 38) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 35);
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 32);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v5 = *(v1 + 35);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 36) = v5;
  operator delete(v5);
  v6 = *(v1 + 32);
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 29);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v1 + 33) = v6;
  operator delete(v6);
  v7 = *(v1 + 29);
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 26);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v1 + 30) = v7;
  operator delete(v7);
  v8 = *(v1 + 26);
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 23);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v1 + 27) = v8;
  operator delete(v8);
  v9 = *(v1 + 23);
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 20);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v1 + 24) = v9;
  operator delete(v9);
  v10 = *(v1 + 20);
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 19);
    *(v1 + 19) = 0;
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v1 + 21) = v10;
  operator delete(v10);
  v11 = *(v1 + 19);
  *(v1 + 19) = 0;
  if (!v11)
  {
LABEL_9:
    v12 = *(v1 + 18);
    *(v1 + 18) = 0;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v11);
  v12 = *(v1 + 18);
  *(v1 + 18) = 0;
  if (!v12)
  {
LABEL_10:
    v13 = *(v1 + 17);
    *(v1 + 17) = 0;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v12);
  v13 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (!v13)
  {
LABEL_11:
    v14 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v13);
  v14 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (!v14)
  {
LABEL_12:
    v15 = *(v1 + 15);
    *(v1 + 15) = 0;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v14);
  v15 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (!v15)
  {
LABEL_13:
    v16 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v16)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v15);
  v16 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (!v16)
  {
LABEL_14:
    v17 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v16);
  v17 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v17)
  {
LABEL_15:
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 12);
    v18 = *v2;
    *v2 = 0;
    if (!v18)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v17);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 12);
  v18 = *v2;
  *v2 = 0;
  if (!v18)
  {
LABEL_16:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_31:
  operator delete(v18);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::data::Mod_Call_Ind::deserialize(mipc::data::Mod_Call_Ind *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v38);
  *a2 = v38;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v40;
  HIBYTE(v40) = 0;
  LOBYTE(__p) = 0;
  v4 = v41;
  v41 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v41 + 1);
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v38);
  *a2 = v38;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v40;
  HIBYTE(v40) = 0;
  LOBYTE(__p) = 0;
  v8 = v41;
  v41 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v41 + 1);
  if (!*(&v41 + 1) || atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
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
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, this + 12, 0x101u, &v38);
  *a2 = v38;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v40;
  HIBYTE(v40) = 0;
  LOBYTE(__p) = 0;
  v12 = v41;
  v41 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v41 + 1);
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 13, 0x102u, &v38);
    *a2 = v38;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(__p) = 0;
    v16 = v41;
    v41 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v41 + 1);
    if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,false>(this, this + 14, 0x121u, &v38);
      *a2 = v38;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v40;
      HIBYTE(v40) = 0;
      LOBYTE(__p) = 0;
      v20 = v41;
      v41 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v41 + 1);
      if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<unsigned int,false>(this, this + 15, 0x123u, &v38);
        *a2 = v38;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v40;
        HIBYTE(v40) = 0;
        LOBYTE(__p) = 0;
        v24 = v41;
        v41 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v41 + 1);
        if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<unsigned int,false>(this, this + 16, 0x124u, &v38);
          v28 = *mipc::Error::operator=(a2, &v38);
          mipc::Error::~Error(&v38);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned int,false>(this, this + 17, 0x128u, &v38);
            v29 = *mipc::Error::operator=(a2, &v38);
            mipc::Error::~Error(&v38);
            if (!v29)
            {
              mipc::Message::deserializeTlv<unsigned char,false>(this, this + 18, 0x129u, &v38);
              v30 = *mipc::Error::operator=(a2, &v38);
              mipc::Error::~Error(&v38);
              if (!v30)
              {
                mipc::Message::deserializeTlv<unsigned char,false>(this, this + 19, 0x12Au, &v38);
                v31 = *mipc::Error::operator=(a2, &v38);
                mipc::Error::~Error(&v38);
                if (!v31)
                {
                  mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,4ul,false>(&v38, this, this + 20, 0x12Eu);
                  v32 = *mipc::Error::operator=(a2, &v38);
                  mipc::Error::~Error(&v38);
                  if (!v32)
                  {
                    mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,4ul,false>(&v38, this, this + 23, 0x12Fu);
                    v33 = *mipc::Error::operator=(a2, &v38);
                    mipc::Error::~Error(&v38);
                    if (!v33)
                    {
                      mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,10ul,false>(&v38, this, this + 26, 0x130u);
                      v34 = *mipc::Error::operator=(a2, &v38);
                      mipc::Error::~Error(&v38);
                      if (!v34)
                      {
                        mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,10ul,false>(&v38, this, this + 29, 0x131u);
                        v35 = *mipc::Error::operator=(a2, &v38);
                        mipc::Error::~Error(&v38);
                        if (!v35)
                        {
                          mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,16ul,false>(&v38, this, this + 32, 0x132u);
                          v36 = *mipc::Error::operator=(a2, &v38);
                          mipc::Error::~Error(&v38);
                          if (!v36)
                          {
                            mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,16ul,false>(&v38, this, this + 35, 0x133u);
                            v37 = *mipc::Error::operator=(a2, &v38);
                            mipc::Error::~Error(&v38);
                            if (!v37)
                            {
                              mipc::Message::deserializeTlv<unsigned char,false>(this, this + 38, 0x134u, &v38);
                              mipc::Error::operator=(a2, &v38);
                              mipc::Error::~Error(&v38);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t mipc::data::Mod_Call_Ind::Mod_Call_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16899, &v14, a3, 3);
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
  *a1 = &unk_2A1E7ACA0;
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
  *a1 = &unk_2A1E79698;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297C18F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Mod_Call_Ind::~Mod_Call_Ind(mipc::data::Mod_Call_Ind *this)
{
  *this = &unk_2A1E79698;
  v2 = *(this + 38);
  *(this + 38) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 32);
  if (v4)
  {
    *(this + 33) = v4;
    operator delete(v4);
  }

  v5 = *(this + 29);
  if (v5)
  {
    *(this + 30) = v5;
    operator delete(v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    *(this + 27) = v6;
    operator delete(v6);
  }

  v7 = *(this + 23);
  if (v7)
  {
    *(this + 24) = v7;
    operator delete(v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    *(this + 21) = v8;
    operator delete(v8);
  }

  v9 = *(this + 19);
  *(this + 19) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 18);
  *(this + 18) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 17);
  *(this + 17) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 16);
  *(this + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 15);
  *(this + 15) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(this + 14);
  *(this + 14) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 13);
  *(this + 13) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(this + 12);
  *(this + 12) = 0;
  if (v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    operator delete(v16);
  }

  v17 = *(this + 11);
  *(this + 11) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  *this = &unk_2A1E85968;
  v18 = *(this + 9);
  if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (*(this + 63) < 0)
  {
LABEL_38:
    operator delete(*(this + 5));
  }

LABEL_39:
  v19 = *(this + 3);
  if (v19)
  {
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }
}

{
  mipc::data::Mod_Call_Ind::~Mod_Call_Ind(this);

  operator delete(v1);
}

unint64_t mipc::data::Mod_Call_Ind::getSize(mipc::data::Mod_Call_Ind *this)
{
  v1 = *(this + 12);
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

  v5 = *(this + 20);
  v6 = *(this + 21);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((2 * (v6 - v5)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v8 = *(this + 23);
  v9 = *(this + 24);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 24 * ((v9 - v8 - 16) >> 4) + 40;
  }

  v11 = *(this + 26);
  v12 = *(this + 27);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = ((2 * (v12 - v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v14 = *(this + 29);
  v15 = *(this + 30);
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 24 * ((v15 - v14 - 16) >> 4) + 40;
  }

  v18 = *(this + 32);
  v17 = *(this + 33);
  if (v18 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = ((2 * (v17 - v18)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v20 = *(this + 35);
  v21 = *(this + 36);
  v22 = 24 * ((v21 - v20 - 16) >> 4) + 40;
  if (v20 == v21)
  {
    v22 = 0;
  }

  v23 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v23 = 32;
  }

  v24.i64[0] = *(this + 19);
  v24.i64[1] = *(this + 38);
  v25 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vbicq_s8(v25, vceqzq_s64(*(this + 104))), vbicq_s8(v25, vceqzq_s64(*(this + 136)))), vaddq_s64(vbicq_s8(v25, vceqzq_s64(*(this + 120))), vbicq_s8(v25, vceqzq_s64(v24))))) + 8 * (*(this + 11) != 0) + v23 + v22 + v19 + v16 + v13 + v10 + v7 + v1;
}

mipc::data::Mod_Pco_Ind *mipc::data::Mod_Pco_Ind::Mod_Pco_Ind(mipc::data::Mod_Pco_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16900, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E796E0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  mipc::data::Mod_Pco_Ind::deserialize(this, v7);
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

void sub_297C194B0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 12);
  if (v4)
  {
    *(v1 + 13) = v4;
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

void mipc::data::Mod_Pco_Ind::deserialize(mipc::data::Mod_Pco_Ind *this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v12);
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
  mipc::Message::deserializeTlv<mipc::mipc_data_pco_ie_struct4,20ul,false>(&v12, this, this + 12);
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

uint64_t mipc::data::Mod_Pco_Ind::Mod_Pco_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16900, &v14, a3, 3);
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
  *a1 = &unk_2A1E7ACE8;
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
  *a1 = &unk_2A1E796E0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_297C199F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Mod_Pco_Ind::~Mod_Pco_Ind(mipc::data::Mod_Pco_Ind *this)
{
  *this = &unk_2A1E796E0;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
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
  *this = &unk_2A1E796E0;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
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
  *this = &unk_2A1E796E0;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
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

unint64_t mipc::data::Mod_Pco_Ind::getSize(mipc::data::Mod_Pco_Ind *this)
{
  v1 = *(this + 12);
  v2 = *(this + 13);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 96 * ((v2 - v1 - 88) / 0x58uLL) + 112;
  }

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v4 + 8 * (*(this + 11) != 0) + v3;
}

mipc::data::Md_Act_Call_Ind *mipc::data::Md_Act_Call_Ind::Md_Act_Call_Ind(mipc::data::Md_Act_Call_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16906, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E79728;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::data::Md_Act_Call_Ind::deserialize(this, v7);
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

void sub_297C19F88(_Unwind_Exception *a1)
{
  v5 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (v5)
  {
    operator delete(v5);
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v2);
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
LABEL_3:
      mipc::ResponseMessage::~ResponseMessage(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v2);
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  operator delete(v6);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::data::Md_Act_Call_Ind::deserialize(mipc::data::Md_Act_Call_Ind *this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v16);
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

  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v16);
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
  mipc::Message::deserializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, this + 12, 0x101u, &v16);
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
    mipc::Message::deserializeTlv<unsigned int,true>(this, this + 13, 0x102u, &v16);
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

void *mipc::data::Md_Act_Call_Ind::Md_Act_Call_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16906, &v14, a3, 3);
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
  *a1 = &unk_2A1E7AD30;
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
  *a1 = &unk_2A1E79728;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297C1A5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Md_Act_Call_Ind::~Md_Act_Call_Ind(mipc::data::Md_Act_Call_Ind *this)
{
  *this = &unk_2A1E79728;
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
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

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
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (*(this + 63) < 0)
  {
LABEL_12:
    operator delete(*(this + 5));
  }

LABEL_13:
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
  *this = &unk_2A1E79728;
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
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

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
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (*(this + 63) < 0)
  {
LABEL_12:
    operator delete(*(this + 5));
  }

LABEL_13:
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
  *this = &unk_2A1E79728;
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
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

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

uint64_t mipc::data::Md_Act_Call_Ind::getSize(mipc::data::Md_Act_Call_Ind *this)
{
  v1 = *(this + 12);
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

  v5 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v5 = 32;
  }

  return v5 + 8 * (*(this + 11) != 0) + v1 + 8 * (*(this + 13) != 0);
}

mipc::data::Md_Deact_Call_Ind *mipc::data::Md_Deact_Call_Ind::Md_Deact_Call_Ind(mipc::data::Md_Deact_Call_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16907, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E79770;
  *(this + 11) = 0;
  mipc::data::Md_Deact_Call_Ind::deserialize(this, &v7);
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

void sub_297C1ABD0(_Unwind_Exception *a1)
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

void mipc::data::Md_Deact_Call_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::data::Md_Deact_Call_Ind::Md_Deact_Call_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16907, &v14, a3, 3);
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
  *a1 = &unk_2A1E7AD78;
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
  *a1 = &unk_2A1E79770;
  a1[11] = 0;
  return a1;
}

void sub_297C1AFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Md_Deact_Call_Ind::~Md_Deact_Call_Ind(mipc::data::Md_Deact_Call_Ind *this)
{
  *this = &unk_2A1E79770;
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
  *this = &unk_2A1E79770;
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
  *this = &unk_2A1E79770;
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

uint64_t mipc::data::Md_Deact_Call_Ind::getSize(mipc::data::Md_Deact_Call_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

mipc::data::Link_Capacity_Estimate_Ind *mipc::data::Link_Capacity_Estimate_Ind::Link_Capacity_Estimate_Ind(mipc::data::Link_Capacity_Estimate_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16909, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E797B8;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  mipc::data::Link_Capacity_Estimate_Ind::deserialize(this, v7);
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

void sub_297C1B4EC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 13);
      *(v1 + 13) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 12);
    *(v1 + 12) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v6);
  v7 = *(v1 + 12);
  *(v1 + 12) = 0;
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

void mipc::data::Link_Capacity_Estimate_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v24);
  v4 = v24;
  *a2 = v24;
  v5 = v27;
  *(a2 + 1) = *__p;
  a2[3] = v26;
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v24);
  *a2 = v24;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v26;
  HIBYTE(v26) = 0;
  LOBYTE(__p[0]) = 0;
  v6 = v27;
  v27 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v27 + 1);
  if (!*(&v27 + 1) || atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v26) & 0x80000000) == 0)
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
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v7)
  {
    return;
  }

LABEL_15:
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x101u, &v24);
  *a2 = v24;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *__p;
  a2[3] = v26;
  HIBYTE(v26) = 0;
  LOBYTE(__p[0]) = 0;
  v9 = v27;
  v27 = 0uLL;
  v10 = a2[5];
  *(a2 + 2) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *a2;
  v12 = *(&v27 + 1);
  if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v11)
  {
    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 13, 0x102u, &v24);
    *a2 = v24;
    if (*(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }

    *(a2 + 1) = *__p;
    a2[3] = v26;
    HIBYTE(v26) = 0;
    LOBYTE(__p[0]) = 0;
    v13 = v27;
    v27 = 0uLL;
    v14 = a2[5];
    *(a2 + 2) = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *a2;
    v16 = *(&v27 + 1);
    if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v15)
    {
      mipc::Message::deserializeTlv<unsigned int,false>(this, this + 14, 0x103u, &v24);
      *a2 = v24;
      if (*(a2 + 31) < 0)
      {
        operator delete(a2[1]);
      }

      *(a2 + 1) = *__p;
      a2[3] = v26;
      HIBYTE(v26) = 0;
      LOBYTE(__p[0]) = 0;
      v17 = v27;
      v27 = 0uLL;
      v18 = a2[5];
      *(a2 + 2) = v17;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = *a2;
      v20 = *(&v27 + 1);
      if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v19)
      {
        mipc::Message::deserializeTlv<unsigned char,false>(this, this + 15, 0x104u, &v24);
        *a2 = v24;
        if (*(a2 + 31) < 0)
        {
          operator delete(a2[1]);
        }

        *(a2 + 1) = *__p;
        a2[3] = v26;
        HIBYTE(v26) = 0;
        LOBYTE(__p[0]) = 0;
        v21 = v27;
        v27 = 0uLL;
        v22 = a2[5];
        *(a2 + 2) = v21;
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v23 = *(&v27 + 1);
        if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

uint64_t mipc::data::Link_Capacity_Estimate_Ind::Link_Capacity_Estimate_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16909, &v14, a3, 3);
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
  *a1 = &unk_2A1E7ADC0;
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
  *a1 = &unk_2A1E797B8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_297C1BDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Link_Capacity_Estimate_Ind::~Link_Capacity_Estimate_Ind(mipc::data::Link_Capacity_Estimate_Ind *this)
{
  *this = &unk_2A1E797B8;
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
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (*(this + 63) < 0)
  {
LABEL_14:
    operator delete(*(this + 5));
  }

LABEL_15:
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
  mipc::data::Link_Capacity_Estimate_Ind::~Link_Capacity_Estimate_Ind(this);

  operator delete(v1);
}

uint64_t mipc::data::Link_Capacity_Estimate_Ind::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1;
}

mipc::data::Timer_Ind *mipc::data::Timer_Ind::Timer_Ind(mipc::data::Timer_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16911, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E79800;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  mipc::data::Timer_Ind::deserialize(this, v7);
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

void sub_297C1C100(_Unwind_Exception *a1)
{
  v4 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 13);
      *(v1 + 13) = 0;
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v5 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v6)
  {
LABEL_5:
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 12);
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v2);
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(v6);
  goto LABEL_5;
}

void mipc::data::Timer_Ind::deserialize(mipc::data::Timer_Ind *this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 40))(v49);
  v4 = *v49;
  *a2 = *v49;
  v5 = v50;
  *(a2 + 1) = *&v49[8];
  a2[3] = *&v49[24];
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v6;
  v51 = v6;
  *v49 = v6;
  *&v49[16] = v6;
  mipc::Message::findTLV(this, 0x100u, v49);
  *&v48[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v48 = v7;
  *__p = v7;
  v46 = *v49;
  if ((v49[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v49[8], *&v49[16]);
  }

  else
  {
    *__p = *&v49[8];
    *v48 = *&v49[24];
  }

  *&v48[8] = v50;
  if (*(&v50 + 1))
  {
    atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v46;
  if (v46 && v46 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v46, &v40);
  }

  else
  {
    v9 = v51;
    v10 = *(&v51 + 1);
    v11 = *(this + 4);
    v12 = *(this + 11);
    *(this + 11) = 0;
    if (v12)
    {
      if (*(v12 + 23) < 0)
      {
        v13 = v12;
        operator delete(*v12);
        v12 = v13;
      }

      operator delete(v12);
    }

    if (v8)
    {
      v14 = 0x10000000FLL;
      if (v11)
      {
        v14 = 0;
      }

      if (v8 == 0x10000000ELL)
      {
        v15 = v14;
      }

      else
      {
        v15 = v8;
      }
    }

    else
    {
      v27 = operator new(0x18uLL);
      *v27 = 0;
      v27[1] = 0;
      v27[2] = 0;
      v28 = *(this + 11);
      *(this + 11) = v27;
      if (v28)
      {
        if (*(v28 + 23) < 0)
        {
          operator delete(*v28);
        }

        operator delete(v28);
        v27 = *(this + 11);
      }

      v15 = 0x100000003;
      if (v9)
      {
        if (v9 <= 0x10)
        {
          std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v27, v10, (v10 + v9 - 1), v9 - 1);
          v15 = 0;
        }

        else
        {
          v15 = 0x100000010;
        }
      }
    }

    v16 = *(this + 3);
    v44 = *(this + 2);
    v45 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v15, 0x100u, &v44, "", 0, &v40);
    v17 = v45;
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  v18 = *&v48[16];
  if (*&v48[16] && !atomic_fetch_add((*&v48[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if ((v48[7] & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v48[7] & 0x80000000) != 0)
  {
LABEL_28:
    operator delete(__p[0]);
  }

LABEL_29:
  v19 = *(&v50 + 1);
  if (!*(&v50 + 1) || atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v49[31] & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_44:
    operator delete(*&v49[8]);
    *a2 = v40;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_45:
    operator delete(a2[1]);
    goto LABEL_33;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if ((v49[31] & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_32:
  *a2 = v40;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_45;
  }

LABEL_33:
  *(a2 + 1) = v41;
  a2[3] = v42;
  HIBYTE(v42) = 0;
  LOBYTE(v41) = 0;
  v20 = v43;
  v43 = 0uLL;
  *(a2 + 2) = v20;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v21 = *a2;
  v22 = *(&v43 + 1);
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_47:
    operator delete(v41);
    if (v21)
    {
      return;
    }

    goto LABEL_48;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (SHIBYTE(v42) < 0)
  {
    goto LABEL_47;
  }

LABEL_39:
  if (v21)
  {
    return;
  }

LABEL_48:
  mipc::Message::deserializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, this + 12, 0x101u, v49);
  *a2 = *v49;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&v49[8];
  a2[3] = *&v49[24];
  v49[31] = 0;
  v49[8] = 0;
  v23 = v50;
  v50 = 0uLL;
  v24 = a2[5];
  *(a2 + 2) = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *a2;
  v26 = *(&v50 + 1);
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if ((v49[31] & 0x80000000) != 0)
  {
    operator delete(*&v49[8]);
    if (v25)
    {
      return;
    }
  }

  else if (v25)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 13, 0x102u, v49);
  *a2 = *v49;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&v49[8];
  a2[3] = *&v49[24];
  v49[31] = 0;
  v49[8] = 0;
  v29 = v50;
  v50 = 0uLL;
  v30 = a2[5];
  *(a2 + 2) = v29;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *a2;
  v32 = *(&v50 + 1);
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if ((v49[31] & 0x80000000) != 0)
  {
    operator delete(*&v49[8]);
  }

  if (!v31)
  {
    mipc::Message::deserializeTlv<unsigned int,true>(this, this + 14, 0x103u, v49);
    *a2 = *v49;
    if (*(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }

    *(a2 + 1) = *&v49[8];
    a2[3] = *&v49[24];
    v49[31] = 0;
    v49[8] = 0;
    v33 = v50;
    v50 = 0uLL;
    v34 = a2[5];
    *(a2 + 2) = v33;
    if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }

    v35 = *a2;
    v36 = *(&v50 + 1);
    if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }

    if ((v49[31] & 0x80000000) != 0)
    {
      operator delete(*&v49[8]);
    }

    if (!v35)
    {
      mipc::Message::deserializeTlv<unsigned int,true>(this, this + 15, 0x104u, v49);
      *a2 = *v49;
      if (*(a2 + 31) < 0)
      {
        operator delete(a2[1]);
      }

      *(a2 + 1) = *&v49[8];
      a2[3] = *&v49[24];
      v49[31] = 0;
      v49[8] = 0;
      v37 = v50;
      v50 = 0uLL;
      v38 = a2[5];
      *(a2 + 2) = v37;
      if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }

      v39 = *(&v50 + 1);
      if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v39->__on_zero_shared)(v39);
        std::__shared_weak_count::__release_weak(v39);
      }

      if ((v49[31] & 0x80000000) != 0)
      {
        operator delete(*&v49[8]);
      }
    }
  }
}

void sub_297C1CA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

uint64_t mipc::data::Timer_Ind::Timer_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16911, &v14, a3, 3);
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
  *a1 = &unk_2A1E7AE08;
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
  *a1 = &unk_2A1E79800;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_297C1CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Timer_Ind::~Timer_Ind(mipc::data::Timer_Ind *this)
{
  *this = &unk_2A1E79800;
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
    operator delete(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }

  *this = &unk_2A1E85968;
  v7 = *(this + 9);
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (*(this + 63) < 0)
  {
LABEL_18:
    operator delete(*(this + 5));
  }

LABEL_19:
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
  mipc::data::Timer_Ind::~Timer_Ind(this);

  operator delete(v1);
}

uint64_t mipc::data::Timer_Ind::getSize(mipc::data::Timer_Ind *this)
{
  v1 = *(this + 11);
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

  v5 = *(this + 12);
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

  v8 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v8 = 32;
  }

  return v1 + v5 + v8 + 8 * (*(this + 13) != 0) + 8 * (*(this + 14) != 0) + 8 * (*(this + 15) != 0);
}

mipc::data::Network_Reject_Cause_Ind *mipc::data::Network_Reject_Cause_Ind::Network_Reject_Cause_Ind(mipc::data::Network_Reject_Cause_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16914, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E79848;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::data::Network_Reject_Cause_Ind::deserialize(this, v7);
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

void sub_297C1D070(_Unwind_Exception *a1)
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
      v6 = *v2;
      *v2 = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
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
  v6 = *v2;
  *v2 = 0;
  if (!v6)
  {
LABEL_4:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v6);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::data::Network_Reject_Cause_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 11, 0x100u, &v16);
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
  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 12, 0x101u, &v16);
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
    mipc::Message::deserializeTlv<unsigned short,true>(this, this + 13, 0x102u, &v16);
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

void *mipc::data::Network_Reject_Cause_Ind::Network_Reject_Cause_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16914, &v14, a3, 3);
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
  *a1 = &unk_2A1E7AE50;
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
  *a1 = &unk_2A1E79848;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297C1D6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Network_Reject_Cause_Ind::~Network_Reject_Cause_Ind(mipc::data::Network_Reject_Cause_Ind *this)
{
  *this = &unk_2A1E79848;
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
  *this = &unk_2A1E79848;
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
  *this = &unk_2A1E79848;
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

uint64_t mipc::data::Network_Reject_Cause_Ind::getSize(mipc::data::Network_Reject_Cause_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0);
}

mipc::data::Retry_Timer_Ind *mipc::data::Retry_Timer_Ind::Retry_Timer_Ind(mipc::data::Retry_Timer_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16917, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E79890;
  *(this + 11) = 0;
  mipc::data::Retry_Timer_Ind::deserialize(this, &v7);
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

void sub_297C1DC60(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::data::Retry_Timer_Ind::deserialize(void ***this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  ((*this)[5])(&v8);
  v4 = v8;
  *a2 = v8;
  v5 = v11;
  *(a2 + 8) = *__p;
  *(a2 + 24) = v10;
  *(a2 + 32) = v5;
  if (!v4)
  {
    mipc::Message::deserializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, this + 11, 0x100u, &v8);
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

void *mipc::data::Retry_Timer_Ind::Retry_Timer_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16917, &v14, a3, 3);
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
  *a1 = &unk_2A1E7AE98;
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
  *a1 = &unk_2A1E79890;
  a1[11] = 0;
  return a1;
}

void sub_297C1E058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Retry_Timer_Ind::~Retry_Timer_Ind(mipc::data::Retry_Timer_Ind *this)
{
  *this = &unk_2A1E79890;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_8:
    operator delete(*(this + 5));
  }

LABEL_9:
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
  *this = &unk_2A1E79890;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  *this = &unk_2A1E85968;
  v3 = *(this + 9);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 63) < 0)
  {
LABEL_8:
    operator delete(*(this + 5));
  }

LABEL_9:
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
  *this = &unk_2A1E79890;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

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

uint64_t mipc::data::Retry_Timer_Ind::getSize(mipc::data::Retry_Timer_Ind *this)
{
  v1 = *(this + 11);
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

  v5 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v5 = 32;
  }

  return v1 + v5;
}

mipc::data::Anbrq_Config_Ind *mipc::data::Anbrq_Config_Ind::Anbrq_Config_Ind(mipc::data::Anbrq_Config_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16924, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E798D8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::data::Anbrq_Config_Ind::deserialize(this, v7);
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

void sub_297C1E5D8(_Unwind_Exception *a1)
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
      v6 = *v2;
      *v2 = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
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
  v6 = *v2;
  *v2 = 0;
  if (!v6)
  {
LABEL_4:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v6);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::data::Anbrq_Config_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v16);
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
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 12, 0x101u, &v16);
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
    mipc::Message::deserializeTlv<unsigned short,false>(this, this + 13, 0x102u, &v16);
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

void *mipc::data::Anbrq_Config_Ind::Anbrq_Config_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16924, &v14, a3, 3);
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
  *a1 = &unk_2A1E7AEE0;
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
  *a1 = &unk_2A1E798D8;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297C1EC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Anbrq_Config_Ind::~Anbrq_Config_Ind(mipc::data::Anbrq_Config_Ind *this)
{
  *this = &unk_2A1E798D8;
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
  *this = &unk_2A1E798D8;
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
  *this = &unk_2A1E798D8;
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

uint64_t mipc::data::Anbrq_Config_Ind::getSize(mipc::data::Anbrq_Config_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0);
}

mipc::data::Anbr_Ind *mipc::data::Anbr_Ind::Anbr_Ind(mipc::data::Anbr_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16925, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E79920;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::data::Anbr_Ind::deserialize(this, v7);
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

void sub_297C1F1D8(_Unwind_Exception *a1)
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
      v6 = *v2;
      *v2 = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
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
  v6 = *v2;
  *v2 = 0;
  if (!v6)
  {
LABEL_4:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v6);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::data::Anbr_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v16);
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
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 12, 0x101u, &v16);
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
    mipc::Message::deserializeTlv<unsigned int,true>(this, this + 13, 0x102u, &v16);
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

void *mipc::data::Anbr_Ind::Anbr_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16925, &v14, a3, 3);
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
  *a1 = &unk_2A1E7AF28;
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
  *a1 = &unk_2A1E79920;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297C1F844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Anbr_Ind::~Anbr_Ind(mipc::data::Anbr_Ind *this)
{
  *this = &unk_2A1E79920;
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
  *this = &unk_2A1E79920;
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
  *this = &unk_2A1E79920;
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

uint64_t mipc::data::Anbr_Ind::getSize(mipc::data::Anbr_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0);
}

const char *mipc::asString(uint64_t a1)
{
  if (a1 <= 1376254)
  {
    if (a1 >= 0x100000)
    {
      switch(a1)
      {
        case 1313792:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_BEGIN";
          break;
        case 1313793:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_EMPTY";
          break;
        case 1313794:
        case 1313795:
        case 1313796:
        case 1313797:
        case 1313798:
        case 1313799:
        case 1313800:
        case 1313801:
        case 1313802:
        case 1313803:
        case 1313804:
        case 1313805:
        case 1313806:
        case 1313807:
        case 1313808:
        case 1313809:
        case 1313810:
        case 1313811:
        case 1313812:
        case 1313813:
        case 1313814:
        case 1313815:
        case 1313816:
        case 1313818:
        case 1313819:
        case 1313820:
        case 1313821:
        case 1313822:
        case 1313823:
        case 1313824:
        case 1313825:
        case 1313826:
        case 1313827:
        case 1313832:
        case 1313833:
        case 1313834:
        case 1313835:
        case 1313836:
        case 1313837:
        case 1313838:
        case 1313840:
        case 1313841:
        case 1313849:
        case 1313850:
        case 1313851:
        case 1313852:
        case 1313853:
        case 1313854:
        case 1313855:
        case 1313856:
        case 1313857:
        case 1313858:
        case 1313859:
        case 1313860:
        case 1313861:
        case 1313862:
        case 1313863:
        case 1313864:
        case 1313865:
        case 1313866:
        case 1313867:
        case 1313868:
        case 1313869:
        case 1313870:
        case 1313871:
        case 1313872:
        case 1313874:
        case 1313875:
        case 1313876:
        case 1313877:
        case 1313878:
        case 1313879:
        case 1313880:
        case 1313881:
        case 1313882:
        case 1313883:
        case 1313884:
        case 1313885:
        case 1313886:
        case 1313894:
        case 1313895:
        case 1313896:
        case 1313897:
        case 1313898:
        case 1313899:
        case 1313900:
        case 1313901:
        case 1313902:
        case 1313903:
        case 1313906:
        case 1313907:
        case 1313908:
        case 1313909:
        case 1313910:
        case 1313911:
        case 1313912:
        case 1313913:
        case 1313914:
        case 1313915:
        case 1313916:
        case 1313917:
        case 1313918:
        case 1313919:
        case 1313920:
        case 1313921:
        case 1313922:
        case 1313923:
        case 1313924:
        case 1313925:
        case 1313926:
        case 1313927:
        case 1313928:
        case 1313929:
        case 1313930:
        case 1313931:
        case 1313932:
        case 1313933:
        case 1313934:
        case 1313935:
        case 1313936:
        case 1313937:
        case 1313938:
        case 1313939:
        case 1313940:
        case 1313941:
        case 1313942:
        case 1313943:
        case 1313944:
        case 1313945:
        case 1313946:
        case 1313947:
        case 1313948:
        case 1313949:
        case 1313950:
        case 1313951:
        case 1313952:
        case 1313953:
        case 1313954:
        case 1313955:
        case 1313956:
        case 1313957:
        case 1313958:
        case 1313959:
        case 1313960:
        case 1313961:
        case 1313962:
        case 1313963:
        case 1313964:
        case 1313965:
        case 1313966:
        case 1313967:
        case 1313968:
        case 1313969:
        case 1313970:
        case 1313971:
        case 1313972:
        case 1313973:
        case 1313974:
        case 1313975:
        case 1313976:
        case 1313977:
        case 1313978:
        case 1313979:
        case 1313980:
        case 1313981:
        case 1313982:
        case 1313983:
        case 1313984:
        case 1313985:
        case 1313986:
        case 1313987:
        case 1313988:
        case 1313989:
        case 1313990:
        case 1313991:
        case 1313992:
        case 1313993:
        case 1313994:
        case 1313995:
        case 1313996:
        case 1313997:
        case 1313998:
        case 1313999:
        case 1314000:
        case 1314001:
        case 1314002:
        case 1314003:
        case 1314004:
        case 1314005:
        case 1314006:
        case 1314007:
        case 1314008:
        case 1314009:
        case 1314010:
        case 1314011:
        case 1314012:
        case 1314013:
        case 1314014:
        case 1314015:
        case 1314016:
        case 1314017:
        case 1314018:
        case 1314019:
        case 1314020:
        case 1314021:
        case 1314022:
        case 1314023:
        case 1314024:
        case 1314025:
        case 1314026:
        case 1314027:
        case 1314028:
        case 1314029:
        case 1314030:
        case 1314031:
        case 1314032:
        case 1314033:
        case 1314034:
        case 1314035:
        case 1314036:
        case 1314037:
        case 1314038:
        case 1314039:
        case 1314040:
        case 1314041:
        case 1314042:
        case 1314043:
        case 1314044:
        case 1314045:
        case 1314046:
        case 1314047:
        case 1314050:
        case 1314051:
        case 1314052:
        case 1314053:
        case 1314054:
        case 1314055:
        case 1314057:
        case 1314058:
        case 1314059:
        case 1314060:
        case 1314061:
        case 1314062:
        case 1314063:
        case 1314064:
        case 1314065:
        case 1314066:
        case 1314067:
        case 1314068:
        case 1314069:
        case 1314070:
        case 1314071:
        case 1314072:
        case 1314073:
        case 1314088:
        case 1314096:
        case 1314110:
        case 1314111:
        case 1314112:
        case 1314115:
        case 1314116:
        case 1314117:
        case 1314118:
        case 1314119:
        case 1314120:
        case 1314121:
        case 1314122:
        case 1314123:
        case 1314124:
        case 1314125:
        case 1314126:
        case 1314127:
        case 1314128:
        case 1314130:
        case 1314131:
        case 1314132:
        case 1314133:
        case 1314134:
        case 1314135:
        case 1314136:
        case 1314137:
        case 1314138:
        case 1314139:
        case 1314140:
        case 1314141:
        case 1314142:
        case 1314150:
        case 1314151:
        case 1314152:
        case 1314153:
        case 1314154:
        case 1314155:
        case 1314156:
        case 1314157:
        case 1314158:
        case 1314162:
        case 1314163:
        case 1314164:
        case 1314165:
        case 1314166:
        case 1314167:
        case 1314168:
        case 1314169:
        case 1314170:
        case 1314171:
        case 1314172:
        case 1314173:
        case 1314174:
        case 1314175:
        case 1314176:
        case 1314177:
        case 1314178:
        case 1314179:
        case 1314180:
        case 1314181:
        case 1314182:
        case 1314183:
        case 1314184:
        case 1314185:
        case 1314186:
        case 1314187:
        case 1314188:
        case 1314189:
        case 1314190:
        case 1314191:
        case 1314192:
        case 1314193:
        case 1314194:
        case 1314195:
        case 1314196:
        case 1314197:
        case 1314198:
        case 1314199:
        case 1314200:
        case 1314201:
        case 1314202:
        case 1314203:
        case 1314204:
        case 1314205:
        case 1314206:
        case 1314207:
        case 1314208:
        case 1314209:
        case 1314210:
        case 1314211:
        case 1314212:
        case 1314213:
        case 1314214:
        case 1314215:
        case 1314216:
        case 1314217:
        case 1314218:
        case 1314219:
        case 1314220:
        case 1314221:
        case 1314222:
        case 1314223:
        case 1314224:
        case 1314225:
        case 1314226:
        case 1314227:
        case 1314228:
        case 1314229:
        case 1314230:
        case 1314231:
        case 1314232:
        case 1314233:
        case 1314234:
        case 1314235:
        case 1314236:
        case 1314237:
        case 1314238:
        case 1314239:
        case 1314240:
        case 1314241:
        case 1314242:
        case 1314243:
        case 1314244:
        case 1314245:
        case 1314246:
        case 1314247:
        case 1314248:
        case 1314249:
        case 1314250:
        case 1314251:
        case 1314252:
        case 1314253:
        case 1314254:
        case 1314255:
        case 1314256:
        case 1314257:
        case 1314258:
        case 1314259:
        case 1314260:
        case 1314261:
        case 1314262:
        case 1314263:
        case 1314264:
        case 1314265:
        case 1314266:
        case 1314267:
        case 1314268:
        case 1314269:
        case 1314270:
        case 1314271:
        case 1314272:
        case 1314273:
        case 1314274:
        case 1314275:
        case 1314276:
        case 1314277:
        case 1314278:
        case 1314279:
        case 1314280:
        case 1314281:
        case 1314282:
        case 1314283:
        case 1314284:
        case 1314285:
        case 1314286:
        case 1314287:
        case 1314288:
        case 1314289:
        case 1314290:
        case 1314291:
        case 1314292:
        case 1314293:
        case 1314294:
        case 1314295:
        case 1314296:
        case 1314297:
        case 1314298:
        case 1314299:
        case 1314300:
        case 1314301:
        case 1314302:
        case 1314304:
        case 1314305:
        case 1314306:
        case 1314307:
        case 1314308:
        case 1314309:
        case 1314310:
        case 1314311:
        case 1314312:
        case 1314313:
        case 1314314:
        case 1314315:
        case 1314316:
        case 1314317:
        case 1314318:
        case 1314319:
        case 1314320:
        case 1314321:
        case 1314322:
        case 1314323:
        case 1314324:
        case 1314325:
        case 1314326:
        case 1314327:
        case 1314328:
        case 1314329:
        case 1314330:
        case 1314331:
        case 1314332:
        case 1314333:
        case 1314334:
        case 1314335:
        case 1314336:
        case 1314337:
        case 1314338:
        case 1314339:
        case 1314340:
        case 1314341:
        case 1314342:
        case 1314343:
        case 1314344:
        case 1314345:
        case 1314346:
        case 1314347:
        case 1314348:
        case 1314349:
        case 1314350:
        case 1314351:
        case 1314352:
        case 1314353:
        case 1314354:
        case 1314355:
        case 1314356:
        case 1314357:
        case 1314358:
        case 1314359:
        case 1314360:
        case 1314361:
        case 1314362:
        case 1314363:
        case 1314364:
        case 1314365:
        case 1314366:
        case 1314367:
        case 1314368:
        case 1314369:
        case 1314370:
        case 1314371:
        case 1314372:
        case 1314373:
        case 1314374:
        case 1314375:
        case 1314376:
        case 1314377:
        case 1314378:
        case 1314379:
        case 1314380:
        case 1314381:
        case 1314382:
        case 1314383:
        case 1314384:
        case 1314385:
        case 1314386:
        case 1314387:
        case 1314388:
        case 1314389:
        case 1314390:
        case 1314391:
        case 1314392:
        case 1314393:
        case 1314394:
        case 1314395:
        case 1314396:
        case 1314397:
        case 1314398:
        case 1314399:
        case 1314400:
        case 1314401:
        case 1314402:
        case 1314403:
        case 1314404:
        case 1314405:
        case 1314406:
        case 1314407:
        case 1314408:
        case 1314409:
        case 1314410:
        case 1314411:
        case 1314412:
        case 1314413:
        case 1314414:
        case 1314415:
        case 1314416:
        case 1314417:
        case 1314418:
        case 1314419:
        case 1314420:
        case 1314421:
        case 1314422:
        case 1314423:
        case 1314424:
        case 1314425:
        case 1314426:
        case 1314427:
        case 1314428:
        case 1314429:
        case 1314430:
        case 1314431:
        case 1314432:
        case 1314433:
        case 1314434:
        case 1314435:
        case 1314436:
        case 1314437:
        case 1314438:
        case 1314439:
        case 1314440:
        case 1314441:
        case 1314442:
        case 1314443:
        case 1314444:
        case 1314445:
        case 1314446:
        case 1314447:
        case 1314448:
        case 1314449:
        case 1314450:
        case 1314451:
        case 1314452:
        case 1314453:
        case 1314454:
        case 1314455:
        case 1314456:
        case 1314457:
        case 1314458:
        case 1314459:
        case 1314460:
        case 1314461:
        case 1314462:
        case 1314463:
        case 1314464:
        case 1314465:
        case 1314466:
        case 1314467:
        case 1314468:
        case 1314469:
        case 1314470:
        case 1314471:
        case 1314472:
        case 1314473:
        case 1314474:
        case 1314475:
        case 1314476:
        case 1314477:
        case 1314478:
        case 1314479:
        case 1314480:
        case 1314481:
        case 1314482:
        case 1314483:
        case 1314484:
        case 1314485:
        case 1314486:
        case 1314487:
        case 1314488:
        case 1314489:
        case 1314490:
        case 1314491:
        case 1314492:
        case 1314493:
        case 1314494:
        case 1314495:
        case 1314496:
        case 1314497:
        case 1314498:
        case 1314499:
        case 1314500:
        case 1314501:
        case 1314502:
        case 1314503:
        case 1314504:
        case 1314505:
        case 1314506:
        case 1314507:
        case 1314508:
        case 1314509:
        case 1314510:
        case 1314511:
        case 1314512:
        case 1314513:
        case 1314514:
        case 1314515:
        case 1314516:
        case 1314517:
        case 1314518:
        case 1314519:
        case 1314520:
        case 1314521:
        case 1314522:
        case 1314523:
        case 1314524:
        case 1314525:
        case 1314526:
        case 1314527:
        case 1314528:
        case 1314529:
        case 1314530:
        case 1314531:
        case 1314532:
        case 1314533:
        case 1314534:
        case 1314535:
        case 1314536:
        case 1314537:
        case 1314538:
        case 1314539:
        case 1314540:
        case 1314541:
        case 1314542:
        case 1314543:
        case 1314544:
        case 1314545:
        case 1314546:
        case 1314547:
        case 1314548:
        case 1314549:
        case 1314550:
        case 1314551:
        case 1314552:
        case 1314553:
        case 1314554:
        case 1314555:
        case 1314556:
        case 1314557:
        case 1314558:
        case 1314559:
        case 1314664:
        case 1314665:
        case 1314666:
        case 1314688:
        case 1314689:
        case 1314690:
        case 1314691:
        case 1314692:
        case 1314693:
        case 1314694:
        case 1314695:
        case 1314696:
        case 1314697:
        case 1314698:
        case 1314699:
        case 1314700:
        case 1314701:
        case 1314718:
        case 1314719:
        case 1314720:
        case 1314721:
        case 1314722:
        case 1314723:
        case 1314724:
        case 1314725:
        case 1314726:
        case 1314727:
        case 1314728:
        case 1314729:
        case 1314730:
        case 1314731:
        case 1314732:
        case 1314733:
        case 1314734:
        case 1314750:
        case 1314751:
        case 1314752:
        case 1314753:
        case 1314754:
        case 1314755:
        case 1314756:
        case 1314757:
        case 1314758:
        case 1314759:
        case 1314760:
        case 1314761:
        case 1314762:
        case 1314763:
        case 1314764:
        case 1314765:
        case 1314766:
        case 1314771:
        case 1314772:
        case 1314773:
        case 1314774:
        case 1314775:
        case 1314776:
        case 1314777:
        case 1314778:
        case 1314779:
        case 1314780:
        case 1314781:
        case 1314782:
        case 1314783:
        case 1314785:
        case 1314786:
        case 1314787:
        case 1314788:
        case 1314789:
        case 1314790:
        case 1314791:
        case 1314792:
        case 1314793:
        case 1314794:
        case 1314795:
        case 1314796:
        case 1314797:
        case 1314798:
        case 1314799:
        case 1314800:
        case 1314801:
        case 1314802:
        case 1314803:
        case 1314804:
        case 1314805:
        case 1314806:
        case 1314807:
        case 1314808:
        case 1314809:
        case 1314810:
        case 1314811:
        case 1314812:
        case 1314813:
        case 1314814:
        case 1314816:
        case 1314817:
        case 1314818:
        case 1314819:
        case 1314820:
        case 1314821:
        case 1314822:
        case 1314823:
        case 1314824:
        case 1314825:
        case 1314826:
        case 1314827:
        case 1314828:
        case 1314829:
        case 1314830:
        case 1314831:
        case 1314832:
        case 1314833:
        case 1314834:
        case 1314835:
        case 1314836:
        case 1314837:
        case 1314838:
        case 1314839:
        case 1314840:
        case 1314841:
        case 1314842:
        case 1314843:
        case 1314844:
        case 1314845:
        case 1314846:
        case 1314847:
        case 1314848:
        case 1314849:
        case 1314850:
        case 1314851:
        case 1314852:
        case 1314853:
        case 1314854:
        case 1314855:
        case 1314856:
        case 1314857:
        case 1314858:
        case 1314859:
        case 1314860:
        case 1314861:
        case 1314862:
        case 1314863:
        case 1314864:
        case 1314865:
        case 1314866:
        case 1314867:
        case 1314868:
        case 1314869:
        case 1314870:
        case 1314871:
        case 1314872:
        case 1314873:
        case 1314874:
        case 1314875:
        case 1314876:
        case 1314877:
        case 1314878:
        case 1314879:
        case 1314880:
        case 1314881:
        case 1314882:
        case 1314883:
        case 1314884:
        case 1314885:
        case 1314886:
        case 1314887:
        case 1314888:
        case 1314889:
        case 1314890:
        case 1314891:
        case 1314892:
        case 1314893:
        case 1314894:
        case 1314895:
        case 1314896:
        case 1314897:
        case 1314898:
        case 1314899:
        case 1314900:
        case 1314901:
        case 1314902:
        case 1314903:
        case 1314904:
        case 1314905:
        case 1314906:
        case 1314907:
        case 1314908:
        case 1314909:
        case 1314910:
        case 1314911:
        case 1314912:
        case 1314913:
        case 1314914:
        case 1314915:
        case 1314916:
        case 1314917:
        case 1314918:
        case 1314919:
        case 1314920:
        case 1314921:
        case 1314922:
        case 1314923:
        case 1314924:
        case 1314925:
        case 1314926:
        case 1314927:
        case 1314928:
        case 1314929:
        case 1314930:
        case 1314931:
        case 1314932:
        case 1314933:
        case 1314934:
        case 1314935:
        case 1314936:
        case 1314937:
        case 1314938:
        case 1314939:
        case 1314940:
        case 1314941:
        case 1314942:
        case 1314943:
        case 1314944:
        case 1314945:
        case 1314946:
        case 1314947:
        case 1314948:
        case 1314949:
        case 1314950:
        case 1314951:
        case 1314952:
        case 1314953:
        case 1314954:
        case 1314955:
        case 1314956:
        case 1314957:
        case 1314958:
        case 1314959:
        case 1314960:
        case 1314961:
        case 1314962:
        case 1314963:
        case 1314964:
        case 1314965:
        case 1314966:
        case 1314967:
        case 1314968:
        case 1314969:
        case 1314970:
        case 1314971:
        case 1314972:
        case 1314973:
        case 1314974:
        case 1314975:
        case 1314976:
        case 1314977:
        case 1314978:
        case 1314979:
        case 1314980:
        case 1314981:
        case 1314982:
        case 1314983:
        case 1314984:
        case 1314985:
        case 1314986:
        case 1314987:
        case 1314988:
        case 1314989:
        case 1314990:
        case 1314991:
        case 1314992:
        case 1314993:
        case 1314994:
        case 1314995:
        case 1314996:
        case 1314997:
        case 1314998:
        case 1314999:
        case 1315000:
        case 1315001:
        case 1315002:
        case 1315003:
        case 1315004:
        case 1315005:
        case 1315006:
        case 1315007:
        case 1315008:
        case 1315009:
        case 1315010:
        case 1315011:
        case 1315012:
        case 1315013:
        case 1315014:
        case 1315015:
        case 1315016:
        case 1315017:
        case 1315018:
        case 1315019:
        case 1315020:
        case 1315021:
        case 1315022:
        case 1315023:
        case 1315024:
        case 1315025:
        case 1315026:
        case 1315027:
        case 1315028:
        case 1315029:
        case 1315030:
        case 1315031:
        case 1315032:
        case 1315033:
        case 1315034:
        case 1315035:
        case 1315036:
        case 1315037:
        case 1315038:
        case 1315039:
        case 1315040:
        case 1315041:
        case 1315042:
        case 1315043:
        case 1315044:
        case 1315045:
        case 1315046:
        case 1315047:
        case 1315048:
        case 1315049:
        case 1315050:
        case 1315051:
        case 1315052:
        case 1315053:
        case 1315054:
        case 1315055:
        case 1315056:
        case 1315057:
        case 1315058:
        case 1315059:
        case 1315060:
        case 1315061:
        case 1315062:
        case 1315063:
        case 1315064:
        case 1315065:
        case 1315066:
        case 1315067:
        case 1315068:
        case 1315069:
        case 1315070:
        case 1315071:
        case 1315072:
        case 1315073:
        case 1315074:
        case 1315075:
        case 1315076:
        case 1315077:
        case 1315078:
        case 1315079:
        case 1315080:
        case 1315081:
        case 1315082:
        case 1315083:
        case 1315084:
        case 1315085:
        case 1315086:
        case 1315087:
        case 1315088:
        case 1315089:
        case 1315090:
        case 1315091:
        case 1315092:
        case 1315093:
        case 1315094:
        case 1315095:
        case 1315096:
        case 1315097:
        case 1315098:
        case 1315099:
        case 1315100:
        case 1315101:
        case 1315102:
        case 1315103:
        case 1315104:
        case 1315105:
        case 1315106:
        case 1315107:
        case 1315108:
        case 1315109:
        case 1315110:
        case 1315111:
        case 1315112:
        case 1315113:
        case 1315114:
        case 1315115:
        case 1315116:
        case 1315117:
        case 1315118:
        case 1315119:
        case 1315120:
        case 1315121:
        case 1315122:
        case 1315123:
        case 1315124:
        case 1315125:
        case 1315126:
        case 1315127:
        case 1315128:
        case 1315129:
        case 1315130:
        case 1315131:
        case 1315132:
        case 1315133:
        case 1315134:
        case 1315135:
        case 1315136:
        case 1315137:
        case 1315138:
        case 1315139:
        case 1315140:
        case 1315141:
        case 1315142:
        case 1315143:
        case 1315144:
        case 1315145:
        case 1315146:
        case 1315147:
        case 1315148:
        case 1315149:
        case 1315150:
        case 1315151:
        case 1315152:
        case 1315153:
        case 1315154:
        case 1315155:
        case 1315156:
        case 1315157:
        case 1315158:
        case 1315159:
        case 1315160:
        case 1315161:
        case 1315162:
        case 1315163:
        case 1315164:
        case 1315165:
        case 1315166:
        case 1315167:
        case 1315168:
        case 1315169:
        case 1315170:
        case 1315171:
        case 1315172:
        case 1315173:
        case 1315174:
        case 1315175:
        case 1315176:
        case 1315177:
        case 1315178:
        case 1315179:
        case 1315180:
        case 1315181:
        case 1315182:
        case 1315183:
        case 1315184:
        case 1315185:
        case 1315186:
        case 1315187:
        case 1315188:
        case 1315189:
        case 1315190:
        case 1315191:
        case 1315192:
        case 1315193:
        case 1315194:
        case 1315195:
        case 1315196:
        case 1315197:
        case 1315198:
        case 1315199:
        case 1315200:
        case 1315201:
        case 1315202:
        case 1315203:
        case 1315204:
        case 1315205:
        case 1315206:
        case 1315207:
        case 1315208:
        case 1315209:
        case 1315210:
        case 1315211:
        case 1315212:
        case 1315213:
        case 1315214:
        case 1315215:
        case 1315216:
        case 1315217:
        case 1315218:
        case 1315219:
        case 1315220:
        case 1315221:
        case 1315222:
        case 1315223:
        case 1315224:
        case 1315225:
        case 1315226:
        case 1315227:
        case 1315228:
        case 1315229:
        case 1315230:
        case 1315231:
        case 1315232:
        case 1315233:
        case 1315234:
        case 1315235:
        case 1315236:
        case 1315237:
        case 1315238:
        case 1315239:
        case 1315240:
        case 1315241:
        case 1315242:
        case 1315243:
        case 1315244:
        case 1315245:
        case 1315246:
        case 1315247:
        case 1315248:
        case 1315249:
        case 1315250:
        case 1315251:
        case 1315252:
        case 1315253:
        case 1315254:
        case 1315255:
        case 1315256:
        case 1315257:
        case 1315258:
        case 1315259:
        case 1315260:
        case 1315261:
        case 1315262:
        case 1315263:
        case 1315264:
        case 1315265:
        case 1315266:
        case 1315267:
        case 1315268:
        case 1315269:
        case 1315270:
        case 1315271:
        case 1315272:
        case 1315273:
        case 1315274:
        case 1315275:
        case 1315276:
        case 1315277:
        case 1315278:
        case 1315279:
        case 1315280:
        case 1315281:
        case 1315282:
        case 1315283:
        case 1315284:
        case 1315285:
        case 1315286:
        case 1315287:
        case 1315288:
        case 1315289:
        case 1315290:
        case 1315291:
        case 1315292:
        case 1315293:
        case 1315294:
        case 1315295:
        case 1315296:
        case 1315297:
        case 1315298:
        case 1315299:
        case 1315300:
        case 1315301:
        case 1315302:
        case 1315303:
        case 1315304:
        case 1315305:
        case 1315306:
        case 1315307:
        case 1315308:
        case 1315309:
        case 1315310:
        case 1315311:
        case 1315312:
        case 1315313:
        case 1315314:
        case 1315315:
        case 1315316:
        case 1315317:
        case 1315318:
        case 1315319:
        case 1315320:
        case 1315321:
        case 1315322:
        case 1315323:
        case 1315324:
        case 1315325:
        case 1315326:
        case 1315327:
        case 1315330:
        case 1315331:
        case 1315332:
        case 1315333:
        case 1315334:
        case 1315335:
        case 1315337:
        case 1315338:
        case 1315339:
        case 1315340:
        case 1315341:
        case 1315342:
        case 1315343:
        case 1315344:
        case 1315345:
        case 1315346:
        case 1315347:
        case 1315348:
        case 1315349:
        case 1315350:
        case 1315351:
        case 1315352:
        case 1315353:
        case 1315368:
        case 1315376:
        case 1315385:
        case 1315386:
        case 1315388:
        case 1315389:
        case 1315390:
        case 1315391:
        case 1315392:
        case 1315395:
        case 1315396:
        case 1315397:
        case 1315398:
        case 1315399:
        case 1315400:
        case 1315401:
        case 1315402:
        case 1315403:
        case 1315404:
        case 1315405:
        case 1315406:
        case 1315407:
        case 1315408:
        case 1315410:
        case 1315411:
        case 1315412:
        case 1315413:
        case 1315414:
        case 1315415:
        case 1315416:
        case 1315417:
        case 1315418:
        case 1315419:
        case 1315420:
        case 1315421:
        case 1315422:
        case 1315430:
        case 1315431:
        case 1315432:
        case 1315433:
        case 1315434:
        case 1315435:
        case 1315436:
        case 1315437:
        case 1315438:
        case 1315441:
        case 1315442:
        case 1315443:
        case 1315444:
        case 1315445:
        case 1315446:
        case 1315447:
        case 1315448:
        case 1315449:
        case 1315450:
        case 1315451:
        case 1315452:
        case 1315453:
        case 1315454:
        case 1315455:
        case 1315456:
        case 1315457:
        case 1315458:
        case 1315459:
        case 1315460:
        case 1315461:
        case 1315462:
        case 1315463:
        case 1315464:
        case 1315465:
        case 1315466:
        case 1315467:
        case 1315468:
        case 1315469:
        case 1315470:
        case 1315471:
        case 1315472:
        case 1315473:
        case 1315474:
        case 1315475:
        case 1315476:
        case 1315477:
        case 1315478:
        case 1315479:
        case 1315480:
        case 1315481:
        case 1315482:
        case 1315483:
        case 1315484:
        case 1315485:
        case 1315486:
        case 1315487:
        case 1315488:
        case 1315489:
        case 1315490:
        case 1315491:
        case 1315492:
        case 1315493:
        case 1315494:
        case 1315495:
        case 1315496:
        case 1315497:
        case 1315498:
        case 1315499:
        case 1315500:
        case 1315501:
        case 1315502:
        case 1315503:
        case 1315504:
        case 1315505:
        case 1315506:
        case 1315507:
        case 1315508:
        case 1315509:
        case 1315510:
        case 1315511:
        case 1315512:
        case 1315513:
        case 1315514:
        case 1315515:
        case 1315516:
        case 1315517:
        case 1315518:
        case 1315519:
        case 1315520:
        case 1315521:
        case 1315522:
        case 1315523:
        case 1315524:
        case 1315525:
        case 1315526:
        case 1315527:
        case 1315530:
        case 1315531:
        case 1315532:
        case 1315533:
        case 1315534:
        case 1315535:
        case 1315536:
        case 1315537:
        case 1315538:
        case 1315539:
        case 1315540:
        case 1315541:
        case 1315542:
        case 1315543:
        case 1315544:
        case 1315545:
        case 1315546:
        case 1315547:
        case 1315548:
        case 1315549:
        case 1315550:
        case 1315551:
        case 1315552:
        case 1315553:
        case 1315554:
        case 1315555:
        case 1315556:
        case 1315557:
        case 1315558:
        case 1315559:
        case 1315560:
        case 1315561:
        case 1315562:
        case 1315563:
        case 1315564:
        case 1315565:
        case 1315566:
        case 1315567:
        case 1315568:
        case 1315569:
        case 1315570:
        case 1315571:
        case 1315572:
        case 1315573:
        case 1315574:
        case 1315575:
        case 1315576:
        case 1315577:
        case 1315578:
        case 1315579:
        case 1315580:
        case 1315581:
        case 1315582:
        case 1315606:
        case 1315607:
        case 1315608:
        case 1315609:
        case 1315610:
        case 1315611:
        case 1315612:
        case 1315613:
        case 1315614:
        case 1315615:
        case 1315624:
        case 1315625:
        case 1315626:
        case 1315627:
        case 1315628:
        case 1315629:
        case 1315630:
        case 1315631:
        case 1315632:
        case 1315633:
        case 1315634:
        case 1315635:
        case 1315636:
        case 1315637:
        case 1315638:
        case 1315639:
        case 1315640:
        case 1315641:
        case 1315642:
        case 1315643:
        case 1315644:
        case 1315645:
        case 1315646:
        case 1315647:
        case 1315648:
        case 1315649:
        case 1315650:
        case 1315651:
        case 1315652:
        case 1315653:
        case 1315654:
        case 1315655:
        case 1315656:
        case 1315657:
        case 1315658:
        case 1315659:
        case 1315660:
        case 1315661:
        case 1315662:
        case 1315663:
        case 1315664:
        case 1315665:
        case 1315666:
        case 1315667:
        case 1315668:
        case 1315669:
        case 1315670:
        case 1315671:
        case 1315672:
        case 1315673:
        case 1315674:
        case 1315675:
        case 1315676:
        case 1315677:
        case 1315678:
        case 1315679:
        case 1315680:
        case 1315681:
        case 1315682:
        case 1315683:
        case 1315684:
        case 1315685:
        case 1315686:
        case 1315687:
        case 1315688:
        case 1315689:
        case 1315690:
        case 1315691:
        case 1315692:
        case 1315693:
        case 1315694:
        case 1315695:
        case 1315696:
        case 1315697:
        case 1315698:
        case 1315699:
        case 1315700:
        case 1315701:
        case 1315702:
        case 1315703:
        case 1315704:
        case 1315705:
        case 1315706:
        case 1315707:
        case 1315708:
        case 1315709:
        case 1315710:
        case 1315711:
        case 1315712:
        case 1315713:
        case 1315714:
        case 1315715:
        case 1315716:
        case 1315717:
        case 1315718:
        case 1315719:
        case 1315720:
        case 1315721:
        case 1315722:
        case 1315723:
        case 1315724:
        case 1315725:
        case 1315726:
        case 1315727:
        case 1315728:
        case 1315729:
        case 1315730:
        case 1315731:
        case 1315732:
        case 1315733:
        case 1315734:
        case 1315735:
        case 1315736:
        case 1315737:
        case 1315738:
        case 1315739:
        case 1315740:
        case 1315741:
        case 1315742:
        case 1315743:
        case 1315744:
        case 1315745:
        case 1315746:
        case 1315747:
        case 1315748:
        case 1315749:
        case 1315750:
        case 1315751:
        case 1315752:
        case 1315753:
        case 1315754:
        case 1315755:
        case 1315756:
        case 1315757:
        case 1315758:
        case 1315759:
        case 1315760:
        case 1315761:
        case 1315762:
        case 1315763:
        case 1315764:
        case 1315765:
        case 1315766:
        case 1315767:
        case 1315768:
        case 1315769:
        case 1315770:
        case 1315771:
        case 1315772:
        case 1315773:
        case 1315774:
        case 1315775:
        case 1315776:
        case 1315777:
        case 1315778:
        case 1315779:
        case 1315780:
        case 1315781:
        case 1315782:
        case 1315783:
        case 1315784:
        case 1315785:
        case 1315786:
        case 1315787:
        case 1315788:
        case 1315789:
        case 1315790:
        case 1315791:
        case 1315792:
        case 1315793:
        case 1315794:
        case 1315795:
        case 1315796:
        case 1315797:
        case 1315798:
        case 1315799:
        case 1315800:
        case 1315801:
        case 1315802:
        case 1315803:
        case 1315804:
        case 1315805:
        case 1315806:
        case 1315807:
        case 1315808:
        case 1315809:
        case 1315810:
        case 1315811:
        case 1315812:
        case 1315813:
        case 1315814:
        case 1315815:
        case 1315816:
        case 1315817:
        case 1315818:
        case 1315819:
        case 1315820:
        case 1315821:
        case 1315822:
        case 1315823:
        case 1315824:
        case 1315825:
        case 1315826:
        case 1315827:
        case 1315828:
        case 1315829:
        case 1315830:
        case 1315831:
        case 1315832:
        case 1315833:
        case 1315834:
        case 1315835:
        case 1315836:
        case 1315837:
        case 1315838:
        case 1315844:
        case 1315845:
        case 1315846:
        case 1315847:
        case 1315848:
        case 1315849:
        case 1315850:
        case 1315851:
        case 1315852:
        case 1315853:
        case 1315854:
        case 1315855:
        case 1315856:
        case 1315857:
        case 1315858:
        case 1315859:
        case 1315860:
        case 1315861:
        case 1315862:
        case 1315863:
        case 1315864:
        case 1315865:
        case 1315866:
        case 1315867:
        case 1315868:
        case 1315869:
        case 1315870:
        case 1315871:
        case 1315872:
        case 1315873:
        case 1315874:
        case 1315875:
        case 1315876:
        case 1315877:
        case 1315878:
        case 1315879:
        case 1315880:
        case 1315881:
        case 1315882:
        case 1315883:
        case 1315884:
        case 1315885:
        case 1315886:
        case 1315887:
        case 1315888:
        case 1315889:
        case 1315890:
        case 1315891:
        case 1315892:
        case 1315893:
        case 1315894:
        case 1315895:
        case 1315896:
        case 1315897:
        case 1315898:
        case 1315899:
        case 1315900:
        case 1315901:
        case 1315902:
        case 1315903:
        case 1315904:
        case 1315905:
        case 1315906:
        case 1315907:
        case 1315908:
        case 1315909:
        case 1315910:
        case 1315911:
        case 1315912:
        case 1315913:
        case 1315914:
        case 1315915:
        case 1315916:
        case 1315917:
        case 1315918:
        case 1315919:
        case 1315920:
        case 1315921:
        case 1315922:
        case 1315923:
        case 1315924:
        case 1315925:
        case 1315926:
        case 1315927:
        case 1315928:
        case 1315929:
        case 1315930:
        case 1315931:
        case 1315932:
        case 1315933:
        case 1315934:
        case 1315935:
        case 1315936:
        case 1315937:
        case 1315938:
        case 1315939:
        case 1315940:
        case 1315941:
        case 1315942:
        case 1315943:
        case 1315944:
        case 1315945:
        case 1315946:
        case 1315947:
        case 1315948:
        case 1315949:
        case 1315950:
        case 1315951:
        case 1315952:
        case 1315953:
        case 1315954:
        case 1315955:
        case 1315956:
        case 1315957:
        case 1315958:
        case 1315959:
        case 1315960:
        case 1315961:
        case 1315962:
        case 1315963:
        case 1315964:
        case 1315965:
        case 1315966:
        case 1315967:
        case 1315968:
        case 1315969:
        case 1315970:
        case 1315971:
        case 1315972:
        case 1315973:
        case 1315974:
        case 1315975:
        case 1315976:
        case 1315977:
        case 1315978:
        case 1315979:
        case 1315980:
        case 1315981:
        case 1315982:
        case 1315983:
        case 1315984:
        case 1315985:
        case 1315986:
        case 1315987:
        case 1315988:
        case 1315989:
        case 1315990:
        case 1315991:
        case 1315992:
        case 1315993:
        case 1315994:
        case 1315995:
        case 1315996:
        case 1315997:
        case 1315998:
        case 1315999:
        case 1316000:
        case 1316001:
        case 1316002:
        case 1316003:
        case 1316004:
        case 1316005:
        case 1316006:
        case 1316007:
        case 1316008:
        case 1316009:
        case 1316010:
        case 1316011:
        case 1316012:
        case 1316013:
        case 1316014:
        case 1316015:
        case 1316016:
        case 1316017:
        case 1316018:
        case 1316019:
        case 1316020:
        case 1316021:
        case 1316022:
        case 1316023:
        case 1316024:
        case 1316025:
        case 1316026:
        case 1316027:
        case 1316028:
        case 1316029:
        case 1316030:
        case 1316031:
        case 1316032:
        case 1316033:
        case 1316034:
        case 1316035:
        case 1316036:
        case 1316037:
        case 1316038:
        case 1316039:
        case 1316040:
        case 1316041:
        case 1316042:
        case 1316043:
        case 1316044:
        case 1316045:
        case 1316046:
        case 1316047:
        case 1316048:
        case 1316049:
        case 1316050:
        case 1316051:
        case 1316052:
        case 1316053:
        case 1316054:
        case 1316055:
        case 1316056:
        case 1316057:
        case 1316058:
        case 1316059:
        case 1316060:
        case 1316061:
        case 1316062:
        case 1316063:
        case 1316064:
        case 1316065:
        case 1316066:
        case 1316067:
        case 1316068:
        case 1316069:
        case 1316070:
        case 1316071:
        case 1316072:
        case 1316073:
        case 1316074:
        case 1316075:
        case 1316076:
        case 1316077:
        case 1316078:
        case 1316079:
        case 1316080:
        case 1316081:
        case 1316082:
        case 1316083:
        case 1316084:
        case 1316085:
        case 1316086:
        case 1316087:
        case 1316088:
        case 1316089:
        case 1316090:
        case 1316091:
        case 1316092:
        case 1316093:
        case 1316094:
        case 1316120:
        case 1316121:
        case 1316122:
        case 1316123:
        case 1316124:
        case 1316125:
        case 1316126:
        case 1316127:
        case 1316128:
        case 1316129:
        case 1316130:
        case 1316131:
        case 1316132:
        case 1316133:
        case 1316134:
        case 1316135:
        case 1316136:
        case 1316137:
        case 1316138:
        case 1316139:
        case 1316140:
        case 1316141:
        case 1316142:
        case 1316143:
        case 1316144:
        case 1316145:
        case 1316146:
        case 1316147:
        case 1316148:
        case 1316149:
        case 1316150:
        case 1316151:
        case 1316152:
        case 1316153:
        case 1316154:
        case 1316155:
        case 1316156:
        case 1316157:
        case 1316158:
        case 1316159:
        case 1316160:
        case 1316161:
        case 1316162:
        case 1316163:
        case 1316164:
        case 1316165:
        case 1316166:
        case 1316167:
        case 1316168:
        case 1316169:
        case 1316170:
        case 1316171:
        case 1316172:
        case 1316173:
        case 1316174:
        case 1316175:
        case 1316176:
        case 1316177:
        case 1316178:
        case 1316179:
        case 1316180:
        case 1316181:
        case 1316182:
        case 1316183:
        case 1316184:
        case 1316185:
        case 1316186:
        case 1316187:
        case 1316188:
        case 1316189:
        case 1316190:
        case 1316191:
        case 1316192:
        case 1316193:
        case 1316194:
        case 1316195:
        case 1316196:
        case 1316197:
        case 1316198:
        case 1316199:
        case 1316200:
        case 1316201:
        case 1316202:
        case 1316203:
        case 1316204:
        case 1316205:
        case 1316206:
        case 1316207:
        case 1316208:
        case 1316209:
        case 1316210:
        case 1316211:
        case 1316212:
        case 1316213:
        case 1316214:
        case 1316215:
        case 1316216:
        case 1316217:
        case 1316218:
        case 1316219:
        case 1316220:
        case 1316221:
        case 1316222:
        case 1316223:
        case 1316233:
        case 1316234:
        case 1316235:
        case 1316236:
        case 1316237:
        case 1316238:
        case 1316239:
        case 1316240:
        case 1316241:
        case 1316242:
        case 1316243:
        case 1316244:
        case 1316245:
        case 1316246:
        case 1316247:
        case 1316248:
        case 1316249:
        case 1316250:
        case 1316251:
        case 1316252:
        case 1316253:
        case 1316254:
        case 1316255:
        case 1316256:
        case 1316257:
        case 1316258:
        case 1316259:
        case 1316260:
        case 1316261:
        case 1316262:
        case 1316263:
        case 1316264:
        case 1316265:
        case 1316266:
        case 1316267:
        case 1316268:
        case 1316269:
        case 1316270:
        case 1316271:
        case 1316272:
        case 1316273:
        case 1316274:
        case 1316275:
        case 1316276:
        case 1316277:
        case 1316278:
        case 1316279:
        case 1316280:
        case 1316281:
        case 1316282:
        case 1316283:
        case 1316284:
        case 1316285:
        case 1316286:
        case 1316287:
        case 1316288:
        case 1316289:
        case 1316290:
        case 1316291:
        case 1316292:
        case 1316293:
        case 1316294:
        case 1316295:
        case 1316296:
        case 1316297:
        case 1316298:
        case 1316299:
        case 1316300:
        case 1316301:
        case 1316302:
        case 1316303:
        case 1316304:
        case 1316305:
        case 1316306:
        case 1316307:
        case 1316308:
        case 1316309:
        case 1316310:
        case 1316311:
        case 1316312:
        case 1316313:
        case 1316314:
        case 1316315:
        case 1316316:
        case 1316317:
        case 1316318:
        case 1316319:
        case 1316320:
        case 1316321:
        case 1316322:
        case 1316323:
        case 1316324:
        case 1316325:
        case 1316326:
        case 1316327:
        case 1316328:
        case 1316329:
        case 1316330:
        case 1316331:
        case 1316332:
        case 1316333:
        case 1316334:
        case 1316335:
        case 1316336:
        case 1316337:
        case 1316338:
        case 1316339:
        case 1316340:
        case 1316341:
        case 1316342:
        case 1316343:
        case 1316344:
        case 1316345:
        case 1316346:
        case 1316347:
        case 1316348:
        case 1316349:
        case 1316350:
        case 1316359:
        case 1316360:
        case 1316361:
        case 1316362:
        case 1316363:
        case 1316364:
        case 1316365:
        case 1316366:
        case 1316367:
        case 1316368:
        case 1316369:
        case 1316370:
        case 1316371:
        case 1316372:
        case 1316373:
        case 1316374:
        case 1316375:
        case 1316376:
        case 1316377:
        case 1316378:
        case 1316379:
        case 1316380:
        case 1316381:
        case 1316382:
        case 1316383:
        case 1316384:
        case 1316385:
        case 1316386:
        case 1316387:
        case 1316388:
        case 1316389:
        case 1316390:
        case 1316391:
        case 1316392:
        case 1316393:
        case 1316394:
        case 1316395:
        case 1316396:
        case 1316397:
        case 1316398:
        case 1316399:
        case 1316400:
        case 1316401:
        case 1316402:
        case 1316403:
        case 1316404:
        case 1316405:
        case 1316406:
        case 1316407:
        case 1316408:
        case 1316409:
        case 1316410:
        case 1316411:
        case 1316412:
        case 1316413:
        case 1316414:
        case 1316415:
        case 1316422:
        case 1316423:
        case 1316424:
        case 1316425:
        case 1316426:
        case 1316427:
        case 1316428:
        case 1316429:
        case 1316430:
        case 1316431:
        case 1316433:
        case 1316434:
        case 1316435:
        case 1316436:
        case 1316437:
        case 1316438:
        case 1316439:
        case 1316440:
        case 1316441:
        case 1316442:
        case 1316443:
        case 1316444:
        case 1316445:
        case 1316446:
        case 1316447:
        case 1316458:
        case 1316459:
        case 1316460:
        case 1316461:
        case 1316462:
        case 1316463:
        case 1316475:
        case 1316476:
        case 1316477:
        case 1316478:
        case 1316479:
        case 1316480:
        case 1316481:
        case 1316482:
        case 1316483:
        case 1316484:
        case 1316485:
        case 1316486:
        case 1316487:
        case 1316488:
        case 1316489:
        case 1316490:
        case 1316491:
        case 1316492:
        case 1316493:
        case 1316494:
        case 1316495:
        case 1316496:
        case 1316497:
        case 1316498:
        case 1316499:
        case 1316500:
        case 1316501:
        case 1316502:
        case 1316503:
        case 1316504:
        case 1316505:
        case 1316506:
        case 1316507:
        case 1316508:
        case 1316509:
        case 1316510:
        case 1316511:
        case 1316512:
        case 1316513:
        case 1316514:
        case 1316515:
        case 1316516:
        case 1316517:
        case 1316518:
        case 1316519:
        case 1316520:
        case 1316521:
        case 1316522:
        case 1316523:
        case 1316524:
        case 1316525:
        case 1316526:
        case 1316527:
        case 1316528:
        case 1316529:
        case 1316530:
        case 1316531:
        case 1316532:
        case 1316533:
        case 1316534:
        case 1316535:
        case 1316536:
        case 1316537:
        case 1316538:
        case 1316539:
        case 1316540:
        case 1316541:
        case 1316542:
        case 1316543:
        case 1316544:
        case 1316545:
        case 1316546:
        case 1316547:
        case 1316548:
        case 1316549:
        case 1316550:
        case 1316551:
        case 1316552:
        case 1316553:
        case 1316554:
        case 1316555:
        case 1316556:
        case 1316557:
        case 1316558:
        case 1316559:
        case 1316570:
        case 1316571:
        case 1316572:
        case 1316573:
        case 1316574:
        case 1316577:
        case 1316578:
        case 1316579:
        case 1316580:
        case 1316581:
        case 1316582:
        case 1316583:
        case 1316584:
        case 1316585:
        case 1316586:
        case 1316587:
        case 1316588:
        case 1316589:
        case 1316590:
        case 1316595:
        case 1316596:
        case 1316597:
        case 1316598:
        case 1316599:
        case 1316600:
        case 1316601:
        case 1316602:
        case 1316603:
        case 1316604:
        case 1316605:
        case 1316606:
        case 1316616:
        case 1316617:
        case 1316618:
        case 1316619:
        case 1316620:
        case 1316621:
        case 1316622:
        case 1316623:
        case 1316624:
        case 1316625:
        case 1316626:
        case 1316627:
        case 1316628:
        case 1316629:
        case 1316630:
        case 1316631:
        case 1316632:
        case 1316633:
        case 1316634:
        case 1316635:
        case 1316636:
        case 1316637:
        case 1316638:
        case 1316639:
        case 1316640:
        case 1316641:
        case 1316642:
        case 1316643:
        case 1316644:
        case 1316645:
        case 1316646:
        case 1316647:
        case 1316648:
        case 1316649:
        case 1316650:
        case 1316651:
        case 1316652:
        case 1316653:
        case 1316654:
        case 1316655:
        case 1316656:
        case 1316657:
        case 1316658:
        case 1316659:
        case 1316660:
        case 1316661:
        case 1316662:
        case 1316663:
        case 1316664:
        case 1316665:
        case 1316666:
        case 1316667:
        case 1316668:
        case 1316669:
        case 1316670:
        case 1316671:
        case 1316672:
        case 1316673:
        case 1316674:
        case 1316675:
        case 1316676:
        case 1316677:
        case 1316678:
        case 1316679:
        case 1316680:
        case 1316681:
        case 1316682:
        case 1316683:
        case 1316684:
        case 1316685:
        case 1316686:
        case 1316687:
        case 1316688:
        case 1316689:
        case 1316690:
        case 1316691:
        case 1316692:
        case 1316693:
        case 1316694:
        case 1316695:
        case 1316696:
        case 1316697:
        case 1316698:
        case 1316699:
        case 1316700:
        case 1316701:
        case 1316702:
        case 1316703:
        case 1316704:
        case 1316705:
        case 1316706:
        case 1316707:
        case 1316708:
        case 1316709:
        case 1316710:
        case 1316711:
        case 1316712:
        case 1316713:
        case 1316714:
        case 1316715:
        case 1316716:
        case 1316717:
        case 1316718:
        case 1316719:
        case 1316720:
        case 1316721:
        case 1316722:
        case 1316723:
        case 1316724:
        case 1316725:
        case 1316726:
        case 1316727:
        case 1316728:
        case 1316729:
        case 1316730:
        case 1316731:
        case 1316732:
        case 1316733:
        case 1316734:
        case 1316735:
        case 1316736:
        case 1316737:
        case 1316738:
        case 1316739:
        case 1316740:
        case 1316741:
        case 1316742:
        case 1316743:
        case 1316744:
        case 1316745:
        case 1316746:
        case 1316747:
        case 1316748:
        case 1316749:
        case 1316750:
        case 1316751:
        case 1316752:
        case 1316753:
        case 1316754:
        case 1316755:
        case 1316756:
        case 1316757:
        case 1316758:
        case 1316759:
        case 1316760:
        case 1316761:
        case 1316762:
        case 1316763:
        case 1316764:
        case 1316765:
        case 1316766:
        case 1316767:
        case 1316768:
        case 1316769:
        case 1316770:
        case 1316771:
        case 1316772:
        case 1316773:
        case 1316774:
        case 1316775:
        case 1316776:
        case 1316777:
        case 1316778:
        case 1316779:
        case 1316780:
        case 1316781:
        case 1316782:
        case 1316783:
        case 1316784:
        case 1316785:
        case 1316786:
        case 1316787:
        case 1316788:
        case 1316789:
        case 1316790:
        case 1316791:
        case 1316792:
        case 1316793:
        case 1316794:
        case 1316795:
        case 1316796:
        case 1316797:
        case 1316798:
        case 1316799:
        case 1316800:
        case 1316801:
        case 1316802:
        case 1316803:
        case 1316804:
        case 1316805:
        case 1316806:
        case 1316807:
        case 1316808:
        case 1316809:
        case 1316810:
        case 1316811:
        case 1316812:
        case 1316813:
        case 1316814:
        case 1316815:
        case 1316816:
        case 1316817:
        case 1316818:
        case 1316819:
        case 1316820:
        case 1316821:
        case 1316822:
        case 1316823:
        case 1316824:
        case 1316825:
        case 1316826:
        case 1316827:
        case 1316828:
        case 1316829:
        case 1316830:
        case 1316831:
        case 1316832:
        case 1316833:
        case 1316834:
        case 1316835:
        case 1316836:
        case 1316837:
        case 1316838:
        case 1316839:
        case 1316840:
        case 1316841:
        case 1316842:
        case 1316843:
        case 1316844:
        case 1316845:
        case 1316846:
        case 1316847:
        case 1316848:
        case 1316849:
        case 1316850:
        case 1316851:
        case 1316852:
        case 1316853:
        case 1316854:
        case 1316855:
        case 1316856:
        case 1316857:
        case 1316858:
        case 1316859:
        case 1316860:
        case 1316861:
        case 1316862:
        case 1316864:
        case 1316865:
        case 1316866:
        case 1316867:
        case 1316868:
        case 1316869:
        case 1316870:
        case 1316871:
        case 1316872:
        case 1316873:
        case 1316874:
        case 1316875:
        case 1316876:
        case 1316877:
        case 1316878:
        case 1316879:
        case 1316880:
        case 1316881:
        case 1316882:
        case 1316883:
        case 1316884:
        case 1316885:
        case 1316886:
        case 1316887:
        case 1316888:
        case 1316889:
        case 1316890:
        case 1316891:
        case 1316892:
        case 1316893:
        case 1316894:
        case 1316895:
        case 1316896:
        case 1316897:
        case 1316898:
        case 1316899:
        case 1316900:
        case 1316901:
        case 1316902:
        case 1316903:
        case 1316904:
        case 1316905:
        case 1316906:
        case 1316907:
        case 1316908:
        case 1316909:
        case 1316910:
        case 1316911:
        case 1316912:
        case 1316913:
        case 1316914:
        case 1316915:
        case 1316916:
        case 1316917:
        case 1316918:
        case 1316919:
        case 1316920:
        case 1316921:
        case 1316922:
        case 1316923:
        case 1316924:
        case 1316925:
        case 1316926:
        case 1316927:
        case 1316928:
        case 1316929:
        case 1316930:
        case 1316931:
        case 1316932:
        case 1316933:
        case 1316934:
        case 1316935:
        case 1316936:
        case 1316937:
        case 1316938:
        case 1316939:
        case 1316940:
        case 1316941:
        case 1316942:
        case 1316943:
        case 1316944:
        case 1316945:
        case 1316946:
        case 1316947:
        case 1316948:
        case 1316949:
        case 1316950:
        case 1316951:
        case 1316952:
        case 1316953:
        case 1316954:
        case 1316955:
        case 1316956:
        case 1316957:
        case 1316958:
        case 1316959:
        case 1316960:
        case 1316961:
        case 1316962:
        case 1316963:
        case 1316964:
        case 1316965:
        case 1316966:
        case 1316967:
        case 1316968:
        case 1316969:
        case 1316970:
        case 1316971:
        case 1316972:
        case 1316973:
        case 1316974:
        case 1316975:
        case 1316976:
        case 1316977:
        case 1316978:
        case 1316979:
        case 1316980:
        case 1316981:
        case 1316982:
        case 1316983:
        case 1316984:
        case 1316985:
        case 1316986:
        case 1316987:
        case 1316988:
        case 1316989:
        case 1316990:
        case 1316991:
        case 1316992:
        case 1316993:
        case 1316994:
        case 1316995:
        case 1316996:
        case 1316997:
        case 1316998:
        case 1316999:
        case 1317000:
        case 1317001:
        case 1317002:
        case 1317003:
        case 1317004:
        case 1317005:
        case 1317006:
        case 1317007:
        case 1317008:
        case 1317009:
        case 1317010:
        case 1317011:
        case 1317012:
        case 1317013:
        case 1317014:
        case 1317015:
        case 1317016:
        case 1317017:
        case 1317018:
        case 1317019:
        case 1317020:
        case 1317021:
        case 1317022:
        case 1317023:
        case 1317024:
        case 1317025:
        case 1317026:
        case 1317027:
        case 1317028:
        case 1317029:
        case 1317030:
        case 1317031:
        case 1317032:
        case 1317033:
        case 1317034:
        case 1317035:
        case 1317036:
        case 1317037:
        case 1317038:
        case 1317039:
        case 1317040:
        case 1317041:
        case 1317042:
        case 1317043:
        case 1317044:
        case 1317045:
        case 1317046:
        case 1317047:
        case 1317048:
        case 1317049:
        case 1317050:
        case 1317051:
        case 1317052:
        case 1317053:
        case 1317054:
        case 1317055:
        case 1317056:
        case 1317057:
        case 1317058:
        case 1317059:
        case 1317060:
        case 1317061:
        case 1317062:
        case 1317063:
        case 1317064:
        case 1317065:
        case 1317066:
        case 1317067:
        case 1317068:
        case 1317069:
        case 1317070:
        case 1317071:
        case 1317072:
        case 1317073:
        case 1317074:
        case 1317075:
        case 1317076:
        case 1317077:
        case 1317078:
        case 1317079:
        case 1317080:
        case 1317081:
        case 1317082:
        case 1317083:
        case 1317084:
        case 1317085:
        case 1317086:
        case 1317087:
        case 1317088:
        case 1317089:
        case 1317090:
        case 1317091:
        case 1317092:
        case 1317093:
        case 1317094:
        case 1317095:
        case 1317096:
        case 1317097:
        case 1317098:
        case 1317099:
        case 1317100:
        case 1317101:
        case 1317102:
        case 1317103:
        case 1317104:
        case 1317105:
        case 1317106:
        case 1317107:
        case 1317108:
        case 1317109:
        case 1317110:
        case 1317111:
        case 1317112:
        case 1317113:
        case 1317114:
        case 1317115:
        case 1317116:
        case 1317117:
        case 1317118:
        case 1317119:
        case 1317120:
        case 1317121:
        case 1317122:
        case 1317123:
        case 1317124:
        case 1317125:
        case 1317126:
        case 1317127:
        case 1317128:
        case 1317129:
        case 1317130:
        case 1317131:
        case 1317132:
        case 1317133:
        case 1317134:
        case 1317135:
        case 1317136:
        case 1317137:
        case 1317138:
        case 1317139:
        case 1317140:
        case 1317141:
        case 1317142:
        case 1317143:
        case 1317144:
        case 1317145:
        case 1317146:
        case 1317147:
        case 1317148:
        case 1317149:
        case 1317150:
        case 1317151:
        case 1317152:
        case 1317153:
        case 1317154:
        case 1317155:
        case 1317156:
        case 1317157:
        case 1317158:
        case 1317159:
        case 1317160:
        case 1317161:
        case 1317162:
        case 1317163:
        case 1317164:
        case 1317165:
        case 1317166:
        case 1317167:
        case 1317168:
        case 1317169:
        case 1317170:
        case 1317171:
        case 1317172:
        case 1317173:
        case 1317174:
        case 1317175:
        case 1317176:
        case 1317177:
        case 1317178:
        case 1317179:
        case 1317180:
        case 1317181:
        case 1317182:
        case 1317183:
        case 1317184:
        case 1317185:
        case 1317186:
        case 1317187:
        case 1317188:
        case 1317189:
        case 1317190:
        case 1317191:
        case 1317192:
        case 1317193:
        case 1317194:
        case 1317195:
        case 1317196:
        case 1317197:
        case 1317198:
        case 1317199:
        case 1317200:
        case 1317201:
        case 1317202:
        case 1317203:
        case 1317204:
        case 1317205:
        case 1317206:
        case 1317207:
        case 1317208:
        case 1317209:
        case 1317210:
        case 1317211:
        case 1317212:
        case 1317213:
        case 1317214:
        case 1317215:
        case 1317216:
        case 1317217:
        case 1317218:
        case 1317219:
        case 1317220:
        case 1317221:
        case 1317222:
        case 1317223:
        case 1317224:
        case 1317225:
        case 1317226:
        case 1317227:
        case 1317228:
        case 1317229:
        case 1317230:
        case 1317231:
        case 1317232:
        case 1317233:
        case 1317234:
        case 1317235:
        case 1317236:
        case 1317237:
        case 1317238:
        case 1317239:
        case 1317240:
        case 1317241:
        case 1317242:
        case 1317243:
        case 1317244:
        case 1317245:
        case 1317246:
        case 1317247:
        case 1317248:
        case 1317249:
        case 1317250:
        case 1317251:
        case 1317252:
        case 1317253:
        case 1317254:
        case 1317255:
        case 1317256:
        case 1317257:
        case 1317258:
        case 1317259:
        case 1317260:
        case 1317261:
        case 1317262:
        case 1317263:
        case 1317264:
        case 1317265:
        case 1317266:
        case 1317267:
        case 1317268:
        case 1317269:
        case 1317270:
        case 1317271:
        case 1317272:
        case 1317273:
        case 1317274:
        case 1317275:
        case 1317276:
        case 1317277:
        case 1317278:
        case 1317279:
        case 1317280:
        case 1317281:
        case 1317282:
        case 1317283:
        case 1317284:
        case 1317285:
        case 1317286:
        case 1317287:
        case 1317288:
        case 1317289:
        case 1317290:
        case 1317291:
        case 1317292:
        case 1317293:
        case 1317294:
        case 1317295:
        case 1317296:
        case 1317297:
        case 1317298:
        case 1317299:
        case 1317300:
        case 1317301:
        case 1317302:
        case 1317303:
        case 1317304:
        case 1317305:
        case 1317306:
        case 1317307:
        case 1317308:
        case 1317309:
        case 1317310:
        case 1317311:
        case 1317312:
        case 1317313:
        case 1317314:
        case 1317315:
        case 1317316:
        case 1317317:
        case 1317318:
        case 1317319:
        case 1317320:
        case 1317321:
        case 1317322:
        case 1317323:
        case 1317324:
        case 1317325:
        case 1317326:
        case 1317327:
        case 1317328:
        case 1317329:
        case 1317330:
        case 1317331:
        case 1317332:
        case 1317333:
        case 1317334:
        case 1317335:
        case 1317336:
        case 1317337:
        case 1317338:
        case 1317339:
        case 1317340:
        case 1317341:
        case 1317342:
        case 1317343:
        case 1317344:
        case 1317345:
        case 1317346:
        case 1317347:
        case 1317348:
        case 1317349:
        case 1317350:
        case 1317351:
        case 1317352:
        case 1317353:
        case 1317354:
        case 1317355:
        case 1317356:
        case 1317357:
        case 1317358:
        case 1317359:
        case 1317360:
        case 1317361:
        case 1317362:
        case 1317363:
        case 1317364:
        case 1317365:
        case 1317366:
        case 1317367:
        case 1317368:
        case 1317369:
        case 1317370:
        case 1317371:
        case 1317372:
        case 1317373:
        case 1317374:
        case 1317375:
        case 1317378:
        case 1317379:
        case 1317380:
        case 1317381:
        case 1317382:
        case 1317383:
        case 1317385:
        case 1317386:
        case 1317387:
        case 1317388:
        case 1317389:
        case 1317390:
        case 1317391:
        case 1317392:
        case 1317393:
        case 1317394:
        case 1317395:
        case 1317396:
        case 1317397:
        case 1317398:
        case 1317399:
        case 1317400:
        case 1317401:
        case 1317416:
        case 1317424:
        case 1317429:
        case 1317436:
        case 1317438:
        case 1317439:
        case 1317440:
        case 1317441:
        case 1317442:
        case 1317447:
        case 1317448:
        case 1317449:
        case 1317450:
        case 1317451:
        case 1317452:
        case 1317453:
        case 1317454:
        case 1317455:
        case 1317456:
        case 1317462:
        case 1317463:
        case 1317464:
        case 1317465:
        case 1317466:
        case 1317467:
        case 1317468:
        case 1317469:
        case 1317470:
        case 1317478:
        case 1317479:
        case 1317480:
        case 1317481:
        case 1317482:
        case 1317483:
        case 1317484:
        case 1317485:
        case 1317486:
        case 1317488:
        case 1317489:
        case 1317490:
        case 1317491:
        case 1317492:
        case 1317493:
        case 1317494:
        case 1317495:
        case 1317496:
        case 1317497:
        case 1317498:
        case 1317499:
        case 1317500:
        case 1317501:
        case 1317502:
        case 1317503:
        case 1317504:
        case 1317505:
        case 1317506:
        case 1317507:
        case 1317508:
        case 1317509:
        case 1317510:
        case 1317511:
        case 1317512:
        case 1317513:
        case 1317514:
        case 1317515:
        case 1317516:
        case 1317517:
        case 1317518:
        case 1317519:
        case 1317520:
        case 1317521:
        case 1317522:
        case 1317523:
        case 1317524:
        case 1317525:
        case 1317526:
        case 1317527:
        case 1317528:
        case 1317529:
        case 1317538:
        case 1317539:
        case 1317540:
        case 1317541:
        case 1317542:
        case 1317543:
        case 1317544:
        case 1317545:
        case 1317554:
        case 1317555:
        case 1317565:
        case 1317591:
        case 1317592:
        case 1317593:
        case 1317594:
        case 1317595:
        case 1317596:
        case 1317597:
        case 1317598:
        case 1317599:
        case 1317600:
        case 1317601:
        case 1317602:
        case 1317603:
        case 1317604:
        case 1317605:
        case 1317606:
        case 1317607:
        case 1317608:
        case 1317609:
        case 1317610:
        case 1317611:
        case 1317612:
        case 1317613:
        case 1317614:
        case 1317615:
        case 1317616:
        case 1317617:
        case 1317618:
        case 1317619:
        case 1317620:
        case 1317621:
        case 1317622:
        case 1317623:
        case 1317624:
        case 1317625:
        case 1317626:
        case 1317627:
        case 1317628:
        case 1317629:
        case 1317630:
        case 1317633:
        case 1317634:
        case 1317635:
        case 1317636:
        case 1317637:
        case 1317638:
        case 1317639:
        case 1317641:
        case 1317642:
        case 1317643:
        case 1317644:
        case 1317645:
        case 1317646:
        case 1317647:
        case 1317648:
        case 1317649:
        case 1317650:
        case 1317651:
        case 1317652:
        case 1317653:
        case 1317654:
        case 1317655:
        case 1317656:
        case 1317657:
        case 1317672:
        case 1317680:
        case 1317684:
        case 1317685:
        case 1317692:
        case 1317694:
        case 1317695:
        case 1317696:
        case 1317703:
        case 1317704:
        case 1317705:
        case 1317706:
        case 1317707:
        case 1317708:
        case 1317709:
        case 1317710:
        case 1317711:
        case 1317712:
        case 1317718:
        case 1317719:
        case 1317720:
        case 1317721:
        case 1317722:
        case 1317723:
        case 1317724:
        case 1317725:
        case 1317726:
        case 1317734:
        case 1317735:
        case 1317736:
        case 1317737:
        case 1317738:
        case 1317739:
        case 1317740:
        case 1317741:
        case 1317742:
        case 1317744:
        case 1317745:
        case 1317746:
        case 1317747:
        case 1317748:
        case 1317749:
        case 1317750:
        case 1317751:
        case 1317752:
        case 1317753:
        case 1317754:
        case 1317755:
        case 1317756:
        case 1317757:
        case 1317758:
        case 1317759:
        case 1317765:
        case 1317766:
        case 1317767:
        case 1317768:
        case 1317769:
        case 1317770:
        case 1317771:
        case 1317772:
        case 1317773:
        case 1317774:
        case 1317775:
        case 1317776:
        case 1317777:
        case 1317778:
        case 1317779:
        case 1317780:
        case 1317781:
        case 1317782:
        case 1317783:
        case 1317784:
        case 1317785:
        case 1317786:
        case 1317787:
        case 1317788:
        case 1317789:
        case 1317790:
        case 1317791:
        case 1317792:
        case 1317793:
        case 1317794:
        case 1317795:
        case 1317796:
        case 1317797:
        case 1317798:
        case 1317799:
        case 1317800:
        case 1317801:
        case 1317802:
        case 1317803:
        case 1317804:
        case 1317805:
        case 1317806:
        case 1317807:
        case 1317808:
        case 1317809:
        case 1317810:
        case 1317811:
        case 1317812:
        case 1317813:
        case 1317814:
        case 1317815:
        case 1317816:
        case 1317817:
        case 1317818:
        case 1317819:
        case 1317820:
        case 1317821:
        case 1317822:
        case 1317823:
        case 1317824:
        case 1317825:
        case 1317826:
        case 1317827:
        case 1317828:
        case 1317829:
        case 1317830:
        case 1317831:
        case 1317832:
        case 1317833:
        case 1317834:
        case 1317835:
        case 1317836:
        case 1317837:
        case 1317838:
        case 1317839:
        case 1317840:
        case 1317841:
        case 1317842:
        case 1317843:
        case 1317844:
        case 1317845:
        case 1317846:
        case 1317847:
        case 1317848:
        case 1317849:
        case 1317850:
        case 1317851:
        case 1317852:
        case 1317853:
        case 1317854:
        case 1317855:
        case 1317856:
        case 1317857:
        case 1317858:
        case 1317859:
        case 1317860:
        case 1317861:
        case 1317862:
        case 1317863:
        case 1317864:
        case 1317865:
        case 1317866:
        case 1317867:
        case 1317868:
        case 1317869:
        case 1317870:
        case 1317871:
        case 1317872:
        case 1317873:
        case 1317874:
        case 1317875:
        case 1317876:
        case 1317877:
        case 1317878:
        case 1317879:
        case 1317880:
        case 1317881:
        case 1317882:
        case 1317883:
        case 1317884:
        case 1317885:
        case 1317886:
          return "UNKNOWN_ERROR";
        case 1313817:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_LLC_SND_FAILURE";
          break;
        case 1313828:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_REGULAR_DEACTIVATION";
          break;
        case 1313829:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_QOS_NOT_ACCEPTED";
          break;
        case 1313830:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_NETWORK_FAIL";
          break;
        case 1313831:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_REACTIVATION_REQD";
          break;
        case 1313839:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_PTI_MISMATCH";
          break;
        case 1313842:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_PDP_TYPE_IPV4_ONLY_ALLOWED";
          break;
        case 1313843:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_PDP_TYPE_IPV6_ONLY_ALLOWED";
          break;
        case 1313844:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_SINGLE_ADDR_BEARERS_ONLY_ALLOWED";
          break;
        case 1313845:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_ESM_INFORMATION_NOT_RECEIVED";
          break;
        case 1313846:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_PDN_CONNENCTION_NOT_EXIST";
          break;
        case 1313847:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_MULTIPLE_PDN_APN_NOT_ALLOWED";
          break;
        case 1313848:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_COLLISION_WITH_NW_INITIATED_REQ";
          break;
        case 1313873:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_INVALID_TI";
          break;
        case 1313887:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_SM_SEMANTICALLY_INCORRECT_MSG";
          break;
        case 1313888:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_INVALID_MAND_INFO";
          break;
        case 1313889:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_SM_MSG_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED";
          break;
        case 1313890:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_SM_MSG_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
          break;
        case 1313891:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_IE_NON_EXISTENCE_OR_NOT_IMPLEMENTED";
          break;
        case 1313892:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_CONDITIONAL_IE_ERROR";
          break;
        case 1313893:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_SM_MSG_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
          break;
        case 1313904:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_APN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_ACTIVE_PDP_CTX";
          break;
        case 1313905:
          result = "MIPC_RES_PDN_EXT_NETWORK_SM_CAUSE_END";
          break;
        case 1314048:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_BEGIN";
          break;
        case 1314049:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_NO_CAUSE";
          break;
        case 1314056:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_OPERATOR_DETERMINED_BARRING";
          break;
        case 1314074:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_INSUFFICIENT_RESOURCES";
          break;
        case 1314075:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_UNKNOWN_OR_MISSING_APN";
          break;
        case 1314076:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_UNKNOWN_PDN_TYPE";
          break;
        case 1314077:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_USER_AUTH_FAILED";
          break;
        case 1314078:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_REQUEST_REJECTED_BY_SGW_OR_PDNGW ";
          break;
        case 1314079:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_REQUEST_REJECTED_UNSPECIFIED";
          break;
        case 1314080:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_SERVICE_OPT_NOT_SUPPORTED";
          break;
        case 1314081:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_REQ_SERVICE_NOT_SUBSCRIBED";
          break;
        case 1314082:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_SERVICE_TEMP_OUT_OF_ORDER";
          break;
        case 1314083:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_PTI_ALREADY_USED";
          break;
        case 1314084:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_REGULAR_DEACTIVATION";
          break;
        case 1314085:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_EPS_QOS_NOT_ACCEPTED";
          break;
        case 1314086:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_NETWORK_FAILURE";
          break;
        case 1314087:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_REACTIVATION_REQUESTED";
          break;
        case 1314089:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_SEMANTIC_ERROR_IN_TFT";
          break;
        case 1314090:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_SYNTACTIC_ERROR_IN_TFT";
          break;
        case 1314091:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_INVALID_EPS_BEARER_IDENTITY";
          break;
        case 1314092:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_SEMANTIC_ERROR_IN_PACKET_FILTERS";
          break;
        case 1314093:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_SYNTACTIC_ERROR_IN_PACKET_FILTERS";
          break;
        case 1314094:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_EPSB_CTXT_WITHOUT_TFT_ACTIVATED";
          break;
        case 1314095:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_PTI_MISMATCH";
          break;
        case 1314097:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_LAST_PDN_DISC_NOT_ALLOWED";
          break;
        case 1314098:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_PDN_TYPE_IPV4_ONLY_ALLOWED";
          break;
        case 1314099:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_PDN_TYPE_IPV6_ONLY_ALLOWED";
          break;
        case 1314100:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_SINGLE_ADDRESS_ONLY_ALLOWED";
          break;
        case 1314101:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_ESM_INFORMATION_NOT_RECEIVED";
          break;
        case 1314102:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_PDN_CONNENCTION_NOT_EXIST";
          break;
        case 1314103:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_MULTIPLE_PDN_APN_NOT_ALLOWED";
          break;
        case 1314104:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_COLLISION_WITH_NW_INIT_REQUESTD";
          break;
        case 1314105:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_PDN_TYPE_IPV4V6_ONLY_ALLOWED";
          break;
        case 1314106:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_PDN_TYPE_NON_IP_ONLY_ALLOWED";
          break;
        case 1314107:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_UNSUPPORTED_QCI_VALUE";
          break;
        case 1314108:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_BEARER_HANDLING_NOT_SUPPORTED";
          break;
        case 1314109:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_PDN_TYPE_ETHERNET_ONLY_ALLOWED";
          break;
        case 1314113:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_MAXIMUM_NUM_OF_EPS_BEARERS_REACHED";
          break;
        case 1314114:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_ESM_REQUESTED_APN_NOT_SUPPORTED_IN_CURRENT_RAT_AND_PLMN_COMBINATION";
          break;
        case 1314129:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_INVALID_PTI_VALUE";
          break;
        case 1314143:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_SEMANTIC_INCORRECT_MSG";
          break;
        case 1314144:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_INVALID_MANDATORY_IE";
          break;
        case 1314145:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_MSG_TYPE_NON_EXISTENT";
          break;
        case 1314146:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_MSG_TYPE_NOT_COMPATIBLE_STATE";
          break;
        case 1314147:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_IE_NON_EXISTENT_NOT_IMPLEMENTED";
          break;
        case 1314148:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_CONDITIONAL_IE_ERROR";
          break;
        case 1314149:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_MSG_NOT_COMPATIBLE_STATE";
          break;
        case 1314159:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_PROTOCOL_ERROR_UNSPECIFIED";
          break;
        case 1314160:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_APN_RESTRICT_VALUE_INCOMPATIBLE ";
          break;
        case 1314161:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_MULTIPLE_ACCESSES_TO_PDN_NOT_ALLOWED";
          break;
        case 1314303:
          result = "MIPC_RES_PDN_EXT_NETWORK_ESM_CAUSE_SPEC_END";
          break;
        case 1314560:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_BEGIN";
          break;
        case 1314561:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_ACT_WITH_CID_UNEXPECTED";
          break;
        case 1314562:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_ACT_WITH_CID_NOT_DEFINED";
          break;
        case 1314563:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_ACT_WITH_FSM_UNEXPECTED";
          break;
        case 1314564:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_ACT_WITH_CID_SECONDARY_WITHOUT_TFT";
          break;
        case 1314565:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_ACT_WITH_PRIMARY_IS_NOT_ACTIVATED";
          break;
        case 1314566:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_DEACT_WITH_CID_UNEXPECTED";
          break;
        case 1314567:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_DEACT_WITH_FSM_UNEXPECTED";
          break;
        case 1314568:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_DEACT_WITH_ACTIVATED_FROM_UNEXPECTED";
          break;
        case 1314569:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_MODIFY_WITH_CID_UNEXPECTED";
          break;
        case 1314570:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_MODIFY_WITH_FSM_UNEXPECTED";
          break;
        case 1314571:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_MODIFY_WITH_NO_QOS_OR_TFT_SET";
          break;
        case 1314572:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_CGDATA_WITH_CID_UNEXPECTED";
          break;
        case 1314573:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_CGDATA_WITH_FSM_UNEXPECTED";
          break;
        case 1314574:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DCONT_CID_UNEXPECTED";
          break;
        case 1314575:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DCONT_NOT_ALLOW_FOR_PPP_TYPE";
          break;
        case 1314576:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DCONT_INVALID_PARAMETER";
          break;
        case 1314577:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DCONT_INVALID_PDP_TYPE";
          break;
        case 1314578:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DCONT_CID_ALREADY_IN_USE";
          break;
        case 1314579:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DCONT_INVALID_APN";
          break;
        case 1314580:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DSCONT_CID_UNEXPECTED";
          break;
        case 1314581:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DSCONT_INVALID_PARAMETER";
          break;
        case 1314582:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DSCONT_CID_PRIMARY_IS_NOT_IN_USE";
          break;
        case 1314583:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DSCONT_CID_PRIMARY_IS_NOT_ACTIVATED";
          break;
        case 1314584:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DSCONT_NOT_ALLOW_FOR_PPP_TYPE";
          break;
        case 1314585:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DSCONT_CID_ALREADY_IN_USE";
          break;
        case 1314586:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_PRCO_CID_ALREADY_IN_USE";
          break;
        case 1314587:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_PRCO_CID_UNEXPECTED";
          break;
        case 1314588:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_ACT_NOT_SUPPORT_EMERGENCY_BEARER_ACTIVATION";
          break;
        case 1314589:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_ACT_ALLOC_NSAPI_FAIL";
          break;
        case 1314590:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DEACT_IND_BY_TIMER_EXPIRY";
          break;
        case 1314591:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DEACT_IND_BY_NO_USER_RESPONSE_TILL_RAT_CHANGE_COMPLETE_IND";
          break;
        case 1314592:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_MOD_PRESERVED_PDP_CONTEXT";
          break;
        case 1314593:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_MOD_CHECK_TFT_FAIL";
          break;
        case 1314594:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_MOD_REJ_DUE_TO_DEACT_IND";
          break;
        case 1314595:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_SET_MULTI_PDN_SUCCESS";
          break;
        case 1314596:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_SET_MULTI_PDN_CID_UNEXPECTED";
          break;
        case 1314597:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_SET_MULTI_PDN_PARA_UNEXPECTED";
          break;
        case 1314598:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_SET_MULTI_PDN_INVALID_PDP_TYPE_AND_LEN";
          break;
        case 1314599:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_SET_MULTI_PDN_INVALID_APN";
          break;
        case 1314600:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_ACT_WITH_CID_UNEXPECTED";
          break;
        case 1314601:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_ACT_WITH_PDP_TYPE_LEN_UNEXPECTED";
          break;
        case 1314602:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_ACT_WITH_INVALID_CONFIG_PROTOCOL";
          break;
        case 1314603:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_ACT_WITH_CID_NOT_DEFINED";
          break;
        case 1314604:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_ACT_WITH_FSM_UNEXPECTED";
          break;
        case 1314605:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_DEACT_WITH_CID_UNEXPECTED";
          break;
        case 1314606:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_DEACT_WITH_FSM_UNEXPECTED";
          break;
        case 1314607:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_DEACT_WITH_ACTIVATED_FROM_UNEXPECTED";
          break;
        case 1314608:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_CGDATA_WITH_CID_UNEXPECTED";
          break;
        case 1314609:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_PPP_CHECKED_CGDATA_WITH_FSM_UNEXPECTED";
          break;
        case 1314610:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_DISPATCH_PDP_ACT_CHECK_TFT_FAIL";
          break;
        case 1314611:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_UPCM_BIND_CNF_BEARER_HAS_BEEN_DEACTIVATED_ALREADY";
          break;
        case 1314612:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_UPCM_UNBIND_CNF_BEARER_HAS_BEEN_DEACTIVATED_ALREADY";
          break;
        case 1314613:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ACL_APN_NOT_EXIST_IN_ACL";
          break;
        case 1314614:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ACL_ACTION_NOT_ALLOWED";
          break;
        case 1314615:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ACL_SIM_FILE_FULL";
          break;
        case 1314616:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ACL_ADD_ENTRY_FAILED";
          break;
        case 1314617:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ACL_DEL_ENTRY_FAILED";
          break;
        case 1314618:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ACL_SET_ENTRY_FAILED";
          break;
        case 1314619:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ACL_SIM_READ_FAILED";
          break;
        case 1314620:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ACL_SIM_WRITE_FAILED";
          break;
        case 1314621:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_CAUSE_START";
          break;
        case 1314622:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_EMPTY";
          break;
        case 1314623:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_USER_CANCEL";
          break;
        case 1314624:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_CID_ALREADY_CONNECT";
          break;
        case 1314625:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_PDN_NOT_ACTIVATED";
          break;
        case 1314626:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_BEARER_NOT_ACTIVATED";
          break;
        case 1314627:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_RMV_LAST_PDN_NOT_ALLOWED";
          break;
        case 1314628:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_LOCAL_RELEASE";
          break;
        case 1314629:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_DETACH";
          break;
        case 1314630:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_IE_ERROR";
          break;
        case 1314631:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_TIMER_TIMEOUT";
          break;
        case 1314632:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_TX_FAILURE";
          break;
        case 1314633:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_RAT_CHANGE";
          break;
        case 1314634:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_PS_SWITCH";
          break;
        case 1314635:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_ACTION_NOT_ALLOWED";
          break;
        case 1314636:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_T3346_CONGESTION";
          break;
        case 1314637:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_THROTTLING_RUNNING";
          break;
        case 1314638:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_SERIOUS_ERROR_AT_LOW_LAYER";
          break;
        case 1314639:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_OTHERS";
          break;
        case 1314640:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_CAUSE_END";
          break;
        case 1314641:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_RETRY_NEEDED_AFTER_IRAT_IF_IN_3GPP";
          break;
        case 1314642:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_LOCAL_REJECTED_DUE_TO_PS_SWITCH";
          break;
        case 1314643:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_AP_RETRY_NEEDED_AFTER_LTE_TO_C2K_IRAT";
          break;
        case 1314644:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_DEACT_SUCCESS_DUE_TO_CONTEXT_NEVER_ACTIVATED";
          break;
        case 1314645:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_MODIFY_FAIL_DUE_TO_CONTEXT_DEACTIVATED";
          break;
        case 1314646:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_MODIFY_FAIL_DUE_TO_CONTEXT_NOT_ACTIVATED";
          break;
        case 1314647:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_DEACTIVATED_DUE_TO_NAS_TFT_TRIGGERED_DEACTIVATION";
          break;
        case 1314648:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_23G_MT_PRIMARY_PDP_IS_ABORTED_DUE_TO_CHANGE_TO_4G";
          break;
        case 1314649:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_DEACTIVATE_SUCCESS_IMMEDIATELY_BECAUSE_ACTIVATION_IS_NOT_PROCESSED_BY_TCM_YET";
          break;
        case 1314650:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_EGACT_ACTIVATE_REJ_DUE_TO_ERROR_RAT";
          break;
        case 1314651:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_EGACT_DEACTIVATE_REJ_DUE_TO_ERROR_RAT";
          break;
        case 1314652:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_DEACTIVATED_DUE_TO_INACTIVITY_TIMER_TIMEOUT";
          break;
        case 1314653:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ETCM_CID_NOT_DEFINE_TFT_QOS";
          break;
        case 1314654:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ETCM_CID_IS_NOT_PRIMARY";
          break;
        case 1314655:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ETCM_TFT_VALIDATION_ERROR";
          break;
        case 1314656:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ETCM_PTI_IS_FULL";
          break;
        case 1314657:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_EGLD_WITH_CID_UNEXPECTED";
          break;
        case 1314658:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_EGLD_WITH_FSM_UNEXPECTED";
          break;
        case 1314659:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_EAPNSYNC_WRONG_APN_IDX";
          break;
        case 1314660:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_EAPNSYNC_APN_TOO_LONG";
          break;
        case 1314661:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_EAPNSYNC_TOO_MUCH_APN_SETTING";
          break;
        case 1314662:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_MOD_PRIMARY_QOS_IS_NOT_ALLOWED";
          break;
        case 1314663:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_MOD_QOS_FOR_NO_MS_PF_IS_NOT_ALLOWED";
          break;
        case 1314667:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_ACT_FAIL_DUE_TO_IRAT_ONGOING";
          break;
        case 1314668:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_MODIFY_FAIL_DUE_TO_IRAT_ONGOING";
          break;
        case 1314669:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_DEACT_FAIL_DUE_TO_IRAT_ONGOING";
          break;
        case 1314670:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_LOCAL_REJECTED_DUE_TO_FSM_UNEXPECTED";
          break;
        case 1314671:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_LOCAL_REJECTED_DUE_TO_GUARANTEE_RSPONSE_TIME_TIMEOUT";
          break;
        case 1314672:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_REGION_2_CAUSE_START";
          break;
        case 1314673:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_CID_INVALID";
          break;
        case 1314674:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_CID_ALREADY_IN_ACTION";
          break;
        case 1314675:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_ACT_WITH_UNEXPECTED_LTE_ATTACH_PDN_IN_23G";
          break;
        case 1314676:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_UGTCM_DEACT_DUE_TO_USER_FORCE_TO_LOCAL_RELEASE";
          break;
        case 1314677:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_ACT_NOT_SUPPORT_HANDOVER_OF_EMERGENCY_BEARER";
          break;
        case 1314678:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_UGTCM_DEACT_DUE_TO_AOSP_SHUTDOWN";
          break;
        case 1314679:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_UGTCM_DEACT_DUE_TO_AOSP_HANDOVER";
          break;
        case 1314680:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_GEMINI_SUSPEND";
          break;
        case 1314681:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_GEMINI_FAILURE";
          break;
        case 1314682:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_GEMINI_SUSPEND_DUE_TO_CALL_ONGOING";
          break;
        case 1314683:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_UGTCM_DEACT_DUE_TO_APN_CHANGED";
          break;
        case 1314684:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_DETACH_REATTACH";
          break;
        case 1314685:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_VGTCM_DEACT_DUE_TO_AOSP_SHUTDOWN";
          break;
        case 1314686:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_FAIL_CAUSE_REQ_RES_APN_MISMATCH";
          break;
        case 1314687:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_UGTCM_DEACT_DUE_TO_IMS_HANDOVER";
          break;
        case 1314702:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_DEACT_DUE_TO_DRB_RELEASE";
          break;
        case 1314703:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_REGION_2_CAUSE_END";
          break;
        case 1314704:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_REGION_3_CAUSE_START";
          break;
        case 1314705:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_DCONT_PSI_UNEXPECTED";
          break;
        case 1314706:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_ACT_WITH_UNEXPECTED_LTE_ATTACH_PDN_IN_5G";
          break;
        case 1314707:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHECKED_ACT_WITH_CID_SECONDARY_NOT_SUPPORT_IN_5G";
          break;
        case 1314708:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_VGTCM_DEACT_DUE_TO_USER_FORCE_TO_LOCAL_RELEASE";
          break;
        case 1314709:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_EGPCO_CID_UNEXPECTED";
          break;
        case 1314710:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_EGPCO_PSI_UNEXPECTED";
          break;
        case 1314711:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_EGDCONT_CID_UNEXPECTED";
          break;
        case 1314712:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_EGDCONT_PSI_UNEXPECTED";
          break;
        case 1314713:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_EGDCONT_INVALID_PDP_TYPE";
          break;
        case 1314714:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_HANDOVER_REESTABLISHMENT_NEEDED";
          break;
        case 1314715:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_HANDOVER_REESTABLISHMENT_FAIL_DUE_TO_NO_WITHOUT_N26_INFO";
          break;
        case 1314716:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_VGTCM_DEACT_DUE_TO_INTERRAT";
          break;
        case 1314717:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_RAT_TCM_LOCAL_REJECTED_DUE_TO_ONGOING_PROCESS";
          break;
        case 1314735:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_REGION_3_CAUSE_END";
          break;
        case 1314736:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_REGION_4_CAUSE_START";
          break;
        case 1314737:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_PSI_NOT_DEFINED";
          break;
        case 1314738:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_VGTCM_PROCEDURE_ONGOING_ON_CORRESPONDING_CID";
          break;
        case 1314739:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CHANGE_PSI_FOR_ACTIVE_CID_NOT_ALLOWED";
          break;
        case 1314740:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CGAUTH_CID_UNEXPECTED";
          break;
        case 1314741:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_CGAUTH_PSI_UNEXPECTED";
          break;
        case 1314742:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_VGTCM_UNEXPECTED_FIC_TYPE";
          break;
        case 1314743:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_PEER_TO_PEER_MODIFY_WITHOUT_P_CSCF";
          break;
        case 1314744:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_PEER_TO_PEER_MODIFY_WITH_P_CSCF";
          break;
        case 1314745:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_MODIFY_DUE_TO_INTERRAT";
          break;
        case 1314746:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_ACTIVATE_FAIL_DUE_TO_SAT_DATA_CONNECTION_CTRL_FAIL";
          break;
        case 1314747:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_ACTIVATE_FAIL_DUE_TO_SAT_NOT_ALLOW";
          break;
        case 1314748:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_ACTIVATE_FAIL_DUE_TO_SAT_SIM_ERROR";
          break;
        case 1314749:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_L4C_ACTIVATE_FAIL_DUE_TO_DEACTIVATE_ABORT";
          break;
        case 1314767:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_REGION_4_CAUSE_END";
          break;
        case 1314768:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_REGION_5_CAUSE_START";
          break;
        case 1314769:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_4G5_EPS_BEARER_MAPPED_FAILED";
          break;
        case 1314770:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_ATTACH_FAILURE";
          break;
        case 1314784:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_ESM_REGION_2_CAUSE_END";
          break;
        case 1314815:
          result = "MIPC_RES_PDN_EXT_NETWORK_TCM_CAUSE_TCM_REGION_5_CAUSE_END";
          break;
        case 1315328:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_BEGIN";
          break;
        case 1315329:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_GRANTED";
          break;
        case 1315336:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_08";
          break;
        case 1315354:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_26";
          break;
        case 1315355:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_27";
          break;
        case 1315356:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_28";
          break;
        case 1315357:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_29";
          break;
        case 1315358:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_30";
          break;
        case 1315359:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_31";
          break;
        case 1315360:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_32";
          break;
        case 1315361:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_33";
          break;
        case 1315362:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_34";
          break;
        case 1315363:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_35";
          break;
        case 1315364:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_36";
          break;
        case 1315365:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_37";
          break;
        case 1315366:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_38";
          break;
        case 1315367:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_39";
          break;
        case 1315369:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_41";
          break;
        case 1315370:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_42";
          break;
        case 1315371:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_43";
          break;
        case 1315372:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_44";
          break;
        case 1315373:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_45";
          break;
        case 1315374:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_46";
          break;
        case 1315375:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_47";
          break;
        case 1315377:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_49";
          break;
        case 1315378:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_50";
          break;
        case 1315379:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_51";
          break;
        case 1315380:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_52";
          break;
        case 1315381:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_53";
          break;
        case 1315382:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_54";
          break;
        case 1315383:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_55";
          break;
        case 1315384:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_56";
          break;
        case 1315387:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_59";
          break;
        case 1315393:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_65";
          break;
        case 1315394:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_66";
          break;
        case 1315409:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_81";
          break;
        case 1315423:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_95";
          break;
        case 1315424:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_96";
          break;
        case 1315425:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_97";
          break;
        case 1315426:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_98";
          break;
        case 1315427:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_99";
          break;
        case 1315428:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_100";
          break;
        case 1315429:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_101";
          break;
        case 1315439:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_111";
          break;
        case 1315440:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_DUE_TO_CAUSE_112";
          break;
        case 1315528:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_NOT_IN_ACL";
          break;
        case 1315529:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_PAM_PDN_ACCESS_REJECT_READ_EF_ACL_ONGOING";
          break;
        case 1315583:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_CAUSE_END";
          break;
        case 1315584:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_BEGIN";
          break;
        case 1315585:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_GRANTED";
          break;
        case 1315586:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_DISABLE_IN_APN_TABLE";
          break;
        case 1315587:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_ASK_APN_CHANGE_NOT_READY";
          break;
        case 1315588:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_CHANGE_APN_CLASS";
          break;
        case 1315589:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_CHANGE_APN_CLASS_AND_THROTTLE";
          break;
        case 1315590:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_THROTTLE_FOREVER";
          break;
        case 1315591:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_THROTTLE";
          break;
        case 1315592:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_THROTTLE_WITH_BACKOFF_TIMER";
          break;
        case 1315593:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_THROTTLE_FOREVER_CANDIDATE";
          break;
        case 1315594:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_THROTTLE_NO_RSP";
          break;
        case 1315595:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_NOT_IN_ACL";
          break;
        case 1315596:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_STOP_ATTACH_FOR_CLASS1_AND_CLASS2_NOT_ENABLED";
          break;
        case 1315597:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_WAIT_TIME_NOT_EXPIRED";
          break;
        case 1315598:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_EXCEED_MAX_PDN_CONN_TRIES";
          break;
        case 1315599:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_THROTTLE_BY_MAX_PDN_CONN_TRIES";
          break;
        case 1315600:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_NO_AVAILABLE_CLASS_CAN_BE_USED";
          break;
        case 1315601:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_APN_IN_USE";
          break;
        case 1315602:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_VZ_REQ_LTEDATA_39683_FEB_2016";
          break;
        case 1315603:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_VZ_REQ_LTEDATA_39684_FEB_2016";
          break;
        case 1315604:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_ALLOC";
          break;
        case 1315605:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDN_ACCESS_REJECT_MOD";
          break;
        case 1315616:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDU_ACCESS_GRANTED";
          break;
        case 1315617:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDU_ACCESS_REJECT_THROTTLE_FOREVER";
          break;
        case 1315618:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDU_ACCESS_REJECT_THROTTLE";
          break;
        case 1315619:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDU_ACCESS_REJECT_THROTTLE_WITH_BACKOFF_TIMER";
          break;
        case 1315620:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDU_ACCESS_REJECT_THROTTLE_NO_RSP";
          break;
        case 1315621:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDU_ACCESS_REJECT_MOD";
          break;
        case 1315622:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDU_ACCESS_REJECT_EST";
          break;
        case 1315623:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_PAM_OP12_PDU_ACCESS_THROTTLE_EXEMPTION";
          break;
        case 1315839:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_OP12_CAUSE_END";
          break;
        case 1315840:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_ATT_CAUSE_BEGIN";
          break;
        case 1315841:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_ATT_CAUSE_PAM_ATT_PDN_ACCESS_GRANTED";
          break;
        case 1315842:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_ATT_CAUSE_PAM_ATT_PDN_ACCESS_REJECT_IMS_PDN_BLOCK_TEMP";
          break;
        case 1315843:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_ATT_CAUSE_PAM_ATT_PDN_ACCESS_REJECT_IMS_PDN_BLOCK_FOREVER";
          break;
        case 1316095:
          result = "MIPC_RES_PDN_EXT_NETWORK_PAM_ATT_CAUSE_END";
          break;
        case 1316096:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_BEGIN";
          break;
        case 1316097:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_OK";
          break;
        case 1316098:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CMD_MODE_NOT_SUPPORT";
          break;
        case 1316099:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CURRENT_RAT_UNKNOWN";
          break;
        case 1316100:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CID_IS_NOT_ACTIVE_FOR_CGCONTRDP";
          break;
        case 1316101:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CID_IS_NOT_VALID";
          break;
        case 1316102:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_IE_PARSE_RESULT_IS_NOT_OK";
          break;
        case 1316103:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_PCO_ID_IS_NOT_VALID";
          break;
        case 1316104:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_PCO_ID_IS_NOT_SUPPORTED";
          break;
        case 1316105:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_PCO_ID_SUPPORTED_IS_NOT_PRESENT";
          break;
        case 1316106:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CID_IS_NOT_ACTIVE_FOR_BINDING";
          break;
        case 1316107:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CID_IS_NOT_ACTIVE_FOR_UNBINDING";
          break;
        case 1316108:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CMD_NOT_SUPPORT_IN_CURRENT_DOMAIN";
          break;
        case 1316109:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CID_IS_ALREADY_BINDED";
          break;
        case 1316110:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CID_IS_ALREADY_UNBINDED";
          break;
        case 1316111:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CMD_NOT_SUPPORT";
          break;
        case 1316112:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CGCMOD_NOT_SUPPORT_IN_C2K";
          break;
        case 1316113:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_EGACT_NOT_SUPPORT_IN_C2K";
          break;
        case 1316114:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CID_IS_ACTIVE_BUT_NOT_PRIMARY_PDP";
          break;
        case 1316115:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_CID_IS_NOT_ACTIVE_FOR_SENDING_DATA";
          break;
        case 1316116:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_CGEV_IND_FROM_CVAL_WITHOUT_CAUSE";
          break;
        case 1316117:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_CGEV_IND_NO_CAUSE";
          break;
        case 1316118:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_EGACT_UNEXPECTED_RAT_IN_C2K";
          break;
        case 1316119:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_AT_ERROR_C2K_LTE_DEACT_RETRY_NEEDED";
          break;
        case 1316224:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_LEISIM_CAUSE_START";
          break;
        case 1316225:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_LEISIM_AT_ERROR_CID_IS_ALREADY_BINDED";
          break;
        case 1316226:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_LEISIM_AT_ERROR_CID_PDN_TRANSFER_ONGOING";
          break;
        case 1316227:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_LEISIM_OTHER_DIRECTION_IRAT_STARTED_ABORT_REVIVE";
          break;
        case 1316228:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_LEISIM_EHRPD_ALL_3_ROUNDS_REVIVE_FAIL";
          break;
        case 1316229:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_LEISIM_DEACT_ABORT_REVIVE";
          break;
        case 1316230:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_LEISIM_EHRPD_ONE_PDN_REVIVE_SUCCESS_NO_NEED_REVIVE_OTHER";
          break;
        case 1316231:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_LEISIM_OTHER_DIRECTION_IRAT_STARTED_ABORT_EHRPD_2ND_REVIVE";
          break;
        case 1316232:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_L4BPDN_LEISIM_OTHER_DIRECTION_IRAT_STARTED_ABORT_EHRPD_3ND_REVIVE";
          break;
        case 1316351:
          result = "MIPC_RES_PDN_EXT_NETWORK_L4BPDN_CAUSE_END";
          break;
        case 1316352:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_BEGIN";
          break;
        case 1316353:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AT_OK";
          break;
        case 1316354:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AT_ERROR_EIF_ERROR";
          break;
        case 1316355:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AT_ERROR_EIF_FORMAT_ERROR";
          break;
        case 1316356:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AT_ERROR_INVALID_INTERFACE_ID";
          break;
        case 1316357:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AT_ERROR_INVALID_STATE";
          break;
        case 1316358:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AT_ERROR_DSCONT_WITHOUT_PRIMARY";
          break;
        case 1316416:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2_NETIF_OK";
          break;
        case 1316417:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2_NETIF_ERROR";
          break;
        case 1316418:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2_NETIF_INVALID_INTERFACE_ID";
          break;
        case 1316419:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2_NETIF_POOL_FULL";
          break;
        case 1316420:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2_NETIF_INVALID_STATE";
          break;
        case 1316421:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2_NETIF_INVALID_PARAMETER";
          break;
        case 1316432:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_NW_CAUSE_START";
          break;
        case 1316448:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_CAUSE_START";
          break;
        case 1316449:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_APN_NOT_SET";
          break;
        case 1316450:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_APN_NOT_FOUND";
          break;
        case 1316451:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_APN_CID_ALLOC_FAIL";
          break;
        case 1316452:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_TARGET_DETACH";
          break;
        case 1316453:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_RF_OFF";
          break;
        case 1316454:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_APN_ON_WIFI";
          break;
        case 1316455:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_ICCID_NOT_GET";
          break;
        case 1316456:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_IMS_ON_WIFI";
          break;
        case 1316457:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IA_UNBIND_ONGOING";
          break;
        case 1316464:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_OTHER_CAUSE_START";
          break;
        case 1316465:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_DATA_NOT_ALLOWED";
          break;
        case 1316466:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IMPORTANT_USER_USING";
          break;
        case 1316467:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_IMS_CALLING_ON_OTHER_SIM";
          break;
        case 1316468:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_DUAL_MDALLOW";
          break;
        case 1316469:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_MDALLOW_NOT_SUPPORT";
          break;
        case 1316470:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_PS_MODE_UNKNOWN";
          break;
        case 1316471:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_CS_CALLING_ON_OTHER_SIM";
          break;
        case 1316472:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_OP12_DATA_NOT_ALLOWED";
          break;
        case 1316473:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_DSBP_ONGOING";
          break;
        case 1316474:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2AM_SIM_NOT_READY";
          break;
        case 1316560:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_OK";
          break;
        case 1316561:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_INVAL_ARG";
          break;
        case 1316562:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_NOT_CONN";
          break;
        case 1316563:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_ALREADY_PROG";
          break;
        case 1316564:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_CONN_ABORT";
          break;
        case 1316565:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_NO_ADDR";
          break;
        case 1316566:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_NOT_PERM";
          break;
        case 1316567:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_IN_USE";
          break;
        case 1316568:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_CONFLICT";
          break;
        case 1316569:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_UNRECOV";
          break;
        case 1316575:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CPM_CAUSE_END";
          break;
        case 1316576:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CM_CAUSE_START";
          break;
        case 1316591:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2CM_CAUSE_END";
          break;
        case 1316592:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2PM_CAUSE_START";
          break;
        case 1316593:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2PM_D2RM_REJ";
          break;
        case 1316594:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_D2PM_NW_UNKNOWN";
          break;
        case 1316607:
          result = "MIPC_RES_PDN_EXT_NETWORK_D2_CAUSE_END";
          break;
        case 1316608:
          result = "MIPC_RES_PDN_EXT_NETWORK_DDM_CAUSE_BEGIN";
          break;
        case 1316609:
          result = "MIPC_RES_PDN_EXT_NETWORK_DDM_CAUSE_DDM_AT_OK";
          break;
        case 1316610:
          result = "MIPC_RES_PDN_EXT_NETWORK_DDM_CAUSE_DDM_DEFINE_ATTACH_PDN_FAIL";
          break;
        case 1316611:
          result = "MIPC_RES_PDN_EXT_NETWORK_DDM_CAUSE_DDM_BLOCK_ACT_DATA_CALL";
          break;
        case 1316612:
          result = "MIPC_RES_PDN_EXT_NETWORK_DDM_CAUSE_DDM_REUSE_PDP_TYPE_NOT_MATCH";
          break;
        case 1316613:
          result = "MIPC_RES_PDN_EXT_NETWORK_DDM_CAUSE_DDM_IA_IS_ONGOING";
          break;
        case 1316614:
          result = "MIPC_RES_PDN_EXT_NETWORK_DDM_CAUSE_DDM_ACT_IS_ONGOING";
          break;
        case 1316615:
          result = "MIPC_RES_PDN_EXT_NETWORK_DDM_CAUSE_DDM_DEACT_IS_ONGOING";
          break;
        case 1316863:
          result = "MIPC_RES_PDN_EXT_NETWORK_DDM_CAUSE_END";
          break;
        case 1317376:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_BEGIN";
          break;
        case 1317377:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_NO_CAUSE";
          break;
        case 1317384:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_OPERATOR_DETERMINED_BARRING";
          break;
        case 1317402:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_INSUFFICIENT_RESOURCES";
          break;
        case 1317403:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_MISSING_OR_UNKNOWN_DNN";
          break;
        case 1317404:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_UNKNOWN_PDU_SESSION_TYPE";
          break;
        case 1317405:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_USER_AUTH_FAILED";
          break;
        case 1317406:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_REQUEST_REJECTED_BY_SGW_OR_PDNGW";
          break;
        case 1317407:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_REQUEST_REJECTED_UNSPECIFIED";
          break;
        case 1317408:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SERVICE_OPT_NOT_SUPPORTED";
          break;
        case 1317409:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_REQ_SERVICE_NOT_SUBSCRIBED";
          break;
        case 1317410:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SERVICE_OPT_TEMP_OUT_OF_ORDER";
          break;
        case 1317411:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PTI_ALREADY_USED";
          break;
        case 1317412:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_REGULAR_DEACTIVATION";
          break;
        case 1317413:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_EPS_QOS_NOT_ACCEPTED";
          break;
        case 1317414:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_NETWORK_FAILURE";
          break;
        case 1317415:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_REACTIVATION_REQUESTED";
          break;
        case 1317417:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SEMANTIC_ERROR_IN_TFT";
          break;
        case 1317418:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SYNTACTIC_ERROR_IN_TFT";
          break;
        case 1317419:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_INVALID_PDU_SESSION_IDENTITY";
          break;
        case 1317420:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SEMANTIC_ERROR_IN_PACKET_FILTERS";
          break;
        case 1317421:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SYNTACTIC_ERROR_IN_PACKET_FILTERS";
          break;
        case 1317422:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_OUT_OF_LADN_SERVICE_AREA";
          break;
        case 1317423:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PTI_MISMATCH";
          break;
        case 1317425:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_LAST_PDN_DISC_NOT_ALLOWED";
          break;
        case 1317426:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PDU_SESSION_TYPE_IPV4_ONLY_ALLOWED";
          break;
        case 1317427:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PDU_SESSION_TYPE_IPV6_ONLY_ALLOWED";
          break;
        case 1317428:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SINGLE_ADDRESS_ONLY_ALLOWED";
          break;
        case 1317430:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PDU_SESSION_NOT_EXIST";
          break;
        case 1317431:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_MULTIPLE_PDN_APN_NOT_ALLOWED";
          break;
        case 1317432:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_COLLISION_WITH_NW_INIT_REQUEST";
          break;
        case 1317433:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PDU_SESSION_TYPE_IPV4V6_ONLY_ALLOWED";
          break;
        case 1317434:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PDU_SESSION_TYPE_UNSTRUCTURED_ONLY_ALLOWED";
          break;
        case 1317435:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_UNSUPPORTED_QCI_VALUE";
          break;
        case 1317437:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PDU_SESSION_TYPE_ETHERNET_ONLY_ALLOWED";
          break;
        case 1317443:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_INSUFFICIENT_RESOURCES_FOR_SPECIFIC_SLICE_AND_DNN";
          break;
        case 1317444:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_NOT_SUPPORTED_SSC_MODE";
          break;
        case 1317445:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_INSUFFICIENT_RESOURCES_FOR_SPECIFIC_SLICE";
          break;
        case 1317446:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_MISSING_OR_UNKNOWN_DNN_IN_A_SLICE";
          break;
        case 1317457:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_INVALID_PTI_VALUE";
          break;
        case 1317458:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_MAX_DATA_RATE_PER_UE_FOR_UPLANE_INTEGRITY_PROTECTION_IS_TOO_LOW";
          break;
        case 1317459:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SEMANTIC_ERROR_IN_QOS_OPERATION";
          break;
        case 1317460:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SYNTACTIC_ERROR_IN_QOS_OPERATION";
          break;
        case 1317461:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_INVALID_MAPPED_EPS_BEARER_IDENTITY";
          break;
        case 1317471:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SEMANTICLLY_INCORRECT_MSG";
          break;
        case 1317472:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_INVALID_MANDATORY_IE";
          break;
        case 1317473:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_MSG_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENT";
          break;
        case 1317474:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_MSG_TYPE_NOT_COMPATIBLE_STATE";
          break;
        case 1317475:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_IE_NON_EXISTENT_NOT_IMPLEMENTED";
          break;
        case 1317476:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_CONDITIONAL_IE_ERROR";
          break;
        case 1317477:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_MSG_NOT_COMPATIBLE_STATE";
          break;
        case 1317487:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROTOCOL_ERROR_UNSPECIFIED";
          break;
        case 1317530:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_SPEC_END";
          break;
        case 1317531:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_START";
          break;
        case 1317532:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_RESPONDER_REJ_REQ_DUE_TO_NESTED_SAME_REQ";
          break;
        case 1317533:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_RESPONDER_REJ_REQ_DUE_TO_INVALID_PSI";
          break;
        case 1317534:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_RESPONDER_REJ_REQ_DUE_VGSM_INIT_MOD_ONGOING";
          break;
        case 1317535:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_RESPONDER_PROCESSING_TIME_NOT_ENOUGH";
          break;
        case 1317536:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_RESPONDER_GUARANTEE_RESPONSE_TIMER_TIME_OUT";
          break;
        case 1317537:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_RESPONDER_REJ_REQ_DUE_TO_VZ_REQ_5GNRSA_10_2_3";
          break;
        case 1317546:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CONN_REJ_REQ_DUE_TO_PS_SUSPENDED";
          break;
        case 1317547:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CONN_REJ_REQ_DUE_TO_ERROR_OCCURED";
          break;
        case 1317548:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CONN_REJ_REQ_DUE_TO_HURRY_UP_REQ";
          break;
        case 1317549:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CONN_REJ_REQ_DUE_TO_UAC_BARRING";
          break;
        case 1317550:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CONN_REJ_REQ_DUE_TO_FATAL_FAIL";
          break;
        case 1317551:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CONN_ABORT_PROC_DUE_TO_POSSIBLE_LONG_GEMINI_SUSPEND";
          break;
        case 1317552:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CONN_REJ_REQ_DUE_TO_TRANSMISSION_FAILURE";
          break;
        case 1317553:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CONN_REJ_REQ_DUE_TO_S_NSSAI_REJECTED";
          break;
        case 1317556:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_SYSTEM_STATE_CHECK_FAIL";
          break;
        case 1317557:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_REQ_INFO_ERROR";
          break;
        case 1317558:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_TX_FAILURE";
          break;
        case 1317559:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_TIMER_TIMEOUT";
          break;
        case 1317560:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_LOCAL_RELEASE";
          break;
        case 1317561:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_CANCLE_BY_RELEASE_FROM_UPPER_LAYER";
          break;
        case 1317562:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_NW_RELEASE_ABORT_ORIGINAL_PROCEDURE";
          break;
        case 1317563:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_MSG_NOT_FORWARD_ROUTING_FAILURE";
          break;
        case 1317564:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_MSG_NOT_FORWARD_DNN_NOT_SUPPORT_IN_SLICE";
          break;
        case 1317566:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_MT_MOD_ABORT_ORIGINAL_PROCEDURE";
          break;
        case 1317567:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_MT_MOD_ONGOING_MO_MOD_NOT_ALLOW";
          break;
        case 1317568:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_SYNC_PDUS_STATUS_WITH_NW";
          break;
        case 1317569:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_UE_DEREGISTER_FROM_NW";
          break;
        case 1317570:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_5G23_DO_LOCAL_RELEASE";
          break;
        case 1317571:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_THIS_PDU_WAS_REVIVED_IN_4G";
          break;
        case 1317572:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_INTERSYSTEM_CHANGE_ABORT";
          break;
        case 1317573:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_PDU_SESSION_ALREADY_DEACTIVATE";
          break;
        case 1317574:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_5G4_MAP_FAILED";
          break;
        case 1317575:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_TRIGGERED_BY_RQOS";
          break;
        case 1317576:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_THIS_PDUS_CANNOT_TO_4G";
          break;
        case 1317577:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_SYSTEM_STATE_UNSYNC_WITH_UPPER_LAYER";
          break;
        case 1317578:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_UPPER_LAYER_REQ_FORCE_TO_LOCAL_REL_PDUS";
          break;
        case 1317579:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_SYNC_EPSB_STATUS_WITH_NW";
          break;
        case 1317580:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_PAM_REJECT_REQ";
          break;
        case 1317581:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_SECOND_EMC_PDUS_NOT_ALLOW";
          break;
        case 1317582:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_EST_NON_EMC_PDUS_NOT_ALLOW_WHEN_ENTER_EMC_REGISTERED";
          break;
        case 1317583:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_THIS_MOD_REQ_ON_EMC_PDUS_IS_NOT_ALLOWED";
          break;
        case 1317584:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_SNSSAI_NOT_IN_NSSAI";
          break;
        case 1317585:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_DUE_TO_DETACH_WITH_REATTACH_REQUIRED";
          break;
        case 1317586:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_MSG_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENT_INDICATED_BY_5GSM_STATUS";
          break;
        case 1317587:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_TRIGGERED_BY_SNSSAI_UPDATE";
          break;
        case 1317588:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_VGMM_ENTER_EMC_TO_LOCAL_RELEASE";
          break;
        case 1317589:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_PROCESS_NW_MOD_COMMAND_OK";
          break;
        case 1317590:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_PROPRIETARY_CAUSE_CORE_MSG_NOT_FORWARD_RESTRICTED_SERVICE_AREA";
          break;
        case 1317631:
          result = "MIPC_RES_PDN_EXT_NETWORK_5GSM_CAUSE_END";
          break;
        case 1317632:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_BEGIN";
          break;
        case 1317640:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_8";
          break;
        case 1317658:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_26";
          break;
        case 1317659:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_27";
          break;
        case 1317660:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_28";
          break;
        case 1317661:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_29";
          break;
        case 1317662:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_30";
          break;
        case 1317663:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_31";
          break;
        case 1317664:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_32";
          break;
        case 1317665:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_33";
          break;
        case 1317666:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_34";
          break;
        case 1317667:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_35";
          break;
        case 1317668:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_36";
          break;
        case 1317669:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_37";
          break;
        case 1317670:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_38";
          break;
        case 1317671:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_39";
          break;
        case 1317673:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_41";
          break;
        case 1317674:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_42";
          break;
        case 1317675:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_43";
          break;
        case 1317676:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_44";
          break;
        case 1317677:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_45";
          break;
        case 1317678:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_46";
          break;
        case 1317679:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_47";
          break;
        case 1317681:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_49";
          break;
        case 1317682:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_50";
          break;
        case 1317683:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_51";
          break;
        case 1317686:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_54";
          break;
        case 1317687:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_55";
          break;
        case 1317688:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_56";
          break;
        case 1317689:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_57";
          break;
        case 1317690:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_58";
          break;
        case 1317691:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_59";
          break;
        case 1317693:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_61";
          break;
        case 1317697:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_65";
          break;
        case 1317698:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_66";
          break;
        case 1317699:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_67";
          break;
        case 1317700:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_68";
          break;
        case 1317701:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_69";
          break;
        case 1317702:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_70";
          break;
        case 1317713:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_81";
          break;
        case 1317714:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_82";
          break;
        case 1317715:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_83";
          break;
        case 1317716:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_84";
          break;
        case 1317717:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_85";
          break;
        case 1317727:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_95";
          break;
        case 1317728:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_96";
          break;
        case 1317729:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_97";
          break;
        case 1317730:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_98";
          break;
        case 1317731:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_99";
          break;
        case 1317732:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_100";
          break;
        case 1317733:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_101";
          break;
        case 1317743:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_CAUSE_111";
          break;
        case 1317760:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_NOT_FORWARDED_CAUSE_START";
          break;
        case 1317761:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_DNN_NOT_SUPPORT_IN_SLICE";
          break;
        case 1317762:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_5G_PDU_SESSION_ACCESS_REJECT_DUE_TO_MAX_PDU_SESSION_REACHED";
          break;
        case 1317763:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_VGSM_REJECT_DUE_TO_LADN_OUT_OF_SERVICE_AREA";
          break;
        case 1317764:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_PAM_VGSM_REJECT_DUE_TO_LADN_TABLE_VERSION_NOT_UNSYNC";
          break;
        case 1317887:
          result = "MIPC_RES_PDN_EXT_NETWORK_EXT_PAM_CAUSE_END";
          break;
        default:
          switch(a1)
          {
            case 1310719:
              result = "MIPC_RES_NW_EXT_END";
              break;
            case 1310720:
              result = "MIPC_RES_PDN_EXT_BEGIN";
              break;
            case 1310721:
            case 1310722:
            case 1310723:
            case 1310724:
            case 1310725:
            case 1310726:
            case 1310727:
            case 1310728:
            case 1310729:
            case 1310730:
            case 1310731:
            case 1310732:
            case 1310733:
            case 1310734:
            case 1310735:
            case 1310736:
            case 1310737:
            case 1310738:
            case 1310739:
            case 1310740:
            case 1310741:
            case 1310742:
            case 1310743:
            case 1310744:
            case 1310745:
            case 1310746:
            case 1310747:
            case 1310748:
            case 1310749:
            case 1310750:
            case 1310751:
            case 1310752:
            case 1310753:
            case 1310754:
            case 1310755:
            case 1310756:
            case 1310757:
            case 1310758:
            case 1310759:
            case 1310760:
            case 1310761:
            case 1310762:
            case 1310763:
            case 1310764:
            case 1310765:
            case 1310766:
            case 1310767:
            case 1310768:
            case 1310769:
            case 1310770:
            case 1310771:
            case 1310772:
            case 1310773:
            case 1310774:
            case 1310775:
            case 1310776:
            case 1310777:
            case 1310778:
            case 1310779:
            case 1310780:
            case 1310781:
            case 1310782:
            case 1310783:
            case 1310784:
            case 1310785:
            case 1310786:
            case 1310787:
            case 1310788:
            case 1310789:
            case 1310790:
            case 1310791:
            case 1310792:
            case 1310793:
            case 1310794:
            case 1310795:
            case 1310796:
            case 1310797:
            case 1310798:
            case 1310799:
            case 1310800:
            case 1310801:
            case 1310802:
            case 1310803:
            case 1310804:
            case 1310805:
            case 1310806:
            case 1310807:
            case 1310808:
            case 1310809:
            case 1310810:
            case 1310811:
            case 1310812:
            case 1310813:
            case 1310814:
            case 1310815:
            case 1310816:
            case 1310817:
            case 1310818:
            case 1310819:
            case 1310821:
            case 1310822:
            case 1310823:
            case 1310824:
            case 1310825:
            case 1310826:
            case 1310827:
            case 1310828:
            case 1310829:
            case 1310830:
            case 1310831:
            case 1310832:
            case 1310833:
            case 1310834:
            case 1310835:
            case 1310836:
            case 1310837:
            case 1310838:
            case 1310839:
            case 1310840:
            case 1310841:
            case 1310842:
            case 1310843:
            case 1310844:
            case 1310845:
            case 1310856:
            case 1310857:
            case 1310858:
            case 1310859:
            case 1310867:
            case 1310868:
            case 1310870:
            case 1310871:
            case 1310872:
            case 1310873:
            case 1310874:
            case 1310875:
            case 1310876:
            case 1310877:
            case 1310878:
            case 1310879:
            case 1310880:
            case 1310881:
            case 1310882:
            case 1310883:
            case 1310884:
            case 1310885:
            case 1310886:
            case 1310887:
            case 1310888:
            case 1310889:
            case 1310890:
            case 1310892:
            case 1310893:
            case 1310894:
            case 1310895:
            case 1310902:
            case 1310903:
            case 1310904:
            case 1310905:
            case 1310906:
            case 1310907:
            case 1310908:
            case 1310909:
            case 1310910:
            case 1310911:
            case 1310912:
            case 1310913:
            case 1310914:
            case 1310915:
            case 1310916:
            case 1310917:
            case 1310918:
            case 1310919:
              return "UNKNOWN_ERROR";
            case 1310820:
              result = "MIPC_RES_PDN_EXT_CME_ERROR_BEGIN";
              break;
            case 1310846:
              result = "MIPC_RES_PDN_EXT_CME_INSUFFICIENT_RESOURCES_26";
              break;
            case 1310847:
              result = "MIPC_RES_PDN_EXT_CME_MISSING_OR_UNKNOWN_DNN_27";
              break;
            case 1310848:
              result = "MIPC_RES_PDN_EXT_CME_UNKNOWN_PDU_SESSION_TYPE_28";
              break;
            case 1310849:
              result = "MIPC_RES_PDN_EXT_CME_USER_AUTHENTICATION_OR_AUTHORIZATION_FAILED_29";
              break;
            case 1310850:
              result = "MIPC_RES_PDN_EXT_CME_ACTIVATION_REJECTED_BY_SERVING_GW_OR_PDN_GW_30";
              break;
            case 1310851:
              result = "MIPC_RES_PDN_EXT_CME_REQUEST_REJECTED_UNSPECIFIED_31";
              break;
            case 1310852:
              result = "MIPC_RES_PDN_EXT_CME_SERVICE_OPTION_NOT_SUPPORTED_32";
              break;
            case 1310853:
              result = "MIPC_RES_PDN_EXT_CME_REQUESTED_SERVICE_OPTION_NOT_SUBSCRIBED_33";
              break;
            case 1310854:
              result = "MIPC_RES_PDN_EXT_CME_SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER_34";
              break;
            case 1310855:
              result = "MIPC_RES_PDN_EXT_CME_PTI_ALREADY_IN_USE_35";
              break;
            case 1310860:
              result = "MIPC_RES_PDN_EXT_CME_FEATURE_NOT_SUPPORTED_40";
              break;
            case 1310861:
              result = "MIPC_RES_PDN_EXT_CME_SEMANTIC_ERROR_IN_THE_TFT_OPERATION_41";
              break;
            case 1310862:
              result = "MIPC_RES_PDN_EXT_CME_SYNTACTICAL_ERROR_IN_THE_TFT_OPERATION_42";
              break;
            case 1310863:
              result = "MIPC_RES_PDN_EXT_CME_INVALID_PDU_SESSION_IDENTITY_43";
              break;
            case 1310864:
              result = "MIPC_RES_PDN_EXT_CME_SEMANTIC_ERRORS_IN_PACKET_FILTERS_44";
              break;
            case 1310865:
              result = "MIPC_RES_PDN_EXT_CME_SYNTACTICAL_ERRORS_IN_PACKET_FILTERS_45";
              break;
            case 1310866:
              result = "MIPC_RES_PDN_EXT_CME_PDP_CONTEXT_WITHOUT_TFT_ALREADY_ACTIVATED_46";
              break;
            case 1310869:
              result = "MIPC_RES_PDN_EXT_CME_PDP_AUTHENTICATION_FAILURE_112";
              break;
            case 1310891:
              result = "MIPC_RES_PDN_EXT_CME_LAST_PDN_DISCONNECTION_NOT_ALLOWED_49";
              break;
            case 1310896:
              result = "MIPC_RES_PDN_EXT_CME_PROTOCOL_ERROR_UNSPECIFIED_111";
              break;
            case 1310897:
              result = "MIPC_RES_PDN_EXT_CME_OPERATOR_DETERMINED_BARRING_8";
              break;
            case 1310898:
              result = "MIPC_RES_PDN_EXT_CME_MAXIMUM_NUMBER_OF_EPS_BEARERS_REACHED_65";
              break;
            case 1310899:
              result = "MIPC_RES_PDN_EXT_CME_REQUESTED_APN_NOT_SUPPORTED_IN_CURRENT_RAT_AND_PLMN_COMBINATION_66";
              break;
            case 1310900:
              result = "MIPC_RES_PDN_EXT_CME_REQUEST_REJECTED_BEARER_CONTROL_MODE_VIOLATION_48";
              break;
            case 1310901:
              result = "MIPC_RES_PDN_EXT_CME_UNSUPPORTED_QCI_VALUE_59";
              break;
            case 1310920:
              result = "MIPC_RES_PDN_EXT_CME_ERROR_END";
              break;
            default:
              if (a1 != 0x100000)
              {
                return "UNKNOWN_ERROR";
              }

              result = "MIPC_RES_NW_EXT_BEGIN";
              break;
          }

          break;
      }

      return result;
    }

    if (a1 <= 2104)
    {
      result = "MIPC_RES_SUCCESS";
      switch("MIPC_RES_SUCCESS")
      {
        case 0uLL:
          return result;
        case 1uLL:
          result = "MIPC_RES_BUSY";
          break;
        case 2uLL:
          result = "MIPC_RES_FAILURE";
          break;
        case 3uLL:
          result = "MIPC_RES_SIM_NOT_INSERTED";
          break;
        case 4uLL:
          result = "MIPC_RES_BAD_SIM";
          break;
        case 5uLL:
          result = "MIPC_RES_PIN_REQUIRED";
          break;
        case 6uLL:
          result = "MIPC_RES_PIN_DISABLED";
          break;
        case 7uLL:
          result = "MIPC_RES_NOT_REGISTERED";
          break;
        case 8uLL:
          result = "MIPC_RES_PROVIDERS_NOT_FOUND";
          break;
        case 9uLL:
          result = "MIPC_RES_NO_DEVICE_SUPPORT";
          break;
        case 0xAuLL:
          result = "MIPC_RES_PROVIDER_NOT_VISIBLE";
          break;
        case 0xBuLL:
          result = "MIPC_RES_DATA_CLASS_NOT_AVAILABLE";
          break;
        case 0xCuLL:
          result = "MIPC_RES_PACKET_SERVICE_DETACHED";
          break;
        case 0xDuLL:
          result = "MIPC_RES_MAX_ACTIVATED_CONTEXTS";
          break;
        case 0xEuLL:
          result = "MIPC_RES_NOT_INITIALIZED";
          break;
        case 0xFuLL:
          result = "MIPC_RES_VOICE_CALL_IN_PROGRESS";
          break;
        case 0x10uLL:
          result = "MIPC_RES_CONTEXT_NOT_ACTIVATED";
          break;
        case 0x11uLL:
          result = "MIPC_RES_SERVICE_NOT_ACTIVATED";
          break;
        case 0x12uLL:
          result = "MIPC_RES_INVALID_ACCESS_STRING";
          break;
        case 0x13uLL:
          result = "MIPC_RES_INVALID_USERID_PASSWORD";
          break;
        case 0x14uLL:
          result = "MIPC_RES_RADIO_POWER_OFF";
          break;
        case 0x15uLL:
          result = "MIPC_RES_INVALID_PARAMETERS";
          break;
        case 0x16uLL:
          result = "MIPC_RES_READ_FAILURE";
          break;
        case 0x17uLL:
          result = "MIPC_RES_WRITE_FAILURE";
          break;
        case 0x18uLL:
          result = "MIPC_RES_Reserved_24";
          break;
        case 0x19uLL:
          result = "MIPC_RES_NO_PHONEBOOK";
          break;
        case 0x1AuLL:
          result = "MIPC_RES_PARAMETER_TOO_LONG";
          break;
        case 0x1BuLL:
          result = "MIPC_RES_STK_BUSY";
          break;
        case 0x1CuLL:
          result = "MIPC_RES_OPERATION_NOT_ALLOWED";
          break;
        case 0x1DuLL:
          result = "MIPC_RES_MEMORY_FAILURE";
          break;
        case 0x1EuLL:
          result = "MIPC_RES_INVALID_MEMORY_INDEX";
          break;
        case 0x1FuLL:
          result = "MIPC_RES_MEMORY_FULL";
          break;
        case 0x20uLL:
          result = "MIPC_RES_FILTER_NOT_SUPPORTED";
          break;
        case 0x21uLL:
          result = "MIPC_RES_DSS_INSTANCE_LIMIT";
          break;
        case 0x22uLL:
          result = "MIPC_RES_INVALID_DEVICE_SERVICE_OPERATION";
          break;
        case 0x23uLL:
          result = "MIPC_RES_AUTH_INCORRECT_AUTN";
          break;
        case 0x24uLL:
          result = "MIPC_RES_AUTH_SYNC_FAILURE";
          break;
        case 0x25uLL:
          result = "MIPC_RES_AUTH_AMF_NOT_SET";
          break;
        case 0x26uLL:
          result = "MIPC_RES_CONTEXT_NOT_SUPPORTED";
          break;
        case 0x27uLL:
          result = "MIPC_RES_MISSING_RESOURCE";
          break;
        case 0x28uLL:
          result = "MIPC_RES_NOT_FOUND";
          break;
        case 0x29uLL:
          result = "MIPC_RES_FDN_BLOCKED";
          break;
        case 0x2BuLL:
          result = "MIPC_RES_MISSING_ARGUMENT";
          break;
        case 0x2DuLL:
          result = "MIPC_RES_VERSION_UNSYNC";
          break;
        case 0x2EuLL:
          result = "MIPC_RES_OPERATION_IN_PROGRESS";
          break;
        case 0x2FuLL:
          result = "MIPC_RES_INVALID_FORMAT";
          break;
        case 0x30uLL:
          result = "MIPC_RES_MSG_NOT_ALLOWED";
          break;
        case 0x64uLL:
          result = "MIPC_RES_SMS_UNKNOWN_SMSC_ADDRESS";
          break;
        case 0x65uLL:
          result = "MIPC_RES_SMS_NETWORK_TIMEOUT";
          break;
        case 0x66uLL:
          result = "MIPC_RES_SMS_LANG_NOT_SUPPORTED";
          break;
        case 0x67uLL:
          result = "MIPC_RES_SMS_ENCODING_NOT_SUPPORTED";
          break;
        case 0x68uLL:
          result = "MIPC_RES_SMS_FORMAT_NOT_SUPPORTED";
          break;
        case 0x69uLL:
          result = "MIPC_RES_OPERATION_NOT_SUPPORTED";
          break;
        case 0x6AuLL:
          result = "MIPC_RES_ERROR_NOT_FOUND";
          break;
        case 0x6BuLL:
          result = "MIPC_RES_ERROR_UNKNOWN";
          break;
        case 0x6CuLL:
          result = "MIPC_RES_INFO_NOT_AVAILABLE";
          break;
        default:
          return "UNKNOWN_ERROR";
      }

      return result;
    }

    if (a1 <= 262142)
    {
      if (a1 <= 2107)
      {
        if (a1 == 2105)
        {
          return "MIPC_RES_ALARM_ID_NOT_SUPPORTED";
        }

        if (a1 == 2106)
        {
          return "MIPC_RES_THRESHOLD_OUT_OF_RANGE ";
        }
      }

      else
      {
        switch(a1)
        {
          case 2108:
            return "MIPC_RES_SENSOR_ID_NOT_SUPPORTED";
          case 2109:
            return "MIPC_RES_ACTUATOR_ID_NOT_SUPPORTED";
          case 2110:
            return "MIPC_RES_ACTUATOR_STATE_NOT_SUPPORTED";
        }
      }
    }

    else if (a1 >= 786432)
    {
      switch(a1)
      {
        case 0xC0000:
          return "MIPC_RES_CC_EXT_BEGIN";
        case 0xC0001:
          return "MIPC_RES_CC_CALL_FORCE_RELEASED_BEFORE";
        case 0xFFFFFLL:
          return "MIPC_RES_CC_EXT_END";
      }
    }

    else
    {
      switch(a1)
      {
        case 262143:
          return "MIPC_RES_COMMON_END";
        case 524288:
          return "MIPC_RES_CAT_EXT_BEGIN";
        case 786431:
          return "MIPC_RES_CAT_EXT_END";
      }
    }

    return "UNKNOWN_ERROR";
  }

  if (a1 > 0x200000)
  {
    if (a1 <= 3407875)
    {
      if (a1 > 2228222)
      {
        if (a1 > 3145726)
        {
          if (a1 >= 3407872)
          {
            if (a1 > 3407873)
            {
              if (a1 == 3407874)
              {
                return "MIPC_RES_PHB_EXT_PUK2_REQUIRED";
              }

              else
              {
                return "MIPC_RES_PHB_EXT_TEXT_STRING_TOO_LONG";
              }
            }

            else if (a1 == 3407872)
            {
              return "MIPC_RES_PHB_EXT_BEGIN";
            }

            else
            {
              return "MIPC_RES_PHB_EXT_PIN2_REQUIRED";
            }
          }

          switch(a1)
          {
            case 3145727:
              return "MIPC_RES_SYS_EXT_END";
            case 3145728:
              return "MIPC_RES_IMS_EXT_BEGIN";
            case 3407871:
              return "MIPC_RES_IMS_EXT_END";
          }
        }

        else if (a1 <= 2621438)
        {
          switch(a1)
          {
            case 2228223:
              return "MIPC_RES_SMS_EXT_AT_ERROR_END";
            case 2359295:
              return "MIPC_RES_SMS_EXT_END";
            case 2359296:
              return "MIPC_RES_SS_EXT_BEGIN";
          }
        }

        else if (a1 > 2883582)
        {
          if (a1 == 2883583)
          {
            return "MIPC_RES_SWITCH_EXT_END";
          }

          if (a1 == 2883584)
          {
            return "MIPC_RES_SYS_EXT_BEGIN";
          }
        }

        else
        {
          if (a1 == 2621439)
          {
            return "MIPC_RES_SS_EXT_END";
          }

          if (a1 == 2621440)
          {
            return "MIPC_RES_SWITCH_EXT_BEGIN";
          }
        }
      }

      else
      {
        if (a1 <= 2097159)
        {
          if (a1 <= 2097155)
          {
            if (a1 == 2097153)
            {
              return "MIPC_RES_SMS_EXT_CBM_CFG_WRONG_MSG_ID_RANGE_FORMAT";
            }

            else if (a1 == 2097154)
            {
              return "MIPC_RES_SMS_EXT_CBM_CFG_WRONG_MSG_ID_SINGLE_FORMAT";
            }

            else
            {
              return "MIPC_RES_SMS_EXT_CBM_CFG_WRONG_DCS_RANGE_FORMAT";
            }
          }

          else if (a1 > 2097157)
          {
            if (a1 == 2097158)
            {
              return "MIPC_RES_SMS_EXT_CBM_CFG_MSG_ID_LOGIC_ERROR";
            }

            else
            {
              return "MIPC_RES_SMS_EXT_CBM_CFG_DCS_LOGIC_ERROR";
            }
          }

          else if (a1 == 2097156)
          {
            return "MIPC_RES_SMS_EXT_CBM_CFG_WRONG_DCS_SINGLE_FORMAT";
          }

          else
          {
            return "MIPC_RES_SMS_EXT_CBM_CFG_TOO_MORE_RANGES_OR_SINGLES";
          }
        }

        if (a1 <= 2162913)
        {
          switch(a1)
          {
            case 2097160:
              return "MIPC_RES_SMS_EXT_NEED_SET_PREFER_STORAGE_AGAIN";
            case 2097161:
              return "MIPC_RES_SMS_EXT_C2K_ERROR";
            case 2162688:
              return "MIPC_RES_SMS_EXT_AT_ERROR_BEGIN";
          }
        }

        else if (a1 > 2165288)
        {
          if (a1 == 2165289)
          {
            return "MIPC_RES_SMS_EXT_MTK_FDN_CHECK_FAILURE";
          }

          if (a1 == 2168833)
          {
            return "MIPC_RES_SMS_EXT_MTK_REQ_RETRY";
          }
        }

        else
        {
          if (a1 == 2162914)
          {
            return "MIPC_RES_SMS_EXT_CM_SMS_CONNECTION_BROKEN";
          }

          if (a1 == 2162943)
          {
            return "MIPC_RES_SMS_EXT_ERROR_UNKNOWN";
          }
        }
      }

      return "UNKNOWN_ERROR";
    }

    switch(a1)
    {
      case 0xFFFFFFFELL:
        result = "MIPC_RES_AUTH_REQUIRED";
        break;
      case 0xFFFFFFFFLL:
        result = "MIPC_RES_TIMEOUT";
        break;
      case 0x100000000:
        result = "MIPC_INT_MIN_ERROR_VALUE";
        break;
      case 0x100000001:
        result = "MIPC_INT_ERR_FAILURE";
        break;
      case 0x100000002:
        result = "MIPC_INT_ERR_SERIALIZE_FAILURE";
        break;
      case 0x100000003:
        result = "MIPC_INT_ERR_DESERIALIZE_FAILURE";
        break;
      case 0x100000004:
        result = "MIPC_INT_ERR_INVALID_PARAM";
        break;
      case 0x100000005:
        result = "MIPC_INT_ERR_BUF_TOO_SMALL";
        break;
      case 0x100000006:
        result = "MIPC_INT_ERR_MSG_BUF_INVALID";
        break;
      case 0x100000007:
        result = "MIPC_INT_ERR_MSG_SIZE_GREATER_THAN_MAX";
        break;
      case 0x100000008:
        result = "MIPC_INT_ERR_MSG_ID_INVALID";
        break;
      case 0x100000009:
        result = "MIPC_INT_ERR_MSG_CLIENT_ID_INVALID";
        break;
      case 0x10000000ALL:
        result = "MIPC_INT_ERR_MSG_TRX_COUNTER_INVALID";
        break;
      case 0x10000000BLL:
        result = "MIPC_INT_ERR_MSG_TRX_ID_INVALID";
        break;
      case 0x10000000CLL:
        result = "MIPC_INT_ERR_MSG_SIM_ID_INVALID";
        break;
      case 0x10000000DLL:
        result = "MIPC_INT_ERR_MSG_TYPE_INVALID";
        break;
      case 0x10000000ELL:
        result = "MIPC_INT_ERR_TLV_NOT_FOUND";
        break;
      case 0x10000000FLL:
        result = "MIPC_INT_ERR_MANDATORY_TLV_MISSING";
        break;
      case 0x100000010:
        result = "MIPC_INT_ERR_TLV_SIZE_GREATER_THAN_MAX";
        break;
      case 0x100000011:
        result = "MIPC_INT_ERR_TLV_SIZE_LESS_THAN_FIXED";
        break;
      case 0x100000012:
        result = "MIPC_INT_ERR_TLV_SIZE_GREATER_THAN_FIXED";
        break;
      case 0x100000013:
        result = "MIPC_INT_ERR_TLV_ARRAY_2D_NOT_SUPPORTED";
        break;
      case 0x100000014:
        result = "MIPC_INT_ERR_RESULT_TLV_MISSING";
        break;
      case 0x100000015:
        result = "MIPC_INT_ERR_TIMEOUT";
        break;
      case 0x100000016:
        result = "MIPC_INT_ERR_IO_ERROR";
        break;
      case 0x100000017:
        result = "MIPC_INT_ERR_OPERATION_CANCELED";
        break;
      case 0x100000018:
        result = "MIPC_INT_ERR_SERVER_RESET";
        break;
      default:
        if (a1 == 3407876)
        {
          result = "MIPC_RES_PHB_EXT_DIAL_STRING_TOO_LONG";
        }

        else
        {
          if (a1 != 3473407)
          {
            return "UNKNOWN_ERROR";
          }

          result = "MIPC_RES_PHB_EXT_END";
        }

        break;
    }
  }

  else
  {
    if (a1 <= 1835006)
    {
      if (a1 > 1376518)
      {
        if (a1 <= 1376769)
        {
          if (a1 > 1376766)
          {
            if (a1 == 1376767)
            {
              return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_END";
            }

            if (a1 == 1376768)
            {
              return "MIPC_RES_PDN_EXT_LOCAL_FALLBACK_RES_START";
            }

            return "MIPC_RES_PDN_EXT_LOCAL_FALLBACK_RES_FAIL_ABORT";
          }

          if (a1 == 1376519)
          {
            return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_PROFILE_COUNT_ERROR";
          }

          if (a1 == 1376520)
          {
            return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_WRONG_APN_TYPE_OR_NO_APN";
          }
        }

        else if (a1 > 1376782)
        {
          switch(a1)
          {
            case 1376783:
              return "MIPC_RES_PDN_EXT_LOCAL_FALLBACK_RES_END";
            case 1572863:
              return "MIPC_RES_PDN_EXT_END";
            case 1572864:
              return "MIPC_RES_RF_EXT_BEGIN";
          }
        }

        else
        {
          switch(a1)
          {
            case 1376770:
              return "MIPC_RES_PDN_EXT_LOCAL_FALLBACK_RES_SUCC_ABORT";
            case 1376771:
              return "MIPC_RES_PDN_EXT_LOCAL_FALLBACK_RES_FAIL_CONT";
            case 1376772:
              return "MIPC_RES_PDN_EXT_LOCAL_FALLBACK_RES_SUCC_CONT";
          }
        }
      }

      else
      {
        if (a1 > 1376512)
        {
          if (a1 > 1376515)
          {
            if (a1 == 1376516)
            {
              return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_APN_PROFILE_IS_DISABLED";
            }

            else if (a1 == 1376517)
            {
              return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_NOT_FIND_CALL_INFO";
            }

            else
            {
              return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_REACH_MAX_USER";
            }
          }

          else if (a1 == 1376513)
          {
            return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_INVALID_PARA";
          }

          else if (a1 == 1376514)
          {
            return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_NOT_FIND_APN_TO_ACT";
          }

          else
          {
            return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_NO_APN_INFO_TO_ABORT";
          }
        }

        if (a1 <= 1376256)
        {
          if (a1 == 1376255)
          {
            return "MIPC_RES_PDN_EXT_NETWORK_ERROR_END";
          }

          else
          {
            return "MIPC_RES_PDN_EXT_LOCAL_MIPC_ERROR_BEGIN";
          }
        }

        switch(a1)
        {
          case 1376257:
            return "MIPC_RES_PDN_EXT_LOCAL_MIPC_ERROR_NO_ENOUGH_INFO";
          case 1376511:
            return "MIPC_RES_PDN_EXT_LOCAL_MIPC_ERROR_END";
          case 1376512:
            return "MIPC_RES_PDN_EXT_LOCAL_PARA_ERROR_BEGIN";
        }
      }

      return "UNKNOWN_ERROR";
    }

    switch(a1)
    {
      case 1835007:
        result = "MIPC_RES_RF_EXT_END";
        break;
      case 1835008:
        result = "MIPC_RES_SIM_EXT_BEGIN";
        break;
      case 1835009:
        result = "MIPC_RES_SIM_EXT_PUK1_REQUIRED";
        break;
      case 1835010:
        result = "MIPC_RES_SIM_EXT_PIN2_REQUIRED";
        break;
      case 1835011:
        result = "MIPC_RES_SIM_EXT_PUK2_REQUIRED";
        break;
      case 1835012:
        result = "MIPC_RES_SIM_EXT_SIM_FAILURE";
        break;
      case 1835013:
        result = "MIPC_RES_SIM_EXT_INCORRECT_PASS_WORD";
        break;
      case 1835014:
        result = "MIPC_RES_SIM_EXT_NW_PERSON_PIN_REQUIRED";
        break;
      case 1835015:
        result = "MIPC_RES_SIM_EXT_NW_PERSON_PUK_REQUIRED";
        break;
      case 1835016:
        result = "MIPC_RES_SIM_EXT_NW_SUB_PERSON_PIN_REQUIRED";
        break;
      case 1835017:
        result = "MIPC_RES_SIM_EXT_NW_SUB_PERSON_PUK_REQUIRED";
        break;
      case 1835018:
        result = "MIPC_RES_SIM_EXT_SP_PERSON_PIN_REQUIRED";
        break;
      case 1835019:
        result = "MIPC_RES_SIM_EXT_SP_PERSON_PUK_REQUIRED";
        break;
      case 1835020:
        result = "MIPC_RES_SIM_EXT_CORP_PERSON_PIN_REQUIRED";
        break;
      case 1835021:
        result = "MIPC_RES_SIM_EXT_CORP_PERSON_PUK_REQUIRED";
        break;
      case 1835022:
        result = "MIPC_RES_SIM_EXT_IMSI_PERSON_PIN_REQUIRED";
        break;
      case 1835023:
        result = "MIPC_RES_SIM_EXT_IMSI_PERSON_PUK_REQUIRED";
        break;
      case 1835024:
        result = "MIPC_RES_SIM_EXT_LINK_NS_SP_PERSON_PIN_REQUIRED";
        break;
      case 1835025:
        result = "MIPC_RES_SIM_EXT_LINK_NS_SP_PERSON_PUK_REQUIRED";
        break;
      case 1835026:
        result = "MIPC_RES_SIM_EXT_LINK_SIM_C_PERSON_PIN_REQUIRED";
        break;
      case 1835027:
        result = "MIPC_RES_SIM_EXT_LINK_SIM_C_PERSON_PUK_REQUIRED";
        break;
      case 1835028:
        result = "MIPC_RES_SIM_EXT_BT_SAP_UNDEFINED";
        break;
      case 1835029:
        result = "MIPC_RES_SIM_EXT_BT_SAP_NOT_ACCESSIBLE";
        break;
      case 1835030:
        result = "MIPC_RES_SIM_EXT_BT_SAP_CARD_REMOVED";
        break;
      case 1835031:
        result = "MIPC_RES_SIM_EXT_BT_SAP_CARD_ALREADY_POWERED_OFF";
        break;
      case 1835032:
        result = "MIPC_RES_SIM_EXT_BT_SAP_CARD_ALREADY_POWERED_ON";
        break;
      case 1835033:
        result = "MIPC_RES_SIM_EXT_TECHNICAL_PROBLEM";
        break;
      case 1835034:
        result = "MIPC_RES_SIM_EXT_VERIFYCATION_FAILED";
        break;
      case 1835035:
        result = "MIPC_RES_SIM_EXT_REBOOT_REQUIRED";
        break;
      case 1835036:
        result = "MIPC_RES_SIM_EXT_SIM_OFF";
        break;
      case 1835037:
        result = "MIPC_RES_SIM_EXT_EMPTY_EUICC";
        break;
      case 1835038:
        result = "MIPC_RES_SIM_EXT_SERVICE_NOT_SUPPORT";
        break;
      case 1835039:
        result = "MIPC_RES_SIM_EXT_APP_NOT_EXIST";
        break;
      case 1835040:
        result = "MIPC_RES_SIM_EXT_SIM_BUSY";
        break;
      default:
        if (a1 == 0x1FFFFF)
        {
          result = "MIPC_RES_SIM_EXT_END";
        }

        else
        {
          if (a1 != 0x200000)
          {
            return "UNKNOWN_ERROR";
          }

          result = "MIPC_RES_SMS_EXT_BEGIN";
        }

        break;
    }
  }

  return result;
}