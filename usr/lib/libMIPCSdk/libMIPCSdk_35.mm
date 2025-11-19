uint64_t mipc::dale_vinyl::Cmd_Ind::getSize(int64x2_t *this)
{
  v1 = this[8].i64[0];
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
  if (HIDWORD(this[2].i64[0]))
  {
    v4 = 4;
  }

  v5 = vdupq_n_s64(8uLL);
  return &v1[v4 + (this[5].i64[1] != 0)] + vaddvq_s64(vaddq_s64(vbicq_s8(v5, vceqzq_s64(this[6])), vbicq_s8(v5, vceqzq_s64(this[7]))));
}

mipc::dale_vinyl::Eos_Status_Ind *mipc::dale_vinyl::Eos_Status_Ind::Eos_Status_Ind(mipc::dale_vinyl::Eos_Status_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62594, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E7B9D8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::dale_vinyl::Eos_Status_Ind::deserialize(this, v7);
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

void sub_297C42BF8(_Unwind_Exception *a1)
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

void mipc::dale_vinyl::Eos_Status_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

void *mipc::dale_vinyl::Eos_Status_Ind::Eos_Status_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62594, &v14, a3, 3);
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
  *a1 = &unk_2A1E7C788;
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
  *a1 = &unk_2A1E7B9D8;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297C43134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_vinyl::Eos_Status_Ind::~Eos_Status_Ind(mipc::dale_vinyl::Eos_Status_Ind *this)
{
  *this = &unk_2A1E7B9D8;
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
  *this = &unk_2A1E7B9D8;
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
  *this = &unk_2A1E7B9D8;
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

uint64_t mipc::dale_vinyl::Eos_Status_Ind::getSize(mipc::dale_vinyl::Eos_Status_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

mipc::dale_vinyl::Sep_Cmd_Ind *mipc::dale_vinyl::Sep_Cmd_Ind::Sep_Cmd_Ind(mipc::dale_vinyl::Sep_Cmd_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62595, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E7BA20;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 80) = 1;
  mipc::dale_vinyl::Sep_Cmd_Ind::deserialize(this, v7);
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

void sub_297C43694(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 112));
  v4 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 96);
    *(v1 + 96) = 0;
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
    v5 = *(v1 + 96);
    *(v1 + 96) = 0;
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

void mipc::dale_vinyl::Sep_Cmd_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v20);
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
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x101u, &v20);
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
    mipc::Message::deserializeTlv<unsigned short,false>(this, this + 13, 0x102u, &v20);
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
      mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<3584ul,false>,false>(&v20, this, this + 14, 0x103u);
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

uint64_t mipc::dale_vinyl::Sep_Cmd_Ind::Sep_Cmd_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62595, &v14, a3, 3);
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
  *a1 = &unk_2A1E7C7D0;
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
  *a1 = &unk_2A1E7BA20;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297C43E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_vinyl::Sep_Cmd_Ind::~Sep_Cmd_Ind(mipc::dale_vinyl::Sep_Cmd_Ind *this)
{
  *this = &unk_2A1E7BA20;
  v2 = *(this + 14);
  *(this + 14) = 0;
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
  mipc::dale_vinyl::Sep_Cmd_Ind::~Sep_Cmd_Ind(this);

  operator delete(v1);
}

void *mipc::dale_vinyl::Sep_Cmd_Ind::getSize(mipc::dale_vinyl::Sep_Cmd_Ind *this)
{
  v1 = *(this + 14);
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

  return &v1[(*(this + 11) != 0) + (*(this + 12) != 0) + (*(this + 13) != 0) + v4];
}

mipc::dale_vinyl::At_Esimmgmt_Ind *mipc::dale_vinyl::At_Esimmgmt_Ind::At_Esimmgmt_Ind(mipc::dale_vinyl::At_Esimmgmt_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62596, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E7BA68;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 80) = 1;
  mipc::dale_vinyl::At_Esimmgmt_Ind::deserialize(this, v7);
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

void sub_297C4418C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 12);
  *(v1 + 12) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v2);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::dale_vinyl::At_Esimmgmt_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(v38);
  v4 = *v38;
  *a2 = *v38;
  v5 = v39;
  *(a2 + 1) = *&v38[8];
  a2[3] = *&v38[24];
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v6;
  v40 = v6;
  *v38 = v6;
  *&v38[16] = v6;
  mipc::Message::findTLV(this, 0x100u, v38);
  *&v37[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v37 = v7;
  *__p = v7;
  v35 = *v38;
  if ((v38[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v38[8], *&v38[16]);
  }

  else
  {
    *__p = *&v38[8];
    *v37 = *&v38[24];
  }

  *&v37[8] = v39;
  if (*(&v39 + 1))
  {
    atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v35;
  if (v35 && v35 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v35, &v29);
  }

  else
  {
    v9 = v40;
    v10 = *(&v40 + 1);
    v11 = this[4];
    v12 = this[11];
    this[11] = 0;
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v12[1] = v13;
        operator delete(v13);
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
      v26 = operator new(0x18uLL);
      *v26 = 0;
      v26[1] = 0;
      v26[2] = 0;
      v27 = this[11];
      this[11] = v26;
      if (v27)
      {
        v28 = *v27;
        if (*v27)
        {
          v27[1] = v28;
          operator delete(v28);
        }

        operator delete(v27);
        v26 = this[11];
      }

      v15 = 0x100000003;
      if (v9)
      {
        if (v9 <= 0xE00)
        {
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v26, v10, &v10[v9], v9);
          v15 = 0;
        }

        else
        {
          v15 = 0x100000010;
        }
      }
    }

    v16 = this[3];
    v33 = this[2];
    v34 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v15, 0x100u, &v33, "", 0, &v29);
    v17 = v34;
    if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  v18 = *&v37[16];
  if (*&v37[16] && !atomic_fetch_add((*&v37[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if ((v37[7] & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v37[7] & 0x80000000) != 0)
  {
LABEL_28:
    operator delete(__p[0]);
  }

LABEL_29:
  v19 = *(&v39 + 1);
  if (!*(&v39 + 1) || atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v38[31] & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_44:
    operator delete(*&v38[8]);
    *a2 = v29;
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
  if ((v38[31] & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_32:
  *a2 = v29;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_45;
  }

LABEL_33:
  *(a2 + 1) = v30;
  a2[3] = v31;
  HIBYTE(v31) = 0;
  LOBYTE(v30) = 0;
  v20 = v32;
  v32 = 0uLL;
  *(a2 + 2) = v20;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v21 = *a2;
  v22 = *(&v32 + 1);
  if (!*(&v32 + 1) || atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_47:
    operator delete(v30);
    if (v21)
    {
      return;
    }

    goto LABEL_48;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_47;
  }

LABEL_39:
  if (v21)
  {
    return;
  }

LABEL_48:
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 12, 0x101u, v38);
  *a2 = *v38;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&v38[8];
  a2[3] = *&v38[24];
  v38[31] = 0;
  v38[8] = 0;
  v23 = v39;
  v39 = 0uLL;
  v24 = a2[5];
  *(a2 + 2) = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v39 + 1);
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if ((v38[31] & 0x80000000) != 0)
  {
    operator delete(*&v38[8]);
  }
}

void sub_297C44728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

uint64_t mipc::dale_vinyl::At_Esimmgmt_Ind::At_Esimmgmt_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62596, &v14, a3, 3);
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
  *a1 = &unk_2A1E7C818;
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
  *a1 = &unk_2A1E7BA68;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297C449A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_vinyl::At_Esimmgmt_Ind::~At_Esimmgmt_Ind(mipc::dale_vinyl::At_Esimmgmt_Ind *this)
{
  *this = &unk_2A1E7BA68;
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
    v4 = *v3;
    if (*v3)
    {
      v3[1] = v4;
      operator delete(v4);
    }

    operator delete(v3);
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
  *this = &unk_2A1E7BA68;
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
    v4 = *v3;
    if (*v3)
    {
      v3[1] = v4;
      operator delete(v4);
    }

    operator delete(v3);
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
  *this = &unk_2A1E7BA68;
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
    v4 = *v3;
    if (*v3)
    {
      v3[1] = v4;
      operator delete(v4);
    }

    operator delete(v3);
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

void *mipc::dale_vinyl::At_Esimmgmt_Ind::getSize(mipc::dale_vinyl::At_Esimmgmt_Ind *this)
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

  return &v1[v4 + (*(this + 12) != 0)];
}

uint64_t mipc::tlv<mipc::mipc_byte_array_t<8ul,true>,false>::deserialize(void **a1, uint64_t a2)
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

  if (!v7)
  {
    return 0x100000003;
  }

  if (v7 > 8)
  {
    return 0x100000010;
  }

  if (v7 != 8)
  {
    return 0x100000011;
  }

  v12 = v9[2];
  v13 = *v9;
  if (v12 - *v9 >= 8)
  {
    v19 = v9[1];
    v20 = v19 - v13;
    if ((v19 - v13) >= 8)
    {
      v23 = v9;
      memmove(*v9, v8, 8uLL);
      result = 0;
      v23[1] = v13 + 8;
      return result;
    }

    if (v19 == v13)
    {
      v22 = v9[1];
    }

    else
    {
      v21 = v9;
      memmove(*v9, v8, v19 - v13);
      v9 = v21;
      v22 = v21[1];
    }

    v24 = v22;
    if (v20 == 8)
    {
      goto LABEL_41;
    }

    v25 = &v8[v20];
    v26 = v13 - v19 + 8;
    if (v26 >= 0x20)
    {
      v24 = v22;
      if ((&v13[v22] - &v19[v8]) >= 0x20)
      {
        v25 += v26 & 0xFFFFFFFFFFFFFFE0;
        v24 = (v22 + (v26 & 0xFFFFFFFFFFFFFFE0));
        v27 = (v22 + 16);
        v28 = &v8[v19 - v13 + 16];
        v29 = v26 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v30 = *v28;
          *(v27 - 1) = *(v28 - 1);
          *v27 = v30;
          v27 += 2;
          v28 += 32;
          v29 -= 32;
        }

        while (v29);
        if (v26 == (v26 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v24 = v22;
    }

    do
    {
      v31 = *v25++;
      *v24++ = v31;
    }

    while (v25 != v8 + 8);
LABEL_41:
    v9[1] = v24;
    return 0;
  }

  if (v13)
  {
    v9[1] = v13;
    v14 = v9;
    operator delete(v13);
    v9 = v14;
    v12 = 0;
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v15 = v9;
  v16 = 2 * v12;
  if (2 * v12 <= 8)
  {
    v16 = 8;
  }

  if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = v16;
  }

  v18 = operator new(v17);
  *v15 = v18;
  v15[1] = v18;
  v15[2] = &v18[v17];
  memcpy(v18, v8, 8uLL);
  result = 0;
  v15[1] = v18 + 8;
  return result;
}

double mipc::dale_rf::Set_Mtpl_Req::Set_Mtpl_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3840;
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
  *a1 = &unk_2A1E7C860;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = -3840;
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
  *a1 = &unk_2A1E7C860;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::dale_rf::Set_Mtpl_Req::~Set_Mtpl_Req(mipc::dale_rf::Set_Mtpl_Req *this)
{
  *this = &unk_2A1E7C860;
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
  *this = &unk_2A1E7C860;
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
  *this = &unk_2A1E7C860;
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

void mipc::dale_rf::Set_Mtpl_Req::serialize(mipc::dale_rf::Set_Mtpl_Req *this@<X0>, uint64_t a2@<X8>)
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
    v15[1] = 2;
    v16 = v34++;
    v16[1] = **(this + 12);
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

void sub_297C45CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::dale_rf::Set_Mtpl_Cnf *mipc::dale_rf::Set_Mtpl_Cnf::Set_Mtpl_Cnf(mipc::dale_rf::Set_Mtpl_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61696, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7C8A8;
  *(this + 11) = 0;
  mipc::dale_rf::Set_Mtpl_Cnf::deserialize(this, &v7);
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

void sub_297C45E5C(_Unwind_Exception *a1)
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

void mipc::dale_rf::Set_Mtpl_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_rf::Set_Mtpl_Cnf::Set_Mtpl_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61696, &v14, a3, 2);
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
  *a1 = &unk_2A1E7E480;
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
  *a1 = &unk_2A1E7C8A8;
  a1[11] = 0;
  return a1;
}

void sub_297C46258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_rf::Set_Mtpl_Cnf::~Set_Mtpl_Cnf(mipc::dale_rf::Set_Mtpl_Cnf *this)
{
  *this = &unk_2A1E7C8A8;
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
  *this = &unk_2A1E7C8A8;
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
  *this = &unk_2A1E7C8A8;
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

uint64_t mipc::dale_rf::Set_Mtpl_Cnf::getSize(mipc::dale_rf::Set_Mtpl_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::dale_rf::Get_Tx_Power_Req::Get_Tx_Power_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3839;
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
  *a1 = &unk_2A1E7C8F0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = -3839;
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
  *a1 = &unk_2A1E7C8F0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::dale_rf::Get_Tx_Power_Req::~Get_Tx_Power_Req(mipc::dale_rf::Get_Tx_Power_Req *this)
{
  *this = &unk_2A1E7C8F0;
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
  *this = &unk_2A1E7C8F0;
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
  *this = &unk_2A1E7C8F0;
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

void mipc::dale_rf::Get_Tx_Power_Req::serialize(mipc::dale_rf::Get_Tx_Power_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C46F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::dale_rf::Get_Tx_Power_Req::getSize(mipc::dale_rf::Get_Tx_Power_Req *this)
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

mipc::dale_rf::Get_Tx_Power_Cnf *mipc::dale_rf::Get_Tx_Power_Cnf::Get_Tx_Power_Cnf(mipc::dale_rf::Get_Tx_Power_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61697, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7C938;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::dale_rf::Get_Tx_Power_Cnf::deserialize(this, v7);
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

void sub_297C470B8(_Unwind_Exception *a1)
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

void mipc::dale_rf::Get_Tx_Power_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<short,false>(this, this + 12, 0x101u, &v12);
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

void *mipc::dale_rf::Get_Tx_Power_Cnf::Get_Tx_Power_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61697, &v14, a3, 2);
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
  *a1 = &unk_2A1E7E4C8;
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
  *a1 = &unk_2A1E7C938;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297C475F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_rf::Get_Tx_Power_Cnf::~Get_Tx_Power_Cnf(mipc::dale_rf::Get_Tx_Power_Cnf *this)
{
  *this = &unk_2A1E7C938;
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
  *this = &unk_2A1E7C938;
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
  *this = &unk_2A1E7C938;
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

void mipc::Message::deserializeTlv<short,false>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
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

void sub_297C47CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C47CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297C47CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::dale_rf::Get_Tx_Power_Cnf::getSize(mipc::dale_rf::Get_Tx_Power_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::dale_rf::Get_Current_Mcc_Config_Req::Get_Current_Mcc_Config_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3838;
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
  *a1 = &unk_2A1E7C980;
  return result;
}

{
  *(a1 + 8) = -3838;
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
  *a1 = &unk_2A1E7C980;
  return result;
}

void mipc::dale_rf::Get_Current_Mcc_Config_Req::~Get_Current_Mcc_Config_Req(mipc::dale_rf::Get_Current_Mcc_Config_Req *this)
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

void mipc::dale_rf::Get_Current_Mcc_Config_Req::serialize(mipc::dale_rf::Get_Current_Mcc_Config_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C48390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::dale_rf::Get_Current_Mcc_Config_Cnf *mipc::dale_rf::Get_Current_Mcc_Config_Cnf::Get_Current_Mcc_Config_Cnf(mipc::dale_rf::Get_Current_Mcc_Config_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61698, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7C9C8;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  mipc::dale_rf::Get_Current_Mcc_Config_Cnf::deserialize(this, v7);
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

void sub_297C48500(_Unwind_Exception *a1)
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

void mipc::dale_rf::Get_Current_Mcc_Config_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 12, 0x101u, &v24);
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
    mipc::Message::deserializeTlv<unsigned short,false>(this, this + 13, 0x102u, &v24);
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
      mipc::Message::deserializeTlv<unsigned short,false>(this, this + 14, 0x103u, &v24);
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
        mipc::Message::deserializeTlv<short,false>(this, this + 15, 0x104u, &v24);
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

uint64_t mipc::dale_rf::Get_Current_Mcc_Config_Cnf::Get_Current_Mcc_Config_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61698, &v14, a3, 2);
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
  *a1 = &unk_2A1E7E510;
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
  *a1 = &unk_2A1E7C9C8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_297C48DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_rf::Get_Current_Mcc_Config_Cnf::~Get_Current_Mcc_Config_Cnf(mipc::dale_rf::Get_Current_Mcc_Config_Cnf *this)
{
  *this = &unk_2A1E7C9C8;
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
  mipc::dale_rf::Get_Current_Mcc_Config_Cnf::~Get_Current_Mcc_Config_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::dale_rf::Get_Current_Mcc_Config_Cnf::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1;
}

double mipc::dale_rf::Query_Mcc_Power_Req::Query_Mcc_Power_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3837;
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
  *a1 = &unk_2A1E7CA10;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

{
  *(a1 + 8) = -3837;
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
  *a1 = &unk_2A1E7CA10;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

void mipc::dale_rf::Query_Mcc_Power_Req::~Query_Mcc_Power_Req(mipc::dale_rf::Query_Mcc_Power_Req *this)
{
  *this = &unk_2A1E7CA10;
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
    operator delete(v7);
  }

  *this = &unk_2A1E85968;
  v8 = *(this + 9);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (*(this + 63) < 0)
  {
LABEL_16:
    operator delete(*(this + 5));
  }

LABEL_17:
  v9 = *(this + 3);
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

{
  mipc::dale_rf::Query_Mcc_Power_Req::~Query_Mcc_Power_Req(this);

  operator delete(v1);
}

void mipc::dale_rf::Query_Mcc_Power_Req::serialize(mipc::dale_rf::Query_Mcc_Power_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v5 = (this + 128);
  v6 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 104))))) + 8 * (*(this + 15) != 0) + 8 * (*(this + 16) != 0);
  v52[0] = operator new(v6);
  v53 = v52[0] + v6;
  bzero(v52[0], v6);
  v52[1] = v52[0] + v6;
  v51 = v52[0];
  v50 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v45, this, &v51);
  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46) = 0;
  v7 = v48;
  v48 = 0uLL;
  v8 = *(&v50 + 1);
  v50 = v7;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = *(&v48 + 1);
    v10 = __p[0];
    if (!*(&v48 + 1))
    {
LABEL_7:
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(v46);
      if (v10)
      {
        goto LABEL_95;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v9 = *(&v48 + 1);
    v10 = __p[0];
    if (!*(&v48 + 1))
    {
      goto LABEL_7;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(v47) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v10)
  {
    goto LABEL_95;
  }

LABEL_14:
  if (*(this + 11))
  {
    *v51 = 256;
    v11 = v51++;
    v11[1] = 4;
    v12 = v51++;
    *(v12 + 1) = **(this + 11);
    v51 += 2;
  }

  else if (!*(this + 4))
  {
    v13 = 0x10000000FLL;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_18:
  v54 = 0;
  v55 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v13, 0x100u, &v54, "", 0, &v45);
  v14 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    __p[0] = v45;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_21:
    operator delete(__p[1]);
  }

LABEL_22:
  *&__p[1] = v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46) = 0;
  v15 = v48;
  v48 = 0uLL;
  v16 = *(&v50 + 1);
  v50 = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(&v48 + 1);
    v18 = __p[0];
    if (!*(&v48 + 1))
    {
LABEL_26:
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_34:
      operator delete(v46);
      if (v18)
      {
        goto LABEL_95;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v17 = *(&v48 + 1);
    v18 = __p[0];
    if (!*(&v48 + 1))
    {
      goto LABEL_26;
    }
  }

  if (atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_26;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (SHIBYTE(v47) < 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v18)
  {
    goto LABEL_95;
  }

LABEL_35:
  if (*(this + 12))
  {
    *v51 = 257;
    v19 = v51++;
    v19[1] = 2;
    v20 = v51++;
    v20[1] = **(this + 12);
    v51 += 2;
  }

  else if (!*(this + 4))
  {
    v21 = 0x10000000FLL;
    goto LABEL_40;
  }

  v21 = 0;
LABEL_40:
  v54 = 0;
  v55 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v21, 0x101u, &v54, "", 0, &v45);
  v22 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46) = 0;
  v23 = v48;
  v48 = 0uLL;
  v24 = *(&v50 + 1);
  v50 = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v48 + 1);
  v26 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
    if (!v26)
    {
      goto LABEL_55;
    }

LABEL_95:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v50;
    v50 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_96;
  }

  if (v26)
  {
    goto LABEL_95;
  }

LABEL_55:
  if (*(this + 13))
  {
    *v51 = 258;
    v27 = v51++;
    v27[1] = 1;
    v28 = v51++;
    *(v28 + 2) = **(this + 13);
    v51 += 2;
  }

  v54 = 0;
  v55 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v54, "", 0, &v45);
  v29 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46) = 0;
  v30 = v48;
  v48 = 0uLL;
  v31 = *(&v50 + 1);
  v50 = v30;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(&v48 + 1);
  v33 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  if (v33)
  {
    goto LABEL_95;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 259, &v51, &v45);
  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46) = 0;
  v34 = v48;
  v48 = 0uLL;
  v35 = *(&v50 + 1);
  v50 = v34;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *(&v48 + 1);
  v37 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  if (v37)
  {
    goto LABEL_95;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v4, 260, &v51, &v45);
  __p[0] = v45;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v46;
  __p[3] = v47;
  HIBYTE(v47) = 0;
  LOBYTE(v46) = 0;
  v38 = v48;
  v48 = 0uLL;
  v39 = *(&v50 + 1);
  v50 = v38;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = *(&v48 + 1);
  v41 = __p[0];
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  if (v41)
  {
    goto LABEL_95;
  }

  mipc::Message::serializeTlv<unsigned int,false>(this, v5, 261, &v51, &v45);
  v42 = *mipc::Error::operator=(__p, &v45);
  mipc::Error::~Error(&v45);
  if (v42)
  {
    goto LABEL_95;
  }

  (*(*this + 32))(&v45, this, v52);
  v43 = *mipc::Error::operator=(__p, &v45);
  mipc::Error::~Error(&v45);
  if (v43)
  {
    goto LABEL_95;
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

LABEL_96:
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

void sub_297C49CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mipc::dale_rf::Query_Mcc_Power_Cnf *mipc::dale_rf::Query_Mcc_Power_Cnf::Query_Mcc_Power_Cnf(mipc::dale_rf::Query_Mcc_Power_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61699, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7CA58;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::dale_rf::Query_Mcc_Power_Cnf::deserialize(this, v7);
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

void sub_297C49EB4(_Unwind_Exception *a1)
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

void mipc::dale_rf::Query_Mcc_Power_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<short,false>(this, this + 12, 0x101u, &v12);
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

void *mipc::dale_rf::Query_Mcc_Power_Cnf::Query_Mcc_Power_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61699, &v14, a3, 2);
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
  *a1 = &unk_2A1E7E558;
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
  *a1 = &unk_2A1E7CA58;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297C4A3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_rf::Query_Mcc_Power_Cnf::~Query_Mcc_Power_Cnf(mipc::dale_rf::Query_Mcc_Power_Cnf *this)
{
  *this = &unk_2A1E7CA58;
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
  *this = &unk_2A1E7CA58;
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
  *this = &unk_2A1E7CA58;
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

uint64_t mipc::dale_rf::Query_Mcc_Power_Cnf::getSize(mipc::dale_rf::Query_Mcc_Power_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::dale_rf::Query_Ns_Override_Value_Req::Query_Ns_Override_Value_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3836;
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
  *a1 = &unk_2A1E7CAA0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

{
  *(a1 + 8) = -3836;
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
  *a1 = &unk_2A1E7CAA0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void mipc::dale_rf::Query_Ns_Override_Value_Req::~Query_Ns_Override_Value_Req(mipc::dale_rf::Query_Ns_Override_Value_Req *this)
{
  *this = &unk_2A1E7CAA0;
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
  mipc::dale_rf::Query_Ns_Override_Value_Req::~Query_Ns_Override_Value_Req(this);

  operator delete(v1);
}

void mipc::dale_rf::Query_Ns_Override_Value_Req::serialize(mipc::dale_rf::Query_Ns_Override_Value_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v5 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 104))))) + 8 * (*(this + 15) != 0);
  v50[0] = operator new(v5);
  v51 = v50[0] + v5;
  bzero(v50[0], v5);
  v50[1] = v50[0] + v5;
  v49 = v50[0];
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
  v6 = v46;
  v46 = 0uLL;
  v7 = *(&v48 + 1);
  v48 = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = *(&v46 + 1);
    v9 = __p[0];
    if (!*(&v46 + 1))
    {
LABEL_7:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(v44);
      if (v9)
      {
        goto LABEL_94;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(&v46 + 1);
    v9 = __p[0];
    if (!*(&v46 + 1))
    {
      goto LABEL_7;
    }
  }

  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v9)
  {
    goto LABEL_94;
  }

LABEL_14:
  if (*(this + 11))
  {
    *v49 = 256;
    v10 = v49++;
    v10[1] = 4;
    v11 = v49++;
    *(v11 + 1) = **(this + 11);
    v49 += 2;
  }

  else if (!*(this + 4))
  {
    v12 = 0x10000000FLL;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:
  v52 = 0;
  v53 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v12, 0x100u, &v52, "", 0, &v43);
  v13 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    __p[0] = v43;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_21:
    operator delete(__p[1]);
  }

LABEL_22:
  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v14 = v46;
  v46 = 0uLL;
  v15 = *(&v48 + 1);
  v48 = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    v16 = *(&v46 + 1);
    v17 = __p[0];
    if (!*(&v46 + 1))
    {
LABEL_26:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_34:
      operator delete(v44);
      if (v17)
      {
        goto LABEL_94;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v16 = *(&v46 + 1);
    v17 = __p[0];
    if (!*(&v46 + 1))
    {
      goto LABEL_26;
    }
  }

  if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_26;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v17)
  {
    goto LABEL_94;
  }

LABEL_35:
  if (*(this + 12))
  {
    *v49 = 257;
    v18 = v49++;
    v18[1] = 2;
    v19 = v49++;
    v19[1] = **(this + 12);
    v49 += 2;
  }

  else if (!*(this + 4))
  {
    v20 = 0x10000000FLL;
    goto LABEL_40;
  }

  v20 = 0;
LABEL_40:
  v52 = 0;
  v53 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v20, 0x101u, &v52, "", 0, &v43);
  v21 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
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
  v22 = v46;
  v46 = 0uLL;
  v23 = *(&v48 + 1);
  v48 = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *(&v46 + 1);
  v25 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
    if (!v25)
    {
      goto LABEL_55;
    }

LABEL_94:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v48;
    v48 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_95;
  }

  if (v25)
  {
    goto LABEL_94;
  }

LABEL_55:
  if (*(this + 13))
  {
    *v49 = 258;
    v26 = v49++;
    v26[1] = 1;
    v27 = v49++;
    *(v27 + 2) = **(this + 13);
    v49 += 2;
  }

  v52 = 0;
  v53 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v52, "", 0, &v43);
  v28 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
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
    goto LABEL_94;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 259, &v49, &v43);
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
    goto LABEL_94;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v4, 260, &v49, &v43);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v37 = v46;
  v46 = 0uLL;
  v38 = *(&v48 + 1);
  v48 = v37;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v39 = *(&v46 + 1);
  v40 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (v40)
  {
    goto LABEL_94;
  }

  (*(*this + 32))(&v43, this, v50);
  v41 = *mipc::Error::operator=(__p, &v43);
  mipc::Error::~Error(&v43);
  if (v41)
  {
    goto LABEL_94;
  }

  *a2 = *v50;
  *(a2 + 16) = v51;
  v50[1] = 0;
  v51 = 0;
  v50[0] = 0;
  *(a2 + 48) = 0;
  v42 = *(&v48 + 1);
  if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

LABEL_95:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }
}

void sub_297C4B4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mipc::dale_rf::Query_Ns_Override_Value_Cnf *mipc::dale_rf::Query_Ns_Override_Value_Cnf::Query_Ns_Override_Value_Cnf(mipc::dale_rf::Query_Ns_Override_Value_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61700, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7CAE8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::dale_rf::Query_Ns_Override_Value_Cnf::deserialize(this, v7);
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

void sub_297C4B684(_Unwind_Exception *a1)
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

void mipc::dale_rf::Query_Ns_Override_Value_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned short,false>(this, this + 12, 0x101u, &v12);
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

void *mipc::dale_rf::Query_Ns_Override_Value_Cnf::Query_Ns_Override_Value_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61700, &v14, a3, 2);
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
  *a1 = &unk_2A1E7E5A0;
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
  *a1 = &unk_2A1E7CAE8;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297C4BBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_rf::Query_Ns_Override_Value_Cnf::~Query_Ns_Override_Value_Cnf(mipc::dale_rf::Query_Ns_Override_Value_Cnf *this)
{
  *this = &unk_2A1E7CAE8;
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
  *this = &unk_2A1E7CAE8;
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
  *this = &unk_2A1E7CAE8;
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

uint64_t mipc::dale_rf::Query_Ns_Override_Value_Cnf::getSize(mipc::dale_rf::Query_Ns_Override_Value_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::dale_rf::Ap_Sensor_Req::Ap_Sensor_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3835;
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
  *a1 = &unk_2A1E7CB30;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

{
  *(a1 + 8) = -3835;
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
  *a1 = &unk_2A1E7CB30;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void mipc::dale_rf::Ap_Sensor_Req::~Ap_Sensor_Req(mipc::dale_rf::Ap_Sensor_Req *this)
{
  *this = &unk_2A1E7CB30;
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
  mipc::dale_rf::Ap_Sensor_Req::~Ap_Sensor_Req(this);

  operator delete(v1);
}

void mipc::dale_rf::Ap_Sensor_Req::serialize(mipc::dale_rf::Ap_Sensor_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v5 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 104))))) + 8 * (*(this + 15) != 0);
  v48[0] = operator new(v5);
  v49 = v48[0] + v5;
  bzero(v48[0], v5);
  v48[1] = v48[0] + v5;
  v47 = v48[0];
  v46 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v41, this, &v47);
  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42) = 0;
  v6 = v44;
  v44 = 0uLL;
  v7 = *(&v46 + 1);
  v46 = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(&v44 + 1);
  v9 = __p[0];
  if (!*(&v44 + 1) || atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v42);
    if (v9)
    {
      goto LABEL_87;
    }

    goto LABEL_13;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v43) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v9)
  {
    goto LABEL_87;
  }

LABEL_13:
  if (*(this + 11))
  {
    *v47 = 256;
    v10 = v47++;
    v10[1] = 1;
    v11 = v47++;
    *(v11 + 2) = **(this + 11);
    v47 += 2;
  }

  v50 = 0;
  v51 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v50, "", 0, &v41);
  v12 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    __p[0] = v41;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_18:
    operator delete(__p[1]);
  }

LABEL_19:
  *&__p[1] = v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42) = 0;
  v13 = v44;
  v44 = 0uLL;
  v14 = *(&v46 + 1);
  v46 = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(&v44 + 1);
  v16 = __p[0];
  if (!*(&v44 + 1) || atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    operator delete(v42);
    if (v16)
    {
      goto LABEL_87;
    }

    goto LABEL_31;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (SHIBYTE(v43) < 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v16)
  {
    goto LABEL_87;
  }

LABEL_31:
  if (*(this + 12))
  {
    *v47 = 257;
    v17 = v47++;
    v17[1] = 1;
    v18 = v47++;
    *(v18 + 2) = **(this + 12);
    v47 += 2;
  }

  v50 = 0;
  v51 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v50, "", 0, &v41);
  v19 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42) = 0;
  v20 = v44;
  v44 = 0uLL;
  v21 = *(&v46 + 1);
  v46 = v20;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *(&v44 + 1);
  v23 = __p[0];
  if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
    if (!v23)
    {
      goto LABEL_48;
    }

LABEL_87:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v46;
    v46 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_88;
  }

  if (v23)
  {
    goto LABEL_87;
  }

LABEL_48:
  if (*(this + 13))
  {
    *v47 = 258;
    v24 = v47++;
    v24[1] = 1;
    v25 = v47++;
    *(v25 + 2) = **(this + 13);
    v47 += 2;
  }

  v50 = 0;
  v51 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v50, "", 0, &v41);
  v26 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42) = 0;
  v27 = v44;
  v44 = 0uLL;
  v28 = *(&v46 + 1);
  v46 = v27;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(&v44 + 1);
  v30 = __p[0];
  if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (v30)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 259, &v47, &v41);
  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42) = 0;
  v31 = v44;
  v44 = 0uLL;
  v32 = *(&v46 + 1);
  v46 = v31;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&v44 + 1);
  v34 = __p[0];
  if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (v34)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v4, 260, &v47, &v41);
  __p[0] = v41;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v42;
  __p[3] = v43;
  HIBYTE(v43) = 0;
  LOBYTE(v42) = 0;
  v35 = v44;
  v44 = 0uLL;
  v36 = *(&v46 + 1);
  v46 = v35;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = *(&v44 + 1);
  v38 = __p[0];
  if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (v38)
  {
    goto LABEL_87;
  }

  (*(*this + 32))(&v41, this, v48);
  v39 = *mipc::Error::operator=(__p, &v41);
  mipc::Error::~Error(&v41);
  if (v39)
  {
    goto LABEL_87;
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

LABEL_88:
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

void sub_297C4CC2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mipc::dale_rf::Ap_Sensor_Cnf *mipc::dale_rf::Ap_Sensor_Cnf::Ap_Sensor_Cnf(mipc::dale_rf::Ap_Sensor_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61701, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7CB78;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  mipc::dale_rf::Ap_Sensor_Cnf::deserialize(this, v7);
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

void sub_297C4CE04(_Unwind_Exception *a1)
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

void mipc::dale_rf::Ap_Sensor_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, &v24);
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
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 13, 0x102u, &v24);
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
      mipc::Message::deserializeTlv<unsigned char,false>(this, this + 14, 0x103u, &v24);
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

uint64_t mipc::dale_rf::Ap_Sensor_Cnf::Ap_Sensor_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61701, &v14, a3, 2);
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
  *a1 = &unk_2A1E7E5E8;
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
  *a1 = &unk_2A1E7CB78;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_297C4D6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_rf::Ap_Sensor_Cnf::~Ap_Sensor_Cnf(mipc::dale_rf::Ap_Sensor_Cnf *this)
{
  *this = &unk_2A1E7CB78;
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
  mipc::dale_rf::Ap_Sensor_Cnf::~Ap_Sensor_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::dale_rf::Ap_Sensor_Cnf::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1;
}

double mipc::dale_rf::Rffe_Scan_Req::Rffe_Scan_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3834;
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
  *a1 = &unk_2A1E7CBC0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = -3834;
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
  *a1 = &unk_2A1E7CBC0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::dale_rf::Rffe_Scan_Req::~Rffe_Scan_Req(mipc::dale_rf::Rffe_Scan_Req *this)
{
  *this = &unk_2A1E7CBC0;
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
  *this = &unk_2A1E7CBC0;
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
  *this = &unk_2A1E7CBC0;
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

void mipc::dale_rf::Rffe_Scan_Req::serialize(mipc::dale_rf::Rffe_Scan_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C4E1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::dale_rf::Rffe_Scan_Req::getSize(mipc::dale_rf::Rffe_Scan_Req *this)
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

mipc::dale_rf::Rffe_Scan_Cnf *mipc::dale_rf::Rffe_Scan_Cnf::Rffe_Scan_Cnf(mipc::dale_rf::Rffe_Scan_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61702, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7CC08;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  mipc::dale_rf::Rffe_Scan_Cnf::deserialize(this, &v7);
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

void sub_297C4E344(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  if (v4)
  {
    *(v1 + 17) = v4;
    operator delete(v4);
    v5 = *(v1 + 15);
    *(v1 + 15) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 14);
      *(v1 + 14) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(v1 + 15);
    *(v1 + 15) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v6);
  v7 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 12);
    *(v1 + 12) = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v7);
  v8 = *(v1 + 12);
  *(v1 + 12) = 0;
  if (!v8)
  {
LABEL_6:
    v9 = *v2;
    *v2 = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v8);
  v9 = *v2;
  *v2 = 0;
  if (!v9)
  {
LABEL_7:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(v9);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::dale_rf::Rffe_Scan_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v28);
  *a2 = v28;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v30;
  HIBYTE(v30) = 0;
  LOBYTE(__p) = 0;
  v4 = v31;
  v31 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v31 + 1);
  if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v28);
  *a2 = v28;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v30;
  HIBYTE(v30) = 0;
  LOBYTE(__p) = 0;
  v8 = v31;
  v31 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v31 + 1);
  if (!*(&v31 + 1) || atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
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
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x101u, &v28);
  *a2 = v28;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v30;
  HIBYTE(v30) = 0;
  LOBYTE(__p) = 0;
  v12 = v31;
  v31 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v31 + 1);
  if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned int,true>(this, this + 13, 0x102u, &v28);
    *a2 = v28;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v30;
    HIBYTE(v30) = 0;
    LOBYTE(__p) = 0;
    v16 = v31;
    v31 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v31 + 1);
    if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<unsigned int,true>(this, this + 14, 0x103u, &v28);
      *a2 = v28;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v30;
      HIBYTE(v30) = 0;
      LOBYTE(__p) = 0;
      v20 = v31;
      v31 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v31 + 1);
      if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<unsigned int,true>(this, this + 15, 0x104u, &v28);
        *a2 = v28;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v30;
        HIBYTE(v30) = 0;
        LOBYTE(__p) = 0;
        v24 = v31;
        v31 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v31 + 1);
        if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<mipc::mipc_DaleRfMipiDeviceList_struct4,10ul,false>(&v28, this, this + 16);
          mipc::Error::operator=(a2, &v28);
          mipc::Error::~Error(&v28);
        }
      }
    }
  }
}

uint64_t mipc::dale_rf::Rffe_Scan_Cnf::Rffe_Scan_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61702, &v14, a3, 2);
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
  *a1 = &unk_2A1E7E630;
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
  *a1 = &unk_2A1E7CC08;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return a1;
}

void sub_297C4ED44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_rf::Rffe_Scan_Cnf::~Rffe_Scan_Cnf(mipc::dale_rf::Rffe_Scan_Cnf *this)
{
  *this = &unk_2A1E7CC08;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
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
    operator delete(v7);
  }

  *this = &unk_2A1E85968;
  v8 = *(this + 9);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (*(this + 63) < 0)
  {
LABEL_16:
    operator delete(*(this + 5));
  }

LABEL_17:
  v9 = *(this + 3);
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

{
  mipc::dale_rf::Rffe_Scan_Cnf::~Rffe_Scan_Cnf(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_DaleRfMipiDeviceList_struct4,10ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v6;
  v41 = v6;
  *v39 = v6;
  *&v39[16] = v6;
  mipc::Message::findTLV(this, 0x105u, v39);
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
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v33 = a1;
      v11 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v12 = a3[1];
        v14 = v12 - *a3;
        if (v14 == 160)
        {
          v8 = 0x100000010;
          goto LABEL_45;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v33;
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
          v24 = (v14 >> 4) + 1;
          if (v24 >> 60)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = v22 - v13;
          if (v25 >> 3 > v24)
          {
            v24 = v25 >> 3;
          }

          v26 = v25 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v24;
          if (v26)
          {
            if (v26 >> 60)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(16 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[16 * (v14 >> 4)];
          *v28 = 0;
          *(v28 + 1) = 0;
          v23 = v28 + 16;
          memcpy(v27, v13, v14);
          *a3 = v27;
          a3[1] = v23;
          a3[2] = &v27[16 * v26];
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v12 = 0;
          v12[1] = 0;
          v23 = v12 + 2;
        }

        a3[1] = v23;
        if (v19 > 0x10)
        {
          break;
        }

        if (v19 != 16)
        {
          v8 = 0x100000011;
          goto LABEL_45;
        }

        *(v23 - 1) = *v21;
        if (v11 - v21 <= 20)
        {
          v10 = v11;
        }

        else
        {
          v10 = v21 + 20;
        }

        if ((v11 - v10) <= 7)
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

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x105u, &v34, "", 0, a1);
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

void sub_297C4F2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

unint64_t mipc::dale_rf::Rffe_Scan_Cnf::getSize(int64x2_t *this)
{
  v1 = this[8].i64[0];
  v2 = this[8].i64[1];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 24 * ((v2 - v1 - 16) >> 4) + 40;
  }

  v4 = 24;
  if (HIDWORD(this[2].i64[0]))
  {
    v4 = 32;
  }

  v5 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v5, vceqzq_s64(this[6])), vbicq_s8(v5, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v4 + v3;
}

double mipc::dale_rf::Get_Online_Vswr_Req::Get_Online_Vswr_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3833;
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
  *a1 = &unk_2A1E7CC50;
  return result;
}

{
  *(a1 + 8) = -3833;
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
  *a1 = &unk_2A1E7CC50;
  return result;
}

void mipc::dale_rf::Get_Online_Vswr_Req::~Get_Online_Vswr_Req(mipc::dale_rf::Get_Online_Vswr_Req *this)
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

void mipc::dale_rf::Get_Online_Vswr_Req::serialize(mipc::dale_rf::Get_Online_Vswr_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C4FA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::dale_rf::Get_Online_Vswr_Cnf *mipc::dale_rf::Get_Online_Vswr_Cnf::Get_Online_Vswr_Cnf(mipc::dale_rf::Get_Online_Vswr_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 61703, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7CC98;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  mipc::dale_rf::Get_Online_Vswr_Cnf::deserialize(this, v7);
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

void sub_297C4FB9C(_Unwind_Exception *a1)
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

void mipc::dale_rf::Get_Online_Vswr_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<short,false>(this, this + 12, 0x101u, &v24);
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
    mipc::Message::deserializeTlv<short,false>(this, this + 13, 0x102u, &v24);
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
      mipc::Message::deserializeTlv<short,false>(this, this + 14, 0x103u, &v24);
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
        mipc::Message::deserializeTlv<short,false>(this, this + 15, 0x104u, &v24);
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

uint64_t mipc::dale_rf::Get_Online_Vswr_Cnf::Get_Online_Vswr_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 61703, &v14, a3, 2);
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
  *a1 = &unk_2A1E7E678;
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
  *a1 = &unk_2A1E7CC98;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_297C50468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_rf::Get_Online_Vswr_Cnf::~Get_Online_Vswr_Cnf(mipc::dale_rf::Get_Online_Vswr_Cnf *this)
{
  *this = &unk_2A1E7CC98;
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
  mipc::dale_rf::Get_Online_Vswr_Cnf::~Get_Online_Vswr_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::dale_rf::Get_Online_Vswr_Cnf::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1;
}

double mipc::dale_rf::Get_Vswr_Deembed_Req::Get_Vswr_Deembed_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3832;
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
  *a1 = &unk_2A1E7CCE0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = -3832;
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
  *a1 = &unk_2A1E7CCE0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::dale_rf::Get_Vswr_Deembed_Req::~Get_Vswr_Deembed_Req(mipc::dale_rf::Get_Vswr_Deembed_Req *this)
{
  *this = &unk_2A1E7CCE0;
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
  *this = &unk_2A1E7CCE0;
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
  *this = &unk_2A1E7CCE0;
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

void mipc::dale_rf::Get_Vswr_Deembed_Req::serialize(mipc::dale_rf::Get_Vswr_Deembed_Req *this@<X0>, uint64_t a2@<X8>)
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
LABEL_70:
    *(a2 + 48) = 1;
    goto LABEL_71;
  }

  if (*(this + 11))
  {
    *v40 = 256;
    v8 = v40++;
    v8[1] = 4;
    v9 = v40++;
    *(v9 + 1) = **(this + 11);
    v40 += 2;
  }

  else if (!*(this + 4))
  {
    v10 = 0x10000000FLL;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v43 = 0;
  v44 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v10, 0x100u, &v43, "", 0, &v34);
  v11 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    __p[0] = v34;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __p[0] = v34;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_10:
    operator delete(__p[1]);
  }

LABEL_11:
  *&__p[1] = *v35;
  __p[3] = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35[0]) = 0;
  v12 = v37;
  v37 = 0uLL;
  v39 = v12;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
    v13 = *(&v37 + 1);
    v14 = __p[0];
    if (!*(&v37 + 1))
    {
LABEL_15:
      if ((SHIBYTE(v36) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_23:
      operator delete(v35[0]);
      if (v14)
      {
        goto LABEL_69;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = *(&v37 + 1);
    v14 = __p[0];
    if (!*(&v37 + 1))
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
  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v14)
  {
    goto LABEL_69;
  }

LABEL_24:
  if (*(this + 12))
  {
    *v40 = 257;
    v15 = v40++;
    v15[1] = 2;
    v16 = v40++;
    v16[1] = **(this + 12);
    v40 += 2;
  }

  v43 = 0;
  v44 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v43, "", 0, &v34);
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
      goto LABEL_42;
    }

LABEL_69:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v39;
    goto LABEL_70;
  }

  if (v21)
  {
    goto LABEL_69;
  }

LABEL_42:
  if (*(this + 13))
  {
    *v40 = 258;
    v22 = v40++;
    v22[1] = 2;
    v23 = v40++;
    v23[1] = **(this + 13);
    v40 += 2;
  }

  v43 = 0;
  v44 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v43, "", 0, &v34);
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
    goto LABEL_69;
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
    goto LABEL_69;
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

LABEL_71:
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