void mipc::Message::serializeTlv<mipc::mipc_string_t<256ul,false>,false>(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
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

    **a4 = 259;
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
      if (v13 > 0xFF)
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
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v15, 0x103u, &v19, "", 0, a1);
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

void sub_297C7D0CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::internal::Integration_Test_Cnf *mipc::internal::Integration_Test_Cnf::Integration_Test_Cnf(mipc::internal::Integration_Test_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 796, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E7F098;
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

void sub_297C7D278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::internal::Integration_Test_Cnf::deserialize@<D0>(mipc::internal::Integration_Test_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::internal::Integration_Test_Cnf::Integration_Test_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 796, &v14, a3, 2);
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
  *a1 = &unk_2A1E7F710;
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
  *a1 = &unk_2A1E7F098;
  return a1;
}

void sub_297C7D548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::internal::Integration_Test_Cnf::~Integration_Test_Cnf(mipc::internal::Integration_Test_Cnf *this)
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

uint64_t mipc::internal::Integration_Test_Cnf::getSize(mipc::internal::Integration_Test_Cnf *this)
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

double mipc::internal::Set_Channel_Flow_Control_Req::Set_Channel_Flow_Control_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 797;
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
  *a1 = &unk_2A1E7F0E0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = 797;
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
  *a1 = &unk_2A1E7F0E0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::internal::Set_Channel_Flow_Control_Req::~Set_Channel_Flow_Control_Req(mipc::internal::Set_Channel_Flow_Control_Req *this)
{
  *this = &unk_2A1E7F0E0;
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
  *this = &unk_2A1E7F0E0;
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
  *this = &unk_2A1E7F0E0;
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

void mipc::internal::Set_Channel_Flow_Control_Req::serialize(mipc::internal::Set_Channel_Flow_Control_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vceqzq_s64(*(this + 88));
  v5 = vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1];
  *&v33 = operator new(v5);
  v34 = v33 + v5;
  bzero(v33, v5);
  *(&v33 + 1) = v33 + v5;
  v32 = v33;
  v31 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v26, this, &v32);
  v6 = v29;
  *&__p[1] = *v27;
  __p[3] = v28;
  __p[0] = v26;
  v31 = v29;
  if (v26)
  {
    *a2 = v26;
    *(a2 + 8) = *&__p[1];
    v7 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
LABEL_50:
    *(a2 + 48) = 1;
    goto LABEL_51;
  }

  if (*(this + 11))
  {
    *v32 = 256;
    v8 = v32++;
    v8[1] = 1;
    v9 = v32++;
    *(v9 + 2) = **(this + 11);
    v32 += 2;
  }

  v35 = 0;
  v36 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v35, "", 0, &v26);
  v10 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    __p[0] = v26;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __p[0] = v26;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_8:
    operator delete(__p[1]);
  }

LABEL_9:
  *&__p[1] = *v27;
  __p[3] = v28;
  HIBYTE(v28) = 0;
  LOBYTE(v27[0]) = 0;
  v11 = v29;
  v29 = 0uLL;
  v31 = v11;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
  }

  v12 = *(&v29 + 1);
  v13 = __p[0];
  if (!*(&v29 + 1) || atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    operator delete(v27[0]);
    if (v13)
    {
      goto LABEL_49;
    }

    goto LABEL_21;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v28) < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v13)
  {
    goto LABEL_49;
  }

LABEL_21:
  if (*(this + 12))
  {
    *v32 = 257;
    v14 = v32++;
    v14[1] = 1;
    v15 = v32++;
    *(v15 + 2) = **(this + 12);
    v32 += 2;
  }

  v35 = 0;
  v36 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v35, "", 0, &v26);
  v16 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  __p[0] = v26;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v27;
  __p[3] = v28;
  HIBYTE(v28) = 0;
  LOBYTE(v27[0]) = 0;
  v17 = v29;
  v29 = 0uLL;
  v18 = *(&v31 + 1);
  v31 = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(&v29 + 1);
  v20 = __p[0];
  if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if (!v20)
    {
      goto LABEL_38;
    }

LABEL_49:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v31;
    goto LABEL_50;
  }

  if (v20)
  {
    goto LABEL_49;
  }

LABEL_38:
  (*(*this + 32))(&v26, this, &v33);
  __p[0] = v26;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v27;
  __p[3] = v28;
  HIBYTE(v28) = 0;
  LOBYTE(v27[0]) = 0;
  v21 = v29;
  v29 = 0uLL;
  v22 = *(&v31 + 1);
  v31 = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(&v29 + 1);
  v24 = __p[0];
  if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (v24)
  {
    goto LABEL_49;
  }

  *a2 = v33;
  *(a2 + 16) = v34;
  v34 = 0;
  v33 = 0uLL;
  *(a2 + 48) = 0;
  v25 = *(&v31 + 1);
  if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

LABEL_51:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v33)
  {
    *(&v33 + 1) = v33;
    operator delete(v33);
  }
}

void sub_297C7E358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::internal::Set_Channel_Flow_Control_Cnf *mipc::internal::Set_Channel_Flow_Control_Cnf::Set_Channel_Flow_Control_Cnf(mipc::internal::Set_Channel_Flow_Control_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 798, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E7F128;
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

void sub_297C7E55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::internal::Set_Channel_Flow_Control_Cnf::deserialize@<D0>(mipc::internal::Set_Channel_Flow_Control_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::internal::Set_Channel_Flow_Control_Cnf::Set_Channel_Flow_Control_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 798, &v14, a3, 2);
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
  *a1 = &unk_2A1E7F758;
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
  *a1 = &unk_2A1E7F128;
  return a1;
}

void sub_297C7E82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::internal::Set_Channel_Flow_Control_Cnf::~Set_Channel_Flow_Control_Cnf(mipc::internal::Set_Channel_Flow_Control_Cnf *this)
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

uint64_t mipc::internal::Set_Channel_Flow_Control_Cnf::getSize(mipc::internal::Set_Channel_Flow_Control_Cnf *this)
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

mipc::internal::Eif_Ind *mipc::internal::Eif_Ind::Eif_Ind(mipc::internal::Eif_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17154, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E7F170;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  *(this + 80) = 1;
  mipc::internal::Eif_Ind::deserialize(this, &v7);
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

void sub_297C7ECD4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 184);
  if (v4)
  {
    *(v1 + 192) = v4;
    operator delete(v4);
    v5 = *(v1 + 160);
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 152);
      *(v1 + 152) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v1 + 160);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 168) = v5;
  operator delete(v5);
  v6 = *(v1 + 152);
  *(v1 + 152) = 0;
  if (!v6)
  {
LABEL_4:
    mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 144));
    v7 = *(v1 + 136);
    *(v1 + 136) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v6);
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 144));
  v7 = *(v1 + 136);
  *(v1 + 136) = 0;
  if (!v7)
  {
LABEL_5:
    mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 128));
    v8 = *(v1 + 120);
    *(v1 + 120) = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v7);
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 128));
  v8 = *(v1 + 120);
  *(v1 + 120) = 0;
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v8);
  v9 = *(v1 + 112);
  *(v1 + 112) = 0;
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 104);
    *(v1 + 104) = 0;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v9);
  v10 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 96);
    *(v1 + 96) = 0;
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v10);
  v11 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (!v11)
  {
LABEL_9:
    v12 = *v2;
    *v2 = 0;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v11);
  v12 = *v2;
  *v2 = 0;
  if (!v12)
  {
LABEL_10:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_19:
  operator delete(v12);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::internal::Eif_Ind::deserialize(mipc::internal::Eif_Ind *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v33);
  *a2 = v33;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(__p) = 0;
  v4 = v36;
  v36 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v36 + 1);
  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 11, 0x100u, &v33);
  *a2 = v33;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(__p) = 0;
  v8 = v36;
  v36 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v36 + 1);
  if (!*(&v36 + 1) || atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v35) & 0x80000000) == 0)
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
  if (SHIBYTE(v35) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, &v33);
  *a2 = v33;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(__p) = 0;
  v12 = v36;
  v36 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v36 + 1);
  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 13, 0x102u, &v33);
    *a2 = v33;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v35;
    HIBYTE(v35) = 0;
    LOBYTE(__p) = 0;
    v16 = v36;
    v36 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v36 + 1);
    if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<unsigned int,false>(this, this + 14, 0x103u, &v33);
      *a2 = v33;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v35;
      HIBYTE(v35) = 0;
      LOBYTE(__p) = 0;
      v20 = v36;
      v36 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v36 + 1);
      if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<unsigned char,false>(this, this + 15, 0x104u, &v33);
        *a2 = v33;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v35;
        HIBYTE(v35) = 0;
        LOBYTE(__p) = 0;
        v24 = v36;
        v36 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v36 + 1);
        if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v35) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<mipc::mipc_struct_array_t<mipc::mipc_v4_full_addr_struct4,65535ul,false>,false>(&v33, this, this + 16);
          v28 = *mipc::Error::operator=(a2, &v33);
          mipc::Error::~Error(&v33);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned char,false>(this, this + 17, 0x106u, &v33);
            v29 = *mipc::Error::operator=(a2, &v33);
            mipc::Error::~Error(&v33);
            if (!v29)
            {
              mipc::Message::deserializeTlv<mipc::mipc_struct_array_t<mipc::mipc_v6_full_addr_struct4,65535ul,false>,false>(&v33, this, this + 18);
              v30 = *mipc::Error::operator=(a2, &v33);
              mipc::Error::~Error(&v33);
              if (!v30)
              {
                mipc::Message::deserializeTlv<unsigned char,false>(this, this + 19, 0x108u, &v33);
                v31 = *mipc::Error::operator=(a2, &v33);
                mipc::Error::~Error(&v33);
                if (!v31)
                {
                  mipc::Message::deserializeTlv<mipc::mipc_v4_full_addr_struct4,4ul,false>(&v33, this, this + 20);
                  v32 = *mipc::Error::operator=(a2, &v33);
                  mipc::Error::~Error(&v33);
                  if (!v32)
                  {
                    mipc::Message::deserializeTlv<mipc::mipc_v6_full_addr_struct4,4ul,false>(&v33, this, this + 23);
                    mipc::Error::operator=(a2, &v33);
                    mipc::Error::~Error(&v33);
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

uint64_t mipc::internal::Eif_Ind::Eif_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17154, &v14, a3, 3);
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
  *a1 = &unk_2A1E7F7A0;
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
  *a1 = &unk_2A1E7F170;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297C7F8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::internal::Eif_Ind::~Eif_Ind(mipc::internal::Eif_Ind *this)
{
  *this = &unk_2A1E7F170;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
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
    v6 = *v5;
    if (*v5)
    {
      v5[1] = v6;
      operator delete(v6);
    }

    operator delete(v5);
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
    v9 = *v8;
    if (*v8)
    {
      v8[1] = v9;
      operator delete(v9);
    }

    operator delete(v8);
  }

  v10 = *(this + 15);
  *(this + 15) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 14);
  *(this + 14) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 13);
  *(this + 13) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 12);
  *(this + 12) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(this + 11);
  *(this + 11) = 0;
  if (v14)
  {
    operator delete(v14);
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
  mipc::internal::Eif_Ind::~Eif_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_struct_array_t<mipc::mipc_v4_full_addr_struct4,65535ul,false>,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v6;
  v42 = v6;
  *v40 = v6;
  *&v40[16] = v6;
  mipc::Message::findTLV(this, 0x105u, v40);
  *&v39[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v39 = v7;
  *__p = v7;
  v37 = *v40;
  if ((v40[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v40[8], *&v40[16]);
  }

  else
  {
    *__p = *&v40[8];
    *v39 = *&v40[24];
  }

  *&v39[8] = v41;
  if (*(&v41 + 1))
  {
    atomic_fetch_add_explicit((*(&v41 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v37;
  if (v37 && v37 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v37, a1);
    goto LABEL_28;
  }

  v9 = v42;
  v10 = *(&v42 + 1);
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
    if (v8 == 0x10000000ELL)
    {
      v8 = 0;
      v13 = this[3];
      v35 = this[2];
      v36 = v13;
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v14 = operator new(0x18uLL);
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v15 = *a3;
    *a3 = v14;
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        v15[1] = v16;
        operator delete(v16);
      }

      operator delete(v15);
    }

    if (v9 >= 0xC)
    {
      v20 = *a3;
      v21 = 12 * ((357913942 * v9) >> 32);
      v22 = v20[2];
      v23 = *v20;
      if (v22 - *v20 >= v21)
      {
        v28 = v20[1];
        v29 = v28 - v23;
        if (v28 - v23 < v21)
        {
          if (v28 != v23)
          {
            memmove(*v20, v10, v28 - v23);
          }

          v30 = v20[1];
          if (v29 != v21)
          {
            v31 = &v10[v29];
            v32 = (&v23[v21] - v28);
            v30 = v20[1];
            v33 = v30;
            do
            {
              v34 = *v31;
              *(v33 + 2) = *(v31 + 2);
              *v33 = v34;
              v33 += 12;
              v31 += 12;
              v30 += 12;
              v32 -= 12;
            }

            while (v32);
          }

          v8 = 0;
          v20[1] = v30;
          v13 = this[3];
          v35 = this[2];
          v36 = v13;
          if (!v13)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        memmove(*v20, v10, v21);
      }

      else
      {
        v24 = 0xAAAAAAAAAAAAAAABLL * ((3 * ((357913942 * v9) >> 32)) & 0x3FFFFFFFFFFFFFFFLL);
        if (v23)
        {
          v20[1] = v23;
          operator delete(v23);
          v22 = 0;
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0;
        }

        if (v24 > 0x1555555555555555)
        {
          goto LABEL_63;
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 2);
        v26 = 2 * v25;
        if (2 * v25 <= v24)
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((3 * ((357913942 * v9) >> 32)) & 0x3FFFFFFFFFFFFFFFLL);
        }

        v27 = v25 >= 0xAAAAAAAAAAAAAAALL ? 0x1555555555555555 : v26;
        if (v27 > 0x1555555555555555)
        {
LABEL_63:
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v23 = operator new(12 * v27);
        *v20 = v23;
        v20[1] = v23;
        v20[2] = &v23[12 * v27];
        v21 = 12 * ((v21 - 12) / 0xC) + 12;
        memcpy(v23, v10, v21);
      }

      v8 = 0;
      v20[1] = &v23[v21];
      v13 = this[3];
      v35 = this[2];
      v36 = v13;
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v8 = 0x100000003;
  }

  v13 = this[3];
  v35 = this[2];
  v36 = v13;
  if (v13)
  {
LABEL_24:
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_25:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x105u, &v35, "", 0, a1);
  v17 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_28:
  v18 = *&v39[16];
  if (*&v39[16] && !atomic_fetch_add((*&v39[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if ((v39[7] & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ((v39[7] & 0x80000000) != 0)
  {
LABEL_31:
    operator delete(__p[0]);
  }

LABEL_32:
  v19 = *(&v41 + 1);
  if (!*(&v41 + 1) || atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v40[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if ((v40[31] & 0x80000000) != 0)
  {
LABEL_35:
    operator delete(*&v40[8]);
  }
}

void sub_297C7FF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C7FF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void sub_297C7FFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_struct_array_t<mipc::mipc_v6_full_addr_struct4,65535ul,false>,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v6;
  v42 = v6;
  *v40 = v6;
  *&v40[16] = v6;
  mipc::Message::findTLV(this, 0x107u, v40);
  *&v39[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v39 = v7;
  *__p = v7;
  v37 = *v40;
  if ((v40[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v40[8], *&v40[16]);
  }

  else
  {
    *__p = *&v40[8];
    *v39 = *&v40[24];
  }

  *&v39[8] = v41;
  if (*(&v41 + 1))
  {
    atomic_fetch_add_explicit((*(&v41 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v37;
  if (v37 && v37 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v37, a1);
    goto LABEL_28;
  }

  v9 = v42;
  v10 = *(&v42 + 1);
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
    if (v8 == 0x10000000ELL)
    {
      v8 = 0;
      v13 = this[3];
      v35 = this[2];
      v36 = v13;
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v14 = operator new(0x18uLL);
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v15 = *a3;
    *a3 = v14;
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        v15[1] = v16;
        operator delete(v16);
      }

      operator delete(v15);
    }

    if (v9 >= 0x18)
    {
      v20 = *a3;
      v21 = 24 * ((178956971 * v9) >> 32);
      v22 = v20[2];
      v23 = *v20;
      if (v22 - *v20 >= v21)
      {
        v28 = v20[1];
        v29 = v28 - v23;
        if (v28 - v23 < v21)
        {
          if (v28 != v23)
          {
            memmove(*v20, v10, v28 - v23);
          }

          v30 = v20[1];
          if (v29 != v21)
          {
            v31 = &v10[v29];
            v32 = (&v23[v21] - v28);
            v30 = v20[1];
            v33 = v30;
            do
            {
              v34 = *v31;
              *(v33 + 2) = *(v31 + 2);
              *v33 = v34;
              v33 += 24;
              v31 += 24;
              v30 += 24;
              v32 -= 24;
            }

            while (v32);
          }

          v8 = 0;
          v20[1] = v30;
          v13 = this[3];
          v35 = this[2];
          v36 = v13;
          if (!v13)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        memmove(*v20, v10, v21);
      }

      else
      {
        v24 = 0xAAAAAAAAAAAAAAABLL * ((3 * ((178956971 * v9) >> 32)) & 0x1FFFFFFFFFFFFFFFLL);
        if (v23)
        {
          v20[1] = v23;
          operator delete(v23);
          v22 = 0;
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0;
        }

        if (v24 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_63;
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
        v26 = 2 * v25;
        if (2 * v25 <= v24)
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((3 * ((178956971 * v9) >> 32)) & 0x1FFFFFFFFFFFFFFFLL);
        }

        v27 = v25 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v26;
        if (v27 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_63:
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v23 = operator new(24 * v27);
        *v20 = v23;
        v20[1] = v23;
        v20[2] = &v23[24 * v27];
        v21 = 24 * ((v21 - 24) / 0x18) + 24;
        memcpy(v23, v10, v21);
      }

      v8 = 0;
      v20[1] = &v23[v21];
      v13 = this[3];
      v35 = this[2];
      v36 = v13;
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v8 = 0x100000003;
  }

  v13 = this[3];
  v35 = this[2];
  v36 = v13;
  if (v13)
  {
LABEL_24:
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_25:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x107u, &v35, "", 0, a1);
  v17 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_28:
  v18 = *&v39[16];
  if (*&v39[16] && !atomic_fetch_add((*&v39[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if ((v39[7] & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ((v39[7] & 0x80000000) != 0)
  {
LABEL_31:
    operator delete(__p[0]);
  }

LABEL_32:
  v19 = *(&v41 + 1);
  if (!*(&v41 + 1) || atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v40[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if ((v40[31] & 0x80000000) != 0)
  {
LABEL_35:
    operator delete(*&v40[8]);
  }
}

void sub_297C80454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C80468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void sub_297C8048C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_v4_full_addr_struct4,4ul,false>(void *a1, std::__shared_weak_count **this, char **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v6;
  v44 = v6;
  *v42 = v6;
  *&v42[16] = v6;
  mipc::Message::findTLV(this, 0x109u, v42);
  *&v41[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v41 = v7;
  *__p = v7;
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
      goto LABEL_51;
    }

    v8 = 0;
    a3[1] = *a3;
  }

  else
  {
    v9 = v44;
    v10 = *(&v44 + 1);
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v36 = a1;
      v11 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v12 = a3[1];
        v14 = v12 - *a3;
        if (v14 == 48)
        {
          v8 = 0x100000010;
          goto LABEL_45;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v36;
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
          v24 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2) + 1;
          if (v24 > 0x1555555555555555)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v13) >> 2);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          v26 = v25 >= 0xAAAAAAAAAAAAAAALL ? 0x1555555555555555 : v24;
          if (v26)
          {
            if (v26 > 0x1555555555555555)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(12 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[4 * (v14 >> 2)];
          v29 = &v27[12 * v26];
          *(v28 + 2) = 0;
          *v28 = 0;
          v23 = v28 + 12;
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
          *(v12 + 8) = 0;
          *v12 = 0;
          v23 = (v12 + 12);
        }

        a3[1] = v23;
        if (v19 > 0xC)
        {
          break;
        }

        if (v19 != 12)
        {
          v8 = 0x100000011;
          goto LABEL_45;
        }

        v31 = *v21;
        *(v23 - 1) = *(v21 + 2);
        *(v23 - 12) = v31;
        if (v11 - v21 <= 12)
        {
          v10 = v11;
        }

        else
        {
          v10 = (v21 + 6);
        }

        if ((v11 - v10) <= 7)
        {
          v8 = 0;
          goto LABEL_45;
        }
      }

      v8 = 0x100000012;
LABEL_45:
      a1 = v36;
    }
  }

LABEL_46:
  v32 = this[3];
  v37 = this[2];
  v38 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x109u, &v37, "", 0, a1);
  v33 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_51:
  v34 = *&v41[16];
  if (*&v41[16] && !atomic_fetch_add((*&v41[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    if ((v41[7] & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if ((v41[7] & 0x80000000) != 0)
  {
LABEL_54:
    operator delete(__p[0]);
  }

LABEL_55:
  v35 = *(&v43 + 1);
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v42[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if ((v42[31] & 0x80000000) != 0)
  {
LABEL_58:
    operator delete(*&v42[8]);
  }
}

void sub_297C808D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_v6_full_addr_struct4,4ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v6;
  v44 = v6;
  *v42 = v6;
  *&v42[16] = v6;
  mipc::Message::findTLV(this, 0x10Au, v42);
  *&v41[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v41 = v7;
  *__p = v7;
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
      goto LABEL_51;
    }

    v8 = 0;
    a3[1] = *a3;
  }

  else
  {
    v9 = v44;
    v10 = *(&v44 + 1);
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v36 = a1;
      v11 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v12 = a3[1];
        v14 = v12 - *a3;
        if (v14 == 96)
        {
          v8 = 0x100000010;
          goto LABEL_45;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v36;
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
          v24 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3) + 1;
          if (v24 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v13) >> 3);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          v26 = v25 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v24;
          if (v26)
          {
            if (v26 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(24 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[8 * (v14 >> 3)];
          v29 = &v27[24 * v26];
          *v28 = 0;
          *(v28 + 1) = 0;
          *(v28 + 2) = 0;
          v23 = v28 + 24;
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
          *v12 = 0;
          v12[1] = 0;
          v23 = v12 + 3;
          v12[2] = 0;
        }

        a3[1] = v23;
        if (v19 > 0x18)
        {
          break;
        }

        if (v19 != 24)
        {
          v8 = 0x100000011;
          goto LABEL_45;
        }

        v31 = *v21;
        *(v23 - 1) = *(v21 + 2);
        *(v23 - 3) = v31;
        if (v11 - v21 <= 28)
        {
          v10 = v11;
        }

        else
        {
          v10 = (v21 + 14);
        }

        if ((v11 - v10) <= 7)
        {
          v8 = 0;
          goto LABEL_45;
        }
      }

      v8 = 0x100000012;
LABEL_45:
      a1 = v36;
    }
  }

LABEL_46:
  v32 = this[3];
  v37 = this[2];
  v38 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x10Au, &v37, "", 0, a1);
  v33 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_51:
  v34 = *&v41[16];
  if (*&v41[16] && !atomic_fetch_add((*&v41[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    if ((v41[7] & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if ((v41[7] & 0x80000000) != 0)
  {
LABEL_54:
    operator delete(__p[0]);
  }

LABEL_55:
  v35 = *(&v43 + 1);
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v42[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if ((v42[31] & 0x80000000) != 0)
  {
LABEL_58:
    operator delete(*&v42[8]);
  }
}

void sub_297C80D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

uint64_t mipc::internal::Eif_Ind::getSize(int64x2_t *this)
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

  v4 = this[9].i64[0];
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

  v6 = this[10].i64[0];
  v7 = this[10].i64[1];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((2 * (((v7 - v6 - 12) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFF0) + 32;
  }

  v9 = this[11].i64[1];
  v10 = this[12].i64[0];
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((2 * (((v10 - v9 - 24) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFE0) + 48;
  }

  v12 = 24;
  if (HIDWORD(this[2].i64[0]))
  {
    v12 = 32;
  }

  v13 = vdupq_n_s64(8uLL);
  return &v1[this[5].i64[1] != 0] + &v4[(this[9].i64[1] != 0) + (this[8].i64[1] != 0)] + v8 + v11 + v12 + vaddvq_s64(vaddq_s64(vbicq_s8(v13, vceqzq_s64(this[6])), vbicq_s8(v13, vceqzq_s64(this[7]))));
}

mipc::internal::Channel_Flow_Control_Ind *mipc::internal::Channel_Flow_Control_Ind::Channel_Flow_Control_Ind(mipc::internal::Channel_Flow_Control_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17157, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E7F1B8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::internal::Channel_Flow_Control_Ind::deserialize(this, v7);
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

void sub_297C81004(_Unwind_Exception *a1)
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

void mipc::internal::Channel_Flow_Control_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

void *mipc::internal::Channel_Flow_Control_Ind::Channel_Flow_Control_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17157, &v14, a3, 3);
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
  *a1 = &unk_2A1E7F7E8;
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
  *a1 = &unk_2A1E7F1B8;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297C81540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::internal::Channel_Flow_Control_Ind::~Channel_Flow_Control_Ind(mipc::internal::Channel_Flow_Control_Ind *this)
{
  *this = &unk_2A1E7F1B8;
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
  *this = &unk_2A1E7F1B8;
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
  *this = &unk_2A1E7F1B8;
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

uint64_t mipc::internal::Channel_Flow_Control_Ind::getSize(mipc::internal::Channel_Flow_Control_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::sys::Get_Info_Req::Get_Info_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1;
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
  *a1 = &unk_2A1E7F830;
  return result;
}

{
  *(a1 + 8) = 1;
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
  *a1 = &unk_2A1E7F830;
  return result;
}

void mipc::sys::Get_Info_Req::~Get_Info_Req(mipc::sys::Get_Info_Req *this)
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

void mipc::sys::Get_Info_Req::serialize(mipc::sys::Get_Info_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C8200C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Get_Info_Cnf *mipc::sys::Get_Info_Cnf::Get_Info_Cnf(mipc::sys::Get_Info_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 2, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7F878;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  *(this + 80) = 1;
  mipc::sys::Get_Info_Cnf::deserialize(this, &v7);
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

void sub_297C82198(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 200));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 192));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 184));
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 176));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 168));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 160));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 152));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 144));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 136));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 128));
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

      goto LABEL_9;
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

void mipc::sys::Get_Info_Cnf::deserialize(mipc::sys::Get_Info_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v37);
  *a2 = v37;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(__p) = 0;
  v4 = v40;
  v40 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v40 + 1);
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v39) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x102u, &v37);
  *a2 = v37;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(__p) = 0;
  v8 = v40;
  v40 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v40 + 1);
  if (!*(&v40 + 1) || atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v39) & 0x80000000) == 0)
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
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<mipc::mipc_sys_lte_band_struct4,true>(this, this + 12, 0x108u, &v37);
  *a2 = v37;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(__p) = 0;
  v12 = v40;
  v40 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v40 + 1);
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<mipc::mipc_sys_nr_band_struct4,true>(this, this + 13, 0x109u, &v37);
    *a2 = v37;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v39;
    HIBYTE(v39) = 0;
    LOBYTE(__p) = 0;
    v16 = v40;
    v40 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v40 + 1);
    if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<unsigned char,true>(this, this + 14, 0x10Au, &v37);
      *a2 = v37;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v39;
      HIBYTE(v39) = 0;
      LOBYTE(__p) = 0;
      v20 = v40;
      v40 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v40 + 1);
      if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<unsigned char,true>(this, this + 15, 0x10Cu, &v37);
        *a2 = v37;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v39;
        HIBYTE(v39) = 0;
        LOBYTE(__p) = 0;
        v24 = v40;
        v40 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v40 + 1);
        if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<mipc::mipc_string_t<16ul,false>,false>(&v37, this, this + 16);
          v28 = *mipc::Error::operator=(a2, &v37);
          mipc::Error::~Error(&v37);
          if (!v28)
          {
            mipc::Message::deserializeTlv<mipc::mipc_string_t<33ul,false>,true>(&v37, this, this + 17);
            v29 = *mipc::Error::operator=(a2, &v37);
            mipc::Error::~Error(&v37);
            if (!v29)
            {
              mipc::Message::deserializeTlv<mipc::mipc_string_t<129ul,false>,true>(&v37, this, this + 18, 0x111u);
              v30 = *mipc::Error::operator=(a2, &v37);
              mipc::Error::~Error(&v37);
              if (!v30)
              {
                mipc::Message::deserializeTlv<mipc::mipc_string_t<31ul,false>,true>(&v37, this, this + 19);
                v31 = *mipc::Error::operator=(a2, &v37);
                mipc::Error::~Error(&v37);
                if (!v31)
                {
                  mipc::Message::deserializeTlv<mipc::mipc_string_t<3ul,true>,true>(&v37, this, this + 20);
                  v32 = *mipc::Error::operator=(a2, &v37);
                  mipc::Error::~Error(&v37);
                  if (!v32)
                  {
                    mipc::Message::deserializeTlv<mipc::mipc_string_t<129ul,false>,true>(&v37, this, this + 21, 0x11Au);
                    v33 = *mipc::Error::operator=(a2, &v37);
                    mipc::Error::~Error(&v37);
                    if (!v33)
                    {
                      mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<16ul,true>,true>(this, this + 22, 0x11Bu, &v37);
                      v34 = *mipc::Error::operator=(a2, &v37);
                      mipc::Error::~Error(&v37);
                      if (!v34)
                      {
                        mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,false>(this, this + 23, 0x11Cu, &v37);
                        v35 = *mipc::Error::operator=(a2, &v37);
                        mipc::Error::~Error(&v37);
                        if (!v35)
                        {
                          mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,false>(this, this + 24, 0x11Du, &v37);
                          v36 = *mipc::Error::operator=(a2, &v37);
                          mipc::Error::~Error(&v37);
                          if (!v36)
                          {
                            mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,false>(this, this + 25, 0x11Eu, &v37);
                            mipc::Error::operator=(a2, &v37);
                            mipc::Error::~Error(&v37);
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

uint64_t mipc::sys::Get_Info_Cnf::Get_Info_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 2, &v14, a3, 2);
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
  *a1 = &unk_2A1E841C8;
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
  *a1 = &unk_2A1E7F878;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297C82E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Info_Cnf::~Get_Info_Cnf(mipc::sys::Get_Info_Cnf *this)
{
  *this = &unk_2A1E7F878;
  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete(v3);
  }

  v4 = *(this + 23);
  *(this + 23) = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }

  v5 = *(this + 22);
  *(this + 22) = 0;
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      v5[1] = v6;
      operator delete(v6);
    }

    operator delete(v5);
  }

  v7 = *(this + 21);
  *(this + 21) = 0;
  if (v7)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete(v7);
  }

  v8 = *(this + 20);
  *(this + 20) = 0;
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete(v8);
  }

  v9 = *(this + 19);
  *(this + 19) = 0;
  if (v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete(v9);
  }

  v10 = *(this + 18);
  *(this + 18) = 0;
  if (v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete(v10);
  }

  v11 = *(this + 17);
  *(this + 17) = 0;
  if (v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    operator delete(v11);
  }

  v12 = *(this + 16);
  *(this + 16) = 0;
  if (v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

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
    operator delete(v17);
  }

  *this = &unk_2A1E85968;
  v18 = *(this + 9);
  if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (*(this + 63) < 0)
  {
LABEL_54:
    operator delete(*(this + 5));
  }

LABEL_55:
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
  mipc::sys::Get_Info_Cnf::~Get_Info_Cnf(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<16ul,false>,false>(void *a1, std::__shared_weak_count **this, void ***a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x10Fu, v23);
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

  if (v9 <= 0x10)
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

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x10Fu, &v18, "", 0, a1);
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

void sub_297C83448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C8345C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297C83478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<33ul,false>,true>(void *a1, std::__shared_weak_count **this, void ***a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  *v24 = v6;
  *&v24[16] = v6;
  mipc::Message::findTLV(this, 0x110u, v24);
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
    goto LABEL_32;
  }

  v9 = v26;
  v10 = *(&v26 + 1);
  v11 = this[4];
  v12 = *a3;
  *a3 = 0;
  if (v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

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
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v14 = operator new(0x18uLL);
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v15 = *a3;
    *a3 = v14;
    if (v15)
    {
      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

      operator delete(v15);
      v14 = *a3;
    }

    v8 = 0x100000003;
    if (v9)
    {
      if (v9 <= 0x21)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v14, v10, (v10 + v9 - 1), v9 - 1);
        v8 = 0;
        v13 = this[3];
        v19 = this[2];
        v20 = v13;
        if (!v13)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v8 = 0x100000010;
    }
  }

  v13 = this[3];
  v19 = this[2];
  v20 = v13;
  if (v13)
  {
LABEL_28:
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_29:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x110u, &v19, "", 0, a1);
  v16 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_32:
  v17 = *&v23[16];
  if (*&v23[16] && !atomic_fetch_add((*&v23[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if ((v23[7] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_35:
    operator delete(__p[0]);
  }

LABEL_36:
  v18 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if ((v24[31] & 0x80000000) != 0)
  {
LABEL_39:
    operator delete(*&v24[8]);
  }
}

void sub_297C837BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C837D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297C837EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<129ul,false>,true>(void *a1, std::__shared_weak_count **this, void ***a3, unsigned int a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v8;
  v28 = v8;
  *v26 = v8;
  *&v26[16] = v8;
  mipc::Message::findTLV(this, a4, v26);
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
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v23, a1);
    goto LABEL_32;
  }

  v11 = v28;
  v12 = *(&v28 + 1);
  v13 = this[4];
  v14 = *a3;
  *a3 = 0;
  if (v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
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

      v15 = this[3];
      v21 = this[2];
      v22 = v15;
      if (!v15)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v16 = operator new(0x18uLL);
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v17 = *a3;
    *a3 = v16;
    if (v17)
    {
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
      }

      operator delete(v17);
      v16 = *a3;
    }

    v10 = 0x100000003;
    if (v11)
    {
      if (v11 <= 0x81)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v16, v12, (v12 + v11 - 1), v11 - 1);
        v10 = 0;
        v15 = this[3];
        v21 = this[2];
        v22 = v15;
        if (!v15)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v10 = 0x100000010;
    }
  }

  v15 = this[3];
  v21 = this[2];
  v22 = v15;
  if (v15)
  {
LABEL_28:
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_29:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, a4, &v21, "", 0, a1);
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_32:
  v19 = *&v25[16];
  if (*&v25[16] && !atomic_fetch_add((*&v25[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if ((v25[7] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((v25[7] & 0x80000000) != 0)
  {
LABEL_35:
    operator delete(__p[0]);
  }

LABEL_36:
  v20 = *(&v27 + 1);
  if (!*(&v27 + 1) || atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v26[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if ((v26[31] & 0x80000000) != 0)
  {
LABEL_39:
    operator delete(*&v26[8]);
  }
}

void sub_297C83B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C83B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297C83B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<31ul,false>,true>(void *a1, std::__shared_weak_count **this, void ***a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  *v24 = v6;
  *&v24[16] = v6;
  mipc::Message::findTLV(this, 0x112u, v24);
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
    goto LABEL_32;
  }

  v9 = v26;
  v10 = *(&v26 + 1);
  v11 = this[4];
  v12 = *a3;
  *a3 = 0;
  if (v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

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
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v14 = operator new(0x18uLL);
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v15 = *a3;
    *a3 = v14;
    if (v15)
    {
      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

      operator delete(v15);
      v14 = *a3;
    }

    v8 = 0x100000003;
    if (v9)
    {
      if (v9 <= 0x1F)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v14, v10, (v10 + v9 - 1), v9 - 1);
        v8 = 0;
        v13 = this[3];
        v19 = this[2];
        v20 = v13;
        if (!v13)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v8 = 0x100000010;
    }
  }

  v13 = this[3];
  v19 = this[2];
  v20 = v13;
  if (v13)
  {
LABEL_28:
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_29:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x112u, &v19, "", 0, a1);
  v16 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_32:
  v17 = *&v23[16];
  if (*&v23[16] && !atomic_fetch_add((*&v23[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if ((v23[7] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_35:
    operator delete(__p[0]);
  }

LABEL_36:
  v18 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if ((v24[31] & 0x80000000) != 0)
  {
LABEL_39:
    operator delete(*&v24[8]);
  }
}

void sub_297C83EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C83EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297C83EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<3ul,true>,true>(void *a1, std::__shared_weak_count **this, void ***a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  *v24 = v6;
  *&v24[16] = v6;
  mipc::Message::findTLV(this, 0x118u, v24);
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
    v11 = this[4];
    v12 = *a3;
    *a3 = 0;
    if (v12)
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

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
      }
    }

    else
    {
      v13 = operator new(0x18uLL);
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      v14 = *a3;
      *a3 = v13;
      if (v14)
      {
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        operator delete(v14);
        v13 = *a3;
      }

      v8 = 0x100000003;
      if (v9)
      {
        if (v9 <= 3)
        {
          if (v9 == 3)
          {
            std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v13, v10, (v10 + 2), 2uLL);
            v8 = 0;
          }

          else
          {
            v8 = 0x100000011;
          }
        }

        else
        {
          v8 = 0x100000010;
        }
      }
    }

    v15 = this[3];
    v19 = this[2];
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x118u, &v19, "", 0, a1);
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
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_36:
    operator delete(__p[0]);
  }

LABEL_37:
  v18 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_40;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if ((v24[31] & 0x80000000) != 0)
  {
LABEL_40:
    operator delete(*&v24[8]);
  }
}

void sub_297C84218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C8422C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297C84248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sys::Get_Info_Cnf::getSize(int64x2_t *this)
{
  v1 = this[8].i64[0];
  if (!v1)
  {
LABEL_6:
    v4 = this[8].i64[1];
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v2 = *(v1 + 23);
  v3 = *(v1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v3 = v2;
  }

  if ((v3 - 65531) < 0xFFFFFFFFFFFF0000)
  {
    v1 = 0;
    goto LABEL_6;
  }

  v1 = (v3 + 12) & 0xFFF8;
  v4 = this[8].i64[1];
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_9:
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  if ((v6 - 65531) >= 0xFFFFFFFFFFFF0000)
  {
    v4 = (v6 + 12) & 0xFFF8;
    v7 = this[9].i64[0];
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v4 = 0;
LABEL_13:
  v7 = this[9].i64[0];
  if (!v7)
  {
LABEL_20:
    v10 = this[9].i64[1];
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_16:
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  if ((v9 - 65531) < 0xFFFFFFFFFFFF0000)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v7 = (v9 + 12) & 0xFFF8;
  v10 = this[9].i64[1];
  if (!v10)
  {
    goto LABEL_27;
  }

LABEL_23:
  v11 = *(v10 + 23);
  v12 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v12 = v11;
  }

  if ((v12 - 65531) >= 0xFFFFFFFFFFFF0000)
  {
    v10 = (v12 + 12) & 0xFFF8;
    v13 = this[10].i64[0];
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v10 = 0;
LABEL_27:
  v13 = this[10].i64[0];
  if (!v13)
  {
LABEL_34:
    v16 = this[10].i64[1];
    if (!v16)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_30:
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  if ((v15 - 65531) < 0xFFFFFFFFFFFF0000)
  {
    v13 = 0;
    goto LABEL_34;
  }

  v13 = (v15 + 12) & 0xFFF8;
  v16 = this[10].i64[1];
  if (!v16)
  {
    goto LABEL_41;
  }

LABEL_37:
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  if ((v18 - 65531) >= 0xFFFFFFFFFFFF0000)
  {
    v16 = (v18 + 12) & 0xFFF8;
    v19 = this[11].i64[0];
    if (!v19)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  v16 = 0;
LABEL_41:
  v19 = this[11].i64[0];
  if (!v19)
  {
    goto LABEL_44;
  }

LABEL_42:
  v20 = v19[1] - *v19;
  v21 = __CFADD__(v20 - 65532, 0x10000);
  v19 = ((v20 + 11) & 0xFFF8);
  if (!v21)
  {
    v19 = 0;
  }

LABEL_44:
  v22 = this[11].i64[1];
  if (v22)
  {
    v23 = *(v22 + 23);
    v24 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v24 = v23;
    }

    if ((v24 - 65531) >= 0xFFFFFFFFFFFF0000)
    {
      v22 = (v24 + 12) & 0xFFF8;
      v25 = this[12].i64[0];
      if (!v25)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    v22 = 0;
  }

  v25 = this[12].i64[0];
  if (!v25)
  {
    goto LABEL_54;
  }

LABEL_50:
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v21 = __CFADD__(v27 - 65531, 0x10000);
  v25 = (v27 + 12) & 0xFFF8;
  if (!v21)
  {
    v25 = 0;
  }

LABEL_54:
  v28 = this[2].u64[0];
  v29 = this[5].i64[1];
  v30 = this[6];
  v31 = this[7];
  v32 = this[12].i64[1];
  if (v32)
  {
    v33 = *(v32 + 23);
    v34 = *(v32 + 8);
    if ((v33 & 0x80u) == 0)
    {
      v34 = v33;
    }

    v21 = __CFADD__(v34 - 65531, 0x10000);
    v32 = (v34 + 12) & 0xFFF8;
    if (!v21)
    {
      v32 = 0;
    }
  }

  v35 = HIDWORD(v28) == 0;
  v36 = 24;
  if (!v35)
  {
    v36 = 32;
  }

  return &v19[v29 != 0] + v16 + v25 + v22 + v36 + v32 + v13 + v10 + v7 + v4 + v1 + vaddvq_s64(vaddq_s64(vbicq_s8(xmmword_297DD7940, vceqzq_s64(v30)), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(v31))));
}

double mipc::sys::At_Req::At_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 3;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E7F8C0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 3;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E7F8C0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sys::At_Req::~At_Req(mipc::sys::At_Req *this)
{
  *this = &unk_2A1E7F8C0;
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
  *this = &unk_2A1E7F8C0;
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
  *this = &unk_2A1E7F8C0;
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

void mipc::sys::At_Req::serialize(mipc::sys::At_Req *this@<X0>, uint64_t a2@<X8>)
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

  *&v26 = operator new(v8);
  v27 = v26 + v8;
  bzero(v26, v8);
  *(&v26 + 1) = v26 + v8;
  v25 = v26;
  v24 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v19, this, &v25);
  v9 = v22;
  *&__p[1] = *v20;
  __p[3] = v21;
  __p[0] = v19;
  v24 = v22;
  if (v19)
  {
    *a2 = v19;
    *(a2 + 8) = *&__p[1];
    v10 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v10;
    *(a2 + 32) = v9;
LABEL_33:
    *(a2 + 48) = 1;
    goto LABEL_34;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<2048ul,false>,true>(&v19, this, v5, &v25);
  __p[0] = v19;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v20;
  __p[3] = v21;
  HIBYTE(v21) = 0;
  LOBYTE(v20[0]) = 0;
  v11 = v22;
  v22 = 0uLL;
  v24 = v11;
  if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v9 + 1) + 16))(*(&v9 + 1));
    std::__shared_weak_count::__release_weak(*(&v9 + 1));
    v12 = *(&v22 + 1);
    v13 = __p[0];
    if (!*(&v22 + 1))
    {
LABEL_15:
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      operator delete(v20[0]);
      if (!v13)
      {
        goto LABEL_22;
      }

LABEL_32:
      *a2 = __p[0];
      *(a2 + 8) = *&__p[1];
      *(a2 + 24) = __p[3];
      memset(&__p[1], 0, 24);
      *(a2 + 32) = v24;
      goto LABEL_33;
    }
  }

  else
  {
    v12 = *(&v22 + 1);
    v13 = __p[0];
    if (!*(&v22 + 1))
    {
      goto LABEL_15;
    }
  }

  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_15;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v13)
  {
    goto LABEL_32;
  }

LABEL_22:
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
      goto LABEL_32;
    }
  }

  else if (v17)
  {
    goto LABEL_32;
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

LABEL_34:
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

void sub_297C84DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sys::At_Req::getSize(mipc::sys::At_Req *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
    return 16;
  }

  v2 = *(v1 + 23);
  v3 = *(v1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v3 = v2;
  }

  if ((v3 - 65531) >= 0xFFFFFFFFFFFF0000)
  {
    return ((v3 + 12) & 0xFFF8) + 16;
  }

  else
  {
    return 16;
  }
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<2048ul,false>,true>(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
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

    **a4 = 256;
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
      if (v13 > 0x7FF)
      {
        v22 = *v12;
        v21 = &v22[v13];
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v22, &v21, &v19);
        v15 = 0x100000010;
        goto LABEL_15;
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

  else if (!*(a2 + 32))
  {
    v15 = 0x10000000FLL;
    v19 = 0;
    v20 = 0;
    goto LABEL_15;
  }

  v15 = 0;
  v19 = 0;
  v20 = 0;
LABEL_15:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v15, 0x100u, &v19, "", 0, a1);
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

void sub_297C85040(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::sys::At_Cnf *mipc::sys::At_Cnf::At_Cnf(mipc::sys::At_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 4, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7F908;
  *(this + 11) = 0;
  *(this + 80) = 1;
  mipc::sys::At_Cnf::deserialize(this, &v7);
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

void sub_297C85184(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sys::At_Cnf::deserialize(mipc::sys::At_Cnf *this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_string_t<2048ul,false>,true>(&v8, this, this + 11);
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

uint64_t mipc::sys::At_Cnf::At_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 4, &v14, a3, 2);
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
  *a1 = &unk_2A1E84210;
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
  *a1 = &unk_2A1E7F908;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297C85580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::At_Cnf::~At_Cnf(mipc::sys::At_Cnf *this)
{
  *this = &unk_2A1E7F908;
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
  *this = &unk_2A1E7F908;
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
  *this = &unk_2A1E7F908;
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

void mipc::Message::deserializeTlv<mipc::mipc_string_t<2048ul,false>,true>(void *a1, std::__shared_weak_count **this, void ***a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  *v24 = v6;
  *&v24[16] = v6;
  mipc::Message::findTLV(this, 0x100u, v24);
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
    goto LABEL_32;
  }

  v9 = v26;
  v10 = *(&v26 + 1);
  v11 = this[4];
  v12 = *a3;
  *a3 = 0;
  if (v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

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
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v14 = operator new(0x18uLL);
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v15 = *a3;
    *a3 = v14;
    if (v15)
    {
      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

      operator delete(v15);
      v14 = *a3;
    }

    v8 = 0x100000003;
    if (v9)
    {
      if (v9 <= 0x800)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v14, v10, (v10 + v9 - 1), v9 - 1);
        v8 = 0;
        v13 = this[3];
        v19 = this[2];
        v20 = v13;
        if (!v13)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v8 = 0x100000010;
    }
  }

  v13 = this[3];
  v19 = this[2];
  v20 = v13;
  if (v13)
  {
LABEL_28:
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_29:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x100u, &v19, "", 0, a1);
  v16 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_32:
  v17 = *&v23[16];
  if (*&v23[16] && !atomic_fetch_add((*&v23[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if ((v23[7] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_35:
    operator delete(__p[0]);
  }

LABEL_36:
  v18 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if ((v24[31] & 0x80000000) != 0)
  {
LABEL_39:
    operator delete(*&v24[8]);
  }
}

void sub_297C85C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C85CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297C85CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sys::At_Cnf::getSize(mipc::sys::At_Cnf *this)
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

double mipc::sys::Get_Thermal_Sensor_Num_Req::Get_Thermal_Sensor_Num_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 15;
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
  *a1 = &unk_2A1E7F950;
  return result;
}

{
  *(a1 + 8) = 15;
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
  *a1 = &unk_2A1E7F950;
  return result;
}

void mipc::sys::Get_Thermal_Sensor_Num_Req::~Get_Thermal_Sensor_Num_Req(mipc::sys::Get_Thermal_Sensor_Num_Req *this)
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

void mipc::sys::Get_Thermal_Sensor_Num_Req::serialize(mipc::sys::Get_Thermal_Sensor_Num_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C863A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Get_Thermal_Sensor_Num_Cnf *mipc::sys::Get_Thermal_Sensor_Num_Cnf::Get_Thermal_Sensor_Num_Cnf(mipc::sys::Get_Thermal_Sensor_Num_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7F998;
  *(this + 11) = 0;
  mipc::sys::Get_Thermal_Sensor_Num_Cnf::deserialize(this, &v7);
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

void sub_297C864F8(_Unwind_Exception *a1)
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

void mipc::sys::Get_Thermal_Sensor_Num_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sys::Get_Thermal_Sensor_Num_Cnf::Get_Thermal_Sensor_Num_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16, &v14, a3, 2);
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
  *a1 = &unk_2A1E84258;
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
  *a1 = &unk_2A1E7F998;
  a1[11] = 0;
  return a1;
}

void sub_297C868F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Thermal_Sensor_Num_Cnf::~Get_Thermal_Sensor_Num_Cnf(mipc::sys::Get_Thermal_Sensor_Num_Cnf *this)
{
  *this = &unk_2A1E7F998;
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
  *this = &unk_2A1E7F998;
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
  *this = &unk_2A1E7F998;
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

uint64_t mipc::sys::Get_Thermal_Sensor_Num_Cnf::getSize(mipc::sys::Get_Thermal_Sensor_Num_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sys::Get_Thermal_Sensor_Info_Req::Get_Thermal_Sensor_Info_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 17;
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
  *a1 = &unk_2A1E7F9E0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 17;
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
  *a1 = &unk_2A1E7F9E0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sys::Get_Thermal_Sensor_Info_Req::~Get_Thermal_Sensor_Info_Req(mipc::sys::Get_Thermal_Sensor_Info_Req *this)
{
  *this = &unk_2A1E7F9E0;
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
  *this = &unk_2A1E7F9E0;
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
  *this = &unk_2A1E7F9E0;
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

void mipc::sys::Get_Thermal_Sensor_Info_Req::serialize(mipc::sys::Get_Thermal_Sensor_Info_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C875CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sys::Get_Thermal_Sensor_Info_Req::getSize(mipc::sys::Get_Thermal_Sensor_Info_Req *this)
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

mipc::sys::Get_Thermal_Sensor_Info_Cnf *mipc::sys::Get_Thermal_Sensor_Info_Cnf::Get_Thermal_Sensor_Info_Cnf(mipc::sys::Get_Thermal_Sensor_Info_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 18, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *(this + 88) = 0u;
  *this = &unk_2A1E7FA28;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  mipc::sys::Get_Thermal_Sensor_Info_Cnf::deserialize(this, &v7);
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

void sub_297C87768(_Unwind_Exception *a1)
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

      goto LABEL_14;
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

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v6);
  v7 = *(v1 + 18);
  *(v1 + 18) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 17);
    *(v1 + 17) = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v7);
  v8 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v8);
  v9 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 15);
    *(v1 + 15) = 0;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v9);
  v10 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v10);
  v11 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (!v11)
  {
LABEL_9:
    v12 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v11);
  v12 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v12)
  {
LABEL_10:
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 12);
    v13 = *v2;
    *v2 = 0;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v12);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 12);
  v13 = *v2;
  *v2 = 0;
  if (!v13)
  {
LABEL_11:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_21:
  operator delete(v13);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Thermal_Sensor_Info_Cnf::deserialize(mipc::sys::Get_Thermal_Sensor_Info_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v33);
  *a2 = v33;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(__p) = 0;
  v4 = v36;
  v36 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v36 + 1);
  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, &v33);
  *a2 = v33;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(__p) = 0;
  v8 = v36;
  v36 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v36 + 1);
  if (!*(&v36 + 1) || atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v35) & 0x80000000) == 0)
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
  if (SHIBYTE(v35) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<mipc::mipc_string_t<20ul,false>,true>(this, this + 12, 0x101u, &v33);
  *a2 = v33;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(__p) = 0;
  v12 = v36;
  v36 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v36 + 1);
  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned char,true>(this, this + 13, 0x102u, &v33);
    *a2 = v33;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v35;
    HIBYTE(v35) = 0;
    LOBYTE(__p) = 0;
    v16 = v36;
    v36 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v36 + 1);
    if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<unsigned char,true>(this, this + 14, 0x103u, &v33);
      *a2 = v33;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v35;
      HIBYTE(v35) = 0;
      LOBYTE(__p) = 0;
      v20 = v36;
      v36 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v36 + 1);
      if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<int,true>(this, this + 15, 0x104u, &v33);
        *a2 = v33;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v35;
        HIBYTE(v35) = 0;
        LOBYTE(__p) = 0;
        v24 = v36;
        v36 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v36 + 1);
        if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v35) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<int,true>(this, this + 16, 0x105u, &v33);
          v28 = *mipc::Error::operator=(a2, &v33);
          mipc::Error::~Error(&v33);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned int,true>(this, this + 17, 0x106u, &v33);
            v29 = *mipc::Error::operator=(a2, &v33);
            mipc::Error::~Error(&v33);
            if (!v29)
            {
              mipc::Message::deserializeTlv<unsigned int,true>(this, this + 18, 0x107u, &v33);
              v30 = *mipc::Error::operator=(a2, &v33);
              mipc::Error::~Error(&v33);
              if (!v30)
              {
                mipc::Message::deserializeTlv<int,true>(this, this + 19, 0x108u, &v33);
                v31 = *mipc::Error::operator=(a2, &v33);
                mipc::Error::~Error(&v33);
                if (!v31)
                {
                  mipc::Message::deserializeTlv<int,true>(this, this + 20, 0x109u, &v33);
                  v32 = *mipc::Error::operator=(a2, &v33);
                  mipc::Error::~Error(&v33);
                  if (!v32)
                  {
                    mipc::Message::deserializeTlv<unsigned int,true>(this, this + 21, 0x10Au, &v33);
                    mipc::Error::operator=(a2, &v33);
                    mipc::Error::~Error(&v33);
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

uint64_t mipc::sys::Get_Thermal_Sensor_Info_Cnf::Get_Thermal_Sensor_Info_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 18, &v14, a3, 2);
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
  *a1 = &unk_2A1E842A0;
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
  *a1 = &unk_2A1E7FA28;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return a1;
}

void sub_297C88348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Thermal_Sensor_Info_Cnf::~Get_Thermal_Sensor_Info_Cnf(mipc::sys::Get_Thermal_Sensor_Info_Cnf *this)
{
  *this = &unk_2A1E7FA28;
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

  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 15);
  *(this + 15) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 13);
  *(this + 13) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 12);
  *(this + 12) = 0;
  if (v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

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
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (*(this + 63) < 0)
  {
LABEL_28:
    operator delete(*(this + 5));
  }

LABEL_29:
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
  mipc::sys::Get_Thermal_Sensor_Info_Cnf::~Get_Thermal_Sensor_Info_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::sys::Get_Thermal_Sensor_Info_Cnf::getSize(mipc::sys::Get_Thermal_Sensor_Info_Cnf *this)
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

  v6 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vbicq_s8(v6, vceqzq_s64(*(this + 104))), vbicq_s8(v6, vceqzq_s64(*(this + 136)))), vaddq_s64(vbicq_s8(v6, vceqzq_s64(*(this + 120))), vbicq_s8(v6, vceqzq_s64(*(this + 152)))))) + 8 * (*(this + 11) != 0) + v5 + 8 * (*(this + 21) != 0) + v1;
}

double mipc::sys::Set_Thermal_Sensor_Req::Set_Thermal_Sensor_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 19;
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
  *a1 = &unk_2A1E7FA70;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 19;
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
  *a1 = &unk_2A1E7FA70;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sys::Set_Thermal_Sensor_Req::~Set_Thermal_Sensor_Req(mipc::sys::Set_Thermal_Sensor_Req *this)
{
  *this = &unk_2A1E7FA70;
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
  *this = &unk_2A1E7FA70;
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
  *this = &unk_2A1E7FA70;
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

void mipc::sys::Set_Thermal_Sensor_Req::serialize(mipc::sys::Set_Thermal_Sensor_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 11);
  v5 = *(this + 12);
  if (v4 == v5)
  {
    v7 = 16;
LABEL_6:
    v8 = operator new(v7);
    v54[0] = v8;
    v55 = &v8[v7];
    bzero(v8, v7);
    v54[1] = &v8[v7];
    goto LABEL_8;
  }

  v6 = (16 * ((((v5 - v4 - 28) >> 2) * 0x4924924924924925uLL) >> 64)) & 0xFFFFFFFFFFFFFFE0;
  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  v7 = v6 + 64;
  if (v6 != -64)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  v53 = v8;
  v52 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v47, this, &v53);
  v10 = *(&v50 + 1);
  v9 = v50;
  *&__p[1] = *v48;
  __p[3] = v49;
  __p[0] = v47;
  v52 = v50;
  if (v47)
  {
    *a2 = v47;
    *(a2 + 8) = *&__p[1];
    v11 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
LABEL_55:
    *(a2 + 48) = 1;
    goto LABEL_56;
  }

  v12 = *(this + 88);
  v13 = *(this + 12);
  v14 = *(this + 11);
  if (v14 == v13)
  {
    goto LABEL_26;
  }

  v15 = 0x100000002;
  v16 = v13 - v14;
  v17 = 0x6DB6DB6DB6DB6DB7 * (v16 >> 2);
  if (v17 <= 4)
  {
    v18 = *(this + 7) - v17;
    v19 = (*(this + 7) - v17);
    *(this + 7) -= v17;
    if (v19 < 0x100)
    {
      goto LABEL_14;
    }

    v31 = v18 + 1;
    *v53 = 258;
    v53 += 2;
    *v53 = 0;
    v53 += 2;
    *v53 = 0;
    v53 += 4;
    *v53 = 0;
    v53 += 4;
    *v53 = v18 + 1;
    v53 += 2;
    *v53 = v17;
    v32 = v53 + 2;
    v53 += 2;
    for (i = *(this + 11); i != *(this + 12); i = (i + 28))
    {
      *v32 = v31;
      v53 += 2;
      *v53 = 28;
      v34 = v53;
      ++v31;
      v35 = *i;
      *(v53 + 14) = *(i + 12);
      *(v34 + 2) = v35;
      v32 = v34 + 30;
      v53 = v32;
    }

LABEL_26:
    v15 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_27;
  }

  v15 = 0x100000010;
LABEL_14:
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v58 = (((16 * ((((v16 - 28) >> 2) * 0x4924924924924925uLL) >> 64)) & 0xFFFFFFFFFFFFFFE0) + 48);
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v58, &v56);
  v20 = v56;
  v21 = *v56;
  v22 = *(this + 11);
  if (v22 != *(this + 12))
  {
    v45 = v15;
    v46 = v10;
    do
    {
      v58 = 0xAAAAAAAAAAAAAAAALL;
      v59 = 0xAAAAAAAAAAAAAAAALL;
      v60 = 28;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v60, &v58);
      v23 = v58;
      v24 = *v58;
      v25 = *v22;
      *(v24 + 12) = *(v22 + 12);
      *v24 = v25;
      memcpy(v21, *v23, *(v23 + 8) - *v23);
      v28 = v23;
      v26 = *v23;
      v27 = *(v28 + 8);
      v29 = v59;
      if (v59 && !atomic_fetch_add((v59 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      v21 += v27 - v26;
      v22 = (v22 + 28);
    }

    while (v22 != *(this + 12));
    v20 = v56;
    v10 = v46;
    v15 = v45;
  }

  if (v21 != v20[1])
  {
    v30 = v20[1];
    v20[1] = v21;
  }

LABEL_27:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v15, 0x102u, &v56, "", 0, &v47);
  v36 = v57;
  if (v57 && !atomic_fetch_add((v57 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
    __p[0] = v47;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_30:
    operator delete(__p[1]);
  }

LABEL_31:
  *&__p[1] = *v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48[0]) = 0;
  v37 = v50;
  v50 = 0uLL;
  v52 = v37;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v38 = *(&v50 + 1);
    v39 = __p[0];
    if (!*(&v50 + 1))
    {
LABEL_35:
      if ((SHIBYTE(v49) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_43:
      operator delete(v48[0]);
      if (!v39)
      {
        goto LABEL_44;
      }

LABEL_54:
      *a2 = __p[0];
      *(a2 + 8) = *&__p[1];
      *(a2 + 24) = __p[3];
      memset(&__p[1], 0, 24);
      *(a2 + 32) = v52;
      goto LABEL_55;
    }
  }

  else
  {
    v38 = *(&v50 + 1);
    v39 = __p[0];
    if (!*(&v50 + 1))
    {
      goto LABEL_35;
    }
  }

  if (atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_35;
  }

  (v38->__on_zero_shared)(v38);
  std::__shared_weak_count::__release_weak(v38);
  if (SHIBYTE(v49) < 0)
  {
    goto LABEL_43;
  }

LABEL_36:
  if (v39)
  {
    goto LABEL_54;
  }

LABEL_44:
  (*(*this + 32))(&v47, this, v54);
  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48[0]) = 0;
  v40 = v50;
  v50 = 0uLL;
  v41 = *(&v52 + 1);
  v52 = v40;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *(&v50 + 1);
  v43 = __p[0];
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
    if (v43)
    {
      goto LABEL_54;
    }
  }

  else if (v43)
  {
    goto LABEL_54;
  }

  *a2 = *v54;
  *(a2 + 16) = v55;
  v54[1] = 0;
  v55 = 0;
  v54[0] = 0;
  *(a2 + 48) = 0;
  v44 = *(&v52 + 1);
  if (*(&v52 + 1) && !atomic_fetch_add((*(&v52 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

LABEL_56:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }
}

void sub_297C891AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mipc::Error::~Error(&a19);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::sys::Set_Thermal_Sensor_Req::getSize(mipc::sys::Set_Thermal_Sensor_Req *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    return 16;
  }

  else
  {
    return ((16 * ((((v2 - v1 - 28) >> 2) * 0x4924924924924925uLL) >> 64)) & 0xFFFFFFFFFFFFFFE0) + 64;
  }
}

mipc::sys::Set_Thermal_Sensor_Cnf *mipc::sys::Set_Thermal_Sensor_Cnf::Set_Thermal_Sensor_Cnf(mipc::sys::Set_Thermal_Sensor_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 20, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E7FAB8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::sys::Set_Thermal_Sensor_Cnf::deserialize(this, &v7);
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

void sub_297C8935C(_Unwind_Exception *a1)
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

void mipc::sys::Set_Thermal_Sensor_Cnf::deserialize(std::__shared_weak_count **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  ((*this)[1].__shared_weak_owners_)(v49);
  v4 = *v49;
  *a2 = *v49;
  v6 = *(&v50 + 1);
  v5 = v50;
  *(a2 + 8) = *&v49[8];
  *(a2 + 24) = *&v49[24];
  *(a2 + 32) = __PAIR128__(v6, v5);
  if (v4)
  {
    return;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v7;
  v51 = v7;
  *v49 = v7;
  *&v49[16] = v7;
  mipc::Message::findTLV(this, 0x102u, v49);
  *&v48[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v48 = v8;
  *__p = v8;
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

  if (v46)
  {
    if (v46 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v46, &v40);
      goto LABEL_52;
    }

    v9 = 0;
    this[12] = this[11];
  }

  else
  {
    v10 = v51;
    v11 = *(&v51 + 1);
    this[12] = this[11];
    if (v10 < 8)
    {
      v9 = 0;
    }

    else
    {
      v39 = v6;
      v12 = &v11[v10];
      while (1)
      {
        v14 = this[11];
        v13 = this[12];
        v15 = v13 - v14;
        if (v13 - v14 == 112)
        {
          v9 = 0x100000010;
          goto LABEL_46;
        }

        v16 = v12 - v11;
        if ((v12 - v11) < 4)
        {
          v6 = v39;
          v9 = 0x100000005;
          goto LABEL_47;
        }

        v17 = v11 + 2;
        if (v16 <= 2)
        {
          v17 = v12;
        }

        v18 = v12 - v17 <= 2;
        v21 = *v17;
        v19 = (v17 + 2);
        v20 = v21;
        v22 = v18 ? v12 : v19;
        v23 = this[13];
        if (v13 >= v23)
        {
          v25 = 0x6DB6DB6DB6DB6DB7 * (v15 >> 2) + 1;
          if (v25 > 0x924924924924924)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v26 = 0x6DB6DB6DB6DB6DB7 * ((v23 - v14) >> 2);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          v27 = v26 >= 0x492492492492492 ? 0x924924924924924 : v25;
          if (v27)
          {
            if (v27 > 0x924924924924924)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v28 = operator new(28 * v27);
          }

          else
          {
            v28 = 0;
          }

          v29 = &v28[4 * (v15 >> 2)];
          *v29 = 0;
          *(v29 + 1) = 0;
          v30 = &v28[28 * v27];
          *(v29 + 6) = 0;
          *(v29 + 2) = 0;
          v24 = v29 + 28;
          v31 = &v29[-v15];
          memcpy(&v29[-v15], v14, v15);
          this[11] = v31;
          this[12] = v24;
          this[13] = v30;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v13 = 0;
          *(v13 + 8) = 0;
          *(v13 + 24) = 0;
          v24 = (v13 + 28);
          *(v13 + 16) = 0;
        }

        this[12] = v24;
        if (v20 > 0x1C)
        {
          break;
        }

        if (v20 != 28)
        {
          v9 = 0x100000011;
          goto LABEL_46;
        }

        v32 = *v22;
        *(v24 - 1) = *(v22 + 6);
        *(v24 - 28) = v32;
        if (v12 - v22 <= 28)
        {
          v11 = v12;
        }

        else
        {
          v11 = (v22 + 14);
        }

        if ((v12 - v11) <= 7)
        {
          v9 = 0;
          goto LABEL_46;
        }
      }

      v9 = 0x100000012;
LABEL_46:
      v6 = v39;
    }
  }

LABEL_47:
  v33 = this[3];
  v44 = this[2];
  v45 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v9, 0x102u, &v44, "", 0, &v40);
  v34 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_52:
  v35 = *&v48[16];
  if (*&v48[16] && !atomic_fetch_add((*&v48[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    if ((v48[7] & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if ((v48[7] & 0x80000000) != 0)
  {
LABEL_55:
    operator delete(__p[0]);
  }

LABEL_56:
  v36 = *(&v50 + 1);
  if (!*(&v50 + 1) || atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v49[31] & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_71:
    operator delete(*&v49[8]);
    *a2 = v40;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_72;
  }

  (v36->__on_zero_shared)(v36);
  std::__shared_weak_count::__release_weak(v36);
  if ((v49[31] & 0x80000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_59:
  *a2 = v40;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_72:
  operator delete(*(a2 + 8));
LABEL_60:
  *(a2 + 8) = v41;
  *(a2 + 24) = v42;
  HIBYTE(v42) = 0;
  LOBYTE(v41) = 0;
  v37 = v43;
  v43 = 0uLL;
  *(a2 + 32) = v37;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v38 = *(&v43 + 1);
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_66;
  }

  (v38->__on_zero_shared)(v38);
  std::__shared_weak_count::__release_weak(v38);
  if (SHIBYTE(v42) < 0)
  {
LABEL_66:
    operator delete(v41);
  }
}

void sub_297C8992C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void *mipc::sys::Set_Thermal_Sensor_Cnf::Set_Thermal_Sensor_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 20, &v14, a3, 2);
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
  *a1 = &unk_2A1E842E8;
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
  *a1 = &unk_2A1E7FAB8;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297C89BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Set_Thermal_Sensor_Cnf::~Set_Thermal_Sensor_Cnf(mipc::sys::Set_Thermal_Sensor_Cnf *this)
{
  *this = &unk_2A1E7FAB8;
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
  *this = &unk_2A1E7FAB8;
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
  *this = &unk_2A1E7FAB8;
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

uint64_t mipc::sys::Set_Thermal_Sensor_Cnf::getSize(mipc::sys::Set_Thermal_Sensor_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((16 * ((((v2 - v1 - 28) >> 2) * 0x4924924924924925uLL) >> 64)) & 0xFFFFFFFFFFFFFFE0) + 48;
  }

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v3 + v4;
}

double mipc::sys::Get_Thermal_Sensor_Req::Get_Thermal_Sensor_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 21;
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
  *a1 = &unk_2A1E7FB00;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 21;
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
  *a1 = &unk_2A1E7FB00;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sys::Get_Thermal_Sensor_Req::~Get_Thermal_Sensor_Req(mipc::sys::Get_Thermal_Sensor_Req *this)
{
  *this = &unk_2A1E7FB00;
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
  *this = &unk_2A1E7FB00;
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
  *this = &unk_2A1E7FB00;
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