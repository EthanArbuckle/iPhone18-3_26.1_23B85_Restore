double mipc::sms::Scbm_Req::Scbm_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1553;
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
  *a1 = &unk_2A1E637F8;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 1553;
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
  *a1 = &unk_2A1E637F8;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sms::Scbm_Req::~Scbm_Req(mipc::sms::Scbm_Req *this)
{
  *this = &unk_2A1E637F8;
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
  *this = &unk_2A1E637F8;
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
  *this = &unk_2A1E637F8;
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

void mipc::sms::Scbm_Req::serialize(mipc::sms::Scbm_Req *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 11))
  {
    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  *&v25 = operator new(v4);
  v26 = v25 + v4;
  bzero(v25, v4);
  *(&v25 + 1) = v25 + v4;
  v24 = v25;
  v23 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v18, this, &v24);
  v5 = v21;
  *&__p[1] = *v19;
  __p[3] = v20;
  __p[0] = v18;
  v23 = v21;
  if (v18)
  {
    *a2 = v18;
    *(a2 + 8) = *&__p[1];
    v6 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
LABEL_35:
    *(a2 + 48) = 1;
    goto LABEL_36;
  }

  if (*(this + 11))
  {
    *v24 = 256;
    v7 = v24++;
    v7[1] = 1;
    v8 = v24++;
    *(v8 + 2) = **(this + 11);
    v24 += 2;
  }

  v27 = 0;
  v28 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v27, "", 0, &v18);
  v9 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    __p[0] = v18;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  __p[0] = v18;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_11:
    operator delete(__p[1]);
  }

LABEL_12:
  *&__p[1] = *v19;
  __p[3] = v20;
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  v10 = v21;
  v21 = 0uLL;
  v23 = v10;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v11 = *(&v21 + 1);
  v12 = __p[0];
  if (!*(&v21 + 1) || atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(v19[0]);
    if (!v12)
    {
      goto LABEL_24;
    }

LABEL_34:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v23;
    goto LABEL_35;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v12)
  {
    goto LABEL_34;
  }

LABEL_24:
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
      goto LABEL_34;
    }
  }

  else if (v16)
  {
    goto LABEL_34;
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

LABEL_36:
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

void sub_297A56080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sms::Scbm_Req::getSize(mipc::sms::Scbm_Req *this)
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

uint64_t mipc::Error::operator=(uint64_t result, uint64_t a2)
{
  v3 = (a2 + 8);
  *result = *a2;
  if (*(result + 31) < 0)
  {
    v4 = result;
    operator delete(*(result + 8));
    result = v4;
  }

  v5 = *v3;
  *(result + 24) = *(v3 + 2);
  *(result + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v7 = *(result + 40);
  *(result + 32) = v6;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v8;
    }
  }

  return result;
}

void mipc::Error::~Error(mipc::Error *this)
{
  v1 = *(this + 5);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_6:
    operator delete(*(this + 1));
    return;
  }

  v2 = this;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  this = v2;
  if (v2[31] < 0)
  {
    goto LABEL_6;
  }
}

void mipc::Message::serializeTlv<unsigned char,false>(uint64_t a1@<X0>, _BYTE **a2@<X1>, __int16 a3@<W2>, _WORD **a4@<X3>, uint64_t a5@<X8>)
{
  if (*a2)
  {
    **a4 = a3;
    v5 = (*a4)++;
    v5[1] = 1;
    v6 = (*a4)++;
    *(v6 + 2) = **a2;
    *a4 += 2;
  }

  v8 = 0;
  v9 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a1, 0, a3, &v8, "", 0, a5);
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

mipc::sms::Scbm_Cnf *mipc::sms::Scbm_Cnf::Scbm_Cnf(mipc::sms::Scbm_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1554, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E63840;
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

void sub_297A564CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sms::Scbm_Cnf::deserialize@<D0>(mipc::sms::Scbm_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sms::Scbm_Cnf::Scbm_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1554, &v14, a3, 2);
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
  *a1 = &unk_2A1E642C0;
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
  *a1 = &unk_2A1E63840;
  return a1;
}

void sub_297A5679C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Scbm_Cnf::~Scbm_Cnf(mipc::sms::Scbm_Cnf *this)
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

uint64_t mipc::sms::Scbm_Cnf::getSize(mipc::sms::Scbm_Cnf *this)
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

double mipc::sms::Cfg_V2_Req::Cfg_V2_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1557;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E63888;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 1557;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E63888;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sms::Cfg_V2_Req::~Cfg_V2_Req(mipc::sms::Cfg_V2_Req *this)
{
  *this = &unk_2A1E63888;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    operator delete(v4);
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
    operator delete(v6);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 11);
  *(this + 11) = 0;
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      v9[1] = v10;
      operator delete(v10);
    }

    operator delete(v9);
  }

  *this = &unk_2A1E85968;
  v11 = *(this + 9);
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (*(this + 63) < 0)
  {
LABEL_24:
    operator delete(*(this + 5));
  }

LABEL_25:
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
  mipc::sms::Cfg_V2_Req::~Cfg_V2_Req(this);

  operator delete(v1);
}

void mipc::sms::Cfg_V2_Req::serialize(int64x2_t *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this[5].i64[1];
  if (!v4)
  {
    v7 = 16;
    v8 = this + 7;
    v9 = this[7];
    v10 = this[6];
    v12 = &this[9];
    v11 = this[9].i64[0];
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v5 = v4[1] - *v4;
  v6 = __CFADD__(v5 - 65532, 0x10000);
  v7 = ((v5 + 11) & 0xFFF8) + 16;
  if (!v6)
  {
    v7 = 16;
  }

  v8 = this + 7;
  v9 = this[7];
  v10 = this[6];
  v12 = &this[9];
  v11 = this[9].i64[0];
  if (v11)
  {
LABEL_5:
    v13 = *(v11 + 23);
    v14 = *(v11 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v6 = __CFADD__(v14 - 65531, 0x10000);
    v11 = (v14 + 12) & 0xFFF8;
    if (!v6)
    {
      v11 = 0;
    }
  }

LABEL_9:
  v15 = v8 + 1;
  v16 = &v8[1].i64[1];
  v17 = vdupq_n_s64(8uLL);
  v18 = vaddvq_s64(vaddq_s64(vbicq_s8(v17, vceqzq_s64(v10)), vbicq_s8(v17, vceqzq_s64(v9)))) + 8 * (v8[1].i64[0] != 0) + v11 + 8 * (v8[1].i64[1] != 0) + v7;
  v71[0] = operator new(v18);
  v72 = v71[0] + v18;
  bzero(v71[0], v18);
  v71[1] = v71[0] + v18;
  v70 = v71[0];
  v69 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(this->i64[0] + 24))(&v64, this, &v70);
  __p[0] = v64;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v65;
  __p[3] = v66;
  HIBYTE(v66) = 0;
  LOBYTE(v65) = 0;
  v19 = v67;
  v67 = 0uLL;
  v20 = *(&v69 + 1);
  v69 = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    v21 = *(&v67 + 1);
    v22 = __p[0];
    if (!*(&v67 + 1))
    {
LABEL_15:
      if ((SHIBYTE(v66) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_23:
      operator delete(v65);
      if (v22)
      {
        goto LABEL_107;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v21 = *(&v67 + 1);
    v22 = __p[0];
    if (!*(&v67 + 1))
    {
      goto LABEL_15;
    }
  }

  if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_15;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (SHIBYTE(v66) < 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v22)
  {
    goto LABEL_107;
  }

LABEL_24:
  v23 = this[5].i64[1];
  if (!v23)
  {
LABEL_30:
    v30 = 0;
    v75 = 0;
    v76 = 0;
    goto LABEL_31;
  }

  v24 = v23[2] - *v23;
  *v70++ = 256;
  *v70 = v24;
  v25 = ++v70;
  v26 = this[5].i64[1];
  v27 = *v26;
  v28 = *(v26 + 8);
  if (*v26 == v28)
  {
    v30 = 0x100000002;
    v75 = 0;
    v76 = 0;
    goto LABEL_31;
  }

  v29 = v28 - v27;
  if ((v28 - v27) <= 0xB)
  {
    memcpy(v25, v27, v28 - v27);
    v31 = ((*(v26 + 8) - *v26 + 11) & 0xFFF8u) - (*(v26 + 8) - *v26) + 65532;
    v70 = (v70 + v29 + (((*(v26 + 8) - *v26 + 11) & 0xFFF8) - (*(v26 + 8) - *v26) - 4));
    goto LABEL_30;
  }

  v73 = *(v26 + 8);
  v74 = v27;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(&v74, &v73, &v75);
  v30 = 0x100000010;
LABEL_31:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v30, 0x100u, &v75, "", 0, &v64);
  v32 = v76;
  if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    __p[0] = v64;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  __p[0] = v64;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_34:
    operator delete(__p[1]);
  }

LABEL_35:
  *&__p[1] = v65;
  __p[3] = v66;
  HIBYTE(v66) = 0;
  LOBYTE(v65) = 0;
  v33 = v67;
  v67 = 0uLL;
  v34 = *(&v69 + 1);
  v69 = v33;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    v35 = *(&v67 + 1);
    v36 = __p[0];
    if (!*(&v67 + 1))
    {
LABEL_39:
      if ((SHIBYTE(v66) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

LABEL_47:
      operator delete(v65);
      if (v36)
      {
        goto LABEL_107;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v35 = *(&v67 + 1);
    v36 = __p[0];
    if (!*(&v67 + 1))
    {
      goto LABEL_39;
    }
  }

  if (atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_39;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if (SHIBYTE(v66) < 0)
  {
    goto LABEL_47;
  }

LABEL_40:
  if (v36)
  {
    goto LABEL_107;
  }

LABEL_48:
  if (this[6].i64[0])
  {
    *v70 = 257;
    v37 = v70++;
    v37[1] = 1;
    v38 = v70++;
    *(v38 + 2) = *this[6].i64[0];
    v70 += 2;
  }

  v75 = 0;
  v76 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v75, "", 0, &v64);
  v39 = v76;
  if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  __p[0] = v64;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v65;
  __p[3] = v66;
  HIBYTE(v66) = 0;
  LOBYTE(v65) = 0;
  v40 = v67;
  v67 = 0uLL;
  v41 = *(&v69 + 1);
  v69 = v40;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *(&v67 + 1);
  v43 = __p[0];
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
    if (!v43)
    {
      goto LABEL_65;
    }

LABEL_107:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v69;
    v69 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_108;
  }

  if (v43)
  {
    goto LABEL_107;
  }

LABEL_65:
  if (this[6].i64[1])
  {
    *v70 = 258;
    v44 = v70++;
    v44[1] = 1;
    v45 = v70++;
    *(v45 + 2) = *this[6].i64[1];
    v70 += 2;
  }

  v75 = 0;
  v76 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v75, "", 0, &v64);
  v46 = v76;
  if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  __p[0] = v64;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v65;
  __p[3] = v66;
  HIBYTE(v66) = 0;
  LOBYTE(v65) = 0;
  v47 = v67;
  v67 = 0uLL;
  v48 = *(&v69 + 1);
  v69 = v47;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v48->__on_zero_shared)(v48);
    std::__shared_weak_count::__release_weak(v48);
  }

  v49 = *(&v67 + 1);
  v50 = __p[0];
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (v50)
  {
    goto LABEL_107;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v8, 259, &v70, &v64);
  __p[0] = v64;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v65;
  __p[3] = v66;
  HIBYTE(v66) = 0;
  LOBYTE(v65) = 0;
  v51 = v67;
  v67 = 0uLL;
  v52 = *(&v69 + 1);
  v69 = v51;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
  }

  v53 = *(&v67 + 1);
  v54 = __p[0];
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v53->__on_zero_shared)(v53);
    std::__shared_weak_count::__release_weak(v53);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (v54)
  {
    goto LABEL_107;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, &v8->i64[1], 260, &v70, &v64);
  __p[0] = v64;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v65;
  __p[3] = v66;
  HIBYTE(v66) = 0;
  LOBYTE(v65) = 0;
  v55 = v67;
  v67 = 0uLL;
  v56 = *(&v69 + 1);
  v69 = v55;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  v57 = *(&v67 + 1);
  v58 = __p[0];
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (v58)
  {
    goto LABEL_107;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v15, 261, &v70, &v64);
  v59 = *mipc::Error::operator=(__p, &v64);
  mipc::Error::~Error(&v64);
  if (v59)
  {
    goto LABEL_107;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v16, 262, &v70, &v64);
  v60 = *mipc::Error::operator=(__p, &v64);
  mipc::Error::~Error(&v64);
  if (v60)
  {
    goto LABEL_107;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<22ul,false>,false>(&v64, this, v12, &v70);
  v61 = *mipc::Error::operator=(__p, &v64);
  mipc::Error::~Error(&v64);
  if (v61)
  {
    goto LABEL_107;
  }

  (*(this->i64[0] + 32))(&v64, this, v71);
  v62 = *mipc::Error::operator=(__p, &v64);
  mipc::Error::~Error(&v64);
  if (v62)
  {
    goto LABEL_107;
  }

  *a2 = *v71;
  *(a2 + 16) = v72;
  v71[1] = 0;
  v72 = 0;
  v71[0] = 0;
  *(a2 + 48) = 0;
  v63 = *(&v69 + 1);
  if (*(&v69 + 1) && !atomic_fetch_add((*(&v69 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_108:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v71[0])
  {
    v71[1] = v71[0];
    operator delete(v71[0]);
  }
}

void sub_297A57970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::sms::Cfg_V2_Req::getSize(int64x2_t *this)
{
  v1 = this[5].i64[1];
  if (!v1)
  {
    v4 = 16;
    v6 = this[6];
    v5 = this[7];
    v8 = this[8].i64[0];
    v7 = this[8].i64[1];
    v9 = this[9].i64[0];
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v2 = v1[1] - *v1;
  v3 = __CFADD__(v2 - 65532, 0x10000);
  v4 = ((v2 + 11) & 0xFFF8) + 16;
  if (!v3)
  {
    v4 = 16;
  }

  v6 = this[6];
  v5 = this[7];
  v8 = this[8].i64[0];
  v7 = this[8].i64[1];
  v9 = this[9].i64[0];
  if (v9)
  {
LABEL_5:
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v3 = __CFADD__(v11 - 65531, 0x10000);
    v9 = (v11 + 12) & 0xFFF8;
    if (!v3)
    {
      v9 = 0;
    }
  }

LABEL_9:
  v12 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v12, vceqzq_s64(v6)), vbicq_s8(v12, vceqzq_s64(v5)))) + 8 * (v8 != 0) + v9 + 8 * (v7 != 0) + v4;
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<22ul,false>,false>(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
{
  v6 = *a3;
  if (*a3)
  {
    v7 = v6[23];
    v8 = *(v6 + 4);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    **a4 = 265;
    v9 = (*a4 + 2);
    *a4 = v9;
    *v9 = v8 + 1;
    v10 = (*a4 + 2);
    *a4 = v10;
    v11 = *a3;
    v12 = (*a3)[23];
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(v11 + 1);
      if (v12 <= 0x15)
      {
        v13 = a4;
        v14 = *v11;
        goto LABEL_11;
      }

      v11 = *v11;
    }

    else if (v12 <= 0x15)
    {
      v13 = a4;
      v14 = *a3;
LABEL_11:
      memcpy(v10, v14, v12);
      v17 = (*v13 + v12);
      *v13 = v17;
      *v17 = 0;
      v16 = *v13 + 1;
      *v13 = v16;
      LOWORD(v17) = v11[23];
      if (v17 < 0)
      {
        v17 = *(v11 + 1);
      }

      *v13 = v16 + (((v17 + 12) & 0xFFF8) - v17 - 5);
      goto LABEL_14;
    }

    v21 = &v11[v12];
    v22 = v11;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v22, &v21, &v19);
    v15 = 0x100000010;
    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
  v19 = 0;
  v20 = 0;
LABEL_15:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v15, 0x109u, &v19, "", 0, a1);
  v18 = v20;
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_297A57C5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::sms::Cfg_V2_Cnf *mipc::sms::Cfg_V2_Cnf::Cfg_V2_Cnf(mipc::sms::Cfg_V2_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1558, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E638D0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 80) = 1;
  mipc::sms::Cfg_V2_Cnf::deserialize(this, &v7);
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

void sub_297A57DB8(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 16);
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

      goto LABEL_8;
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

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v6);
  v7 = *(v1 + 12);
  *(v1 + 12) = 0;
  if (!v7)
  {
LABEL_5:
    mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v2);
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v7);
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v2);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sms::Cfg_V2_Cnf::deserialize(mipc::sms::Cfg_V2_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(__p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = *&__p[8];
  *(a2 + 24) = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v4 = v53;
  v53 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v53 + 1);
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((__p[31] & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((__p[31] & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*&__p[8]);
  if (v6)
  {
    return;
  }

LABEL_13:
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v8;
  v54 = v8;
  *__p = v8;
  *&__p[16] = v8;
  mipc::Message::findTLV(this, 0x100u, __p);
  *&v51[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v51 = v9;
  *v50 = v9;
  v49 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v50, *&__p[8], *&__p[16]);
  }

  else
  {
    *v50 = *&__p[8];
    *v51 = *&__p[24];
  }

  *&v51[8] = v53;
  if (*(&v53 + 1))
  {
    atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v49;
  if (v49 && v49 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v49, &v43);
  }

  else
  {
    v11 = v54;
    v12 = *(&v54 + 1);
    v13 = *(this + 11);
    *(this + 11) = 0;
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v13[1] = v14;
        operator delete(v14);
      }

      operator delete(v13);
    }

    if (v10)
    {
      if (v10 == 0x10000000ELL)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10;
      }
    }

    else
    {
      v40 = operator new(0x18uLL);
      *v40 = 0;
      v40[1] = 0;
      v40[2] = 0;
      v41 = *(this + 11);
      *(this + 11) = v40;
      if (v41)
      {
        v42 = *v41;
        if (*v41)
        {
          v41[1] = v42;
          operator delete(v42);
        }

        operator delete(v41);
        v40 = *(this + 11);
      }

      v15 = 0x100000003;
      if (v11)
      {
        if (v11 <= 0xB)
        {
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v40, v12, &v12[v11], v11);
          v15 = 0;
        }

        else
        {
          v15 = 0x100000010;
        }
      }
    }

    v16 = *(this + 3);
    v47 = *(this + 2);
    v48 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v15, 0x100u, &v47, "", 0, &v43);
    v17 = v48;
    if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  v18 = *&v51[16];
  if (*&v51[16] && !atomic_fetch_add((*&v51[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if ((v51[7] & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if ((v51[7] & 0x80000000) != 0)
  {
LABEL_37:
    operator delete(v50[0]);
  }

LABEL_38:
  v19 = *(&v53 + 1);
  if (!*(&v53 + 1) || atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((__p[31] & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_53:
    operator delete(*&__p[8]);
    *a2 = v43;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_54:
    operator delete(*(a2 + 8));
    goto LABEL_42;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if ((__p[31] & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

LABEL_41:
  *a2 = v43;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_54;
  }

LABEL_42:
  *(a2 + 8) = v44;
  *(a2 + 24) = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v20 = v46;
  v46 = 0uLL;
  v21 = *(a2 + 40);
  *(a2 + 32) = v20;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *a2;
  v23 = *(&v46 + 1);
  if (!*(&v46 + 1) || atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_56:
    operator delete(v44);
    if (v22)
    {
      return;
    }

    goto LABEL_57;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_56;
  }

LABEL_48:
  if (v22)
  {
    return;
  }

LABEL_57:
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = *&__p[8];
  *(a2 + 24) = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v24 = v53;
  v53 = 0uLL;
  v25 = *(a2 + 40);
  *(a2 + 32) = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *a2;
  v27 = *(&v53 + 1);
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v26)
  {
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 13, 0x102u, __p);
    *a2 = *__p;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = *&__p[8];
    *(a2 + 24) = *&__p[24];
    __p[31] = 0;
    __p[8] = 0;
    v28 = v53;
    v53 = 0uLL;
    v29 = *(a2 + 40);
    *(a2 + 32) = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = *a2;
    v31 = *(&v53 + 1);
    if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (!v30)
    {
      mipc::Message::deserializeTlv<unsigned char,false>(this, this + 14, 0x103u, __p);
      *a2 = *__p;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = *&__p[8];
      *(a2 + 24) = *&__p[24];
      __p[31] = 0;
      __p[8] = 0;
      v32 = v53;
      v53 = 0uLL;
      v33 = *(a2 + 40);
      *(a2 + 32) = v32;
      if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }

      v34 = *a2;
      v35 = *(&v53 + 1);
      if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v35->__on_zero_shared)(v35);
        std::__shared_weak_count::__release_weak(v35);
      }

      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }

      if (!v34)
      {
        mipc::Message::deserializeTlv<unsigned char,false>(this, this + 15, 0x104u, __p);
        *a2 = *__p;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = *&__p[24];
        __p[31] = 0;
        __p[8] = 0;
        v36 = v53;
        v53 = 0uLL;
        v37 = *(a2 + 40);
        *(a2 + 32) = v36;
        if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v38 = *a2;
        v39 = *(&v53 + 1);
        if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v39->__on_zero_shared)(v39);
          std::__shared_weak_count::__release_weak(v39);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        if (!v38)
        {
          mipc::Message::deserializeTlv<mipc::mipc_string_t<22ul,false>,false>(__p, this, this + 16);
          mipc::Error::operator=(a2, __p);
          mipc::Error::~Error(__p);
        }
      }
    }
  }
}

void sub_297A587FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

uint64_t mipc::sms::Cfg_V2_Cnf::Cfg_V2_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1558, &v14, a3, 2);
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
  *a1 = &unk_2A1E64308;
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
  *a1 = &unk_2A1E638D0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297A58A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Cfg_V2_Cnf::~Cfg_V2_Cnf(mipc::sms::Cfg_V2_Cnf *this)
{
  *this = &unk_2A1E638D0;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      v7[1] = v8;
      operator delete(v8);
    }

    operator delete(v7);
  }

  *this = &unk_2A1E85968;
  v9 = *(this + 9);
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(this + 63) < 0)
  {
LABEL_20:
    operator delete(*(this + 5));
  }

LABEL_21:
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
  mipc::sms::Cfg_V2_Cnf::~Cfg_V2_Cnf(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<unsigned char,false>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
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
      v14 = operator new(1uLL);
      *v14 = 0;
      v15 = *a2;
      *a2 = v14;
      if (v15)
      {
        operator delete(v15);
        v14 = *a2;
      }

      v10 = 0x100000011;
      if (v11 <= 1)
      {
        if (v11)
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

void sub_297A58F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A58F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297A58F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<22ul,false>,false>(void *a1, std::__shared_weak_count **this, void ***a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x107u, v23);
  *&v22[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v22 = v7;
  *__p = v7;
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

  v8 = v20;
  if (v20 && v20 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v20, a1);
    goto LABEL_30;
  }

  v9 = v25;
  v10 = *(&v25 + 1);
  v11 = *a3;
  *a3 = 0;
  if (v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
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

  v12 = operator new(0x18uLL);
  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0;
  v13 = *a3;
  *a3 = v12;
  if (v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    operator delete(v13);
    v12 = *a3;
  }

  v8 = 0x100000003;
  if (!v9)
  {
    goto LABEL_25;
  }

  if (v9 <= 0x16)
  {
    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v12, v10, (v10 + v9 - 1), v9 - 1);
LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

  v8 = 0x100000010;
LABEL_25:
  v14 = this[3];
  v18 = this[2];
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x107u, &v18, "", 0, a1);
  v15 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

LABEL_30:
  v16 = *&v22[16];
  if (*&v22[16] && !atomic_fetch_add((*&v22[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    if ((v22[7] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ((v22[7] & 0x80000000) != 0)
  {
LABEL_33:
    operator delete(__p[0]);
  }

LABEL_34:
  v17 = *(&v24 + 1);
  if (!*(&v24 + 1) || atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v23[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if ((v23[31] & 0x80000000) != 0)
  {
LABEL_37:
    operator delete(*&v23[8]);
  }
}

void sub_297A5927C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A59290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297A592AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sms::Cfg_V2_Cnf::getSize(int64x2_t *this)
{
  v1 = this[5].i64[1];
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
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = __CFADD__(v6 - 65531, 0x10000);
    v4 = (v6 + 12) & 0xFFF8;
    if (!v3)
    {
      v4 = 0;
    }
  }

  v7 = 24;
  if (HIDWORD(this[2].i64[0]))
  {
    v7 = 32;
  }

  v8 = vdupq_n_s64(8uLL);
  return v1 + v4 + vaddvq_s64(vaddq_s64(vbicq_s8(v8, vceqzq_s64(this[6])), vbicq_s8(v8, vceqzq_s64(this[7])))) + v7;
}

double mipc::sms::Send_V2_Req::Send_V2_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1559;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E63918;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 1559;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E63918;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sms::Send_V2_Req::~Send_V2_Req(mipc::sms::Send_V2_Req *this)
{
  *this = &unk_2A1E63918;
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
  *this = &unk_2A1E63918;
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
  *this = &unk_2A1E63918;
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

void mipc::sms::Send_V2_Req::serialize(mipc::sms::Send_V2_Req *this@<X0>, uint64_t a2@<X8>)
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

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<256ul,false>,true>(this, v5, 0x101u, &v24, &v18);
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

void sub_297A59C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sms::Send_V2_Req::getSize(mipc::sms::Send_V2_Req *this)
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

void mipc::Message::serializeTlv<mipc::mipc_byte_array_t<256ul,false>,true>(uint64_t a1@<X0>, char ***a2@<X1>, unsigned int a3@<W2>, _WORD **a4@<X3>, uint64_t a5@<X8>)
{
  if (*a2)
  {
    v5 = *(*a2 + 2) - **a2;
    **a4 = a3;
    v6 = *a4 + 1;
    *a4 = v6;
    *v6 = v5;
    v7 = *a4 + 1;
    *a4 = v7;
    v8 = *a2;
    v9 = **a2;
    v10 = v8[1];
    if (v9 == v10)
    {
      v15 = 0x100000002;
      v19 = 0;
      v20 = 0;
      goto LABEL_10;
    }

    v11 = a5;
    v12 = a1;
    v13 = a3;
    v14 = v10 - v9;
    if ((v10 - v9) > 0x100)
    {
      v21 = v8[1];
      v22 = v9;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(&v22, &v21, &v19);
      v15 = 0x100000010;
      a3 = v13;
      a1 = v12;
      a5 = v11;
      goto LABEL_10;
    }

    memcpy(v7, v9, v10 - v9);
    v17 = ((*(v8 + 4) - *v8 + 11) & 0xFFF8u) - (*(v8 + 2) - *v8) + 65532;
    *a4 = (*a4 + v14 + (((*(v8 + 4) - *v8 + 11) & 0xFFF8) - (*(v8 + 4) - *v8) - 4));
    a3 = v13;
    a1 = v12;
    a5 = v11;
  }

  else if (!*(a1 + 32))
  {
    v19 = 0;
    v20 = 0;
    v15 = 0x10000000FLL;
    goto LABEL_10;
  }

  v15 = 0;
  v19 = 0;
  v20 = 0;
LABEL_10:
  mipc::Message::handle<(mipc::Error::Type)1>(a1, v15, a3, &v19, "", 0, a5);
  v18 = v20;
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_297A59E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::sms::Send_V2_Cnf *mipc::sms::Send_V2_Cnf::Send_V2_Cnf(mipc::sms::Send_V2_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1560, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E63960;
  *(this + 11) = 0;
  mipc::sms::Send_V2_Cnf::deserialize(this, &v7);
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

void sub_297A59F70(_Unwind_Exception *a1)
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

void mipc::sms::Send_V2_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sms::Send_V2_Cnf::Send_V2_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1560, &v14, a3, 2);
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
  *a1 = &unk_2A1E64350;
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
  *a1 = &unk_2A1E63960;
  a1[11] = 0;
  return a1;
}

void sub_297A5A36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Send_V2_Cnf::~Send_V2_Cnf(mipc::sms::Send_V2_Cnf *this)
{
  *this = &unk_2A1E63960;
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
  *this = &unk_2A1E63960;
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
  *this = &unk_2A1E63960;
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

void mipc::Message::deserializeTlv<unsigned short,true>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v8;
  v28 = v8;
  *v26 = v8;
  *&v26[16] = v8;
  mipc::Message::findTLV(a1, a3, v26);
  *&v25[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v25 = v9;
  *__p = v9;
  v23 = *v26;
  if ((v26[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v26[8], *&v26[16]);
  }

  else
  {
    *__p = *&v26[8];
    *v25 = *&v26[24];
  }

  *&v25[8] = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v23;
  if (v23 && v23 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(a1, &v23, a4);
    goto LABEL_30;
  }

  v11 = v28;
  v12 = *(&v28 + 1);
  v13 = *(a1 + 4);
  v14 = *a2;
  *a2 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  if (v10)
  {
    if (v10 == 0x10000000ELL)
    {
      if (v13)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0x10000000FLL;
      }

      v15 = *(a1 + 3);
      v21 = *(a1 + 2);
      v22 = v15;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v16 = operator new(2uLL);
    *v16 = 0;
    v17 = *a2;
    *a2 = v16;
    if (v17)
    {
      operator delete(v17);
      v16 = *a2;
    }

    if (v11 > 2)
    {
      v10 = 0x100000012;
      v15 = *(a1 + 3);
      v21 = *(a1 + 2);
      v22 = v15;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v11 != 2)
    {
      v10 = 0x100000011;
      v15 = *(a1 + 3);
      v21 = *(a1 + 2);
      v22 = v15;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v10 = 0;
    *v16 = *v12;
  }

  v15 = *(a1 + 3);
  v21 = *(a1 + 2);
  v22 = v15;
  if (v15)
  {
LABEL_26:
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_27:
  mipc::Message::handle<(mipc::Error::Type)2>(a1, v10, a3, &v21, "", 0, a4);
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_30:
  v19 = *&v25[16];
  if (*&v25[16] && !atomic_fetch_add((*&v25[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if ((v25[7] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ((v25[7] & 0x80000000) != 0)
  {
LABEL_33:
    operator delete(__p[0]);
  }

LABEL_34:
  v20 = *(&v27 + 1);
  if (!*(&v27 + 1) || atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v26[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if ((v26[31] & 0x80000000) != 0)
  {
LABEL_37:
    operator delete(*&v26[8]);
  }
}

void sub_297A5AA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A5AA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297A5AA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sms::Send_V2_Cnf::getSize(mipc::sms::Send_V2_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sms::Read_V2_Req::Read_V2_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1561;
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
  *a1 = &unk_2A1E639A8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

{
  *(a1 + 8) = 1561;
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
  *a1 = &unk_2A1E639A8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void mipc::sms::Read_V2_Req::~Read_V2_Req(mipc::sms::Read_V2_Req *this)
{
  *this = &unk_2A1E639A8;
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
  *this = &unk_2A1E639A8;
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
  *this = &unk_2A1E639A8;
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

void mipc::sms::Read_V2_Req::serialize(mipc::sms::Read_V2_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 104)))));
  *&v45 = operator new(v4);
  v46 = v45 + v4;
  bzero(v45, v4);
  *(&v45 + 1) = v45 + v4;
  v44 = v45;
  v43 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v38, this, &v44);
  v5 = v41;
  *&__p[1] = *v39;
  __p[3] = v40;
  __p[0] = v38;
  v43 = v41;
  if (v38)
  {
    *a2 = v38;
    *(a2 + 8) = *&__p[1];
    v6 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
LABEL_79:
    *(a2 + 48) = 1;
    goto LABEL_80;
  }

  if (*(this + 11))
  {
    *v44 = 257;
    v7 = v44++;
    v7[1] = 1;
    v8 = v44++;
    *(v8 + 2) = **(this + 11);
    v44 += 2;
  }

  v47 = 0;
  v48 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v47, "", 0, &v38);
  v9 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    __p[0] = v38;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __p[0] = v38;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_8:
    operator delete(__p[1]);
  }

LABEL_9:
  *&__p[1] = *v39;
  __p[3] = v40;
  HIBYTE(v40) = 0;
  LOBYTE(v39[0]) = 0;
  v10 = v41;
  v41 = 0uLL;
  v11 = *(&v43 + 1);
  v43 = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(&v41 + 1);
  v13 = __p[0];
  if (!*(&v41 + 1) || atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    operator delete(v39[0]);
    if (v13)
    {
      goto LABEL_78;
    }

    goto LABEL_21;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v13)
  {
    goto LABEL_78;
  }

LABEL_21:
  if (*(this + 12))
  {
    *v44 = 258;
    v14 = v44++;
    v14[1] = 1;
    v15 = v44++;
    *(v15 + 2) = **(this + 12);
    v44 += 2;
  }

  else if (!*(this + 4))
  {
    v16 = 0x10000000FLL;
    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:
  v47 = 0;
  v48 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v16, 0x102u, &v47, "", 0, &v38);
  v17 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  __p[0] = v38;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v39;
  __p[3] = v40;
  HIBYTE(v40) = 0;
  LOBYTE(v39[0]) = 0;
  v18 = v41;
  v41 = 0uLL;
  v19 = *(&v43 + 1);
  v43 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(&v41 + 1);
  v21 = __p[0];
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
    if (!v21)
    {
      goto LABEL_40;
    }

LABEL_78:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v43;
    goto LABEL_79;
  }

  if (v21)
  {
    goto LABEL_78;
  }

LABEL_40:
  if (*(this + 13))
  {
    *v44 = 259;
    v22 = v44++;
    v22[1] = 2;
    v23 = v44++;
    v23[1] = **(this + 13);
    v44 += 2;
  }

  v47 = 0;
  v48 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x103u, &v47, "", 0, &v38);
  v24 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  __p[0] = v38;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v39;
  __p[3] = v40;
  HIBYTE(v40) = 0;
  LOBYTE(v39[0]) = 0;
  v25 = v41;
  v41 = 0uLL;
  v26 = *(&v43 + 1);
  v43 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v41 + 1);
  v28 = __p[0];
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (v28)
  {
    goto LABEL_78;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 260, &v44, &v38);
  __p[0] = v38;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v39;
  __p[3] = v40;
  HIBYTE(v40) = 0;
  LOBYTE(v39[0]) = 0;
  v29 = v41;
  v41 = 0uLL;
  v30 = *(&v43 + 1);
  v43 = v29;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *(&v41 + 1);
  v32 = __p[0];
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (v32)
  {
    goto LABEL_78;
  }

  (*(*this + 32))(&v38, this, &v45);
  __p[0] = v38;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v39;
  __p[3] = v40;
  HIBYTE(v40) = 0;
  LOBYTE(v39[0]) = 0;
  v33 = v41;
  v41 = 0uLL;
  v34 = *(&v43 + 1);
  v43 = v33;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *(&v41 + 1);
  v36 = __p[0];
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (v36)
  {
    goto LABEL_78;
  }

  *a2 = v45;
  *(a2 + 16) = v46;
  v46 = 0;
  v45 = 0uLL;
  *(a2 + 48) = 0;
  v37 = *(&v43 + 1);
  if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_80:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v45)
  {
    *(&v45 + 1) = v45;
    operator delete(v45);
  }
}

void sub_297A5B89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void mipc::Message::serializeTlv<unsigned char,true>(uint64_t a1@<X0>, _BYTE **a2@<X1>, __int16 a3@<W2>, _WORD **a4@<X3>, uint64_t a5@<X8>)
{
  if (*a2)
  {
    **a4 = a3;
    v5 = (*a4)++;
    v5[1] = 1;
    v6 = (*a4)++;
    *(v6 + 2) = **a2;
    *a4 += 2;
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  if (*(a1 + 32))
  {
    goto LABEL_4;
  }

  v7 = 0x10000000FLL;
LABEL_5:
  v9 = 0;
  v10 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a1, v7, a3, &v9, "", 0, a5);
  v8 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void mipc::Message::serializeTlv<unsigned short,false>(uint64_t a1@<X0>, _WORD **a2@<X1>, __int16 a3@<W2>, _WORD **a4@<X3>, uint64_t a5@<X8>)
{
  if (*a2)
  {
    **a4 = a3;
    v5 = (*a4)++;
    v5[1] = 2;
    v6 = (*a4)++;
    v6[1] = **a2;
    *a4 += 2;
  }

  v8 = 0;
  v9 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a1, 0, a3, &v8, "", 0, a5);
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

mipc::sms::Read_V2_Cnf *mipc::sms::Read_V2_Cnf::Read_V2_Cnf(mipc::sms::Read_V2_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1562, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E639F0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  *(this + 80) = 1;
  mipc::sms::Read_V2_Cnf::deserialize(this, v7);
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

void sub_297A5BC78(_Unwind_Exception *a1)
{
  v4 = *(v1 + 136);
  if (v4)
  {
    *(v1 + 144) = v4;
    operator delete(v4);
    mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array((v1 + 112));
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
    mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array((v1 + 112));
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 96) = v5;
  operator delete(v5);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sms::Read_V2_Cnf::deserialize(mipc::sms::Read_V2_Cnf *this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 40))(v102);
  v4 = *v102;
  *a2 = *v102;
  v6 = *(&v103 + 1);
  v5 = v103;
  *(a2 + 1) = *&v102[8];
  a2[3] = *&v102[24];
  *(a2 + 2) = __PAIR128__(v6, v5);
  if (v4)
  {
    return;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v103 = v7;
  v104 = v7;
  *v102 = v7;
  *&v102[16] = v7;
  mipc::Message::findTLV(this, 0x100u, v102);
  *&v101[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v101 = v8;
  *__p = v8;
  v99 = *v102;
  if ((v102[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v102[8], *&v102[16]);
  }

  else
  {
    *__p = *&v102[8];
    *v101 = *&v102[24];
  }

  *&v101[8] = v103;
  if (*(&v103 + 1))
  {
    atomic_fetch_add_explicit((*(&v103 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v99)
  {
    if (v99 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v99, &v93);
      goto LABEL_52;
    }

    v9 = 0;
    *(this + 12) = *(this + 11);
  }

  else
  {
    v10 = v104;
    v11 = *(&v104 + 1);
    v12 = *(this + 11);
    *(this + 12) = v12;
    if (v10 < 8)
    {
      v9 = 0;
    }

    else
    {
      v13 = &v11[v10];
      v92 = v6;
      while (1)
      {
        v14 = *(this + 11);
        v15 = v12 - v14;
        if (v12 - v14 == 2048)
        {
          v6 = v92;
          v9 = 0x100000010;
          goto LABEL_47;
        }

        v16 = v13 - v11;
        if ((v13 - v11) < 4)
        {
          v9 = 0x100000005;
          goto LABEL_46;
        }

        v17 = v11 + 2;
        if (v16 <= 2)
        {
          v17 = v13;
        }

        v18 = v13 - v17 <= 2;
        v21 = *v17;
        v19 = (v17 + 2);
        v20 = v21;
        v22 = v18 ? v13 : v19;
        v23 = *(this + 13);
        if (v12 >= v23)
        {
          v24 = v15 >> 1;
          if (v15 >> 1 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = v23 - v14;
          v26 = v25 <= v24 + 1 ? v24 + 1 : v25;
          v27 = v25 >= 0x7FFFFFFFFFFFFFFELL ? 0x7FFFFFFFFFFFFFFFLL : v26;
          if (v27)
          {
            if (v27 < 0)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v28 = operator new(2 * v27);
          }

          else
          {
            v28 = 0;
          }

          v29 = &v28[2 * v24];
          *v29 = 0;
          v12 = v29 + 2;
          memcpy(v28, v14, v15);
          *(this + 11) = v28;
          *(this + 12) = v12;
          *(this + 13) = &v28[2 * v27];
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v12 = 0;
          v12 += 2;
        }

        *(this + 12) = v12;
        if (v20 > 2)
        {
          break;
        }

        if (v20 != 2)
        {
          v9 = 0x100000011;
          goto LABEL_46;
        }

        v11 = (v22 + 2);
        *(v12 - 1) = *v22;
        if (v13 - v22 <= 4)
        {
          v11 = v13;
        }

        if ((v13 - v11) <= 7)
        {
          v9 = 0;
          goto LABEL_46;
        }
      }

      v9 = 0x100000012;
LABEL_46:
      v6 = v92;
    }
  }

LABEL_47:
  v30 = *(this + 3);
  v97 = *(this + 2);
  v98 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v9, 0x100u, &v97, "", 0, &v93);
  v31 = v98;
  if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

LABEL_52:
  v32 = *&v101[16];
  if (*&v101[16] && !atomic_fetch_add((*&v101[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    if ((v101[7] & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if ((v101[7] & 0x80000000) != 0)
  {
LABEL_55:
    operator delete(__p[0]);
  }

LABEL_56:
  v33 = *(&v103 + 1);
  if (!*(&v103 + 1) || atomic_fetch_add((*(&v103 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v102[31] & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_71:
    operator delete(*&v102[8]);
    *a2 = v93;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

LABEL_72:
    operator delete(a2[1]);
    goto LABEL_60;
  }

  (v33->__on_zero_shared)(v33);
  std::__shared_weak_count::__release_weak(v33);
  if ((v102[31] & 0x80000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_59:
  *a2 = v93;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_72;
  }

LABEL_60:
  *(a2 + 1) = v94;
  a2[3] = v95;
  HIBYTE(v95) = 0;
  LOBYTE(v94) = 0;
  v34 = v96;
  v96 = 0uLL;
  *(a2 + 2) = v34;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v35 = *a2;
  v36 = *(&v96 + 1);
  if (*(&v96 + 1) && !atomic_fetch_add((*(&v96 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
    if ((SHIBYTE(v95) & 0x80000000) == 0)
    {
LABEL_66:
      if (v35)
      {
        return;
      }

      goto LABEL_75;
    }
  }

  else if ((SHIBYTE(v95) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(v94);
  if (v35)
  {
    return;
  }

LABEL_75:
  *&v37 = 0xAAAAAAAAAAAAAAAALL;
  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v103 = v37;
  v104 = v37;
  *v102 = v37;
  *&v102[16] = v37;
  mipc::Message::findTLV(this, 0x101u, v102);
  *&v101[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v38 = 0xAAAAAAAAAAAAAAAALL;
  *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v101 = v38;
  *__p = v38;
  v99 = *v102;
  if ((v102[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v102[8], *&v102[16]);
  }

  else
  {
    *__p = *&v102[8];
    *v101 = *&v102[24];
  }

  *&v101[8] = v103;
  if (*(&v103 + 1))
  {
    atomic_fetch_add_explicit((*(&v103 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v39 = v99;
  if (v99 && v99 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v99, &v93);
    goto LABEL_116;
  }

  v40 = v104;
  v41 = *(&v104 + 1);
  v43 = *(this + 14);
  v42 = *(this + 15);
  if (v42 != v43)
  {
    v44 = *(this + 15);
    do
    {
      v46 = *(v44 - 24);
      v44 -= 24;
      v45 = v46;
      if (v46)
      {
        *(v42 - 16) = v45;
        operator delete(v45);
      }

      v42 = v44;
    }

    while (v44 != v43);
  }

  *(this + 15) = v43;
  if (v39)
  {
    if (v39 != 0x10000000ELL)
    {
      goto LABEL_111;
    }
  }

  else if (v40 >= 8)
  {
    v47 = &v41[v40];
    v39 = 0x100000010;
    do
    {
      v48 = *(this + 15);
      if ((v48 - *(this + 14)) == 24576)
      {
        goto LABEL_111;
      }

      if ((v47 - v41) < 4)
      {
        v39 = 0x100000005;
        goto LABEL_111;
      }

      if (v47 - v41 <= 2)
      {
        v49 = v47;
      }

      else
      {
        v49 = v41 + 2;
      }

      v18 = v47 - v49 <= 2;
      v52 = *v49;
      v50 = v49 + 2;
      v51 = v52;
      if (v18)
      {
        v53 = v47;
      }

      else
      {
        v53 = v50;
      }

      if (v48 >= *(this + 16))
      {
        v54 = std::vector<mipc::mipc_byte_array_t<256ul,false>>::__emplace_back_slow_path<>(this + 112);
      }

      else
      {
        *v48 = 0;
        v48[1] = 0;
        v54 = v48 + 3;
        v48[2] = 0;
      }

      *(this + 15) = v54;
      if (!v51)
      {
        v39 = 0x100000003;
        goto LABEL_111;
      }

      if (v51 > 0x100)
      {
        goto LABEL_111;
      }

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v54 - 3, v53, &v53[v51], v51);
      v55 = (((v51 + 11) & 0x3F8) - 4) & 0xFFFC;
      if (v47 - v53 <= v55)
      {
        v41 = v47;
      }

      else
      {
        v41 = &v53[v55];
      }
    }

    while ((v47 - v41) > 7);
  }

  v39 = 0;
LABEL_111:
  v56 = *(this + 3);
  v97 = *(this + 2);
  v98 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v39, 0x101u, &v97, "", 0, &v93);
  v57 = v98;
  if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

LABEL_116:
  v58 = *&v101[16];
  if (*&v101[16] && !atomic_fetch_add((*&v101[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v58->__on_zero_shared)(v58);
    std::__shared_weak_count::__release_weak(v58);
  }

  if ((v101[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  v59 = *(&v103 + 1);
  if (*(&v103 + 1) && !atomic_fetch_add((*(&v103 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v59);
  }

  if ((v102[31] & 0x80000000) != 0)
  {
    operator delete(*&v102[8]);
  }

  *a2 = v93;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v94;
  a2[3] = v95;
  HIBYTE(v95) = 0;
  LOBYTE(v94) = 0;
  v60 = v96;
  v96 = 0uLL;
  v61 = a2[5];
  *(a2 + 2) = v60;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
  }

  v62 = *a2;
  v63 = *(&v96 + 1);
  if (*(&v96 + 1) && !atomic_fetch_add((*(&v96 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
    if (v62)
    {
      return;
    }
  }

  else if (v62)
  {
    return;
  }

  *&v64 = 0xAAAAAAAAAAAAAAAALL;
  *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v103 = v64;
  v104 = v64;
  *v102 = v64;
  *&v102[16] = v64;
  mipc::Message::findTLV(this, 0x102u, v102);
  *&v101[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v65 = 0xAAAAAAAAAAAAAAAALL;
  *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v101 = v65;
  *__p = v65;
  v99 = *v102;
  if ((v102[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v102[8], *&v102[16]);
  }

  else
  {
    *__p = *&v102[8];
    *v101 = *&v102[24];
  }

  *&v101[8] = v103;
  if (*(&v103 + 1))
  {
    atomic_fetch_add_explicit((*(&v103 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (!v99)
  {
    v67 = v104;
    v68 = *(&v104 + 1);
    *(this + 18) = *(this + 17);
    if (v67 < 8)
    {
LABEL_173:
      v66 = 0;
    }

    else
    {
      v69 = (v68 + v67);
      while (1)
      {
        v71 = *(this + 17);
        v70 = *(this + 18);
        v72 = v70 - v71;
        if (v70 - v71 == 1024)
        {
          v66 = 0x100000010;
          goto LABEL_174;
        }

        v73 = v69 - v68;
        if ((v69 - v68) < 4)
        {
          v66 = 0x100000005;
          goto LABEL_174;
        }

        v74 = v68 + 1;
        if (v73 <= 2)
        {
          v74 = v69;
        }

        v18 = v69 - v74 <= 2;
        v77 = *v74;
        v75 = v74 + 1;
        v76 = v77;
        if (v18)
        {
          v78 = v69;
        }

        else
        {
          v78 = v75;
        }

        v79 = *(this + 19);
        if (v70 >= v79)
        {
          v81 = v72 + 1;
          if ((v72 + 1) < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v82 = v79 - v71;
          if (2 * v82 > v81)
          {
            v81 = 2 * v82;
          }

          if (v82 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v83 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v83 = v81;
          }

          if (v83)
          {
            v84 = operator new(v83);
          }

          else
          {
            v84 = 0;
          }

          v84[v72] = 0;
          v80 = &v84[v72 + 1];
          memcpy(v84, v71, v72);
          *(this + 17) = v84;
          *(this + 18) = v80;
          *(this + 19) = &v84[v83];
          if (v71)
          {
            operator delete(v71);
          }
        }

        else
        {
          *v70 = 0;
          v80 = (v70 + 1);
        }

        *(this + 18) = v80;
        if (v76 > 1)
        {
          v66 = 0x100000012;
          goto LABEL_174;
        }

        if (!v76)
        {
          break;
        }

        v68 = v78 + 2;
        *(v80 - 1) = *v78;
        if (v69 - v78 <= 4)
        {
          v68 = v69;
        }

        if ((v69 - v68) <= 7)
        {
          goto LABEL_173;
        }
      }

      v66 = 0x100000011;
    }

    goto LABEL_174;
  }

  if (v99 == 0x10000000ELL)
  {
    v66 = 0;
    *(this + 18) = *(this + 17);
LABEL_174:
    v85 = *(this + 3);
    v97 = *(this + 2);
    v98 = v85;
    if (v85)
    {
      atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v66, 0x102u, &v97, "", 0, &v93);
    v86 = v98;
    if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v86->__on_zero_shared)(v86);
      std::__shared_weak_count::__release_weak(v86);
    }

    goto LABEL_180;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v99, &v93);
LABEL_180:
  v87 = *&v101[16];
  if (*&v101[16] && !atomic_fetch_add((*&v101[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v87->__on_zero_shared)(v87);
    std::__shared_weak_count::__release_weak(v87);
  }

  if ((v101[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  v88 = *(&v103 + 1);
  if (*(&v103 + 1) && !atomic_fetch_add((*(&v103 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v88->__on_zero_shared)(v88);
    std::__shared_weak_count::__release_weak(v88);
  }

  if ((v102[31] & 0x80000000) != 0)
  {
    operator delete(*&v102[8]);
  }

  *a2 = v93;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v94;
  a2[3] = v95;
  HIBYTE(v95) = 0;
  LOBYTE(v94) = 0;
  v89 = v96;
  v96 = 0uLL;
  v90 = a2[5];
  *(a2 + 2) = v89;
  if (v90 && !atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v90->__on_zero_shared)(v90);
    std::__shared_weak_count::__release_weak(v90);
  }

  v91 = *(&v96 + 1);
  if (*(&v96 + 1) && !atomic_fetch_add((*(&v96 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v91->__on_zero_shared)(v91);
    std::__shared_weak_count::__release_weak(v91);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }
}

void sub_297A5CA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t mipc::sms::Read_V2_Cnf::Read_V2_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1562, &v14, a3, 2);
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
  *a1 = &unk_2A1E64398;
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
  *a1 = &unk_2A1E639F0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297A5CD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Read_V2_Cnf::~Read_V2_Cnf(mipc::sms::Read_V2_Cnf *this)
{
  *this = &unk_2A1E639F0;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    v4 = *(this + 15);
    v5 = *(this + 14);
    if (v4 != v3)
    {
      v6 = *(this + 15);
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(this + 14);
    }

    *(this + 15) = v3;
    operator delete(v5);
  }

  v9 = *(this + 11);
  if (v9)
  {
    *(this + 12) = v9;
    operator delete(v9);
  }

  *this = &unk_2A1E85968;
  v10 = *(this + 9);
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (*(this + 63) < 0)
  {
LABEL_16:
    operator delete(*(this + 5));
  }

LABEL_17:
  v11 = *(this + 3);
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

{
  mipc::sms::Read_V2_Cnf::~Read_V2_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::sms::Read_V2_Cnf::getSize(mipc::sms::Read_V2_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4 * (v2 - v1) + 16;
  }

  v4 = *(this + 7);
  v5 = *(this + 15);
  v6 = *(this + 14);
  if (v6 != v5)
  {
    v7 = 16;
    while (1)
    {
      v8 = v6[1] - *v6;
      if ((v8 + 4) >> 16)
      {
        break;
      }

      v7 += (v8 + 11) & 0xFFF8;
      v6 += 3;
      if (v6 == v5)
      {
        goto LABEL_10;
      }
    }
  }

  v7 = 0;
LABEL_10:
  v9 = *(this + 17);
  v10 = *(this + 18);
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 8 * (v10 - v9) + 16;
  }

  v12 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v12 = 32;
  }

  return v3 + v7 + v11 + v12;
}

double mipc::sms::Delete_V2_Req::Delete_V2_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1563;
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
  *a1 = &unk_2A1E63A38;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 1563;
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
  *a1 = &unk_2A1E63A38;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sms::Delete_V2_Req::~Delete_V2_Req(mipc::sms::Delete_V2_Req *this)
{
  *this = &unk_2A1E63A38;
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
  *this = &unk_2A1E63A38;
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
  *this = &unk_2A1E63A38;
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

void mipc::sms::Delete_V2_Req::serialize(mipc::sms::Delete_V2_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vceqzq_s64(*(this + 88));
  v5 = vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1] + 8 * (*(this + 13) != 0);
  *&v41 = operator new(v5);
  v42 = v41 + v5;
  bzero(v41, v5);
  *(&v41 + 1) = v41 + v5;
  v40 = v41;
  v39 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v34, this, &v40);
  v6 = v37;
  *&__p[1] = *v35;
  __p[3] = v36;
  __p[0] = v34;
  v39 = v37;
  if (v34)
  {
    *a2 = v34;
    *(a2 + 8) = *&__p[1];
    v7 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
LABEL_68:
    *(a2 + 48) = 1;
    goto LABEL_69;
  }

  if (*(this + 11))
  {
    *v40 = 257;
    v8 = v40++;
    v8[1] = 1;
    v9 = v40++;
    *(v9 + 2) = **(this + 11);
    v40 += 2;
  }

  v43 = 0;
  v44 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v43, "", 0, &v34);
  v10 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    __p[0] = v34;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __p[0] = v34;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_8:
    operator delete(__p[1]);
  }

LABEL_9:
  *&__p[1] = *v35;
  __p[3] = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35[0]) = 0;
  v11 = v37;
  v37 = 0uLL;
  v39 = v11;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
  }

  v12 = *(&v37 + 1);
  v13 = __p[0];
  if (!*(&v37 + 1) || atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    operator delete(v35[0]);
    if (v13)
    {
      goto LABEL_67;
    }

    goto LABEL_21;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v13)
  {
    goto LABEL_67;
  }

LABEL_21:
  if (*(this + 12))
  {
    *v40 = 258;
    v14 = v40++;
    v14[1] = 1;
    v15 = v40++;
    *(v15 + 2) = **(this + 12);
    v40 += 2;
  }

  else if (!*(this + 4))
  {
    v16 = 0x10000000FLL;
    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:
  v43 = 0;
  v44 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v16, 0x102u, &v43, "", 0, &v34);
  v17 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  __p[0] = v34;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v35;
  __p[3] = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35[0]) = 0;
  v18 = v37;
  v37 = 0uLL;
  v19 = *(&v39 + 1);
  v39 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(&v37 + 1);
  v21 = __p[0];
  if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
    if (!v21)
    {
      goto LABEL_40;
    }

LABEL_67:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v39;
    goto LABEL_68;
  }

  if (v21)
  {
    goto LABEL_67;
  }

LABEL_40:
  if (*(this + 13))
  {
    *v40 = 259;
    v22 = v40++;
    v22[1] = 2;
    v23 = v40++;
    v23[1] = **(this + 13);
    v40 += 2;
  }

  v43 = 0;
  v44 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x103u, &v43, "", 0, &v34);
  v24 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  __p[0] = v34;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v35;
  __p[3] = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35[0]) = 0;
  v25 = v37;
  v37 = 0uLL;
  v26 = *(&v39 + 1);
  v39 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v37 + 1);
  v28 = __p[0];
  if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (v28)
  {
    goto LABEL_67;
  }

  (*(*this + 32))(&v34, this, &v41);
  __p[0] = v34;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v35;
  __p[3] = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35[0]) = 0;
  v29 = v37;
  v37 = 0uLL;
  v30 = *(&v39 + 1);
  v39 = v29;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *(&v37 + 1);
  v32 = __p[0];
  if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (v32)
  {
    goto LABEL_67;
  }

  *a2 = v41;
  *(a2 + 16) = v42;
  v42 = 0;
  v41 = 0uLL;
  *(a2 + 48) = 0;
  v33 = *(&v39 + 1);
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_69:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v41)
  {
    *(&v41 + 1) = v41;
    operator delete(v41);
  }
}

void sub_297A5DC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sms::Delete_V2_Cnf *mipc::sms::Delete_V2_Cnf::Delete_V2_Cnf(mipc::sms::Delete_V2_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1564, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E63A80;
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

void sub_297A5DE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sms::Delete_V2_Cnf::deserialize@<D0>(mipc::sms::Delete_V2_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sms::Delete_V2_Cnf::Delete_V2_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1564, &v14, a3, 2);
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
  *a1 = &unk_2A1E643E0;
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
  *a1 = &unk_2A1E63A80;
  return a1;
}

void sub_297A5E158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Delete_V2_Cnf::~Delete_V2_Cnf(mipc::sms::Delete_V2_Cnf *this)
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

uint64_t mipc::sms::Delete_V2_Cnf::getSize(mipc::sms::Delete_V2_Cnf *this)
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

double mipc::sms::Get_Store_Status_V2_Req::Get_Store_Status_V2_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1565;
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
  *a1 = &unk_2A1E63AC8;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 1565;
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
  *a1 = &unk_2A1E63AC8;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sms::Get_Store_Status_V2_Req::~Get_Store_Status_V2_Req(mipc::sms::Get_Store_Status_V2_Req *this)
{
  *this = &unk_2A1E63AC8;
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
  *this = &unk_2A1E63AC8;
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
  *this = &unk_2A1E63AC8;
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

void mipc::sms::Get_Store_Status_V2_Req::serialize(mipc::sms::Get_Store_Status_V2_Req *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 11))
  {
    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  *&v25 = operator new(v4);
  v26 = v25 + v4;
  bzero(v25, v4);
  *(&v25 + 1) = v25 + v4;
  v24 = v25;
  v23 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v18, this, &v24);
  v5 = v21;
  *&__p[1] = *v19;
  __p[3] = v20;
  __p[0] = v18;
  v23 = v21;
  if (v18)
  {
    *a2 = v18;
    *(a2 + 8) = *&__p[1];
    v6 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
LABEL_35:
    *(a2 + 48) = 1;
    goto LABEL_36;
  }

  if (*(this + 11))
  {
    *v24 = 257;
    v7 = v24++;
    v7[1] = 1;
    v8 = v24++;
    *(v8 + 2) = **(this + 11);
    v24 += 2;
  }

  v27 = 0;
  v28 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v27, "", 0, &v18);
  v9 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    __p[0] = v18;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  __p[0] = v18;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_11:
    operator delete(__p[1]);
  }

LABEL_12:
  *&__p[1] = *v19;
  __p[3] = v20;
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  v10 = v21;
  v21 = 0uLL;
  v23 = v10;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v11 = *(&v21 + 1);
  v12 = __p[0];
  if (!*(&v21 + 1) || atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(v19[0]);
    if (!v12)
    {
      goto LABEL_24;
    }

LABEL_34:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v23;
    goto LABEL_35;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v12)
  {
    goto LABEL_34;
  }

LABEL_24:
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
      goto LABEL_34;
    }
  }

  else if (v16)
  {
    goto LABEL_34;
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

LABEL_36:
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

void sub_297A5ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sms::Get_Store_Status_V2_Req::getSize(mipc::sms::Get_Store_Status_V2_Req *this)
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

mipc::sms::Get_Store_Status_V2_Cnf *mipc::sms::Get_Store_Status_V2_Cnf::Get_Store_Status_V2_Cnf(mipc::sms::Get_Store_Status_V2_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1566, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E63B10;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::sms::Get_Store_Status_V2_Cnf::deserialize(this, v7);
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

void sub_297A5EF04(_Unwind_Exception *a1)
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

void mipc::sms::Get_Store_Status_V2_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 11, 0x100u, &v12);
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
  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 12, 0x101u, &v12);
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

void *mipc::sms::Get_Store_Status_V2_Cnf::Get_Store_Status_V2_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1566, &v14, a3, 2);
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
  *a1 = &unk_2A1E64428;
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
  *a1 = &unk_2A1E63B10;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297A5F440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Get_Store_Status_V2_Cnf::~Get_Store_Status_V2_Cnf(mipc::sms::Get_Store_Status_V2_Cnf *this)
{
  *this = &unk_2A1E63B10;
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
  *this = &unk_2A1E63B10;
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
  *this = &unk_2A1E63B10;
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

uint64_t mipc::sms::Get_Store_Status_V2_Cnf::getSize(mipc::sms::Get_Store_Status_V2_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::sms::Write_V2_Req::Write_V2_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1567;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E63B58;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 1567;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E63B58;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sms::Write_V2_Req::~Write_V2_Req(mipc::sms::Write_V2_Req *this)
{
  *this = &unk_2A1E63B58;
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
    v4 = *v3;
    if (*v3)
    {
      v3[1] = v4;
      operator delete(v4);
    }

    operator delete(v3);
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
  *this = &unk_2A1E63B58;
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
    v4 = *v3;
    if (*v3)
    {
      v3[1] = v4;
      operator delete(v4);
    }

    operator delete(v3);
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
  *this = &unk_2A1E63B58;
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
    v4 = *v3;
    if (*v3)
    {
      v3[1] = v4;
      operator delete(v4);
    }

    operator delete(v3);
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

void mipc::sms::Write_V2_Req::serialize(mipc::sms::Write_V2_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 96);
  v4 = *(this + 12);
  if (v4)
  {
    v6 = v4[1] - *v4;
    v7 = __CFADD__(v6 - 65532, 0x10000);
    v4 = ((v6 + 11) & 0xFFF8);
    if (!v7)
    {
      v4 = 0;
    }
  }

  v8 = 3;
  if (!*(this + 11))
  {
    v8 = 2;
  }

  v9 = &v4[v8 + (*(this + 13) != 0)];
  *&v42 = operator new(v9);
  v43 = v42 + v9;
  bzero(v42, v9);
  *(&v42 + 1) = v42 + v9;
  v41 = v42;
  v40 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v35, this, &v41);
  v10 = v38;
  *&__p[1] = *v36;
  __p[3] = v37;
  __p[0] = v35;
  v40 = v38;
  if (v35)
  {
    *a2 = v35;
    *(a2 + 8) = *&__p[1];
    v11 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
LABEL_68:
    *(a2 + 48) = 1;
    goto LABEL_69;
  }

  if (*(this + 11))
  {
    *v41 = 257;
    v12 = v41++;
    v12[1] = 1;
    v13 = v41++;
    *(v13 + 2) = **(this + 11);
    v41 += 2;
  }

  v44 = 0;
  v45 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v44, "", 0, &v35);
  v14 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    __p[0] = v35;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __p[0] = v35;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_13:
    operator delete(__p[1]);
  }

LABEL_14:
  *&__p[1] = *v36;
  __p[3] = v37;
  HIBYTE(v37) = 0;
  LOBYTE(v36[0]) = 0;
  v15 = v38;
  v38 = 0uLL;
  v40 = v15;
  if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v10 + 1) + 16))(*(&v10 + 1));
    std::__shared_weak_count::__release_weak(*(&v10 + 1));
  }

  v16 = *(&v38 + 1);
  v17 = __p[0];
  if (!*(&v38 + 1) || atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    operator delete(v36[0]);
    if (v17)
    {
      goto LABEL_67;
    }

    goto LABEL_26;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v17)
  {
    goto LABEL_67;
  }

LABEL_26:
  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<256ul,false>,true>(this, v5, 0x102u, &v41, &v35);
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
      goto LABEL_38;
    }

LABEL_67:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v40;
    goto LABEL_68;
  }

  if (v21)
  {
    goto LABEL_67;
  }

LABEL_38:
  if (*(this + 13))
  {
    *v41 = 259;
    v22 = v41++;
    v22[1] = 1;
    v23 = v41++;
    *(v23 + 2) = **(this + 13);
    v41 += 2;
  }

  else if (!*(this + 4))
  {
    v24 = 0x10000000FLL;
    goto LABEL_42;
  }

  v24 = 0;
LABEL_42:
  v44 = 0;
  v45 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v24, 0x103u, &v44, "", 0, &v35);
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
    goto LABEL_67;
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
    goto LABEL_67;
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

LABEL_69:
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

void sub_297A604D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void *mipc::sms::Write_V2_Req::getSize(mipc::sms::Write_V2_Req *this)
{
  v1 = *(this + 12);
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
  if (!*(this + 11))
  {
    v4 = 2;
  }

  return &v1[v4 + (*(this + 13) != 0)];
}

mipc::sms::Write_V2_Cnf *mipc::sms::Write_V2_Cnf::Write_V2_Cnf(mipc::sms::Write_V2_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1568, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E63BA0;
  *(this + 11) = 0;
  mipc::sms::Write_V2_Cnf::deserialize(this, &v7);
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

void sub_297A6068C(_Unwind_Exception *a1)
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

void mipc::sms::Write_V2_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sms::Write_V2_Cnf::Write_V2_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1568, &v14, a3, 2);
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
  *a1 = &unk_2A1E64470;
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
  *a1 = &unk_2A1E63BA0;
  a1[11] = 0;
  return a1;
}

void sub_297A60A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Write_V2_Cnf::~Write_V2_Cnf(mipc::sms::Write_V2_Cnf *this)
{
  *this = &unk_2A1E63BA0;
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
  *this = &unk_2A1E63BA0;
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
  *this = &unk_2A1E63BA0;
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

uint64_t mipc::sms::Write_V2_Cnf::getSize(mipc::sms::Write_V2_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sms::Cbm_Cfg_V2_Req::Cbm_Cfg_V2_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1569;
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
  *a1 = &unk_2A1E63BE8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

{
  *(a1 + 8) = 1569;
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
  *a1 = &unk_2A1E63BE8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

void mipc::sms::Cbm_Cfg_V2_Req::~Cbm_Cfg_V2_Req(mipc::sms::Cbm_Cfg_V2_Req *this)
{
  *this = &unk_2A1E63BE8;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
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
  mipc::sms::Cbm_Cfg_V2_Req::~Cbm_Cfg_V2_Req(this);

  operator delete(v1);
}

void mipc::sms::Cbm_Cfg_V2_Req::serialize(mipc::sms::Cbm_Cfg_V2_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 13);
  v5 = *(this + 14);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2 * (v5 - v4) + 16;
  }

  v7 = *(this + 16);
  v8 = *(this + 17);
  v9 = (this + 128);
  if (v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 4 * (v8 - v7) + 16;
  }

  v11 = vceqzq_s64(*(this + 88));
  v12 = vbslq_s8(v11, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + v6 + v10 + vbicq_s8(xmmword_297DCA380, v11).i64[1];
  v13 = (this + 152);
  v14 = *(this + 19) != 0;
  v77[1] = 0;
  v78 = 0;
  v15 = v12 + 8 * v14;
  v77[0] = 0;
  if (v15)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v16 = operator new(v12 + 8 * v14);
    v77[0] = v16;
    v78 = &v16[v15];
    bzero(v16, v15);
    v77[1] = &v16[v15];
  }

  else
  {
    v16 = 0;
  }

  v76 = v16;
  v75 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v70, this, &v76);
  __p[0] = v70;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v71;
  __p[3] = v72;
  HIBYTE(v72) = 0;
  LOBYTE(v71) = 0;
  v17 = v73;
  v73 = 0uLL;
  v18 = *(&v75 + 1);
  v75 = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = *(&v73 + 1);
    v20 = __p[0];
    if (!*(&v73 + 1))
    {
LABEL_17:
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      operator delete(v71);
      if (v20)
      {
        goto LABEL_116;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v19 = *(&v73 + 1);
    v20 = __p[0];
    if (!*(&v73 + 1))
    {
      goto LABEL_17;
    }
  }

  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_17;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(v72) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v20)
  {
    goto LABEL_116;
  }

LABEL_24:
  if (*(this + 11))
  {
    *v76 = 258;
    v21 = v76++;
    v21[1] = 1;
    v22 = v76++;
    *(v22 + 2) = **(this + 11);
    v76 += 2;
  }

  v81 = 0;
  v82 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v81, "", 0, &v70);
  v23 = v82;
  if (v82 && !atomic_fetch_add((v82 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    __p[0] = v70;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  __p[0] = v70;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_29:
    operator delete(__p[1]);
  }

LABEL_30:
  *&__p[1] = v71;
  __p[3] = v72;
  HIBYTE(v72) = 0;
  LOBYTE(v71) = 0;
  v24 = v73;
  v73 = 0uLL;
  v25 = *(&v75 + 1);
  v75 = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
    v26 = *(&v73 + 1);
    v27 = __p[0];
    if (!*(&v73 + 1))
    {
LABEL_34:
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_42:
      operator delete(v71);
      if (v27)
      {
        goto LABEL_116;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v26 = *(&v73 + 1);
    v27 = __p[0];
    if (!*(&v73 + 1))
    {
      goto LABEL_34;
    }
  }

  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_34;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (SHIBYTE(v72) < 0)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (v27)
  {
    goto LABEL_116;
  }

LABEL_43:
  if (*(this + 12))
  {
    *v76 = 259;
    v28 = v76++;
    v28[1] = 1;
    v29 = v76++;
    *(v29 + 2) = **(this + 12);
    v76 += 2;
  }

  v81 = 0;
  v82 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x103u, &v81, "", 0, &v70);
  v30 = v82;
  if (v82 && !atomic_fetch_add((v82 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  __p[0] = v70;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v71;
  __p[3] = v72;
  HIBYTE(v72) = 0;
  LOBYTE(v71) = 0;
  v31 = v73;
  v73 = 0uLL;
  v32 = *(&v75 + 1);
  v75 = v31;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&v73 + 1);
  v34 = __p[0];
  if (*(&v73 + 1) && !atomic_fetch_add((*(&v73 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
    if (!v34)
    {
      goto LABEL_60;
    }

LABEL_116:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v75;
    v75 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_117;
  }

  if (v34)
  {
    goto LABEL_116;
  }

LABEL_60:
  v35 = *(this + 104);
  v36 = *(this + 14);
  v37 = *(this + 13);
  if (v37 == v36)
  {
    goto LABEL_78;
  }

  v38 = 0x100000002;
  v39 = v36 - v37;
  if ((v39 >> 2) <= 0x1E)
  {
    v40 = v39 >> 2;
    v41 = *(this + 7) - (v39 >> 2);
    v42 = (*(this + 7) - (v39 >> 2));
    *(this + 7) -= v39 >> 2;
    if (v42 < 0x100)
    {
      goto LABEL_64;
    }

    v49 = v41 + 1;
    *v76++ = 260;
    *v76++ = 0;
    *v76 = 0;
    v76 += 2;
    *v76 = 0;
    v76 += 2;
    *v76++ = v41 + 1;
    *v76 = v40;
    v50 = ++v76;
    for (i = *(this + 13); i != *(this + 14); v76 += 2)
    {
      *v50 = v49;
      *++v76 = 4;
      v52 = v76++;
      ++v49;
      v53 = *i++;
      *(v52 + 1) = v53;
      v50 = v76 + 2;
    }

LABEL_78:
    v48 = 0;
    v79 = 0;
    v80 = 0;
    goto LABEL_79;
  }

  v38 = 0x100000010;
LABEL_64:
  v69 = v38;
  v79 = 0xAAAAAAAAAAAAAAAALL;
  v80 = 0xAAAAAAAAAAAAAAAALL;
  v81 = 2 * v39 + 16;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v81, &v79);
  v43 = v79;
  v44 = *v79;
  v45 = *(this + 13);
  if (v45 != *(this + 14))
  {
    do
    {
      v81 = 0xAAAAAAAAAAAAAAAALL;
      v82 = 0xAAAAAAAAAAAAAAAALL;
      v83 = 4;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v83, &v81);
      **v81 = *v45;
      if (v81)
      {
        memcpy(v44, *v81, *(v81 + 8) - *v81);
        v44 += *(v81 + 8) - *v81;
      }

      v46 = v82;
      if (v82 && !atomic_fetch_add((v82 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v46->__on_zero_shared)(v46);
        std::__shared_weak_count::__release_weak(v46);
      }

      ++v45;
    }

    while (v45 != *(this + 14));
    v43 = v79;
  }

  if (v44 != v43[1])
  {
    v47 = v43[1];
    v43[1] = v44;
  }

  v48 = v69;
LABEL_79:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v48, 0x104u, &v79, "", 0, &v70);
  v54 = v80;
  if (v80 && !atomic_fetch_add((v80 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
  }

  __p[0] = v70;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v71;
  __p[3] = v72;
  HIBYTE(v72) = 0;
  LOBYTE(v71) = 0;
  v55 = v73;
  v73 = 0uLL;
  v56 = *(&v75 + 1);
  v75 = v55;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  v57 = *(&v73 + 1);
  v58 = __p[0];
  if (*(&v73 + 1) && !atomic_fetch_add((*(&v73 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (v58)
  {
    goto LABEL_116;
  }

  mipc::Message::serializeTlv<unsigned short,60ul,false>(&v70, this, v9, &v76);
  __p[0] = v70;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v71;
  __p[3] = v72;
  HIBYTE(v72) = 0;
  LOBYTE(v71) = 0;
  v59 = v73;
  v73 = 0uLL;
  v60 = *(&v75 + 1);
  v75 = v59;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = *(&v73 + 1);
  v62 = __p[0];
  if (*(&v73 + 1) && !atomic_fetch_add((*(&v73 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (v62)
  {
    goto LABEL_116;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v13, 266, &v76, &v70);
  __p[0] = v70;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v71;
  __p[3] = v72;
  HIBYTE(v72) = 0;
  LOBYTE(v71) = 0;
  v63 = v73;
  v73 = 0uLL;
  v64 = *(&v75 + 1);
  v75 = v63;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v64->__on_zero_shared)(v64);
    std::__shared_weak_count::__release_weak(v64);
  }

  v65 = *(&v73 + 1);
  v66 = __p[0];
  if (*(&v73 + 1) && !atomic_fetch_add((*(&v73 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v65->__on_zero_shared)(v65);
    std::__shared_weak_count::__release_weak(v65);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (v66)
  {
    goto LABEL_116;
  }

  (*(*this + 32))(&v70, this, v77);
  v67 = *mipc::Error::operator=(__p, &v70);
  mipc::Error::~Error(&v70);
  if (v67)
  {
    goto LABEL_116;
  }

  *a2 = *v77;
  *(a2 + 16) = v78;
  v77[1] = 0;
  v78 = 0;
  v77[0] = 0;
  *(a2 + 48) = 0;
  v68 = *(&v75 + 1);
  if (*(&v75 + 1) && !atomic_fetch_add((*(&v75 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v68->__on_zero_shared)(v68);
    std::__shared_weak_count::__release_weak(v68);
  }

LABEL_117:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v77[0])
  {
    v77[1] = v77[0];
    operator delete(v77[0]);
  }
}

void sub_297A61D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  mipc::Error::~Error(&a17);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t mipc::sms::Cbm_Cfg_V2_Req::getSize(mipc::sms::Cbm_Cfg_V2_Req *this)
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

  v7 = vceqzq_s64(*(this + 88));
  return vbslq_s8(v7, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + v3 + v6 + vbicq_s8(xmmword_297DCA380, v7).i64[1] + 8 * (*(this + 19) != 0);
}

void mipc::Message::serializeTlv<unsigned short,60ul,false>(uint64_t a1, uint64_t a2, __int16 **a3, _WORD **a4)
{
  v6 = *a3;
  if (v6 == *(&v6 + 1))
  {
    goto LABEL_19;
  }

  v8 = 0x100000002;
  v9 = *(&v6 + 1) - v6;
  if (((*(&v6 + 1) - v6) >> 1) <= 0x3C)
  {
    v10 = v9 >> 1;
    v11 = *(a2 + 14) - (v9 >> 1);
    v12 = (*(a2 + 14) - (v9 >> 1));
    *(a2 + 14) -= v9 >> 1;
    if (v12 < 0x100)
    {
      goto LABEL_5;
    }

    v18 = v11 + 1;
    **a4 = 261;
    v19 = *a4 + 1;
    *a4 = v19;
    *v19 = 0;
    v20 = *a4 + 1;
    *a4 = v20;
    *v20 = 0;
    v21 = *a4 + 2;
    *a4 = v21;
    *v21 = 0;
    v22 = *a4 + 2;
    *a4 = v22;
    *v22 = v11 + 1;
    v23 = *a4 + 1;
    *a4 = v23;
    *v23 = v10;
    v24 = *a4 + 1;
    *a4 = v24;
    for (i = *a3; i != a3[1]; *a4 = v24)
    {
      *v24 = v18;
      v26 = *a4 + 1;
      *a4 = v26;
      *v26 = 2;
      v27 = (*a4)++;
      ++v18;
      v28 = *i++;
      v27[1] = v28;
      v24 = *a4 + 2;
    }

LABEL_19:
    v8 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_20;
  }

  v8 = 0x100000010;
LABEL_5:
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 4 * v9 + 16;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v32, &v30);
  v13 = v30;
  v14 = *v30;
  v15 = *a3;
  if (*a3 != a3[1])
  {
    do
    {
      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 2;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v34, &v32);
      **v32 = *v15;
      if (v32)
      {
        memcpy(v14, *v32, *(v32 + 8) - *v32);
        v14 += *(v32 + 8) - *v32;
      }

      v16 = v33;
      if (v33 && !atomic_fetch_add((v33 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      ++v15;
    }

    while (v15 != a3[1]);
    v13 = v30;
  }

  if (v14 != v13[1])
  {
    v17 = v13[1];
    v13[1] = v14;
  }

LABEL_20:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v8, 0x105u, &v30, "", 0, a1);
  v29 = v31;
  if (v31)
  {
    if (!atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }
  }
}

mipc::sms::Cbm_Cfg_V2_Cnf *mipc::sms::Cbm_Cfg_V2_Cnf::Cbm_Cfg_V2_Cnf(mipc::sms::Cbm_Cfg_V2_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1570, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E63C30;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  mipc::sms::Cbm_Cfg_V2_Cnf::deserialize(this, v7);
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

void sub_297A6227C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  if (v4)
  {
    *(v1 + 17) = v4;
    operator delete(v4);
    v5 = *(v1 + 13);
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
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 14) = v5;
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

void mipc::sms::Cbm_Cfg_V2_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(__p);
  v4 = *__p;
  *a2 = *__p;
  v5 = v56;
  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x101u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v6 = v56;
  v56 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v56 + 1);
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((__p[31] & 0x80000000) == 0)
    {
LABEL_10:
      if (v7)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if ((__p[31] & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*&__p[8]);
  if (v7)
  {
    return;
  }

LABEL_14:
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x102u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v9 = v56;
  v56 = 0uLL;
  v10 = a2[5];
  *(a2 + 2) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *a2;
  v12 = *(&v56 + 1);
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v11)
    {
      return;
    }
  }

  else if (v11)
  {
    return;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v13;
  v57 = v13;
  *__p = v13;
  *&__p[16] = v13;
  mipc::Message::findTLV(this, 0x103u, __p);
  *&v54[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v54 = v14;
  *v53 = v14;
  v52 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v53, *&__p[8], *&__p[16]);
  }

  else
  {
    *v53 = *&__p[8];
    *v54 = *&__p[24];
  }

  *&v54[8] = v56;
  if (*(&v56 + 1))
  {
    atomic_fetch_add_explicit((*(&v56 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (!v52)
  {
    v16 = v57;
    v17 = *(&v57 + 1);
    v18 = this[13];
    this[14] = v18;
    if (v16 < 8)
    {
LABEL_63:
      v15 = 0;
    }

    else
    {
      v19 = &v17[v16];
      while (1)
      {
        v20 = this[13];
        v21 = v18 - v20;
        if (v18 - v20 == 120)
        {
          v15 = 0x100000010;
          goto LABEL_64;
        }

        v22 = v19 - v17;
        if ((v19 - v17) < 4)
        {
          v15 = 0x100000005;
          goto LABEL_64;
        }

        v23 = v17 + 2;
        if (v22 <= 2)
        {
          v23 = v19;
        }

        v24 = v19 - v23 <= 2;
        v27 = *v23;
        v25 = (v23 + 2);
        v26 = v27;
        v28 = v24 ? v19 : v25;
        v29 = this[15];
        if (v18 >= v29)
        {
          v30 = (v21 >> 2) + 1;
          if (v30 >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v31 = v29 - v20;
          if (v31 >> 1 > v30)
          {
            v30 = v31 >> 1;
          }

          v32 = v31 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v30;
          if (v32)
          {
            if (v32 >> 62)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v33 = operator new(4 * v32);
          }

          else
          {
            v33 = 0;
          }

          v34 = &v33[4 * (v21 >> 2)];
          *v34 = 0;
          v18 = v34 + 4;
          memcpy(v33, v20, v21);
          this[13] = v33;
          this[14] = v18;
          this[15] = &v33[4 * v32];
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v18++ = 0;
        }

        this[14] = v18;
        if (v26 > 4)
        {
          break;
        }

        if (v26 != 4)
        {
          v15 = 0x100000011;
          goto LABEL_64;
        }

        v17 = (v28 + 2);
        *(v18 - 1) = *v28;
        if (v19 - v28 <= 4)
        {
          v17 = v19;
        }

        if ((v19 - v17) <= 7)
        {
          goto LABEL_63;
        }
      }

      v15 = 0x100000012;
    }

    goto LABEL_64;
  }

  if (v52 == 0x10000000ELL)
  {
    v15 = 0;
    this[14] = this[13];
LABEL_64:
    v35 = this[3];
    v50 = this[2];
    v51 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v15, 0x103u, &v50, "", 0, &v46);
    v36 = v51;
    if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }

    goto LABEL_70;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v52, &v46);
LABEL_70:
  v37 = *&v54[16];
  if (*&v54[16] && !atomic_fetch_add((*&v54[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  if ((v54[7] & 0x80000000) != 0)
  {
    operator delete(v53[0]);
  }

  v38 = *(&v56 + 1);
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v46;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v47;
  a2[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v39 = v49;
  v49 = 0uLL;
  v40 = a2[5];
  *(a2 + 2) = v39;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  v41 = *a2;
  v42 = *(&v49 + 1);
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (!v41)
  {
    mipc::Message::deserializeTlv<unsigned short,60ul,false>(__p, this, this + 16);
    *a2 = *__p;
    if (*(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }

    *(a2 + 1) = *&__p[8];
    a2[3] = *&__p[24];
    __p[31] = 0;
    __p[8] = 0;
    v43 = v56;
    v56 = 0uLL;
    v44 = a2[5];
    *(a2 + 2) = v43;
    if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
    }

    v45 = *(&v56 + 1);
    if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }
}

void sub_297A62AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  mipc::Error::~Error(va);
  mipc::Error::~Error(va1);
  mipc::Error::~Error(v9);
  _Unwind_Resume(a1);
}

uint64_t mipc::sms::Cbm_Cfg_V2_Cnf::Cbm_Cfg_V2_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1570, &v14, a3, 2);
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
  *a1 = &unk_2A1E644B8;
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
  *a1 = &unk_2A1E63C30;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return a1;
}

void sub_297A62DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sms::Cbm_Cfg_V2_Cnf::~Cbm_Cfg_V2_Cnf(mipc::sms::Cbm_Cfg_V2_Cnf *this)
{
  *this = &unk_2A1E63C30;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
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
  *this = &unk_2A1E63C30;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
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
  *this = &unk_2A1E63C30;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
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

void mipc::Message::deserializeTlv<unsigned char,true>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v8;
  v28 = v8;
  *v26 = v8;
  *&v26[16] = v8;
  mipc::Message::findTLV(a1, a3, v26);
  *&v25[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v25 = v9;
  *__p = v9;
  v23 = *v26;
  if ((v26[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v26[8], *&v26[16]);
  }

  else
  {
    *__p = *&v26[8];
    *v25 = *&v26[24];
  }

  *&v25[8] = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v23;
  if (v23 && v23 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(a1, &v23, a4);
    goto LABEL_30;
  }

  v11 = v28;
  v12 = *(&v28 + 1);
  v13 = *(a1 + 4);
  v14 = *a2;
  *a2 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  if (v10)
  {
    if (v10 == 0x10000000ELL)
    {
      if (v13)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0x10000000FLL;
      }

      v15 = *(a1 + 3);
      v21 = *(a1 + 2);
      v22 = v15;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v16 = operator new(1uLL);
    *v16 = 0;
    v17 = *a2;
    *a2 = v16;
    if (v17)
    {
      operator delete(v17);
      v16 = *a2;
    }

    if (v11 > 1)
    {
      v10 = 0x100000012;
      v15 = *(a1 + 3);
      v21 = *(a1 + 2);
      v22 = v15;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (!v11)
    {
      v10 = 0x100000011;
      v15 = *(a1 + 3);
      v21 = *(a1 + 2);
      v22 = v15;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v10 = 0;
    *v16 = *v12;
  }

  v15 = *(a1 + 3);
  v21 = *(a1 + 2);
  v22 = v15;
  if (v15)
  {
LABEL_26:
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_27:
  mipc::Message::handle<(mipc::Error::Type)2>(a1, v10, a3, &v21, "", 0, a4);
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_30:
  v19 = *&v25[16];
  if (*&v25[16] && !atomic_fetch_add((*&v25[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if ((v25[7] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ((v25[7] & 0x80000000) != 0)
  {
LABEL_33:
    operator delete(__p[0]);
  }

LABEL_34:
  v20 = *(&v27 + 1);
  if (!*(&v27 + 1) || atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v26[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if ((v26[31] & 0x80000000) != 0)
  {
LABEL_37:
    operator delete(*&v26[8]);
  }
}