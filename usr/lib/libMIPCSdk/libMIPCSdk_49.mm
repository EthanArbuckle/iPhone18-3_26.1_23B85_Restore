void mipc::cust::Write_Heb_Command_Req::serialize(mipc::cust::Write_Heb_Command_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this + 120;
  v6 = (this + 152);
  v5 = *(this + 19);
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

  v9 = vdupq_n_s64(8uLL);
  v10 = &v5[*(this + 20) != 0] + vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v9, vceqzq_s64(*(this + 120)))), vaddq_s64(vbicq_s8(v9, vceqzq_s64(*(this + 104))), vbicq_s8(v9, vceqzq_s64(*(this + 136))))));
  v61[0] = operator new(v10);
  v62 = v61[0] + v10;
  bzero(v61[0], v10);
  v61[1] = v61[0] + v10;
  v60 = v61[0];
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
  v11 = v57;
  v57 = 0uLL;
  v12 = *(&v59 + 1);
  v59 = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v13 = *(&v57 + 1);
    v14 = __p[0];
    if (!*(&v57 + 1))
    {
LABEL_10:
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      operator delete(v55);
      if (v14)
      {
        goto LABEL_105;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v13 = *(&v57 + 1);
    v14 = __p[0];
    if (!*(&v57 + 1))
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
  if (SHIBYTE(v56) < 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v14)
  {
    goto LABEL_105;
  }

LABEL_17:
  if (*(this + 11))
  {
    *v60 = 256;
    v15 = v60++;
    v15[1] = 1;
    v16 = v60++;
    *(v16 + 2) = **(this + 11);
    v60 += 2;
  }

  else if (!*(this + 4))
  {
    v17 = 0x10000000FLL;
    goto LABEL_21;
  }

  v17 = 0;
LABEL_21:
  v63 = 0;
  v64 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v17, 0x100u, &v63, "", 0, &v54);
  v18 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    __p[0] = v54;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __p[0] = v54;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_24:
    operator delete(__p[1]);
  }

LABEL_25:
  *&__p[1] = v55;
  __p[3] = v56;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v19 = v57;
  v57 = 0uLL;
  v20 = *(&v59 + 1);
  v59 = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    v21 = *(&v57 + 1);
    v22 = __p[0];
    if (!*(&v57 + 1))
    {
LABEL_29:
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_37:
      operator delete(v55);
      if (v22)
      {
        goto LABEL_105;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v21 = *(&v57 + 1);
    v22 = __p[0];
    if (!*(&v57 + 1))
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
  if (SHIBYTE(v56) < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v22)
  {
    goto LABEL_105;
  }

LABEL_38:
  if (*(this + 12))
  {
    *v60 = 257;
    v23 = v60++;
    v23[1] = 2;
    v24 = v60++;
    v24[1] = **(this + 12);
    v60 += 2;
  }

  else if (!*(this + 4))
  {
    v25 = 0x10000000FLL;
    goto LABEL_43;
  }

  v25 = 0;
LABEL_43:
  v63 = 0;
  v64 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v25, 0x101u, &v63, "", 0, &v54);
  v26 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
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
  v27 = v57;
  v57 = 0uLL;
  v28 = *(&v59 + 1);
  v59 = v27;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(&v57 + 1);
  v30 = __p[0];
  if (*(&v57 + 1) && !atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
    if (!v30)
    {
      goto LABEL_58;
    }

LABEL_105:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v59;
    v59 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_106;
  }

  if (v30)
  {
    goto LABEL_105;
  }

LABEL_58:
  if (*(this + 13))
  {
    *v60 = 258;
    v31 = v60++;
    v31[1] = 1;
    v32 = v60++;
    *(v32 + 2) = **(this + 13);
    v60 += 2;
  }

  else if (!*(this + 4))
  {
    v33 = 0x10000000FLL;
    goto LABEL_63;
  }

  v33 = 0;
LABEL_63:
  v63 = 0;
  v64 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v33, 0x102u, &v63, "", 0, &v54);
  v34 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
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
  v35 = v57;
  v57 = 0uLL;
  v36 = *(&v59 + 1);
  v59 = v35;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = *(&v57 + 1);
  v38 = __p[0];
  if (*(&v57 + 1) && !atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (v38)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 - 1, 259, &v60, &v54);
  __p[0] = v54;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v55;
  __p[3] = v56;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v39 = v57;
  v57 = 0uLL;
  v40 = *(&v59 + 1);
  v59 = v39;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  v41 = *(&v57 + 1);
  v42 = __p[0];
  if (*(&v57 + 1) && !atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (v42)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4, 260, &v60, &v54);
  __p[0] = v54;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v55;
  __p[3] = v56;
  HIBYTE(v56) = 0;
  LOBYTE(v55) = 0;
  v43 = v57;
  v57 = 0uLL;
  v44 = *(&v59 + 1);
  v59 = v43;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  v45 = *(&v57 + 1);
  v46 = __p[0];
  if (*(&v57 + 1) && !atomic_fetch_add((*(&v57 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (v46)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 + 1, 261, &v60, &v54);
  v47 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v47)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 + 2, 262, &v60, &v54);
  v48 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v48)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v4 + 3, 263, &v60, &v54);
  v49 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v49)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<512ul,false>,true>(&v54, this, v6, 0x108u, &v60);
  v50 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v50)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 20, 265, &v60, &v54);
  v51 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v51)
  {
    goto LABEL_105;
  }

  (*(*this + 32))(&v54, this, v61);
  v52 = *mipc::Error::operator=(__p, &v54);
  mipc::Error::~Error(&v54);
  if (v52)
  {
    goto LABEL_105;
  }

  *a2 = *v61;
  *(a2 + 16) = v62;
  v61[1] = 0;
  v62 = 0;
  v61[0] = 0;
  *(a2 + 48) = 0;
  v53 = *(&v59 + 1);
  if (*(&v59 + 1) && !atomic_fetch_add((*(&v59 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v53->__on_zero_shared)(v53);
    std::__shared_weak_count::__release_weak(v53);
  }

LABEL_106:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v61[0])
  {
    v61[1] = v61[0];
    operator delete(v61[0]);
  }
}

void sub_297D39FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::cust::Write_Heb_Command_Req::getSize(mipc::cust::Write_Heb_Command_Req *this)
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

  v4 = vdupq_n_s64(8uLL);
  return &v1[*(this + 20) != 0] + vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v4, vceqzq_s64(*(this + 120)))), vaddq_s64(vbicq_s8(v4, vceqzq_s64(*(this + 104))), vbicq_s8(v4, vceqzq_s64(*(this + 136))))));
}

void mipc::Message::serializeTlv<mipc::mipc_byte_array_t<512ul,false>,true>(uint64_t a1, uint64_t a2, char ***a3, unsigned int a4, _WORD **a5)
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
    if ((v13 - v12) > 0x200)
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

void sub_297D3A288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::cust::Write_Heb_Command_Cnf *mipc::cust::Write_Heb_Command_Cnf::Write_Heb_Command_Cnf(mipc::cust::Write_Heb_Command_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14625, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E86440;
  *(this + 11) = 0;
  mipc::cust::Write_Heb_Command_Cnf::deserialize(this, &v7);
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

void sub_297D3A3C0(_Unwind_Exception *a1)
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

void mipc::cust::Write_Heb_Command_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Write_Heb_Command_Cnf::Write_Heb_Command_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14625, &v14, a3, 2);
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
  *a1 = &unk_2A1E8AC58;
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
  *a1 = &unk_2A1E86440;
  a1[11] = 0;
  return a1;
}

void sub_297D3A7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Write_Heb_Command_Cnf::~Write_Heb_Command_Cnf(mipc::cust::Write_Heb_Command_Cnf *this)
{
  *this = &unk_2A1E86440;
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
  *this = &unk_2A1E86440;
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
  *this = &unk_2A1E86440;
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

uint64_t mipc::cust::Write_Heb_Command_Cnf::getSize(mipc::cust::Write_Heb_Command_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::cust::Read_Heb_Command_Req::Read_Heb_Command_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14626;
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
  *a1 = &unk_2A1E86488;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

{
  *(a1 + 8) = 14626;
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
  *a1 = &unk_2A1E86488;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

void mipc::cust::Read_Heb_Command_Req::~Read_Heb_Command_Req(mipc::cust::Read_Heb_Command_Req *this)
{
  *this = &unk_2A1E86488;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 15);
  *(this + 15) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 14);
  *(this + 14) = 0;
  if (v7)
  {
    operator delete(v7);
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
  mipc::cust::Read_Heb_Command_Req::~Read_Heb_Command_Req(this);

  operator delete(v1);
}

void mipc::cust::Read_Heb_Command_Req::serialize(mipc::cust::Read_Heb_Command_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v5 = (this + 136);
  v6 = vdupq_n_s64(8uLL);
  v7 = (this + 152);
  v8 = vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v6, vceqzq_s64(*(this + 120)))), vaddq_s64(vbicq_s8(v6, vceqzq_s64(*(this + 104))), vbicq_s8(v6, vceqzq_s64(*(this + 136)))))) + 8 * (*(this + 19) != 0);
  v58[0] = operator new(v8);
  v59 = v58[0] + v8;
  bzero(v58[0], v8);
  v58[1] = v58[0] + v8;
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
  v9 = v54;
  v54 = 0uLL;
  v10 = *(&v56 + 1);
  v56 = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = *(&v54 + 1);
    v12 = __p[0];
    if (!*(&v54 + 1))
    {
LABEL_7:
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(v52);
      if (v12)
      {
        goto LABEL_101;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = *(&v54 + 1);
    v12 = __p[0];
    if (!*(&v54 + 1))
    {
      goto LABEL_7;
    }
  }

  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v12)
  {
    goto LABEL_101;
  }

LABEL_14:
  if (*(this + 11))
  {
    *v57 = 256;
    v13 = v57++;
    v13[1] = 1;
    v14 = v57++;
    *(v14 + 2) = **(this + 11);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v15 = 0x10000000FLL;
    goto LABEL_18;
  }

  v15 = 0;
LABEL_18:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v15, 0x100u, &v60, "", 0, &v51);
  v16 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    __p[0] = v51;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_21:
    operator delete(__p[1]);
  }

LABEL_22:
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
LABEL_26:
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_34:
      operator delete(v52);
      if (v20)
      {
        goto LABEL_101;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v19 = *(&v54 + 1);
    v20 = __p[0];
    if (!*(&v54 + 1))
    {
      goto LABEL_26;
    }
  }

  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_26;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v20)
  {
    goto LABEL_101;
  }

LABEL_35:
  if (*(this + 12))
  {
    *v57 = 257;
    v21 = v57++;
    v21[1] = 2;
    v22 = v57++;
    v22[1] = **(this + 12);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v23 = 0x10000000FLL;
    goto LABEL_40;
  }

  v23 = 0;
LABEL_40:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v23, 0x101u, &v60, "", 0, &v51);
  v24 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
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
  v25 = v54;
  v54 = 0uLL;
  v26 = *(&v56 + 1);
  v56 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v54 + 1);
  v28 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
    if (!v28)
    {
      goto LABEL_55;
    }

LABEL_101:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v56;
    v56 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_102;
  }

  if (v28)
  {
    goto LABEL_101;
  }

LABEL_55:
  if (*(this + 13))
  {
    *v57 = 258;
    v29 = v57++;
    v29[1] = 1;
    v30 = v57++;
    *(v30 + 2) = **(this + 13);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v31 = 0x10000000FLL;
    goto LABEL_60;
  }

  v31 = 0;
LABEL_60:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v31, 0x102u, &v60, "", 0, &v51);
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
  }

  if (v36)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 14, 259, &v57, &v51);
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
    goto LABEL_101;
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
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 16, 261, &v57, &v51);
  v45 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v45)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v5, 262, &v57, &v51);
  v46 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v46)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, this + 18, 263, &v57, &v51);
  v47 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v47)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v7, 264, &v57, &v51);
  v48 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v48)
  {
    goto LABEL_101;
  }

  (*(*this + 32))(&v51, this, v58);
  v49 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v49)
  {
    goto LABEL_101;
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

LABEL_102:
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

void sub_297D3B9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mipc::cust::Read_Heb_Command_Cnf *mipc::cust::Read_Heb_Command_Cnf::Read_Heb_Command_Cnf(mipc::cust::Read_Heb_Command_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14627, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E864D0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::cust::Read_Heb_Command_Cnf::deserialize(this, v7);
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

void sub_297D3BBA0(_Unwind_Exception *a1)
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

void mipc::cust::Read_Heb_Command_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<512ul,false>,false>(this, this + 12, 0x101u, &v12);
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

void *mipc::cust::Read_Heb_Command_Cnf::Read_Heb_Command_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14627, &v14, a3, 2);
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
  *a1 = &unk_2A1E8ACA0;
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
  *a1 = &unk_2A1E864D0;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297D3C0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Read_Heb_Command_Cnf::~Read_Heb_Command_Cnf(mipc::cust::Read_Heb_Command_Cnf *this)
{
  *this = &unk_2A1E864D0;
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
  *this = &unk_2A1E864D0;
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
  *this = &unk_2A1E864D0;
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

void *mipc::cust::Read_Heb_Command_Cnf::getSize(mipc::cust::Read_Heb_Command_Cnf *this)
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

double mipc::cust::Periodic_Write_Heb_Req::Periodic_Write_Heb_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14628;
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
  *a1 = &unk_2A1E86518;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

{
  *(a1 + 8) = 14628;
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
  *a1 = &unk_2A1E86518;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

void mipc::cust::Periodic_Write_Heb_Req::~Periodic_Write_Heb_Req(mipc::cust::Periodic_Write_Heb_Req *this)
{
  *this = &unk_2A1E86518;
  v2 = *(this + 20);
  *(this + 20) = 0;
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
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (*(this + 63) < 0)
  {
LABEL_26:
    operator delete(*(this + 5));
  }

LABEL_27:
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
  mipc::cust::Periodic_Write_Heb_Req::~Periodic_Write_Heb_Req(this);

  operator delete(v1);
}

void mipc::cust::Periodic_Write_Heb_Req::serialize(mipc::cust::Periodic_Write_Heb_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v6 = (this + 160);
  v5 = *(this + 20);
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

  v9 = (this + 152);
  v10 = vdupq_n_s64(8uLL);
  v11 = &v5[*(this + 19) != 0] + vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v10, vceqzq_s64(*(this + 120)))), vaddq_s64(vbicq_s8(v10, vceqzq_s64(*(this + 104))), vbicq_s8(v10, vceqzq_s64(*(this + 136))))));
  v62[0] = operator new(v11);
  v63 = v62[0] + v11;
  bzero(v62[0], v11);
  v62[1] = v62[0] + v11;
  v61 = v62[0];
  v60 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v55, this, &v61);
  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v12 = v58;
  v58 = 0uLL;
  v13 = *(&v60 + 1);
  v60 = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(&v58 + 1);
    v15 = __p[0];
    if (!*(&v58 + 1))
    {
LABEL_10:
      if ((SHIBYTE(v57) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      operator delete(v56);
      if (v15)
      {
        goto LABEL_105;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v14 = *(&v58 + 1);
    v15 = __p[0];
    if (!*(&v58 + 1))
    {
      goto LABEL_10;
    }
  }

  if (atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_10;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (SHIBYTE(v57) < 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v15)
  {
    goto LABEL_105;
  }

LABEL_17:
  if (*(this + 11))
  {
    *v61 = 256;
    v16 = v61++;
    v16[1] = 2;
    v17 = v61++;
    v17[1] = **(this + 11);
    v61 += 2;
  }

  else if (!*(this + 4))
  {
    v18 = 0x10000000FLL;
    goto LABEL_21;
  }

  v18 = 0;
LABEL_21:
  v64 = 0;
  v65 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v18, 0x100u, &v64, "", 0, &v55);
  v19 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    __p[0] = v55;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_24:
    operator delete(__p[1]);
  }

LABEL_25:
  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v20 = v58;
  v58 = 0uLL;
  v21 = *(&v60 + 1);
  v60 = v20;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    v22 = *(&v58 + 1);
    v23 = __p[0];
    if (!*(&v58 + 1))
    {
LABEL_29:
      if ((SHIBYTE(v57) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_37:
      operator delete(v56);
      if (v23)
      {
        goto LABEL_105;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v22 = *(&v58 + 1);
    v23 = __p[0];
    if (!*(&v58 + 1))
    {
      goto LABEL_29;
    }
  }

  if (atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (SHIBYTE(v57) < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v23)
  {
    goto LABEL_105;
  }

LABEL_38:
  if (*(this + 12))
  {
    *v61 = 257;
    v24 = v61++;
    v24[1] = 1;
    v25 = v61++;
    *(v25 + 2) = **(this + 12);
    v61 += 2;
  }

  else if (!*(this + 4))
  {
    v26 = 0x10000000FLL;
    goto LABEL_43;
  }

  v26 = 0;
LABEL_43:
  v64 = 0;
  v65 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v26, 0x101u, &v64, "", 0, &v55);
  v27 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v28 = v58;
  v58 = 0uLL;
  v29 = *(&v60 + 1);
  v60 = v28;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *(&v58 + 1);
  v31 = __p[0];
  if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
    if (!v31)
    {
      goto LABEL_58;
    }

LABEL_105:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v60;
    v60 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_106;
  }

  if (v31)
  {
    goto LABEL_105;
  }

LABEL_58:
  if (*(this + 13))
  {
    *v61 = 258;
    v32 = v61++;
    v32[1] = 2;
    v33 = v61++;
    v33[1] = **(this + 13);
    v61 += 2;
  }

  else if (!*(this + 4))
  {
    v34 = 0x10000000FLL;
    goto LABEL_63;
  }

  v34 = 0;
LABEL_63:
  v64 = 0;
  v65 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v34, 0x102u, &v64, "", 0, &v55);
  v35 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v36 = v58;
  v58 = 0uLL;
  v37 = *(&v60 + 1);
  v60 = v36;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(&v58 + 1);
  v39 = __p[0];
  if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (v39)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 - 1, 259, &v61, &v55);
  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v40 = v58;
  v58 = 0uLL;
  v41 = *(&v60 + 1);
  v60 = v40;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *(&v58 + 1);
  v43 = __p[0];
  if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (v43)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4, 260, &v61, &v55);
  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v44 = v58;
  v58 = 0uLL;
  v45 = *(&v60 + 1);
  v60 = v44;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  v46 = *(&v58 + 1);
  v47 = __p[0];
  if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (v47)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 + 1, 261, &v61, &v55);
  v48 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v48)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 + 2, 262, &v61, &v55);
  v49 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v49)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 + 3, 263, &v61, &v55);
  v50 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v50)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v9, 264, &v61, &v55);
  v51 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v51)
  {
    goto LABEL_105;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<512ul,false>,true>(&v55, this, v6, 0x109u, &v61);
  v52 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v52)
  {
    goto LABEL_105;
  }

  (*(*this + 32))(&v55, this, v62);
  v53 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v53)
  {
    goto LABEL_105;
  }

  *a2 = *v62;
  *(a2 + 16) = v63;
  v62[1] = 0;
  v63 = 0;
  v62[0] = 0;
  *(a2 + 48) = 0;
  v54 = *(&v60 + 1);
  if (*(&v60 + 1) && !atomic_fetch_add((*(&v60 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
  }

LABEL_106:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }
}

void sub_297D3D3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::cust::Periodic_Write_Heb_Req::getSize(mipc::cust::Periodic_Write_Heb_Req *this)
{
  v1 = *(this + 20);
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

  v4 = vdupq_n_s64(8uLL);
  return &v1[*(this + 19) != 0] + vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v4, vceqzq_s64(*(this + 120)))), vaddq_s64(vbicq_s8(v4, vceqzq_s64(*(this + 104))), vbicq_s8(v4, vceqzq_s64(*(this + 136))))));
}

mipc::cust::Periodic_Write_Heb_Cnf *mipc::cust::Periodic_Write_Heb_Cnf::Periodic_Write_Heb_Cnf(mipc::cust::Periodic_Write_Heb_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14629, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E86560;
  *(this + 11) = 0;
  mipc::cust::Periodic_Write_Heb_Cnf::deserialize(this, &v7);
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

void sub_297D3D5E4(_Unwind_Exception *a1)
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

void mipc::cust::Periodic_Write_Heb_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Periodic_Write_Heb_Cnf::Periodic_Write_Heb_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14629, &v14, a3, 2);
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
  *a1 = &unk_2A1E8ACE8;
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
  *a1 = &unk_2A1E86560;
  a1[11] = 0;
  return a1;
}

void sub_297D3D9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Periodic_Write_Heb_Cnf::~Periodic_Write_Heb_Cnf(mipc::cust::Periodic_Write_Heb_Cnf *this)
{
  *this = &unk_2A1E86560;
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
  *this = &unk_2A1E86560;
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
  *this = &unk_2A1E86560;
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

uint64_t mipc::cust::Periodic_Write_Heb_Cnf::getSize(mipc::cust::Periodic_Write_Heb_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Req::Get_Heb_Periodic_Write_Runtime_Status_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14630;
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
  *a1 = &unk_2A1E865A8;
  return result;
}

{
  *(a1 + 8) = 14630;
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
  *a1 = &unk_2A1E865A8;
  return result;
}

void mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Req::~Get_Heb_Periodic_Write_Runtime_Status_Req(mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Req *this)
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

void mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Req::serialize(mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297D3E428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf *mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf::Get_Heb_Periodic_Write_Runtime_Status_Cnf(mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14631, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E865F0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf::deserialize(this, v7);
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

void sub_297D3E598(_Unwind_Exception *a1)
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

void mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v24);
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

uint64_t mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf::Get_Heb_Periodic_Write_Runtime_Status_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14631, &v14, a3, 2);
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
  *a1 = &unk_2A1E8AD30;
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
  *a1 = &unk_2A1E865F0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_297D3EE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf::~Get_Heb_Periodic_Write_Runtime_Status_Cnf(mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf *this)
{
  *this = &unk_2A1E865F0;
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
  mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf::~Get_Heb_Periodic_Write_Runtime_Status_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::cust::Get_Heb_Periodic_Write_Runtime_Status_Cnf::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1;
}

double mipc::cust::Periodic_Read_Heb_Req::Periodic_Read_Heb_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14632;
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
  *a1 = &unk_2A1E86638;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

{
  *(a1 + 8) = 14632;
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
  *a1 = &unk_2A1E86638;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

void mipc::cust::Periodic_Read_Heb_Req::~Periodic_Read_Heb_Req(mipc::cust::Periodic_Read_Heb_Req *this)
{
  *this = &unk_2A1E86638;
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
  mipc::cust::Periodic_Read_Heb_Req::~Periodic_Read_Heb_Req(this);

  operator delete(v1);
}

void mipc::cust::Periodic_Read_Heb_Req::serialize(mipc::cust::Periodic_Read_Heb_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v5 = (this + 136);
  v6 = vdupq_n_s64(8uLL);
  v7 = (this + 152);
  v8 = (this + 160);
  v9 = vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v6, vceqzq_s64(*(this + 120)))), vaddq_s64(vbicq_s8(v6, vceqzq_s64(*(this + 104))), vbicq_s8(v6, vceqzq_s64(*(this + 136)))))) + 8 * (*(this + 19) != 0) + 8 * (*(this + 20) != 0);
  v60[0] = operator new(v9);
  v61 = v60[0] + v9;
  bzero(v60[0], v9);
  v60[1] = v60[0] + v9;
  v59 = v60[0];
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
  v10 = v56;
  v56 = 0uLL;
  v11 = *(&v58 + 1);
  v58 = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = *(&v56 + 1);
    v13 = __p[0];
    if (!*(&v56 + 1))
    {
LABEL_7:
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(v54);
      if (v13)
      {
        goto LABEL_102;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = *(&v56 + 1);
    v13 = __p[0];
    if (!*(&v56 + 1))
    {
      goto LABEL_7;
    }
  }

  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v13)
  {
    goto LABEL_102;
  }

LABEL_14:
  if (*(this + 11))
  {
    *v59 = 256;
    v14 = v59++;
    v14[1] = 2;
    v15 = v59++;
    v15[1] = **(this + 11);
    v59 += 2;
  }

  else if (!*(this + 4))
  {
    v16 = 0x10000000FLL;
    goto LABEL_18;
  }

  v16 = 0;
LABEL_18:
  v62 = 0;
  v63 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v16, 0x100u, &v62, "", 0, &v53);
  v17 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    __p[0] = v53;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_21:
    operator delete(__p[1]);
  }

LABEL_22:
  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v18 = v56;
  v56 = 0uLL;
  v19 = *(&v58 + 1);
  v58 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = *(&v56 + 1);
    v21 = __p[0];
    if (!*(&v56 + 1))
    {
LABEL_26:
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_34:
      operator delete(v54);
      if (v21)
      {
        goto LABEL_102;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v20 = *(&v56 + 1);
    v21 = __p[0];
    if (!*(&v56 + 1))
    {
      goto LABEL_26;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_26;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v21)
  {
    goto LABEL_102;
  }

LABEL_35:
  if (*(this + 12))
  {
    *v59 = 257;
    v22 = v59++;
    v22[1] = 1;
    v23 = v59++;
    *(v23 + 2) = **(this + 12);
    v59 += 2;
  }

  else if (!*(this + 4))
  {
    v24 = 0x10000000FLL;
    goto LABEL_40;
  }

  v24 = 0;
LABEL_40:
  v62 = 0;
  v63 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v24, 0x101u, &v62, "", 0, &v53);
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
    if (!v29)
    {
      goto LABEL_55;
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

  if (v29)
  {
    goto LABEL_102;
  }

LABEL_55:
  if (*(this + 13))
  {
    *v59 = 258;
    v30 = v59++;
    v30[1] = 2;
    v31 = v59++;
    v31[1] = **(this + 13);
    v59 += 2;
  }

  else if (!*(this + 4))
  {
    v32 = 0x10000000FLL;
    goto LABEL_60;
  }

  v32 = 0;
LABEL_60:
  v62 = 0;
  v63 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v32, 0x102u, &v62, "", 0, &v53);
  v33 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
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

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 14, 259, &v59, &v53);
  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v38 = v56;
  v56 = 0uLL;
  v39 = *(&v58 + 1);
  v58 = v38;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = *(&v56 + 1);
  v41 = __p[0];
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v41)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4, 260, &v59, &v53);
  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v42 = v56;
  v56 = 0uLL;
  v43 = *(&v58 + 1);
  v58 = v42;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  v44 = *(&v56 + 1);
  v45 = __p[0];
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v45)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 16, 261, &v59, &v53);
  v46 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v46)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v5, 262, &v59, &v53);
  v47 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v47)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 18, 263, &v59, &v53);
  v48 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v48)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v7, 264, &v59, &v53);
  v49 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v49)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v8, 265, &v59, &v53);
  v50 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v50)
  {
    goto LABEL_102;
  }

  (*(*this + 32))(&v53, this, v60);
  v51 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v51)
  {
    goto LABEL_102;
  }

  *a2 = *v60;
  *(a2 + 16) = v61;
  v60[1] = 0;
  v61 = 0;
  v60[0] = 0;
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

  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }
}

void sub_297D3FEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mipc::cust::Periodic_Read_Heb_Cnf *mipc::cust::Periodic_Read_Heb_Cnf::Periodic_Read_Heb_Cnf(mipc::cust::Periodic_Read_Heb_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14633, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E86680;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::cust::Periodic_Read_Heb_Cnf::deserialize(this, v7);
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

void sub_297D400D8(_Unwind_Exception *a1)
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

void mipc::cust::Periodic_Read_Heb_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<512ul,false>,false>(this, this + 12, 0x101u, &v12);
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

void *mipc::cust::Periodic_Read_Heb_Cnf::Periodic_Read_Heb_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14633, &v14, a3, 2);
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
  *a1 = &unk_2A1E8AD78;
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
  *a1 = &unk_2A1E86680;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297D405F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Periodic_Read_Heb_Cnf::~Periodic_Read_Heb_Cnf(mipc::cust::Periodic_Read_Heb_Cnf *this)
{
  *this = &unk_2A1E86680;
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
  *this = &unk_2A1E86680;
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
  *this = &unk_2A1E86680;
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

void *mipc::cust::Periodic_Read_Heb_Cnf::getSize(mipc::cust::Periodic_Read_Heb_Cnf *this)
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

double mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Req::Get_Heb_Periodic_Read_Runtime_Status_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14634;
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
  *a1 = &unk_2A1E866C8;
  return result;
}

{
  *(a1 + 8) = 14634;
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
  *a1 = &unk_2A1E866C8;
  return result;
}

void mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Req::~Get_Heb_Periodic_Read_Runtime_Status_Req(mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Req *this)
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

void mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Req::serialize(mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297D410D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf *mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf::Get_Heb_Periodic_Read_Runtime_Status_Cnf(mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14635, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E86710;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf::deserialize(this, &v7);
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

void sub_297D41240(_Unwind_Exception *a1)
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

void mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, &v28);
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
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, &v28);
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
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 13, 0x102u, &v28);
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
      mipc::Message::deserializeTlv<unsigned char,false>(this, this + 14, 0x103u, &v28);
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
        mipc::Message::deserializeTlv<unsigned char,false>(this, this + 15, 0x104u, &v28);
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
          mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<512ul,false>,false>(this, this + 16, 0x105u, &v28);
          mipc::Error::operator=(a2, &v28);
          mipc::Error::~Error(&v28);
        }
      }
    }
  }
}

uint64_t mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf::Get_Heb_Periodic_Read_Runtime_Status_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14635, &v14, a3, 2);
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
  *a1 = &unk_2A1E8ADC0;
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
  *a1 = &unk_2A1E86710;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_297D41C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf::~Get_Heb_Periodic_Read_Runtime_Status_Cnf(mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf *this)
{
  *this = &unk_2A1E86710;
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
  mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf::~Get_Heb_Periodic_Read_Runtime_Status_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::cust::Get_Heb_Periodic_Read_Runtime_Status_Cnf::getSize(int64x2_t *this)
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

double mipc::cust::Set_Heb_Loopback_Req::Set_Heb_Loopback_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14636;
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
  *a1 = &unk_2A1E86758;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

{
  *(a1 + 8) = 14636;
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
  *a1 = &unk_2A1E86758;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

void mipc::cust::Set_Heb_Loopback_Req::~Set_Heb_Loopback_Req(mipc::cust::Set_Heb_Loopback_Req *this)
{
  *this = &unk_2A1E86758;
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
  mipc::cust::Set_Heb_Loopback_Req::~Set_Heb_Loopback_Req(this);

  operator delete(v1);
}

void mipc::cust::Set_Heb_Loopback_Req::serialize(mipc::cust::Set_Heb_Loopback_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v5 = (this + 136);
  v6 = vdupq_n_s64(8uLL);
  v7 = (this + 152);
  v8 = (this + 160);
  v9 = vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v6, vceqzq_s64(*(this + 120)))), vaddq_s64(vbicq_s8(v6, vceqzq_s64(*(this + 104))), vbicq_s8(v6, vceqzq_s64(*(this + 136)))))) + 8 * (*(this + 19) != 0) + 8 * (*(this + 20) != 0);
  v60[0] = operator new(v9);
  v61 = v60[0] + v9;
  bzero(v60[0], v9);
  v60[1] = v60[0] + v9;
  v59 = v60[0];
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
  v10 = v56;
  v56 = 0uLL;
  v11 = *(&v58 + 1);
  v58 = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = *(&v56 + 1);
    v13 = __p[0];
    if (!*(&v56 + 1))
    {
LABEL_7:
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(v54);
      if (v13)
      {
        goto LABEL_102;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = *(&v56 + 1);
    v13 = __p[0];
    if (!*(&v56 + 1))
    {
      goto LABEL_7;
    }
  }

  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v13)
  {
    goto LABEL_102;
  }

LABEL_14:
  if (*(this + 11))
  {
    *v59 = 256;
    v14 = v59++;
    v14[1] = 1;
    v15 = v59++;
    *(v15 + 2) = **(this + 11);
    v59 += 2;
  }

  else if (!*(this + 4))
  {
    v16 = 0x10000000FLL;
    goto LABEL_18;
  }

  v16 = 0;
LABEL_18:
  v62 = 0;
  v63 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v16, 0x100u, &v62, "", 0, &v53);
  v17 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    __p[0] = v53;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_21:
    operator delete(__p[1]);
  }

LABEL_22:
  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v18 = v56;
  v56 = 0uLL;
  v19 = *(&v58 + 1);
  v58 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = *(&v56 + 1);
    v21 = __p[0];
    if (!*(&v56 + 1))
    {
LABEL_26:
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_34:
      operator delete(v54);
      if (v21)
      {
        goto LABEL_102;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v20 = *(&v56 + 1);
    v21 = __p[0];
    if (!*(&v56 + 1))
    {
      goto LABEL_26;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_26;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v21)
  {
    goto LABEL_102;
  }

LABEL_35:
  if (*(this + 12))
  {
    *v59 = 257;
    v22 = v59++;
    v22[1] = 1;
    v23 = v59++;
    *(v23 + 2) = **(this + 12);
    v59 += 2;
  }

  else if (!*(this + 4))
  {
    v24 = 0x10000000FLL;
    goto LABEL_40;
  }

  v24 = 0;
LABEL_40:
  v62 = 0;
  v63 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v24, 0x101u, &v62, "", 0, &v53);
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
    if (!v29)
    {
      goto LABEL_55;
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

  if (v29)
  {
    goto LABEL_102;
  }

LABEL_55:
  if (*(this + 13))
  {
    *v59 = 258;
    v30 = v59++;
    v30[1] = 1;
    v31 = v59++;
    *(v31 + 2) = **(this + 13);
    v59 += 2;
  }

  else if (!*(this + 4))
  {
    v32 = 0x10000000FLL;
    goto LABEL_60;
  }

  v32 = 0;
LABEL_60:
  v62 = 0;
  v63 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v32, 0x102u, &v62, "", 0, &v53);
  v33 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
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

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 14, 259, &v59, &v53);
  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v38 = v56;
  v56 = 0uLL;
  v39 = *(&v58 + 1);
  v58 = v38;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = *(&v56 + 1);
  v41 = __p[0];
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v41)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4, 260, &v59, &v53);
  __p[0] = v53;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v54;
  __p[3] = v55;
  HIBYTE(v55) = 0;
  LOBYTE(v54) = 0;
  v42 = v56;
  v56 = 0uLL;
  v43 = *(&v58 + 1);
  v58 = v42;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  v44 = *(&v56 + 1);
  v45 = __p[0];
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v45)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 16, 261, &v59, &v53);
  v46 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v46)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v5, 262, &v59, &v53);
  v47 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v47)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 18, 263, &v59, &v53);
  v48 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v48)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v7, 264, &v59, &v53);
  v49 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v49)
  {
    goto LABEL_102;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v8, 265, &v59, &v53);
  v50 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v50)
  {
    goto LABEL_102;
  }

  (*(*this + 32))(&v53, this, v60);
  v51 = *mipc::Error::operator=(__p, &v53);
  mipc::Error::~Error(&v53);
  if (v51)
  {
    goto LABEL_102;
  }

  *a2 = *v60;
  *(a2 + 16) = v61;
  v60[1] = 0;
  v61 = 0;
  v60[0] = 0;
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

  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }
}

void sub_297D42CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mipc::cust::Set_Heb_Loopback_Cnf *mipc::cust::Set_Heb_Loopback_Cnf::Set_Heb_Loopback_Cnf(mipc::cust::Set_Heb_Loopback_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14637, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E867A0;
  *(this + 11) = 0;
  mipc::cust::Set_Heb_Loopback_Cnf::deserialize(this, &v7);
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

void sub_297D42EF4(_Unwind_Exception *a1)
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

void mipc::cust::Set_Heb_Loopback_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Set_Heb_Loopback_Cnf::Set_Heb_Loopback_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14637, &v14, a3, 2);
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
  *a1 = &unk_2A1E8AE08;
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
  *a1 = &unk_2A1E867A0;
  a1[11] = 0;
  return a1;
}

void sub_297D432F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Set_Heb_Loopback_Cnf::~Set_Heb_Loopback_Cnf(mipc::cust::Set_Heb_Loopback_Cnf *this)
{
  *this = &unk_2A1E867A0;
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
  *this = &unk_2A1E867A0;
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
  *this = &unk_2A1E867A0;
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

uint64_t mipc::cust::Set_Heb_Loopback_Cnf::getSize(mipc::cust::Set_Heb_Loopback_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::cust::Set_Heb_Write_Buf_Req::Set_Heb_Write_Buf_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14638;
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
  *a1 = &unk_2A1E867E8;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 14638;
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
  *a1 = &unk_2A1E867E8;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::cust::Set_Heb_Write_Buf_Req::~Set_Heb_Write_Buf_Req(mipc::cust::Set_Heb_Write_Buf_Req *this)
{
  *this = &unk_2A1E867E8;
  v2 = *(this + 13);
  *(this + 13) = 0;
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
  *this = &unk_2A1E867E8;
  v2 = *(this + 13);
  *(this + 13) = 0;
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
  *this = &unk_2A1E867E8;
  v2 = *(this + 13);
  *(this + 13) = 0;
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

void mipc::cust::Set_Heb_Write_Buf_Req::serialize(mipc::cust::Set_Heb_Write_Buf_Req *this@<X0>, uint64_t a2@<X8>)
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
  v9 = v4 + vbslq_s8(v8, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v8).i64[1];
  v43[0] = operator new(v9);
  v44 = v43[0] + v9;
  bzero(v43[0], v9);
  v43[1] = v43[0] + v9;
  v42 = v43[0];
  v41 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v36, this, &v42);
  v10 = v39;
  *&__p[1] = *v37;
  __p[3] = v38;
  __p[0] = v36;
  v41 = v39;
  if (v36)
  {
    *a2 = v36;
    *(a2 + 8) = *&__p[1];
    v11 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
LABEL_70:
    *(a2 + 48) = 1;
    goto LABEL_71;
  }

  if (*(this + 11))
  {
    *v42 = 256;
    v12 = v42++;
    v12[1] = 1;
    v13 = v42++;
    *(v13 + 2) = **(this + 11);
    v42 += 2;
  }

  else if (!*(this + 4))
  {
    v14 = 0x10000000FLL;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_10:
  v45 = 0;
  v46 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v14, 0x100u, &v45, "", 0, &v36);
  v15 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    __p[0] = v36;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __p[0] = v36;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_13:
    operator delete(__p[1]);
  }

LABEL_14:
  *&__p[1] = *v37;
  __p[3] = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37[0]) = 0;
  v16 = v39;
  v39 = 0uLL;
  v41 = v16;
  if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v10 + 1) + 16))(*(&v10 + 1));
    std::__shared_weak_count::__release_weak(*(&v10 + 1));
    v17 = *(&v39 + 1);
    v18 = __p[0];
    if (!*(&v39 + 1))
    {
LABEL_18:
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_26:
      operator delete(v37[0]);
      if (v18)
      {
        goto LABEL_69;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = *(&v39 + 1);
    v18 = __p[0];
    if (!*(&v39 + 1))
    {
      goto LABEL_18;
    }
  }

  if (atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (v18)
  {
    goto LABEL_69;
  }

LABEL_27:
  if (*(this + 12))
  {
    *v42 = 257;
    v19 = v42++;
    v19[1] = 2;
    v20 = v42++;
    v20[1] = **(this + 12);
    v42 += 2;
  }

  else if (!*(this + 4))
  {
    v21 = 0x10000000FLL;
    goto LABEL_32;
  }

  v21 = 0;
LABEL_32:
  v45 = 0;
  v46 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v21, 0x101u, &v45, "", 0, &v36);
  v22 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  __p[0] = v36;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v37;
  __p[3] = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37[0]) = 0;
  v23 = v39;
  v39 = 0uLL;
  v24 = *(&v41 + 1);
  v41 = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v39 + 1);
  v26 = __p[0];
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
    if (!v26)
    {
      goto LABEL_47;
    }

LABEL_69:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v41;
    goto LABEL_70;
  }

  if (v26)
  {
    goto LABEL_69;
  }

LABEL_47:
  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<512ul,false>,true>(&v36, this, v5, 0x102u, &v42);
  __p[0] = v36;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v37;
  __p[3] = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37[0]) = 0;
  v27 = v39;
  v39 = 0uLL;
  v28 = *(&v41 + 1);
  v41 = v27;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(&v39 + 1);
  v30 = __p[0];
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (v30)
  {
    goto LABEL_69;
  }

  (*(*this + 32))(&v36, this, v43);
  __p[0] = v36;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v37;
  __p[3] = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37[0]) = 0;
  v31 = v39;
  v39 = 0uLL;
  v32 = *(&v41 + 1);
  v41 = v31;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&v39 + 1);
  v34 = __p[0];
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (v34)
  {
    goto LABEL_69;
  }

  *a2 = *v43;
  *(a2 + 16) = v44;
  v43[1] = 0;
  v44 = 0;
  v43[0] = 0;
  *(a2 + 48) = 0;
  v35 = *(&v41 + 1);
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

LABEL_71:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }
}

void sub_297D44388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t mipc::cust::Set_Heb_Write_Buf_Req::getSize(mipc::cust::Set_Heb_Write_Buf_Req *this)
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
  return v1 + vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1];
}

mipc::cust::Set_Heb_Write_Buf_Cnf *mipc::cust::Set_Heb_Write_Buf_Cnf::Set_Heb_Write_Buf_Cnf(mipc::cust::Set_Heb_Write_Buf_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14639, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E86830;
  *(this + 11) = 0;
  mipc::cust::Set_Heb_Write_Buf_Cnf::deserialize(this, &v7);
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

void sub_297D44548(_Unwind_Exception *a1)
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

void mipc::cust::Set_Heb_Write_Buf_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Set_Heb_Write_Buf_Cnf::Set_Heb_Write_Buf_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14639, &v14, a3, 2);
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
  *a1 = &unk_2A1E8AE50;
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
  *a1 = &unk_2A1E86830;
  a1[11] = 0;
  return a1;
}

void sub_297D44944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Set_Heb_Write_Buf_Cnf::~Set_Heb_Write_Buf_Cnf(mipc::cust::Set_Heb_Write_Buf_Cnf *this)
{
  *this = &unk_2A1E86830;
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
  *this = &unk_2A1E86830;
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
  *this = &unk_2A1E86830;
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

uint64_t mipc::cust::Set_Heb_Write_Buf_Cnf::getSize(mipc::cust::Set_Heb_Write_Buf_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::cust::Get_Heb_Read_Buf_Req::Get_Heb_Read_Buf_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14640;
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
  *a1 = &unk_2A1E86878;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 14640;
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
  *a1 = &unk_2A1E86878;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::cust::Get_Heb_Read_Buf_Req::~Get_Heb_Read_Buf_Req(mipc::cust::Get_Heb_Read_Buf_Req *this)
{
  *this = &unk_2A1E86878;
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
  *this = &unk_2A1E86878;
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
  *this = &unk_2A1E86878;
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

void mipc::cust::Get_Heb_Read_Buf_Req::serialize(mipc::cust::Get_Heb_Read_Buf_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vceqzq_s64(*(this + 88));
  v5 = vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1] + 8 * (*(this + 13) != 0);
  *&v43 = operator new(v5);
  v44 = v43 + v5;
  bzero(v43, v5);
  *(&v43 + 1) = v43 + v5;
  v42 = v43;
  v41 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v36, this, &v42);
  v6 = v39;
  *&__p[1] = *v37;
  __p[3] = v38;
  __p[0] = v36;
  v41 = v39;
  if (v36)
  {
    *a2 = v36;
    *(a2 + 8) = *&__p[1];
    v7 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
LABEL_75:
    *(a2 + 48) = 1;
    goto LABEL_76;
  }

  if (*(this + 11))
  {
    *v42 = 256;
    v8 = v42++;
    v8[1] = 1;
    v9 = v42++;
    *(v9 + 2) = **(this + 11);
    v42 += 2;
  }

  else if (!*(this + 4))
  {
    v10 = 0x10000000FLL;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v45 = 0;
  v46 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v10, 0x100u, &v45, "", 0, &v36);
  v11 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    __p[0] = v36;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __p[0] = v36;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_10:
    operator delete(__p[1]);
  }

LABEL_11:
  *&__p[1] = *v37;
  __p[3] = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37[0]) = 0;
  v12 = v39;
  v39 = 0uLL;
  v41 = v12;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
    v13 = *(&v39 + 1);
    v14 = __p[0];
    if (!*(&v39 + 1))
    {
LABEL_15:
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_23:
      operator delete(v37[0]);
      if (v14)
      {
        goto LABEL_74;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = *(&v39 + 1);
    v14 = __p[0];
    if (!*(&v39 + 1))
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
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v14)
  {
    goto LABEL_74;
  }

LABEL_24:
  if (*(this + 12))
  {
    *v42 = 257;
    v15 = v42++;
    v15[1] = 2;
    v16 = v42++;
    v16[1] = **(this + 12);
    v42 += 2;
  }

  else if (!*(this + 4))
  {
    v17 = 0x10000000FLL;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_29:
  v45 = 0;
  v46 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v17, 0x101u, &v45, "", 0, &v36);
  v18 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  __p[0] = v36;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v37;
  __p[3] = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37[0]) = 0;
  v19 = v39;
  v39 = 0uLL;
  v20 = *(&v41 + 1);
  v41 = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *(&v39 + 1);
  v22 = __p[0];
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
    if (!v22)
    {
      goto LABEL_44;
    }

LABEL_74:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v41;
    goto LABEL_75;
  }

  if (v22)
  {
    goto LABEL_74;
  }

LABEL_44:
  if (*(this + 13))
  {
    *v42 = 258;
    v23 = v42++;
    v23[1] = 2;
    v24 = v42++;
    v24[1] = **(this + 13);
    v42 += 2;
  }

  else if (!*(this + 4))
  {
    v25 = 0x10000000FLL;
    goto LABEL_49;
  }

  v25 = 0;
LABEL_49:
  v45 = 0;
  v46 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v25, 0x102u, &v45, "", 0, &v36);
  v26 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  __p[0] = v36;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v37;
  __p[3] = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37[0]) = 0;
  v27 = v39;
  v39 = 0uLL;
  v28 = *(&v41 + 1);
  v41 = v27;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = *(&v39 + 1);
  v30 = __p[0];
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (v30)
  {
    goto LABEL_74;
  }

  (*(*this + 32))(&v36, this, &v43);
  __p[0] = v36;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v37;
  __p[3] = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37[0]) = 0;
  v31 = v39;
  v39 = 0uLL;
  v32 = *(&v41 + 1);
  v41 = v31;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&v39 + 1);
  v34 = __p[0];
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (v34)
  {
    goto LABEL_74;
  }

  *a2 = v43;
  *(a2 + 16) = v44;
  v44 = 0;
  v43 = 0uLL;
  *(a2 + 48) = 0;
  v35 = *(&v41 + 1);
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

LABEL_76:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }
}

void sub_297D45A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::cust::Get_Heb_Read_Buf_Cnf *mipc::cust::Get_Heb_Read_Buf_Cnf::Get_Heb_Read_Buf_Cnf(mipc::cust::Get_Heb_Read_Buf_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14641, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E868C0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::cust::Get_Heb_Read_Buf_Cnf::deserialize(this, v7);
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

void sub_297D45BE0(_Unwind_Exception *a1)
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

void mipc::cust::Get_Heb_Read_Buf_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<512ul,false>,false>(this, this + 12, 0x101u, &v12);
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

void *mipc::cust::Get_Heb_Read_Buf_Cnf::Get_Heb_Read_Buf_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14641, &v14, a3, 2);
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
  *a1 = &unk_2A1E8AE98;
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
  *a1 = &unk_2A1E868C0;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297D460F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Get_Heb_Read_Buf_Cnf::~Get_Heb_Read_Buf_Cnf(mipc::cust::Get_Heb_Read_Buf_Cnf *this)
{
  *this = &unk_2A1E868C0;
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
  *this = &unk_2A1E868C0;
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
  *this = &unk_2A1E868C0;
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

void *mipc::cust::Get_Heb_Read_Buf_Cnf::getSize(mipc::cust::Get_Heb_Read_Buf_Cnf *this)
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

double mipc::cust::Set_Idc_Testmode_Req::Set_Idc_Testmode_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14642;
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
  *a1 = &unk_2A1E86908;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 14642;
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
  *a1 = &unk_2A1E86908;
  *(a1 + 88) = 0;
  return result;
}

void mipc::cust::Set_Idc_Testmode_Req::~Set_Idc_Testmode_Req(mipc::cust::Set_Idc_Testmode_Req *this)
{
  *this = &unk_2A1E86908;
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
  *this = &unk_2A1E86908;
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
  *this = &unk_2A1E86908;
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

void mipc::cust::Set_Idc_Testmode_Req::serialize(mipc::cust::Set_Idc_Testmode_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297D46E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::cust::Set_Idc_Testmode_Req::getSize(mipc::cust::Set_Idc_Testmode_Req *this)
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

mipc::cust::Set_Idc_Testmode_Cnf *mipc::cust::Set_Idc_Testmode_Cnf::Set_Idc_Testmode_Cnf(mipc::cust::Set_Idc_Testmode_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14643, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E86950;
  *(this + 11) = 0;
  mipc::cust::Set_Idc_Testmode_Cnf::deserialize(this, &v7);
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

void sub_297D46FDC(_Unwind_Exception *a1)
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

void mipc::cust::Set_Idc_Testmode_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Set_Idc_Testmode_Cnf::Set_Idc_Testmode_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14643, &v14, a3, 2);
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
  *a1 = &unk_2A1E8AEE0;
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
  *a1 = &unk_2A1E86950;
  a1[11] = 0;
  return a1;
}

void sub_297D473D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Set_Idc_Testmode_Cnf::~Set_Idc_Testmode_Cnf(mipc::cust::Set_Idc_Testmode_Cnf *this)
{
  *this = &unk_2A1E86950;
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
  *this = &unk_2A1E86950;
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
  *this = &unk_2A1E86950;
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

uint64_t mipc::cust::Set_Idc_Testmode_Cnf::getSize(mipc::cust::Set_Idc_Testmode_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::cust::Write_Idc_Command_Req::Write_Idc_Command_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14644;
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
  *a1 = &unk_2A1E86998;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

{
  *(a1 + 8) = 14644;
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
  *a1 = &unk_2A1E86998;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

void mipc::cust::Write_Idc_Command_Req::~Write_Idc_Command_Req(mipc::cust::Write_Idc_Command_Req *this)
{
  *this = &unk_2A1E86998;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
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
  mipc::cust::Write_Idc_Command_Req::~Write_Idc_Command_Req(this);

  operator delete(v1);
}

void mipc::cust::Write_Idc_Command_Req::serialize(mipc::cust::Write_Idc_Command_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v6 = (this + 144);
  v5 = *(this + 18);
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

  v9 = (this + 136);
  v10 = vdupq_n_s64(8uLL);
  v11.i64[0] = *(this + 17);
  v11.i64[1] = *(this + 19);
  v12 = v5 + vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v10, vceqzq_s64(*(this + 104)))), vaddq_s64(vbicq_s8(v10, vceqzq_s64(*(this + 120))), vbicq_s8(v10, vceqzq_s64(v11)))));
  v62[0] = operator new(v12);
  v63 = v62[0] + v12;
  bzero(v62[0], v12);
  v62[1] = v62[0] + v12;
  v61 = v62[0];
  v60 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v55, this, &v61);
  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v13 = v58;
  v58 = 0uLL;
  v14 = *(&v60 + 1);
  v60 = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = *(&v58 + 1);
    v16 = __p[0];
    if (!*(&v58 + 1))
    {
LABEL_10:
      if ((SHIBYTE(v57) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      operator delete(v56);
      if (v16)
      {
        goto LABEL_104;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(&v58 + 1);
    v16 = __p[0];
    if (!*(&v58 + 1))
    {
      goto LABEL_10;
    }
  }

  if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_10;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (SHIBYTE(v57) < 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v16)
  {
    goto LABEL_104;
  }

LABEL_17:
  if (*(this + 11))
  {
    *v61 = 256;
    v17 = v61++;
    v17[1] = 1;
    v18 = v61++;
    *(v18 + 2) = **(this + 11);
    v61 += 2;
  }

  else if (!*(this + 4))
  {
    v19 = 0x10000000FLL;
    goto LABEL_21;
  }

  v19 = 0;
LABEL_21:
  v64 = 0;
  v65 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v19, 0x100u, &v64, "", 0, &v55);
  v20 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    __p[0] = v55;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_24:
    operator delete(__p[1]);
  }

LABEL_25:
  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v21 = v58;
  v58 = 0uLL;
  v22 = *(&v60 + 1);
  v60 = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v23 = *(&v58 + 1);
    v24 = __p[0];
    if (!*(&v58 + 1))
    {
LABEL_29:
      if ((SHIBYTE(v57) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_37:
      operator delete(v56);
      if (v24)
      {
        goto LABEL_104;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v23 = *(&v58 + 1);
    v24 = __p[0];
    if (!*(&v58 + 1))
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
  if (SHIBYTE(v57) < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v24)
  {
    goto LABEL_104;
  }

LABEL_38:
  if (*(this + 12))
  {
    *v61 = 257;
    v25 = v61++;
    v25[1] = 2;
    v26 = v61++;
    v26[1] = **(this + 12);
    v61 += 2;
  }

  else if (!*(this + 4))
  {
    v27 = 0x10000000FLL;
    goto LABEL_43;
  }

  v27 = 0;
LABEL_43:
  v64 = 0;
  v65 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v27, 0x101u, &v64, "", 0, &v55);
  v28 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v29 = v58;
  v58 = 0uLL;
  v30 = *(&v60 + 1);
  v60 = v29;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *(&v58 + 1);
  v32 = __p[0];
  if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
    if (!v32)
    {
      goto LABEL_58;
    }

LABEL_104:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v60;
    v60 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_105;
  }

  if (v32)
  {
    goto LABEL_104;
  }

LABEL_58:
  if (*(this + 13))
  {
    *v61 = 258;
    v33 = v61++;
    v33[1] = 1;
    v34 = v61++;
    *(v34 + 2) = **(this + 13);
    v61 += 2;
  }

  else if (!*(this + 4))
  {
    v35 = 0x10000000FLL;
    goto LABEL_63;
  }

  v35 = 0;
LABEL_63:
  v64 = 0;
  v65 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v35, 0x102u, &v64, "", 0, &v55);
  v36 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v37 = v58;
  v58 = 0uLL;
  v38 = *(&v60 + 1);
  v60 = v37;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v39 = *(&v58 + 1);
  v40 = __p[0];
  if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (v40)
  {
    goto LABEL_104;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 - 1, 259, &v61, &v55);
  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v41 = v58;
  v58 = 0uLL;
  v42 = *(&v60 + 1);
  v60 = v41;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  v43 = *(&v58 + 1);
  v44 = __p[0];
  if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (v44)
  {
    goto LABEL_104;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4, 260, &v61, &v55);
  __p[0] = v55;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v56;
  __p[3] = v57;
  HIBYTE(v57) = 0;
  LOBYTE(v56) = 0;
  v45 = v58;
  v58 = 0uLL;
  v46 = *(&v60 + 1);
  v60 = v45;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = *(&v58 + 1);
  v48 = __p[0];
  if (*(&v58 + 1) && !atomic_fetch_add((*(&v58 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (v48)
  {
    goto LABEL_104;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, v4 + 1, 261, &v61, &v55);
  v49 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v49)
  {
    goto LABEL_104;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v9, 262, &v61, &v55);
  v50 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v50)
  {
    goto LABEL_104;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<2048ul,false>,true>(this, v6, 0x107u, &v61, &v55);
  v51 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v51)
  {
    goto LABEL_104;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, this + 19, 264, &v61, &v55);
  v52 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v52)
  {
    goto LABEL_104;
  }

  (*(*this + 32))(&v55, this, v62);
  v53 = *mipc::Error::operator=(__p, &v55);
  mipc::Error::~Error(&v55);
  if (v53)
  {
    goto LABEL_104;
  }

  *a2 = *v62;
  *(a2 + 16) = v63;
  v62[1] = 0;
  v63 = 0;
  v62[0] = 0;
  *(a2 + 48) = 0;
  v54 = *(&v60 + 1);
  if (*(&v60 + 1) && !atomic_fetch_add((*(&v60 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
  }

LABEL_105:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }
}