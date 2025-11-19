void sub_297A954F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *mipc::sim::Set_Terminal_Capability_Req::getSize(mipc::sim::Set_Terminal_Capability_Req *this)
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

  return &v1[v4];
}

mipc::sim::Set_Terminal_Capability_Cnf *mipc::sim::Set_Terminal_Capability_Cnf::Set_Terminal_Capability_Cnf(mipc::sim::Set_Terminal_Capability_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1326, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E65280;
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

void sub_297A9570C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sim::Set_Terminal_Capability_Cnf::deserialize@<D0>(mipc::sim::Set_Terminal_Capability_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sim::Set_Terminal_Capability_Cnf::Set_Terminal_Capability_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1326, &v14, a3, 2);
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
  *a1 = &unk_2A1E682C8;
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
  *a1 = &unk_2A1E65280;
  return a1;
}

void sub_297A959DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Set_Terminal_Capability_Cnf::~Set_Terminal_Capability_Cnf(mipc::sim::Set_Terminal_Capability_Cnf *this)
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

uint64_t mipc::sim::Set_Terminal_Capability_Cnf::getSize(mipc::sim::Set_Terminal_Capability_Cnf *this)
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

double mipc::sim::Set_Pin_Ex_Req::Set_Pin_Ex_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1327;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E652C8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 1327;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E652C8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sim::Set_Pin_Ex_Req::~Set_Pin_Ex_Req(mipc::sim::Set_Pin_Ex_Req *this)
{
  *this = &unk_2A1E652C8;
  v2 = *(this + 15);
  *(this + 15) = 0;
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

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

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
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (*(this + 63) < 0)
  {
LABEL_20:
    operator delete(*(this + 5));
  }

LABEL_21:
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
  mipc::sim::Set_Pin_Ex_Req::~Set_Pin_Ex_Req(this);

  operator delete(v1);
}

void mipc::sim::Set_Pin_Ex_Req::serialize(mipc::sim::Set_Pin_Ex_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 104);
  v4 = *(this + 13);
  if (!v4)
  {
LABEL_6:
    v9 = (this + 112);
    v8 = *(this + 14);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v6 = *(v4 + 23);
  v7 = *(v4 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  if ((v7 - 65531) < 0xFFFFFFFFFFFF0000)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v4 = (v7 + 12) & 0xFFF8;
  v9 = (this + 112);
  v8 = *(this + 14);
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = *(v8 + 23);
  v11 = *(v8 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  v12 = __CFADD__(v11 - 65531, 0x10000);
  v8 = (v11 + 12) & 0xFFF8;
  if (!v12)
  {
    v8 = 0;
  }

LABEL_11:
  v13 = *(this + 15);
  if (v13)
  {
    v14 = v13[1] - *v13;
    v12 = __CFADD__(v14 - 65532, 0x10000);
    v13 = ((v14 + 11) & 0xFFF8);
    if (!v12)
    {
      v13 = 0;
    }
  }

  v15 = vceqzq_s64(*(this + 88));
  v16 = v13 + vbslq_s8(v15, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + v4 + v8 + vbicq_s8(xmmword_297DCA380, v15).i64[1];
  v58[0] = operator new(v16);
  v59 = v58[0] + v16;
  bzero(v58[0], v16);
  v58[1] = v58[0] + v16;
  v57 = v58[0];
  v56 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v51, this, &v57);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v17 = v54;
  v54 = 0uLL;
  v18 = *(&v56 + 1);
  v56 = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = *(&v54 + 1);
    v20 = __p[0];
    if (!*(&v54 + 1))
    {
LABEL_20:
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_28:
      operator delete(v52);
      if (v20)
      {
        goto LABEL_104;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v19 = *(&v54 + 1);
    v20 = __p[0];
    if (!*(&v54 + 1))
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
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v20)
  {
    goto LABEL_104;
  }

LABEL_29:
  if (*(this + 11))
  {
    *v57 = 256;
    v21 = v57++;
    v21[1] = 1;
    v22 = v57++;
    *(v22 + 2) = **(this + 11);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v23 = 0x10000000FLL;
    goto LABEL_33;
  }

  v23 = 0;
LABEL_33:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v23, 0x100u, &v60, "", 0, &v51);
  v24 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    __p[0] = v51;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_36:
    operator delete(__p[1]);
  }

LABEL_37:
  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v25 = v54;
  v54 = 0uLL;
  v26 = *(&v56 + 1);
  v56 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    v27 = *(&v54 + 1);
    v28 = __p[0];
    if (!*(&v54 + 1))
    {
LABEL_41:
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

LABEL_49:
      operator delete(v52);
      if (v28)
      {
        goto LABEL_104;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v27 = *(&v54 + 1);
    v28 = __p[0];
    if (!*(&v54 + 1))
    {
      goto LABEL_41;
    }
  }

  if (atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_41;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_49;
  }

LABEL_42:
  if (v28)
  {
    goto LABEL_104;
  }

LABEL_50:
  if (*(this + 12))
  {
    *v57 = 257;
    v29 = v57++;
    v29[1] = 1;
    v30 = v57++;
    *(v30 + 2) = **(this + 12);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v31 = 0x10000000FLL;
    goto LABEL_55;
  }

  v31 = 0;
LABEL_55:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v31, 0x101u, &v60, "", 0, &v51);
  v32 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v33 = v54;
  v54 = 0uLL;
  v34 = *(&v56 + 1);
  v56 = v33;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *(&v54 + 1);
  v36 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
    if (!v36)
    {
      goto LABEL_70;
    }

LABEL_104:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v56;
    v56 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_105;
  }

  if (v36)
  {
    goto LABEL_104;
  }

LABEL_70:
  mipc::Message::serializeTlv<mipc::mipc_string_t<16ul,false>,true>(&v51, this, v5, 0x102u, &v57);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v37 = v54;
  v54 = 0uLL;
  v38 = *(&v56 + 1);
  v56 = v37;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v39 = *(&v54 + 1);
  v40 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v40)
  {
    goto LABEL_104;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<16ul,false>,true>(&v51, this, v9, 0x103u, &v57);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v41 = v54;
  v54 = 0uLL;
  v42 = *(&v56 + 1);
  v56 = v41;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  v43 = *(&v54 + 1);
  v44 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v44)
  {
    goto LABEL_104;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<16ul,false>,true>(&v51, this, this + 15, 0x105u, &v57);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v45 = v54;
  v54 = 0uLL;
  v46 = *(&v56 + 1);
  v56 = v45;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = *(&v54 + 1);
  v48 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v48)
  {
    goto LABEL_104;
  }

  (*(*this + 32))(&v51, this, v58);
  v49 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v49)
  {
    goto LABEL_104;
  }

  *a2 = *v58;
  *(a2 + 16) = v59;
  v58[1] = 0;
  v59 = 0;
  v58[0] = 0;
  *(a2 + 48) = 0;
  v50 = *(&v56 + 1);
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
  }

LABEL_105:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }
}

void sub_297A96A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t mipc::sim::Set_Pin_Ex_Req::getSize(mipc::sim::Set_Pin_Ex_Req *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
LABEL_6:
    v4 = *(this + 14);
    if (!v4)
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

  if ((v3 - 65531) < 0xFFFFFFFFFFFF0000)
  {
    v1 = 0;
    goto LABEL_6;
  }

  v1 = (v3 + 12) & 0xFFF8;
  v4 = *(this + 14);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_7:
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v7 = __CFADD__(v6 - 65531, 0x10000);
  v4 = (v6 + 12) & 0xFFF8;
  if (!v7)
  {
    v4 = 0;
  }

LABEL_11:
  v8 = *(this + 15);
  if (v8)
  {
    v9 = v8[1] - *v8;
    v7 = __CFADD__(v9 - 65532, 0x10000);
    v8 = ((v9 + 11) & 0xFFF8);
    if (!v7)
    {
      v8 = 0;
    }
  }

  v10 = vceqzq_s64(*(this + 88));
  return v8 + vbslq_s8(v10, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + v1 + v4 + vbicq_s8(xmmword_297DCA380, v10).i64[1];
}

void mipc::Message::serializeTlv<mipc::mipc_byte_array_t<16ul,false>,true>(uint64_t a1, uint64_t a2, char ***a3, unsigned int a4, _WORD **a5)
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
      goto LABEL_10;
    }

    v14 = v13 - v12;
    if ((v13 - v12) > 0x10)
    {
      v21 = (*a3)[1];
      v22 = v12;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(&v22, &v21, &v19);
      v15 = 0x100000010;
      goto LABEL_10;
    }

    memcpy(v10, v12, v13 - v12);
    v17 = ((*(v11 + 4) - *v11 + 11) & 0xFFF8u) - (*(v11 + 2) - *v11) + 65532;
    *a5 = (*a5 + v14 + (((*(v11 + 4) - *v11 + 11) & 0xFFF8) - (*(v11 + 4) - *v11) - 4));
  }

  else if (!*(a2 + 32))
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

void sub_297A96CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::sim::Set_Pin_Ex_Cnf *mipc::sim::Set_Pin_Ex_Cnf::Set_Pin_Ex_Cnf(mipc::sim::Set_Pin_Ex_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1328, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65310;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::sim::Set_Pin_Ex_Cnf::deserialize(this, v7);
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

void sub_297A96E38(_Unwind_Exception *a1)
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

void mipc::sim::Set_Pin_Ex_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

void *mipc::sim::Set_Pin_Ex_Cnf::Set_Pin_Ex_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1328, &v14, a3, 2);
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
  *a1 = &unk_2A1E68310;
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
  *a1 = &unk_2A1E65310;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297A974A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Set_Pin_Ex_Cnf::~Set_Pin_Ex_Cnf(mipc::sim::Set_Pin_Ex_Cnf *this)
{
  *this = &unk_2A1E65310;
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
  *this = &unk_2A1E65310;
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
  *this = &unk_2A1E65310;
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

uint64_t mipc::sim::Set_Pin_Ex_Cnf::getSize(mipc::sim::Set_Pin_Ex_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0);
}

double mipc::sim::Get_Pin_Ex_Req::Get_Pin_Ex_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1329;
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
  *a1 = &unk_2A1E65358;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 1329;
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
  *a1 = &unk_2A1E65358;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sim::Get_Pin_Ex_Req::~Get_Pin_Ex_Req(mipc::sim::Get_Pin_Ex_Req *this)
{
  *this = &unk_2A1E65358;
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
  *this = &unk_2A1E65358;
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
  *this = &unk_2A1E65358;
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

void mipc::sim::Get_Pin_Ex_Req::serialize(mipc::sim::Get_Pin_Ex_Req *this@<X0>, uint64_t a2@<X8>)
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

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<16ul,false>,true>(&v18, this, v5, 0x102u, &v24);
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

void sub_297A98188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sim::Get_Pin_Ex_Req::getSize(mipc::sim::Get_Pin_Ex_Req *this)
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

mipc::sim::Get_Pin_Ex_Cnf *mipc::sim::Get_Pin_Ex_Cnf::Get_Pin_Ex_Cnf(mipc::sim::Get_Pin_Ex_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1330, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E653A0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::sim::Get_Pin_Ex_Cnf::deserialize(this, v7);
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

void sub_297A98324(_Unwind_Exception *a1)
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

void mipc::sim::Get_Pin_Ex_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

void *mipc::sim::Get_Pin_Ex_Cnf::Get_Pin_Ex_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1330, &v14, a3, 2);
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
  *a1 = &unk_2A1E68358;
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
  *a1 = &unk_2A1E653A0;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297A98990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Pin_Ex_Cnf::~Get_Pin_Ex_Cnf(mipc::sim::Get_Pin_Ex_Cnf *this)
{
  *this = &unk_2A1E653A0;
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
  *this = &unk_2A1E653A0;
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
  *this = &unk_2A1E653A0;
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

uint64_t mipc::sim::Get_Pin_Ex_Cnf::getSize(mipc::sim::Get_Pin_Ex_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0);
}

double mipc::sim::Get_Ext_Auth_Req::Get_Ext_Auth_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1333;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E653E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 1333;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E653E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sim::Get_Ext_Auth_Req::~Get_Ext_Auth_Req(mipc::sim::Get_Ext_Auth_Req *this)
{
  *this = &unk_2A1E653E8;
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
    v4 = *v3;
    if (*v3)
    {
      v3[1] = v4;
      operator delete(v4);
    }

    operator delete(v3);
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
  mipc::sim::Get_Ext_Auth_Req::~Get_Ext_Auth_Req(this);

  operator delete(v1);
}

void mipc::sim::Get_Ext_Auth_Req::serialize(mipc::sim::Get_Ext_Auth_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 104);
  v4 = *(this + 13);
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

  v8 = vceqzq_s64(*(this + 88));
  v9 = &v4[*(this + 14) != 0] + vbslq_s8(v8, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v8).i64[1];
  v47[0] = operator new(v9);
  v48 = v47[0] + v9;
  bzero(v47[0], v9);
  v47[1] = v47[0] + v9;
  v46 = v47[0];
  v45 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v40, this, &v46);
  v10 = v43;
  *&__p[1] = *v41;
  __p[3] = v42;
  __p[0] = v40;
  v45 = v43;
  if (v40)
  {
    *a2 = v40;
    *(a2 + 8) = *&__p[1];
    v11 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
LABEL_77:
    *(a2 + 48) = 1;
    goto LABEL_78;
  }

  if (*(this + 11))
  {
    *v46 = 256;
    v12 = v46++;
    v12[1] = 1;
    v13 = v46++;
    *(v13 + 2) = **(this + 11);
    v46 += 2;
  }

  v49 = 0;
  v50 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v49, "", 0, &v40);
  v14 = v50;
  if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    __p[0] = v40;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  __p[0] = v40;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_11:
    operator delete(__p[1]);
  }

LABEL_12:
  *&__p[1] = *v41;
  __p[3] = v42;
  HIBYTE(v42) = 0;
  LOBYTE(v41[0]) = 0;
  v15 = v43;
  v43 = 0uLL;
  v16 = *(&v45 + 1);
  v45 = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(&v43 + 1);
  v18 = __p[0];
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(v41[0]);
    if (v18)
    {
      goto LABEL_76;
    }

    goto LABEL_24;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (SHIBYTE(v42) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v18)
  {
    goto LABEL_76;
  }

LABEL_24:
  if (*(this + 12))
  {
    *v46 = 257;
    v19 = v46++;
    v19[1] = 1;
    v20 = v46++;
    *(v20 + 2) = **(this + 12);
    v46 += 2;
  }

  else if (!*(this + 4))
  {
    v21 = 0x10000000FLL;
    goto LABEL_28;
  }

  v21 = 0;
LABEL_28:
  v49 = 0;
  v50 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v21, 0x101u, &v49, "", 0, &v40);
  v22 = v50;
  if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  __p[0] = v40;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v41;
  __p[3] = v42;
  HIBYTE(v42) = 0;
  LOBYTE(v41[0]) = 0;
  v23 = v43;
  v43 = 0uLL;
  v24 = *(&v45 + 1);
  v45 = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v43 + 1);
  v26 = __p[0];
  if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
    if (!v26)
    {
      goto LABEL_43;
    }

LABEL_76:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v45;
    goto LABEL_77;
  }

  if (v26)
  {
    goto LABEL_76;
  }

LABEL_43:
  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<256ul,false>,true>(this, v5, 0x103u, &v46, &v40);
  __p[0] = v40;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v41;
  __p[3] = v42;
  HIBYTE(v42) = 0;
  LOBYTE(v41[0]) = 0;
  v27 = v43;
  v43 = 0uLL;
  v28 = *(&v45 + 1);
  v45 = v27;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(&v43 + 1);
  v30 = __p[0];
  if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (v30)
  {
    goto LABEL_76;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 260, &v46, &v40);
  __p[0] = v40;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v41;
  __p[3] = v42;
  HIBYTE(v42) = 0;
  LOBYTE(v41[0]) = 0;
  v31 = v43;
  v43 = 0uLL;
  v32 = *(&v45 + 1);
  v45 = v31;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&v43 + 1);
  v34 = __p[0];
  if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (v34)
  {
    goto LABEL_76;
  }

  (*(*this + 32))(&v40, this, v47);
  __p[0] = v40;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v41;
  __p[3] = v42;
  HIBYTE(v42) = 0;
  LOBYTE(v41[0]) = 0;
  v35 = v43;
  v43 = 0uLL;
  v36 = *(&v45 + 1);
  v45 = v35;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = *(&v43 + 1);
  v38 = __p[0];
  if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (v38)
  {
    goto LABEL_76;
  }

  *a2 = *v47;
  *(a2 + 16) = v48;
  v47[1] = 0;
  v48 = 0;
  v47[0] = 0;
  *(a2 + 48) = 0;
  v39 = *(&v45 + 1);
  if (*(&v45 + 1) && !atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_78:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }
}

void sub_297A998F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t mipc::sim::Get_Ext_Auth_Req::getSize(mipc::sim::Get_Ext_Auth_Req *this)
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

  v4 = vceqzq_s64(*(this + 88));
  return &v1[*(this + 14) != 0] + vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1];
}

mipc::sim::Get_Ext_Auth_Cnf *mipc::sim::Get_Ext_Auth_Cnf::Get_Ext_Auth_Cnf(mipc::sim::Get_Ext_Auth_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1334, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65430;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 80) = 1;
  mipc::sim::Get_Ext_Auth_Cnf::deserialize(this, v7);
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

void sub_297A99ACC(_Unwind_Exception *a1)
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

void mipc::sim::Get_Ext_Auth_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,false>,false>(this, this + 12, 0x102u, &v12);
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

uint64_t mipc::sim::Get_Ext_Auth_Cnf::Get_Ext_Auth_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1334, &v14, a3, 2);
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
  *a1 = &unk_2A1E683A0;
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
  *a1 = &unk_2A1E65430;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297A99FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Ext_Auth_Cnf::~Get_Ext_Auth_Cnf(mipc::sim::Get_Ext_Auth_Cnf *this)
{
  *this = &unk_2A1E65430;
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
  *this = &unk_2A1E65430;
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
  *this = &unk_2A1E65430;
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

void *mipc::sim::Get_Ext_Auth_Cnf::getSize(mipc::sim::Get_Ext_Auth_Cnf *this)
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

double mipc::sim::Get_Facility_Req::Get_Facility_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1335;
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
  *a1 = &unk_2A1E65478;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = 1335;
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
  *a1 = &unk_2A1E65478;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::sim::Get_Facility_Req::~Get_Facility_Req(mipc::sim::Get_Facility_Req *this)
{
  *this = &unk_2A1E65478;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

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
  *this = &unk_2A1E65478;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

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
  *this = &unk_2A1E65478;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

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

void mipc::sim::Get_Facility_Req::serialize(mipc::sim::Get_Facility_Req *this@<X0>, uint64_t a2@<X8>)
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

  v10 = v4 + v9;
  v36[0] = operator new(v4 + v9);
  v37 = v36[0] + v10;
  bzero(v36[0], v10);
  v36[1] = v36[0] + v10;
  v35 = v36[0];
  v34 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v29, this, &v35);
  v11 = v32;
  *&__p[1] = *v30;
  __p[3] = v31;
  __p[0] = v29;
  v34 = v32;
  if (v29)
  {
    *a2 = v29;
    *(a2 + 8) = *&__p[1];
    v12 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v12;
    *(a2 + 32) = v11;
LABEL_55:
    *(a2 + 48) = 1;
    goto LABEL_56;
  }

  if (*(this + 11))
  {
    *v35 = 256;
    v13 = v35++;
    v13[1] = 1;
    v14 = v35++;
    *(v14 + 2) = **(this + 11);
    v35 += 2;
  }

  else if (!*(this + 4))
  {
    v15 = 0x10000000FLL;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_14:
  v38 = 0;
  v39 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v15, 0x100u, &v38, "", 0, &v29);
  v16 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    __p[0] = v29;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  __p[0] = v29;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_17:
    operator delete(__p[1]);
  }

LABEL_18:
  *&__p[1] = *v30;
  __p[3] = v31;
  HIBYTE(v31) = 0;
  LOBYTE(v30[0]) = 0;
  v17 = v32;
  v32 = 0uLL;
  v34 = v17;
  if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v11 + 1) + 16))(*(&v11 + 1));
    std::__shared_weak_count::__release_weak(*(&v11 + 1));
  }

  v18 = *(&v32 + 1);
  v19 = __p[0];
  if (!*(&v32 + 1) || atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_29:
    operator delete(v30[0]);
    if (v19)
    {
      goto LABEL_54;
    }

    goto LABEL_30;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (v19)
  {
    goto LABEL_54;
  }

LABEL_30:
  mipc::Message::serializeTlv<mipc::mipc_string_t<3ul,false>,true>(&v29, this, v5, &v35);
  __p[0] = v29;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v30;
  __p[3] = v31;
  HIBYTE(v31) = 0;
  LOBYTE(v30[0]) = 0;
  v20 = v32;
  v32 = 0uLL;
  v21 = *(&v34 + 1);
  v34 = v20;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *(&v32 + 1);
  v23 = __p[0];
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
    if (!v23)
    {
      goto LABEL_43;
    }

LABEL_54:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v34;
    goto LABEL_55;
  }

  if (v23)
  {
    goto LABEL_54;
  }

LABEL_43:
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
  }

  if (v27)
  {
    goto LABEL_54;
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

LABEL_56:
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

void sub_297A9AF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::sim::Get_Facility_Req::getSize(mipc::sim::Get_Facility_Req *this)
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

  return v1 + v5;
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<3ul,false>,true>(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
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

  **a4 = 257;
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
    if (v12 <= 2)
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

  if (v12 > 2)
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
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v15, 0x101u, &v19, "", 0, a1);
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

void sub_297A9B178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::sim::Get_Facility_Cnf *mipc::sim::Get_Facility_Cnf::Get_Facility_Cnf(mipc::sim::Get_Facility_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1336, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E654C0;
  *(this + 11) = 0;
  mipc::sim::Get_Facility_Cnf::deserialize(this, &v7);
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

void sub_297A9B2B0(_Unwind_Exception *a1)
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

void mipc::sim::Get_Facility_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sim::Get_Facility_Cnf::Get_Facility_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1336, &v14, a3, 2);
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
  *a1 = &unk_2A1E683E8;
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
  *a1 = &unk_2A1E654C0;
  a1[11] = 0;
  return a1;
}

void sub_297A9B6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Facility_Cnf::~Get_Facility_Cnf(mipc::sim::Get_Facility_Cnf *this)
{
  *this = &unk_2A1E654C0;
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
  *this = &unk_2A1E654C0;
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
  *this = &unk_2A1E654C0;
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

uint64_t mipc::sim::Get_Facility_Cnf::getSize(mipc::sim::Get_Facility_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sim::Set_Facility_Req::Set_Facility_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1337;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E65508;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 1337;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E65508;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sim::Set_Facility_Req::~Set_Facility_Req(mipc::sim::Set_Facility_Req *this)
{
  *this = &unk_2A1E65508;
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
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (*(this + 63) < 0)
  {
LABEL_16:
    operator delete(*(this + 5));
  }

LABEL_17:
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
  mipc::sim::Set_Facility_Req::~Set_Facility_Req(this);

  operator delete(v1);
}

void mipc::sim::Set_Facility_Req::serialize(mipc::sim::Set_Facility_Req *this@<X0>, uint64_t a2@<X8>)
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

  v9 = *(this + 13);
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

  v12 = 24;
  if (!*(this + 11))
  {
    v12 = 16;
  }

  v13 = v4 + v9 + v12 + 8 * (*(this + 14) != 0);
  v58[0] = operator new(v13);
  v59 = v58[0] + v13;
  bzero(v58[0], v13);
  v58[1] = v58[0] + v13;
  v57 = v58[0];
  v56 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v51, this, &v57);
  v14 = v54;
  *&__p[1] = *v52;
  __p[3] = v53;
  __p[0] = v51;
  v56 = v54;
  if (v51)
  {
    *a2 = v51;
    *(a2 + 8) = *&__p[1];
    v15 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v15;
    *(a2 + 32) = v14;
LABEL_100:
    *(a2 + 48) = 1;
    goto LABEL_101;
  }

  if (*(this + 11))
  {
    *v57 = 256;
    v16 = v57++;
    v16[1] = 1;
    v17 = v57++;
    *(v17 + 2) = **(this + 11);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v18 = 0x10000000FLL;
    goto LABEL_19;
  }

  v18 = 0;
LABEL_19:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v18, 0x100u, &v60, "", 0, &v51);
  v19 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    __p[0] = v51;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_22:
    operator delete(__p[1]);
  }

LABEL_23:
  *&__p[1] = *v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52[0]) = 0;
  v20 = v54;
  v54 = 0uLL;
  v21 = *(&v56 + 1);
  v56 = v20;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    v22 = *(&v54 + 1);
    v23 = __p[0];
    if (!*(&v54 + 1))
    {
LABEL_27:
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_35:
      operator delete(v52[0]);
      if (v23)
      {
        goto LABEL_99;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v22 = *(&v54 + 1);
    v23 = __p[0];
    if (!*(&v54 + 1))
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
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v23)
  {
    goto LABEL_99;
  }

LABEL_36:
  mipc::Message::serializeTlv<mipc::mipc_string_t<3ul,false>,true>(&v51, this, v5, &v57);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52[0]) = 0;
  v24 = v54;
  v54 = 0uLL;
  v25 = *(&v56 + 1);
  v56 = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&v54 + 1);
  v27 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
    if (!v27)
    {
      goto LABEL_49;
    }

LABEL_99:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v56;
    goto LABEL_100;
  }

  if (v27)
  {
    goto LABEL_99;
  }

LABEL_49:
  v28 = *(this + 13);
  if (!v28)
  {
LABEL_62:
    v35 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_63;
  }

  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  *v57++ = 258;
  *v57 = v30 + 1;
  v31 = ++v57;
  v32 = *(this + 13);
  v33 = v32[23];
  if ((v33 & 0x8000000000000000) != 0)
  {
    v33 = *(v32 + 1);
    if (v33 <= 0xF)
    {
      v34 = *v32;
      goto LABEL_59;
    }

    v32 = *v32;
  }

  else if (v33 <= 0xF)
  {
    v34 = *(this + 13);
LABEL_59:
    memcpy(v31, v34, v33);
    v57 = (v57 + v33);
    *v57 = 0;
    LOWORD(v36) = v32[23];
    if ((v36 & 0x80u) != 0)
    {
      v36 = *(v32 + 1);
    }

    v57 = (v57 + (((v36 + 12) & 0xFFF8) - v36 - 5) + 1);
    goto LABEL_62;
  }

  v62 = &v32[v33];
  v63 = v32;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v63, &v62, &v60);
  v35 = 0x100000010;
LABEL_63:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v35, 0x102u, &v60, "", 0, &v51);
  v37 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52[0]) = 0;
  v38 = v54;
  v54 = 0uLL;
  v39 = *(&v56 + 1);
  v56 = v38;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = *(&v54 + 1);
  v41 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (v41)
  {
    goto LABEL_99;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 14, 259, &v57, &v51);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52[0]) = 0;
  v42 = v54;
  v54 = 0uLL;
  v43 = *(&v56 + 1);
  v56 = v42;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  v44 = *(&v54 + 1);
  v45 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (v45)
  {
    goto LABEL_99;
  }

  (*(*this + 32))(&v51, this, v58);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52[0]) = 0;
  v46 = v54;
  v54 = 0uLL;
  v47 = *(&v56 + 1);
  v56 = v46;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  v48 = *(&v54 + 1);
  v49 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v48->__on_zero_shared)(v48);
    std::__shared_weak_count::__release_weak(v48);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (v49)
  {
    goto LABEL_99;
  }

  *a2 = *v58;
  *(a2 + 16) = v59;
  v58[1] = 0;
  v59 = 0;
  v58[0] = 0;
  *(a2 + 48) = 0;
  v50 = *(&v56 + 1);
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
  }

LABEL_101:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }
}

void sub_297A9C688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::sim::Set_Facility_Req::getSize(mipc::sim::Set_Facility_Req *this)
{
  v1 = *(this + 12);
  if (!v1)
  {
LABEL_6:
    v4 = *(this + 11);
    v5 = *(this + 13);
    if (!v5)
    {
      goto LABEL_14;
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
  v4 = *(this + 11);
  v5 = *(this + 13);
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  if ((v7 - 65531) >= 0xFFFFFFFFFFFF0000)
  {
    v5 = (v7 + 12) & 0xFFF8;
  }

  else
  {
    v5 = 0;
  }

LABEL_14:
  v8 = v4 == 0;
  v9 = 24;
  if (v8)
  {
    v9 = 16;
  }

  return v1 + v5 + v9 + 8 * (*(this + 14) != 0);
}

mipc::sim::Set_Facility_Cnf *mipc::sim::Set_Facility_Cnf::Set_Facility_Cnf(mipc::sim::Set_Facility_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1338, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65550;
  *(this + 11) = 0;
  mipc::sim::Set_Facility_Cnf::deserialize(this, &v7);
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

void sub_297A9C8A8(_Unwind_Exception *a1)
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

void mipc::sim::Set_Facility_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sim::Set_Facility_Cnf::Set_Facility_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1338, &v14, a3, 2);
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
  *a1 = &unk_2A1E68430;
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
  *a1 = &unk_2A1E65550;
  a1[11] = 0;
  return a1;
}

void sub_297A9CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Set_Facility_Cnf::~Set_Facility_Cnf(mipc::sim::Set_Facility_Cnf *this)
{
  *this = &unk_2A1E65550;
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
  *this = &unk_2A1E65550;
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
  *this = &unk_2A1E65550;
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

uint64_t mipc::sim::Set_Facility_Cnf::getSize(mipc::sim::Set_Facility_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::sim::Get_Euicc_Slots_Status_Req::Get_Euicc_Slots_Status_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1339;
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
  *a1 = &unk_2A1E65598;
  return result;
}

{
  *(a1 + 8) = 1339;
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
  *a1 = &unk_2A1E65598;
  return result;
}

void mipc::sim::Get_Euicc_Slots_Status_Req::~Get_Euicc_Slots_Status_Req(mipc::sim::Get_Euicc_Slots_Status_Req *this)
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

void mipc::sim::Get_Euicc_Slots_Status_Req::serialize(mipc::sim::Get_Euicc_Slots_Status_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297A9D6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sim::Get_Euicc_Slots_Status_Cnf *mipc::sim::Get_Euicc_Slots_Status_Cnf::Get_Euicc_Slots_Status_Cnf(mipc::sim::Get_Euicc_Slots_Status_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1340, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E655E0;
  *(this + 88) = 0u;
  *(this + 184) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 80) = 1;
  mipc::sim::Get_Euicc_Slots_Status_Cnf::deserialize(this, &v7);
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

void sub_297A9D88C(_Unwind_Exception *a1)
{
  v5 = *(v1 + 256);
  if (v5)
  {
    *(v1 + 264) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 232);
  if (v6)
  {
    *(v1 + 240) = v6;
    operator delete(v6);
  }

  mipc::tlv_array<mipc::mipc_string_t<256ul,false>,20ul,false>::~tlv_array((v1 + 208));
  mipc::tlv_array<mipc::mipc_string_t<256ul,false>,20ul,false>::~tlv_array(v2);
  mipc::tlv_array<mipc::mipc_string_t<256ul,false>,20ul,false>::~tlv_array((v1 + 160));
  v7 = *(v1 + 136);
  if (v7)
  {
    *(v1 + 144) = v7;
    operator delete(v7);
    v8 = *(v1 + 112);
    if (!v8)
    {
LABEL_7:
      v9 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = *(v1 + 112);
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  *(v1 + 120) = v8;
  operator delete(v8);
  v9 = *v3;
  if (!*v3)
  {
LABEL_8:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v1 + 96) = v9;
  operator delete(v9);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Euicc_Slots_Status_Cnf::deserialize(mipc::sim::Get_Euicc_Slots_Status_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v30);
  *a2 = v30;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v32;
  HIBYTE(v32) = 0;
  LOBYTE(__p) = 0;
  v4 = v33;
  v33 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v33 + 1);
  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned char,2ul,false>(&v30, this, this + 11, 0x102u);
  *a2 = v30;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v32;
  HIBYTE(v32) = 0;
  LOBYTE(__p) = 0;
  v8 = v33;
  v33 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v33 + 1);
  if (!*(&v33 + 1) || atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v32) & 0x80000000) == 0)
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
  if (SHIBYTE(v32) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<unsigned char,2ul,false>(&v30, this, this + 14, 0x103u);
  *a2 = v30;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v32;
  HIBYTE(v32) = 0;
  LOBYTE(__p) = 0;
  v12 = v33;
  v33 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v33 + 1);
  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned char,2ul,false>(&v30, this, this + 17, 0x104u);
    *a2 = v30;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v32;
    HIBYTE(v32) = 0;
    LOBYTE(__p) = 0;
    v16 = v33;
    v33 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v33 + 1);
    if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<mipc::mipc_string_t<81ul,false>,2ul,false>(&v30, this, this + 20);
      *a2 = v30;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v32;
      HIBYTE(v32) = 0;
      LOBYTE(__p) = 0;
      v20 = v33;
      v33 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v33 + 1);
      if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<mipc::mipc_string_t<33ul,false>,2ul,false>(&v30, this, this + 23);
        *a2 = v30;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v32;
        HIBYTE(v32) = 0;
        LOBYTE(__p) = 0;
        v24 = v33;
        v33 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v33 + 1);
        if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<mipc::mipc_string_t<21ul,true>,2ul,false>(&v30, this, this + 26);
          v28 = *mipc::Error::operator=(a2, &v30);
          mipc::Error::~Error(&v30);
          if (!v28)
          {
            mipc::Message::deserializeTlv<mipc::mipc_sim_slots_info_struct4,2ul,false>(&v30, this, this + 29);
            v29 = *mipc::Error::operator=(a2, &v30);
            mipc::Error::~Error(&v30);
            if (!v29)
            {
              mipc::Message::deserializeTlv<mipc::mipc_eid_byte_struct_struct4,2ul,false>(&v30, this, this + 32);
              mipc::Error::operator=(a2, &v30);
              mipc::Error::~Error(&v30);
            }
          }
        }
      }
    }
  }
}

uint64_t mipc::sim::Get_Euicc_Slots_Status_Cnf::Get_Euicc_Slots_Status_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1340, &v14, a3, 2);
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
  *a1 = &unk_2A1E68478;
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
  *a1 = &unk_2A1E655E0;
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
  *(a1 + 80) = 1;
  return a1;
}

void sub_297A9E30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Euicc_Slots_Status_Cnf::~Get_Euicc_Slots_Status_Cnf(mipc::sim::Get_Euicc_Slots_Status_Cnf *this)
{
  *this = &unk_2A1E655E0;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    v5 = *(this + 27);
    v6 = *(this + 26);
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
      v6 = *(this + 26);
    }

    *(this + 27) = v4;
    operator delete(v6);
  }

  v8 = *(this + 23);
  if (v8)
  {
    v9 = *(this + 24);
    v10 = *(this + 23);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *(this + 23);
    }

    *(this + 24) = v8;
    operator delete(v10);
  }

  v12 = *(this + 20);
  if (v12)
  {
    v13 = *(this + 21);
    v14 = *(this + 20);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(this + 20);
    }

    *(this + 21) = v12;
    operator delete(v14);
  }

  v16 = *(this + 17);
  if (v16)
  {
    *(this + 18) = v16;
    operator delete(v16);
  }

  v17 = *(this + 14);
  if (v17)
  {
    *(this + 15) = v17;
    operator delete(v17);
  }

  v18 = *(this + 11);
  if (v18)
  {
    *(this + 12) = v18;
    operator delete(v18);
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
  mipc::sim::Get_Euicc_Slots_Status_Cnf::~Get_Euicc_Slots_Status_Cnf(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<unsigned char,2ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
{
  v4 = a4;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v8;
  v43 = v8;
  *v41 = v8;
  *&v41[16] = v8;
  mipc::Message::findTLV(this, a4, v41);
  *&v40[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v40 = v9;
  *__p = v9;
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
      goto LABEL_49;
    }

    v10 = 0;
    a3[1] = *a3;
  }

  else
  {
    v11 = v43;
    v12 = *(&v43 + 1);
    a3[1] = *a3;
    if (v11 < 8)
    {
      v10 = 0;
    }

    else
    {
      v34 = v4;
      v35 = a1;
      v13 = (v12 + v11);
      while (1)
      {
        v15 = *a3;
        v14 = a3[1];
        v16 = &v14[-*a3];
        if (v16 == 2)
        {
          v10 = 0x100000010;
          goto LABEL_43;
        }

        v17 = v13 - v12;
        if ((v13 - v12) < 4)
        {
          a1 = v35;
          v4 = v34;
          v10 = 0x100000005;
          goto LABEL_44;
        }

        v18 = v12 + 1;
        if (v17 <= 2)
        {
          v18 = v13;
        }

        v19 = v13 - v18 <= 2;
        v22 = *v18;
        v20 = v18 + 1;
        v21 = v22;
        if (v19)
        {
          v23 = v13;
        }

        else
        {
          v23 = v20;
        }

        v24 = a3[2];
        if (v14 >= v24)
        {
          v26 = v16 + 1;
          if ((v16 + 1) < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = v24 - v15;
          if (2 * v27 > v26)
          {
            v26 = 2 * v27;
          }

          if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            v29 = operator new(v28);
          }

          else
          {
            v29 = 0;
          }

          v29[v16] = 0;
          v25 = &v29[v16 + 1];
          memcpy(v29, v15, v16);
          *a3 = v29;
          a3[1] = v25;
          a3[2] = &v29[v28];
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v14 = 0;
          v25 = (v14 + 1);
        }

        a3[1] = v25;
        if (v21 > 1)
        {
          v10 = 0x100000012;
          goto LABEL_43;
        }

        if (!v21)
        {
          break;
        }

        v12 = v23 + 2;
        *(v25 - 1) = *v23;
        if (v13 - v23 <= 4)
        {
          v12 = v13;
        }

        if ((v13 - v12) <= 7)
        {
          v10 = 0;
          goto LABEL_43;
        }
      }

      v10 = 0x100000011;
LABEL_43:
      a1 = v35;
      v4 = v34;
    }
  }

LABEL_44:
  v30 = this[3];
  v36 = this[2];
  v37 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, v4, &v36, "", 0, a1);
  v31 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

LABEL_49:
  v32 = *&v40[16];
  if (*&v40[16] && !atomic_fetch_add((*&v40[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    if ((v40[7] & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if ((v40[7] & 0x80000000) != 0)
  {
LABEL_52:
    operator delete(__p[0]);
  }

LABEL_53:
  v33 = *(&v42 + 1);
  if (!*(&v42 + 1) || atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v41[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_56;
  }

  (v33->__on_zero_shared)(v33);
  std::__shared_weak_count::__release_weak(v33);
  if ((v41[31] & 0x80000000) != 0)
  {
LABEL_56:
    operator delete(*&v41[8]);
  }
}

void sub_297A9E974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_string_t<81ul,false>,2ul,false>(void *a1, mipc::Message *this, void ***a3)
{
  v4 = this;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v6;
  v50 = v6;
  *v48 = v6;
  *&v48[16] = v6;
  mipc::Message::findTLV(this, 0x105u, v48);
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
        if (v18 == 48)
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

        if (v22 > 0x51)
        {
          goto LABEL_77;
        }

        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v26 - 3, v24, (v24 + v22 - 1), v22 - 1);
        v36 = (((v22 + 11) & 0xF8) - 4) & 0xFFFC;
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
  mipc::Message::handle<(mipc::Error::Type)2>(v4, v8, 0x105u, &v43, "", 0, a1);
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

void sub_297A9EEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A9EEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_297A9EEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_string_t<33ul,false>,2ul,false>(void *a1, mipc::Message *this, void ***a3)
{
  v4 = this;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v6;
  v50 = v6;
  *v48 = v6;
  *&v48[16] = v6;
  mipc::Message::findTLV(this, 0x106u, v48);
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
        if (v18 == 48)
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

        if (v22 > 0x21)
        {
          goto LABEL_77;
        }

        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v26 - 3, v24, (v24 + v22 - 1), v22 - 1);
        v36 = (((v22 + 11) & 0x78) - 4) & 0xFFFC;
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
  mipc::Message::handle<(mipc::Error::Type)2>(v4, v8, 0x106u, &v43, "", 0, a1);
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

void sub_297A9F3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A9F3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_297A9F41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_string_t<21ul,true>,2ul,false>(void *a1, mipc::Message *this, void ***a3)
{
  v4 = this;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v6;
  v48 = v6;
  *v46 = v6;
  *&v46[16] = v6;
  mipc::Message::findTLV(this, 0x107u, v46);
  *&v45[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v45 = v7;
  *__p = v7;
  v43 = *v46;
  if ((v46[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v46[8], *&v46[16]);
  }

  else
  {
    *__p = *&v46[8];
    *v45 = *&v46[24];
  }

  *&v45[8] = v47;
  if (*(&v47 + 1))
  {
    atomic_fetch_add_explicit((*(&v47 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v43;
  if (v43 && v43 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(v4, &v43, a1);
    goto LABEL_62;
  }

  v9 = v48;
  v10 = *(&v48 + 1);
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
    if (v8 != 0x10000000ELL)
    {
      goto LABEL_58;
    }

LABEL_57:
    v8 = 0;
    goto LABEL_58;
  }

  if (v9 < 8)
  {
    goto LABEL_57;
  }

  v14 = (v10 + v9);
  v39 = a1;
  v40 = v4;
  while (1)
  {
    v15 = *a3;
    v16 = a3[1];
    v17 = v16 - *a3;
    if (v17 == 48)
    {
      v8 = 0x100000010;
      goto LABEL_58;
    }

    if (&v14[-v10] < 4)
    {
      v8 = 0x100000005;
      goto LABEL_58;
    }

    if (&v14[-v10] <= 2)
    {
      v18 = v14;
    }

    else
    {
      v18 = (v10 + 2);
    }

    v19 = v14 - v18 <= 2;
    v22 = *v18;
    v20 = (v18 + 2);
    v21 = v22;
    if (v19)
    {
      v23 = v14;
    }

    else
    {
      v23 = v20;
    }

    v24 = a3[2];
    if (v16 >= v24)
    {
      v26 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3) + 1;
      if (v26 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v15) >> 3);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0x555555555555555)
      {
        v28 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (v28 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v29 = operator new(24 * v28);
      }

      else
      {
        v29 = 0;
      }

      v30 = &v29[8 * (v17 >> 3)];
      *v30 = 0;
      *(v30 + 1) = 0;
      *(v30 + 2) = 0;
      v31 = &v30[-v17];
      if (v15 != v16)
      {
        v32 = v15;
        v33 = v31;
        do
        {
          v34 = *v32;
          v33[2] = v32[2];
          *v33 = v34;
          v33 += 3;
          v32[1] = 0;
          v32[2] = 0;
          *v32 = 0;
          v32 += 3;
        }

        while (v32 != v16);
        do
        {
          if (*(v15 + 23) < 0)
          {
            operator delete(*v15);
          }

          v15 += 3;
        }

        while (v15 != v16);
        v15 = *a3;
      }

      v25 = (v30 + 24);
      *a3 = v31;
      a3[1] = v25;
      a3[2] = &v29[24 * v28];
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v16 = 0;
      v16[1] = 0;
      v25 = v16 + 3;
      v16[2] = 0;
    }

    a3[1] = v25;
    if (!v21)
    {
      v8 = 0x100000003;
      goto LABEL_81;
    }

    if (v21 > 0x15)
    {
      break;
    }

    if (v21 != 21)
    {
      v8 = 0x100000011;
      goto LABEL_81;
    }

    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v25 - 3, v23, (v23 + 20), 0x14uLL);
    v8 = 0;
    if (&v14[-v23] <= 28)
    {
      v10 = v14;
    }

    else
    {
      v10 = v23 + 28;
    }

    a1 = v39;
    v4 = v40;
    if (&v14[-v10] <= 7)
    {
      goto LABEL_58;
    }
  }

  v8 = 0x100000010;
LABEL_81:
  a1 = v39;
  v4 = v40;
LABEL_58:
  v35 = *(v4 + 3);
  v41 = *(v4 + 2);
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(v4, v8, 0x107u, &v41, "", 0, a1);
  v36 = v42;
  if (!v42 || atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_62:
    v37 = *&v45[16];
    if (!*&v45[16])
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  (v36->__on_zero_shared)(v36);
  std::__shared_weak_count::__release_weak(v36);
  v37 = *&v45[16];
  if (!*&v45[16])
  {
LABEL_64:
    if ((v45[7] & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

LABEL_68:
    operator delete(__p[0]);
    v38 = *(&v47 + 1);
    if (!*(&v47 + 1))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_63:
  if (atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_64;
  }

  (v37->__on_zero_shared)(v37);
  std::__shared_weak_count::__release_weak(v37);
  if ((v45[7] & 0x80000000) != 0)
  {
    goto LABEL_68;
  }

LABEL_65:
  v38 = *(&v47 + 1);
  if (!*(&v47 + 1))
  {
LABEL_70:
    if ((v46[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_71;
  }

LABEL_69:
  if (atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_70;
  }

  (v38->__on_zero_shared)(v38);
  std::__shared_weak_count::__release_weak(v38);
  if ((v46[31] & 0x80000000) != 0)
  {
LABEL_71:
    operator delete(*&v46[8]);
  }
}

void sub_297A9F900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297A9F914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_297A9F938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_sim_slots_info_struct4,2ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v6;
  v51 = v6;
  *v49 = v6;
  *&v49[16] = v6;
  mipc::Message::findTLV(this, 0x108u, v49);
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

  if (v46)
  {
    if (v46 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v46, a1);
      goto LABEL_50;
    }

    v8 = 0;
    a3[1] = *a3;
  }

  else
  {
    v9 = v51;
    v10 = *(&v51 + 1);
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v43 = a1;
      v11 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v12 = a3[1];
        v14 = v12 - *a3;
        if (v14 == 338)
        {
          v8 = 0x100000010;
          goto LABEL_44;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v43;
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
          v24 = 0xF25DEACAFB74A399 * v14 + 1;
          if (v24 > 0x183C977AB2BEDD2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xF25DEACAFB74A399 * (v22 - v13);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          v26 = v25 >= 0xC1E4BBD595F6E9 ? 0x183C977AB2BEDD2 : v24;
          if (v26)
          {
            if (v26 > 0x183C977AB2BEDD2)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(169 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[v14];
          *(v28 + 153) = 0u;
          *(v28 + 8) = 0u;
          *(v28 + 9) = 0u;
          v29 = &v27[169 * v26];
          *(v28 + 6) = 0u;
          *(v28 + 7) = 0u;
          *(v28 + 4) = 0u;
          *(v28 + 5) = 0u;
          *(v28 + 2) = 0u;
          *(v28 + 3) = 0u;
          *v28 = 0u;
          *(v28 + 1) = 0u;
          v23 = &v27[v14 + 169];
          v30 = v27;
          memcpy(v27, v13, v14);
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
          *(v12 + 153) = 0u;
          v12[8] = 0u;
          v12[9] = 0u;
          v12[6] = 0u;
          v12[7] = 0u;
          v12[4] = 0u;
          v12[5] = 0u;
          v12[2] = 0u;
          v12[3] = 0u;
          v23 = v12 + 169;
          *v12 = 0u;
          v12[1] = 0u;
        }

        a3[1] = v23;
        if (v19 > 0xA9)
        {
          break;
        }

        if (v19 != 169)
        {
          v8 = 0x100000011;
          goto LABEL_44;
        }

        v31 = *v21;
        v32 = *(v21 + 2);
        *(v23 - 153) = *(v21 + 1);
        *(v23 - 137) = v32;
        *(v23 - 169) = v31;
        v33 = *(v21 + 3);
        v34 = *(v21 + 4);
        v35 = *(v21 + 6);
        *(v23 - 89) = *(v21 + 5);
        *(v23 - 73) = v35;
        *(v23 - 121) = v33;
        *(v23 - 105) = v34;
        v36 = *(v21 + 7);
        v37 = *(v21 + 8);
        v38 = *(v21 + 9);
        *(v23 - 16) = *(v21 + 153);
        *(v23 - 41) = v37;
        *(v23 - 25) = v38;
        *(v23 - 57) = v36;
        v10 = (v21 + 86);
        if (v11 - v21 <= 172)
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
      a1 = v43;
    }
  }

LABEL_45:
  v39 = this[3];
  v44 = this[2];
  v45 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x108u, &v44, "", 0, a1);
  v40 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_50:
  v41 = *&v48[16];
  if (*&v48[16] && !atomic_fetch_add((*&v48[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
    if ((v48[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v48[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v42 = *(&v50 + 1);
  if (!*(&v50 + 1) || atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v49[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

  (v42->__on_zero_shared)(v42);
  std::__shared_weak_count::__release_weak(v42);
  if ((v49[31] & 0x80000000) != 0)
  {
LABEL_57:
    operator delete(*&v49[8]);
  }
}

void sub_297A9FDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_eid_byte_struct_struct4,2ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v6;
  v46 = v6;
  *v44 = v6;
  *&v44[16] = v6;
  mipc::Message::findTLV(this, 0x109u, v44);
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

  if (v41)
  {
    if (v41 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v41, a1);
      goto LABEL_50;
    }

    v8 = 0;
    a3[1] = *a3;
  }

  else
  {
    v9 = v46;
    v10 = *(&v46 + 1);
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v38 = a1;
      v11 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v12 = a3[1];
        v14 = v12 - *a3;
        if (v14 == 34)
        {
          v8 = 0x100000010;
          goto LABEL_44;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v38;
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
          v24 = 0xF0F0F0F0F0F0F0F1 * v14 + 1;
          if (v24 >= 0xF0F0F0F0F0F0F10)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xF0F0F0F0F0F0F0F1 * (v22 - v13);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          v26 = v25 >= 0x787878787878787;
          v27 = 0xF0F0F0F0F0F0F0FLL;
          if (!v26)
          {
            v27 = v24;
          }

          v28 = 17 * v27;
          if (v27)
          {
            if (v27 >= 0xF0F0F0F0F0F0F10)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(17 * v27);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[v14];
          v31 = &v29[v28];
          *v30 = 0;
          *(v30 + 1) = 0;
          v30[16] = 0;
          v23 = &v29[v14 + 17];
          v32 = v29;
          memcpy(v29, v13, v14);
          *a3 = v32;
          a3[1] = v23;
          a3[2] = v31;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v12 = 0;
          *(v12 + 8) = 0;
          v23 = v12 + 17;
          *(v12 + 16) = 0;
        }

        a3[1] = v23;
        if (v19 > 0x11)
        {
          break;
        }

        if (v19 != 17)
        {
          v8 = 0x100000011;
          goto LABEL_44;
        }

        v33 = *v21;
        *(v23 - 1) = *(v21 + 16);
        *(v23 - 17) = v33;
        if (v11 - v21 <= 20)
        {
          v10 = v11;
        }

        else
        {
          v10 = (v21 + 10);
        }

        if ((v11 - v10) <= 7)
        {
          v8 = 0;
          goto LABEL_44;
        }
      }

      v8 = 0x100000012;
LABEL_44:
      a1 = v38;
    }
  }

LABEL_45:
  v34 = this[3];
  v39 = this[2];
  v40 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x109u, &v39, "", 0, a1);
  v35 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

LABEL_50:
  v36 = *&v43[16];
  if (*&v43[16] && !atomic_fetch_add((*&v43[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
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
  v37 = *(&v45 + 1);
  if (!*(&v45 + 1) || atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v44[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

  (v37->__on_zero_shared)(v37);
  std::__shared_weak_count::__release_weak(v37);
  if ((v44[31] & 0x80000000) != 0)
  {
LABEL_57:
    operator delete(*&v44[8]);
  }
}

void sub_297AA026C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

unint64_t mipc::sim::Get_Euicc_Slots_Status_Cnf::getSize(mipc::sim::Get_Euicc_Slots_Status_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 8 * (v2 - v1) + 16;
  }

  v4 = *(this + 14);
  v5 = *(this + 15);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 8 * (v5 - v4) + 16;
  }

  v7 = *(this + 17);
  v8 = *(this + 18);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 8 * (v8 - v7) + 16;
  }

  v10 = *(this + 10);
  v11 = *(this + 21);
  v12 = *(this + 20);
  if (v12 != v11)
  {
    v13 = 16;
    while (1)
    {
      v14 = *(v12 + 23);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v12 + 8);
      }

      if ((v14 + 5) >> 16)
      {
        break;
      }

      v13 += (v14 + 12) & 0xFFF8;
      v12 += 24;
      if (v12 == v11)
      {
        goto LABEL_18;
      }
    }

    v13 = 0;
    v20 = *(this + 184);
    v16 = *(this + 24);
    v17 = *(this + 23);
    if (v17 == v16)
    {
      goto LABEL_26;
    }

LABEL_19:
    v18 = 16;
    while (1)
    {
      v19 = *(v17 + 23);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v17 + 8);
      }

      if ((v19 + 5) >> 16)
      {
        break;
      }

      v18 += (v19 + 12) & 0xFFF8;
      v17 += 24;
      if (v17 == v16)
      {
        goto LABEL_27;
      }
    }

    v18 = 0;
    v26 = *(this + 13);
    v22 = *(this + 27);
    v23 = *(this + 26);
    if (v23 != v22)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v13 = 0;
LABEL_18:
  v15 = *(this + 184);
  v16 = *(this + 24);
  v17 = *(this + 23);
  if (v17 != v16)
  {
    goto LABEL_19;
  }

LABEL_26:
  v18 = 0;
LABEL_27:
  v21 = *(this + 13);
  v22 = *(this + 27);
  v23 = *(this + 26);
  if (v23 != v22)
  {
LABEL_28:
    v24 = 16;
    while (1)
    {
      v25 = *(v23 + 23);
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v23 + 8);
      }

      if ((v25 + 5) >> 16)
      {
        break;
      }

      v24 += (v25 + 12) & 0xFFF8;
      v23 += 24;
      if (v23 == v22)
      {
        goto LABEL_36;
      }
    }

    v24 = 0;
    v27 = *(this + 29);
    v28 = *(this + 30);
    if (v27 == v28)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_35:
  v24 = 0;
LABEL_36:
  v27 = *(this + 29);
  v28 = *(this + 30);
  if (v27 == v28)
  {
LABEL_40:
    v29 = 0;
    v30 = *(this + 4);
    v31 = *(this + 32);
    v32 = *(this + 33);
    if (v31 == v32)
    {
      goto LABEL_41;
    }

LABEL_38:
    v33 = 24 * ((v32 - v31 - 17) / 0x11uLL) + 40;
    goto LABEL_42;
  }

LABEL_37:
  v29 = 176 * ((v28 - v27 - 169) / 0xA9uLL) + 192;
  v30 = *(this + 4);
  v31 = *(this + 32);
  v32 = *(this + 33);
  if (v31 != v32)
  {
    goto LABEL_38;
  }

LABEL_41:
  v33 = 0;
LABEL_42:
  v34 = HIDWORD(v30) == 0;
  v35 = 24;
  if (!v34)
  {
    v35 = 32;
  }

  return v3 + v6 + v9 + v13 + v35 + v18 + v24 + v29 + v33;
}

double mipc::sim::Set_Sim_Power_Req::Set_Sim_Power_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1353;
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
  *a1 = &unk_2A1E65628;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = 1353;
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
  *a1 = &unk_2A1E65628;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::sim::Set_Sim_Power_Req::~Set_Sim_Power_Req(mipc::sim::Set_Sim_Power_Req *this)
{
  *this = &unk_2A1E65628;
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
  *this = &unk_2A1E65628;
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
  *this = &unk_2A1E65628;
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

void mipc::sim::Set_Sim_Power_Req::serialize(mipc::sim::Set_Sim_Power_Req *this@<X0>, uint64_t a2@<X8>)
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
LABEL_52:
    *(a2 + 48) = 1;
    goto LABEL_53;
  }

  if (*(this + 11))
  {
    *v33 = 256;
    v8 = v33++;
    v8[1] = 1;
    v9 = v33++;
    *(v9 + 2) = **(this + 11);
    v33 += 2;
  }

  v36 = 0;
  v37 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v36, "", 0, &v27);
  v10 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    __p[0] = v27;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __p[0] = v27;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_8:
    operator delete(__p[1]);
  }

LABEL_9:
  *&__p[1] = *v28;
  __p[3] = v29;
  HIBYTE(v29) = 0;
  LOBYTE(v28[0]) = 0;
  v11 = v30;
  v30 = 0uLL;
  v32 = v11;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
  }

  v12 = *(&v30 + 1);
  v13 = __p[0];
  if (!*(&v30 + 1) || atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    operator delete(v28[0]);
    if (v13)
    {
      goto LABEL_51;
    }

    goto LABEL_21;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v13)
  {
    goto LABEL_51;
  }

LABEL_21:
  if (*(this + 12))
  {
    *v33 = 257;
    v14 = v33++;
    v14[1] = 1;
    v15 = v33++;
    *(v15 + 2) = **(this + 12);
    v33 += 2;
  }

  else if (!*(this + 4))
  {
    v16 = 0x10000000FLL;
    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:
  v36 = 0;
  v37 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v16, 0x101u, &v36, "", 0, &v27);
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
      goto LABEL_40;
    }

LABEL_51:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v32;
    goto LABEL_52;
  }

  if (v21)
  {
    goto LABEL_51;
  }

LABEL_40:
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
    goto LABEL_51;
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

LABEL_53:
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

void sub_297AA1000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sim::Set_Sim_Power_Cnf *mipc::sim::Set_Sim_Power_Cnf::Set_Sim_Power_Cnf(mipc::sim::Set_Sim_Power_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1354, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E65670;
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

void sub_297AA1204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sim::Set_Sim_Power_Cnf::deserialize@<D0>(mipc::sim::Set_Sim_Power_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sim::Set_Sim_Power_Cnf::Set_Sim_Power_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1354, &v14, a3, 2);
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
  *a1 = &unk_2A1E684C0;
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
  *a1 = &unk_2A1E65670;
  return a1;
}

void sub_297AA14D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Set_Sim_Power_Cnf::~Set_Sim_Power_Cnf(mipc::sim::Set_Sim_Power_Cnf *this)
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

uint64_t mipc::sim::Set_Sim_Power_Cnf::getSize(mipc::sim::Set_Sim_Power_Cnf *this)
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

double mipc::sim::Extended_Channel_Generic_Access_Req::Extended_Channel_Generic_Access_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1357;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E656B8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 1357;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E656B8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sim::Extended_Channel_Generic_Access_Req::~Extended_Channel_Generic_Access_Req(mipc::sim::Extended_Channel_Generic_Access_Req *this)
{
  *this = &unk_2A1E656B8;
  v2 = *(this + 17);
  *(this + 17) = 0;
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
    operator delete(v9);
  }

  *this = &unk_2A1E85968;
  v10 = *(this + 9);
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (*(this + 63) < 0)
  {
LABEL_20:
    operator delete(*(this + 5));
  }

LABEL_21:
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
  mipc::sim::Extended_Channel_Generic_Access_Req::~Extended_Channel_Generic_Access_Req(this);

  operator delete(v1);
}

void mipc::sim::Extended_Channel_Generic_Access_Req::serialize(mipc::sim::Extended_Channel_Generic_Access_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v6 = (this + 136);
  v5 = *(this + 17);
  if (v5)
  {
    v7 = v5[1] - *v5;
    v8 = __CFADD__(v7 - 65532, 0x10000);
    v5 = ((v7 + 11) & 0xFFF8);
    if (!v8)
    {
      v5 = 0;
    }
  }

  v9 = (this + 128);
  v10 = &v5[(*(this + 16) != 0) + (*(this + 15) != 0)] + vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 104)))));
  v58[0] = operator new(v10);
  v59 = v58[0] + v10;
  bzero(v58[0], v10);
  v58[1] = v58[0] + v10;
  v57 = v58[0];
  v56 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v51, this, &v57);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v11 = v54;
  v54 = 0uLL;
  v12 = *(&v56 + 1);
  v56 = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v13 = *(&v54 + 1);
    v14 = __p[0];
    if (!*(&v54 + 1))
    {
LABEL_10:
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      operator delete(v52);
      if (v14)
      {
        goto LABEL_102;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v13 = *(&v54 + 1);
    v14 = __p[0];
    if (!*(&v54 + 1))
    {
      goto LABEL_10;
    }
  }

  if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_10;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v14)
  {
    goto LABEL_102;
  }

LABEL_17:
  if (*(this + 11))
  {
    *v57 = 256;
    v15 = v57++;
    v15[1] = 1;
    v16 = v57++;
    *(v16 + 2) = **(this + 11);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v17 = 0x10000000FLL;
    goto LABEL_21;
  }

  v17 = 0;
LABEL_21:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v17, 0x100u, &v60, "", 0, &v51);
  v18 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    __p[0] = v51;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_24:
    operator delete(__p[1]);
  }

LABEL_25:
  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v19 = v54;
  v54 = 0uLL;
  v20 = *(&v56 + 1);
  v56 = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    v21 = *(&v54 + 1);
    v22 = __p[0];
    if (!*(&v54 + 1))
    {
LABEL_29:
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_37:
      operator delete(v52);
      if (v22)
      {
        goto LABEL_102;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v21 = *(&v54 + 1);
    v22 = __p[0];
    if (!*(&v54 + 1))
    {
      goto LABEL_29;
    }
  }

  if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v22)
  {
    goto LABEL_102;
  }

LABEL_38:
  if (*(this + 12))
  {
    *v57 = 257;
    v23 = v57++;
    v23[1] = 1;
    v24 = v57++;
    *(v24 + 2) = **(this + 12);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v25 = 0x10000000FLL;
    goto LABEL_43;
  }

  v25 = 0;
LABEL_43:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v25, 0x101u, &v60, "", 0, &v51);
  v26 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v27 = v54;
  v54 = 0uLL;
  v28 = *(&v56 + 1);
  v56 = v27;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(&v54 + 1);
  v30 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
    if (!v30)
    {
      goto LABEL_58;
    }

LABEL_102:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v56;
    v56 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_103;
  }

  if (v30)
  {
    goto LABEL_102;
  }

LABEL_58:
  if (*(this + 13))
  {
    *v57 = 258;
    v31 = v57++;
    v31[1] = 1;
    v32 = v57++;
    *(v32 + 2) = **(this + 13);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v33 = 0x10000000FLL;
    goto LABEL_63;
  }

  v33 = 0;
LABEL_63:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v33, 0x102u, &v60, "", 0, &v51);
  v34 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v35 = v54;
  v54 = 0uLL;
  v36 = *(&v56 + 1);
  v56 = v35;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = *(&v54 + 1);
  v38 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v38)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 - 1, 259, &v57, &v51);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v39 = v54;
  v54 = 0uLL;
  v40 = *(&v56 + 1);
  v56 = v39;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  v41 = *(&v54 + 1);
  v42 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v42)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4, 260, &v57, &v51);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v43 = v54;
  v54 = 0uLL;
  v44 = *(&v56 + 1);
  v56 = v43;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  v45 = *(&v54 + 1);
  v46 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v46)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v9, 261, &v57, &v51);
  v47 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v47)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<65535ul,false>,false>(this, v6, 0x107u, &v57, &v51);
  v48 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v48)
  {
    goto LABEL_102;
  }

  (*(*this + 32))(&v51, this, v58);
  v49 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v49)
  {
    goto LABEL_102;
  }

  *a2 = *v58;
  *(a2 + 16) = v59;
  v58[1] = 0;
  v59 = 0;
  v58[0] = 0;
  *(a2 + 48) = 0;
  v50 = *(&v56 + 1);
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
  }

LABEL_103:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }
}

void sub_297AA25D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::sim::Extended_Channel_Generic_Access_Req::getSize(mipc::sim::Extended_Channel_Generic_Access_Req *this)
{
  v1 = *(this + 17);
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

  return &v1[(*(this + 16) != 0) + (*(this + 15) != 0)] + vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 104)))));
}

mipc::sim::Extended_Channel_Generic_Access_Cnf *mipc::sim::Extended_Channel_Generic_Access_Cnf::Extended_Channel_Generic_Access_Cnf(mipc::sim::Extended_Channel_Generic_Access_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1358, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65700;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 80) = 1;
  mipc::sim::Extended_Channel_Generic_Access_Cnf::deserialize(this, v7);
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

void sub_297AA27D8(_Unwind_Exception *a1)
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