void mipc::Message::deserializeTlv<mipc::mipc_string_t<1024ul,false>,false>(void *a1, std::__shared_weak_count **this, void ***a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x115u, v23);
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

  if (v9 <= 0x400)
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

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x115u, &v18, "", 0, a1);
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

void sub_297C98FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C98FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297C98FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sys::Mcf_Cnf::getSize(int64x2_t *this)
{
  v1 = this[9].i64[1];
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

  v4 = this[10].i64[0];
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

  v8.i64[0] = this[9].i64[0];
  v8.i64[1] = this[10].i64[1];
  v9 = vdupq_n_s64(8uLL);
  return &v1[(this[11].i64[0] != 0) + (this[5].i64[1] != 0)] + v4 + v7 + vaddvq_s64(vaddq_s64(vaddq_s64(vbicq_s8(v9, vceqzq_s64(this[6])), vbicq_s8(v9, vceqzq_s64(this[8]))), vaddq_s64(vbicq_s8(v9, vceqzq_s64(this[7])), vbicq_s8(v9, vceqzq_s64(v8)))));
}

double mipc::sys::Set_Time_Req::Set_Time_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 65;
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
  *a1 = &unk_2A1E80130;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

{
  *(a1 + 8) = 65;
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
  *a1 = &unk_2A1E80130;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

void mipc::sys::Set_Time_Req::~Set_Time_Req(mipc::sys::Set_Time_Req *this)
{
  *this = &unk_2A1E80130;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    operator delete(v3);
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
  mipc::sys::Set_Time_Req::~Set_Time_Req(this);

  operator delete(v1);
}

void mipc::sys::Set_Time_Req::serialize(mipc::sys::Set_Time_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vdupq_n_s64(8uLL);
  v5 = (this + 120);
  v6 = (this + 128);
  v7 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(v4, vceqzq_s64(*(this + 104))))) + 8 * (*(this + 15) != 0) + vaddvq_s64(vbicq_s8(v4, vceqzq_s64(*(this + 8))));
  v55[0] = operator new(v7);
  v56 = v55[0] + v7;
  bzero(v55[0], v7);
  v55[1] = v55[0] + v7;
  v54 = v55[0];
  v53 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v48, this, &v54);
  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v8 = v51;
  v51 = 0uLL;
  v9 = *(&v53 + 1);
  v53 = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(&v51 + 1);
    v11 = __p[0];
    if (!*(&v51 + 1))
    {
LABEL_7:
      if ((SHIBYTE(v50) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(v49);
      if (v11)
      {
        goto LABEL_99;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(&v51 + 1);
    v11 = __p[0];
    if (!*(&v51 + 1))
    {
      goto LABEL_7;
    }
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (SHIBYTE(v50) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v11)
  {
    goto LABEL_99;
  }

LABEL_14:
  if (*(this + 11))
  {
    *v54 = 256;
    v12 = v54++;
    v12[1] = 4;
    v13 = v54++;
    *(v13 + 1) = **(this + 11);
    v54 += 2;
  }

  else if (!*(this + 4))
  {
    v14 = 0x10000000FLL;
    goto LABEL_18;
  }

  v14 = 0;
LABEL_18:
  v57 = 0;
  v58 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v14, 0x100u, &v57, "", 0, &v48);
  v15 = v58;
  if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    __p[0] = v48;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_21:
    operator delete(__p[1]);
  }

LABEL_22:
  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v16 = v51;
  v51 = 0uLL;
  v17 = *(&v53 + 1);
  v53 = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(&v51 + 1);
    v19 = __p[0];
    if (!*(&v51 + 1))
    {
LABEL_26:
      if ((SHIBYTE(v50) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_34:
      operator delete(v49);
      if (v19)
      {
        goto LABEL_99;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v18 = *(&v51 + 1);
    v19 = __p[0];
    if (!*(&v51 + 1))
    {
      goto LABEL_26;
    }
  }

  if (atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_26;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (SHIBYTE(v50) < 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v19)
  {
    goto LABEL_99;
  }

LABEL_35:
  if (*(this + 12))
  {
    *v54 = 257;
    v20 = v54++;
    v20[1] = 4;
    v21 = v54++;
    *(v21 + 1) = **(this + 12);
    v54 += 2;
  }

  else if (!*(this + 4))
  {
    v22 = 0x10000000FLL;
    goto LABEL_40;
  }

  v22 = 0;
LABEL_40:
  v57 = 0;
  v58 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v22, 0x101u, &v57, "", 0, &v48);
  v23 = v58;
  if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v24 = v51;
  v51 = 0uLL;
  v25 = *(&v53 + 1);
  v53 = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&v51 + 1);
  v27 = __p[0];
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
    if (!v27)
    {
      goto LABEL_55;
    }

LABEL_99:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v53;
    v53 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_100;
  }

  if (v27)
  {
    goto LABEL_99;
  }

LABEL_55:
  if (*(this + 13))
  {
    *v54 = 258;
    v28 = v54++;
    v28[1] = 4;
    v29 = v54++;
    *(v29 + 1) = **(this + 13);
    v54 += 2;
  }

  else if (!*(this + 4))
  {
    v30 = 0x10000000FLL;
    goto LABEL_60;
  }

  v30 = 0;
LABEL_60:
  v57 = 0;
  v58 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v30, 0x102u, &v57, "", 0, &v48);
  v31 = v58;
  if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v32 = v51;
  v51 = 0uLL;
  v33 = *(&v53 + 1);
  v53 = v32;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(&v51 + 1);
  v35 = __p[0];
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (v35)
  {
    goto LABEL_99;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, this + 14, 259, &v54, &v48);
  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v36 = v51;
  v51 = 0uLL;
  v37 = *(&v53 + 1);
  v53 = v36;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(&v51 + 1);
  v39 = __p[0];
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (v39)
  {
    goto LABEL_99;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, v5, 260, &v54, &v48);
  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v40 = v51;
  v51 = 0uLL;
  v41 = *(&v53 + 1);
  v53 = v40;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *(&v51 + 1);
  v43 = __p[0];
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (v43)
  {
    goto LABEL_99;
  }

  mipc::Message::serializeTlv<unsigned int,true>(this, v6, 261, &v54, &v48);
  v44 = *mipc::Error::operator=(__p, &v48);
  mipc::Error::~Error(&v48);
  if (v44)
  {
    goto LABEL_99;
  }

  mipc::Message::serializeTlv<int,false>(this, this + 17, 262, &v54, &v48);
  v45 = *mipc::Error::operator=(__p, &v48);
  mipc::Error::~Error(&v48);
  if (v45)
  {
    goto LABEL_99;
  }

  (*(*this + 32))(&v48, this, v55);
  v46 = *mipc::Error::operator=(__p, &v48);
  mipc::Error::~Error(&v48);
  if (v46)
  {
    goto LABEL_99;
  }

  *a2 = *v55;
  *(a2 + 16) = v56;
  v55[1] = 0;
  v56 = 0;
  v55[0] = 0;
  *(a2 + 48) = 0;
  v47 = *(&v53 + 1);
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

LABEL_100:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v55[0])
  {
    v55[1] = v55[0];
    operator delete(v55[0]);
  }
}

void sub_297C99E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mipc::sys::Set_Time_Cnf *mipc::sys::Set_Time_Cnf::Set_Time_Cnf(mipc::sys::Set_Time_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 66, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E80178;
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

void sub_297C9A0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sys::Set_Time_Cnf::deserialize@<D0>(mipc::sys::Set_Time_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sys::Set_Time_Cnf::Set_Time_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 66, &v14, a3, 2);
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
  *a1 = &unk_2A1E84648;
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
  *a1 = &unk_2A1E80178;
  return a1;
}

void sub_297C9A3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Set_Time_Cnf::~Set_Time_Cnf(mipc::sys::Set_Time_Cnf *this)
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

uint64_t mipc::sys::Set_Time_Cnf::getSize(mipc::sys::Set_Time_Cnf *this)
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

double mipc::sys::Get_Time_Req::Get_Time_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 67;
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
  *a1 = &unk_2A1E801C0;
  return result;
}

{
  *(a1 + 8) = 67;
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
  *a1 = &unk_2A1E801C0;
  return result;
}

void mipc::sys::Get_Time_Req::~Get_Time_Req(mipc::sys::Get_Time_Req *this)
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

void mipc::sys::Get_Time_Req::serialize(mipc::sys::Get_Time_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C9AD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Get_Time_Cnf *mipc::sys::Get_Time_Cnf::Get_Time_Cnf(mipc::sys::Get_Time_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 68, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80208;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  mipc::sys::Get_Time_Cnf::deserialize(this, &v7);
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

void sub_297C9AED4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 18);
  *(v1 + 18) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 17);
    *(v1 + 17) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 16);
      *(v1 + 16) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = *(v1 + 17);
    *(v1 + 17) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 15);
    *(v1 + 15) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v6);
  v7 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v7);
  v8 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v8);
  v9 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 12);
    *(v1 + 12) = 0;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v9);
  v10 = *(v1 + 12);
  *(v1 + 12) = 0;
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

void mipc::sys::Get_Time_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 5))(&v30);
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
  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 11, 0x100u, &v30);
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
  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 12, 0x101u, &v30);
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
    mipc::Message::deserializeTlv<unsigned int,false>(this, this + 13, 0x102u, &v30);
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
      mipc::Message::deserializeTlv<unsigned int,false>(this, this + 14, 0x103u, &v30);
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
        mipc::Message::deserializeTlv<unsigned int,false>(this, this + 15, 0x104u, &v30);
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
          mipc::Message::deserializeTlv<unsigned int,false>(this, this + 16, 0x105u, &v30);
          v28 = *mipc::Error::operator=(a2, &v30);
          mipc::Error::~Error(&v30);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned int,false>(this, this + 17, 0x106u, &v30);
            v29 = *mipc::Error::operator=(a2, &v30);
            mipc::Error::~Error(&v30);
            if (!v29)
            {
              mipc::Message::deserializeTlv<int,false>(this, this + 18, 0x107u, &v30);
              mipc::Error::operator=(a2, &v30);
              mipc::Error::~Error(&v30);
            }
          }
        }
      }
    }
  }
}

uint64_t mipc::sys::Get_Time_Cnf::Get_Time_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 68, &v14, a3, 2);
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
  *a1 = &unk_2A1E84690;
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
  *a1 = &unk_2A1E80208;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return a1;
}

void sub_297C9B998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Time_Cnf::~Get_Time_Cnf(mipc::sys::Get_Time_Cnf *this)
{
  *this = &unk_2A1E80208;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
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
  mipc::sys::Get_Time_Cnf::~Get_Time_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::sys::Get_Time_Cnf::getSize(mipc::sys::Get_Time_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(*(this + 6))), vbicq_s8(v2, vceqzq_s64(*(this + 7))))) + 8 * (*(this + 11) != 0) + v1 + 8 * (*(this + 16) != 0) + vaddvq_s64(vbicq_s8(v2, vceqzq_s64(*(this + 136))));
}

double mipc::sys::Set_Sar_Req::Set_Sar_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 69;
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
  *a1 = &unk_2A1E80250;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = 69;
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
  *a1 = &unk_2A1E80250;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::sys::Set_Sar_Req::~Set_Sar_Req(mipc::sys::Set_Sar_Req *this)
{
  *this = &unk_2A1E80250;
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
  *this = &unk_2A1E80250;
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
  *this = &unk_2A1E80250;
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

void mipc::sys::Set_Sar_Req::serialize(mipc::sys::Set_Sar_Req *this@<X0>, uint64_t a2@<X8>)
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
    v14[1] = 4;
    v15 = v33++;
    *(v15 + 1) = **(this + 12);
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

void sub_297C9C6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Set_Sar_Cnf *mipc::sys::Set_Sar_Cnf::Set_Sar_Cnf(mipc::sys::Set_Sar_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 70, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80298;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::sys::Set_Sar_Cnf::deserialize(this, v7);
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

void sub_297C9C880(_Unwind_Exception *a1)
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

void mipc::sys::Set_Sar_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

void *mipc::sys::Set_Sar_Cnf::Set_Sar_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 70, &v14, a3, 2);
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
  *a1 = &unk_2A1E846D8;
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
  *a1 = &unk_2A1E80298;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297C9CDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Set_Sar_Cnf::~Set_Sar_Cnf(mipc::sys::Set_Sar_Cnf *this)
{
  *this = &unk_2A1E80298;
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
  *this = &unk_2A1E80298;
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
  *this = &unk_2A1E80298;
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

uint64_t mipc::sys::Set_Sar_Cnf::getSize(mipc::sys::Set_Sar_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::sys::Get_Sar_Req::Get_Sar_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 71;
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
  *a1 = &unk_2A1E802E0;
  return result;
}

{
  *(a1 + 8) = 71;
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
  *a1 = &unk_2A1E802E0;
  return result;
}

void mipc::sys::Get_Sar_Req::~Get_Sar_Req(mipc::sys::Get_Sar_Req *this)
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

void mipc::sys::Get_Sar_Req::serialize(mipc::sys::Get_Sar_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C9D840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Get_Sar_Cnf *mipc::sys::Get_Sar_Cnf::Get_Sar_Cnf(mipc::sys::Get_Sar_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 72, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80328;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::sys::Get_Sar_Cnf::deserialize(this, v7);
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

void sub_297C9D9A8(_Unwind_Exception *a1)
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

void mipc::sys::Get_Sar_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

void *mipc::sys::Get_Sar_Cnf::Get_Sar_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 72, &v14, a3, 2);
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
  *a1 = &unk_2A1E84720;
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
  *a1 = &unk_2A1E80328;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297C9DEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Sar_Cnf::~Get_Sar_Cnf(mipc::sys::Get_Sar_Cnf *this)
{
  *this = &unk_2A1E80328;
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
  *this = &unk_2A1E80328;
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
  *this = &unk_2A1E80328;
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

uint64_t mipc::sys::Get_Sar_Cnf::getSize(mipc::sys::Get_Sar_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

double mipc::sys::Query_Sbp_Req::Query_Sbp_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 77;
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
  *a1 = &unk_2A1E80370;
  return result;
}

{
  *(a1 + 8) = 77;
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
  *a1 = &unk_2A1E80370;
  return result;
}

void mipc::sys::Query_Sbp_Req::~Query_Sbp_Req(mipc::sys::Query_Sbp_Req *this)
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

void mipc::sys::Query_Sbp_Req::serialize(mipc::sys::Query_Sbp_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297C9E968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Query_Sbp_Cnf *mipc::sys::Query_Sbp_Cnf::Query_Sbp_Cnf(mipc::sys::Query_Sbp_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 78, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E803B8;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  mipc::sys::Query_Sbp_Cnf::deserialize(this, v7);
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

void sub_297C9EAD4(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 14);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 13);
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

void mipc::sys::Query_Sbp_Cnf::deserialize(mipc::sys::Query_Sbp_Cnf *this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v20);
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
    mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,true>(&v20, this, this + 13, 0x102u);
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
      mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,true>(&v20, this, this + 14, 0x103u);
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

uint64_t mipc::sys::Query_Sbp_Cnf::Query_Sbp_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 78, &v14, a3, 2);
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
  *a1 = &unk_2A1E84768;
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
  *a1 = &unk_2A1E803B8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_297C9F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Query_Sbp_Cnf::~Query_Sbp_Cnf(mipc::sys::Query_Sbp_Cnf *this)
{
  *this = &unk_2A1E803B8;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

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
  mipc::sys::Query_Sbp_Cnf::~Query_Sbp_Cnf(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,true>(void *a1, std::__shared_weak_count **this, void ***a3, unsigned int a4)
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
      if (v11 <= 0x100)
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

void sub_297C9F740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297C9F754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297C9F770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sys::Query_Sbp_Cnf::getSize(mipc::sys::Query_Sbp_Cnf *this)
{
  v1 = *(this + 13);
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

  v5 = *(this + 14);
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

  return v8 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + v1 + v5;
}

double mipc::sys::Set_Dsbp_Req::Set_Dsbp_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 83;
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
  *a1 = &unk_2A1E80400;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 83;
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
  *a1 = &unk_2A1E80400;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sys::Set_Dsbp_Req::~Set_Dsbp_Req(mipc::sys::Set_Dsbp_Req *this)
{
  *this = &unk_2A1E80400;
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
  *this = &unk_2A1E80400;
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
  *this = &unk_2A1E80400;
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

void mipc::sys::Set_Dsbp_Req::serialize(mipc::sys::Set_Dsbp_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297CA0134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sys::Set_Dsbp_Req::getSize(mipc::sys::Set_Dsbp_Req *this)
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

mipc::sys::Set_Dsbp_Cnf *mipc::sys::Set_Dsbp_Cnf::Set_Dsbp_Cnf(mipc::sys::Set_Dsbp_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 84, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E80448;
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

void sub_297CA031C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::sys::Set_Dsbp_Cnf::deserialize@<D0>(mipc::sys::Set_Dsbp_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sys::Set_Dsbp_Cnf::Set_Dsbp_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 84, &v14, a3, 2);
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
  *a1 = &unk_2A1E847B0;
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
  *a1 = &unk_2A1E80448;
  return a1;
}

void sub_297CA05EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Set_Dsbp_Cnf::~Set_Dsbp_Cnf(mipc::sys::Set_Dsbp_Cnf *this)
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

uint64_t mipc::sys::Set_Dsbp_Cnf::getSize(mipc::sys::Set_Dsbp_Cnf *this)
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

double mipc::sys::Get_Thermal_Actuator_Req::Get_Thermal_Actuator_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 93;
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
  *a1 = &unk_2A1E80490;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = 93;
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
  *a1 = &unk_2A1E80490;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::sys::Get_Thermal_Actuator_Req::~Get_Thermal_Actuator_Req(mipc::sys::Get_Thermal_Actuator_Req *this)
{
  *this = &unk_2A1E80490;
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
  *this = &unk_2A1E80490;
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
  *this = &unk_2A1E80490;
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

void mipc::sys::Get_Thermal_Actuator_Req::serialize(mipc::sys::Get_Thermal_Actuator_Req *this@<X0>, uint64_t a2@<X8>)
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
    v14[1] = 4;
    v15 = v32++;
    *(v15 + 1) = **(this + 12);
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

void sub_297CA13FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Get_Thermal_Actuator_Cnf *mipc::sys::Get_Thermal_Actuator_Cnf::Get_Thermal_Actuator_Cnf(mipc::sys::Get_Thermal_Actuator_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 94, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E804D8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::sys::Get_Thermal_Actuator_Cnf::deserialize(this, v7);
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

void sub_297CA15A0(_Unwind_Exception *a1)
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

void mipc::sys::Get_Thermal_Actuator_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 11, 0x100u, &v12);
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
  mipc::Message::deserializeTlv<mipc::mipc_sys_thermal_actuator_state_info_struct4,false>(&v12, this, this + 12);
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

void *mipc::sys::Get_Thermal_Actuator_Cnf::Get_Thermal_Actuator_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 94, &v14, a3, 2);
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
  *a1 = &unk_2A1E847F8;
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
  *a1 = &unk_2A1E804D8;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_297CA1AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Thermal_Actuator_Cnf::~Get_Thermal_Actuator_Cnf(mipc::sys::Get_Thermal_Actuator_Cnf *this)
{
  *this = &unk_2A1E804D8;
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
  *this = &unk_2A1E804D8;
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
  *this = &unk_2A1E804D8;
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

void mipc::Message::deserializeTlv<mipc::mipc_sys_thermal_actuator_state_info_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  *v24 = v6;
  *&v24[16] = v6;
  mipc::Message::findTLV(this, 0x101u, v24);
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
      v12 = operator new(0xCuLL);
      v12[2] = 0;
      *v12 = 0;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 0xC)
      {
        if (v9 == 12)
        {
          v8 = 0;
          v14 = *v10;
          v12[2] = *(v10 + 2);
          *v12 = v14;
        }
      }

      else
      {
        v8 = 0x100000012;
      }
    }

    v15 = this[3];
    v19 = this[2];
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x101u, &v19, "", 0, a1);
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
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v23[7] & 0x80000000) != 0)
  {
LABEL_28:
    operator delete(__p[0]);
  }

LABEL_29:
  v18 = *(&v25 + 1);
  if (!*(&v25 + 1) || atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v24[31] & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(*&v24[8]);
    return;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if ((v24[31] & 0x80000000) != 0)
  {
    goto LABEL_36;
  }
}

void sub_297CA219C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297CA21B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297CA21CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sys::Get_Thermal_Actuator_Cnf::getSize(mipc::sys::Get_Thermal_Actuator_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 16 * (*(this + 12) != 0);
}

double mipc::sys::Get_All_Thermal_Info_Req::Get_All_Thermal_Info_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 101;
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
  *a1 = &unk_2A1E80520;
  return result;
}

{
  *(a1 + 8) = 101;
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
  *a1 = &unk_2A1E80520;
  return result;
}

void mipc::sys::Get_All_Thermal_Info_Req::~Get_All_Thermal_Info_Req(mipc::sys::Get_All_Thermal_Info_Req *this)
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

void mipc::sys::Get_All_Thermal_Info_Req::serialize(mipc::sys::Get_All_Thermal_Info_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297CA288C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::sys::Get_All_Thermal_Info_Cnf *mipc::sys::Get_All_Thermal_Info_Cnf::Get_All_Thermal_Info_Cnf(mipc::sys::Get_All_Thermal_Info_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 102, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80568;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  mipc::sys::Get_All_Thermal_Info_Cnf::deserialize(this, v7);
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

void sub_297CA2A00(_Unwind_Exception *a1)
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

void mipc::sys::Get_All_Thermal_Info_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<mipc::mipc_sys_thermal_sensor_info_e_struct4,8ul,false>(__p, this, this + 12, 0x102u);
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
    this[16] = this[15];
    if (v16 < 8)
    {
LABEL_64:
      v15 = 0;
    }

    else
    {
      v18 = &v17[v16];
      while (1)
      {
        v20 = this[15];
        v19 = this[16];
        v21 = v19 - v20;
        if (v19 - v20 == 384)
        {
          v15 = 0x100000010;
          goto LABEL_65;
        }

        v22 = v18 - v17;
        if ((v18 - v17) < 4)
        {
          v15 = 0x100000005;
          goto LABEL_65;
        }

        v23 = v17 + 2;
        if (v22 <= 2)
        {
          v23 = v18;
        }

        v24 = v18 - v23 <= 2;
        v27 = *v23;
        v25 = (v23 + 2);
        v26 = v27;
        v28 = v24 ? v18 : v25;
        v29 = this[17];
        if (v19 >= v29)
        {
          v31 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 2) + 1;
          if (v31 > 0x1555555555555555)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v20) >> 2);
          if (2 * v32 > v31)
          {
            v31 = 2 * v32;
          }

          v33 = v32 >= 0xAAAAAAAAAAAAAAALL ? 0x1555555555555555 : v31;
          if (v33)
          {
            if (v33 > 0x1555555555555555)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v34 = operator new(12 * v33);
          }

          else
          {
            v34 = 0;
          }

          v35 = &v34[4 * (v21 >> 2)];
          v36 = &v34[12 * v33];
          *(v35 + 2) = 0;
          *v35 = 0;
          v30 = v35 + 12;
          v37 = &v35[-v21];
          memcpy(&v35[-v21], v20, v21);
          this[15] = v37;
          this[16] = v30;
          this[17] = v36;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *(v19 + 2) = 0;
          *v19 = 0;
          v30 = v19 + 12;
        }

        this[16] = v30;
        if (v26 > 0xC)
        {
          break;
        }

        if (v26 != 12)
        {
          v15 = 0x100000011;
          goto LABEL_65;
        }

        v38 = *v28;
        *(v30 - 1) = *(v28 + 2);
        *(v30 - 12) = v38;
        if (v18 - v28 <= 12)
        {
          v17 = v18;
        }

        else
        {
          v17 = (v28 + 6);
        }

        if ((v18 - v17) <= 7)
        {
          goto LABEL_64;
        }
      }

      v15 = 0x100000012;
    }

    goto LABEL_65;
  }

  if (v52 == 0x10000000ELL)
  {
    v15 = 0;
    this[16] = this[15];
LABEL_65:
    v39 = this[3];
    v50 = this[2];
    v51 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v15, 0x103u, &v50, "", 0, &v46);
    v40 = v51;
    if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    goto LABEL_71;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v52, &v46);
LABEL_71:
  v41 = *&v54[16];
  if (*&v54[16] && !atomic_fetch_add((*&v54[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  if ((v54[7] & 0x80000000) != 0)
  {
    operator delete(v53[0]);
  }

  v42 = *(&v56 + 1);
  if (*(&v56 + 1) && !atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
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
  v43 = v49;
  v49 = 0uLL;
  v44 = a2[5];
  *(a2 + 2) = v43;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  v45 = *(&v49 + 1);
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }
}

void sub_297CA31A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t mipc::sys::Get_All_Thermal_Info_Cnf::Get_All_Thermal_Info_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 102, &v14, a3, 2);
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
  *a1 = &unk_2A1E84840;
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
  *a1 = &unk_2A1E80568;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return a1;
}

void sub_297CA3458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_All_Thermal_Info_Cnf::~Get_All_Thermal_Info_Cnf(mipc::sys::Get_All_Thermal_Info_Cnf *this)
{
  *this = &unk_2A1E80568;
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
  *this = &unk_2A1E80568;
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
  *this = &unk_2A1E80568;
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

void mipc::Message::deserializeTlv<mipc::mipc_sys_thermal_sensor_info_e_struct4,8ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
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
          v26 = (v16 >> 3) + 1;
          if (v26 >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v27 = v24 - v15;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v26;
          if (v28)
          {
            if (v28 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(8 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[8 * (v16 >> 3)];
          *v30 = 0;
          v25 = v30 + 8;
          memcpy(v29, v15, v16);
          *a3 = v29;
          a3[1] = v25;
          a3[2] = &v29[8 * v28];
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
        if (v21 > 8)
        {
          break;
        }

        if (v21 != 8)
        {
          v10 = 0x100000011;
          goto LABEL_44;
        }

        v12 = v23 + 12;
        *(v25 - 1) = *v23;
        if (v13 - v23 <= 12)
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

void sub_297CA3C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

unint64_t mipc::sys::Get_All_Thermal_Info_Cnf::getSize(mipc::sys::Get_All_Thermal_Info_Cnf *this)
{
  v1 = *(this + 12);
  v2 = *(this + 13);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((2 * (v2 - v1)) & 0xFFFFFFFFFFFFFFF0) + 16;
  }

  v4 = *(this + 15);
  v5 = *(this + 16);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((2 * (((v5 - v4 - 12) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFF0) + 32;
  }

  v7 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v7 = 32;
  }

  return v7 + 8 * (*(this + 11) != 0) + v3 + v6;
}

double mipc::sys::Meta_Req::Meta_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 109;
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
  *a1 = &unk_2A1E805B0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 109;
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
  *a1 = &unk_2A1E805B0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::sys::Meta_Req::~Meta_Req(mipc::sys::Meta_Req *this)
{
  *this = &unk_2A1E805B0;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v6[1] = v7;
      operator delete(v7);
    }

    operator delete(v6);
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
  mipc::sys::Meta_Req::~Meta_Req(this);

  operator delete(v1);
}

void mipc::sys::Meta_Req::serialize(mipc::sys::Meta_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 88);
  v4 = *(this + 11);
  if (v4)
  {
    v6 = v4[1] - *v4;
    v7 = __CFADD__(v6 - 65532, 0x10000);
    v8 = ((v6 + 11) & 0xFFF8) + 16;
    if (!v7)
    {
      v8 = 16;
    }

    v10 = (this + 96);
    v9 = *(this + 12);
    if (!v9)
    {
LABEL_9:
      v12 = *(this + 13);
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 16;
    v10 = (this + 96);
    v9 = *(this + 12);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = v9[1] - *v9;
  if ((v11 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = ((v11 + 11) & 0xFFF8);
  v12 = *(this + 13);
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_12:
  v13 = v12[1] - *v12;
  if ((v13 - 65532) >= 0xFFFFFFFFFFFF0000)
  {
    v12 = ((v13 + 11) & 0xFFF8);
  }

  else
  {
    v12 = 0;
  }

LABEL_15:
  v14 = v12 + v9 + v8;
  v50[0] = operator new(v14);
  v51 = v50[0] + v14;
  bzero(v50[0], v14);
  v50[1] = v50[0] + v14;
  v49 = v50[0];
  v48 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v43, this, &v49);
  v15 = v46;
  *&__p[1] = *v44;
  __p[3] = v45;
  __p[0] = v43;
  v48 = v46;
  if (v43)
  {
    *a2 = v43;
    *(a2 + 8) = *&__p[1];
    v16 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v16;
    *(a2 + 32) = v15;
LABEL_74:
    *(a2 + 48) = 1;
    goto LABEL_75;
  }

  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<65535ul,false>,true>(&v43, this, v5, &v49);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44[0]) = 0;
  v17 = v46;
  v46 = 0uLL;
  v48 = v17;
  if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v15 + 1) + 16))(*(&v15 + 1));
    std::__shared_weak_count::__release_weak(*(&v15 + 1));
  }

  v18 = *(&v46 + 1);
  v19 = __p[0];
  if (!*(&v46 + 1) || atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    operator delete(v44[0]);
    if (v19)
    {
      goto LABEL_73;
    }

    goto LABEL_29;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v19)
  {
    goto LABEL_73;
  }

LABEL_29:
  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<65535ul,false>,false>(this, v10, 0x101u, &v49, &v43);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44[0]) = 0;
  v20 = v46;
  v46 = 0uLL;
  v21 = *(&v48 + 1);
  v48 = v20;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = *(&v46 + 1);
  v23 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
    if (!v23)
    {
      goto LABEL_41;
    }

LABEL_73:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v48;
    goto LABEL_74;
  }

  if (v23)
  {
    goto LABEL_73;
  }

LABEL_41:
  v24 = *(this + 13);
  if (!v24)
  {
LABEL_47:
    v31 = 0;
    v52 = 0;
    v53 = 0;
    goto LABEL_48;
  }

  v25 = v24[2] - *v24;
  *v49++ = 258;
  *v49 = v25;
  v26 = ++v49;
  v27 = *(this + 13);
  v28 = *v27;
  v29 = *(v27 + 8);
  if (*v27 == v29)
  {
    v31 = 0x100000002;
    v52 = 0;
    v53 = 0;
    goto LABEL_48;
  }

  v30 = v29 - v28;
  if ((v29 - v28) <= 0x20)
  {
    memcpy(v26, v28, v29 - v28);
    v32 = ((*(v27 + 8) - *v27 + 11) & 0xFFF8u) - (*(v27 + 8) - *v27) + 65532;
    v49 = (v49 + v30 + (((*(v27 + 8) - *v27 + 11) & 0xFFF8) - (*(v27 + 8) - *v27) - 4));
    goto LABEL_47;
  }

  v54 = *(v27 + 8);
  v55 = v28;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(&v55, &v54, &v52);
  v31 = 0x100000010;
LABEL_48:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v31, 0x102u, &v52, "", 0, &v43);
  v33 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44[0]) = 0;
  v34 = v46;
  v46 = 0uLL;
  v35 = *(&v48 + 1);
  v48 = v34;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *(&v46 + 1);
  v37 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (v37)
  {
    goto LABEL_73;
  }

  (*(*this + 32))(&v43, this, v50);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44[0]) = 0;
  v38 = v46;
  v46 = 0uLL;
  v39 = *(&v48 + 1);
  v48 = v38;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = *(&v46 + 1);
  v41 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (v41)
  {
    goto LABEL_73;
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

LABEL_75:
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

void sub_297CA473C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::sys::Meta_Req::getSize(mipc::sys::Meta_Req *this)
{
  v1 = *(this + 11);
  if (v1 && (v2 = v1[1] - *v1, (v2 - 65532) >= 0xFFFFFFFFFFFF0000))
  {
    v3 = ((v2 + 11) & 0xFFF8) + 16;
    v4 = *(this + 12);
    if (!v4)
    {
LABEL_4:
      v5 = *(this + 13);
      if (v5)
      {
        goto LABEL_5;
      }

      return v5 + v4 + v3;
    }
  }

  else
  {
    v3 = 16;
    v4 = *(this + 12);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  v8 = v4[1] - *v4;
  if ((v8 - 65532) >= 0xFFFFFFFFFFFF0000)
  {
    v4 = ((v8 + 11) & 0xFFF8);
    v5 = *(this + 13);
    if (!v5)
    {
      return v5 + v4 + v3;
    }
  }

  else
  {
    v4 = 0;
    v5 = *(this + 13);
    if (!v5)
    {
      return v5 + v4 + v3;
    }
  }

LABEL_5:
  v6 = v5[1] - *v5;
  if ((v6 - 65532) >= 0xFFFFFFFFFFFF0000)
  {
    return v4 + v3 + ((v6 + 11) & 0xFFF8);
  }

  else
  {
    return v4 + v3;
  }
}

void mipc::Message::serializeTlv<mipc::mipc_byte_array_t<65535ul,false>,true>(uint64_t a1, uint64_t a2, char ***a3, _WORD **a4)
{
  if (*a3)
  {
    v6 = *(*a3 + 2) - **a3;
    **a4 = 256;
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
      goto LABEL_10;
    }

    v12 = v11 - v10;
    if ((v11 - v10) >> 16)
    {
      v19 = (*a3)[1];
      v20 = v10;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(&v20, &v19, &v17);
      v13 = 0x100000010;
      goto LABEL_10;
    }

    memcpy(v8, v10, v11 - v10);
    v15 = ((*(v9 + 4) - *v9 + 11) & 0xFFF8u) - (*(v9 + 2) - *v9) + 65532;
    *a4 = (*a4 + v12 + (((*(v9 + 4) - *v9 + 11) & 0xFFF8) - (*(v9 + 4) - *v9) - 4));
  }

  else if (!*(a2 + 32))
  {
    v17 = 0;
    v18 = 0;
    v13 = 0x10000000FLL;
    goto LABEL_10;
  }

  v13 = 0;
  v17 = 0;
  v18 = 0;
LABEL_10:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v13, 0x100u, &v17, "", 0, a1);
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

void sub_297CA4A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::sys::Meta_Cnf *mipc::sys::Meta_Cnf::Meta_Cnf(mipc::sys::Meta_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 110, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E805F8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::sys::Meta_Cnf::deserialize(this, v7);
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

void sub_297CA4B54(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v1 + 13);
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v1 + 12);
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v2);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sys::Meta_Cnf::deserialize(void ***this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  ((*this)[5])(__p);
  v4 = *__p;
  *a2 = *__p;
  v5 = v40;
  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<65535ul,false>,false>(this, this + 11, 0x100u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v6 = v40;
  v40 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v40 + 1);
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<65535ul,false>,false>(this, this + 12, 0x101u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v9 = v40;
  v40 = 0uLL;
  v10 = a2[5];
  *(a2 + 2) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *a2;
  v12 = *(&v40 + 1);
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v11)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v13;
    v41 = v13;
    *__p = v13;
    *&__p[16] = v13;
    mipc::Message::findTLV(this, 0x102u, __p);
    *&v38[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v38 = v14;
    *v37 = v14;
    v36 = *__p;
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v37, *&__p[8], *&__p[16]);
    }

    else
    {
      *v37 = *&__p[8];
      *v38 = *&__p[24];
    }

    *&v38[8] = v40;
    if (*(&v40 + 1))
    {
      atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v36;
    if (v36 && v36 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v36, &v30);
LABEL_55:
      v25 = *&v38[16];
      if (*&v38[16] && !atomic_fetch_add((*&v38[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }

      if ((v38[7] & 0x80000000) != 0)
      {
        operator delete(v37[0]);
      }

      v26 = *(&v40 + 1);
      if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }

      *a2 = v30;
      if (*(a2 + 31) < 0)
      {
        operator delete(a2[1]);
      }

      *(a2 + 1) = v31;
      a2[3] = v32;
      HIBYTE(v32) = 0;
      LOBYTE(v31) = 0;
      v27 = v33;
      v33 = 0uLL;
      v28 = a2[5];
      *(a2 + 2) = v27;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
      }

      v29 = *(&v33 + 1);
      if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31);
      }

      return;
    }

    v16 = v41;
    v17 = *(&v41 + 1);
    v18 = this[13];
    this[13] = 0;
    if (v18)
    {
      v19 = *v18;
      if (*v18)
      {
        v18[1] = v19;
        operator delete(v19);
      }

      operator delete(v18);
    }

    if (v15)
    {
      if (v15 != 0x10000000ELL)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v20 = operator new(0x18uLL);
      *v20 = 0;
      v20[1] = 0;
      v20[2] = 0;
      v21 = this[13];
      this[13] = v20;
      if (v21)
      {
        v22 = *v21;
        if (*v21)
        {
          v21[1] = v22;
          operator delete(v22);
        }

        operator delete(v21);
        v20 = this[13];
      }

      v15 = 0x100000003;
      if (!v16)
      {
        goto LABEL_50;
      }

      if (v16 > 0x20)
      {
        v15 = 0x100000010;
LABEL_50:
        v23 = this[3];
        v34 = this[2];
        v35 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
        }

        mipc::Message::handle<(mipc::Error::Type)2>(this, v15, 0x102u, &v34, "", 0, &v30);
        v24 = v35;
        if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }

        goto LABEL_55;
      }

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v20, v17, &v17[v16], v16);
    }

    v15 = 0;
    goto LABEL_50;
  }
}

void sub_297CA51A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

void *mipc::sys::Meta_Cnf::Meta_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 110, &v14, a3, 2);
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
  *a1 = &unk_2A1E84888;
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
  *a1 = &unk_2A1E805F8;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297CA5444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Meta_Cnf::~Meta_Cnf(mipc::sys::Meta_Cnf *this)
{
  *this = &unk_2A1E805F8;
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
    v5 = *v4;
    if (*v4)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    operator delete(v4);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v6[1] = v7;
      operator delete(v7);
    }

    operator delete(v6);
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
  mipc::sys::Meta_Cnf::~Meta_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::sys::Meta_Cnf::getSize(mipc::sys::Meta_Cnf *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
LABEL_4:
    v3 = *(this + 12);
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v2 = v1[1] - *v1;
  if ((v2 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v1 = 0;
    goto LABEL_4;
  }

  v1 = ((v2 + 11) & 0xFFF8);
  v3 = *(this + 12);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = v3[1] - *v3;
  v5 = __CFADD__(v4 - 65532, 0x10000);
  v3 = ((v4 + 11) & 0xFFF8);
  if (!v5)
  {
    v3 = 0;
  }

LABEL_7:
  v6 = *(this + 13);
  if (v6)
  {
    v7 = v6[1] - *v6;
    v5 = __CFADD__(v7 - 65532, 0x10000);
    v6 = ((v7 + 11) & 0xFFF8);
    if (!v5)
    {
      v6 = 0;
    }
  }

  v8 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v8 = 32;
  }

  return v3 + v1 + v6 + v8;
}

double mipc::sys::Dmf_Req::Dmf_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 111;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E80640;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return result;
}

{
  *(a1 + 8) = 111;
  *(a1 + 10) = a2;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 14) = 28671;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_2A1E80640;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return result;
}

void mipc::sys::Dmf_Req::~Dmf_Req(mipc::sys::Dmf_Req *this)
{
  *this = &unk_2A1E80640;
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
  *this = &unk_2A1E80640;
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
  *this = &unk_2A1E80640;
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

void mipc::sys::Dmf_Req::serialize(mipc::sys::Dmf_Req *this@<X0>, uint64_t a2@<X8>)
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

  v9 = &v4[v8];
  v35[0] = operator new(&v4[v8]);
  v36 = v35[0] + v9;
  bzero(v35[0], v9);
  v35[1] = v35[0] + v9;
  v34 = v35[0];
  v33 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v28, this, &v34);
  v10 = v31;
  *&__p[1] = *v29;
  __p[3] = v30;
  __p[0] = v28;
  v33 = v31;
  if (v28)
  {
    *a2 = v28;
    *(a2 + 8) = *&__p[1];
    v11 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
LABEL_53:
    *(a2 + 48) = 1;
    goto LABEL_54;
  }

  if (*(this + 11))
  {
    *v34 = 256;
    v12 = v34++;
    v12[1] = 4;
    v13 = v34++;
    *(v13 + 1) = **(this + 11);
    v34 += 2;
  }

  else if (!*(this + 4))
  {
    v14 = 0x10000000FLL;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_12:
  v37 = 0;
  v38 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v14, 0x100u, &v37, "", 0, &v28);
  v15 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    __p[0] = v28;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  __p[0] = v28;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_15:
    operator delete(__p[1]);
  }

LABEL_16:
  *&__p[1] = *v29;
  __p[3] = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29[0]) = 0;
  v16 = v31;
  v31 = 0uLL;
  v33 = v16;
  if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v10 + 1) + 16))(*(&v10 + 1));
    std::__shared_weak_count::__release_weak(*(&v10 + 1));
  }

  v17 = *(&v31 + 1);
  v18 = __p[0];
  if (!*(&v31 + 1) || atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_27:
    operator delete(v29[0]);
    if (v18)
    {
      goto LABEL_52;
    }

    goto LABEL_28;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v18)
  {
    goto LABEL_52;
  }

LABEL_28:
  mipc::Message::serializeTlv<mipc::mipc_byte_array_t<2048ul,false>,true>(this, v5, 0x101u, &v34, &v28);
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
      goto LABEL_41;
    }

LABEL_52:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v33;
    goto LABEL_53;
  }

  if (v22)
  {
    goto LABEL_52;
  }

LABEL_41:
  (*(*this + 32))(&v28, this, v35);
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
    goto LABEL_52;
  }

  *a2 = *v35;
  *(a2 + 16) = v36;
  v35[1] = 0;
  v36 = 0;
  v35[0] = 0;
  *(a2 + 48) = 0;
  v27 = *(&v33 + 1);
  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

LABEL_54:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }
}

void sub_297CA6160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *mipc::sys::Dmf_Req::getSize(mipc::sys::Dmf_Req *this)
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

mipc::sys::Dmf_Cnf *mipc::sys::Dmf_Cnf::Dmf_Cnf(mipc::sys::Dmf_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 112, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E80688;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 80) = 1;
  mipc::sys::Dmf_Cnf::deserialize(this, v7);
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

void sub_297CA6310(_Unwind_Exception *a1)
{
  mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array((v1 + 96));
  v3 = *(v1 + 88);
  *(v1 + 88) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sys::Dmf_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(__p);
  v4 = *__p;
  *a2 = *__p;
  v5 = v60;
  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned int,true>(this, this + 11, 0x100u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v6 = v60;
  v60 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v7 = *a2;
  v8 = *(&v60 + 1);
  if (*(&v60 + 1) && !atomic_fetch_add((*(&v60 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  v60 = v9;
  v61 = v9;
  *__p = v9;
  *&__p[16] = v9;
  mipc::Message::findTLV(this, 0x101u, __p);
  *&v58[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v58 = v10;
  *v57 = v10;
  v56 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v57, *&__p[8], *&__p[16]);
  }

  else
  {
    *v57 = *&__p[8];
    *v58 = *&__p[24];
  }

  *&v58[8] = v60;
  if (*(&v60 + 1))
  {
    atomic_fetch_add_explicit((*(&v60 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v56;
  if (!v56 || v56 == 0x10000000ELL)
  {
    v12 = v61;
    v13 = *(&v61 + 1);
    v15 = this[12];
    v14 = this[13];
    if (v14 != v15)
    {
      v16 = this[13];
      do
      {
        v18 = *(v16 - 3);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 2) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v15);
    }

    this[13] = v15;
    if (v11)
    {
      if (v11 != 0x10000000ELL)
      {
        goto LABEL_69;
      }
    }

    else if (v12 >= 8)
    {
      v19 = &v13[v12];
      v11 = 0x100000010;
      do
      {
        v20 = this[12];
        v21 = this[13];
        v22 = v21 - v20;
        if (v21 - v20 == 240)
        {
          goto LABEL_69;
        }

        if ((v19 - v13) < 4)
        {
          v11 = 0x100000005;
          goto LABEL_69;
        }

        if (v19 - v13 <= 2)
        {
          v23 = v19;
        }

        else
        {
          v23 = v13 + 2;
        }

        v24 = v19 - v23 <= 2;
        v27 = *v23;
        v25 = v23 + 2;
        v26 = v27;
        if (v24)
        {
          v28 = v19;
        }

        else
        {
          v28 = v25;
        }

        v29 = this[14];
        if (v21 >= v29)
        {
          v31 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3) + 1;
          if (v31 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v20) >> 3);
          if (2 * v32 > v31)
          {
            v31 = 2 * v32;
          }

          if (v32 >= 0x555555555555555)
          {
            v33 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v33 = v31;
          }

          v49 = v33;
          if (v33)
          {
            if (v33 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v34 = operator new(24 * v33);
          }

          else
          {
            v34 = 0;
          }

          v35 = &v34[8 * (v22 >> 3)];
          *v35 = 0;
          *(v35 + 1) = 0;
          *(v35 + 2) = 0;
          v36 = &v35[-v22];
          if (v20 != v21)
          {
            v48 = v34;
            v37 = v20;
            v38 = v36;
            do
            {
              *v38 = *v37;
              *(v38 + 2) = *(v37 + 2);
              *v37 = 0;
              *(v37 + 1) = 0;
              *(v37 + 2) = 0;
              v37 += 24;
              v38 += 24;
            }

            while (v37 != v21);
            do
            {
              v39 = *v20;
              if (*v20)
              {
                *(v20 + 1) = v39;
                operator delete(v39);
              }

              v20 += 24;
            }

            while (v20 != v21);
            v20 = this[12];
            v34 = v48;
          }

          v30 = v35 + 24;
          this[12] = v36;
          this[13] = v30;
          this[14] = &v34[24 * v49];
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v21 = 0;
          *(v21 + 1) = 0;
          v30 = v21 + 24;
          *(v21 + 2) = 0;
        }

        this[13] = v30;
        if (!v26)
        {
          v11 = 0x100000003;
          goto LABEL_69;
        }

        if (v26 > 0x800)
        {
          goto LABEL_69;
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v30 - 3, v28, &v28[v26], v26);
        v40 = (((v26 + 11) & 0x1FF8) - 4) & 0xFFFC;
        if (v19 - v28 <= v40)
        {
          v13 = v19;
        }

        else
        {
          v13 = &v28[v40];
        }
      }

      while ((v19 - v13) > 7);
    }

    v11 = 0;
LABEL_69:
    v41 = this[3];
    v54 = this[2];
    v55 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v11, 0x101u, &v54, "", 0, &v50);
    v42 = v55;
    if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
    }

    goto LABEL_74;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v56, &v50);
LABEL_74:
  v43 = *&v58[16];
  if (*&v58[16] && !atomic_fetch_add((*&v58[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  if ((v58[7] & 0x80000000) != 0)
  {
    operator delete(v57[0]);
  }

  v44 = *(&v60 + 1);
  if (*(&v60 + 1) && !atomic_fetch_add((*(&v60 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v50;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v51;
  a2[3] = v52;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v45 = v53;
  v53 = 0uLL;
  v46 = a2[5];
  *(a2 + 2) = v45;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = *(&v53 + 1);
  if (*(&v53 + 1) && !atomic_fetch_add((*(&v53 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }
}

void sub_297CA6A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  mipc::Error::~Error(&a27);
  mipc::Error::~Error(v27);
  _Unwind_Resume(a1);
}

uint64_t mipc::sys::Dmf_Cnf::Dmf_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 112, &v14, a3, 2);
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
  *a1 = &unk_2A1E848D0;
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
  *a1 = &unk_2A1E80688;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 80) = 1;
  return a1;
}