void mipc::dale_awd::Submit_Trigger_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
          mipc::Message::deserializeTlv<unsigned long long,true>(&v28, this, this + 16);
          mipc::Error::operator=(a2, &v28);
          mipc::Error::~Error(&v28);
        }
      }
    }
  }
}

uint64_t mipc::dale_awd::Submit_Trigger_Ind::Submit_Trigger_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62725, &v14, a3, 3);
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
  *a1 = &unk_2A1E78690;
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
  *a1 = &unk_2A1E780D8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_297BEB3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_awd::Submit_Trigger_Ind::~Submit_Trigger_Ind(mipc::dale_awd::Submit_Trigger_Ind *this)
{
  *this = &unk_2A1E780D8;
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
  mipc::dale_awd::Submit_Trigger_Ind::~Submit_Trigger_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<unsigned long long,true>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  *v24 = v6;
  *&v24[16] = v6;
  mipc::Message::findTLV(this, 0x105u, v24);
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
    goto LABEL_30;
  }

  v9 = v26;
  v10 = *(&v26 + 1);
  v11 = this[4];
  v12 = *a3;
  *a3 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  if (v8)
  {
    if (v8 == 0x10000000ELL)
    {
      if (v11)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0x10000000FLL;
      }

      v13 = this[3];
      v19 = this[2];
      v20 = v13;
      if (!v13)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v14 = operator new(8uLL);
    *v14 = 0;
    v15 = *a3;
    *a3 = v14;
    if (v15)
    {
      operator delete(v15);
      v14 = *a3;
    }

    if (v9 > 8)
    {
      v8 = 0x100000012;
      v13 = this[3];
      v19 = this[2];
      v20 = v13;
      if (!v13)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v9 != 8)
    {
      v8 = 0x100000011;
      v13 = this[3];
      v19 = this[2];
      v20 = v13;
      if (!v13)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v8 = 0;
    *v14 = *v10;
  }

  v13 = this[3];
  v19 = this[2];
  v20 = v13;
  if (v13)
  {
LABEL_26:
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_27:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x105u, &v19, "", 0, a1);
  v16 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_30:
  v17 = *&v23[16];
  if (*&v23[16] && !atomic_fetch_add((*&v23[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if ((v23[7] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_33:
    operator delete(__p[0]);
  }

LABEL_34:
  v18 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if ((v24[31] & 0x80000000) != 0)
  {
LABEL_37:
    operator delete(*&v24[8]);
  }
}

void sub_297BEB880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297BEB894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297BEB8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::dale_awd::Submit_Trigger_Ind::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1 + 16 * (this[8].i64[0] != 0);
}

mipc::dale_awd::Metric_Submission_Ind *mipc::dale_awd::Metric_Submission_Ind::Metric_Submission_Ind(mipc::dale_awd::Metric_Submission_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62726, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E78120;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  mipc::dale_awd::Metric_Submission_Ind::deserialize(this, &v7);
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

void sub_297BEBA80(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 152));
  v4 = *(v1 + 144);
  *(v1 + 144) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 136);
    *(v1 + 136) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 128);
      *(v1 + 128) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = *(v1 + 136);
    *(v1 + 136) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 128);
  *(v1 + 128) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 120);
    *(v1 + 120) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v6);
  v7 = *(v1 + 120);
  *(v1 + 120) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v7);
  v8 = *(v1 + 112);
  *(v1 + 112) = 0;
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 104);
    *(v1 + 104) = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v8);
  v9 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 96);
    *(v1 + 96) = 0;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v9);
  v10 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (!v10)
  {
LABEL_8:
    v11 = *v2;
    *v2 = 0;
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v10);
  v11 = *v2;
  *v2 = 0;
  if (!v11)
  {
LABEL_9:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_17:
  operator delete(v11);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::dale_awd::Metric_Submission_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v31);
  *a2 = v31;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v33;
  HIBYTE(v33) = 0;
  LOBYTE(__p) = 0;
  v4 = v34;
  v34 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v34 + 1);
  if (*(&v34 + 1) && !atomic_fetch_add((*(&v34 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v31);
  *a2 = v31;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v33;
  HIBYTE(v33) = 0;
  LOBYTE(__p) = 0;
  v8 = v34;
  v34 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v34 + 1);
  if (!*(&v34 + 1) || atomic_fetch_add((*(&v34 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
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
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 12, 0x101u, &v31);
  *a2 = v31;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v33;
  HIBYTE(v33) = 0;
  LOBYTE(__p) = 0;
  v12 = v34;
  v34 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v34 + 1);
  if (*(&v34 + 1) && !atomic_fetch_add((*(&v34 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned int,true>(this, this + 13, 0x102u, &v31);
    *a2 = v31;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v33;
    HIBYTE(v33) = 0;
    LOBYTE(__p) = 0;
    v16 = v34;
    v34 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v34 + 1);
    if (*(&v34 + 1) && !atomic_fetch_add((*(&v34 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<unsigned int,true>(this, this + 14, 0x103u, &v31);
      *a2 = v31;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v33;
      HIBYTE(v33) = 0;
      LOBYTE(__p) = 0;
      v20 = v34;
      v34 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v34 + 1);
      if (*(&v34 + 1) && !atomic_fetch_add((*(&v34 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<unsigned int,true>(this, this + 15, 0x104u, &v31);
        *a2 = v31;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v33;
        HIBYTE(v33) = 0;
        LOBYTE(__p) = 0;
        v24 = v34;
        v34 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v34 + 1);
        if (*(&v34 + 1) && !atomic_fetch_add((*(&v34 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<unsigned int,true>(this, this + 16, 0x105u, &v31);
          v28 = *mipc::Error::operator=(a2, &v31);
          mipc::Error::~Error(&v31);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned short,true>(this, this + 17, 0x106u, &v31);
            v29 = *mipc::Error::operator=(a2, &v31);
            mipc::Error::~Error(&v31);
            if (!v29)
            {
              mipc::Message::deserializeTlv<unsigned short,true>(this, this + 18, 0x107u, &v31);
              v30 = *mipc::Error::operator=(a2, &v31);
              mipc::Error::~Error(&v31);
              if (!v30)
              {
                mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<59000ul,false>,true>(&v31, this, this + 19, 0x108u);
                mipc::Error::operator=(a2, &v31);
                mipc::Error::~Error(&v31);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t mipc::dale_awd::Metric_Submission_Ind::Metric_Submission_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62726, &v14, a3, 3);
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
  *a1 = &unk_2A1E786D8;
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
  *a1 = &unk_2A1E78120;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return a1;
}

void sub_297BEC594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_awd::Metric_Submission_Ind::~Metric_Submission_Ind(mipc::dale_awd::Metric_Submission_Ind *this)
{
  *this = &unk_2A1E78120;
  v2 = *(this + 19);
  *(this + 19) = 0;
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
  mipc::dale_awd::Metric_Submission_Ind::~Metric_Submission_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<59000ul,false>,true>(void *a1, std::__shared_weak_count **this, void **a3, unsigned int a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v8;
  v30 = v8;
  *v28 = v8;
  *&v28[16] = v8;
  mipc::Message::findTLV(this, a4, v28);
  *&v27[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v27 = v9;
  *__p = v9;
  v25 = *v28;
  if ((v28[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v28[8], *&v28[16]);
  }

  else
  {
    *__p = *&v28[8];
    *v27 = *&v28[24];
  }

  *&v27[8] = v29;
  if (*(&v29 + 1))
  {
    atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v25;
  if (v25 && v25 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v25, a1);
    goto LABEL_32;
  }

  v11 = v30;
  v12 = *(&v30 + 1);
  v13 = this[4];
  v14 = *a3;
  *a3 = 0;
  if (v14)
  {
    v15 = *v14;
    if (*v14)
    {
      v14[1] = v15;
      operator delete(v15);
    }

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

      v16 = this[3];
      v23 = this[2];
      v24 = v16;
      if (!v16)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v17 = operator new(0x18uLL);
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    v18 = *a3;
    *a3 = v17;
    if (v18)
    {
      v19 = *v18;
      if (*v18)
      {
        v18[1] = v19;
        operator delete(v19);
      }

      operator delete(v18);
      v17 = *a3;
    }

    v10 = 0x100000003;
    if (v11)
    {
      if (v11 <= 0xE678)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v17, v12, &v12[v11], v11);
        v10 = 0;
        v16 = this[3];
        v23 = this[2];
        v24 = v16;
        if (!v16)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v10 = 0x100000010;
    }
  }

  v16 = this[3];
  v23 = this[2];
  v24 = v16;
  if (v16)
  {
LABEL_28:
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_29:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, a4, &v23, "", 0, a1);
  v20 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

LABEL_32:
  v21 = *&v27[16];
  if (*&v27[16] && !atomic_fetch_add((*&v27[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    if ((v27[7] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((v27[7] & 0x80000000) != 0)
  {
LABEL_35:
    operator delete(__p[0]);
  }

LABEL_36:
  v22 = *(&v29 + 1);
  if (!*(&v29 + 1) || atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v28[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if ((v28[31] & 0x80000000) != 0)
  {
LABEL_39:
    operator delete(*&v28[8]);
  }
}

void sub_297BECACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297BECAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297BECAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::dale_awd::Metric_Submission_Ind::getSize(mipc::dale_awd::Metric_Submission_Ind *this)
{
  v1 = *(this + 19);
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

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  v5 = vdupq_n_s64(8uLL);
  return &v1[(*(this + 16) != 0) + (*(this + 11) != 0)] + vaddvq_s64(vbicq_s8(v5, vceqzq_s64(*(this + 136)))) + v4 + vaddvq_s64(vaddq_s64(vbicq_s8(v5, vceqzq_s64(*(this + 6))), vbicq_s8(v5, vceqzq_s64(*(this + 7)))));
}

mipc::dale_awd::Metric_Submission_End_Ind *mipc::dale_awd::Metric_Submission_End_Ind::Metric_Submission_End_Ind(mipc::dale_awd::Metric_Submission_End_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62727, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E78168;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  mipc::dale_awd::Metric_Submission_End_Ind::deserialize(this, &v7);
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

void sub_297BECD0C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
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

void mipc::dale_awd::Metric_Submission_End_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
          mipc::Message::deserializeTlv<unsigned short,true>(this, this + 16, 0x105u, &v28);
          mipc::Error::operator=(a2, &v28);
          mipc::Error::~Error(&v28);
        }
      }
    }
  }
}

uint64_t mipc::dale_awd::Metric_Submission_End_Ind::Metric_Submission_End_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62727, &v14, a3, 3);
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
  *a1 = &unk_2A1E78720;
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
  *a1 = &unk_2A1E78168;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_297BED70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_awd::Metric_Submission_End_Ind::~Metric_Submission_End_Ind(mipc::dale_awd::Metric_Submission_End_Ind *this)
{
  *this = &unk_2A1E78168;
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
  mipc::dale_awd::Metric_Submission_End_Ind::~Metric_Submission_End_Ind(this);

  operator delete(v1);
}

uint64_t mipc::dale_awd::Metric_Submission_End_Ind::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1 + 8 * (this[8].i64[0] != 0);
}

double mipc::dale_awd::Test_Target_Event_Req::Test_Target_Event_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -2808;
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
  *a1 = &unk_2A1E781B0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = -2808;
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
  *a1 = &unk_2A1E781B0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::dale_awd::Test_Target_Event_Req::~Test_Target_Event_Req(mipc::dale_awd::Test_Target_Event_Req *this)
{
  *this = &unk_2A1E781B0;
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
  *this = &unk_2A1E781B0;
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
  *this = &unk_2A1E781B0;
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

void mipc::dale_awd::Test_Target_Event_Req::serialize(mipc::dale_awd::Test_Target_Event_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297BEE22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::dale_awd::Test_Target_Event_Req::getSize(mipc::dale_awd::Test_Target_Event_Req *this)
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

mipc::dale_awd::Test_Target_Event_Cnf *mipc::dale_awd::Test_Target_Event_Cnf::Test_Target_Event_Cnf(mipc::dale_awd::Test_Target_Event_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62728, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E781F8;
  *(this + 11) = 0;
  mipc::dale_awd::Test_Target_Event_Cnf::deserialize(this, &v7);
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

void sub_297BEE3A0(_Unwind_Exception *a1)
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

void mipc::dale_awd::Test_Target_Event_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_awd::Test_Target_Event_Cnf::Test_Target_Event_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62728, &v14, a3, 2);
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
  *a1 = &unk_2A1E78768;
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
  *a1 = &unk_2A1E781F8;
  a1[11] = 0;
  return a1;
}

void sub_297BEE79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_awd::Test_Target_Event_Cnf::~Test_Target_Event_Cnf(mipc::dale_awd::Test_Target_Event_Cnf *this)
{
  *this = &unk_2A1E781F8;
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
  *this = &unk_2A1E781F8;
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
  *this = &unk_2A1E781F8;
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

uint64_t mipc::dale_awd::Test_Target_Event_Cnf::getSize(mipc::dale_awd::Test_Target_Event_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

mipc::dale_awd::Batch_Metric_Submission_Ind *mipc::dale_awd::Batch_Metric_Submission_Ind::Batch_Metric_Submission_Ind(mipc::dale_awd::Batch_Metric_Submission_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62729, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E78240;
  *(this + 11) = 0;
  mipc::dale_awd::Batch_Metric_Submission_Ind::deserialize(this, &v7);
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

void sub_297BEECA4(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::dale_awd::Batch_Metric_Submission_Ind::deserialize(mipc::dale_awd::Batch_Metric_Submission_Ind *this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<59000ul,false>,true>(&v8, this, this + 11, 0x100u);
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

void *mipc::dale_awd::Batch_Metric_Submission_Ind::Batch_Metric_Submission_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62729, &v14, a3, 3);
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
  *a1 = &unk_2A1E787B0;
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
  *a1 = &unk_2A1E78240;
  a1[11] = 0;
  return a1;
}

void sub_297BEF09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_awd::Batch_Metric_Submission_Ind::~Batch_Metric_Submission_Ind(mipc::dale_awd::Batch_Metric_Submission_Ind *this)
{
  *this = &unk_2A1E78240;
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
  *this = &unk_2A1E78240;
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
  *this = &unk_2A1E78240;
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

void *mipc::dale_awd::Batch_Metric_Submission_Ind::getSize(mipc::dale_awd::Batch_Metric_Submission_Ind *this)
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

uint64_t mipc::toErrorCode(mipc *this, std::errc a2)
{
  v2 = this;
  result = 0x100000015;
  if (v2 <= 59)
  {
    if (v2 == 5)
    {
      return 0x100000016;
    }

    if (v2 == 54)
    {
      return 0x100000018;
    }

    return 0x100000001;
  }

  if (v2 == 94)
  {
    return 0x100000001;
  }

  if (v2 == 89)
  {
    return 0x100000017;
  }

  if (v2 != 60)
  {
    return 0x100000001;
  }

  return result;
}

char *mipc::Error::asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return &str_4;
  }

  else
  {
    return (&off_29EE84608)[a1];
  }
}

BOOL mipc::operator==(void *a1, uint64_t a2)
{
  return *a1 == a2;
}

{
  return *a1 == a2;
}

BOOL mipc::operator==(uint64_t a1, void *a2)
{
  return *a2 == a1;
}

{
  return *a2 == a1;
}

double mipc::data::Act_Call_Req::Act_Call_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 513;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E787F8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 513;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E787F8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 80) = 1;
  return result;
}

void mipc::data::Act_Call_Req::~Act_Call_Req(mipc::data::Act_Call_Req *this)
{
  *this = &unk_2A1E787F8;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete(v3);
  }

  v4 = *(this + 26);
  *(this + 26) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 25);
  *(this + 25) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 24);
  *(this + 24) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 23);
  *(this + 23) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 22);
  *(this + 22) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 21);
  *(this + 21) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 20);
  *(this + 20) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 19);
  *(this + 19) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 18);
  *(this + 18) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 17);
  *(this + 17) = 0;
  if (v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    operator delete(v13);
  }

  v14 = *(this + 16);
  *(this + 16) = 0;
  if (v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    operator delete(v14);
  }

  v15 = *(this + 15);
  *(this + 15) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(this + 14);
  *(this + 14) = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(this + 13);
  *(this + 13) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(this + 12);
  *(this + 12) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(this + 11);
  *(this + 11) = 0;
  if (v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    operator delete(v19);
  }

  *this = &unk_2A1E85968;
  v20 = *(this + 9);
  if (!v20 || atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (*(this + 63) < 0)
  {
LABEL_48:
    operator delete(*(this + 5));
  }

LABEL_49:
  v21 = *(this + 3);
  if (v21)
  {
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }
}

{
  mipc::data::Act_Call_Req::~Act_Call_Req(this);

  operator delete(v1);
}

void mipc::data::Act_Call_Req::serialize(mipc::data::Act_Call_Req *this@<X0>, uint64_t a2@<X8>)
{
  Size = mipc::data::Act_Call_Req::getSize(this);
  v61 = 0;
  v60 = 0uLL;
  if (Size)
  {
    if ((Size & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v5 = Size;
    v6 = operator new(Size);
    *&v60 = v6;
    v61 = &v6[v5];
    bzero(v6, v5);
    *(&v60 + 1) = &v6[v5];
  }

  else
  {
    v6 = 0;
  }

  v59 = v6;
  v58 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v53, this, &v59);
  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v7 = v56;
  v56 = 0uLL;
  v8 = *(&v58 + 1);
  v58 = v7;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = *(&v56 + 1);
    v10 = __p[0];
    if (!*(&v56 + 1))
    {
LABEL_11:
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_17:
      operator delete(v54);
      if (v10)
      {
        goto LABEL_102;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v9 = *(&v56 + 1);
    v10 = __p[0];
    if (!*(&v56 + 1))
    {
      goto LABEL_11;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_11;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v10)
  {
    goto LABEL_102;
  }

LABEL_18:
  mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,false>(&v53, this, this + 11, 0x101u, &v59);
  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v11 = v56;
  v56 = 0uLL;
  v12 = *(&v58 + 1);
  v58 = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v13 = *(&v56 + 1);
    v14 = __p[0];
    if (!*(&v56 + 1))
    {
LABEL_24:
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_30:
      operator delete(v54);
      if (v14)
      {
        goto LABEL_102;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v13 = *(&v56 + 1);
    v14 = __p[0];
    if (!*(&v56 + 1))
    {
      goto LABEL_24;
    }
  }

  if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_24;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v14)
  {
    goto LABEL_102;
  }

LABEL_31:
  if (*(this + 12))
  {
    *v59 = 258;
    v15 = v59++;
    v15[1] = 4;
    v16 = v59++;
    *(v16 + 1) = **(this + 12);
    v59 += 2;
  }

  else if (!*(this + 4))
  {
    v17 = 0x10000000FLL;
    goto LABEL_35;
  }

  v17 = 0;
LABEL_35:
  v62 = 0;
  v63 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v17, 0x102u, &v62, "", 0, &v53);
  v18 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v19 = v56;
  v56 = 0uLL;
  v20 = *(&v58 + 1);
  v58 = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *(&v56 + 1);
  v22 = __p[0];
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
    if (!v22)
    {
      goto LABEL_50;
    }

LABEL_102:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v58;
    v58 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_103;
  }

  if (v22)
  {
    goto LABEL_102;
  }

LABEL_50:
  if (*(this + 13))
  {
    *v59 = 259;
    v23 = v59++;
    v23[1] = 1;
    v24 = v59++;
    *(v24 + 2) = **(this + 13);
    v59 += 2;
  }

  v62 = 0;
  v63 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x103u, &v62, "", 0, &v53);
  v25 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v26 = v56;
  v56 = 0uLL;
  v27 = *(&v58 + 1);
  v58 = v26;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(&v56 + 1);
  v29 = __p[0];
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v29)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 260, &v59, &v53);
  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v30 = v56;
  v56 = 0uLL;
  v31 = *(&v58 + 1);
  v58 = v30;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(&v56 + 1);
  v33 = __p[0];
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v33)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 15, 261, &v59, &v53);
  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v34 = v56;
  v56 = 0uLL;
  v35 = *(&v58 + 1);
  v58 = v34;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *(&v56 + 1);
  v37 = __p[0];
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v37)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,false>(this, this + 16, 0x106u, &v59, &v53);
  v38 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v38)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,false>(this, this + 17, 0x107u, &v59, &v53);
  v39 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v39)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 18, 264, &v59, &v53);
  v40 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v40)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 19, 266, &v59, &v53);
  v41 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v41)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned int,false>(this, this + 20, 268, &v59, &v53);
  v42 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v42)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 21, 272, &v59, &v53);
  v43 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v43)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 22, 273, &v59, &v53);
  v44 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v44)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 23, 277, &v59, &v53);
  v45 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v45)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<mipc::mipc_s_nssai_struct_struct4,false>(&v53, this, this + 24, &v59);
  v46 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v46)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 25, 279, &v59, &v53);
  v47 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v47)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 26, 280, &v59, &v53);
  v48 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v48)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<254ul,false>,false>(&v53, this, this + 27, &v59);
  v49 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v49)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<mipc::mipc_data_raw_pco_ie_struct4,20ul,false>(&v53, this, this + 28, &v59);
  v50 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v50)
  {
    goto LABEL_102;
  }

  (*(*this + 32))(&v53, this, &v60);
  v51 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v51)
  {
    goto LABEL_102;
  }

  *a2 = v60;
  *(a2 + 16) = v61;
  v61 = 0;
  v60 = 0uLL;
  *(a2 + 48) = 0;
  v52 = *(&v58 + 1);
  if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
  }

LABEL_103:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v60)
  {
    *(&v60 + 1) = v60;
    operator delete(v60);
  }
}

void sub_297BF0570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

unint64_t mipc::data::Act_Call_Req::getSize(int64x2_t *this)
{
  v1 = this[5].i64[1];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = *(v1 + 23);
  v3 = *(v1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v3 = v2;
  }

  if ((v3 - 65531) >= 0xFFFFFFFFFFFF0000)
  {
    v4 = ((v3 + 12) & 0xFFF8) + 16;
    v5 = this[8].i64[0];
    if (!v5)
    {
LABEL_6:
      v6 = this[8].i64[1];
      if (!v6)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
LABEL_5:
    v4 = 16;
    v5 = this[8].i64[0];
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v18 = *(v5 + 23);
  v19 = *(v5 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  if ((v19 - 65531) >= 0xFFFFFFFFFFFF0000)
  {
    v5 = (v19 + 12) & 0xFFF8;
    v6 = this[8].i64[1];
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v6 = this[8].i64[1];
    if (!v6)
    {
      goto LABEL_11;
    }
  }

LABEL_7:
  v7 = *(v6 + 23);
  v8 = *(v6 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v7;
  }

  v9 = __CFADD__(v8 - 65531, 0x10000);
  v6 = (v8 + 12) & 0xFFF8;
  if (!v9)
  {
    v6 = 0;
  }

LABEL_11:
  v10 = this[13].i64[1];
  if (v10)
  {
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v9 = __CFADD__(v12 - 65531, 0x10000);
    v10 = (v12 + 12) & 0xFFF8;
    if (!v9)
    {
      v10 = 0;
    }
  }

  v13 = this[14].i64[0];
  v14 = this[14].i64[1];
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 264 * ((v14 - v13 - 260) / 0x104uLL) + 280;
  }

  v16 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vbicq_s8(v16, vceqzq_s64(this[6])), vbicq_s8(v16, vceqzq_s64(this[9]))), vaddq_s64(vbicq_s8(v16, vceqzq_s64(this[7])), vbicq_s8(v16, vceqzq_s64(this[10])))), vaddq_s64(vbicq_s8(v16, vceqzq_s64(this[11])), vbicq_s8(xmmword_297DCA380, vceqzq_s64(this[12]))))) + 8 * (this[13].i64[0] != 0) + v15 + v10 + v6 + v5 + v4;
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<100ul,false>,false>(uint64_t a1, uint64_t a2, char **a3, unsigned int a4, uint64_t *a5)
{
  v8 = *a3;
  if (*a3)
  {
    v9 = v8[23];
    v10 = *(v8 + 4);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    **a5 = a4;
    v11 = (*a5 + 2);
    *a5 = v11;
    *v11 = v10 + 1;
    v12 = (*a5 + 2);
    *a5 = v12;
    v13 = *a3;
    v14 = (*a3)[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      v14 = *(v13 + 1);
      if (v14 <= 0x63)
      {
        v15 = a5;
        v16 = *v13;
        goto LABEL_11;
      }

      v13 = *v13;
    }

    else if (v14 <= 0x63)
    {
      v15 = a5;
      v16 = *a3;
LABEL_11:
      memcpy(v12, v16, v14);
      v19 = (*v15 + v14);
      *v15 = v19;
      *v19 = 0;
      v18 = *v15 + 1;
      *v15 = v18;
      LOWORD(v19) = v13[23];
      if (v19 < 0)
      {
        v19 = *(v13 + 1);
      }

      *v15 = v18 + (((v19 + 12) & 0xFFF8) - v19 - 5);
      goto LABEL_14;
    }

    v23 = &v13[v14];
    v24 = v13;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v24, &v23, &v21);
    v17 = 0x100000010;
    goto LABEL_15;
  }

LABEL_14:
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

void sub_297BF0974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<128ul,false>,false>(uint64_t a1@<X0>, char **a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    v7 = v5[23];
    v8 = *(v5 + 4);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    **a4 = a3;
    v9 = (*a4 + 2);
    *a4 = v9;
    *v9 = v8 + 1;
    v10 = (*a4 + 2);
    *a4 = v10;
    v11 = *a2;
    v12 = (*a2)[23];
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(v11 + 1);
      if (v12 > 0x7F)
      {
        v27 = *v11;
        v26 = &v27[v12];
        v17 = a5;
        v18 = a1;
        v19 = a3;
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v27, &v26, &v24);
        a5 = v17;
        a1 = v18;
        a3 = v19;
        v20 = 0x100000010;
        goto LABEL_13;
      }

      v13 = a5;
      v14 = a1;
      v15 = a3;
      v16 = *v11;
    }

    else
    {
      v13 = a5;
      v14 = a1;
      v15 = a3;
      v16 = *a2;
    }

    memcpy(v10, v16, v12);
    v22 = (*a4 + v12);
    *a4 = v22;
    *v22 = 0;
    v21 = *a4 + 1;
    *a4 = v21;
    LOWORD(v22) = v11[23];
    if (v22 < 0)
    {
      v22 = *(v11 + 1);
    }

    *a4 = v21 + (((v22 + 12) & 0xFFF8) - v22 - 5);
    a3 = v15;
    a1 = v14;
    a5 = v13;
  }

  v20 = 0;
  v24 = 0;
  v25 = 0;
LABEL_13:
  mipc::Message::handle<(mipc::Error::Type)1>(a1, v20, a3, &v24, "", 0, a5);
  v23 = v25;
  if (v25)
  {
    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }
}

void sub_297BF0B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mipc::Message::serializeTlv<mipc::mipc_s_nssai_struct_struct4,false>(uint64_t a1, uint64_t a2, _OWORD **a3, _WORD **a4)
{
  if (*a3)
  {
    **a4 = 278;
    v4 = (*a4)++;
    v4[1] = 16;
    v5 = (*a4)++;
    *(v5 + 1) = **a3;
    *a4 += 10;
  }

  v7 = 0;
  v8 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a2, 0, 0x116u, &v7, "", 0, a1);
  v6 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<254ul,false>,false>(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
{
  v6 = *a3;
  if (*a3)
  {
    v8 = v6[23];
    v9 = *(v6 + 4);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    **a4 = 281;
    v10 = (*a4 + 2);
    *a4 = v10;
    *v10 = v9 + 1;
    v11 = (*a4 + 2);
    *a4 = v11;
    v12 = *a3;
    v13 = (*a3)[23];
    if ((v13 & 0x8000000000000000) != 0)
    {
      v13 = *(v12 + 1);
      if (v13 > 0xFD)
      {
        v22 = *v12;
        v21 = &v22[v13];
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v22, &v21, &v19);
        v15 = 0x100000010;
        goto LABEL_13;
      }

      v14 = *v12;
    }

    else
    {
      v14 = *a3;
    }

    memcpy(v11, v14, v13);
    v17 = (*a4 + v13);
    *a4 = v17;
    *v17 = 0;
    v16 = *a4 + 1;
    *a4 = v16;
    LOWORD(v17) = v12[23];
    if (v17 < 0)
    {
      v17 = *(v12 + 1);
    }

    *a4 = v16 + (((v17 + 12) & 0xFFF8) - v17 - 5);
  }

  v15 = 0;
  v19 = 0;
  v20 = 0;
LABEL_13:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v15, 0x119u, &v19, "", 0, a1);
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

void sub_297BF0E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mipc::Message::serializeTlv<mipc::mipc_data_raw_pco_ie_struct4,20ul,false>(uint64_t a1, uint64_t a2, char **a3, _WORD **a4)
{
  v4 = a2;
  v6 = *a3;
  if (v6 == *(&v6 + 1))
  {
    goto LABEL_17;
  }

  v8 = 0x100000002;
  v9 = 0xFC0FC0FC0FC0FC1 * ((*(&v6 + 1) - v6) >> 2);
  if (v9 <= 0x14)
  {
    v10 = *(a2 + 14) - v9;
    v11 = (*(a2 + 14) - v9);
    *(a2 + 14) -= v9;
    if (v11 < 0x100)
    {
      goto LABEL_5;
    }

    v22 = v10 + 1;
    **a4 = 282;
    v23 = *a4 + 1;
    *a4 = v23;
    *v23 = 0;
    v24 = *a4 + 1;
    *a4 = v24;
    *v24 = 0;
    v25 = *a4 + 2;
    *a4 = v25;
    *v25 = 0;
    v26 = *a4 + 2;
    *a4 = v26;
    *v26 = v10 + 1;
    v27 = *a4 + 1;
    *a4 = v27;
    *v27 = v9;
    v28 = *a4 + 1;
    *a4 = v28;
    for (i = *a3; i != a3[1]; i += 260)
    {
      *v28 = v22;
      v30 = *a4 + 1;
      *a4 = v30;
      *v30 = 260;
      v31 = *a4 + 1;
      *a4 = v31;
      ++v22;
      memcpy(v31, i, 0x104uLL);
      v28 = *a4 + 130;
      *a4 = v28;
    }

LABEL_17:
    v8 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_18;
  }

  v8 = 0x100000010;
LABEL_5:
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v37 = (264 * ((*(&v6 + 1) - v6 - 260) / 0x104uLL) + 280);
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v37, &v35);
  v12 = v35;
  v13 = *v35;
  v14 = *a3;
  if (*a3 != a3[1])
  {
    v33 = a1;
    v34 = v4;
    do
    {
      v37 = 0xAAAAAAAAAAAAAAAALL;
      v38 = 0xAAAAAAAAAAAAAAAALL;
      v39 = 260;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v39, &v37);
      v15 = v37;
      memcpy(*v37, v14, 0x104uLL);
      memcpy(v13, *v15, v15[1] - *v15);
      v18 = v15;
      v16 = *v15;
      v17 = v18[1];
      v19 = v38;
      if (v38 && !atomic_fetch_add((v38 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v13 += v17 - v16;
      v14 += 260;
    }

    while (v14 != a3[1]);
    v4 = v34;
    v12 = v35;
    a1 = v33;
  }

  if (v13 != v12[1])
  {
    v20 = v12[1];
    v12[1] = v13;
  }

LABEL_18:
  mipc::Message::handle<(mipc::Error::Type)1>(v4, v8, 0x11Au, &v35, "", 0, a1);
  v32 = v36;
  if (v36)
  {
    if (!atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
    }
  }
}

void sub_297BF1190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297BF11A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::data::Act_Call_Cnf *mipc::data::Act_Call_Cnf::Act_Call_Cnf(mipc::data::Act_Call_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 514, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E78840;
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
  mipc::data::Act_Call_Cnf::deserialize(this, &v7);
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

void sub_297BF1334(_Unwind_Exception *a1)
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
    v9 = *(v1 + 40);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v8);
  v9 = *(v1 + 40);
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 37);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v1 + 41) = v9;
  operator delete(v9);
  v10 = *(v1 + 37);
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 34);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v1 + 38) = v10;
  operator delete(v10);
  v11 = *(v1 + 34);
  if (!v11)
  {
LABEL_9:
    v12 = *(v1 + 31);
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v1 + 35) = v11;
  operator delete(v11);
  v12 = *(v1 + 31);
  if (!v12)
  {
LABEL_10:
    v13 = *(v1 + 28);
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v1 + 32) = v12;
  operator delete(v12);
  v13 = *(v1 + 28);
  if (!v13)
  {
LABEL_11:
    v14 = *(v1 + 25);
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v1 + 29) = v13;
  operator delete(v13);
  v14 = *(v1 + 25);
  if (!v14)
  {
LABEL_12:
    v15 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v1 + 26) = v14;
  operator delete(v14);
  v15 = *(v1 + 24);
  *(v1 + 24) = 0;
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

void mipc::data::Act_Call_Cnf::deserialize(mipc::data::Act_Call_Cnf *this@<X0>, uint64_t a2@<X8>)
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
                      mipc::Message::deserializeTlv<unsigned int,false>(this, this + 22, 0x12Au, &v47);
                      v34 = *mipc::Error::operator=(a2, &v47);
                      mipc::Error::~Error(&v47);
                      if (!v34)
                      {
                        mipc::Message::deserializeTlv<unsigned int,false>(this, this + 23, 0x12Cu, &v47);
                        v35 = *mipc::Error::operator=(a2, &v47);
                        mipc::Error::~Error(&v47);
                        if (!v35)
                        {
                          mipc::Message::deserializeTlv<unsigned char,false>(this, this + 24, 0x12Du, &v47);
                          v36 = *mipc::Error::operator=(a2, &v47);
                          mipc::Error::~Error(&v47);
                          if (!v36)
                          {
                            mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,4ul,false>(&v47, this, this + 25, 0x12Fu);
                            v37 = *mipc::Error::operator=(a2, &v47);
                            mipc::Error::~Error(&v47);
                            if (!v37)
                            {
                              mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,4ul,false>(&v47, this, this + 28, 0x130u);
                              v38 = *mipc::Error::operator=(a2, &v47);
                              mipc::Error::~Error(&v47);
                              if (!v38)
                              {
                                mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,10ul,false>(&v47, this, this + 31, 0x131u);
                                v39 = *mipc::Error::operator=(a2, &v47);
                                mipc::Error::~Error(&v47);
                                if (!v39)
                                {
                                  mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,10ul,false>(&v47, this, this + 34, 0x132u);
                                  v40 = *mipc::Error::operator=(a2, &v47);
                                  mipc::Error::~Error(&v47);
                                  if (!v40)
                                  {
                                    mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,16ul,false>(&v47, this, this + 37, 0x133u);
                                    v41 = *mipc::Error::operator=(a2, &v47);
                                    mipc::Error::~Error(&v47);
                                    if (!v41)
                                    {
                                      mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,16ul,false>(&v47, this, this + 40, 0x134u);
                                      v42 = *mipc::Error::operator=(a2, &v47);
                                      mipc::Error::~Error(&v47);
                                      if (!v42)
                                      {
                                        mipc::Message::deserializeTlv<mipc::mipc_s_nssai_struct_struct4,false>(&v47, this, this + 43, 0x139u);
                                        v43 = *mipc::Error::operator=(a2, &v47);
                                        mipc::Error::~Error(&v47);
                                        if (!v43)
                                        {
                                          mipc::Message::deserializeTlv<unsigned char,false>(this, this + 44, 0x13Au, &v47);
                                          v44 = *mipc::Error::operator=(a2, &v47);
                                          mipc::Error::~Error(&v47);
                                          if (!v44)
                                          {
                                            mipc::Message::deserializeTlv<unsigned char,false>(this, this + 45, 0x13Bu, &v47);
                                            v45 = *mipc::Error::operator=(a2, &v47);
                                            mipc::Error::~Error(&v47);
                                            if (!v45)
                                            {
                                              mipc::Message::deserializeTlv<unsigned char,false>(this, this + 46, 0x13Eu, &v47);
                                              v46 = *mipc::Error::operator=(a2, &v47);
                                              mipc::Error::~Error(&v47);
                                              if (!v46)
                                              {
                                                mipc::Message::deserializeTlv<unsigned int,false>(this, this + 47, 0x13Fu, &v47);
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

uint64_t mipc::data::Act_Call_Cnf::Act_Call_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 514, &v14, a3, 2);
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
  *a1 = &unk_2A1E7A508;
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
  *a1 = &unk_2A1E78840;
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

void sub_297BF2470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Act_Call_Cnf::~Act_Call_Cnf(mipc::data::Act_Call_Cnf *this)
{
  *this = &unk_2A1E78840;
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

  v7 = *(this + 40);
  if (v7)
  {
    *(this + 41) = v7;
    operator delete(v7);
  }

  v8 = *(this + 37);
  if (v8)
  {
    *(this + 38) = v8;
    operator delete(v8);
  }

  v9 = *(this + 34);
  if (v9)
  {
    *(this + 35) = v9;
    operator delete(v9);
  }

  v10 = *(this + 31);
  if (v10)
  {
    *(this + 32) = v10;
    operator delete(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    *(this + 29) = v11;
    operator delete(v11);
  }

  v12 = *(this + 25);
  if (v12)
  {
    *(this + 26) = v12;
    operator delete(v12);
  }

  v13 = *(this + 24);
  *(this + 24) = 0;
  if (v13)
  {
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
  mipc::data::Act_Call_Cnf::~Act_Call_Cnf(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,4ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
{
  v4 = a4;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v8;
  v44 = v8;
  *v42 = v8;
  *&v42[16] = v8;
  mipc::Message::findTLV(this, a4, v42);
  *&v41[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v41 = v9;
  *__p = v9;
  v39 = *v42;
  if ((v42[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v42[8], *&v42[16]);
  }

  else
  {
    *__p = *&v42[8];
    *v41 = *&v42[24];
  }

  *&v41[8] = v43;
  if (*(&v43 + 1))
  {
    atomic_fetch_add_explicit((*(&v43 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v39)
  {
    if (v39 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v39, a1);
      goto LABEL_50;
    }

    v10 = 0;
    a3[1] = *a3;
  }

  else
  {
    v11 = v44;
    v12 = *(&v44 + 1);
    a3[1] = *a3;
    if (v11 < 8)
    {
      v10 = 0;
    }

    else
    {
      v35 = v4;
      v36 = a1;
      v13 = &v12[v11];
      while (1)
      {
        v15 = *a3;
        v14 = a3[1];
        v16 = v14 - *a3;
        if (v16 == 16)
        {
          v10 = 0x100000010;
          goto LABEL_44;
        }

        v17 = v13 - v12;
        if ((v13 - v12) < 4)
        {
          a1 = v36;
          v4 = v35;
          v10 = 0x100000005;
          goto LABEL_45;
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
        v24 = a3[2];
        if (v14 >= v24)
        {
          v26 = (v16 >> 2) + 1;
          if (v26 >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = v24 - v15;
          if (v27 >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v26;
          if (v28)
          {
            if (v28 >> 62)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(4 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[4 * (v16 >> 2)];
          *v30 = 0;
          v25 = v30 + 4;
          memcpy(v29, v15, v16);
          *a3 = v29;
          a3[1] = v25;
          a3[2] = &v29[4 * v28];
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v14 = 0;
          v25 = v14 + 1;
        }

        a3[1] = v25;
        if (v21 > 4)
        {
          break;
        }

        if (v21 != 4)
        {
          v10 = 0x100000011;
          goto LABEL_44;
        }

        v12 = (v23 + 2);
        *(v25 - 1) = *v23;
        if (v13 - v23 <= 4)
        {
          v12 = v13;
        }

        if ((v13 - v12) <= 7)
        {
          v10 = 0;
          goto LABEL_44;
        }
      }

      v10 = 0x100000012;
LABEL_44:
      a1 = v36;
      v4 = v35;
    }
  }

LABEL_45:
  v31 = this[3];
  v37 = this[2];
  v38 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, v4, &v37, "", 0, a1);
  v32 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

LABEL_50:
  v33 = *&v41[16];
  if (*&v41[16] && !atomic_fetch_add((*&v41[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    if ((v41[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v41[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v34 = *(&v43 + 1);
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v42[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

  (v34->__on_zero_shared)(v34);
  std::__shared_weak_count::__release_weak(v34);
  if ((v42[31] & 0x80000000) != 0)
  {
LABEL_57:
    operator delete(*&v42[8]);
  }
}

void sub_297BF2B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,4ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
{
  v4 = a4;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v8;
  v45 = v8;
  *v43 = v8;
  *&v43[16] = v8;
  mipc::Message::findTLV(this, a4, v43);
  *&v42[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v42 = v9;
  *__p = v9;
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

    v10 = 0;
    a3[1] = *a3;
  }

  else
  {
    v11 = v45;
    v12 = *(&v45 + 1);
    a3[1] = *a3;
    if (v11 < 8)
    {
      v10 = 0;
    }

    else
    {
      v36 = v4;
      v37 = a1;
      v13 = &v12[v11];
      while (1)
      {
        v15 = *a3;
        v14 = a3[1];
        v16 = v14 - *a3;
        if (v16 == 64)
        {
          v10 = 0x100000010;
          goto LABEL_45;
        }

        v17 = v13 - v12;
        if ((v13 - v12) < 4)
        {
          a1 = v37;
          v4 = v36;
          v10 = 0x100000005;
          goto LABEL_46;
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
        v24 = a3[2];
        if (v14 >= v24)
        {
          v26 = (v16 >> 4) + 1;
          if (v26 >> 60)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = v24 - v15;
          if (v27 >> 3 > v26)
          {
            v26 = v27 >> 3;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v26;
          if (v28)
          {
            if (v28 >> 60)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(16 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[16 * (v16 >> 4)];
          v31 = &v29[16 * v28];
          *v30 = 0;
          *(v30 + 1) = 0;
          v25 = v30 + 16;
          memcpy(v29, v15, v16);
          *a3 = v29;
          a3[1] = v25;
          a3[2] = v31;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v14 = 0;
          v14[1] = 0;
          v25 = v14 + 2;
        }

        a3[1] = v25;
        if (v21 > 0x10)
        {
          break;
        }

        if (v21 != 16)
        {
          v10 = 0x100000011;
          goto LABEL_45;
        }

        *(v25 - 1) = *v23;
        if (v13 - v23 <= 20)
        {
          v12 = v13;
        }

        else
        {
          v12 = v23 + 20;
        }

        if ((v13 - v12) <= 7)
        {
          v10 = 0;
          goto LABEL_45;
        }
      }

      v10 = 0x100000012;
LABEL_45:
      a1 = v37;
      v4 = v36;
    }
  }

LABEL_46:
  v32 = this[3];
  v38 = this[2];
  v39 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, v4, &v38, "", 0, a1);
  v33 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_51:
  v34 = *&v42[16];
  if (*&v42[16] && !atomic_fetch_add((*&v42[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
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
  v35 = *(&v44 + 1);
  if (!*(&v44 + 1) || atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v43[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if ((v43[31] & 0x80000000) != 0)
  {
LABEL_58:
    operator delete(*&v43[8]);
  }
}

void sub_297BF2FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,10ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
{
  v4 = a4;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v8;
  v44 = v8;
  *v42 = v8;
  *&v42[16] = v8;
  mipc::Message::findTLV(this, a4, v42);
  *&v41[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v41 = v9;
  *__p = v9;
  v39 = *v42;
  if ((v42[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v42[8], *&v42[16]);
  }

  else
  {
    *__p = *&v42[8];
    *v41 = *&v42[24];
  }

  *&v41[8] = v43;
  if (*(&v43 + 1))
  {
    atomic_fetch_add_explicit((*(&v43 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v39)
  {
    if (v39 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v39, a1);
      goto LABEL_50;
    }

    v10 = 0;
    a3[1] = *a3;
  }

  else
  {
    v11 = v44;
    v12 = *(&v44 + 1);
    a3[1] = *a3;
    if (v11 < 8)
    {
      v10 = 0;
    }

    else
    {
      v35 = v4;
      v36 = a1;
      v13 = &v12[v11];
      while (1)
      {
        v15 = *a3;
        v14 = a3[1];
        v16 = v14 - *a3;
        if (v16 == 40)
        {
          v10 = 0x100000010;
          goto LABEL_44;
        }

        v17 = v13 - v12;
        if ((v13 - v12) < 4)
        {
          a1 = v36;
          v4 = v35;
          v10 = 0x100000005;
          goto LABEL_45;
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
        v24 = a3[2];
        if (v14 >= v24)
        {
          v26 = (v16 >> 2) + 1;
          if (v26 >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = v24 - v15;
          if (v27 >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v26;
          if (v28)
          {
            if (v28 >> 62)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(4 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[4 * (v16 >> 2)];
          *v30 = 0;
          v25 = v30 + 4;
          memcpy(v29, v15, v16);
          *a3 = v29;
          a3[1] = v25;
          a3[2] = &v29[4 * v28];
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v14 = 0;
          v25 = v14 + 1;
        }

        a3[1] = v25;
        if (v21 > 4)
        {
          break;
        }

        if (v21 != 4)
        {
          v10 = 0x100000011;
          goto LABEL_44;
        }

        v12 = (v23 + 2);
        *(v25 - 1) = *v23;
        if (v13 - v23 <= 4)
        {
          v12 = v13;
        }

        if ((v13 - v12) <= 7)
        {
          v10 = 0;
          goto LABEL_44;
        }
      }

      v10 = 0x100000012;
LABEL_44:
      a1 = v36;
      v4 = v35;
    }
  }

LABEL_45:
  v31 = this[3];
  v37 = this[2];
  v38 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, v4, &v37, "", 0, a1);
  v32 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

LABEL_50:
  v33 = *&v41[16];
  if (*&v41[16] && !atomic_fetch_add((*&v41[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    if ((v41[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v41[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v34 = *(&v43 + 1);
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v42[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

  (v34->__on_zero_shared)(v34);
  std::__shared_weak_count::__release_weak(v34);
  if ((v42[31] & 0x80000000) != 0)
  {
LABEL_57:
    operator delete(*&v42[8]);
  }
}

void sub_297BF33EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,10ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
{
  v4 = a4;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v8;
  v45 = v8;
  *v43 = v8;
  *&v43[16] = v8;
  mipc::Message::findTLV(this, a4, v43);
  *&v42[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v42 = v9;
  *__p = v9;
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

    v10 = 0;
    a3[1] = *a3;
  }

  else
  {
    v11 = v45;
    v12 = *(&v45 + 1);
    a3[1] = *a3;
    if (v11 < 8)
    {
      v10 = 0;
    }

    else
    {
      v36 = v4;
      v37 = a1;
      v13 = &v12[v11];
      while (1)
      {
        v15 = *a3;
        v14 = a3[1];
        v16 = v14 - *a3;
        if (v16 == 160)
        {
          v10 = 0x100000010;
          goto LABEL_45;
        }

        v17 = v13 - v12;
        if ((v13 - v12) < 4)
        {
          a1 = v37;
          v4 = v36;
          v10 = 0x100000005;
          goto LABEL_46;
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
        v24 = a3[2];
        if (v14 >= v24)
        {
          v26 = (v16 >> 4) + 1;
          if (v26 >> 60)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = v24 - v15;
          if (v27 >> 3 > v26)
          {
            v26 = v27 >> 3;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v26;
          if (v28)
          {
            if (v28 >> 60)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(16 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[16 * (v16 >> 4)];
          v31 = &v29[16 * v28];
          *v30 = 0;
          *(v30 + 1) = 0;
          v25 = v30 + 16;
          memcpy(v29, v15, v16);
          *a3 = v29;
          a3[1] = v25;
          a3[2] = v31;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v14 = 0;
          v14[1] = 0;
          v25 = v14 + 2;
        }

        a3[1] = v25;
        if (v21 > 0x10)
        {
          break;
        }

        if (v21 != 16)
        {
          v10 = 0x100000011;
          goto LABEL_45;
        }

        *(v25 - 1) = *v23;
        if (v13 - v23 <= 20)
        {
          v12 = v13;
        }

        else
        {
          v12 = v23 + 20;
        }

        if ((v13 - v12) <= 7)
        {
          v10 = 0;
          goto LABEL_45;
        }
      }

      v10 = 0x100000012;
LABEL_45:
      a1 = v37;
      v4 = v36;
    }
  }

LABEL_46:
  v32 = this[3];
  v38 = this[2];
  v39 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, v4, &v38, "", 0, a1);
  v33 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_51:
  v34 = *&v42[16];
  if (*&v42[16] && !atomic_fetch_add((*&v42[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
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
  v35 = *(&v44 + 1);
  if (!*(&v44 + 1) || atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v43[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if ((v43[31] & 0x80000000) != 0)
  {
LABEL_58:
    operator delete(*&v43[8]);
  }
}

void sub_297BF3838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,16ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
{
  v4 = a4;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v8;
  v44 = v8;
  *v42 = v8;
  *&v42[16] = v8;
  mipc::Message::findTLV(this, a4, v42);
  *&v41[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v41 = v9;
  *__p = v9;
  v39 = *v42;
  if ((v42[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v42[8], *&v42[16]);
  }

  else
  {
    *__p = *&v42[8];
    *v41 = *&v42[24];
  }

  *&v41[8] = v43;
  if (*(&v43 + 1))
  {
    atomic_fetch_add_explicit((*(&v43 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v39)
  {
    if (v39 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v39, a1);
      goto LABEL_50;
    }

    v10 = 0;
    a3[1] = *a3;
  }

  else
  {
    v11 = v44;
    v12 = *(&v44 + 1);
    a3[1] = *a3;
    if (v11 < 8)
    {
      v10 = 0;
    }

    else
    {
      v35 = v4;
      v36 = a1;
      v13 = &v12[v11];
      while (1)
      {
        v15 = *a3;
        v14 = a3[1];
        v16 = v14 - *a3;
        if (v16 == 64)
        {
          v10 = 0x100000010;
          goto LABEL_44;
        }

        v17 = v13 - v12;
        if ((v13 - v12) < 4)
        {
          a1 = v36;
          v4 = v35;
          v10 = 0x100000005;
          goto LABEL_45;
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
        v24 = a3[2];
        if (v14 >= v24)
        {
          v26 = (v16 >> 2) + 1;
          if (v26 >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = v24 - v15;
          if (v27 >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v26;
          if (v28)
          {
            if (v28 >> 62)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(4 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[4 * (v16 >> 2)];
          *v30 = 0;
          v25 = v30 + 4;
          memcpy(v29, v15, v16);
          *a3 = v29;
          a3[1] = v25;
          a3[2] = &v29[4 * v28];
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v14 = 0;
          v25 = v14 + 1;
        }

        a3[1] = v25;
        if (v21 > 4)
        {
          break;
        }

        if (v21 != 4)
        {
          v10 = 0x100000011;
          goto LABEL_44;
        }

        v12 = (v23 + 2);
        *(v25 - 1) = *v23;
        if (v13 - v23 <= 4)
        {
          v12 = v13;
        }

        if ((v13 - v12) <= 7)
        {
          v10 = 0;
          goto LABEL_44;
        }
      }

      v10 = 0x100000012;
LABEL_44:
      a1 = v36;
      v4 = v35;
    }
  }

LABEL_45:
  v31 = this[3];
  v37 = this[2];
  v38 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, v4, &v37, "", 0, a1);
  v32 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

LABEL_50:
  v33 = *&v41[16];
  if (*&v41[16] && !atomic_fetch_add((*&v41[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    if ((v41[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v41[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v34 = *(&v43 + 1);
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v42[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

  (v34->__on_zero_shared)(v34);
  std::__shared_weak_count::__release_weak(v34);
  if ((v42[31] & 0x80000000) != 0)
  {
LABEL_57:
    operator delete(*&v42[8]);
  }
}

void sub_297BF3C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,16ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
{
  v4 = a4;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v8;
  v45 = v8;
  *v43 = v8;
  *&v43[16] = v8;
  mipc::Message::findTLV(this, a4, v43);
  *&v42[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v42 = v9;
  *__p = v9;
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

    v10 = 0;
    a3[1] = *a3;
  }

  else
  {
    v11 = v45;
    v12 = *(&v45 + 1);
    a3[1] = *a3;
    if (v11 < 8)
    {
      v10 = 0;
    }

    else
    {
      v36 = v4;
      v37 = a1;
      v13 = &v12[v11];
      while (1)
      {
        v15 = *a3;
        v14 = a3[1];
        v16 = v14 - *a3;
        if (v16 == 256)
        {
          v10 = 0x100000010;
          goto LABEL_45;
        }

        v17 = v13 - v12;
        if ((v13 - v12) < 4)
        {
          a1 = v37;
          v4 = v36;
          v10 = 0x100000005;
          goto LABEL_46;
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
        v24 = a3[2];
        if (v14 >= v24)
        {
          v26 = (v16 >> 4) + 1;
          if (v26 >> 60)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = v24 - v15;
          if (v27 >> 3 > v26)
          {
            v26 = v27 >> 3;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v26;
          if (v28)
          {
            if (v28 >> 60)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(16 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[16 * (v16 >> 4)];
          v31 = &v29[16 * v28];
          *v30 = 0;
          *(v30 + 1) = 0;
          v25 = v30 + 16;
          memcpy(v29, v15, v16);
          *a3 = v29;
          a3[1] = v25;
          a3[2] = v31;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v14 = 0;
          v14[1] = 0;
          v25 = v14 + 2;
        }

        a3[1] = v25;
        if (v21 > 0x10)
        {
          break;
        }

        if (v21 != 16)
        {
          v10 = 0x100000011;
          goto LABEL_45;
        }

        *(v25 - 1) = *v23;
        if (v13 - v23 <= 20)
        {
          v12 = v13;
        }

        else
        {
          v12 = v23 + 20;
        }

        if ((v13 - v12) <= 7)
        {
          v10 = 0;
          goto LABEL_45;
        }
      }

      v10 = 0x100000012;
LABEL_45:
      a1 = v37;
      v4 = v36;
    }
  }

LABEL_46:
  v32 = this[3];
  v38 = this[2];
  v39 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, v4, &v38, "", 0, a1);
  v33 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_51:
  v34 = *&v42[16];
  if (*&v42[16] && !atomic_fetch_add((*&v42[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
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
  v35 = *(&v44 + 1);
  if (!*(&v44 + 1) || atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v43[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if ((v43[31] & 0x80000000) != 0)
  {
LABEL_58:
    operator delete(*&v43[8]);
  }
}

void sub_297BF40C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_s_nssai_struct_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3, unsigned int a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v8;
  v27 = v8;
  *v25 = v8;
  *&v25[16] = v8;
  mipc::Message::findTLV(this, a4, v25);
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
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v22, a1);
  }

  else
  {
    v11 = v27;
    v12 = *(&v27 + 1);
    v13 = *a3;
    *a3 = 0;
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
      v14 = operator new(0x10uLL);
      *v14 = 0;
      v14[1] = 0;
      v15 = *a3;
      *a3 = v14;
      if (v15)
      {
        operator delete(v15);
        v14 = *a3;
      }

      v10 = 0x100000011;
      if (v11 <= 0x10)
      {
        if (v11 == 16)
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

    v16 = this[3];
    v20 = this[2];
    v21 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v10, a4, &v20, "", 0, a1);
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

void sub_297BF43E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297BF43F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297BF4414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

unint64_t mipc::data::Act_Call_Cnf::getSize(mipc::data::Act_Call_Cnf *this)
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

  v5 = *(this + 25);
  v6 = *(this + 26);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((2 * (v6 - v5)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v8 = *(this + 28);
  v9 = *(this + 29);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 24 * ((v9 - v8 - 16) >> 4) + 40;
  }

  v11 = *(this + 31);
  v12 = *(this + 32);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = ((2 * (v12 - v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v14 = *(this + 34);
  v15 = *(this + 35);
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 24 * ((v15 - v14 - 16) >> 4) + 40;
  }

  v17 = *(this + 37);
  v18 = *(this + 38);
  if (v17 == v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = ((2 * (v18 - v17)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v21 = *(this + 40);
  v20 = *(this + 41);
  v22 = 24 * ((v20 - v21 - 16) >> 4) + 40;
  if (v21 == v20)
  {
    v22 = 0;
  }

  v23 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v23 = 32;
  }

  v24 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vbicq_s8(v24, vceqzq_s64(*(this + 104))), vbicq_s8(v24, vceqzq_s64(*(this + 168)))), vaddq_s64(vbicq_s8(v24, vceqzq_s64(*(this + 136))), vbicq_s8(xmmword_297DCA380, vceqzq_s64(*(this + 344))))), vaddq_s64(vaddq_s64(vbicq_s8(v24, vceqzq_s64(*(this + 120))), vbicq_s8(v24, vceqzq_s64(*(this + 184)))), vaddq_s64(vbicq_s8(v24, vceqzq_s64(*(this + 152))), vbicq_s8(v24, vceqzq_s64(*(this + 360))))))) + 8 * (*(this + 11) != 0) + v23 + 8 * (*(this + 47) != 0) + v22 + v19 + v16 + v13 + v10 + v7 + v1;
}

double mipc::data::Deact_Call_Req::Deact_Call_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 515;
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
  *a1 = &unk_2A1E78888;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = 515;
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
  *a1 = &unk_2A1E78888;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::data::Deact_Call_Req::~Deact_Call_Req(mipc::data::Deact_Call_Req *this)
{
  *this = &unk_2A1E78888;
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
  *this = &unk_2A1E78888;
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
  *this = &unk_2A1E78888;
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

void mipc::data::Deact_Call_Req::serialize(mipc::data::Deact_Call_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vceqzq_s64(*(this + 88));
  v5 = vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1];
  *&v34 = operator new(v5);
  v35 = v34 + v5;
  bzero(v34, v5);
  *(&v34 + 1) = v34 + v5;
  v33 = v34;
  v32 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v27, this, &v33);
  v6 = v30;
  *&__p[1] = *v28;
  __p[3] = v29;
  __p[0] = v27;
  v32 = v30;
  if (v27)
  {
    *a2 = v27;
    *(a2 + 8) = *&__p[1];
    v7 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
LABEL_54:
    *(a2 + 48) = 1;
    goto LABEL_55;
  }

  if (*(this + 11))
  {
    *v33 = 257;
    v8 = v33++;
    v8[1] = 1;
    v9 = v33++;
    *(v9 + 2) = **(this + 11);
    v33 += 2;
  }

  else if (!*(this + 4))
  {
    v10 = 0x10000000FLL;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v36 = 0;
  v37 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v10, 0x101u, &v36, "", 0, &v27);
  v11 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    __p[0] = v27;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __p[0] = v27;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_10:
    operator delete(__p[1]);
  }

LABEL_11:
  *&__p[1] = *v28;
  __p[3] = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28[0]) = 0;
  v12 = v30;
  v30 = 0uLL;
  v32 = v12;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
    v13 = *(&v30 + 1);
    v14 = __p[0];
    if (!*(&v30 + 1))
    {
LABEL_15:
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_23:
      operator delete(v28[0]);
      if (v14)
      {
        goto LABEL_53;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = *(&v30 + 1);
    v14 = __p[0];
    if (!*(&v30 + 1))
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
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v14)
  {
    goto LABEL_53;
  }

LABEL_24:
  if (*(this + 12))
  {
    *v33 = 258;
    v15 = v33++;
    v15[1] = 1;
    v16 = v33++;
    *(v16 + 2) = **(this + 12);
    v33 += 2;
  }

  v36 = 0;
  v37 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v36, "", 0, &v27);
  v17 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  __p[0] = v27;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v28;
  __p[3] = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28[0]) = 0;
  v18 = v30;
  v30 = 0uLL;
  v19 = *(&v32 + 1);
  v32 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(&v30 + 1);
  v21 = __p[0];
  if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
    if (!v21)
    {
      goto LABEL_42;
    }

LABEL_53:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v32;
    goto LABEL_54;
  }

  if (v21)
  {
    goto LABEL_53;
  }

LABEL_42:
  (*(*this + 32))(&v27, this, &v34);
  __p[0] = v27;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v28;
  __p[3] = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28[0]) = 0;
  v22 = v30;
  v30 = 0uLL;
  v23 = *(&v32 + 1);
  v32 = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *(&v30 + 1);
  v25 = __p[0];
  if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (v25)
  {
    goto LABEL_53;
  }

  *a2 = v34;
  *(a2 + 16) = v35;
  v35 = 0;
  v34 = 0uLL;
  *(a2 + 48) = 0;
  v26 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

LABEL_55:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v34)
  {
    *(&v34 + 1) = v34;
    operator delete(v34);
  }
}

void sub_297BF5100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::data::Deact_Call_Cnf *mipc::data::Deact_Call_Cnf::Deact_Call_Cnf(mipc::data::Deact_Call_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 516, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E788D0;
  *(this + 11) = 0;
  mipc::data::Deact_Call_Cnf::deserialize(this, &v7);
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

void sub_297BF5290(_Unwind_Exception *a1)
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

void mipc::data::Deact_Call_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::data::Deact_Call_Cnf::Deact_Call_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 516, &v14, a3, 2);
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
  *a1 = &unk_2A1E7A550;
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
  *a1 = &unk_2A1E788D0;
  a1[11] = 0;
  return a1;
}

void sub_297BF568C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::data::Deact_Call_Cnf::~Deact_Call_Cnf(mipc::data::Deact_Call_Cnf *this)
{
  *this = &unk_2A1E788D0;
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
  *this = &unk_2A1E788D0;
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
  *this = &unk_2A1E788D0;
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

uint64_t mipc::data::Deact_Call_Cnf::getSize(mipc::data::Deact_Call_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::data::Get_Call_Req::Get_Call_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 517;
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
  *a1 = &unk_2A1E78918;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 517;
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
  *a1 = &unk_2A1E78918;
  *(a1 + 88) = 0;
  return result;
}

void mipc::data::Get_Call_Req::~Get_Call_Req(mipc::data::Get_Call_Req *this)
{
  *this = &unk_2A1E78918;
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
  *this = &unk_2A1E78918;
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
  *this = &unk_2A1E78918;
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

void mipc::data::Get_Call_Req::serialize(mipc::data::Get_Call_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297BF6364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::data::Get_Call_Req::getSize(mipc::data::Get_Call_Req *this)
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

mipc::data::Get_Call_Cnf *mipc::data::Get_Call_Cnf::Get_Call_Cnf(mipc::data::Get_Call_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 518, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E78960;
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
  *(this + 45) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 80) = 1;
  mipc::data::Get_Call_Cnf::deserialize(this, &v7);
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

void sub_297BF652C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 45);
  *(v1 + 45) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 44);
    *(v1 + 44) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 43);
      *(v1 + 43) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v5 = *(v1 + 44);
    *(v1 + 44) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 43);
  *(v1 + 43) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v6);
  v7 = *(v1 + 40);
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 37);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v1 + 41) = v7;
  operator delete(v7);
  v8 = *(v1 + 37);
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 34);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v1 + 38) = v8;
  operator delete(v8);
  v9 = *(v1 + 34);
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 31);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v1 + 35) = v9;
  operator delete(v9);
  v10 = *(v1 + 31);
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 28);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v1 + 32) = v10;
  operator delete(v10);
  v11 = *(v1 + 28);
  if (!v11)
  {
LABEL_9:
    v12 = *(v1 + 25);
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v1 + 29) = v11;
  operator delete(v11);
  v12 = *(v1 + 25);
  if (!v12)
  {
LABEL_10:
    v13 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v1 + 26) = v12;
  operator delete(v12);
  v13 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (!v13)
  {
LABEL_11:
    v14 = *(v1 + 23);
    *(v1 + 23) = 0;
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v13);
  v14 = *(v1 + 23);
  *(v1 + 23) = 0;
  if (!v14)
  {
LABEL_12:
    v15 = *(v1 + 22);
    *(v1 + 22) = 0;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v14);
  v15 = *(v1 + 22);
  *(v1 + 22) = 0;
  if (!v15)
  {
LABEL_13:
    v16 = *(v1 + 21);
    *(v1 + 21) = 0;
    if (!v16)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v15);
  v16 = *(v1 + 21);
  *(v1 + 21) = 0;
  if (!v16)
  {
LABEL_14:
    v17 = *(v1 + 20);
    *(v1 + 20) = 0;
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v16);
  v17 = *(v1 + 20);
  *(v1 + 20) = 0;
  if (!v17)
  {
LABEL_15:
    v18 = *(v1 + 19);
    *(v1 + 19) = 0;
    if (!v18)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v17);
  v18 = *(v1 + 19);
  *(v1 + 19) = 0;
  if (!v18)
  {
LABEL_16:
    v19 = *(v1 + 18);
    *(v1 + 18) = 0;
    if (!v19)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v18);
  v19 = *(v1 + 18);
  *(v1 + 18) = 0;
  if (!v19)
  {
LABEL_17:
    v20 = *(v1 + 17);
    *(v1 + 17) = 0;
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v19);
  v20 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (!v20)
  {
LABEL_18:
    v21 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (!v21)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v20);
  v21 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (!v21)
  {
LABEL_19:
    v22 = *(v1 + 15);
    *(v1 + 15) = 0;
    if (!v22)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v21);
  v22 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (!v22)
  {
LABEL_20:
    v23 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(v22);
  v23 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (!v23)
  {
LABEL_21:
    v24 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v24)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v23);
  v24 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v24)
  {
LABEL_22:
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 12);
    v25 = *v2;
    *v2 = 0;
    if (!v25)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(v24);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 12);
  v25 = *v2;
  *v2 = 0;
  if (!v25)
  {
LABEL_23:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_45:
  operator delete(v25);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::data::Get_Call_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
  v4 = v67;
  v67 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v67 + 1);
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  v8 = v67;
  v67 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v67 + 1);
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  v67 = v12;
  v68 = v12;
  *__p = v12;
  *&__p[16] = v12;
  mipc::Message::findTLV(this, 0x101u, __p);
  *&v65[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v65 = v13;
  *v64 = v13;
  v63 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v64, *&__p[8], *&__p[16]);
  }

  else
  {
    *v64 = *&__p[8];
    *v65 = *&__p[24];
  }

  *&v65[8] = v67;
  if (*(&v67 + 1))
  {
    atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v63;
  if (!v63 || v63 == 0x10000000ELL)
  {
    v15 = v68;
    v16 = *(&v68 + 1);
    v17 = this[12];
    this[12] = 0;
    if (v17)
    {
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
      }

      operator delete(v17);
    }

    if (v14)
    {
      if (v14 != 0x10000000ELL)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v18 = operator new(0x18uLL);
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 0;
      v19 = this[12];
      this[12] = v18;
      if (v19)
      {
        if (*(v19 + 23) < 0)
        {
          operator delete(*v19);
        }

        operator delete(v19);
        v18 = this[12];
      }

      v14 = 0x100000003;
      if (!v15)
      {
        goto LABEL_49;
      }

      if (v15 > 0x64)
      {
        v14 = 0x100000010;
LABEL_49:
        v20 = this[3];
        v61 = this[2];
        v62 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        mipc::Message::handle<(mipc::Error::Type)2>(this, v14, 0x101u, &v61, "", 0, &v57);
        v21 = v62;
        if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }

        goto LABEL_54;
      }

      std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v18, v16, (v16 + v15 - 1), v15 - 1);
    }

    v14 = 0;
    goto LABEL_49;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v63, &v57);
LABEL_54:
  v22 = *&v65[16];
  if (*&v65[16] && !atomic_fetch_add((*&v65[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if ((v65[7] & 0x80000000) != 0)
  {
    operator delete(v64[0]);
  }

  v23 = *(&v67 + 1);
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v57;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = v58;
  *(a2 + 24) = v59;
  HIBYTE(v59) = 0;
  LOBYTE(v58) = 0;
  v24 = v60;
  v60 = 0uLL;
  v25 = *(a2 + 40);
  *(a2 + 32) = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *a2;
  v27 = *(&v60 + 1);
  if (*(&v60 + 1) && !atomic_fetch_add((*(&v60 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
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
    v28 = v67;
    v67 = 0uLL;
    v29 = *(a2 + 40);
    *(a2 + 32) = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = *a2;
    v31 = *(&v67 + 1);
    if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
      mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,false>(this, this + 14, 0x121u, __p);
      *a2 = *__p;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = *&__p[8];
      *(a2 + 24) = *&__p[24];
      __p[31] = 0;
      __p[8] = 0;
      v32 = v67;
      v67 = 0uLL;
      v33 = *(a2 + 40);
      *(a2 + 32) = v32;
      if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }

      v34 = *a2;
      v35 = *(&v67 + 1);
      if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
        mipc::Message::deserializeTlv<unsigned int,false>(this, this + 15, 0x123u, __p);
        *a2 = *__p;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = *&__p[24];
        __p[31] = 0;
        __p[8] = 0;
        v36 = v67;
        v67 = 0uLL;
        v37 = *(a2 + 40);
        *(a2 + 32) = v36;
        if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v38 = *a2;
        v39 = *(&v67 + 1);
        if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
          mipc::Message::deserializeTlv<unsigned int,false>(this, this + 16, 0x124u, __p);
          v40 = *mipc::Error::operator=(a2, __p);
          mipc::Error::~Error(__p);
          if (!v40)
          {
            mipc::Message::deserializeTlv<unsigned int,false>(this, this + 17, 0x125u, __p);
            v41 = *mipc::Error::operator=(a2, __p);
            mipc::Error::~Error(__p);
            if (!v41)
            {
              mipc::Message::deserializeTlv<unsigned int,false>(this, this + 18, 0x126u, __p);
              v42 = *mipc::Error::operator=(a2, __p);
              mipc::Error::~Error(__p);
              if (!v42)
              {
                mipc::Message::deserializeTlv<unsigned int,false>(this, this + 19, 0x127u, __p);
                v43 = *mipc::Error::operator=(a2, __p);
                mipc::Error::~Error(__p);
                if (!v43)
                {
                  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 20, 0x128u, __p);
                  v44 = *mipc::Error::operator=(a2, __p);
                  mipc::Error::~Error(__p);
                  if (!v44)
                  {
                    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 21, 0x129u, __p);
                    v45 = *mipc::Error::operator=(a2, __p);
                    mipc::Error::~Error(__p);
                    if (!v45)
                    {
                      mipc::Message::deserializeTlv<unsigned int,false>(this, this + 22, 0x12Bu, __p);
                      v46 = *mipc::Error::operator=(a2, __p);
                      mipc::Error::~Error(__p);
                      if (!v46)
                      {
                        mipc::Message::deserializeTlv<unsigned char,false>(this, this + 23, 0x12Cu, __p);
                        v47 = *mipc::Error::operator=(a2, __p);
                        mipc::Error::~Error(__p);
                        if (!v47)
                        {
                          mipc::Message::deserializeTlv<unsigned char,false>(this, this + 24, 0x12Du, __p);
                          v48 = *mipc::Error::operator=(a2, __p);
                          mipc::Error::~Error(__p);
                          if (!v48)
                          {
                            mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,4ul,false>(__p, this, this + 25, 0x12Fu);
                            v49 = *mipc::Error::operator=(a2, __p);
                            mipc::Error::~Error(__p);
                            if (!v49)
                            {
                              mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,4ul,false>(__p, this, this + 28, 0x130u);
                              v50 = *mipc::Error::operator=(a2, __p);
                              mipc::Error::~Error(__p);
                              if (!v50)
                              {
                                mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,10ul,false>(__p, this, this + 31, 0x131u);
                                v51 = *mipc::Error::operator=(a2, __p);
                                mipc::Error::~Error(__p);
                                if (!v51)
                                {
                                  mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,10ul,false>(__p, this, this + 34, 0x132u);
                                  v52 = *mipc::Error::operator=(a2, __p);
                                  mipc::Error::~Error(__p);
                                  if (!v52)
                                  {
                                    mipc::Message::deserializeTlv<mipc::mipc_data_v4_addr_struct4,16ul,false>(__p, this, this + 37, 0x133u);
                                    v53 = *mipc::Error::operator=(a2, __p);
                                    mipc::Error::~Error(__p);
                                    if (!v53)
                                    {
                                      mipc::Message::deserializeTlv<mipc::mipc_data_v6_addr_struct4,16ul,false>(__p, this, this + 40, 0x134u);
                                      v54 = *mipc::Error::operator=(a2, __p);
                                      mipc::Error::~Error(__p);
                                      if (!v54)
                                      {
                                        mipc::Message::deserializeTlv<mipc::mipc_s_nssai_struct_struct4,false>(__p, this, this + 43, 0x137u);
                                        v55 = *mipc::Error::operator=(a2, __p);
                                        mipc::Error::~Error(__p);
                                        if (!v55)
                                        {
                                          mipc::Message::deserializeTlv<unsigned char,false>(this, this + 44, 0x138u, __p);
                                          v56 = *mipc::Error::operator=(a2, __p);
                                          mipc::Error::~Error(__p);
                                          if (!v56)
                                          {
                                            mipc::Message::deserializeTlv<unsigned char,false>(this, this + 45, 0x139u, __p);
                                            mipc::Error::operator=(a2, __p);
                                            mipc::Error::~Error(__p);
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

void sub_297BF7594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

uint64_t mipc::data::Get_Call_Cnf::Get_Call_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 518, &v14, a3, 2);
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
  *a1 = &unk_2A1E7A598;
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
  *a1 = &unk_2A1E78960;
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
  *(a1 + 360) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 80) = 1;
  return a1;
}