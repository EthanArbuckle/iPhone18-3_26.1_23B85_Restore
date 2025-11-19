void sub_297AB0534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AB0548(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_297AB056C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_string_t<513ul,false>,false>(void *a1, std::__shared_weak_count **this, void ***a3, unsigned int a4)
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
    goto LABEL_30;
  }

  v11 = v27;
  v12 = *(&v27 + 1);
  v13 = *a3;
  *a3 = 0;
  if (v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    operator delete(v13);
  }

  if (v10)
  {
    if (v10 != 0x10000000ELL)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

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

  v10 = 0x100000003;
  if (!v11)
  {
    goto LABEL_25;
  }

  if (v11 <= 0x201)
  {
    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v14, v12, (v12 + v11 - 1), v11 - 1);
LABEL_24:
    v10 = 0;
    goto LABEL_25;
  }

  v10 = 0x100000010;
LABEL_25:
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

void sub_297AB087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AB0890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AB08AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sim::Sml_Rsu_Cnf::getSize(mipc::sim::Sml_Rsu_Cnf *this)
{
  v1 = *(this + 15);
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

  v7 = *(this + 21);
  if (v7)
  {
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v4 = __CFADD__(v9 - 65531, 0x10000);
    v7 = (v9 + 12) & 0xFFF8;
    if (!v4)
    {
      v7 = 0;
    }
  }

  v10 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v10 = 32;
  }

  v11.i64[1] = *(this + 17);
  v11.i64[0] = *(this + 14);
  v12 = vdupq_n_s64(8uLL);
  return &v5[(*(this + 18) != 0) + (*(this + 11) != 0)] + v7 + vaddvq_s64(vbicq_s8(v12, vceqzq_s64(*(this + 152)))) + v10 + v1 + vaddvq_s64(vaddq_s64(vbicq_s8(v12, vceqzq_s64(*(this + 6))), vbicq_s8(v12, vceqzq_s64(v11))));
}

double mipc::sim::Get_Psismsc_Req::Get_Psismsc_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1425;
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
  *a1 = &unk_2A1E65BC8;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 1425;
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
  *a1 = &unk_2A1E65BC8;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sim::Get_Psismsc_Req::~Get_Psismsc_Req(mipc::sim::Get_Psismsc_Req *this)
{
  *this = &unk_2A1E65BC8;
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
  *this = &unk_2A1E65BC8;
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
  *this = &unk_2A1E65BC8;
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

void mipc::sim::Get_Psismsc_Req::serialize(mipc::sim::Get_Psismsc_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AB12F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sim::Get_Psismsc_Req::getSize(mipc::sim::Get_Psismsc_Req *this)
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

mipc::sim::Get_Psismsc_Cnf *mipc::sim::Get_Psismsc_Cnf::Get_Psismsc_Cnf(mipc::sim::Get_Psismsc_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1426, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65C10;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::sim::Get_Psismsc_Cnf::deserialize(this, &v7);
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

void sub_297AB1474(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv_array<mipc::mipc_string_t<256ul,false>,20ul,false>::~tlv_array(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Psismsc_Cnf::deserialize(void ***this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,20ul,false>(&v8, this, this + 11);
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

void ***mipc::tlv_array<mipc::mipc_string_t<256ul,false>,20ul,false>::~tlv_array(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t mipc::sim::Get_Psismsc_Cnf::Get_Psismsc_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1426, &v14, a3, 2);
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
  *a1 = &unk_2A1E68790;
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
  *a1 = &unk_2A1E65C10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AB18E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Psismsc_Cnf::~Get_Psismsc_Cnf(mipc::sim::Get_Psismsc_Cnf *this)
{
  *this = &unk_2A1E65C10;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
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
  *this = &unk_2A1E65C10;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
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
  *this = &unk_2A1E65C10;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
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

void mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,20ul,false>(void *a1, mipc::Message *this, void ***a3)
{
  v4 = this;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v6;
  v50 = v6;
  *v48 = v6;
  *&v48[16] = v6;
  mipc::Message::findTLV(this, 0x100u, v48);
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
        if (v18 == 480)
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

        if (v22 > 0x100)
        {
          goto LABEL_77;
        }

        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v26 - 3, v24, (v24 + v22 - 1), v22 - 1);
        v36 = (((v22 + 11) & 0x3F8) - 4) & 0xFFFC;
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
  mipc::Message::handle<(mipc::Error::Type)2>(v4, v8, 0x100u, &v43, "", 0, a1);
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

void sub_297AB224C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AB2260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_297AB2284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t mipc::sim::Get_Psismsc_Cnf::getSize(mipc::sim::Get_Psismsc_Cnf *this)
{
  v1 = *(this + 88);
  v2 = *(this + 12);
  v3 = *(this + 11);
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
  if (HIDWORD(*(this + 4)))
  {
    v6 = 32;
  }

  return v4 + v6;
}

double mipc::sim::Get_Smsp_Req::Get_Smsp_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1427;
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
  *a1 = &unk_2A1E65C58;
  return result;
}

{
  *(a1 + 8) = 1427;
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
  *a1 = &unk_2A1E65C58;
  return result;
}

void mipc::sim::Get_Smsp_Req::~Get_Smsp_Req(mipc::sim::Get_Smsp_Req *this)
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

void mipc::sim::Get_Smsp_Req::serialize(mipc::sim::Get_Smsp_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AB2984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sim::Get_Smsp_Cnf *mipc::sim::Get_Smsp_Cnf::Get_Smsp_Cnf(mipc::sim::Get_Smsp_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1428, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65CA0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::sim::Get_Smsp_Cnf::deserialize(this, &v7);
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

void sub_297AB2AE8(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Smsp_Cnf::deserialize(mipc::sim::Get_Smsp_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(v57);
  v4 = *v57;
  *a2 = *v57;
  v6 = *(&v58 + 1);
  v5 = v58;
  *(a2 + 8) = *&v57[8];
  *(a2 + 24) = *&v57[24];
  *(a2 + 32) = __PAIR128__(v6, v5);
  if (v4)
  {
    return;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v7;
  v59 = v7;
  *v57 = v7;
  *&v57[16] = v7;
  mipc::Message::findTLV(this, 0x100u, v57);
  *&v56[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v56 = v8;
  *__p = v8;
  v54 = *v57;
  if ((v57[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v57[8], *&v57[16]);
  }

  else
  {
    *__p = *&v57[8];
    *v56 = *&v57[24];
  }

  *&v56[8] = v58;
  if (*(&v58 + 1))
  {
    atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v54;
  if (v54 && v54 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v54, &v48);
    goto LABEL_62;
  }

  v10 = v59;
  v11 = *(&v59 + 1);
  v13 = *(this + 11);
  v12 = *(this + 12);
  if (v12 != v13)
  {
    v14 = *(this + 12);
    do
    {
      v16 = *(v14 - 24);
      v14 -= 24;
      v15 = v16;
      if (v16)
      {
        *(v12 - 16) = v15;
        operator delete(v15);
      }

      v12 = v14;
    }

    while (v14 != v13);
  }

  *(this + 12) = v13;
  if (!v9)
  {
    if (v10 >= 8)
    {
      v17 = &v11[v10];
      v9 = 0x100000010;
      v45 = v6;
      while (1)
      {
        v18 = *(this + 11);
        v19 = *(this + 12);
        v20 = v19 - v18;
        if (v19 - v18 == 480)
        {
          break;
        }

        if ((v17 - v11) < 4)
        {
          v9 = 0x100000005;
          break;
        }

        if (v17 - v11 <= 2)
        {
          v21 = v17;
        }

        else
        {
          v21 = v11 + 2;
        }

        v22 = v17 - v21 <= 2;
        v25 = *v21;
        v23 = v21 + 2;
        v24 = v25;
        if (v22)
        {
          v26 = v17;
        }

        else
        {
          v26 = v23;
        }

        v27 = *(this + 13);
        if (v19 >= v27)
        {
          v29 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3) + 1;
          if (v29 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v18) >> 3);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0x555555555555555)
          {
            v31 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v31 = v29;
          }

          v47 = v31;
          if (v31)
          {
            if (v31 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v32 = operator new(24 * v31);
          }

          else
          {
            v32 = 0;
          }

          v33 = &v32[8 * (v20 >> 3)];
          *v33 = 0;
          *(v33 + 1) = 0;
          *(v33 + 2) = 0;
          v34 = &v33[-v20];
          if (v18 != v19)
          {
            v46 = v32;
            v35 = v18;
            v36 = v34;
            do
            {
              *v36 = *v35;
              *(v36 + 2) = *(v35 + 2);
              *v35 = 0;
              *(v35 + 1) = 0;
              *(v35 + 2) = 0;
              v35 += 24;
              v36 += 24;
            }

            while (v35 != v19);
            do
            {
              v37 = *v18;
              if (*v18)
              {
                *(v18 + 1) = v37;
                operator delete(v37);
              }

              v18 += 24;
            }

            while (v18 != v19);
            v18 = *(this + 11);
            v32 = v46;
          }

          v28 = v33 + 24;
          *(this + 11) = v34;
          *(this + 12) = v28;
          *(this + 13) = &v32[24 * v47];
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v19 = 0;
          *(v19 + 1) = 0;
          v28 = v19 + 24;
          *(v19 + 2) = 0;
        }

        *(this + 12) = v28;
        if (!v24)
        {
          v9 = 0x100000003;
          break;
        }

        if (v24 > 0x40)
        {
          break;
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v28 - 3, v26, &v26[v24], v24);
        v38 = (((v24 + 11) & 0xF8) - 4) & 0xFFFC;
        if (v17 - v26 <= v38)
        {
          v11 = v17;
        }

        else
        {
          v11 = &v26[v38];
        }

        if ((v17 - v11) <= 7)
        {
          v9 = 0;
          break;
        }
      }

      v6 = v45;
      v39 = *(this + 3);
      v52 = *(this + 2);
      v53 = v39;
      if (v39)
      {
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    goto LABEL_57;
  }

  if (v9 == 0x10000000ELL)
  {
LABEL_57:
    v9 = 0;
  }

  v39 = *(this + 3);
  v52 = *(this + 2);
  v53 = v39;
  if (v39)
  {
LABEL_59:
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_60:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v9, 0x100u, &v52, "", 0, &v48);
  v40 = v53;
  if (!v53 || atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_62:
    v41 = *&v56[16];
    if (!*&v56[16])
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  (v40->__on_zero_shared)(v40);
  std::__shared_weak_count::__release_weak(v40);
  v41 = *&v56[16];
  if (!*&v56[16])
  {
LABEL_64:
    if ((v56[7] & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

LABEL_68:
    operator delete(__p[0]);
    v42 = *(&v58 + 1);
    if (!*(&v58 + 1))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_63:
  if (atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_64;
  }

  (v41->__on_zero_shared)(v41);
  std::__shared_weak_count::__release_weak(v41);
  if ((v56[7] & 0x80000000) != 0)
  {
    goto LABEL_68;
  }

LABEL_65:
  v42 = *(&v58 + 1);
  if (!*(&v58 + 1))
  {
LABEL_70:
    if ((v57[31] & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_80:
    operator delete(*&v57[8]);
    *a2 = v48;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_81;
  }

LABEL_69:
  if (atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_70;
  }

  (v42->__on_zero_shared)(v42);
  std::__shared_weak_count::__release_weak(v42);
  if ((v57[31] & 0x80000000) != 0)
  {
    goto LABEL_80;
  }

LABEL_71:
  *a2 = v48;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_81:
  operator delete(*(a2 + 8));
LABEL_72:
  *(a2 + 8) = v49;
  *(a2 + 24) = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v43 = v51;
  v51 = 0uLL;
  *(a2 + 32) = v43;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v44 = *(&v51 + 1);
    if (!*(&v51 + 1))
    {
LABEL_76:
      if ((SHIBYTE(v50) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_77;
    }
  }

  else
  {
    v44 = *(&v51 + 1);
    if (!*(&v51 + 1))
    {
      goto LABEL_76;
    }
  }

  if (atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_76;
  }

  (v44->__on_zero_shared)(v44);
  std::__shared_weak_count::__release_weak(v44);
  if (SHIBYTE(v50) < 0)
  {
LABEL_77:
    operator delete(v49);
  }
}

void sub_297AB3144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  mipc::Error::~Error(&a29);
  mipc::Error::~Error(v29);
  _Unwind_Resume(a1);
}

void sub_297AB3160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a21);
  mipc::Error::~Error(&a23);
  mipc::Error::~Error(&a29);
  mipc::Error::~Error(v29);
  _Unwind_Resume(a1);
}

uint64_t mipc::sim::Get_Smsp_Cnf::Get_Smsp_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1428, &v14, a3, 2);
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
  *a1 = &unk_2A1E687D8;
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
  *a1 = &unk_2A1E65CA0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AB33E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Smsp_Cnf::~Get_Smsp_Cnf(mipc::sim::Get_Smsp_Cnf *this)
{
  *this = &unk_2A1E65CA0;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      v5 = *(this + 12);
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
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
  }

  *this = &unk_2A1E85968;
  v8 = *(this + 9);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (*(this + 63) < 0)
  {
LABEL_12:
    operator delete(*(this + 5));
  }

LABEL_13:
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
  *this = &unk_2A1E65CA0;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      v5 = *(this + 12);
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
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
  }

  *this = &unk_2A1E85968;
  v8 = *(this + 9);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (*(this + 63) < 0)
  {
LABEL_12:
    operator delete(*(this + 5));
  }

LABEL_13:
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
  *this = &unk_2A1E65CA0;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      v5 = *(this + 12);
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
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
  }

  *this = &unk_2A1E85968;
  v8 = *(this + 9);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
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
  v9 = *(this + 3);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = this;
  }

  else
  {
    v10 = this;
  }

  operator delete(v10);
}

uint64_t mipc::sim::Get_Smsp_Cnf::getSize(mipc::sim::Get_Smsp_Cnf *this)
{
  v1 = *(this + 88);
  v2 = *(this + 12);
  v3 = *(this + 11);
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

  return v4 + v6;
}

double mipc::sim::Get_Service_Table_Req::Get_Service_Table_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1429;
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
  *a1 = &unk_2A1E65CE8;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 1429;
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
  *a1 = &unk_2A1E65CE8;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sim::Get_Service_Table_Req::~Get_Service_Table_Req(mipc::sim::Get_Service_Table_Req *this)
{
  *this = &unk_2A1E65CE8;
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
  *this = &unk_2A1E65CE8;
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
  *this = &unk_2A1E65CE8;
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

void mipc::sim::Get_Service_Table_Req::serialize(mipc::sim::Get_Service_Table_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AB41D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sim::Get_Service_Table_Req::getSize(mipc::sim::Get_Service_Table_Req *this)
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

mipc::sim::Get_Service_Table_Cnf *mipc::sim::Get_Service_Table_Cnf::Get_Service_Table_Cnf(mipc::sim::Get_Service_Table_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1430, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65D30;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 80) = 1;
  mipc::sim::Get_Service_Table_Cnf::deserialize(this, v7);
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

void sub_297AB4364(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v1 + 12);
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v2);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Service_Table_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,false>,false>(this, this + 11, 0x100u, &v12);
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,false>,false>(this, this + 12, 0x101u, &v12);
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

uint64_t mipc::sim::Get_Service_Table_Cnf::Get_Service_Table_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1430, &v14, a3, 2);
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
  *a1 = &unk_2A1E68820;
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
  *a1 = &unk_2A1E65D30;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AB487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Service_Table_Cnf::~Get_Service_Table_Cnf(mipc::sim::Get_Service_Table_Cnf *this)
{
  *this = &unk_2A1E65D30;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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
  *this = &unk_2A1E65D30;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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
  *this = &unk_2A1E65D30;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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

uint64_t mipc::sim::Get_Service_Table_Cnf::getSize(mipc::sim::Get_Service_Table_Cnf *this)
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

  v4 = *(this + 12);
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

  v6 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v6 = 32;
  }

  return v4 + v1 + v6;
}

double mipc::sim::Query_Gid_Req::Query_Gid_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1431;
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
  *a1 = &unk_2A1E65D78;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 1431;
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
  *a1 = &unk_2A1E65D78;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sim::Query_Gid_Req::~Query_Gid_Req(mipc::sim::Query_Gid_Req *this)
{
  *this = &unk_2A1E65D78;
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
  *this = &unk_2A1E65D78;
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
  *this = &unk_2A1E65D78;
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

void mipc::sim::Query_Gid_Req::serialize(mipc::sim::Query_Gid_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AB5648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sim::Query_Gid_Req::getSize(mipc::sim::Query_Gid_Req *this)
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

mipc::sim::Query_Gid_Cnf *mipc::sim::Query_Gid_Cnf::Query_Gid_Cnf(mipc::sim::Query_Gid_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1432, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65DC0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 80) = 1;
  mipc::sim::Query_Gid_Cnf::deserialize(this, v7);
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

void sub_297AB57D8(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v1 + 12);
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v2);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Query_Gid_Cnf::deserialize(mipc::sim::Query_Gid_Cnf *this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<20ul,false>,false>(&v12, this, this + 11, 0x100u);
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<20ul,false>,false>(&v12, this, this + 12, 0x101u);
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

uint64_t mipc::sim::Query_Gid_Cnf::Query_Gid_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1432, &v14, a3, 2);
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
  *a1 = &unk_2A1E68868;
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
  *a1 = &unk_2A1E65DC0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AB5CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Query_Gid_Cnf::~Query_Gid_Cnf(mipc::sim::Query_Gid_Cnf *this)
{
  *this = &unk_2A1E65DC0;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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
  *this = &unk_2A1E65DC0;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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
  *this = &unk_2A1E65DC0;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<20ul,false>,false>(void *a1, std::__shared_weak_count **this, void **a3, unsigned int a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v8;
  v29 = v8;
  *v27 = v8;
  *&v27[16] = v8;
  mipc::Message::findTLV(this, a4, v27);
  *&v26[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v26 = v9;
  *__p = v9;
  v24 = *v27;
  if ((v27[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v27[8], *&v27[16]);
  }

  else
  {
    *__p = *&v27[8];
    *v26 = *&v27[24];
  }

  *&v26[8] = v28;
  if (*(&v28 + 1))
  {
    atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v24;
  if (v24 && v24 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v24, a1);
    goto LABEL_30;
  }

  v11 = v29;
  v12 = *(&v29 + 1);
  v13 = *a3;
  *a3 = 0;
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
    if (v10 != 0x10000000ELL)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

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

  v10 = 0x100000003;
  if (!v11)
  {
    goto LABEL_25;
  }

  if (v11 <= 0x14)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v15, v12, &v12[v11], v11);
LABEL_24:
    v10 = 0;
    goto LABEL_25;
  }

  v10 = 0x100000010;
LABEL_25:
  v18 = this[3];
  v22 = this[2];
  v23 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v10, a4, &v22, "", 0, a1);
  v19 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_30:
  v20 = *&v26[16];
  if (*&v26[16] && !atomic_fetch_add((*&v26[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    if ((v26[7] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ((v26[7] & 0x80000000) != 0)
  {
LABEL_33:
    operator delete(__p[0]);
  }

LABEL_34:
  v21 = *(&v28 + 1);
  if (!*(&v28 + 1) || atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v27[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if ((v27[31] & 0x80000000) != 0)
  {
LABEL_37:
    operator delete(*&v27[8]);
  }
}

void sub_297AB6444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AB6458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AB6474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sim::Query_Gid_Cnf::getSize(mipc::sim::Query_Gid_Cnf *this)
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

  v4 = *(this + 12);
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

  v6 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v6 = 32;
  }

  return v4 + v1 + v6;
}

double mipc::sim::Get_Impi_Req::Get_Impi_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1433;
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
  *a1 = &unk_2A1E65E08;
  return result;
}

{
  *(a1 + 8) = 1433;
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
  *a1 = &unk_2A1E65E08;
  return result;
}

void mipc::sim::Get_Impi_Req::~Get_Impi_Req(mipc::sim::Get_Impi_Req *this)
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

void mipc::sim::Get_Impi_Req::serialize(mipc::sim::Get_Impi_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AB6B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sim::Get_Impi_Cnf *mipc::sim::Get_Impi_Cnf::Get_Impi_Cnf(mipc::sim::Get_Impi_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1434, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65E50;
  *(this + 11) = 0;
  *(this + 80) = 1;
  mipc::sim::Get_Impi_Cnf::deserialize(this, &v7);
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

void sub_297AB6CD4(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Impi_Cnf::deserialize(void ***this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,false>(this, this + 11, 0x100u, &v8);
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

uint64_t mipc::sim::Get_Impi_Cnf::Get_Impi_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1434, &v14, a3, 2);
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
  *a1 = &unk_2A1E688B0;
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
  *a1 = &unk_2A1E65E50;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AB70D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Impi_Cnf::~Get_Impi_Cnf(mipc::sim::Get_Impi_Cnf *this)
{
  *this = &unk_2A1E65E50;
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
  *this = &unk_2A1E65E50;
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
  *this = &unk_2A1E65E50;
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

void mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,false>(mipc::Message *a1@<X0>, void ***a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v8;
  v26 = v8;
  *v24 = v8;
  *&v24[16] = v8;
  mipc::Message::findTLV(a1, a3, v24);
  *&v23[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v23 = v9;
  *__p = v9;
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

  if (v21 && v21 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(a1, &v21, a4);
  }

  else
  {
    v18 = v21;
    v19 = v26;
    v20 = *(&v26 + 1);
    v10 = *(a1 + 4);
    v11 = mipc::tlv<mipc::mipc_string_t<256ul,false>,false>::deserialize(a2, &v18);
    v12 = *(a1 + 3);
    v16 = *(a1 + 2);
    v17 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(a1, v11, a3, &v16, "", 0, a4);
    v13 = v17;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v14 = *&v23[16];
  if (*&v23[16] && !atomic_fetch_add((*&v23[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if ((v23[7] & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

LABEL_18:
  v15 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(*&v24[8]);
    return;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if ((v24[31] & 0x80000000) != 0)
  {
    goto LABEL_25;
  }
}

void sub_297AB7744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AB7758(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_297AB777C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sim::Get_Impi_Cnf::getSize(mipc::sim::Get_Impi_Cnf *this)
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

double mipc::sim::Get_Impu_Req::Get_Impu_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1435;
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
  *a1 = &unk_2A1E65E98;
  return result;
}

{
  *(a1 + 8) = 1435;
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
  *a1 = &unk_2A1E65E98;
  return result;
}

void mipc::sim::Get_Impu_Req::~Get_Impu_Req(mipc::sim::Get_Impu_Req *this)
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

void mipc::sim::Get_Impu_Req::serialize(mipc::sim::Get_Impu_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AB7E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sim::Get_Impu_Cnf *mipc::sim::Get_Impu_Cnf::Get_Impu_Cnf(mipc::sim::Get_Impu_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1436, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65EE0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 80) = 1;
  mipc::sim::Get_Impu_Cnf::deserialize(this, &v7);
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

void sub_297AB7FB8(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv_array<mipc::mipc_string_t<256ul,false>,20ul,false>::~tlv_array(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Impu_Cnf::deserialize(void ***this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,20ul,false>(&v8, this, this + 11);
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

uint64_t mipc::sim::Get_Impu_Cnf::Get_Impu_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1436, &v14, a3, 2);
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
  *a1 = &unk_2A1E688F8;
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
  *a1 = &unk_2A1E65EE0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AB83B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Impu_Cnf::~Get_Impu_Cnf(mipc::sim::Get_Impu_Cnf *this)
{
  *this = &unk_2A1E65EE0;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
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
  *this = &unk_2A1E65EE0;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
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
  *this = &unk_2A1E65EE0;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
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

uint64_t mipc::sim::Get_Impu_Cnf::getSize(mipc::sim::Get_Impu_Cnf *this)
{
  v1 = *(this + 88);
  v2 = *(this + 12);
  v3 = *(this + 11);
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
  if (HIDWORD(*(this + 4)))
  {
    v6 = 32;
  }

  return v4 + v6;
}

double mipc::sim::Get_Domain_Req::Get_Domain_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1437;
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
  *a1 = &unk_2A1E65F28;
  return result;
}

{
  *(a1 + 8) = 1437;
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
  *a1 = &unk_2A1E65F28;
  return result;
}

void mipc::sim::Get_Domain_Req::~Get_Domain_Req(mipc::sim::Get_Domain_Req *this)
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

void mipc::sim::Get_Domain_Req::serialize(mipc::sim::Get_Domain_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AB8F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sim::Get_Domain_Cnf *mipc::sim::Get_Domain_Cnf::Get_Domain_Cnf(mipc::sim::Get_Domain_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1438, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E65F70;
  *(this + 11) = 0;
  *(this + 80) = 1;
  mipc::sim::Get_Domain_Cnf::deserialize(this, &v7);
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

void sub_297AB907C(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Domain_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<256ul,false>,false>(this, this + 11, 0x100u, &v8);
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

uint64_t mipc::sim::Get_Domain_Cnf::Get_Domain_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1438, &v14, a3, 2);
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
  *a1 = &unk_2A1E68940;
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
  *a1 = &unk_2A1E65F70;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AB947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Domain_Cnf::~Get_Domain_Cnf(mipc::sim::Get_Domain_Cnf *this)
{
  *this = &unk_2A1E65F70;
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
  *this = &unk_2A1E65F70;
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
  *this = &unk_2A1E65F70;
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

void *mipc::sim::Get_Domain_Cnf::getSize(mipc::sim::Get_Domain_Cnf *this)
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

double mipc::sim::Get_Pcscf_Req::Get_Pcscf_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1439;
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
  *a1 = &unk_2A1E65FB8;
  return result;
}

{
  *(a1 + 8) = 1439;
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
  *a1 = &unk_2A1E65FB8;
  return result;
}

void mipc::sim::Get_Pcscf_Req::~Get_Pcscf_Req(mipc::sim::Get_Pcscf_Req *this)
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

void mipc::sim::Get_Pcscf_Req::serialize(mipc::sim::Get_Pcscf_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AB9F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sim::Get_Pcscf_Cnf *mipc::sim::Get_Pcscf_Cnf::Get_Pcscf_Cnf(mipc::sim::Get_Pcscf_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1440, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E66000;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 80) = 1;
  mipc::sim::Get_Pcscf_Cnf::deserialize(this, v7);
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

void sub_297ABA088(_Unwind_Exception *a1)
{
  mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array((v1 + 112));
  v3 = *(v1 + 88);
  if (v3)
  {
    *(v1 + 96) = v3;
    operator delete(v3);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Pcscf_Cnf::deserialize(mipc::sim::Get_Pcscf_Cnf *this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 40))(v72);
  v4 = *v72;
  *a2 = *v72;
  v6 = *(&v73 + 1);
  v5 = v73;
  *(a2 + 1) = *&v72[8];
  a2[3] = *&v72[24];
  *(a2 + 2) = __PAIR128__(v6, v5);
  if (v4)
  {
    return;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73 = v7;
  v74 = v7;
  *v72 = v7;
  *&v72[16] = v7;
  mipc::Message::findTLV(this, 0x100u, v72);
  *&v71[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v71 = v8;
  *__p = v8;
  v69 = *v72;
  if ((v72[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v72[8], *&v72[16]);
  }

  else
  {
    *__p = *&v72[8];
    *v71 = *&v72[24];
  }

  *&v71[8] = v73;
  if (*(&v73 + 1))
  {
    atomic_fetch_add_explicit((*(&v73 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v69)
  {
    if (v69 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v69, &v63);
      goto LABEL_50;
    }

    v9 = 0;
    *(this + 12) = *(this + 11);
  }

  else
  {
    v10 = v74;
    v11 = *(&v74 + 1);
    *(this + 12) = *(this + 11);
    if (v10 < 8)
    {
      v9 = 0;
    }

    else
    {
      v12 = (v11 + v10);
      v62 = v6;
      while (1)
      {
        v14 = *(this + 11);
        v13 = *(this + 12);
        v15 = v13 - v14;
        if (v13 - v14 == 20)
        {
          v6 = v62;
          v9 = 0x100000010;
          goto LABEL_45;
        }

        v16 = v12 - v11;
        if ((v12 - v11) < 4)
        {
          v9 = 0x100000005;
          goto LABEL_44;
        }

        v17 = v11 + 1;
        if (v16 <= 2)
        {
          v17 = v12;
        }

        v18 = v12 - v17 <= 2;
        v21 = *v17;
        v19 = v17 + 1;
        v20 = v21;
        if (v18)
        {
          v22 = v12;
        }

        else
        {
          v22 = v19;
        }

        v23 = *(this + 13);
        if (v13 >= v23)
        {
          v25 = v15 + 1;
          if ((v15 + 1) < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v26 = v23 - v14;
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v27 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            v28 = operator new(v27);
          }

          else
          {
            v28 = 0;
          }

          v28[v15] = 0;
          v24 = &v28[v15 + 1];
          memcpy(v28, v14, v15);
          *(this + 11) = v28;
          *(this + 12) = v24;
          *(this + 13) = &v28[v27];
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v13 = 0;
          v24 = (v13 + 1);
        }

        *(this + 12) = v24;
        if (v20 > 1)
        {
          v9 = 0x100000012;
          goto LABEL_44;
        }

        if (!v20)
        {
          break;
        }

        v11 = v22 + 2;
        *(v24 - 1) = *v22;
        if (v12 - v22 <= 4)
        {
          v11 = v12;
        }

        if ((v12 - v11) <= 7)
        {
          v9 = 0;
          goto LABEL_44;
        }
      }

      v9 = 0x100000011;
LABEL_44:
      v6 = v62;
    }
  }

LABEL_45:
  v29 = *(this + 3);
  v67 = *(this + 2);
  v68 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v9, 0x100u, &v67, "", 0, &v63);
  v30 = v68;
  if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

LABEL_50:
  v31 = *&v71[16];
  if (*&v71[16] && !atomic_fetch_add((*&v71[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
    if ((v71[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v71[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v32 = *(&v73 + 1);
  if (!*(&v73 + 1) || atomic_fetch_add((*(&v73 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v72[31] & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_69:
    operator delete(*&v72[8]);
    *a2 = v63;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_70:
    operator delete(a2[1]);
    goto LABEL_58;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v32);
  if ((v72[31] & 0x80000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_57:
  *a2 = v63;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_70;
  }

LABEL_58:
  *(a2 + 1) = v64;
  a2[3] = v65;
  HIBYTE(v65) = 0;
  LOBYTE(v64) = 0;
  v33 = v66;
  v66 = 0uLL;
  *(a2 + 2) = v33;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v34 = *a2;
  v35 = *(&v66 + 1);
  if (*(&v66 + 1) && !atomic_fetch_add((*(&v66 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    if ((SHIBYTE(v65) & 0x80000000) == 0)
    {
LABEL_64:
      if (v34)
      {
        return;
      }

      goto LABEL_73;
    }
  }

  else if ((SHIBYTE(v65) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  operator delete(v64);
  if (v34)
  {
    return;
  }

LABEL_73:
  *&v36 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73 = v36;
  v74 = v36;
  *v72 = v36;
  *&v72[16] = v36;
  mipc::Message::findTLV(this, 0x101u, v72);
  *&v71[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v37 = 0xAAAAAAAAAAAAAAAALL;
  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v71 = v37;
  *__p = v37;
  v69 = *v72;
  if ((v72[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v72[8], *&v72[16]);
  }

  else
  {
    *__p = *&v72[8];
    *v71 = *&v72[24];
  }

  *&v71[8] = v73;
  if (*(&v73 + 1))
  {
    atomic_fetch_add_explicit((*(&v73 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v38 = v69;
  if (!v69 || v69 == 0x10000000ELL)
  {
    v39 = v74;
    v40 = *(&v74 + 1);
    v42 = *(this + 14);
    v41 = *(this + 15);
    if (v41 != v42)
    {
      v43 = *(this + 15);
      do
      {
        v45 = *(v43 - 24);
        v43 -= 24;
        v44 = v45;
        if (v45)
        {
          *(v41 - 16) = v44;
          operator delete(v44);
        }

        v41 = v43;
      }

      while (v43 != v42);
    }

    *(this + 15) = v42;
    if (v38)
    {
      if (v38 != 0x10000000ELL)
      {
        goto LABEL_109;
      }
    }

    else if (v39 >= 8)
    {
      v46 = &v40[v39];
      v38 = 0x100000010;
      do
      {
        v47 = *(this + 15);
        if ((v47 - *(this + 14)) == 480)
        {
          goto LABEL_109;
        }

        if ((v46 - v40) < 4)
        {
          v38 = 0x100000005;
          goto LABEL_109;
        }

        if (v46 - v40 <= 2)
        {
          v48 = v46;
        }

        else
        {
          v48 = v40 + 2;
        }

        v18 = v46 - v48 <= 2;
        v51 = *v48;
        v49 = v48 + 2;
        v50 = v51;
        if (v18)
        {
          v52 = v46;
        }

        else
        {
          v52 = v49;
        }

        if (v47 >= *(this + 16))
        {
          v53 = std::vector<mipc::mipc_byte_array_t<256ul,false>>::__emplace_back_slow_path<>(this + 112);
        }

        else
        {
          *v47 = 0;
          v47[1] = 0;
          v53 = v47 + 3;
          v47[2] = 0;
        }

        *(this + 15) = v53;
        if (!v50)
        {
          v38 = 0x100000003;
          goto LABEL_109;
        }

        if (v50 > 0x100)
        {
          goto LABEL_109;
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v53 - 3, v52, &v52[v50], v50);
        v54 = (((v50 + 11) & 0x3F8) - 4) & 0xFFFC;
        if (v46 - v52 <= v54)
        {
          v40 = v46;
        }

        else
        {
          v40 = &v52[v54];
        }
      }

      while ((v46 - v40) > 7);
    }

    v38 = 0;
LABEL_109:
    v55 = *(this + 3);
    v67 = *(this + 2);
    v68 = v55;
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v38, 0x101u, &v67, "", 0, &v63);
    v56 = v68;
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
    }

    goto LABEL_114;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v69, &v63);
LABEL_114:
  v57 = *&v71[16];
  if (*&v71[16] && !atomic_fetch_add((*&v71[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

  if ((v71[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  v58 = *(&v73 + 1);
  if (*(&v73 + 1) && !atomic_fetch_add((*(&v73 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v58->__on_zero_shared)(v58);
    std::__shared_weak_count::__release_weak(v58);
  }

  if ((v72[31] & 0x80000000) != 0)
  {
    operator delete(*&v72[8]);
  }

  *a2 = v63;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v64;
  a2[3] = v65;
  HIBYTE(v65) = 0;
  LOBYTE(v64) = 0;
  v59 = v66;
  v66 = 0uLL;
  v60 = a2[5];
  *(a2 + 2) = v59;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = *(&v66 + 1);
  if (*(&v66 + 1) && !atomic_fetch_add((*(&v66 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }
}

void sub_297ABA9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t mipc::sim::Get_Pcscf_Cnf::Get_Pcscf_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1440, &v14, a3, 2);
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
  *a1 = &unk_2A1E68988;
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
  *a1 = &unk_2A1E66000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297ABAC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Get_Pcscf_Cnf::~Get_Pcscf_Cnf(mipc::sim::Get_Pcscf_Cnf *this)
{
  *this = &unk_2A1E66000;
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
  *this = &unk_2A1E66000;
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
  *this = &unk_2A1E66000;
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

uint64_t mipc::sim::Get_Pcscf_Cnf::getSize(mipc::sim::Get_Pcscf_Cnf *this)
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
  v9 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v9 = 32;
  }

  return v3 + v7 + v9;
}

double mipc::sim::Read_Bin_Req::Read_Bin_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1441;
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
  *a1 = &unk_2A1E66048;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

{
  *(a1 + 8) = 1441;
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
  *a1 = &unk_2A1E66048;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

void mipc::sim::Read_Bin_Req::~Read_Bin_Req(mipc::sim::Read_Bin_Req *this)
{
  *this = &unk_2A1E66048;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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
  mipc::sim::Read_Bin_Req::~Read_Bin_Req(this);

  operator delete(v1);
}

void mipc::sim::Read_Bin_Req::serialize(mipc::sim::Read_Bin_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 112);
  v4 = *(this + 14);
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

  v8.i64[0] = *(this + 11);
  v8.i64[1] = *(this + 13);
  v9 = &v4[*(this + 12) != 0] + vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(v8), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 120)))));
  v54[0] = operator new(v9);
  v55 = v54[0] + v9;
  bzero(v54[0], v9);
  v54[1] = v54[0] + v9;
  v53 = v54[0];
  v52 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v47, this, &v53);
  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v10 = v50;
  v50 = 0uLL;
  v11 = *(&v52 + 1);
  v52 = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = *(&v50 + 1);
    v13 = __p[0];
    if (!*(&v50 + 1))
    {
LABEL_10:
      if ((SHIBYTE(v49) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      operator delete(v48);
      if (v13)
      {
        goto LABEL_96;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v12 = *(&v50 + 1);
    v13 = __p[0];
    if (!*(&v50 + 1))
    {
      goto LABEL_10;
    }
  }

  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_10;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v49) < 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v13)
  {
    goto LABEL_96;
  }

LABEL_17:
  if (*(this + 11))
  {
    *v53 = 256;
    v14 = v53++;
    v14[1] = 1;
    v15 = v53++;
    *(v15 + 2) = **(this + 11);
    v53 += 2;
  }

  else if (!*(this + 4))
  {
    v16 = 0x10000000FLL;
    goto LABEL_21;
  }

  v16 = 0;
LABEL_21:
  v56 = 0;
  v57 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v16, 0x100u, &v56, "", 0, &v47);
  v17 = v57;
  if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    __p[0] = v47;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_24:
    operator delete(__p[1]);
  }

LABEL_25:
  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v18 = v50;
  v50 = 0uLL;
  v19 = *(&v52 + 1);
  v52 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = *(&v50 + 1);
    v21 = __p[0];
    if (!*(&v50 + 1))
    {
LABEL_29:
      if ((SHIBYTE(v49) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_37:
      operator delete(v48);
      if (v21)
      {
        goto LABEL_96;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v20 = *(&v50 + 1);
    v21 = __p[0];
    if (!*(&v50 + 1))
    {
      goto LABEL_29;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (SHIBYTE(v49) < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v21)
  {
    goto LABEL_96;
  }

LABEL_38:
  if (*(this + 12))
  {
    *v53 = 257;
    v22 = v53++;
    v22[1] = 1;
    v23 = v53++;
    *(v23 + 2) = **(this + 12);
    v53 += 2;
  }

  v56 = 0;
  v57 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v56, "", 0, &v47);
  v24 = v57;
  if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v25 = v50;
  v50 = 0uLL;
  v26 = *(&v52 + 1);
  v52 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v50 + 1);
  v28 = __p[0];
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
    if (!v28)
    {
      goto LABEL_56;
    }

LABEL_96:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v52;
    v52 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_97;
  }

  if (v28)
  {
    goto LABEL_96;
  }

LABEL_56:
  if (*(this + 13))
  {
    *v53 = 258;
    v29 = v53++;
    v29[1] = 2;
    v30 = v53++;
    v30[1] = **(this + 13);
    v53 += 2;
  }

  v56 = 0;
  v57 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v56, "", 0, &v47);
  v31 = v57;
  if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v32 = v50;
  v50 = 0uLL;
  v33 = *(&v52 + 1);
  v52 = v32;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(&v50 + 1);
  v35 = __p[0];
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (v35)
  {
    goto LABEL_96;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<10ul,false>,false>(&v47, this, v5, &v53);
  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v36 = v50;
  v50 = 0uLL;
  v37 = *(&v52 + 1);
  v52 = v36;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(&v50 + 1);
  v39 = __p[0];
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (v39)
  {
    goto LABEL_96;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, this + 15, 260, &v53, &v47);
  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
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
    operator delete(v48);
  }

  if (v43)
  {
    goto LABEL_96;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, this + 16, 261, &v53, &v47);
  v44 = *mipc::Error::operator=(__p, &v47);
  mipc::Error::~Error(&v47);
  if (v44)
  {
    goto LABEL_96;
  }

  (*(*this + 32))(&v47, this, v54);
  v45 = *mipc::Error::operator=(__p, &v47);
  mipc::Error::~Error(&v47);
  if (v45)
  {
    goto LABEL_96;
  }

  *a2 = *v54;
  *(a2 + 16) = v55;
  v54[1] = 0;
  v55 = 0;
  v54[0] = 0;
  *(a2 + 48) = 0;
  v46 = *(&v52 + 1);
  if (*(&v52 + 1) && !atomic_fetch_add((*(&v52 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

LABEL_97:
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

void sub_297ABBEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::sim::Read_Bin_Req::getSize(mipc::sim::Read_Bin_Req *this)
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

  v4.i64[0] = *(this + 11);
  v4.i64[1] = *(this + 13);
  return &v1[*(this + 12) != 0] + vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(v4), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 120)))));
}

void mipc::Message::serializeTlv<mipc::mipc_byte_array_t<10ul,false>,false>(uint64_t a1, uint64_t a2, char ***a3, _WORD **a4)
{
  if (*a3)
  {
    v6 = *(*a3 + 2) - **a3;
    **a4 = 259;
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
      v13 = 0x100000002;
      v17 = 0;
      v18 = 0;
      goto LABEL_8;
    }

    v12 = v11 - v10;
    if ((v11 - v10) > 0xA)
    {
      v19 = (*a3)[1];
      v20 = v10;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(&v20, &v19, &v17);
      v13 = 0x100000010;
      goto LABEL_8;
    }

    memcpy(v8, v10, v11 - v10);
    v15 = ((*(v9 + 4) - *v9 + 11) & 0xFFF8u) - (*(v9 + 2) - *v9) + 65532;
    *a4 = (*a4 + v12 + (((*(v9 + 4) - *v9 + 11) & 0xFFF8) - (*(v9 + 4) - *v9) - 4));
  }

  v13 = 0;
  v17 = 0;
  v18 = 0;
LABEL_8:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v13, 0x103u, &v17, "", 0, a1);
  v16 = v18;
  if (v18)
  {
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }
}

void sub_297ABC14C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::sim::Read_Bin_Cnf *mipc::sim::Read_Bin_Cnf::Read_Bin_Cnf(mipc::sim::Read_Bin_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1442, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E66090;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 80) = 1;
  mipc::sim::Read_Bin_Cnf::deserialize(this, v7);
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

void sub_297ABC28C(_Unwind_Exception *a1)
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

void mipc::sim::Read_Bin_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<60000ul,false>,false>(this, this + 12, 0x101u, &v12);
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

uint64_t mipc::sim::Read_Bin_Cnf::Read_Bin_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 1442, &v14, a3, 2);
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
  *a1 = &unk_2A1E689D0;
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
  *a1 = &unk_2A1E66090;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297ABC7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Read_Bin_Cnf::~Read_Bin_Cnf(mipc::sim::Read_Bin_Cnf *this)
{
  *this = &unk_2A1E66090;
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
  *this = &unk_2A1E66090;
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
  *this = &unk_2A1E66090;
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

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<60000ul,false>,false>(mipc::Message *a1@<X0>, void **a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v8;
  v26 = v8;
  *v24 = v8;
  *&v24[16] = v8;
  mipc::Message::findTLV(a1, a3, v24);
  *&v23[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v23 = v9;
  *__p = v9;
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

  if (v21 && v21 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(a1, &v21, a4);
  }

  else
  {
    v18 = v21;
    v19 = v26;
    v20 = *(&v26 + 1);
    v10 = *(a1 + 4);
    v11 = mipc::tlv<mipc::mipc_byte_array_t<60000ul,false>,false>::deserialize(a2, &v18);
    v12 = *(a1 + 3);
    v16 = *(a1 + 2);
    v17 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(a1, v11, a3, &v16, "", 0, a4);
    v13 = v17;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v14 = *&v23[16];
  if (*&v23[16] && !atomic_fetch_add((*&v23[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if ((v23[7] & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

LABEL_18:
  v15 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(*&v24[8]);
    return;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if ((v24[31] & 0x80000000) != 0)
  {
    goto LABEL_25;
  }
}

void sub_297ABCE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297ABCE60(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_297ABCE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void *mipc::sim::Read_Bin_Cnf::getSize(mipc::sim::Read_Bin_Cnf *this)
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

double mipc::sim::Read_Record_Req::Read_Record_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 1443;
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
  *a1 = &unk_2A1E660D8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

{
  *(a1 + 8) = 1443;
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
  *a1 = &unk_2A1E660D8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

void mipc::sim::Read_Record_Req::~Read_Record_Req(mipc::sim::Read_Record_Req *this)
{
  *this = &unk_2A1E660D8;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
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
  mipc::sim::Read_Record_Req::~Read_Record_Req(this);

  operator delete(v1);
}

void mipc::sim::Read_Record_Req::serialize(mipc::sim::Read_Record_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 112);
  v4 = *(this + 14);
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

  v8.i64[0] = *(this + 11);
  v8.i64[1] = *(this + 13);
  v9 = &v4[*(this + 12) != 0] + vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(v8), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 120)))));
  v54[0] = operator new(v9);
  v55 = v54[0] + v9;
  bzero(v54[0], v9);
  v54[1] = v54[0] + v9;
  v53 = v54[0];
  v52 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v47, this, &v53);
  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v10 = v50;
  v50 = 0uLL;
  v11 = *(&v52 + 1);
  v52 = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = *(&v50 + 1);
    v13 = __p[0];
    if (!*(&v50 + 1))
    {
LABEL_10:
      if ((SHIBYTE(v49) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      operator delete(v48);
      if (v13)
      {
        goto LABEL_96;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v12 = *(&v50 + 1);
    v13 = __p[0];
    if (!*(&v50 + 1))
    {
      goto LABEL_10;
    }
  }

  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_10;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (SHIBYTE(v49) < 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v13)
  {
    goto LABEL_96;
  }

LABEL_17:
  if (*(this + 11))
  {
    *v53 = 256;
    v14 = v53++;
    v14[1] = 1;
    v15 = v53++;
    *(v15 + 2) = **(this + 11);
    v53 += 2;
  }

  else if (!*(this + 4))
  {
    v16 = 0x10000000FLL;
    goto LABEL_21;
  }

  v16 = 0;
LABEL_21:
  v56 = 0;
  v57 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v16, 0x100u, &v56, "", 0, &v47);
  v17 = v57;
  if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    __p[0] = v47;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_24:
    operator delete(__p[1]);
  }

LABEL_25:
  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v18 = v50;
  v50 = 0uLL;
  v19 = *(&v52 + 1);
  v52 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = *(&v50 + 1);
    v21 = __p[0];
    if (!*(&v50 + 1))
    {
LABEL_29:
      if ((SHIBYTE(v49) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_37:
      operator delete(v48);
      if (v21)
      {
        goto LABEL_96;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v20 = *(&v50 + 1);
    v21 = __p[0];
    if (!*(&v50 + 1))
    {
      goto LABEL_29;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (SHIBYTE(v49) < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v21)
  {
    goto LABEL_96;
  }

LABEL_38:
  if (*(this + 12))
  {
    *v53 = 257;
    v22 = v53++;
    v22[1] = 1;
    v23 = v53++;
    *(v23 + 2) = **(this + 12);
    v53 += 2;
  }

  v56 = 0;
  v57 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v56, "", 0, &v47);
  v24 = v57;
  if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v25 = v50;
  v50 = 0uLL;
  v26 = *(&v52 + 1);
  v52 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v50 + 1);
  v28 = __p[0];
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
    if (!v28)
    {
      goto LABEL_56;
    }

LABEL_96:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v52;
    v52 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_97;
  }

  if (v28)
  {
    goto LABEL_96;
  }

LABEL_56:
  if (*(this + 13))
  {
    *v53 = 258;
    v29 = v53++;
    v29[1] = 2;
    v30 = v53++;
    v30[1] = **(this + 13);
    v53 += 2;
  }

  v56 = 0;
  v57 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v56, "", 0, &v47);
  v31 = v57;
  if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v32 = v50;
  v50 = 0uLL;
  v33 = *(&v52 + 1);
  v52 = v32;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(&v50 + 1);
  v35 = __p[0];
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (v35)
  {
    goto LABEL_96;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<10ul,false>,false>(&v47, this, v5, &v53);
  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  v36 = v50;
  v50 = 0uLL;
  v37 = *(&v52 + 1);
  v52 = v36;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(&v50 + 1);
  v39 = __p[0];
  if (*(&v50 + 1) && !atomic_fetch_add((*(&v50 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (v39)
  {
    goto LABEL_96;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, this + 15, 260, &v53, &v47);
  __p[0] = v47;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v48;
  __p[3] = v49;
  HIBYTE(v49) = 0;
  LOBYTE(v48) = 0;
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
    operator delete(v48);
  }

  if (v43)
  {
    goto LABEL_96;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, this + 16, 261, &v53, &v47);
  v44 = *mipc::Error::operator=(__p, &v47);
  mipc::Error::~Error(&v47);
  if (v44)
  {
    goto LABEL_96;
  }

  (*(*this + 32))(&v47, this, v54);
  v45 = *mipc::Error::operator=(__p, &v47);
  mipc::Error::~Error(&v47);
  if (v45)
  {
    goto LABEL_96;
  }

  *a2 = *v54;
  *(a2 + 16) = v55;
  v54[1] = 0;
  v55 = 0;
  v54[0] = 0;
  *(a2 + 48) = 0;
  v46 = *(&v52 + 1);
  if (*(&v52 + 1) && !atomic_fetch_add((*(&v52 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

LABEL_97:
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

void sub_297ABDC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::sim::Read_Record_Req::getSize(mipc::sim::Read_Record_Req *this)
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

  v4.i64[0] = *(this + 11);
  v4.i64[1] = *(this + 13);
  return &v1[*(this + 12) != 0] + vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(v4), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 120)))));
}

mipc::sim::Read_Record_Cnf *mipc::sim::Read_Record_Cnf::Read_Record_Cnf(mipc::sim::Read_Record_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 1444, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E66120;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 80) = 1;
  mipc::sim::Read_Record_Cnf::deserialize(this, v7);
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

void sub_297ABDE00(_Unwind_Exception *a1)
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

void mipc::sim::Read_Record_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<60000ul,false>,false>(this, this + 12, 0x101u, &v12);
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