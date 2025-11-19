void mipc::Message::serializeTlv<mipc::mipc_string_t<10ul,false>,true>(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
{
  v6 = *a3;
  if (!*a3)
  {
    if (!*(a2 + 32))
    {
      v15 = 0x10000000FLL;
      v19 = 0;
      v20 = 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = v6[23];
  v8 = *(v6 + 4);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v7;
  }

  **a4 = 260;
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
    if (v12 <= 9)
    {
      v13 = a4;
      v14 = *v11;
      goto LABEL_13;
    }

    v11 = *v11;
LABEL_11:
    v21 = &v11[v12];
    v22 = v11;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v22, &v21, &v19);
    v15 = 0x100000010;
    goto LABEL_17;
  }

  if (v12 > 9)
  {
    goto LABEL_11;
  }

  v13 = a4;
  v14 = *a3;
LABEL_13:
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
LABEL_16:
  v15 = 0;
  v19 = 0;
  v20 = 0;
LABEL_17:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v15, 0x104u, &v19, "", 0, a1);
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

void sub_297B04AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::apn::Set_Op12_Apn_Cnf *mipc::apn::Set_Op12_Apn_Cnf::Set_Op12_Apn_Cnf(mipc::apn::Set_Op12_Apn_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 272, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E6B3A0;
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

void sub_297B04C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::apn::Set_Op12_Apn_Cnf::deserialize@<D0>(mipc::apn::Set_Op12_Apn_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::apn::Set_Op12_Apn_Cnf::Set_Op12_Apn_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 272, &v14, a3, 2);
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
  *a1 = &unk_2A1E6BBB0;
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
  *a1 = &unk_2A1E6B3A0;
  return a1;
}

void sub_297B04F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::Set_Op12_Apn_Cnf::~Set_Op12_Apn_Cnf(mipc::apn::Set_Op12_Apn_Cnf *this)
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

uint64_t mipc::apn::Set_Op12_Apn_Cnf::getSize(mipc::apn::Set_Op12_Apn_Cnf *this)
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

double mipc::apn::Set_Op12_Apn_Timer_Req::Set_Op12_Apn_Timer_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 273;
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
  *a1 = &unk_2A1E6B3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

{
  *(a1 + 8) = 273;
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
  *a1 = &unk_2A1E6B3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void mipc::apn::Set_Op12_Apn_Timer_Req::~Set_Op12_Apn_Timer_Req(mipc::apn::Set_Op12_Apn_Timer_Req *this)
{
  *this = &unk_2A1E6B3E8;
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
  mipc::apn::Set_Op12_Apn_Timer_Req::~Set_Op12_Apn_Timer_Req(this);

  operator delete(v1);
}

void mipc::apn::Set_Op12_Apn_Timer_Req::serialize(mipc::apn::Set_Op12_Apn_Timer_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v5 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 104))))) + 8 * (*(this + 15) != 0);
  v51[0] = operator new(v5);
  v52 = v51[0] + v5;
  bzero(v51[0], v5);
  v51[1] = v51[0] + v5;
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
  v6 = v47;
  v47 = 0uLL;
  v7 = *(&v49 + 1);
  v49 = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = *(&v47 + 1);
    v9 = __p[0];
    if (!*(&v47 + 1))
    {
LABEL_7:
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(v45);
      if (v9)
      {
        goto LABEL_97;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(&v47 + 1);
    v9 = __p[0];
    if (!*(&v47 + 1))
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
  if (SHIBYTE(v46) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v9)
  {
    goto LABEL_97;
  }

LABEL_14:
  if (*(this + 11))
  {
    *v50 = 256;
    v10 = v50++;
    v10[1] = 1;
    v11 = v50++;
    *(v11 + 2) = **(this + 11);
    v50 += 2;
  }

  else if (!*(this + 4))
  {
    v12 = 0x10000000FLL;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:
  v53 = 0;
  v54 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v12, 0x100u, &v53, "", 0, &v44);
  v13 = v54;
  if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    __p[0] = v44;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __p[0] = v44;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_21:
    operator delete(__p[1]);
  }

LABEL_22:
  *&__p[1] = v45;
  __p[3] = v46;
  HIBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  v14 = v47;
  v47 = 0uLL;
  v15 = *(&v49 + 1);
  v49 = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    v16 = *(&v47 + 1);
    v17 = __p[0];
    if (!*(&v47 + 1))
    {
LABEL_26:
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_34:
      operator delete(v45);
      if (v17)
      {
        goto LABEL_97;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v16 = *(&v47 + 1);
    v17 = __p[0];
    if (!*(&v47 + 1))
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
  if (SHIBYTE(v46) < 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v17)
  {
    goto LABEL_97;
  }

LABEL_35:
  if (*(this + 12))
  {
    *v50 = 259;
    v18 = v50++;
    v18[1] = 4;
    v19 = v50++;
    *(v19 + 1) = **(this + 12);
    v50 += 2;
  }

  else if (!*(this + 4))
  {
    v20 = 0x10000000FLL;
    goto LABEL_40;
  }

  v20 = 0;
LABEL_40:
  v53 = 0;
  v54 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v20, 0x103u, &v53, "", 0, &v44);
  v21 = v54;
  if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
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
  v22 = v47;
  v47 = 0uLL;
  v23 = *(&v49 + 1);
  v49 = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *(&v47 + 1);
  v25 = __p[0];
  if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
    if (!v25)
    {
      goto LABEL_55;
    }

LABEL_97:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v49;
    v49 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_98;
  }

  if (v25)
  {
    goto LABEL_97;
  }

LABEL_55:
  if (*(this + 13))
  {
    *v50 = 260;
    v26 = v50++;
    v26[1] = 4;
    v27 = v50++;
    *(v27 + 1) = **(this + 13);
    v50 += 2;
  }

  else if (!*(this + 4))
  {
    v28 = 0x10000000FLL;
    goto LABEL_60;
  }

  v28 = 0;
LABEL_60:
  v53 = 0;
  v54 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v28, 0x104u, &v53, "", 0, &v44);
  v29 = v54;
  if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
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
    goto LABEL_97;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, this + 14, 261, &v50, &v44);
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
    goto LABEL_97;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, v4, 262, &v50, &v44);
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
    goto LABEL_97;
  }

  (*(*this + 32))(&v44, this, v51);
  v42 = *mipc::Error::operator=(__p, &v44);
  mipc::Error::~Error(&v44);
  if (v42)
  {
    goto LABEL_97;
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

LABEL_98:
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

void sub_297B05F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mipc::apn::Set_Op12_Apn_Timer_Cnf *mipc::apn::Set_Op12_Apn_Timer_Cnf::Set_Op12_Apn_Timer_Cnf(mipc::apn::Set_Op12_Apn_Timer_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 274, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E6B430;
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

void sub_297B06190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::apn::Set_Op12_Apn_Timer_Cnf::deserialize@<D0>(mipc::apn::Set_Op12_Apn_Timer_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::apn::Set_Op12_Apn_Timer_Cnf::Set_Op12_Apn_Timer_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 274, &v14, a3, 2);
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
  *a1 = &unk_2A1E6BBF8;
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
  *a1 = &unk_2A1E6B430;
  return a1;
}

void sub_297B06460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::Set_Op12_Apn_Timer_Cnf::~Set_Op12_Apn_Timer_Cnf(mipc::apn::Set_Op12_Apn_Timer_Cnf *this)
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

uint64_t mipc::apn::Set_Op12_Apn_Timer_Cnf::getSize(mipc::apn::Set_Op12_Apn_Timer_Cnf *this)
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

double mipc::apn::Add_Profile_List_Req::Add_Profile_List_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 275;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E6B478;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 275;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E6B478;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 80) = 1;
  return result;
}

void mipc::apn::Add_Profile_List_Req::~Add_Profile_List_Req(mipc::apn::Add_Profile_List_Req *this)
{
  *this = &unk_2A1E6B478;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 15);
    v4 = *(this + 14);
    if (v3 != v2)
    {
      v5 = *(this + 15);
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
      v4 = *(this + 14);
    }

    *(this + 15) = v2;
    operator delete(v4);
  }

  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
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
  *this = &unk_2A1E6B478;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 15);
    v4 = *(this + 14);
    if (v3 != v2)
    {
      v5 = *(this + 15);
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
      v4 = *(this + 14);
    }

    *(this + 15) = v2;
    operator delete(v4);
  }

  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
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
  *this = &unk_2A1E6B478;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 15);
    v4 = *(this + 14);
    if (v3 != v2)
    {
      v5 = *(this + 15);
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
      v4 = *(this + 14);
    }

    *(this + 15) = v2;
    operator delete(v4);
  }

  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
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

void mipc::apn::Add_Profile_List_Req::serialize(mipc::apn::Add_Profile_List_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 11);
  v5 = *(this + 12);
  if (v4 == v5)
  {
    v6 = 16;
    v14 = *(this + 7);
    v8 = *(this + 15);
    v9 = *(this + 14);
    if (v9 != v8)
    {
LABEL_3:
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
          v84[0] = 0;
          v84[1] = 0;
          v85 = 0;
          v12 = v10 + v6;
          if (!(v10 + v6))
          {
            goto LABEL_11;
          }

          goto LABEL_7;
        }
      }

      v84[0] = 0;
      v84[1] = 0;
      v85 = 0;
      v12 = v6;
      if (v6)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = 416 * ((v5 - v4 - 412) / 0x19CuLL) + 448;
    v7 = *(this + 7);
    v8 = *(this + 15);
    v9 = *(this + 14);
    if (v9 != v8)
    {
      goto LABEL_3;
    }
  }

  v84[0] = 0;
  v84[1] = 0;
  v85 = 0;
  v12 = v6;
  if (!v6)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

LABEL_7:
  if ((v12 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = operator new(v12);
  v84[0] = v13;
  v85 = &v13[v12];
  bzero(v13, v12);
  v84[1] = &v13[v12];
LABEL_12:
  v83 = v13;
  v82 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v77, this, &v83);
  v15 = v80;
  *&__p[1] = *v78;
  __p[3] = v79;
  __p[0] = v77;
  v82 = v80;
  if (v77)
  {
    *a2 = v77;
    *(a2 + 8) = *&__p[1];
    v16 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v16;
    *(a2 + 32) = v15;
LABEL_111:
    *(a2 + 48) = 1;
    goto LABEL_112;
  }

  v17 = *(this + 88);
  v18 = *(this + 12);
  v19 = *(this + 11);
  if (v19 == v18)
  {
    if (!*(this + 4))
    {
      v86 = 0;
      v87 = 0;
      v20 = 0x10000000FLL;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v20 = 0x100000002;
  v21 = v18 - v19;
  v22 = 0xDAB7EC1DD3431B57 * (v21 >> 2);
  if (v22 <= 0x14)
  {
    v23 = *(this + 7) - v22;
    v24 = (*(this + 7) - v22);
    *(this + 7) -= v22;
    if (v24 < 0x100)
    {
      goto LABEL_22;
    }

    v33 = v23 + 1;
    *v83++ = 257;
    *v83++ = 0;
    *v83 = 0;
    v83 += 2;
    *v83 = 0;
    v83 += 2;
    *v83++ = v23 + 1;
    *v83 = v22;
    v34 = ++v83;
    for (i = *(this + 11); i != *(this + 12); i += 412)
    {
      *v34 = v33;
      *++v83 = 412;
      v36 = v83;
      ++v33;
      memcpy(v83 + 1, i, 0x19CuLL);
      v34 = v36 + 207;
      v83 = v36 + 207;
    }

LABEL_34:
    v20 = 0;
    v86 = 0;
    v87 = 0;
    goto LABEL_35;
  }

  v20 = 0x100000010;
LABEL_22:
  v86 = 0xAAAAAAAAAAAAAAAALL;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  v88 = 416 * ((v21 - 412) / 0x19CuLL) + 432;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v88, &v86);
  v25 = v86;
  v26 = *v86;
  v27 = *(this + 11);
  if (v27 != *(this + 12))
  {
    v75 = v20;
    v76 = a2;
    do
    {
      v88 = 0xAAAAAAAAAAAAAAAALL;
      v89 = 0xAAAAAAAAAAAAAAAALL;
      v90 = 412;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v90, &v88);
      v28 = v88;
      memcpy(*v88, v27, 0x19CuLL);
      memcpy(v26, *v28, *(v28 + 8) - *v28);
      v30 = *v28;
      v29 = *(v28 + 8);
      v31 = v89;
      if (v89 && !atomic_fetch_add((v89 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      v26 += v29 - v30;
      v27 += 412;
    }

    while (v27 != *(this + 12));
    v25 = v86;
    a2 = v76;
    v20 = v75;
  }

  if (v26 != v25[1])
  {
    v32 = v25[1];
    v25[1] = v26;
  }

LABEL_35:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v20, 0x101u, &v86, "", 0, &v77);
  v37 = v87;
  if (v87 && !atomic_fetch_add((v87 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
    __p[0] = v77;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  __p[0] = v77;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_38:
    operator delete(__p[1]);
  }

LABEL_39:
  *&__p[1] = *v78;
  __p[3] = v79;
  HIBYTE(v79) = 0;
  LOBYTE(v78[0]) = 0;
  v38 = v80;
  v80 = 0uLL;
  v82 = v38;
  if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v15 + 1) + 16))(*(&v15 + 1));
    std::__shared_weak_count::__release_weak(*(&v15 + 1));
    v39 = *(&v80 + 1);
    v40 = __p[0];
    if (!*(&v80 + 1))
    {
LABEL_43:
      if ((SHIBYTE(v79) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

LABEL_51:
      operator delete(v78[0]);
      if (v40)
      {
        goto LABEL_110;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v39 = *(&v80 + 1);
    v40 = __p[0];
    if (!*(&v80 + 1))
    {
      goto LABEL_43;
    }
  }

  if (atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_43;
  }

  (v39->__on_zero_shared)(v39);
  std::__shared_weak_count::__release_weak(v39);
  if (SHIBYTE(v79) < 0)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (v40)
  {
    goto LABEL_110;
  }

LABEL_52:
  v41 = *(this + 14);
  v42 = *(this + 15);
  if (v41 == v42)
  {
    goto LABEL_60;
  }

  v43 = 0x100000002;
  v44 = 0xAAAAAAAAAAAAAAABLL * (v42 - v41);
  if (v44 > 2)
  {
    v43 = 0x100000010;
    goto LABEL_63;
  }

  v45 = *(this + 7) - v44;
  *(this + 7) = v45;
  if (v45 >= 0x100u)
  {
    v46 = v45 + 1;
    *v83++ = 258;
    *v83++ = 0;
    *v83 = 0;
    v83 += 2;
    *v83 = 0;
    v83 += 2;
    *v83++ = v45 + 1;
    *v83 = v44;
    v47 = ++v83;
    v48 = *(this + 14);
    if (v48 != *(this + 15))
    {
      while (1)
      {
        v49 = v48[2] - *v48;
        *v47 = v46;
        *++v83 = v49;
        v50 = ++v83;
        v51 = *v48;
        v52 = *(v48 + 1);
        if (*v48 == v52)
        {
          break;
        }

        v53 = v52 - v51;
        if ((0xFC0FC0FC0FC0FC1 * ((v52 - v51) >> 2)) >> 16)
        {
          v43 = 0x100000010;
          break;
        }

        memcpy(v50, v51, v53);
        v54 = v48[2];
        v55 = *v48;
        v48 += 6;
        v47 = (v83 + v53 + ((((((v54 - v55) & 0xFFFC) + 11) & 0xFFF8) - ((v54 - v55) & 0xFFFC) - 4) & 0xFFFC));
        v83 = v47;
        ++v46;
        if (v48 == *(this + 15))
        {
          goto LABEL_60;
        }
      }

      v41 = *(this + 14);
      v42 = *(this + 15);
      goto LABEL_63;
    }

LABEL_60:
    v43 = 0;
    v86 = 0;
    v87 = 0;
    goto LABEL_84;
  }

LABEL_63:
  if (v41 == v42)
  {
    v86 = 0;
    v87 = 0;
  }

  else
  {
    v86 = 0xAAAAAAAAAAAAAAAALL;
    v87 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 16;
    while (1)
    {
      v57 = v41[1] - *v41;
      if ((v57 + 4) >> 16)
      {
        break;
      }

      v56 += (v57 + 11) & 0xFFF8;
      v41 += 3;
      if (v41 == v42)
      {
        goto LABEL_70;
      }
    }

    v56 = 0;
LABEL_70:
    v88 = v56;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v88, &v86);
    v58 = v86;
    v59 = *v86;
    v60 = *(this + 14);
    if (v60 != *(this + 15))
    {
      do
      {
        v61 = *v60;
        v62 = *(v60 + 8);
        if (*v60 == v62)
        {
          v88 = 0;
          v89 = 0;
        }

        else
        {
          v88 = 0xAAAAAAAAAAAAAAAALL;
          v89 = 0xAAAAAAAAAAAAAAAALL;
          v90 = v62 - v61;
          std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v90, &v88);
          memcpy(*v88, *v60, *(v60 + 8) - *v60);
          if (v88)
          {
            memcpy(v59, *v88, *(v88 + 8) - *v88);
            v59 += *(v88 + 8) - *v88;
          }

          v63 = v89;
          if (v89 && !atomic_fetch_add((v89 + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v63->__on_zero_shared)(v63);
            std::__shared_weak_count::__release_weak(v63);
          }
        }

        v60 += 24;
      }

      while (v60 != *(this + 15));
      v58 = v86;
    }

    if (v59 != v58[1])
    {
      v64 = v58[1];
      v58[1] = v59;
    }
  }

LABEL_84:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v43, 0x102u, &v86, "", 0, &v77);
  v65 = v87;
  if (v87 && !atomic_fetch_add((v87 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v65->__on_zero_shared)(v65);
    std::__shared_weak_count::__release_weak(v65);
  }

  __p[0] = v77;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v78;
  __p[3] = v79;
  HIBYTE(v79) = 0;
  LOBYTE(v78[0]) = 0;
  v66 = v80;
  v80 = 0uLL;
  v67 = *(&v82 + 1);
  v82 = v66;
  if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v67->__on_zero_shared)(v67);
    std::__shared_weak_count::__release_weak(v67);
  }

  v68 = *(&v80 + 1);
  v69 = __p[0];
  if (*(&v80 + 1) && !atomic_fetch_add((*(&v80 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v68->__on_zero_shared)(v68);
    std::__shared_weak_count::__release_weak(v68);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78[0]);
    if (!v69)
    {
      goto LABEL_99;
    }

LABEL_110:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v82;
    goto LABEL_111;
  }

  if (v69)
  {
    goto LABEL_110;
  }

LABEL_99:
  (*(*this + 32))(&v77, this, v84);
  __p[0] = v77;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v78;
  __p[3] = v79;
  HIBYTE(v79) = 0;
  LOBYTE(v78[0]) = 0;
  v70 = v80;
  v80 = 0uLL;
  v71 = *(&v82 + 1);
  v82 = v70;
  if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v71->__on_zero_shared)(v71);
    std::__shared_weak_count::__release_weak(v71);
  }

  v72 = *(&v80 + 1);
  v73 = __p[0];
  if (*(&v80 + 1) && !atomic_fetch_add((*(&v80 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v72->__on_zero_shared)(v72);
    std::__shared_weak_count::__release_weak(v72);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78[0]);
  }

  if (v73)
  {
    goto LABEL_110;
  }

  *a2 = *v84;
  *(a2 + 16) = v85;
  v84[1] = 0;
  v85 = 0;
  v84[0] = 0;
  *(a2 + 48) = 0;
  v74 = *(&v82 + 1);
  if (*(&v82 + 1) && !atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v74->__on_zero_shared)(v74);
    std::__shared_weak_count::__release_weak(v74);
  }

LABEL_112:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v84[0])
  {
    v84[1] = v84[0];
    operator delete(v84[0]);
  }
}

void sub_297B07958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mipc::Error::~Error(&a19);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t mipc::apn::Add_Profile_List_Req::getSize(mipc::apn::Add_Profile_List_Req *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 16;
    v7 = *(this + 7);
    v5 = *(this + 15);
    v6 = *(this + 14);
    if (v6 == v5)
    {
      return v3;
    }
  }

  else
  {
    v3 = 416 * ((v2 - v1 - 412) / 0x19CuLL) + 448;
    v4 = *(this + 7);
    v5 = *(this + 15);
    v6 = *(this + 14);
    if (v6 == v5)
    {
      return v3;
    }
  }

  v8 = 16;
  while (1)
  {
    v9 = v6[1] - *v6;
    if ((v9 + 4) >> 16)
    {
      break;
    }

    v8 += (v9 + 11) & 0xFFF8;
    v6 += 3;
    if (v6 == v5)
    {
      return v8 + v3;
    }
  }

  return v3;
}

mipc::apn::Add_Profile_List_Cnf *mipc::apn::Add_Profile_List_Cnf::Add_Profile_List_Cnf(mipc::apn::Add_Profile_List_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 276, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6B4C0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::apn::Add_Profile_List_Cnf::deserialize(this, &v7);
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

void sub_297B07B88(_Unwind_Exception *a1)
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

void mipc::apn::Add_Profile_List_Cnf::deserialize(mipc::apn::Add_Profile_List_Cnf *this@<X0>, uint64_t a2@<X8>)
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
  mipc::Message::findTLV(this, 0x101u, v48);
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
        if (v14 - v15 == 8240)
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
          v26 = 0xDAB7EC1DD3431B57 * (v16 >> 2) + 1;
          if (v26 > 0x9F1165E7254813)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = 0xDAB7EC1DD3431B57 * ((v24 - v15) >> 2);
          if (2 * v27 > v26)
          {
            v26 = 2 * v27;
          }

          v28 = v27 >= 0x4F88B2F392A409 ? 0x9F1165E7254813 : v26;
          if (v28)
          {
            if (v28 > 0x9F1165E7254813)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(412 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[4 * (v16 >> 2)];
          *(v30 + 23) = 0u;
          *(v30 + 24) = 0u;
          *(v30 + 21) = 0u;
          *(v30 + 22) = 0u;
          v31 = &v29[412 * v28];
          *(v30 + 19) = 0u;
          *(v30 + 20) = 0u;
          *(v30 + 17) = 0u;
          *(v30 + 18) = 0u;
          *(v30 + 15) = 0u;
          *(v30 + 16) = 0u;
          *(v30 + 13) = 0u;
          *(v30 + 14) = 0u;
          *(v30 + 11) = 0u;
          *(v30 + 12) = 0u;
          *(v30 + 9) = 0u;
          *(v30 + 10) = 0u;
          *(v30 + 7) = 0u;
          *(v30 + 8) = 0u;
          *(v30 + 5) = 0u;
          *(v30 + 6) = 0u;
          *(v30 + 3) = 0u;
          *(v30 + 4) = 0u;
          *(v30 + 1) = 0u;
          *(v30 + 2) = 0u;
          *(v30 + 396) = 0u;
          v25 = v30 + 412;
          *v30 = 0u;
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
          v14[23] = 0u;
          v14[24] = 0u;
          v14[21] = 0u;
          v14[22] = 0u;
          v14[19] = 0u;
          v14[20] = 0u;
          v14[17] = 0u;
          v14[18] = 0u;
          v14[15] = 0u;
          v14[16] = 0u;
          v14[13] = 0u;
          v14[14] = 0u;
          v14[11] = 0u;
          v14[12] = 0u;
          v14[9] = 0u;
          v14[10] = 0u;
          v14[7] = 0u;
          v14[8] = 0u;
          v14[5] = 0u;
          v14[6] = 0u;
          v14[3] = 0u;
          v14[4] = 0u;
          v14[1] = 0u;
          v14[2] = 0u;
          *v14 = 0u;
          v25 = v14 + 412;
          *(v14 + 396) = 0u;
        }

        *(this + 12) = v25;
        if (v21 > 0x19C)
        {
          break;
        }

        if (v21 != 412)
        {
          v9 = 0x100000011;
          goto LABEL_73;
        }

        memcpy(v25 - 412, v23, 0x19CuLL);
        v12 = v23 + 412;
        if (v13 - v23 <= 412)
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
  mipc::Message::handle<(mipc::Error::Type)2>(this, v9, 0x101u, &v43, "", 0, &v39);
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

void sub_297B081D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t mipc::apn::Add_Profile_List_Cnf::Add_Profile_List_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 276, &v14, a3, 2);
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
  *a1 = &unk_2A1E6BC40;
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
  *a1 = &unk_2A1E6B4C0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297B08460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::Add_Profile_List_Cnf::~Add_Profile_List_Cnf(mipc::apn::Add_Profile_List_Cnf *this)
{
  *this = &unk_2A1E6B4C0;
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
  *this = &unk_2A1E6B4C0;
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
  *this = &unk_2A1E6B4C0;
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

unint64_t mipc::apn::Add_Profile_List_Cnf::getSize(mipc::apn::Add_Profile_List_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 416 * ((v2 - v1 - 412) / 0x19CuLL) + 432;
  }

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v3 + v4;
}

double mipc::apn::Set_Ia_Md_Prefer_Req::Set_Ia_Md_Prefer_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 277;
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
  *a1 = &unk_2A1E6B508;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 277;
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
  *a1 = &unk_2A1E6B508;
  *(a1 + 88) = 0;
  return result;
}

void mipc::apn::Set_Ia_Md_Prefer_Req::~Set_Ia_Md_Prefer_Req(mipc::apn::Set_Ia_Md_Prefer_Req *this)
{
  *this = &unk_2A1E6B508;
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
  *this = &unk_2A1E6B508;
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
  *this = &unk_2A1E6B508;
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

void mipc::apn::Set_Ia_Md_Prefer_Req::serialize(mipc::apn::Set_Ia_Md_Prefer_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297B09174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::apn::Set_Ia_Md_Prefer_Req::getSize(mipc::apn::Set_Ia_Md_Prefer_Req *this)
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

mipc::apn::Set_Ia_Md_Prefer_Cnf *mipc::apn::Set_Ia_Md_Prefer_Cnf::Set_Ia_Md_Prefer_Cnf(mipc::apn::Set_Ia_Md_Prefer_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 278, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E6B550;
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

void sub_297B0935C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::apn::Set_Ia_Md_Prefer_Cnf::deserialize@<D0>(mipc::apn::Set_Ia_Md_Prefer_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::apn::Set_Ia_Md_Prefer_Cnf::Set_Ia_Md_Prefer_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 278, &v14, a3, 2);
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
  *a1 = &unk_2A1E6BC88;
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
  *a1 = &unk_2A1E6B550;
  return a1;
}

void sub_297B0962C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::apn::Set_Ia_Md_Prefer_Cnf::~Set_Ia_Md_Prefer_Cnf(mipc::apn::Set_Ia_Md_Prefer_Cnf *this)
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

uint64_t mipc::apn::Set_Ia_Md_Prefer_Cnf::getSize(mipc::apn::Set_Ia_Md_Prefer_Cnf *this)
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

double mipc::stk::Set_Pac_Req::Set_Pac_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 2049;
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
  *a1 = &unk_2A1E6BCD0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 2049;
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
  *a1 = &unk_2A1E6BCD0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::stk::Set_Pac_Req::~Set_Pac_Req(mipc::stk::Set_Pac_Req *this)
{
  *this = &unk_2A1E6BCD0;
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
  *this = &unk_2A1E6BCD0;
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
  *this = &unk_2A1E6BCD0;
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

void mipc::stk::Set_Pac_Req::serialize(mipc::stk::Set_Pac_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 11);
  if (v4 && (v5 = v4[1] - *v4, (v5 - 65532) >= 0xFFFFFFFFFFFF0000))
  {
    v6 = ((v5 + 11) & 0xFFF8) + 16;
  }

  else
  {
    v6 = 16;
  }

  v36[0] = operator new(v6);
  v37 = v36[0] + v6;
  bzero(v36[0], v6);
  v36[1] = v36[0] + v6;
  v35 = v36[0];
  v34 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v29, this, &v35);
  v7 = v32;
  *&__p[1] = *v30;
  __p[3] = v31;
  __p[0] = v29;
  v34 = v32;
  if (v29)
  {
    *a2 = v29;
    *(a2 + 8) = *&__p[1];
    v8 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v8;
    *(a2 + 32) = v7;
LABEL_47:
    *(a2 + 48) = 1;
    goto LABEL_48;
  }

  v9 = *(this + 11);
  if (v9)
  {
    v10 = 0x100000002;
    v11 = v9[2] - *v9;
    *v35++ = 257;
    *v35 = v11;
    v12 = v35;
    v13 = ++v35;
    v14 = *(this + 11);
    v15 = *v14;
    v16 = v14[1];
    if (*v14 != v16)
    {
      if ((v16 - v15) > 0x20)
      {
        v17 = 0x100000010;
LABEL_18:
        v40 = v14[1];
        v41 = v15;
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(&v41, &v40, &v38);
        v10 = v17;
        goto LABEL_19;
      }

      if (v16 - v15 != 32)
      {
        v17 = 0x100000011;
        goto LABEL_18;
      }

      v18 = *(v15 + 16);
      *v13 = *v15;
      v13[1] = v18;
      v19 = ((*(v14 + 4) - *v14 + 11) & 0xFFF8u) - (*(v14 + 2) - *v14) + 65532;
      v35 = (v12 + (((*(v14 + 4) - *v14 + 11) & 0xFFF8) - (*(v14 + 4) - *v14) - 4) + 34);
      goto LABEL_17;
    }

    v38 = 0;
    v39 = 0;
  }

  else
  {
    if (*(this + 4))
    {
LABEL_17:
      v10 = 0;
      v38 = 0;
      v39 = 0;
      goto LABEL_19;
    }

    v38 = 0;
    v39 = 0;
    v10 = 0x10000000FLL;
  }

LABEL_19:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v10, 0x101u, &v38, "", 0, &v29);
  v20 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    __p[0] = v29;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  __p[0] = v29;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_22:
    operator delete(__p[1]);
  }

LABEL_23:
  *&__p[1] = *v30;
  __p[3] = v31;
  HIBYTE(v31) = 0;
  LOBYTE(v30[0]) = 0;
  v21 = v32;
  v32 = 0uLL;
  v34 = v21;
  if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v7 + 1) + 16))(*(&v7 + 1));
    std::__shared_weak_count::__release_weak(*(&v7 + 1));
    v22 = *(&v32 + 1);
    v23 = __p[0];
    if (!*(&v32 + 1))
    {
LABEL_27:
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_35:
      operator delete(v30[0]);
      if (!v23)
      {
        goto LABEL_36;
      }

LABEL_46:
      *a2 = __p[0];
      *(a2 + 8) = *&__p[1];
      *(a2 + 24) = __p[3];
      memset(&__p[1], 0, 24);
      *(a2 + 32) = v34;
      goto LABEL_47;
    }
  }

  else
  {
    v22 = *(&v32 + 1);
    v23 = __p[0];
    if (!*(&v32 + 1))
    {
      goto LABEL_27;
    }
  }

  if (atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_27;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v23)
  {
    goto LABEL_46;
  }

LABEL_36:
  (*(*this + 32))(&v29, this, v36);
  __p[0] = v29;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v30;
  __p[3] = v31;
  HIBYTE(v31) = 0;
  LOBYTE(v30[0]) = 0;
  v24 = v32;
  v32 = 0uLL;
  v25 = *(&v34 + 1);
  v34 = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&v32 + 1);
  v27 = __p[0];
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
    if (v27)
    {
      goto LABEL_46;
    }
  }

  else if (v27)
  {
    goto LABEL_46;
  }

  *a2 = *v36;
  *(a2 + 16) = v37;
  v36[1] = 0;
  v37 = 0;
  v36[0] = 0;
  *(a2 + 48) = 0;
  v28 = *(&v34 + 1);
  if (*(&v34 + 1) && !atomic_fetch_add((*(&v34 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_48:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }
}

void sub_297B0A3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::stk::Set_Pac_Req::getSize(mipc::stk::Set_Pac_Req *this)
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

mipc::stk::Set_Pac_Cnf *mipc::stk::Set_Pac_Cnf::Set_Pac_Cnf(mipc::stk::Set_Pac_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 2050, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6BD18;
  *(this + 11) = 0;
  mipc::stk::Set_Pac_Cnf::deserialize(this, &v7);
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

void sub_297B0A55C(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::stk::Set_Pac_Cnf::deserialize(mipc::stk::Set_Pac_Cnf *this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,true>,true>(&v8, this, this + 11);
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

void *mipc::stk::Set_Pac_Cnf::Set_Pac_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 2050, &v14, a3, 2);
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
  *a1 = &unk_2A1E6C810;
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
  *a1 = &unk_2A1E6BD18;
  a1[11] = 0;
  return a1;
}

void sub_297B0A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::stk::Set_Pac_Cnf::~Set_Pac_Cnf(mipc::stk::Set_Pac_Cnf *this)
{
  *this = &unk_2A1E6BD18;
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
  *this = &unk_2A1E6BD18;
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
  *this = &unk_2A1E6BD18;
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

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,true>,true>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v6;
  v46 = v6;
  *v44 = v6;
  *&v44[16] = v6;
  mipc::Message::findTLV(this, 0x100u, v44);
  *&v43[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v43 = v7;
  *__p = v7;
  v41 = *v44;
  if ((v44[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v44[8], *&v44[16]);
  }

  else
  {
    *__p = *&v44[8];
    *v43 = *&v44[24];
  }

  *&v43[8] = v45;
  if (*(&v45 + 1))
  {
    atomic_fetch_add_explicit((*(&v45 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v41;
  if (v41 && v41 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v41, a1);
    goto LABEL_50;
  }

  v9 = v46;
  v10 = *(&v46 + 1);
  v11 = this[4];
  v12 = *a3;
  *a3 = 0;
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

  if (!v8)
  {
    v15 = operator new(0x18uLL);
    *v15 = 0;
    v15[1] = 0;
    v15[2] = 0;
    v16 = *a3;
    *a3 = v15;
    if (v16)
    {
      v17 = *v16;
      if (*v16)
      {
        v16[1] = v17;
        operator delete(v17);
      }

      operator delete(v16);
      v15 = *a3;
    }

    v8 = 0x100000003;
    if (!v9)
    {
      goto LABEL_45;
    }

    if (v9 > 0x100)
    {
      v8 = 0x100000010;
      v14 = this[3];
      v39 = this[2];
      v40 = v14;
      if (!v14)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (v9 != 256)
    {
      v8 = 0x100000011;
      v14 = this[3];
      v39 = this[2];
      v40 = v14;
      if (!v14)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v18 = v15[2];
    v19 = *v15;
    if (v18 - *v15 < 0x100)
    {
      if (v19)
      {
        v15[1] = v19;
        v20 = v15;
        operator delete(v19);
        v15 = v20;
        v18 = 0;
        *v20 = 0;
        v20[1] = 0;
        v20[2] = 0;
      }

      v21 = v15;
      v22 = 2 * v18;
      if (2 * v18 <= 0x100)
      {
        v22 = 256;
      }

      if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      v19 = operator new(v23);
      *v21 = v19;
      v21[1] = v19;
      v21[2] = &v19[v23];
      memcpy(v19, v10, 0x100uLL);
      goto LABEL_44;
    }

    v24 = v15[1];
    v25 = v24 - v19;
    if ((v24 - v19) >= 0x100)
    {
      v21 = v15;
      memmove(*v15, v10, 0x100uLL);
LABEL_44:
      v8 = 0;
      v21[1] = v19 + 256;
      goto LABEL_45;
    }

    if (v24 == v19)
    {
      v27 = v15[1];
    }

    else
    {
      v26 = v15;
      memmove(*v15, v10, v24 - v19);
      v15 = v26;
      v27 = v26[1];
    }

    v31 = v27;
    if (v25 != 256)
    {
      v32 = &v10[v25];
      v33 = v19 - v24 + 256;
      if (v33 < 0x20)
      {
        v31 = v27;
        do
        {
LABEL_71:
          v38 = *v32++;
          *v31++ = v38;
        }

        while (v32 != v10 + 256);
        goto LABEL_72;
      }

      v31 = v27;
      if ((&v19[v27] - &v24[v10]) < 0x20)
      {
        goto LABEL_71;
      }

      v32 += v33 & 0xFFFFFFFFFFFFFFE0;
      v31 = v27 + (v33 & 0xFFFFFFFFFFFFFFE0);
      v34 = v27 + 16;
      v35 = &v10[v24 - v19 + 16];
      v36 = v33 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v37 = *v35;
        *(v34 - 1) = *(v35 - 1);
        *v34 = v37;
        v34 += 2;
        v35 += 32;
        v36 -= 32;
      }

      while (v36);
      if (v33 != (v33 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_71;
      }
    }

LABEL_72:
    v8 = 0;
    v15[1] = v31;
    v14 = this[3];
    v39 = this[2];
    v40 = v14;
    if (!v14)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

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

    v14 = this[3];
    v39 = this[2];
    v40 = v14;
    if (!v14)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_45:
  v14 = this[3];
  v39 = this[2];
  v40 = v14;
  if (v14)
  {
LABEL_46:
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_47:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x100u, &v39, "", 0, a1);
  v28 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_50:
  v29 = *&v43[16];
  if (*&v43[16] && !atomic_fetch_add((*&v43[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    if ((v43[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v43[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v30 = *(&v45 + 1);
  if (!*(&v45 + 1) || atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v44[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

  (v30->__on_zero_shared)(v30);
  std::__shared_weak_count::__release_weak(v30);
  if ((v44[31] & 0x80000000) != 0)
  {
LABEL_57:
    operator delete(*&v44[8]);
  }
}

void sub_297B0B204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297B0B218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297B0B234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void *mipc::stk::Set_Pac_Cnf::getSize(mipc::stk::Set_Pac_Cnf *this)
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

double mipc::stk::Get_Pac_Req::Get_Pac_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 2051;
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
  *a1 = &unk_2A1E6BD60;
  return result;
}

{
  *(a1 + 8) = 2051;
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
  *a1 = &unk_2A1E6BD60;
  return result;
}

void mipc::stk::Get_Pac_Req::~Get_Pac_Req(mipc::stk::Get_Pac_Req *this)
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

void mipc::stk::Get_Pac_Req::serialize(mipc::stk::Get_Pac_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297B0B908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::stk::Get_Pac_Cnf *mipc::stk::Get_Pac_Cnf::Get_Pac_Cnf(mipc::stk::Get_Pac_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 2052, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6BDA8;
  *(this + 11) = 0;
  mipc::stk::Get_Pac_Cnf::deserialize(this, &v7);
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

void sub_297B0BA60(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::stk::Get_Pac_Cnf::deserialize(mipc::stk::Get_Pac_Cnf *this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,true>,true>(&v8, this, this + 11);
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

void *mipc::stk::Get_Pac_Cnf::Get_Pac_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 2052, &v14, a3, 2);
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
  *a1 = &unk_2A1E6C858;
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
  *a1 = &unk_2A1E6BDA8;
  a1[11] = 0;
  return a1;
}

void sub_297B0BE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::stk::Get_Pac_Cnf::~Get_Pac_Cnf(mipc::stk::Get_Pac_Cnf *this)
{
  *this = &unk_2A1E6BDA8;
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
  *this = &unk_2A1E6BDA8;
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
  *this = &unk_2A1E6BDA8;
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

void *mipc::stk::Get_Pac_Cnf::getSize(mipc::stk::Get_Pac_Cnf *this)
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

double mipc::stk::Send_Terminal_Response_Req::Send_Terminal_Response_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 2053;
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
  *a1 = &unk_2A1E6BDF0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  return result;
}

{
  *(a1 + 8) = 2053;
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
  *a1 = &unk_2A1E6BDF0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  return result;
}

void mipc::stk::Send_Terminal_Response_Req::~Send_Terminal_Response_Req(mipc::stk::Send_Terminal_Response_Req *this)
{
  *this = &unk_2A1E6BDF0;
  v2 = *(this + 24);
  *(this + 24) = 0;
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

  v4 = *(this + 23);
  *(this + 23) = 0;
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

  v6 = *(this + 22);
  *(this + 22) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 21);
  *(this + 21) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 20);
  *(this + 20) = 0;
  if (v8)
  {
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
    operator delete(v16);
  }

  v17 = *(this + 11);
  *(this + 11) = 0;
  if (v17)
  {
    v18 = *v17;
    if (*v17)
    {
      v17[1] = v18;
      operator delete(v18);
    }

    operator delete(v17);
  }

  *this = &unk_2A1E85968;
  v19 = *(this + 9);
  if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (*(this + 63) < 0)
  {
LABEL_38:
    operator delete(*(this + 5));
  }

LABEL_39:
  v20 = *(this + 3);
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }
}

{
  mipc::stk::Send_Terminal_Response_Req::~Send_Terminal_Response_Req(this);

  operator delete(v1);
}

void mipc::stk::Send_Terminal_Response_Req::serialize(char ***this@<X0>, uint64_t a2@<X8>)
{
  Size = mipc::stk::Send_Terminal_Response_Req::getSize(this);
  *&v53 = operator new(Size);
  v54 = v53 + Size;
  bzero(v53, Size);
  *(&v53 + 1) = v53 + Size;
  v52 = v53;
  v51 = 0u;
  memset(__p, 0, sizeof(__p));
  ((*this)[3])(&v46, this, &v52);
  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v5 = v49;
  v49 = 0uLL;
  v6 = *(&v51 + 1);
  v51 = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v49 + 1);
  v8 = __p[0];
  if (!*(&v49 + 1) || atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v47);
    if (v8)
    {
      goto LABEL_90;
    }

    goto LABEL_13;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v8)
  {
    goto LABEL_90;
  }

LABEL_13:
  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<261ul,false>,true>(this, this + 11, 0x102u, &v52, &v46);
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
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v47);
    if (v12)
    {
      goto LABEL_90;
    }

    goto LABEL_25;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v12)
  {
    goto LABEL_90;
  }

LABEL_25:
  if (this[12])
  {
    *v52 = 259;
    v13 = v52++;
    v13[1] = 1;
    v14 = v52++;
    *(v14 + 2) = *this[12];
    v52 += 2;
  }

  v55 = 0;
  v56 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x103u, &v55, "", 0, &v46);
  v15 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v16 = v49;
  v49 = 0uLL;
  v17 = *(&v51 + 1);
  v51 = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(&v49 + 1);
  v19 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
    if (!v19)
    {
      goto LABEL_42;
    }

LABEL_90:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v51;
    v51 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_91;
  }

  if (v19)
  {
    goto LABEL_90;
  }

LABEL_42:
  if (this[13])
  {
    *v52 = 260;
    v20 = v52++;
    v20[1] = 1;
    v21 = v52++;
    *(v21 + 2) = *this[13];
    v52 += 2;
  }

  v55 = 0;
  v56 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x104u, &v55, "", 0, &v46);
  v22 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v23 = v49;
  v49 = 0uLL;
  v24 = *(&v51 + 1);
  v51 = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v49 + 1);
  v26 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (v26)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 261, &v52, &v46);
  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v27 = v49;
  v49 = 0uLL;
  v28 = *(&v51 + 1);
  v51 = v27;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(&v49 + 1);
  v30 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (v30)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 15, 262, &v52, &v46);
  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47) = 0;
  v31 = v49;
  v49 = 0uLL;
  v32 = *(&v51 + 1);
  v51 = v31;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&v49 + 1);
  v34 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (v34)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 16, 263, &v52, &v46);
  v35 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v35)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 17, 264, &v52, &v46);
  v36 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v36)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 18, 265, &v52, &v46);
  v37 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v37)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 19, 266, &v52, &v46);
  v38 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v38)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 20, 267, &v52, &v46);
  v39 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v39)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 21, 268, &v52, &v46);
  v40 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v40)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 22, 269, &v52, &v46);
  v41 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v41)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<242ul,false>,false>(&v46, this, this + 23, 0x10Eu, &v52);
  v42 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v42)
  {
    goto LABEL_90;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<242ul,false>,false>(&v46, this, this + 24, 0x10Fu, &v52);
  v43 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v43)
  {
    goto LABEL_90;
  }

  ((*this)[4])(&v46, this, &v53);
  v44 = *mipc::Error::operator=(__p, &v46);
  mipc::Error::~Error(&v46);
  if (v44)
  {
    goto LABEL_90;
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

LABEL_91:
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

void sub_297B0D090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::stk::Send_Terminal_Response_Req::getSize(mipc::stk::Send_Terminal_Response_Req *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
    v4 = 16;
    v5 = *(this + 23);
    if (!v5)
    {
      goto LABEL_7;
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

  v5 = *(this + 23);
  if (v5)
  {
LABEL_5:
    v6 = v5[1] - *v5;
    v3 = __CFADD__(v6 - 65532, 0x10000);
    v5 = ((v6 + 11) & 0xFFF8);
    if (!v3)
    {
      v5 = 0;
    }
  }

LABEL_7:
  v7 = *(this + 24);
  if (v7)
  {
    v8 = v7[1] - *v7;
    v3 = __CFADD__(v8 - 65532, 0x10000);
    v7 = ((v8 + 11) & 0xFFF8);
    if (!v3)
    {
      v7 = 0;
    }
  }

  v9 = vdupq_n_s64(8uLL);
  return &v5[*(this + 20) != 0] + v7 + v4 + vaddvq_s64(vbicq_s8(v9, vceqzq_s64(*(this + 168)))) + vaddvq_s64(vaddq_s64(vaddq_s64(vbicq_s8(v9, vceqzq_s64(*(this + 6))), vbicq_s8(v9, vceqzq_s64(*(this + 8)))), vaddq_s64(vbicq_s8(v9, vceqzq_s64(*(this + 7))), vbicq_s8(v9, vceqzq_s64(*(this + 9))))));
}

void mipc::Message::serializeTlv<mipc::mipc_byte_array_t<242ul,false>,false>(uint64_t a1, uint64_t a2, char ***a3, unsigned int a4, _WORD **a5)
{
  if (*a3)
  {
    v8 = *(*a3 + 2) - **a3;
    **a5 = a4;
    v9 = *a5 + 1;
    *a5 = v9;
    *v9 = v8;
    v10 = *a5 + 1;
    *a5 = v10;
    v11 = *a3;
    v12 = **a3;
    v13 = (*a3)[1];
    if (v12 == v13)
    {
      v15 = 0x100000002;
      v19 = 0;
      v20 = 0;
      goto LABEL_8;
    }

    v14 = v13 - v12;
    if ((v13 - v12) > 0xF2)
    {
      v21 = (*a3)[1];
      v22 = v12;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(&v22, &v21, &v19);
      v15 = 0x100000010;
      goto LABEL_8;
    }

    memcpy(v10, v12, v13 - v12);
    v17 = ((*(v11 + 4) - *v11 + 11) & 0xFFF8u) - (*(v11 + 2) - *v11) + 65532;
    *a5 = (*a5 + v14 + (((*(v11 + 4) - *v11 + 11) & 0xFFF8) - (*(v11 + 4) - *v11) - 4));
  }

  v15 = 0;
  v19 = 0;
  v20 = 0;
LABEL_8:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v15, a4, &v19, "", 0, a1);
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

void sub_297B0D3A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::stk::Send_Terminal_Response_Cnf *mipc::stk::Send_Terminal_Response_Cnf::Send_Terminal_Response_Cnf(mipc::stk::Send_Terminal_Response_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 2054, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6BE38;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::stk::Send_Terminal_Response_Cnf::deserialize(this, v7);
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

void sub_297B0D4DC(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 96));
  v3 = *(v1 + 88);
  *(v1 + 88) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::stk::Send_Terminal_Response_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(__p);
  v4 = *__p;
  *a2 = *__p;
  v5 = v36;
  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 11, 0x100u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v6 = v36;
  v36 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v36 + 1);
  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((__p[31] & 0x80000000) == 0)
    {
LABEL_11:
      if (v7)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((__p[31] & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(*&__p[8]);
  if (v7)
  {
    return;
  }

LABEL_15:
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v9;
  v37 = v9;
  *__p = v9;
  *&__p[16] = v9;
  mipc::Message::findTLV(this, 0x102u, __p);
  *&v34[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v34 = v10;
  *v33 = v10;
  v32 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v33, *&__p[8], *&__p[16]);
  }

  else
  {
    *v33 = *&__p[8];
    *v34 = *&__p[24];
  }

  *&v34[8] = v36;
  if (*(&v36 + 1))
  {
    atomic_fetch_add_explicit((*(&v36 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v32;
  if (!v32 || v32 == 0x10000000ELL)
  {
    v12 = v37;
    v13 = *(&v37 + 1);
    v14 = this[12];
    this[12] = 0;
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

    if (v11)
    {
      if (v11 != 0x10000000ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v16 = operator new(0x18uLL);
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v17 = this[12];
      this[12] = v16;
      if (v17)
      {
        v18 = *v17;
        if (*v17)
        {
          v17[1] = v18;
          operator delete(v18);
        }

        operator delete(v17);
        v16 = this[12];
      }

      v11 = 0x100000003;
      if (!v12)
      {
        goto LABEL_39;
      }

      if (v12 > 0x105)
      {
        v11 = 0x100000010;
LABEL_39:
        v19 = this[3];
        v30 = this[2];
        v31 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        mipc::Message::handle<(mipc::Error::Type)2>(this, v11, 0x102u, &v30, "", 0, &v26);
        v20 = v31;
        if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        goto LABEL_44;
      }

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v16, v13, &v13[v12], v12);
    }

    v11 = 0;
    goto LABEL_39;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v32, &v26);
LABEL_44:
  v21 = *&v34[16];
  if (*&v34[16] && !atomic_fetch_add((*&v34[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if ((v34[7] & 0x80000000) != 0)
  {
    operator delete(v33[0]);
  }

  v22 = *(&v36 + 1);
  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v26;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v27;
  a2[3] = v28;
  HIBYTE(v28) = 0;
  LOBYTE(v27) = 0;
  v23 = v29;
  v29 = 0uLL;
  v24 = a2[5];
  *(a2 + 2) = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v29 + 1);
  if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }
}

void sub_297B0DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

void *mipc::stk::Send_Terminal_Response_Cnf::Send_Terminal_Response_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 2054, &v14, a3, 2);
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
  *a1 = &unk_2A1E6C8A0;
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
  *a1 = &unk_2A1E6BE38;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297B0DCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::stk::Send_Terminal_Response_Cnf::~Send_Terminal_Response_Cnf(mipc::stk::Send_Terminal_Response_Cnf *this)
{
  *this = &unk_2A1E6BE38;
  v2 = *(this + 12);
  *(this + 12) = 0;
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
  *this = &unk_2A1E6BE38;
  v2 = *(this + 12);
  *(this + 12) = 0;
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
  *this = &unk_2A1E6BE38;
  v2 = *(this + 12);
  *(this + 12) = 0;
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

void *mipc::stk::Send_Terminal_Response_Cnf::getSize(mipc::stk::Send_Terminal_Response_Cnf *this)
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
  if (HIDWORD(*(this + 4)))
  {
    v4 = 4;
  }

  return &v1[(*(this + 11) != 0) + v4];
}

double mipc::stk::Send_Envelope_Req::Send_Envelope_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 2055;
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
  *a1 = &unk_2A1E6BE80;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

{
  *(a1 + 8) = 2055;
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
  *a1 = &unk_2A1E6BE80;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

void mipc::stk::Send_Envelope_Req::~Send_Envelope_Req(mipc::stk::Send_Envelope_Req *this)
{
  *this = &unk_2A1E6BE80;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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
    v14 = *v13;
    if (*v13)
    {
      v13[1] = v14;
      operator delete(v14);
    }

    operator delete(v13);
  }

  *this = &unk_2A1E85968;
  v15 = *(this + 9);
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (*(this + 63) < 0)
  {
LABEL_30:
    operator delete(*(this + 5));
  }

LABEL_31:
  v16 = *(this + 3);
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }
}

{
  mipc::stk::Send_Envelope_Req::~Send_Envelope_Req(this);

  operator delete(v1);
}

void mipc::stk::Send_Envelope_Req::serialize(mipc::stk::Send_Envelope_Req *this@<X0>, uint64_t a2@<X8>)
{
  Size = mipc::stk::Send_Envelope_Req::getSize(this);
  *&v61 = operator new(Size);
  v62 = v61 + Size;
  bzero(v61, Size);
  *(&v61 + 1) = v61 + Size;
  v60 = v61;
  v59 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v54, this, &v60);
  __p[0] = v54;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v55;
  __p[3] = v56;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v5 = v57;
  v57 = 0uLL;
  v6 = *(&v59 + 1);
  v59 = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v57 + 1);
  v8 = __p[0];
  if (!*(&v57 + 1) || atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v56) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v55);
    if (v8)
    {
      goto LABEL_97;
    }

    goto LABEL_13;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (SHIBYTE(v56) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v8)
  {
    goto LABEL_97;
  }

LABEL_13:
  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<261ul,false>,true>(this, this + 11, 0x102u, &v60, &v54);
  __p[0] = v54;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v55;
  __p[3] = v56;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v9 = v57;
  v57 = 0uLL;
  v10 = *(&v59 + 1);
  v59 = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(&v57 + 1);
  v12 = __p[0];
  if (!*(&v57 + 1) || atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v56) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v55);
    if (v12)
    {
      goto LABEL_97;
    }

    goto LABEL_25;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v56) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v12)
  {
    goto LABEL_97;
  }

LABEL_25:
  if (*(this + 12))
  {
    *v60 = 259;
    v13 = v60++;
    v13[1] = 1;
    v14 = v60++;
    *(v14 + 2) = **(this + 12);
    v60 += 2;
  }

  v63 = 0;
  v64 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x103u, &v63, "", 0, &v54);
  v15 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  __p[0] = v54;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v55;
  __p[3] = v56;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v16 = v57;
  v57 = 0uLL;
  v17 = *(&v59 + 1);
  v59 = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(&v57 + 1);
  v19 = __p[0];
  if (*(&v57 + 1) && !atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
    if (!v19)
    {
      goto LABEL_42;
    }

LABEL_97:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v59;
    v59 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_98;
  }

  if (v19)
  {
    goto LABEL_97;
  }

LABEL_42:
  if (*(this + 13))
  {
    *v60 = 260;
    v20 = v60++;
    v20[1] = 2;
    v21 = v60++;
    v21[1] = **(this + 13);
    v60 += 2;
  }

  v63 = 0;
  v64 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x104u, &v63, "", 0, &v54);
  v22 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  __p[0] = v54;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v55;
  __p[3] = v56;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v23 = v57;
  v57 = 0uLL;
  v24 = *(&v59 + 1);
  v59 = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v57 + 1);
  v26 = __p[0];
  if (*(&v57 + 1) && !atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (v26)
  {
    goto LABEL_97;
  }

  if (*(this + 14))
  {
    *v60 = 261;
    v27 = v60++;
    v27[1] = 270;
    v28 = v60;
    memcpy(v60 + 1, *(this + 14), 0x10EuLL);
    v60 = v28 + 139;
  }

  v63 = 0;
  v64 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x105u, &v63, "", 0, &v54);
  v29 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  __p[0] = v54;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v55;
  __p[3] = v56;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v30 = v57;
  v57 = 0uLL;
  v31 = *(&v59 + 1);
  v59 = v30;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(&v57 + 1);
  v33 = __p[0];
  if (*(&v57 + 1) && !atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (v33)
  {
    goto LABEL_97;
  }

  if (*(this + 15))
  {
    *v60 = 262;
    v34 = v60++;
    v34[1] = 84;
    v35 = v60;
    v36 = *(this + 15);
    v37 = *(v36 + 16);
    *(v60 + 1) = *v36;
    *(v35 + 9) = v37;
    v39 = *(v36 + 48);
    v38 = *(v36 + 64);
    v40 = *(v36 + 80);
    *(v35 + 17) = *(v36 + 32);
    *(v35 + 41) = v40;
    *(v35 + 33) = v38;
    *(v35 + 25) = v39;
    v60 = v35 + 43;
  }

  v63 = 0;
  v64 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x106u, &v63, "", 0, &v54);
  v41 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  __p[0] = v54;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v55;
  __p[3] = v56;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v42 = v57;
  v57 = 0uLL;
  v43 = *(&v59 + 1);
  v59 = v42;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  v44 = *(&v57 + 1);
  v45 = __p[0];
  if (*(&v57 + 1) && !atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (v45)
  {
    goto LABEL_97;
  }

  mipc::Message::serializeTlv<mipc::mipc_stk_event_dl_mt_call_struct4,false>(&v54, this, this + 16, &v60);
  v46 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v46)
  {
    goto LABEL_97;
  }

  mipc::Message::serializeTlv<mipc::mipc_stk_event_dl_call_con_struct4,false>(&v54, this, this + 17, &v60);
  v47 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v47)
  {
    goto LABEL_97;
  }

  mipc::Message::serializeTlv<mipc::mipc_stk_event_dl_call_discon_struct4,false>(&v54, this, this + 18, &v60);
  v48 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v48)
  {
    goto LABEL_97;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<2ul,true>,false>(&v54, this, this + 19, &v60);
  v49 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v49)
  {
    goto LABEL_97;
  }

  mipc::Message::serializeTlv<mipc::mipc_stk_ims_registration_status_struct4,false>(&v54, this, this + 160, &v60);
  v50 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v50)
  {
    goto LABEL_97;
  }

  mipc::Message::serializeTlv<mipc::mipc_stk_sms_pp_data_dl_struct4,false>(&v54, this, this + 168, &v60);
  v51 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v51)
  {
    goto LABEL_97;
  }

  (*(*this + 32))(&v54, this, &v61);
  v52 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v52)
  {
    goto LABEL_97;
  }

  *a2 = v61;
  *(a2 + 16) = v62;
  v62 = 0;
  v61 = 0uLL;
  *(a2 + 48) = 0;
  v53 = *(&v59 + 1);
  if (*(&v59 + 1) && !atomic_fetch_add((*(&v59 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v53->__on_zero_shared)(v53);
    std::__shared_weak_count::__release_weak(v53);
  }

LABEL_98:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v61)
  {
    *(&v61 + 1) = v61;
    operator delete(v61);
  }
}

void sub_297B0EF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::stk::Send_Envelope_Req::getSize(int64x2_t *this)
{
  v1 = this[5].i64[1];
  if (!v1)
  {
    v4 = 16;
    v6 = this[6];
    v5 = this[7];
    v7 = this[8];
    v9 = this[9].i64[0];
    v8 = this[9].i64[1];
    if (!v8)
    {
      goto LABEL_7;
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
  v7 = this[8];
  v9 = this[9].i64[0];
  v8 = this[9].i64[1];
  if (v8)
  {
LABEL_5:
    v10 = v8[1] - *v8;
    v3 = __CFADD__(v10 - 65532, 0x10000);
    v8 = ((v10 + 11) & 0xFFF8);
    if (!v3)
    {
      v8 = 0;
    }
  }

LABEL_7:
  v11.i64[0] = v9;
  v11.i64[1] = this[10].i64[0];
  v12 = vbicq_s8(xmmword_297DCF9E0, vceqzq_s64(v5));
  v13 = vbicq_s8(xmmword_297DCF9F0, vceqzq_s64(v11));
  v14 = vbicq_s8(xmmword_297DCFA00, vceqzq_s64(v7));
  v15 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(v6));
  v16 = 224;
  if (!this[10].i64[1])
  {
    v16 = 0;
  }

  return v8 + v4 + vaddvq_s64(vaddq_s64(vaddq_s64(v15, v14), vaddq_s64(v12, v13))) + v16;
}

void mipc::Message::serializeTlv<mipc::mipc_stk_event_dl_mt_call_struct4,false>(uint64_t a1, uint64_t a2, __int128 **a3, _WORD **a4)
{
  if (*a3)
  {
    **a4 = 263;
    v4 = (*a4)++;
    v4[1] = 43;
    v5 = (*a4)++;
    v6 = **a3;
    v7 = (*a3)[1];
    *(v5 + 29) = *(*a3 + 27);
    *(v5 + 9) = v7;
    *(v5 + 1) = v6;
    *a4 += 22;
  }

  v9 = 0;
  v10 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a2, 0, 0x107u, &v9, "", 0, a1);
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

void mipc::Message::serializeTlv<mipc::mipc_stk_event_dl_call_con_struct4,false>(uint64_t a1, uint64_t a2, _WORD **a3, _WORD **a4)
{
  if (*a3)
  {
    **a4 = 264;
    v4 = (*a4)++;
    v4[1] = 2;
    v5 = (*a4)++;
    v5[1] = **a3;
    *a4 += 2;
  }

  v7 = 0;
  v8 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a2, 0, 0x108u, &v7, "", 0, a1);
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

void mipc::Message::serializeTlv<mipc::mipc_stk_event_dl_call_discon_struct4,false>(uint64_t a1, uint64_t a2, _WORD **a3, _WORD **a4)
{
  if (*a3)
  {
    **a4 = 265;
    v4 = (*a4)++;
    v4[1] = 2;
    v5 = (*a4)++;
    v5[1] = **a3;
    *a4 += 2;
  }

  v7 = 0;
  v8 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a2, 0, 0x109u, &v7, "", 0, a1);
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

void mipc::Message::serializeTlv<mipc::mipc_byte_array_t<2ul,true>,false>(uint64_t a1, uint64_t a2, char ***a3, _WORD **a4)
{
  if (!*a3)
  {
    goto LABEL_9;
  }

  v5 = 0x100000002;
  v6 = *(*a3 + 2) - **a3;
  **a4 = 266;
  v7 = *a4 + 1;
  *a4 = v7;
  *v7 = v6;
  v8 = *a4 + 1;
  *a4 = v8;
  v9 = *a3;
  v10 = **a3;
  v11 = (*a3)[1];
  if (v10 == v11)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  if ((v11 - v10) <= 2)
  {
    if (v11 - v10 != 2)
    {
      v12 = a1;
      v13 = 0x100000011;
      goto LABEL_10;
    }

    *v8 = *v10;
    *a4 = (*a4 + (((*(v9 + 4) - *v9 + 11) & 0xFFF8) - (*(v9 + 4) - *v9) - 4) + 2);
LABEL_9:
    v5 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v12 = a1;
  v13 = 0x100000010;
LABEL_10:
  v17 = (*a3)[1];
  v18 = v10;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(&v18, &v17, &v15);
  a1 = v12;
  v5 = v13;
LABEL_11:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v5, 0x10Au, &v15, "", 0, a1);
  v14 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void sub_297B0F590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mipc::Message::serializeTlv<mipc::mipc_stk_ims_registration_status_struct4,false>(uint64_t a1, uint64_t a2, uint64_t a3, _WORD **a4)
{
  if (*a3)
  {
    **a4 = 267;
    v4 = (*a4)++;
    v4[1] = 249;
    v5 = (*a4)++;
    v6 = *a3;
    v8 = *(*a3 + 160);
    v7 = *(*a3 + 176);
    v9 = *(*a3 + 144);
    *(v5 + 65) = *(*a3 + 128);
    *(v5 + 73) = v9;
    *(v5 + 81) = v8;
    *(v5 + 89) = v7;
    v11 = v6[6];
    v10 = v6[7];
    v12 = v6[5];
    *(v5 + 33) = v6[4];
    *(v5 + 41) = v12;
    *(v5 + 49) = v11;
    *(v5 + 57) = v10;
    v14 = v6[2];
    v13 = v6[3];
    v15 = v6[1];
    *(v5 + 1) = *v6;
    *(v5 + 9) = v15;
    *(v5 + 17) = v14;
    *(v5 + 25) = v13;
    v16 = v6[12];
    v17 = v6[13];
    v18 = v6[14];
    *(v5 + 235) = *(v6 + 233);
    *(v5 + 113) = v18;
    *(v5 + 105) = v17;
    *(v5 + 97) = v16;
    *a4 += 126;
  }

  v20 = 0;
  v21 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a2, 0, 0x10Bu, &v20, "", 0, a1);
  v19 = v21;
  if (v21)
  {
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }
}

void mipc::Message::serializeTlv<mipc::mipc_stk_sms_pp_data_dl_struct4,false>(uint64_t a1, uint64_t a2, uint64_t a3, _WORD **a4)
{
  if (*a3)
  {
    **a4 = 268;
    v4 = (*a4)++;
    v4[1] = 219;
    v5 = (*a4)++;
    v6 = *a3;
    v8 = *(*a3 + 128);
    v7 = *(*a3 + 144);
    v9 = *(*a3 + 112);
    *(v5 + 49) = *(*a3 + 96);
    *(v5 + 57) = v9;
    *(v5 + 65) = v8;
    *(v5 + 73) = v7;
    v11 = v6[4];
    v10 = v6[5];
    v12 = v6[3];
    *(v5 + 17) = v6[2];
    *(v5 + 25) = v12;
    *(v5 + 33) = v11;
    *(v5 + 41) = v10;
    v13 = v6[1];
    *(v5 + 1) = *v6;
    *(v5 + 9) = v13;
    v14 = v6[10];
    v15 = v6[11];
    v16 = v6[12];
    *(v5 + 205) = *(v6 + 203);
    *(v5 + 97) = v16;
    *(v5 + 89) = v15;
    *(v5 + 81) = v14;
    *a4 += 110;
  }

  v18 = 0;
  v19 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a2, 0, 0x10Cu, &v18, "", 0, a1);
  v17 = v19;
  if (v19)
  {
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

mipc::stk::Send_Envelope_Cnf *mipc::stk::Send_Envelope_Cnf::Send_Envelope_Cnf(mipc::stk::Send_Envelope_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 2056, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6BEC8;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  mipc::stk::Send_Envelope_Cnf::deserialize(this, &v7);
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

void sub_297B0F998(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 128));
  v4 = *(v1 + 120);
  *(v1 + 120) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 104);
      *(v1 + 104) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (!v6)
  {
LABEL_4:
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 96));
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
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 96));
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

void mipc::stk::Send_Envelope_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 11, 0x100u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = *&__p[8];
  *(a2 + 24) = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
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
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  v50 = v12;
  v51 = v12;
  *__p = v12;
  *&__p[16] = v12;
  mipc::Message::findTLV(this, 0x101u, __p);
  *&v48[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v48 = v13;
  *v47 = v13;
  v46 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v47, *&__p[8], *&__p[16]);
  }

  else
  {
    *v47 = *&__p[8];
    *v48 = *&__p[24];
  }

  *&v48[8] = v50;
  if (*(&v50 + 1))
  {
    atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v46;
  if (!v46 || v46 == 0x10000000ELL)
  {
    v15 = v51;
    v16 = *(&v51 + 1);
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

      if (v15 > 0x105)
      {
        v14 = 0x100000010;
LABEL_49:
        v20 = this[3];
        v44 = this[2];
        v45 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        mipc::Message::handle<(mipc::Error::Type)2>(this, v14, 0x101u, &v44, "", 0, &v40);
        v21 = v45;
        if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
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

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v46, &v40);
LABEL_54:
  v22 = *&v48[16];
  if (*&v48[16] && !atomic_fetch_add((*&v48[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if ((v48[7] & 0x80000000) != 0)
  {
    operator delete(v47[0]);
  }

  v23 = *(&v50 + 1);
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v40;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = v41;
  *(a2 + 24) = v42;
  HIBYTE(v42) = 0;
  LOBYTE(v41) = 0;
  v24 = v43;
  v43 = 0uLL;
  v25 = *(a2 + 40);
  *(a2 + 32) = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *a2;
  v27 = *(&v43 + 1);
  if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
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
    v28 = v50;
    v50 = 0uLL;
    v29 = *(a2 + 40);
    *(a2 + 32) = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = *a2;
    v31 = *(&v50 + 1);
    if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
      mipc::Message::deserializeTlv<mipc::mipc_stk_call_control_rsp_struct4,false>(__p, this, this + 14);
      *a2 = *__p;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = *&__p[8];
      *(a2 + 24) = *&__p[24];
      __p[31] = 0;
      __p[8] = 0;
      v32 = v50;
      v50 = 0uLL;
      v33 = *(a2 + 40);
      *(a2 + 32) = v32;
      if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }

      v34 = *a2;
      v35 = *(&v50 + 1);
      if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
        mipc::Message::deserializeTlv<mipc::mipc_stk_call_control_sms_rsp_struct4,false>(__p, this, this + 15);
        *a2 = *__p;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = *&__p[24];
        __p[31] = 0;
        __p[8] = 0;
        v36 = v50;
        v50 = 0uLL;
        v37 = *(a2 + 40);
        *(a2 + 32) = v36;
        if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v38 = *a2;
        v39 = *(&v50 + 1);
        if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
          mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<128ul,false>,false>(__p, this, this + 16);
          mipc::Error::operator=(a2, __p);
          mipc::Error::~Error(__p);
        }
      }
    }
  }
}

void sub_297B10398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

uint64_t mipc::stk::Send_Envelope_Cnf::Send_Envelope_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 2056, &v14, a3, 2);
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
  *a1 = &unk_2A1E6C8E8;
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
  *a1 = &unk_2A1E6BEC8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_297B10630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::stk::Send_Envelope_Cnf::~Send_Envelope_Cnf(mipc::stk::Send_Envelope_Cnf *this)
{
  *this = &unk_2A1E6BEC8;
  v2 = *(this + 16);
  *(this + 16) = 0;
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

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
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
    operator delete(v6);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

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
  mipc::stk::Send_Envelope_Cnf::~Send_Envelope_Cnf(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_stk_call_control_rsp_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
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
    goto LABEL_25;
  }

  v9 = v25;
  v10 = *(&v25 + 1);
  v11 = *a3;
  *a3 = 0;
  if (v11)
  {
    operator delete(v11);
  }

  if (!v8)
  {
    v12 = operator new(0x17CuLL);
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
    *(v12 + 364) = 0u;
    v13 = *a3;
    *a3 = v12;
    if (v13)
    {
      operator delete(v13);
      v12 = *a3;
    }

    v8 = 0x100000011;
    if (v9 > 0x17C)
    {
      v8 = 0x100000012;
      goto LABEL_20;
    }

    if (v9 != 380)
    {
      goto LABEL_20;
    }

    memcpy(v12, v10, 0x17CuLL);
    goto LABEL_12;
  }

  if (v8 == 0x10000000ELL)
  {
LABEL_12:
    v8 = 0;
  }

LABEL_20:
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

LABEL_25:
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

void sub_297B10B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297B10B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297B10B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_stk_call_control_sms_rsp_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v6;
  v31 = v6;
  *v29 = v6;
  *&v29[16] = v6;
  mipc::Message::findTLV(this, 0x104u, v29);
  *&v28[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v28 = v7;
  *__p = v7;
  v26 = *v29;
  if ((v29[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v29[8], *&v29[16]);
  }

  else
  {
    *__p = *&v29[8];
    *v28 = *&v29[24];
  }

  *&v28[8] = v30;
  if (*(&v30 + 1))
  {
    atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v26;
  if (v26 && v26 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v26, a1);
  }

  else
  {
    v9 = v31;
    v10 = *(&v31 + 1);
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
      v12 = operator new(0x76uLL);
      *(v12 + 110) = 0;
      *(v12 + 5) = 0u;
      *(v12 + 6) = 0u;
      *(v12 + 3) = 0u;
      *(v12 + 4) = 0u;
      *(v12 + 1) = 0u;
      *(v12 + 2) = 0u;
      *v12 = 0u;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 0x76)
      {
        if (v9 == 118)
        {
          v8 = 0;
          v14 = *v10;
          v15 = v10[1];
          v16 = v10[3];
          *(v12 + 2) = v10[2];
          *(v12 + 3) = v16;
          *v12 = v14;
          *(v12 + 1) = v15;
          v17 = v10[4];
          v18 = v10[5];
          v19 = v10[6];
          *(v12 + 110) = *(v10 + 110);
          *(v12 + 5) = v18;
          *(v12 + 6) = v19;
          *(v12 + 4) = v17;
        }
      }

      else
      {
        v8 = 0x100000012;
      }
    }

    v20 = this[3];
    v24 = this[2];
    v25 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x104u, &v24, "", 0, a1);
    v21 = v25;
    if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  v22 = *&v28[16];
  if (*&v28[16] && !atomic_fetch_add((*&v28[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    if ((v28[7] & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v28[7] & 0x80000000) != 0)
  {
LABEL_28:
    operator delete(__p[0]);
  }

LABEL_29:
  v23 = *(&v30 + 1);
  if (!*(&v30 + 1) || atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v29[31] & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(*&v29[8]);
    return;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if ((v29[31] & 0x80000000) != 0)
  {
    goto LABEL_36;
  }
}

void sub_297B10E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297B10E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297B10EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<128ul,false>,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v6;
  v27 = v6;
  *v25 = v6;
  *&v25[16] = v6;
  mipc::Message::findTLV(this, 0x105u, v25);
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

  if (v9 <= 0x80)
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

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x105u, &v20, "", 0, a1);
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

void sub_297B111C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297B111D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297B111F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::stk::Send_Envelope_Cnf::getSize(mipc::stk::Send_Envelope_Cnf *this)
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

  v5 = *(this + 16);
  if (v5)
  {
    v6 = v5[1] - *v5;
    v4 = __CFADD__(v6 - 65532, 0x10000);
    v5 = ((v6 + 11) & 0xFFF8);
    if (!v4)
    {
      v5 = 0;
    }
  }

  v7 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v7 = 32;
  }

  v8 = v7 + 8 * (*(this + 11) != 0) + v1 + 8 * (*(this + 13) != 0);
  v9 = 384;
  if (!*(this + 14))
  {
    v9 = 0;
  }

  return &v5[16 * (*(this + 15) != 0)] + v8 + v9;
}

double mipc::stk::Get_Envelope_Info_Req::Get_Envelope_Info_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 2057;
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
  *a1 = &unk_2A1E6BF10;
  return result;
}

{
  *(a1 + 8) = 2057;
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
  *a1 = &unk_2A1E6BF10;
  return result;
}

void mipc::stk::Get_Envelope_Info_Req::~Get_Envelope_Info_Req(mipc::stk::Get_Envelope_Info_Req *this)
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

void mipc::stk::Get_Envelope_Info_Req::serialize(mipc::stk::Get_Envelope_Info_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297B1193C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::stk::Get_Envelope_Info_Cnf *mipc::stk::Get_Envelope_Info_Cnf::Get_Envelope_Info_Cnf(mipc::stk::Get_Envelope_Info_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 2058, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E6BF58;
  *(this + 11) = 0;
  mipc::stk::Get_Envelope_Info_Cnf::deserialize(this, &v7);
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

void sub_297B11A94(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::stk::Get_Envelope_Info_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<32ul,true>,true>(this, this + 11, 0x100u, &v8);
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

void *mipc::stk::Get_Envelope_Info_Cnf::Get_Envelope_Info_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 2058, &v14, a3, 2);
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
  *a1 = &unk_2A1E6C930;
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
  *a1 = &unk_2A1E6BF58;
  a1[11] = 0;
  return a1;
}

void sub_297B11E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::stk::Get_Envelope_Info_Cnf::~Get_Envelope_Info_Cnf(mipc::stk::Get_Envelope_Info_Cnf *this)
{
  *this = &unk_2A1E6BF58;
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
  *this = &unk_2A1E6BF58;
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
  *this = &unk_2A1E6BF58;
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

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<32ul,true>,true>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
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
    v10 = mipc::tlv<mipc::mipc_byte_array_t<32ul,true>,true>::deserialize(a2, &v17, *(a1 + 4) == 0);
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

void sub_297B124FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297B12510(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_297B12534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void *mipc::stk::Get_Envelope_Info_Cnf::getSize(mipc::stk::Get_Envelope_Info_Cnf *this)
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

double mipc::stk::Handle_Call_Setup_From_Sim_Req::Handle_Call_Setup_From_Sim_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 2059;
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
  *a1 = &unk_2A1E6BFA0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 2059;
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
  *a1 = &unk_2A1E6BFA0;
  *(a1 + 88) = 0;
  return result;
}