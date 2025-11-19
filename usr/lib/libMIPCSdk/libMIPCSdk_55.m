void *mipc::cust::Lpp_Pdu_Ind::getSize(mipc::cust::Lpp_Pdu_Ind *this)
{
  v1 = *(this + 13);
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

  return &v1[(*(this + 11) != 0) + (*(this + 12) != 0) + v4];
}

mipc::cust::Lpp_Pdu_Result_Ind *mipc::cust::Lpp_Pdu_Result_Ind::Lpp_Pdu_Result_Ind(mipc::cust::Lpp_Pdu_Result_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 30986, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E886D8;
  *(this + 11) = 0;
  mipc::cust::Lpp_Pdu_Result_Ind::deserialize(this, &v7);
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

void sub_297D8FFBC(_Unwind_Exception *a1)
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

void mipc::cust::Lpp_Pdu_Result_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Lpp_Pdu_Result_Ind::Lpp_Pdu_Result_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 30986, &v14, a3, 3);
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
  *a1 = &unk_2A1E8BF30;
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
  *a1 = &unk_2A1E886D8;
  a1[11] = 0;
  return a1;
}

void sub_297D903B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Lpp_Pdu_Result_Ind::~Lpp_Pdu_Result_Ind(mipc::cust::Lpp_Pdu_Result_Ind *this)
{
  *this = &unk_2A1E886D8;
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
  *this = &unk_2A1E886D8;
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
  *this = &unk_2A1E886D8;
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

uint64_t mipc::cust::Lpp_Pdu_Result_Ind::getSize(mipc::cust::Lpp_Pdu_Result_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

mipc::cust::Lpp_Reset_Pos_Info_Ind *mipc::cust::Lpp_Reset_Pos_Info_Ind::Lpp_Reset_Pos_Info_Ind(mipc::cust::Lpp_Reset_Pos_Info_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 30987, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E88720;
  *(this + 11) = 0;
  mipc::cust::Lpp_Reset_Pos_Info_Ind::deserialize(this, &v7);
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

void sub_297D908BC(_Unwind_Exception *a1)
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

void mipc::cust::Lpp_Reset_Pos_Info_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Lpp_Reset_Pos_Info_Ind::Lpp_Reset_Pos_Info_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 30987, &v14, a3, 3);
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
  *a1 = &unk_2A1E8BF78;
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
  *a1 = &unk_2A1E88720;
  a1[11] = 0;
  return a1;
}

void sub_297D90CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Lpp_Reset_Pos_Info_Ind::~Lpp_Reset_Pos_Info_Ind(mipc::cust::Lpp_Reset_Pos_Info_Ind *this)
{
  *this = &unk_2A1E88720;
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
  *this = &unk_2A1E88720;
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
  *this = &unk_2A1E88720;
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

uint64_t mipc::cust::Lpp_Reset_Pos_Info_Ind::getSize(mipc::cust::Lpp_Reset_Pos_Info_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind *mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind::Lpp_Rxtx_Timediff_Ignore_Ind(mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 30988, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E88768;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind::deserialize(this, v7);
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

void sub_297D911D0(_Unwind_Exception *a1)
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

void mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

void *mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind::Lpp_Rxtx_Timediff_Ignore_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 30988, &v14, a3, 3);
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
  *a1 = &unk_2A1E8BFC0;
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
  *a1 = &unk_2A1E88768;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297D9170C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind::~Lpp_Rxtx_Timediff_Ignore_Ind(mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind *this)
{
  *this = &unk_2A1E88768;
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
  *this = &unk_2A1E88768;
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
  *this = &unk_2A1E88768;
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

uint64_t mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind::getSize(mipc::cust::Lpp_Rxtx_Timediff_Ignore_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

mipc::cust::Lpp_Ecid_Meas_Result_Ind *mipc::cust::Lpp_Ecid_Meas_Result_Ind::Lpp_Ecid_Meas_Result_Ind(mipc::cust::Lpp_Ecid_Meas_Result_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 30989, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *(this + 88) = 0u;
  *this = &unk_2A1E887B0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  mipc::cust::Lpp_Ecid_Meas_Result_Ind::deserialize(this, &v7);
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

void sub_297D91C74(_Unwind_Exception *a1)
{
  mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array((v1 + 160));
  v4 = *(v1 + 136);
  if (v4)
  {
    *(v1 + 144) = v4;
    operator delete(v4);
    v5 = *(v1 + 128);
    *(v1 + 128) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 104);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = *(v1 + 128);
    *(v1 + 128) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 104);
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
  *(v1 + 112) = v6;
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

void mipc::cust::Lpp_Ecid_Meas_Result_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 5))(__p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = *&__p[8];
  *(a2 + 24) = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v4 = v81;
  v81 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v81 + 1);
  if (*(&v81 + 1) && !atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = *&__p[8];
  *(a2 + 24) = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v8 = v81;
  v81 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v81 + 1);
  if (*(&v81 + 1) && !atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if ((__p[31] & 0x80000000) == 0)
    {
LABEL_21:
      if (v10)
      {
        return;
      }

      goto LABEL_25;
    }
  }

  else if ((__p[31] & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(*&__p[8]);
  if (v10)
  {
    return;
  }

LABEL_25:
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v12;
  v82 = v12;
  *__p = v12;
  *&__p[16] = v12;
  mipc::Message::findTLV(this, 0x101u, __p);
  *&v79[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v79 = v13;
  *v78 = v13;
  v77 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v78, *&__p[8], *&__p[16]);
  }

  else
  {
    *v78 = *&__p[8];
    *v79 = *&__p[24];
  }

  *&v79[8] = v81;
  if (*(&v81 + 1))
  {
    atomic_fetch_add_explicit((*(&v81 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v77;
  if (v77 && v77 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v77, &v71);
  }

  else
  {
    v15 = v82;
    v16 = *(&v82 + 1);
    v17 = this[12];
    this[12] = 0;
    if (v17)
    {
      operator delete(v17);
    }

    if (v14)
    {
      if (v14 == 0x10000000ELL)
      {
        v14 = 0;
      }
    }

    else
    {
      v18 = operator new(4uLL);
      *v18 = 0;
      v19 = this[12];
      this[12] = v18;
      if (v19)
      {
        operator delete(v19);
        v18 = this[12];
      }

      v14 = 0x100000011;
      if (v15 <= 4)
      {
        if (v15 == 4)
        {
          v14 = 0;
          *v18 = *v16;
        }
      }

      else
      {
        v14 = 0x100000012;
      }
    }

    v20 = this[3];
    v75 = this[2];
    v76 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v14, 0x101u, &v75, "", 0, &v71);
    v21 = v76;
    if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  v22 = *&v79[16];
  if (*&v79[16] && !atomic_fetch_add((*&v79[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if ((v79[7] & 0x80000000) != 0)
  {
    operator delete(v78[0]);
  }

  v23 = *(&v81 + 1);
  if (*(&v81 + 1) && !atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v71;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = v72;
  *(a2 + 24) = v73;
  HIBYTE(v73) = 0;
  LOBYTE(v72) = 0;
  v24 = v74;
  v74 = 0uLL;
  v25 = *(a2 + 40);
  *(a2 + 32) = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *a2;
  v27 = *(&v74 + 1);
  if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
    if (v26)
    {
      return;
    }
  }

  else if (v26)
  {
    return;
  }

  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v28;
  v82 = v28;
  *__p = v28;
  *&__p[16] = v28;
  mipc::Message::findTLV(this, 0x102u, __p);
  *&v79[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v79 = v29;
  *v78 = v29;
  v77 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v78, *&__p[8], *&__p[16]);
  }

  else
  {
    *v78 = *&__p[8];
    *v79 = *&__p[24];
  }

  *&v79[8] = v81;
  if (*(&v81 + 1))
  {
    atomic_fetch_add_explicit((*(&v81 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (!v77)
  {
    v31 = v82;
    v32 = *(&v82 + 1);
    this[14] = this[13];
    if (v31 < 8)
    {
LABEL_109:
      v30 = 0;
    }

    else
    {
      v33 = &v32[v31];
      while (1)
      {
        v35 = this[13];
        v34 = this[14];
        v36 = v34 - v35;
        if (v34 - v35 == 1320)
        {
          v30 = 0x100000010;
          goto LABEL_110;
        }

        v37 = v33 - v32;
        if ((v33 - v32) < 4)
        {
          v30 = 0x100000005;
          goto LABEL_110;
        }

        v38 = v32 + 2;
        if (v37 <= 2)
        {
          v38 = v33;
        }

        v39 = v33 - v38 <= 2;
        v42 = *v38;
        v40 = (v38 + 2);
        v41 = v42;
        v43 = v39 ? v33 : v40;
        v44 = this[15];
        if (v34 >= v44)
        {
          v46 = 0xCCCCCCCCCCCCCCCDLL * (v36 >> 3) + 1;
          if (v46 > 0x666666666666666)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v47 = 0xCCCCCCCCCCCCCCCDLL * ((v44 - v35) >> 3);
          if (2 * v47 > v46)
          {
            v46 = 2 * v47;
          }

          v48 = v47 >= 0x333333333333333 ? 0x666666666666666 : v46;
          if (v48)
          {
            if (v48 > 0x666666666666666)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v49 = operator new(40 * v48);
          }

          else
          {
            v49 = 0;
          }

          v50 = &v49[8 * (v36 >> 3)];
          *(v50 + 4) = 0;
          v51 = &v49[40 * v48];
          *v50 = 0u;
          *(v50 + 1) = 0u;
          v45 = v50 + 40;
          v52 = &v50[-v36];
          memcpy(&v50[-v36], v35, v36);
          this[13] = v52;
          this[14] = v45;
          this[15] = v51;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *(v34 + 4) = 0;
          v45 = v34 + 40;
          *v34 = 0u;
          *(v34 + 1) = 0u;
        }

        this[14] = v45;
        if (v41 > 0x28)
        {
          break;
        }

        if (v41 != 40)
        {
          v30 = 0x100000011;
          goto LABEL_110;
        }

        v53 = *v43;
        v54 = *(v43 + 1);
        *(v45 - 1) = *(v43 + 4);
        *(v45 - 40) = v53;
        *(v45 - 24) = v54;
        if (v33 - v43 <= 44)
        {
          v32 = v33;
        }

        else
        {
          v32 = (v43 + 22);
        }

        if ((v33 - v32) <= 7)
        {
          goto LABEL_109;
        }
      }

      v30 = 0x100000012;
    }

    goto LABEL_110;
  }

  if (v77 == 0x10000000ELL)
  {
    v30 = 0;
    this[14] = this[13];
LABEL_110:
    v55 = this[3];
    v75 = this[2];
    v76 = v55;
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v30, 0x102u, &v75, "", 0, &v71);
    v56 = v76;
    if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
    }

    goto LABEL_116;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v77, &v71);
LABEL_116:
  v57 = *&v79[16];
  if (*&v79[16] && !atomic_fetch_add((*&v79[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

  if ((v79[7] & 0x80000000) != 0)
  {
    operator delete(v78[0]);
  }

  v58 = *(&v81 + 1);
  if (*(&v81 + 1) && !atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v58->__on_zero_shared)(v58);
    std::__shared_weak_count::__release_weak(v58);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v71;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = v72;
  *(a2 + 24) = v73;
  HIBYTE(v73) = 0;
  LOBYTE(v72) = 0;
  v59 = v74;
  v74 = 0uLL;
  v60 = *(a2 + 40);
  *(a2 + 32) = v59;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = *a2;
  v62 = *(&v74 + 1);
  if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v62->__on_zero_shared)(v62);
    std::__shared_weak_count::__release_weak(v62);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (!v61)
  {
    mipc::Message::deserializeTlv<mipc::mipc_nr_ecid_error_struct4,false>(__p, this, this + 16);
    *a2 = *__p;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = *&__p[8];
    *(a2 + 24) = *&__p[24];
    __p[31] = 0;
    __p[8] = 0;
    v63 = v81;
    v81 = 0uLL;
    v64 = *(a2 + 40);
    *(a2 + 32) = v63;
    if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v64->__on_zero_shared)(v64);
      std::__shared_weak_count::__release_weak(v64);
    }

    v65 = *a2;
    v66 = *(&v81 + 1);
    if (*(&v81 + 1) && !atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v66->__on_zero_shared)(v66);
      std::__shared_weak_count::__release_weak(v66);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (!v65)
    {
      mipc::Message::deserializeTlv<mipc::mipc_nr_cell_info_struct8,33ul,false>(__p, this, this + 17);
      *a2 = *__p;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = *&__p[8];
      *(a2 + 24) = *&__p[24];
      __p[31] = 0;
      __p[8] = 0;
      v67 = v81;
      v81 = 0uLL;
      v68 = *(a2 + 40);
      *(a2 + 32) = v67;
      if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v68->__on_zero_shared)(v68);
        std::__shared_weak_count::__release_weak(v68);
      }

      v69 = *a2;
      v70 = *(&v81 + 1);
      if (*(&v81 + 1) && !atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v70->__on_zero_shared)(v70);
        std::__shared_weak_count::__release_weak(v70);
      }

      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }

      if (!v69)
      {
        mipc::Message::deserializeTlv<mipc::mipc_struct_array_t<mipc::mipc_results_per_ssb_index_struct4,65535ul,false>,33ul,false>(__p, this, this + 20);
        mipc::Error::operator=(a2, __p);
        mipc::Error::~Error(__p);
      }
    }
  }
}

void sub_297D929D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t mipc::cust::Lpp_Ecid_Meas_Result_Ind::Lpp_Ecid_Meas_Result_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 30989, &v14, a3, 3);
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
  *a1 = &unk_2A1E8C008;
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
  *a1 = &unk_2A1E887B0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void sub_297D92CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Lpp_Ecid_Meas_Result_Ind::~Lpp_Ecid_Meas_Result_Ind(mipc::cust::Lpp_Ecid_Meas_Result_Ind *this)
{
  *this = &unk_2A1E887B0;
  v2 = *(this + 20);
  if (v2)
  {
    v3 = *(this + 21);
    v4 = *(this + 20);
    if (v3 != v2)
    {
      v5 = *(this + 21);
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
      v4 = *(this + 20);
    }

    *(this + 21) = v2;
    operator delete(v4);
  }

  v8 = *(this + 17);
  if (v8)
  {
    *(this + 18) = v8;
    operator delete(v8);
  }

  v9 = *(this + 16);
  *(this + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 13);
  if (v10)
  {
    *(this + 14) = v10;
    operator delete(v10);
  }

  v11 = *(this + 12);
  *(this + 12) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 11);
  *(this + 11) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  *this = &unk_2A1E85968;
  v13 = *(this + 9);
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (*(this + 63) < 0)
  {
LABEL_22:
    operator delete(*(this + 5));
  }

LABEL_23:
  v14 = *(this + 3);
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

{
  mipc::cust::Lpp_Ecid_Meas_Result_Ind::~Lpp_Ecid_Meas_Result_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_nr_ecid_error_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x103u, v23);
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
  }

  else
  {
    v9 = v25;
    v10 = *(&v25 + 1);
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
      v12 = operator new(4uLL);
      *v12 = 0;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 4)
      {
        if (v9 == 4)
        {
          v8 = 0;
          *v12 = *v10;
        }
      }

      else
      {
        v8 = 0x100000012;
      }
    }

    v14 = this[3];
    v18 = this[2];
    v19 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x103u, &v18, "", 0, a1);
    v15 = v19;
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v16 = *&v22[16];
  if (*&v22[16] && !atomic_fetch_add((*&v22[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    if ((v22[7] & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v22[7] & 0x80000000) != 0)
  {
LABEL_28:
    operator delete(__p[0]);
  }

LABEL_29:
  v17 = *(&v24 + 1);
  if (!*(&v24 + 1) || atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v23[31] & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(*&v23[8]);
    return;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if ((v23[31] & 0x80000000) != 0)
  {
    goto LABEL_36;
  }
}

void sub_297D9318C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297D931A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297D931BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_nr_cell_info_struct8,33ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v6;
  v45 = v6;
  *v43 = v6;
  *&v43[16] = v6;
  mipc::Message::findTLV(this, 0x104u, v43);
  *&v42[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v42 = v7;
  *__p = v7;
  v40 = *v43;
  if ((v43[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v43[8], *&v43[16]);
  }

  else
  {
    *__p = *&v43[8];
    *v42 = *&v43[24];
  }

  *&v42[8] = v44;
  if (*(&v44 + 1))
  {
    atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v40)
  {
    if (v40 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v40, a1);
      goto LABEL_51;
    }

    v8 = 0;
    a3[1] = *a3;
  }

  else
  {
    v9 = v45;
    v10 = *(&v45 + 1);
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v37 = a1;
      v11 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v12 = a3[1];
        v14 = v12 - *a3;
        if (v14 == 1584)
        {
          v8 = 0x100000010;
          goto LABEL_45;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v37;
          v8 = 0x100000005;
          goto LABEL_46;
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
          v24 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4) + 1;
          if (v24 > 0x555555555555555)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v13) >> 4);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          v26 = v25 >= 0x2AAAAAAAAAAAAAALL ? 0x555555555555555 : v24;
          if (v26)
          {
            if (v26 > 0x555555555555555)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(48 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[16 * (v14 >> 4)];
          *(v28 + 1) = 0u;
          *(v28 + 2) = 0u;
          v29 = &v27[48 * v26];
          *v28 = 0u;
          v23 = v28 + 48;
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
          v12[1] = 0u;
          v12[2] = 0u;
          v23 = v12 + 3;
          *v12 = 0u;
        }

        a3[1] = v23;
        if (v19 > 0x30)
        {
          break;
        }

        if (v19 != 48)
        {
          v8 = 0x100000011;
          goto LABEL_45;
        }

        v31 = *v21;
        v32 = *(v21 + 2);
        *(v23 - 2) = *(v21 + 1);
        *(v23 - 1) = v32;
        *(v23 - 3) = v31;
        if (v11 - v21 <= 52)
        {
          v10 = v11;
        }

        else
        {
          v10 = v21 + 52;
        }

        if ((v11 - v10) <= 7)
        {
          v8 = 0;
          goto LABEL_45;
        }
      }

      v8 = 0x100000012;
LABEL_45:
      a1 = v37;
    }
  }

LABEL_46:
  v33 = this[3];
  v38 = this[2];
  v39 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x104u, &v38, "", 0, a1);
  v34 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_51:
  v35 = *&v42[16];
  if (*&v42[16] && !atomic_fetch_add((*&v42[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    if ((v42[7] & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if ((v42[7] & 0x80000000) != 0)
  {
LABEL_54:
    operator delete(__p[0]);
  }

LABEL_55:
  v36 = *(&v44 + 1);
  if (!*(&v44 + 1) || atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v43[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  (v36->__on_zero_shared)(v36);
  std::__shared_weak_count::__release_weak(v36);
  if ((v43[31] & 0x80000000) != 0)
  {
LABEL_58:
    operator delete(*&v43[8]);
  }
}

void sub_297D93610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_struct_array_t<mipc::mipc_results_per_ssb_index_struct4,65535ul,false>,33ul,false>(void *a1, mipc::Message *this, void *a3)
{
  v4 = this;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70 = v6;
  v71 = v6;
  *v69 = v6;
  *&v69[16] = v6;
  mipc::Message::findTLV(this, 0x105u, v69);
  *&v68[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v68 = v7;
  *__p = v7;
  v66 = *v69;
  if ((v69[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v69[8], *&v69[16]);
  }

  else
  {
    *__p = *&v69[8];
    *v68 = *&v69[24];
  }

  *&v68[8] = v70;
  if (*(&v70 + 1))
  {
    atomic_fetch_add_explicit((*(&v70 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v66;
  if (v66 && v66 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(v4, &v66, a1);
    goto LABEL_79;
  }

  v9 = v71;
  v10 = *(&v71 + 1);
  v12 = *a3;
  v11 = a3[1];
  if (v11 != *a3)
  {
    v13 = a3[1];
    do
    {
      v15 = *(v13 - 3);
      v13 -= 3;
      v14 = v15;
      if (v15)
      {
        *(v11 - 2) = v14;
        operator delete(v14);
      }

      v11 = v13;
    }

    while (v13 != v12);
  }

  a3[1] = v12;
  if (v8)
  {
    if (v8 == 0x10000000ELL)
    {
      v8 = 0;
      v16 = *(v4 + 3);
      v64 = *(v4 + 2);
      v65 = v16;
      if (!v16)
      {
        goto LABEL_76;
      }

LABEL_75:
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_76;
    }

LABEL_74:
    v16 = *(v4 + 3);
    v64 = *(v4 + 2);
    v65 = v16;
    if (!v16)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if (v9 < 8)
  {
    v8 = 0;
    goto LABEL_74;
  }

  v61 = a1;
  v62 = v4;
  v17 = &v10[v9];
  v8 = 0x100000003;
  do
  {
    v20 = *a3;
    v21 = a3[1];
    v22 = v21 - *a3;
    if (v22 == 792)
    {
      v8 = 0x100000010;
      a1 = v61;
      v4 = v62;
      v16 = *(v62 + 3);
      v64 = *(v62 + 2);
      v65 = v16;
      if (v16)
      {
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    if ((v17 - v10) < 4)
    {
      v8 = 0x100000005;
LABEL_95:
      a1 = v61;
      v4 = v62;
      v16 = *(v62 + 3);
      v64 = *(v62 + 2);
      v65 = v16;
      if (v16)
      {
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    if (v17 - v10 <= 2)
    {
      v23 = v17;
    }

    else
    {
      v23 = v10 + 2;
    }

    v24 = v17 - v23 <= 2;
    v27 = *v23;
    v25 = (v23 + 2);
    v26 = v27;
    if (v24)
    {
      v25 = v17;
    }

    __src = v25;
    v28 = a3[2];
    if (v21 >= v28)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3) + 1;
      if (v30 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v31 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 3);
      if (2 * v31 > v30)
      {
        v30 = 2 * v31;
      }

      if (v31 >= 0x555555555555555)
      {
        v32 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        if (v32 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v33 = operator new(24 * v32);
      }

      else
      {
        v33 = 0;
      }

      v34 = &v33[8 * (v22 >> 3)];
      *v34 = 0;
      *(v34 + 1) = 0;
      *(v34 + 2) = 0;
      v35 = &v34[-v22];
      if (v20 != v21)
      {
        v36 = v20;
        v37 = v35;
        do
        {
          *v37 = *v36;
          *(v37 + 2) = v36[2];
          *v36 = 0;
          v36[1] = 0;
          v36[2] = 0;
          v36 += 3;
          v37 += 24;
        }

        while (v36 != v21);
        do
        {
          v38 = *v20;
          if (*v20)
          {
            v20[1] = v38;
            operator delete(v38);
          }

          v20 += 3;
        }

        while (v20 != v21);
        v20 = *a3;
      }

      v39 = &v33[24 * v32];
      v29 = v34 + 24;
      *a3 = v35;
      a3[1] = v34 + 24;
      a3[2] = v39;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v21 = 0;
      v21[1] = 0;
      v29 = v21 + 3;
      v21[2] = 0;
    }

    a3[1] = v29;
    if (v26 < 3)
    {
      goto LABEL_95;
    }

    v40 = *(v29 - 3);
    v41 = (43691 * v26) >> 17;
    v42 = 3 * v41;
    v43 = *(v29 - 1);
    if (0xAAAAAAAAAAAAAAABLL * (v43 - v40) >= v41)
    {
      v50 = *(v29 - 2);
      v51 = v50 - v40;
      if (0xAAAAAAAAAAAAAAABLL * (v50 - v40) >= v41)
      {
        v18 = __src;
        memmove(*(v29 - 3), __src, 3 * ((43691 * v26) >> 17));
        *(v29 - 2) = &v40[v42];
        goto LABEL_21;
      }

      if (v50 == v40)
      {
        v52 = *(v29 - 2);
        v53 = v52;
        if (v51 == v42)
        {
LABEL_72:
          *(v29 - 2) = v53;
          v18 = __src;
          goto LABEL_21;
        }
      }

      else
      {
        memmove(*(v29 - 3), __src, v50 - v40);
        v52 = *(v29 - 2);
        v53 = v52;
        if (v51 == v42)
        {
          goto LABEL_72;
        }
      }

      v54 = __src + v51;
      v55 = (&v40[v42] - v50);
      v53 = v52;
      v56 = v52;
      do
      {
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        v56 += 3;
        v54 += 3;
        v53 += 3;
        v55 -= 3;
      }

      while (v55);
      goto LABEL_72;
    }

    if (v40)
    {
      *(v29 - 2) = v40;
      operator delete(v40);
      v43 = 0;
      *(v29 - 3) = 0;
      *(v29 - 2) = 0;
      *(v29 - 1) = 0;
    }

    v44 = 0xAAAAAAAAAAAAAAABLL * v43;
    v45 = 2 * v44;
    if (2 * v44 <= v41)
    {
      v45 = (43691 * v26) >> 17;
    }

    v46 = v44 >= 0x2AAAAAAAAAAAAAAALL;
    v47 = 0x5555555555555555;
    if (!v46)
    {
      v47 = v45;
    }

    if (v47 >= 0x5555555555555556)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v48 = 3 * v47;
    v49 = operator new(3 * v47);
    *(v29 - 3) = v49;
    *(v29 - 2) = v49;
    *(v29 - 1) = &v49[v48];
    v18 = __src;
    memcpy(v49, __src, 3 * ((43691 * v26) >> 17) - (3 * (v26 / 3u) - 3) % 3u);
    *(v29 - 2) = &v49[3 * ((43691 * v26) >> 17) - (3 * (v26 / 3u) - 3) % 3u];
LABEL_21:
    v19 = (((v26 + 11) & 0xFFF8) - 4) & 0xFFFC;
    if (v17 - v18 <= v19)
    {
      v10 = v17;
    }

    else
    {
      v10 = &v18[v19];
    }
  }

  while ((v17 - v10) > 7);
  v8 = 0;
  a1 = v61;
  v4 = v62;
  v16 = *(v62 + 3);
  v64 = *(v62 + 2);
  v65 = v16;
  if (v16)
  {
    goto LABEL_75;
  }

LABEL_76:
  mipc::Message::handle<(mipc::Error::Type)2>(v4, v8, 0x105u, &v64, "", 0, a1);
  v58 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v58->__on_zero_shared)(v58);
    std::__shared_weak_count::__release_weak(v58);
  }

LABEL_79:
  v59 = *&v68[16];
  if (*&v68[16] && !atomic_fetch_add((*&v68[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v59);
    if ((v68[7] & 0x80000000) != 0)
    {
LABEL_82:
      operator delete(__p[0]);
    }
  }

  else if ((v68[7] & 0x80000000) != 0)
  {
    goto LABEL_82;
  }

  v60 = *(&v70 + 1);
  if (*(&v70 + 1) && !atomic_fetch_add((*(&v70 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
    if ((v69[31] & 0x80000000) != 0)
    {
LABEL_86:
      operator delete(*&v69[8]);
    }
  }

  else if ((v69[31] & 0x80000000) != 0)
  {
    goto LABEL_86;
  }
}

void sub_297D93D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297D93D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
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

void sub_297D93D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

unint64_t mipc::cust::Lpp_Ecid_Meas_Result_Ind::getSize(mipc::cust::Lpp_Ecid_Meas_Result_Ind *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 48 * ((v2 - v1 - 40) / 0x28uLL) + 64;
  }

  v4 = *(this + 17);
  v5 = *(this + 18);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 56 * ((v5 - v4 - 48) / 0x30uLL) + 72;
  }

  v7 = *(this + 10);
  v8 = *(this + 21);
  v9 = *(this + 20);
  if (v9 != v8)
  {
    v10 = 16;
    while (1)
    {
      v11 = v9[1] - *v9;
      if ((v11 + 4) >> 16)
      {
        break;
      }

      v10 += (v11 + 11) & 0xFFF8;
      v9 += 3;
      if (v9 == v8)
      {
        goto LABEL_13;
      }
    }
  }

  v10 = 0;
LABEL_13:
  v12 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v12 = 32;
  }

  return v12 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + v3 + 8 * (*(this + 16) != 0) + v6 + v10;
}

mipc::cust::Camp_On_Status_Ind *mipc::cust::Camp_On_Status_Ind::Camp_On_Status_Ind(mipc::cust::Camp_On_Status_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 30990, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E887F8;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  mipc::cust::Camp_On_Status_Ind::deserialize(this, v7);
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

void sub_297D93F9C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 15);
  if (v4)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
    v5 = *(v1 + 12);
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
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 13) = v5;
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

void mipc::cust::Camp_On_Status_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(__p);
  v4 = *__p;
  *a2 = *__p;
  v5 = v81;
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
  v6 = v81;
  v81 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v81 + 1);
  if (*(&v81 + 1) && !atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v9;
  v82 = v9;
  *__p = v9;
  *&__p[16] = v9;
  mipc::Message::findTLV(this, 0x101u, __p);
  *&v79[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v79 = v10;
  *v78 = v10;
  v77 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v78, *&__p[8], *&__p[16]);
  }

  else
  {
    *v78 = *&__p[8];
    *v79 = *&__p[24];
  }

  *&v79[8] = v81;
  if (*(&v81 + 1))
  {
    atomic_fetch_add_explicit((*(&v81 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v77)
  {
    if (v77 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v77, &v71);
      goto LABEL_59;
    }

    v11 = 0;
    this[13] = this[12];
  }

  else
  {
    v12 = v82;
    v13 = *(&v82 + 1);
    this[13] = this[12];
    if (v12 < 8)
    {
LABEL_52:
      v11 = 0;
    }

    else
    {
      v14 = &v13[v12];
      while (1)
      {
        v16 = this[12];
        v15 = this[13];
        v17 = v15 - v16;
        if (v15 - v16 == 288)
        {
          v11 = 0x100000010;
          goto LABEL_53;
        }

        v18 = v14 - v13;
        if ((v14 - v13) < 4)
        {
          v11 = 0x100000005;
          goto LABEL_53;
        }

        v19 = v13 + 2;
        if (v18 <= 2)
        {
          v19 = v14;
        }

        v20 = v14 - v19 <= 2;
        v23 = *v19;
        v21 = (v19 + 2);
        v22 = v23;
        v24 = v20 ? v14 : v21;
        v25 = this[14];
        if (v15 >= v25)
        {
          v27 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3) + 1;
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

          v31 = &v30[8 * (v17 >> 3)];
          v32 = &v30[24 * v29];
          *v31 = 0;
          *(v31 + 1) = 0;
          *(v31 + 2) = 0;
          v26 = v31 + 24;
          v33 = &v31[-v17];
          memcpy(&v31[-v17], v16, v17);
          this[12] = v33;
          this[13] = v26;
          this[14] = v32;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v15 = 0;
          *(v15 + 1) = 0;
          v26 = v15 + 24;
          *(v15 + 2) = 0;
        }

        this[13] = v26;
        if (v22 > 0x18)
        {
          break;
        }

        if (v22 != 24)
        {
          v11 = 0x100000011;
          goto LABEL_53;
        }

        v34 = *v24;
        *(v26 - 1) = *(v24 + 2);
        *(v26 - 3) = v34;
        if (v14 - v24 <= 28)
        {
          v13 = v14;
        }

        else
        {
          v13 = (v24 + 14);
        }

        if ((v14 - v13) <= 7)
        {
          goto LABEL_52;
        }
      }

      v11 = 0x100000012;
    }
  }

LABEL_53:
  v35 = this[3];
  v75 = this[2];
  v76 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v11, 0x101u, &v75, "", 0, &v71);
  v36 = v76;
  if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

LABEL_59:
  v37 = *&v79[16];
  if (*&v79[16] && !atomic_fetch_add((*&v79[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  if ((v79[7] & 0x80000000) != 0)
  {
    operator delete(v78[0]);
  }

  v38 = *(&v81 + 1);
  if (*(&v81 + 1) && !atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v71;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v72;
  a2[3] = v73;
  HIBYTE(v73) = 0;
  LOBYTE(v72) = 0;
  v39 = v74;
  v74 = 0uLL;
  v40 = a2[5];
  *(a2 + 2) = v39;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  v41 = *a2;
  v42 = *(&v74 + 1);
  if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
    if (v41)
    {
      return;
    }
  }

  else if (v41)
  {
    return;
  }

  *&v43 = 0xAAAAAAAAAAAAAAAALL;
  *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v43;
  v82 = v43;
  *__p = v43;
  *&__p[16] = v43;
  mipc::Message::findTLV(this, 0x102u, __p);
  *&v79[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v44 = 0xAAAAAAAAAAAAAAAALL;
  *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v79 = v44;
  *v78 = v44;
  v77 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v78, *&__p[8], *&__p[16]);
  }

  else
  {
    *v78 = *&__p[8];
    *v79 = *&__p[24];
  }

  *&v79[8] = v81;
  if (*(&v81 + 1))
  {
    atomic_fetch_add_explicit((*(&v81 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (!v77)
  {
    v46 = v82;
    v47 = *(&v82 + 1);
    v48 = this[15];
    this[16] = v48;
    if (v46 < 8)
    {
LABEL_118:
      v45 = 0;
    }

    else
    {
      v49 = &v47[v46];
      while (1)
      {
        v50 = this[15];
        v51 = v48 - v50;
        if (v48 - v50 == 48)
        {
          v45 = 0x100000010;
          goto LABEL_119;
        }

        v52 = v49 - v47;
        if ((v49 - v47) < 4)
        {
          v45 = 0x100000005;
          goto LABEL_119;
        }

        v53 = v47 + 2;
        if (v52 <= 2)
        {
          v53 = v49;
        }

        v20 = v49 - v53 <= 2;
        v56 = *v53;
        v54 = (v53 + 2);
        v55 = v56;
        v57 = v20 ? v49 : v54;
        v58 = this[17];
        if (v48 >= v58)
        {
          v59 = (v51 >> 2) + 1;
          if (v59 >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v60 = v58 - v50;
          if (v60 >> 1 > v59)
          {
            v59 = v60 >> 1;
          }

          v61 = v60 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v59;
          if (v61)
          {
            if (v61 >> 62)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v62 = operator new(4 * v61);
          }

          else
          {
            v62 = 0;
          }

          v63 = &v62[4 * (v51 >> 2)];
          *v63 = 0;
          v48 = v63 + 4;
          memcpy(v62, v50, v51);
          this[15] = v62;
          this[16] = v48;
          this[17] = &v62[4 * v61];
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v48++ = 0;
        }

        this[16] = v48;
        if (v55 > 4)
        {
          break;
        }

        if (v55 != 4)
        {
          v45 = 0x100000011;
          goto LABEL_119;
        }

        v47 = (v57 + 2);
        *(v48 - 1) = *v57;
        if (v49 - v57 <= 4)
        {
          v47 = v49;
        }

        if ((v49 - v47) <= 7)
        {
          goto LABEL_118;
        }
      }

      v45 = 0x100000012;
    }

    goto LABEL_119;
  }

  if (v77 == 0x10000000ELL)
  {
    v45 = 0;
    this[16] = this[15];
LABEL_119:
    v64 = this[3];
    v75 = this[2];
    v76 = v64;
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v45, 0x102u, &v75, "", 0, &v71);
    v65 = v76;
    if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v65->__on_zero_shared)(v65);
      std::__shared_weak_count::__release_weak(v65);
    }

    goto LABEL_125;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v77, &v71);
LABEL_125:
  v66 = *&v79[16];
  if (*&v79[16] && !atomic_fetch_add((*&v79[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v66->__on_zero_shared)(v66);
    std::__shared_weak_count::__release_weak(v66);
  }

  if ((v79[7] & 0x80000000) != 0)
  {
    operator delete(v78[0]);
  }

  v67 = *(&v81 + 1);
  if (*(&v81 + 1) && !atomic_fetch_add((*(&v81 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v67->__on_zero_shared)(v67);
    std::__shared_weak_count::__release_weak(v67);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v71;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v72;
  a2[3] = v73;
  HIBYTE(v73) = 0;
  LOBYTE(v72) = 0;
  v68 = v74;
  v74 = 0uLL;
  v69 = a2[5];
  *(a2 + 2) = v68;
  if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v69->__on_zero_shared)(v69);
    std::__shared_weak_count::__release_weak(v69);
  }

  v70 = *(&v74 + 1);
  if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v70->__on_zero_shared)(v70);
    std::__shared_weak_count::__release_weak(v70);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }
}

void sub_297D94A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t mipc::cust::Camp_On_Status_Ind::Camp_On_Status_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 30990, &v14, a3, 3);
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
  *a1 = &unk_2A1E8C050;
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
  *a1 = &unk_2A1E887F8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return a1;
}

void sub_297D94D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Camp_On_Status_Ind::~Camp_On_Status_Ind(mipc::cust::Camp_On_Status_Ind *this)
{
  *this = &unk_2A1E887F8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
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
  *this = &unk_2A1E887F8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
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
  *this = &unk_2A1E887F8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
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

uint64_t mipc::cust::Camp_On_Status_Ind::getSize(mipc::cust::Camp_On_Status_Ind *this)
{
  v1 = *(this + 12);
  v2 = *(this + 13);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((2 * (((v2 - v1 - 24) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFE0) + 48;
  }

  v4 = *(this + 15);
  v5 = *(this + 16);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2 * (v5 - v4) + 16;
  }

  v7 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v7 = 32;
  }

  return v7 + 8 * (*(this + 11) != 0) + v3 + v6;
}

mipc::cust::Config_Rat_Ind *mipc::cust::Config_Rat_Ind::Config_Rat_Ind(mipc::cust::Config_Rat_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 30991, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E88840;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::cust::Config_Rat_Ind::deserialize(this, v7);
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

void sub_297D95318(_Unwind_Exception *a1)
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

void mipc::cust::Config_Rat_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x101u, &v16);
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
    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 13, 0x102u, &v16);
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

void *mipc::cust::Config_Rat_Ind::Config_Rat_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 30991, &v14, a3, 3);
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
  *a1 = &unk_2A1E8C098;
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
  *a1 = &unk_2A1E88840;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297D95984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Config_Rat_Ind::~Config_Rat_Ind(mipc::cust::Config_Rat_Ind *this)
{
  *this = &unk_2A1E88840;
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
  *this = &unk_2A1E88840;
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
  *this = &unk_2A1E88840;
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

uint64_t mipc::cust::Config_Rat_Ind::getSize(mipc::cust::Config_Rat_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0);
}

mipc::cust::Sys_Idc_Cell_Cfg_Ind *mipc::cust::Sys_Idc_Cell_Cfg_Ind::Sys_Idc_Cell_Cfg_Ind(mipc::cust::Sys_Idc_Cell_Cfg_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 30992, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *(this + 88) = 0u;
  *this = &unk_2A1E88888;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  mipc::cust::Sys_Idc_Cell_Cfg_Ind::deserialize(this, &v7);
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

void sub_297D95F2C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 21);
  *(v1 + 21) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 20);
    *(v1 + 20) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 19);
      *(v1 + 19) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = *(v1 + 20);
    *(v1 + 20) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 19);
  *(v1 + 19) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 18);
    *(v1 + 18) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v6);
  v7 = *(v1 + 18);
  *(v1 + 18) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 15);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v7);
  v8 = *(v1 + 15);
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 12);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v1 + 16) = v8;
  operator delete(v8);
  v9 = *(v1 + 12);
  if (!v9)
  {
LABEL_7:
    v10 = *v2;
    *v2 = 0;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 13) = v9;
  operator delete(v9);
  v10 = *v2;
  *v2 = 0;
  if (!v10)
  {
LABEL_8:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_15:
  operator delete(v10);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Idc_Cell_Cfg_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v29);
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
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v29);
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
  mipc::Message::deserializeTlv<mipc::mipc_idc_carrier_info_struct4,24ul,false>(&v29, this, this + 12, 0x101u);
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
    mipc::Message::deserializeTlv<mipc::mipc_idc_carrier_info_struct4,24ul,false>(&v29, this, this + 15, 0x102u);
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
      mipc::Message::deserializeTlv<unsigned char,false>(this, this + 18, 0x103u, &v29);
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
        mipc::Message::deserializeTlv<unsigned char,false>(this, this + 19, 0x104u, &v29);
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
          mipc::Message::deserializeTlv<unsigned char,false>(this, this + 20, 0x105u, &v29);
          v28 = *mipc::Error::operator=(a2, &v29);
          mipc::Error::~Error(&v29);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned char,false>(this, this + 21, 0x106u, &v29);
            mipc::Error::operator=(a2, &v29);
            mipc::Error::~Error(&v29);
          }
        }
      }
    }
  }
}

uint64_t mipc::cust::Sys_Idc_Cell_Cfg_Ind::Sys_Idc_Cell_Cfg_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 30992, &v14, a3, 3);
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
  *a1 = &unk_2A1E8C0E0;
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
  *a1 = &unk_2A1E88888;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return a1;
}

void sub_297D96990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Idc_Cell_Cfg_Ind::~Sys_Idc_Cell_Cfg_Ind(mipc::cust::Sys_Idc_Cell_Cfg_Ind *this)
{
  *this = &unk_2A1E88888;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 18);
  *(this + 18) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
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
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(this + 63) < 0)
  {
LABEL_18:
    operator delete(*(this + 5));
  }

LABEL_19:
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
  mipc::cust::Sys_Idc_Cell_Cfg_Ind::~Sys_Idc_Cell_Cfg_Ind(this);

  operator delete(v1);
}

unint64_t mipc::cust::Sys_Idc_Cell_Cfg_Ind::getSize(int64x2_t *this)
{
  v1 = this[6].i64[0];
  v2 = this[6].i64[1];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 24 * ((v2 - v1 - 16) >> 4) + 40;
  }

  v4 = this[7].i64[1];
  v5 = this[8].i64[0];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 24 * ((v5 - v4 - 16) >> 4) + 40;
  }

  v7 = 24;
  if (HIDWORD(this[2].i64[0]))
  {
    v7 = 32;
  }

  v8 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v8, vceqzq_s64(this[9])), vbicq_s8(v8, vceqzq_s64(this[10])))) + 8 * (this[5].i64[1] != 0) + v7 + v6 + v3;
}

mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind *mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind::Sys_Idc_Tx_Blank_Stat_Ind(mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 30993, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *(this + 88) = 0u;
  *this = &unk_2A1E888D0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind::deserialize(this, &v7);
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

void sub_297D96D54(_Unwind_Exception *a1)
{
  v4 = *(v1 + 22);
  *(v1 + 22) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 21);
    *(v1 + 21) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 20);
      *(v1 + 20) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v5 = *(v1 + 21);
    *(v1 + 21) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 20);
  *(v1 + 20) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 19);
    *(v1 + 19) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v6);
  v7 = *(v1 + 19);
  *(v1 + 19) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 18);
    *(v1 + 18) = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v7);
  v8 = *(v1 + 18);
  *(v1 + 18) = 0;
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 17);
    *(v1 + 17) = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v8);
  v9 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v9);
  v10 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 15);
    *(v1 + 15) = 0;
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v10);
  v11 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (!v11)
  {
LABEL_9:
    v12 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v11);
  v12 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (!v12)
  {
LABEL_10:
    v13 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v12);
  v13 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v13)
  {
LABEL_11:
    v14 = *(v1 + 12);
    *(v1 + 12) = 0;
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v13);
  v14 = *(v1 + 12);
  *(v1 + 12) = 0;
  if (!v14)
  {
LABEL_12:
    v15 = *v2;
    *v2 = 0;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v14);
  v15 = *v2;
  *v2 = 0;
  if (!v15)
  {
LABEL_13:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(v15);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v34);
  *a2 = v34;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v36;
  HIBYTE(v36) = 0;
  LOBYTE(__p) = 0;
  v4 = v37;
  v37 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v37 + 1);
  if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 11, 0x100u, &v34);
  *a2 = v34;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v36;
  HIBYTE(v36) = 0;
  LOBYTE(__p) = 0;
  v8 = v37;
  v37 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v37 + 1);
  if (!*(&v37 + 1) || atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v36) & 0x80000000) == 0)
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
  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 12, 0x101u, &v34);
  *a2 = v34;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v36;
  HIBYTE(v36) = 0;
  LOBYTE(__p) = 0;
  v12 = v37;
  v37 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v37 + 1);
  if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 13, 0x102u, &v34);
    *a2 = v34;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v36;
    HIBYTE(v36) = 0;
    LOBYTE(__p) = 0;
    v16 = v37;
    v37 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v37 + 1);
    if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<unsigned char,false>(this, this + 14, 0x103u, &v34);
      *a2 = v34;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v36;
      HIBYTE(v36) = 0;
      LOBYTE(__p) = 0;
      v20 = v37;
      v37 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v37 + 1);
      if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<unsigned int,false>(this, this + 15, 0x104u, &v34);
        *a2 = v34;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v36;
        HIBYTE(v36) = 0;
        LOBYTE(__p) = 0;
        v24 = v37;
        v37 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v37 + 1);
        if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<unsigned int,false>(this, this + 16, 0x105u, &v34);
          v28 = *mipc::Error::operator=(a2, &v34);
          mipc::Error::~Error(&v34);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned int,false>(this, this + 17, 0x106u, &v34);
            v29 = *mipc::Error::operator=(a2, &v34);
            mipc::Error::~Error(&v34);
            if (!v29)
            {
              mipc::Message::deserializeTlv<unsigned int,false>(this, this + 18, 0x107u, &v34);
              v30 = *mipc::Error::operator=(a2, &v34);
              mipc::Error::~Error(&v34);
              if (!v30)
              {
                mipc::Message::deserializeTlv<unsigned int,false>(this, this + 19, 0x108u, &v34);
                v31 = *mipc::Error::operator=(a2, &v34);
                mipc::Error::~Error(&v34);
                if (!v31)
                {
                  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 20, 0x109u, &v34);
                  v32 = *mipc::Error::operator=(a2, &v34);
                  mipc::Error::~Error(&v34);
                  if (!v32)
                  {
                    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 21, 0x10Au, &v34);
                    v33 = *mipc::Error::operator=(a2, &v34);
                    mipc::Error::~Error(&v34);
                    if (!v33)
                    {
                      mipc::Message::deserializeTlv<unsigned int,false>(this, this + 22, 0x10Bu, &v34);
                      mipc::Error::operator=(a2, &v34);
                      mipc::Error::~Error(&v34);
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

uint64_t mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind::Sys_Idc_Tx_Blank_Stat_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 30993, &v14, a3, 3);
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
  *a1 = &unk_2A1E8C128;
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
  *a1 = &unk_2A1E888D0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void sub_297D979A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind::~Sys_Idc_Tx_Blank_Stat_Ind(mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind *this)
{
  *this = &unk_2A1E888D0;
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
    operator delete(v5);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
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
    operator delete(v11);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
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
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (*(this + 63) < 0)
  {
LABEL_28:
    operator delete(*(this + 5));
  }

LABEL_29:
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
  mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind::~Sys_Idc_Tx_Blank_Stat_Ind(this);

  operator delete(v1);
}

uint64_t mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind::getSize(mipc::cust::Sys_Idc_Tx_Blank_Stat_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(*(this + 6))), vbicq_s8(v2, vceqzq_s64(*(this + 8)))), vaddq_s64(vbicq_s8(v2, vceqzq_s64(*(this + 7))), vbicq_s8(v2, vceqzq_s64(*(this + 9)))))) + 8 * (*(this + 11) != 0) + v1 + 8 * (*(this + 20) != 0) + vaddvq_s64(vbicq_s8(v2, vceqzq_s64(*(this + 168))));
}

uint64_t mipc::tlv<mipc::mipc_byte_array_t<8ul,false>,false>::deserialize(void **a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
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

  if (*a2)
  {
    if (*a2 == 0x10000000ELL)
    {
      return 0;
    }

    else
    {
      return *a2;
    }
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = operator new(0x18uLL);
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v10 = *a1;
    *a1 = v9;
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v10[1] = v11;
        operator delete(v11);
      }

      operator delete(v10);
      v9 = *a1;
    }

    if (v7)
    {
      if (v7 <= 8)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v9, v8, &v8[v7], v7);
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

double mipc::dale_bsp::Fep_Start_Read_Session_Req::Fep_Start_Read_Session_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3584;
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
  *a1 = &unk_2A1E8C170;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

{
  *(a1 + 8) = -3584;
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
  *a1 = &unk_2A1E8C170;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

void mipc::dale_bsp::Fep_Start_Read_Session_Req::~Fep_Start_Read_Session_Req(mipc::dale_bsp::Fep_Start_Read_Session_Req *this)
{
  *this = &unk_2A1E8C170;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(this + 13);
    v6 = *(this + 12);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 12);
    }

    *(this + 13) = v4;
    operator delete(v6);
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
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(this + 63) < 0)
  {
LABEL_18:
    operator delete(*(this + 5));
  }

LABEL_19:
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
  mipc::dale_bsp::Fep_Start_Read_Session_Req::~Fep_Start_Read_Session_Req(this);

  operator delete(v1);
}

void mipc::dale_bsp::Fep_Start_Read_Session_Req::serialize(mipc::dale_bsp::Fep_Start_Read_Session_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 96);
  v5 = *(this + 6);
  v6 = *(this + 13);
  v7 = *(this + 12);
  if (v7 != v6)
  {
    v8 = 16;
    while (1)
    {
      v9 = *(v7 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v7 + 8);
      }

      if ((v9 + 5) >> 16)
      {
        break;
      }

      v8 += (v9 + 12) & 0xFFF8;
      v7 += 24;
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }
  }

  v8 = 0;
LABEL_9:
  v10 = 24;
  if (!*(this + 11))
  {
    v10 = 16;
  }

  v11 = v8 + v10 + 8 * (*(this + 15) != 0);
  v12 = *(this + 16) != 0;
  v52[1] = 0;
  v53 = 0;
  v13 = v11 + 8 * v12;
  v52[0] = 0;
  if (v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v14 = operator new(v11 + 8 * v12);
    v52[0] = v14;
    v53 = &v14[v13];
    bzero(v14, v13);
    v52[1] = &v14[v13];
  }

  else
  {
    v14 = 0;
  }

  v51 = v14;
  v50 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v45, this, &v51);
  v15 = v48;
  *&__p[1] = *v46;
  __p[3] = v47;
  __p[0] = v45;
  v50 = v48;
  if (v45)
  {
    *a2 = v45;
    *(a2 + 8) = *&__p[1];
    v16 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v16;
    *(a2 + 32) = v15;
LABEL_90:
    *(a2 + 48) = 1;
    goto LABEL_91;
  }

  if (*(this + 11))
  {
    *v51 = 256;
    v17 = v51++;
    v17[1] = 4;
    v18 = v51++;
    *(v18 + 1) = **(this + 11);
    v51 += 2;
  }

  else if (!*(this + 4))
  {
    v19 = 0x10000000FLL;
    goto LABEL_21;
  }

  v19 = 0;
LABEL_21:
  v54 = 0;
  v55 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v19, 0x100u, &v54, "", 0, &v45);
  v20 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    __p[0] = v45;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_24:
    operator delete(__p[1]);
  }

LABEL_25:
  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v21 = v48;
  v48 = 0uLL;
  v22 = *(&v50 + 1);
  v50 = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v23 = *(&v48 + 1);
    v24 = __p[0];
    if (!*(&v48 + 1))
    {
LABEL_29:
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_37:
      operator delete(v46[0]);
      if (v24)
      {
        goto LABEL_89;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v23 = *(&v48 + 1);
    v24 = __p[0];
    if (!*(&v48 + 1))
    {
      goto LABEL_29;
    }
  }

  if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if (SHIBYTE(v47) < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v24)
  {
    goto LABEL_89;
  }

LABEL_38:
  mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,30ul,true>(&v45, this, v4, &v51);
  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v25 = v48;
  v48 = 0uLL;
  v26 = *(&v50 + 1);
  v50 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v48 + 1);
  v28 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
    if (!v28)
    {
      goto LABEL_51;
    }

LABEL_89:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v50;
    goto LABEL_90;
  }

  if (v28)
  {
    goto LABEL_89;
  }

LABEL_51:
  if (*(this + 15))
  {
    *v51 = 258;
    v29 = v51++;
    v29[1] = 4;
    v30 = v51++;
    *(v30 + 1) = **(this + 15);
    v51 += 2;
  }

  v54 = 0;
  v55 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v54, "", 0, &v45);
  v31 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v32 = v48;
  v48 = 0uLL;
  v33 = *(&v50 + 1);
  v50 = v32;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(&v48 + 1);
  v35 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v35)
  {
    goto LABEL_89;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, this + 16, 259, &v51, &v45);
  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v36 = v48;
  v48 = 0uLL;
  v37 = *(&v50 + 1);
  v50 = v36;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(&v48 + 1);
  v39 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v39)
  {
    goto LABEL_89;
  }

  (*(*this + 32))(&v45, this, v52);
  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v40 = v48;
  v48 = 0uLL;
  v41 = *(&v50 + 1);
  v50 = v40;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *(&v48 + 1);
  v43 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v43)
  {
    goto LABEL_89;
  }

  *a2 = *v52;
  *(a2 + 16) = v53;
  v52[1] = 0;
  v53 = 0;
  v52[0] = 0;
  *(a2 + 48) = 0;
  v44 = *(&v50 + 1);
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

LABEL_91:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }
}

void sub_297D98BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::dale_bsp::Fep_Start_Read_Session_Req::getSize(mipc::dale_bsp::Fep_Start_Read_Session_Req *this)
{
  v1 = *(this + 6);
  v2 = *(this + 13);
  v3 = *(this + 12);
  if (v3 != v2)
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
        goto LABEL_9;
      }
    }
  }

  v4 = 0;
LABEL_9:
  v6 = 24;
  if (!*(this + 11))
  {
    v6 = 16;
  }

  return v4 + v6 + 8 * (*(this + 15) != 0) + 8 * (*(this + 16) != 0);
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,30ul,true>(uint64_t a1, uint64_t a2, const void ***a3, uint64_t *a4)
{
  v7 = 0x100000010;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    if (*(a2 + 32))
    {
LABEL_7:
      v7 = 0;
      v38 = 0;
      v39 = 0;
      goto LABEL_47;
    }

    v7 = 0x10000000FLL;
LABEL_21:
    if (v8 == v9)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 - v8);
  if (v10 > 0x1E)
  {
    goto LABEL_21;
  }

  v11 = *(a2 + 14) - v10;
  *(a2 + 14) = v11;
  if (v11 < 0x100u)
  {
    v7 = 0x100000002;
    if (v8 == v9)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  v13 = v11 + 1;
  **a4 = 257;
  v14 = (*a4 + 2);
  *a4 = v14;
  *v14 = 0;
  v15 = (*a4 + 2);
  *a4 = v15;
  *v15 = 0;
  v16 = (*a4 + 4);
  *a4 = v16;
  *v16 = 0;
  v17 = (*a4 + 4);
  *a4 = v17;
  *v17 = v11 + 1;
  v18 = (*a4 + 2);
  *a4 = v18;
  *v18 = v10;
  v19 = (*a4 + 2);
  *a4 = v19;
  v20 = *a3;
  if (*a3 == a3[1])
  {
    goto LABEL_7;
  }

  while (1)
  {
    v24 = *(v20 + 23);
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v20 + 4);
    }

    *v19 = v13;
    v25 = (*a4 + 2);
    *a4 = v25;
    *v25 = v24 + 1;
    v26 = (*a4 + 2);
    *a4 = v26;
    v27 = *(v20 + 23);
    if ((v27 & 0x8000000000000000) == 0)
    {
      if (v27 > 0x63)
      {
        break;
      }

      v21 = v20;
      goto LABEL_12;
    }

    v27 = v20[1];
    if (v27 > 0x63)
    {
      break;
    }

    v21 = *v20;
LABEL_12:
    memcpy(v26, v21, v27);
    v23 = (*a4 + v27);
    *a4 = v23;
    *v23 = 0;
    v22 = *a4 + 1;
    *a4 = v22;
    LOWORD(v23) = *(v20 + 23);
    if (v23 < 0)
    {
      v23 = v20[1];
    }

    v19 = (v22 + (((v23 + 12) & 0xFFF8) - v23 - 5));
    *a4 = v19;
    v20 += 3;
    ++v13;
    if (v20 == a3[1])
    {
      goto LABEL_7;
    }
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
LABEL_5:
    v38 = 0;
    v39 = 0;
    goto LABEL_47;
  }

LABEL_22:
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 16;
  while (1)
  {
    v29 = *(v8 + 23);
    if (v29 < 0)
    {
      v29 = v8[1];
    }

    if ((v29 + 5) >> 16)
    {
      break;
    }

    v28 += (v29 + 12) & 0xFFF8;
    v8 += 3;
    if (v8 == v9)
    {
      goto LABEL_29;
    }
  }

  v28 = 0;
LABEL_29:
  v40 = v28;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v40, &v38);
  v30 = v38;
  v31 = *v38;
  v32 = *a3;
  if (*a3 != a3[1])
  {
    while (2)
    {
      v40 = 0xAAAAAAAAAAAAAAAALL;
      v41 = 0xAAAAAAAAAAAAAAAALL;
      v33 = *(v32 + 23);
      if ((v33 & 0x8000000000000000) != 0)
      {
        v33 = v32[1];
        if (!v33)
        {
          goto LABEL_41;
        }

        v34 = *v32;
        v43 = *v32;
LABEL_37:
        v42 = &v34[v33];
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v43, &v42, &v40);
        if (v40)
        {
          memcpy(v31, *v40, *(v40 + 8) - *v40);
          v31 += *(v40 + 8) - *v40;
        }

        v35 = v41;
        if (v41 && !atomic_fetch_add((v41 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v35->__on_zero_shared)(v35);
          std::__shared_weak_count::__release_weak(v35);
        }
      }

      else
      {
        if (*(v32 + 23))
        {
          v43 = v32;
          v34 = v32;
          goto LABEL_37;
        }

LABEL_41:
        v40 = 0;
        v41 = 0;
      }

      v32 += 3;
      if (v32 == a3[1])
      {
        v30 = v38;
        break;
      }

      continue;
    }
  }

  if (v31 != v30[1])
  {
    v36 = v30[1];
    v30[1] = v31;
  }

LABEL_47:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v7, 0x101u, &v38, "", 0, a1);
  v37 = v39;
  if (v39)
  {
    if (!atomic_fetch_add((v39 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }
  }
}

void sub_297D990CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297D990E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::dale_bsp::Fep_Start_Read_Session_Cnf *mipc::dale_bsp::Fep_Start_Read_Session_Cnf::Fep_Start_Read_Session_Cnf(mipc::dale_bsp::Fep_Start_Read_Session_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61952, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E8C1B8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::dale_bsp::Fep_Start_Read_Session_Cnf::deserialize(this, v7);
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

void sub_297D9922C(_Unwind_Exception *a1)
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

void mipc::dale_bsp::Fep_Start_Read_Session_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v12);
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
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x101u, &v12);
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

void *mipc::dale_bsp::Fep_Start_Read_Session_Cnf::Fep_Start_Read_Session_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61952, &v14, a3, 2);
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
  *a1 = &unk_2A1E8D8E0;
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
  *a1 = &unk_2A1E8C1B8;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297D99768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_bsp::Fep_Start_Read_Session_Cnf::~Fep_Start_Read_Session_Cnf(mipc::dale_bsp::Fep_Start_Read_Session_Cnf *this)
{
  *this = &unk_2A1E8C1B8;
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
  *this = &unk_2A1E8C1B8;
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
  *this = &unk_2A1E8C1B8;
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

uint64_t mipc::dale_bsp::Fep_Start_Read_Session_Cnf::getSize(mipc::dale_bsp::Fep_Start_Read_Session_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::dale_bsp::Fep_Start_Write_Session_Req::Fep_Start_Write_Session_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3583;
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
  *a1 = &unk_2A1E8C200;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

{
  *(a1 + 8) = -3583;
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
  *a1 = &unk_2A1E8C200;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

void mipc::dale_bsp::Fep_Start_Write_Session_Req::~Fep_Start_Write_Session_Req(mipc::dale_bsp::Fep_Start_Write_Session_Req *this)
{
  *this = &unk_2A1E8C200;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(this + 13);
    v6 = *(this + 12);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 12);
    }

    *(this + 13) = v4;
    operator delete(v6);
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
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(this + 63) < 0)
  {
LABEL_18:
    operator delete(*(this + 5));
  }

LABEL_19:
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
  mipc::dale_bsp::Fep_Start_Write_Session_Req::~Fep_Start_Write_Session_Req(this);

  operator delete(v1);
}

void mipc::dale_bsp::Fep_Start_Write_Session_Req::serialize(mipc::dale_bsp::Fep_Start_Write_Session_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 96);
  v5 = *(this + 6);
  v6 = *(this + 13);
  v7 = *(this + 12);
  if (v7 != v6)
  {
    v8 = 16;
    while (1)
    {
      v9 = *(v7 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v7 + 8);
      }

      if ((v9 + 5) >> 16)
      {
        break;
      }

      v8 += (v9 + 12) & 0xFFF8;
      v7 += 24;
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }
  }

  v8 = 0;
LABEL_9:
  v10 = 24;
  if (!*(this + 11))
  {
    v10 = 16;
  }

  v11 = v8 + v10 + 8 * (*(this + 15) != 0);
  v12 = *(this + 16) != 0;
  v52[1] = 0;
  v53 = 0;
  v13 = v11 + 8 * v12;
  v52[0] = 0;
  if (v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v14 = operator new(v11 + 8 * v12);
    v52[0] = v14;
    v53 = &v14[v13];
    bzero(v14, v13);
    v52[1] = &v14[v13];
  }

  else
  {
    v14 = 0;
  }

  v51 = v14;
  v50 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v45, this, &v51);
  v15 = v48;
  *&__p[1] = *v46;
  __p[3] = v47;
  __p[0] = v45;
  v50 = v48;
  if (v45)
  {
    *a2 = v45;
    *(a2 + 8) = *&__p[1];
    v16 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v16;
    *(a2 + 32) = v15;
LABEL_90:
    *(a2 + 48) = 1;
    goto LABEL_91;
  }

  if (*(this + 11))
  {
    *v51 = 256;
    v17 = v51++;
    v17[1] = 4;
    v18 = v51++;
    *(v18 + 1) = **(this + 11);
    v51 += 2;
  }

  else if (!*(this + 4))
  {
    v19 = 0x10000000FLL;
    goto LABEL_21;
  }

  v19 = 0;
LABEL_21:
  v54 = 0;
  v55 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v19, 0x100u, &v54, "", 0, &v45);
  v20 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    __p[0] = v45;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_24:
    operator delete(__p[1]);
  }

LABEL_25:
  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v21 = v48;
  v48 = 0uLL;
  v22 = *(&v50 + 1);
  v50 = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v23 = *(&v48 + 1);
    v24 = __p[0];
    if (!*(&v48 + 1))
    {
LABEL_29:
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_37:
      operator delete(v46[0]);
      if (v24)
      {
        goto LABEL_89;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v23 = *(&v48 + 1);
    v24 = __p[0];
    if (!*(&v48 + 1))
    {
      goto LABEL_29;
    }
  }

  if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if (SHIBYTE(v47) < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v24)
  {
    goto LABEL_89;
  }

LABEL_38:
  mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,30ul,true>(&v45, this, v4, &v51);
  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v25 = v48;
  v48 = 0uLL;
  v26 = *(&v50 + 1);
  v50 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v48 + 1);
  v28 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
    if (!v28)
    {
      goto LABEL_51;
    }

LABEL_89:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v50;
    goto LABEL_90;
  }

  if (v28)
  {
    goto LABEL_89;
  }

LABEL_51:
  if (*(this + 15))
  {
    *v51 = 258;
    v29 = v51++;
    v29[1] = 4;
    v30 = v51++;
    *(v30 + 1) = **(this + 15);
    v51 += 2;
  }

  v54 = 0;
  v55 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v54, "", 0, &v45);
  v31 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v32 = v48;
  v48 = 0uLL;
  v33 = *(&v50 + 1);
  v50 = v32;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(&v48 + 1);
  v35 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v35)
  {
    goto LABEL_89;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, this + 16, 259, &v51, &v45);
  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v36 = v48;
  v48 = 0uLL;
  v37 = *(&v50 + 1);
  v50 = v36;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(&v48 + 1);
  v39 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v39)
  {
    goto LABEL_89;
  }

  (*(*this + 32))(&v45, this, v52);
  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46[0]) = 0;
  v40 = v48;
  v48 = 0uLL;
  v41 = *(&v50 + 1);
  v50 = v40;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *(&v48 + 1);
  v43 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v43)
  {
    goto LABEL_89;
  }

  *a2 = *v52;
  *(a2 + 16) = v53;
  v52[1] = 0;
  v53 = 0;
  v52[0] = 0;
  *(a2 + 48) = 0;
  v44 = *(&v50 + 1);
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

LABEL_91:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }
}

void sub_297D9A70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::dale_bsp::Fep_Start_Write_Session_Req::getSize(mipc::dale_bsp::Fep_Start_Write_Session_Req *this)
{
  v1 = *(this + 6);
  v2 = *(this + 13);
  v3 = *(this + 12);
  if (v3 != v2)
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
        goto LABEL_9;
      }
    }
  }

  v4 = 0;
LABEL_9:
  v6 = 24;
  if (!*(this + 11))
  {
    v6 = 16;
  }

  return v4 + v6 + 8 * (*(this + 15) != 0) + 8 * (*(this + 16) != 0);
}

mipc::dale_bsp::Fep_Start_Write_Session_Cnf *mipc::dale_bsp::Fep_Start_Write_Session_Cnf::Fep_Start_Write_Session_Cnf(mipc::dale_bsp::Fep_Start_Write_Session_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61953, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E8C248;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::dale_bsp::Fep_Start_Write_Session_Cnf::deserialize(this, v7);
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

void sub_297D9A918(_Unwind_Exception *a1)
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

void mipc::dale_bsp::Fep_Start_Write_Session_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v12);
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
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x101u, &v12);
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

void *mipc::dale_bsp::Fep_Start_Write_Session_Cnf::Fep_Start_Write_Session_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61953, &v14, a3, 2);
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
  *a1 = &unk_2A1E8D928;
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
  *a1 = &unk_2A1E8C248;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297D9AE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_bsp::Fep_Start_Write_Session_Cnf::~Fep_Start_Write_Session_Cnf(mipc::dale_bsp::Fep_Start_Write_Session_Cnf *this)
{
  *this = &unk_2A1E8C248;
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
  *this = &unk_2A1E8C248;
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
  *this = &unk_2A1E8C248;
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

uint64_t mipc::dale_bsp::Fep_Start_Write_Session_Cnf::getSize(mipc::dale_bsp::Fep_Start_Write_Session_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::dale_bsp::Fep_Read_Get_File_Size_Req::Fep_Read_Get_File_Size_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3582;
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
  *a1 = &unk_2A1E8C290;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = -3582;
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
  *a1 = &unk_2A1E8C290;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::dale_bsp::Fep_Read_Get_File_Size_Req::~Fep_Read_Get_File_Size_Req(mipc::dale_bsp::Fep_Read_Get_File_Size_Req *this)
{
  *this = &unk_2A1E8C290;
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
  *this = &unk_2A1E8C290;
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
  *this = &unk_2A1E8C290;
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

void mipc::dale_bsp::Fep_Read_Get_File_Size_Req::serialize(mipc::dale_bsp::Fep_Read_Get_File_Size_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 96);
  v4 = *(this + 12);
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

  v9 = 24;
  if (!*(this + 11))
  {
    v9 = 16;
  }

  v10 = v4 + v9 + 8 * (*(this + 13) != 0);
  v44[0] = operator new(v10);
  v45 = v44[0] + v10;
  bzero(v44[0], v10);
  v44[1] = v44[0] + v10;
  v43 = v44[0];
  v42 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v37, this, &v43);
  v11 = v40;
  *&__p[1] = *v38;
  __p[3] = v39;
  __p[0] = v37;
  v42 = v40;
  if (v37)
  {
    *a2 = v37;
    *(a2 + 8) = *&__p[1];
    v12 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v12;
    *(a2 + 32) = v11;
LABEL_74:
    *(a2 + 48) = 1;
    goto LABEL_75;
  }

  if (*(this + 11))
  {
    *v43 = 256;
    v13 = v43++;
    v13[1] = 4;
    v14 = v43++;
    *(v14 + 1) = **(this + 11);
    v43 += 2;
  }

  else if (!*(this + 4))
  {
    v15 = 0x10000000FLL;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_14:
  v46 = 0;
  v47 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v15, 0x100u, &v46, "", 0, &v37);
  v16 = v47;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    __p[0] = v37;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  __p[0] = v37;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_17:
    operator delete(__p[1]);
  }

LABEL_18:
  *&__p[1] = *v38;
  __p[3] = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  v17 = v40;
  v40 = 0uLL;
  v42 = v17;
  if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v11 + 1) + 16))(*(&v11 + 1));
    std::__shared_weak_count::__release_weak(*(&v11 + 1));
    v18 = *(&v40 + 1);
    v19 = __p[0];
    if (!*(&v40 + 1))
    {
LABEL_22:
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_30:
      operator delete(v38[0]);
      if (v19)
      {
        goto LABEL_73;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v18 = *(&v40 + 1);
    v19 = __p[0];
    if (!*(&v40 + 1))
    {
      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if (v19)
  {
    goto LABEL_73;
  }

LABEL_31:
  mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, v5, 0x101u, &v43, &v37);
  __p[0] = v37;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v38;
  __p[3] = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  v20 = v40;
  v40 = 0uLL;
  v21 = *(&v42 + 1);
  v42 = v20;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *(&v40 + 1);
  v23 = __p[0];
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
    if (!v23)
    {
      goto LABEL_44;
    }

LABEL_73:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v42;
    goto LABEL_74;
  }

  if (v23)
  {
    goto LABEL_73;
  }

LABEL_44:
  if (*(this + 13))
  {
    *v43 = 258;
    v24 = v43++;
    v24[1] = 4;
    v25 = v43++;
    *(v25 + 1) = **(this + 13);
    v43 += 2;
  }

  else if (!*(this + 4))
  {
    v26 = 0x10000000FLL;
    goto LABEL_48;
  }

  v26 = 0;
LABEL_48:
  v46 = 0;
  v47 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v26, 0x102u, &v46, "", 0, &v37);
  v27 = v47;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  __p[0] = v37;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v38;
  __p[3] = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  v28 = v40;
  v40 = 0uLL;
  v29 = *(&v42 + 1);
  v42 = v28;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *(&v40 + 1);
  v31 = __p[0];
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v31)
  {
    goto LABEL_73;
  }

  (*(*this + 32))(&v37, this, v44);
  __p[0] = v37;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v38;
  __p[3] = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  v32 = v40;
  v40 = 0uLL;
  v33 = *(&v42 + 1);
  v42 = v32;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(&v40 + 1);
  v35 = __p[0];
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v35)
  {
    goto LABEL_73;
  }

  *a2 = *v44;
  *(a2 + 16) = v45;
  v44[1] = 0;
  v45 = 0;
  v44[0] = 0;
  *(a2 + 48) = 0;
  v36 = *(&v42 + 1);
  if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

LABEL_75:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }
}

void sub_297D9BF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::dale_bsp::Fep_Read_Get_File_Size_Req::getSize(mipc::dale_bsp::Fep_Read_Get_File_Size_Req *this)
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
  if (!*(this + 11))
  {
    v5 = 16;
  }

  return v1 + v5 + 8 * (*(this + 13) != 0);
}

mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf *mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf::Fep_Read_Get_File_Size_Cnf(mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61954, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E8C2D8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf::deserialize(this, v7);
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

void sub_297D9C100(_Unwind_Exception *a1)
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

void mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x101u, &v16);
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

void *mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf::Fep_Read_Get_File_Size_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61954, &v14, a3, 2);
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
  *a1 = &unk_2A1E8D970;
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
  *a1 = &unk_2A1E8C2D8;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297D9C76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf::~Fep_Read_Get_File_Size_Cnf(mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf *this)
{
  *this = &unk_2A1E8C2D8;
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
  *this = &unk_2A1E8C2D8;
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
  *this = &unk_2A1E8C2D8;
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

uint64_t mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf::getSize(mipc::dale_bsp::Fep_Read_Get_File_Size_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0);
}

double mipc::dale_bsp::Fep_Read_File_Req::Fep_Read_File_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3581;
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
  *a1 = &unk_2A1E8C320;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

{
  *(a1 + 8) = -3581;
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
  *a1 = &unk_2A1E8C320;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void mipc::dale_bsp::Fep_Read_File_Req::~Fep_Read_File_Req(mipc::dale_bsp::Fep_Read_File_Req *this)
{
  *this = &unk_2A1E8C320;
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
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

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
  mipc::dale_bsp::Fep_Read_File_Req::~Fep_Read_File_Req(this);

  operator delete(v1);
}

void mipc::dale_bsp::Fep_Read_File_Req::serialize(mipc::dale_bsp::Fep_Read_File_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 96);
  v4 = *(this + 12);
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

  v9 = 24;
  if (!*(this + 11))
  {
    v9 = 16;
  }

  v10 = v4 + v9 + 8 * (*(this + 13) != 0) + 8 * (*(this + 14) != 0);
  v49[0] = operator new(v10);
  v50 = v49[0] + v10;
  bzero(v49[0], v10);
  v49[1] = v49[0] + v10;
  v48 = v49[0];
  v47 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v42, this, &v48);
  v11 = v45;
  *&__p[1] = *v43;
  __p[3] = v44;
  __p[0] = v42;
  v47 = v45;
  if (v42)
  {
    *a2 = v42;
    *(a2 + 8) = *&__p[1];
    v12 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v12;
    *(a2 + 32) = v11;
LABEL_85:
    *(a2 + 48) = 1;
    goto LABEL_86;
  }

  if (*(this + 11))
  {
    *v48 = 256;
    v13 = v48++;
    v13[1] = 4;
    v14 = v48++;
    *(v14 + 1) = **(this + 11);
    v48 += 2;
  }

  else if (!*(this + 4))
  {
    v15 = 0x10000000FLL;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_14:
  v51 = 0;
  v52 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v15, 0x100u, &v51, "", 0, &v42);
  v16 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    __p[0] = v42;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_17:
    operator delete(__p[1]);
  }

LABEL_18:
  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v17 = v45;
  v45 = 0uLL;
  v18 = *(&v47 + 1);
  v47 = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = *(&v45 + 1);
    v20 = __p[0];
    if (!*(&v45 + 1))
    {
LABEL_22:
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_30:
      operator delete(v43[0]);
      if (v20)
      {
        goto LABEL_84;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v19 = *(&v45 + 1);
    v20 = __p[0];
    if (!*(&v45 + 1))
    {
      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if (v20)
  {
    goto LABEL_84;
  }

LABEL_31:
  mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,true>(this, v5, 0x101u, &v48, &v42);
  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v21 = v45;
  v45 = 0uLL;
  v22 = *(&v47 + 1);
  v47 = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(&v45 + 1);
  v24 = __p[0];
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
    if (!v24)
    {
      goto LABEL_44;
    }

LABEL_84:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v47;
    goto LABEL_85;
  }

  if (v24)
  {
    goto LABEL_84;
  }

LABEL_44:
  if (*(this + 13))
  {
    *v48 = 258;
    v25 = v48++;
    v25[1] = 4;
    v26 = v48++;
    *(v26 + 1) = **(this + 13);
    v48 += 2;
  }

  else if (!*(this + 4))
  {
    v27 = 0x10000000FLL;
    goto LABEL_48;
  }

  v27 = 0;
LABEL_48:
  v51 = 0;
  v52 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v27, 0x102u, &v51, "", 0, &v42);
  v28 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v29 = v45;
  v45 = 0uLL;
  v30 = *(&v47 + 1);
  v47 = v29;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *(&v45 + 1);
  v32 = __p[0];
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (v32)
  {
    goto LABEL_84;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, this + 14, 259, &v48, &v42);
  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v33 = v45;
  v45 = 0uLL;
  v34 = *(&v47 + 1);
  v47 = v33;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *(&v45 + 1);
  v36 = __p[0];
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (v36)
  {
    goto LABEL_84;
  }

  (*(*this + 32))(&v42, this, v49);
  __p[0] = v42;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v43;
  __p[3] = v44;
  HIBYTE(v44) = 0;
  LOBYTE(v43[0]) = 0;
  v37 = v45;
  v45 = 0uLL;
  v38 = *(&v47 + 1);
  v47 = v37;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v39 = *(&v45 + 1);
  v40 = __p[0];
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (v40)
  {
    goto LABEL_84;
  }

  *a2 = *v49;
  *(a2 + 16) = v50;
  v49[1] = 0;
  v50 = 0;
  v49[0] = 0;
  *(a2 + 48) = 0;
  v41 = *(&v47 + 1);
  if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_86:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }
}