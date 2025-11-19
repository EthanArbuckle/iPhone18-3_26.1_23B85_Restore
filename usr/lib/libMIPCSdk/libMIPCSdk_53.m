void mipc::cust::Sys_Get_Idc_Tx_Blank_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 11, 0x100u, &v28);
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
  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 12, 0x101u, &v28);
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
      mipc::Message::deserializeTlv<short,false>(this, this + 14, 0x103u, &v28);
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
          mipc::Message::deserializeTlv<unsigned short,false>(this, this + 16, 0x105u, &v28);
          mipc::Error::operator=(a2, &v28);
          mipc::Error::~Error(&v28);
        }
      }
    }
  }
}

uint64_t mipc::cust::Sys_Get_Idc_Tx_Blank_Cnf::Sys_Get_Idc_Tx_Blank_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14711, &v14, a3, 2);
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
  *a1 = &unk_2A1E8B870;
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
  *a1 = &unk_2A1E87C70;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_297D75048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Idc_Tx_Blank_Cnf::~Sys_Get_Idc_Tx_Blank_Cnf(mipc::cust::Sys_Get_Idc_Tx_Blank_Cnf *this)
{
  *this = &unk_2A1E87C70;
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
  mipc::cust::Sys_Get_Idc_Tx_Blank_Cnf::~Sys_Get_Idc_Tx_Blank_Cnf(this);

  operator delete(v1);
}

uint64_t mipc::cust::Sys_Get_Idc_Tx_Blank_Cnf::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1 + 8 * (this[8].i64[0] != 0);
}

double mipc::cust::Sys_Set_Idc_Tx_Blank_Req::Sys_Set_Idc_Tx_Blank_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14712;
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
  *a1 = &unk_2A1E87CB8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

{
  *(a1 + 8) = 14712;
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
  *a1 = &unk_2A1E87CB8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

void mipc::cust::Sys_Set_Idc_Tx_Blank_Req::~Sys_Set_Idc_Tx_Blank_Req(mipc::cust::Sys_Set_Idc_Tx_Blank_Req *this)
{
  *this = &unk_2A1E87CB8;
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
  mipc::cust::Sys_Set_Idc_Tx_Blank_Req::~Sys_Set_Idc_Tx_Blank_Req(this);

  operator delete(v1);
}

void mipc::cust::Sys_Set_Idc_Tx_Blank_Req::serialize(mipc::cust::Sys_Set_Idc_Tx_Blank_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 120);
  v5 = (this + 128);
  v6 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 104))))) + 8 * (*(this + 15) != 0) + 8 * (*(this + 16) != 0);
  v50[0] = operator new(v6);
  v51 = v50[0] + v6;
  bzero(v50[0], v6);
  v50[1] = v50[0] + v6;
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
  v7 = v46;
  v46 = 0uLL;
  v8 = *(&v48 + 1);
  v48 = v7;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(&v46 + 1);
  v10 = __p[0];
  if (!*(&v46 + 1) || atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v44);
    if (v10)
    {
      goto LABEL_88;
    }

    goto LABEL_13;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v10)
  {
    goto LABEL_88;
  }

LABEL_13:
  if (*(this + 11))
  {
    *v49 = 256;
    v11 = v49++;
    v11[1] = 4;
    v12 = v49++;
    *(v12 + 1) = **(this + 11);
    v49 += 2;
  }

  v52 = 0;
  v53 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v52, "", 0, &v43);
  v13 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    __p[0] = v43;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_18:
    operator delete(__p[1]);
  }

LABEL_19:
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
  }

  v16 = *(&v46 + 1);
  v17 = __p[0];
  if (!*(&v46 + 1) || atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    operator delete(v44);
    if (v17)
    {
      goto LABEL_88;
    }

    goto LABEL_31;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v17)
  {
    goto LABEL_88;
  }

LABEL_31:
  if (*(this + 12))
  {
    *v49 = 257;
    v18 = v49++;
    v18[1] = 4;
    v19 = v49++;
    *(v19 + 1) = **(this + 12);
    v49 += 2;
  }

  v52 = 0;
  v53 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v52, "", 0, &v43);
  v20 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
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
  v21 = v46;
  v46 = 0uLL;
  v22 = *(&v48 + 1);
  v48 = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(&v46 + 1);
  v24 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
    if (!v24)
    {
      goto LABEL_48;
    }

LABEL_88:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v48;
    v48 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_89;
  }

  if (v24)
  {
    goto LABEL_88;
  }

LABEL_48:
  if (*(this + 13))
  {
    *v49 = 258;
    v25 = v49++;
    v25[1] = 1;
    v26 = v49++;
    *(v26 + 2) = **(this + 13);
    v49 += 2;
  }

  v52 = 0;
  v53 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v52, "", 0, &v43);
  v27 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
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
  v28 = v46;
  v46 = 0uLL;
  v29 = *(&v48 + 1);
  v48 = v28;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *(&v46 + 1);
  v31 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (v31)
  {
    goto LABEL_88;
  }

  mipc::Message::serializeTlv<short,false>(this, this + 14, 259, &v49, &v43);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v32 = v46;
  v46 = 0uLL;
  v33 = *(&v48 + 1);
  v48 = v32;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *(&v46 + 1);
  v35 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (v35)
  {
    goto LABEL_88;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v4, 260, &v49, &v43);
  __p[0] = v43;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v44;
  __p[3] = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v36 = v46;
  v46 = 0uLL;
  v37 = *(&v48 + 1);
  v48 = v36;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(&v46 + 1);
  v39 = __p[0];
  if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (v39)
  {
    goto LABEL_88;
  }

  mipc::Message::serializeTlv<unsigned short,false>(this, v5, 261, &v49, &v43);
  v40 = *mipc::Error::operator=(__p, &v43);
  mipc::Error::~Error(&v43);
  if (v40)
  {
    goto LABEL_88;
  }

  (*(*this + 32))(&v43, this, v50);
  v41 = *mipc::Error::operator=(__p, &v43);
  mipc::Error::~Error(&v43);
  if (v41)
  {
    goto LABEL_88;
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

LABEL_89:
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

void sub_297D75F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf *mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf::Sys_Set_Idc_Tx_Blank_Cnf(mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14713, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E87D00;
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

void sub_297D76158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf::deserialize@<D0>(mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf::Sys_Set_Idc_Tx_Blank_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14713, &v14, a3, 2);
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
  *a1 = &unk_2A1E8B8B8;
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
  *a1 = &unk_2A1E87D00;
  return a1;
}

void sub_297D76428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf::~Sys_Set_Idc_Tx_Blank_Cnf(mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf *this)
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

uint64_t mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf::getSize(mipc::cust::Sys_Set_Idc_Tx_Blank_Cnf *this)
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

double mipc::cust::Sys_Get_Etm_Req::Sys_Get_Etm_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14714;
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
  *a1 = &unk_2A1E87D48;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 14714;
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
  *a1 = &unk_2A1E87D48;
  *(a1 + 88) = 0;
  return result;
}

void mipc::cust::Sys_Get_Etm_Req::~Sys_Get_Etm_Req(mipc::cust::Sys_Get_Etm_Req *this)
{
  *this = &unk_2A1E87D48;
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
  *this = &unk_2A1E87D48;
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
  *this = &unk_2A1E87D48;
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

void mipc::cust::Sys_Get_Etm_Req::serialize(mipc::cust::Sys_Get_Etm_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297D7704C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::cust::Sys_Get_Etm_Req::getSize(mipc::cust::Sys_Get_Etm_Req *this)
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

mipc::cust::Sys_Get_Etm_Cnf *mipc::cust::Sys_Get_Etm_Cnf::Sys_Get_Etm_Cnf(mipc::cust::Sys_Get_Etm_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14715, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E87D90;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::cust::Sys_Get_Etm_Cnf::deserialize(this, &v7);
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

void sub_297D771C8(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Etm_Cnf::deserialize(mipc::cust::Sys_Get_Etm_Cnf *this@<X0>, uint64_t a2@<X8>)
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
        if (v19 - v18 == 240)
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

        if (v24 > 0x10)
        {
          break;
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v28 - 3, v26, &v26[v24], v24);
        v38 = (((v24 + 11) & 0x38) - 4) & 0xFFFC;
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

void sub_297D77824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  mipc::Error::~Error(&a29);
  mipc::Error::~Error(v29);
  _Unwind_Resume(a1);
}

void sub_297D77840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a21);
  mipc::Error::~Error(&a23);
  mipc::Error::~Error(&a29);
  mipc::Error::~Error(v29);
  _Unwind_Resume(a1);
}

void *mipc::cust::Sys_Get_Etm_Cnf::Sys_Get_Etm_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14715, &v14, a3, 2);
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
  *a1 = &unk_2A1E8B900;
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
  *a1 = &unk_2A1E87D90;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297D77AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Etm_Cnf::~Sys_Get_Etm_Cnf(mipc::cust::Sys_Get_Etm_Cnf *this)
{
  *this = &unk_2A1E87D90;
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
  *this = &unk_2A1E87D90;
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
  *this = &unk_2A1E87D90;
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

uint64_t mipc::cust::Sys_Get_Etm_Cnf::getSize(mipc::cust::Sys_Get_Etm_Cnf *this)
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

double mipc::cust::Sys_Get_Pmic_Req::Sys_Get_Pmic_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14716;
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
  *a1 = &unk_2A1E87DD8;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 14716;
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
  *a1 = &unk_2A1E87DD8;
  *(a1 + 88) = 0;
  return result;
}

void mipc::cust::Sys_Get_Pmic_Req::~Sys_Get_Pmic_Req(mipc::cust::Sys_Get_Pmic_Req *this)
{
  *this = &unk_2A1E87DD8;
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
  *this = &unk_2A1E87DD8;
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
  *this = &unk_2A1E87DD8;
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

void mipc::cust::Sys_Get_Pmic_Req::serialize(mipc::cust::Sys_Get_Pmic_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297D7888C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::cust::Sys_Get_Pmic_Req::getSize(mipc::cust::Sys_Get_Pmic_Req *this)
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

mipc::cust::Sys_Get_Pmic_Cnf *mipc::cust::Sys_Get_Pmic_Cnf::Sys_Get_Pmic_Cnf(mipc::cust::Sys_Get_Pmic_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14717, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E87E20;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::cust::Sys_Get_Pmic_Cnf::deserialize(this, &v7);
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

void sub_297D78A08(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Pmic_Cnf::deserialize(mipc::cust::Sys_Get_Pmic_Cnf *this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<8ul,false>,10ul,false>(&v8, this, this + 11);
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

void *mipc::cust::Sys_Get_Pmic_Cnf::Sys_Get_Pmic_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14717, &v14, a3, 2);
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
  *a1 = &unk_2A1E8B948;
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
  *a1 = &unk_2A1E87E20;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297D78E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Pmic_Cnf::~Sys_Get_Pmic_Cnf(mipc::cust::Sys_Get_Pmic_Cnf *this)
{
  *this = &unk_2A1E87E20;
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
  *this = &unk_2A1E87E20;
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
  *this = &unk_2A1E87E20;
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

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<8ul,false>,10ul,false>(void *a1, mipc::Message *this, void *a3)
{
  v4 = this;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v6;
  v52 = v6;
  *v50 = v6;
  *&v50[16] = v6;
  mipc::Message::findTLV(this, 0x100u, v50);
  *&v49[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v49 = v7;
  *__p = v7;
  v47 = *v50;
  if ((v50[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v50[8], *&v50[16]);
  }

  else
  {
    *__p = *&v50[8];
    *v49 = *&v50[24];
  }

  *&v49[8] = v51;
  if (*(&v51 + 1))
  {
    atomic_fetch_add_explicit((*(&v51 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v47;
  if (v47 && v47 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(v4, &v47, a1);
    goto LABEL_64;
  }

  v9 = v52;
  v10 = *(&v52 + 1);
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
      v45 = *(v4 + 2);
      v46 = v16;
      if (!v16)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else
  {
    if (v9 >= 8)
    {
      v42 = a1;
      v43 = v4;
      v17 = &v10[v9];
      v8 = 0x100000010;
      while (1)
      {
        v18 = *a3;
        v19 = a3[1];
        v20 = v19 - *a3;
        if (v20 == 240)
        {
          goto LABEL_78;
        }

        if ((v17 - v10) < 4)
        {
          v8 = 0x100000005;
LABEL_78:
          a1 = v42;
          v4 = v43;
          v16 = *(v43 + 3);
          v45 = *(v43 + 2);
          v46 = v16;
          if (v16)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        v21 = v17 - v10 <= 2 ? v17 : v10 + 2;
        v22 = v17 - v21 <= 2;
        v25 = *v21;
        v23 = (v21 + 2);
        v24 = v25;
        v26 = v22 ? v17 : v23;
        v27 = a3[2];
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

          v31 = v30 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v29;
          v44 = v31;
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
            v35 = v18;
            v36 = v34;
            do
            {
              *v36 = *v35;
              *(v36 + 2) = v35[2];
              *v35 = 0;
              v35[1] = 0;
              v35[2] = 0;
              v35 += 3;
              v36 += 24;
            }

            while (v35 != v19);
            do
            {
              v37 = *v18;
              if (*v18)
              {
                v18[1] = v37;
                operator delete(v37);
              }

              v18 += 3;
            }

            while (v18 != v19);
            v18 = *a3;
          }

          v28 = v33 + 24;
          *a3 = v34;
          a3[1] = v28;
          a3[2] = &v32[24 * v44];
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v19 = 0;
          v19[1] = 0;
          v28 = v19 + 3;
          v19[2] = 0;
        }

        a3[1] = v28;
        if (!v24)
        {
          break;
        }

        if (v24 > 8)
        {
          goto LABEL_78;
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v28 - 3, v26, &v26[v24], v24);
        v38 = (((v24 + 11) & 0x18) - 4) & 0xFFFC;
        if (v17 - v26 <= v38)
        {
          v10 = v17;
        }

        else
        {
          v10 = &v26[v38];
        }

        if ((v17 - v10) <= 7)
        {
          v8 = 0;
          a1 = v42;
          v4 = v43;
          v16 = *(v43 + 3);
          v45 = *(v43 + 2);
          v46 = v16;
          if (v16)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        }
      }

      v8 = 0x100000003;
      a1 = v42;
      v4 = v43;
      v16 = *(v43 + 3);
      v45 = *(v43 + 2);
      v46 = v16;
      if (v16)
      {
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    v8 = 0;
  }

  v16 = *(v4 + 3);
  v45 = *(v4 + 2);
  v46 = v16;
  if (v16)
  {
LABEL_60:
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_61:
  mipc::Message::handle<(mipc::Error::Type)2>(v4, v8, 0x100u, &v45, "", 0, a1);
  v39 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_64:
  v40 = *&v49[16];
  if (*&v49[16] && !atomic_fetch_add((*&v49[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
    if ((v49[7] & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if ((v49[7] & 0x80000000) != 0)
  {
LABEL_67:
    operator delete(__p[0]);
  }

LABEL_68:
  v41 = *(&v51 + 1);
  if (!*(&v51 + 1) || atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v50[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_71;
  }

  (v41->__on_zero_shared)(v41);
  std::__shared_weak_count::__release_weak(v41);
  if ((v50[31] & 0x80000000) != 0)
  {
LABEL_71:
    operator delete(*&v50[8]);
  }
}

void sub_297D79788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297D7979C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_297D797C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t mipc::cust::Sys_Get_Pmic_Cnf::getSize(mipc::cust::Sys_Get_Pmic_Cnf *this)
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

double mipc::cust::Sys_Get_Rfsoc_Req::Sys_Get_Rfsoc_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14718;
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
  *a1 = &unk_2A1E87E68;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 14718;
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
  *a1 = &unk_2A1E87E68;
  *(a1 + 88) = 0;
  return result;
}

void mipc::cust::Sys_Get_Rfsoc_Req::~Sys_Get_Rfsoc_Req(mipc::cust::Sys_Get_Rfsoc_Req *this)
{
  *this = &unk_2A1E87E68;
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
  *this = &unk_2A1E87E68;
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
  *this = &unk_2A1E87E68;
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

void mipc::cust::Sys_Get_Rfsoc_Req::serialize(mipc::cust::Sys_Get_Rfsoc_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297D7A124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::cust::Sys_Get_Rfsoc_Req::getSize(mipc::cust::Sys_Get_Rfsoc_Req *this)
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

mipc::cust::Sys_Get_Rfsoc_Cnf *mipc::cust::Sys_Get_Rfsoc_Cnf::Sys_Get_Rfsoc_Cnf(mipc::cust::Sys_Get_Rfsoc_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14719, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E87EB0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::cust::Sys_Get_Rfsoc_Cnf::deserialize(this, &v7);
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

void sub_297D7A2A0(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Rfsoc_Cnf::deserialize(mipc::cust::Sys_Get_Rfsoc_Cnf *this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<8ul,false>,10ul,false>(&v8, this, this + 11);
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

void *mipc::cust::Sys_Get_Rfsoc_Cnf::Sys_Get_Rfsoc_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14719, &v14, a3, 2);
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
  *a1 = &unk_2A1E8B990;
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
  *a1 = &unk_2A1E87EB0;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297D7A698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Rfsoc_Cnf::~Sys_Get_Rfsoc_Cnf(mipc::cust::Sys_Get_Rfsoc_Cnf *this)
{
  *this = &unk_2A1E87EB0;
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
  *this = &unk_2A1E87EB0;
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
  *this = &unk_2A1E87EB0;
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

uint64_t mipc::cust::Sys_Get_Rfsoc_Cnf::getSize(mipc::cust::Sys_Get_Rfsoc_Cnf *this)
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

double mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Req::Sys_Get_Spmi_Idc_Tx_Blank_Config_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14722;
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
  *a1 = &unk_2A1E87EF8;
  return result;
}

{
  *(a1 + 8) = 14722;
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
  *a1 = &unk_2A1E87EF8;
  return result;
}

void mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Req::~Sys_Get_Spmi_Idc_Tx_Blank_Config_Req(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Req *this)
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

void mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Req::serialize(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297D7B1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf *mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14723, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E87F40;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf::deserialize(this, &v7);
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

void sub_297D7B374(_Unwind_Exception *a1)
{
  v4 = *(v1 + 20);
  *(v1 + 20) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 19);
    *(v1 + 19) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 18);
      *(v1 + 18) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(v1 + 19);
    *(v1 + 19) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 18);
  *(v1 + 18) = 0;
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 17);
    *(v1 + 17) = 0;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v6);
  v7 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 14);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v7);
  v8 = *(v1 + 14);
  if (!v8)
  {
LABEL_6:
    v9 = *v2;
    if (!*v2)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v1 + 15) = v8;
  operator delete(v8);
  v9 = *v2;
  if (!*v2)
  {
LABEL_7:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_13:
  *(v1 + 12) = v9;
  operator delete(v9);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf::deserialize(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v28);
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
  mipc::Message::deserializeTlv<unsigned int,4ul,false>(&v28, this, this + 11, 0x100u);
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
  mipc::Message::deserializeTlv<unsigned int,4ul,false>(&v28, this, this + 14, 0x101u);
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
    mipc::Message::deserializeTlv<short,false>(this, this + 17, 0x102u, &v28);
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
      mipc::Message::deserializeTlv<unsigned int,false>(this, this + 18, 0x103u, &v28);
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
        mipc::Message::deserializeTlv<unsigned int,false>(this, this + 19, 0x104u, &v28);
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
          mipc::Message::deserializeTlv<unsigned char,false>(this, this + 20, 0x105u, &v28);
          mipc::Error::operator=(a2, &v28);
          mipc::Error::~Error(&v28);
        }
      }
    }
  }
}

uint64_t mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14723, &v14, a3, 2);
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
  *a1 = &unk_2A1E8B9D8;
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
  *a1 = &unk_2A1E87F40;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return a1;
}

void sub_297D7BD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf::~Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf *this)
{
  *this = &unk_2A1E87F40;
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

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
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
  mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf::~Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<unsigned int,4ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
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
      goto LABEL_50;
    }

    v10 = 0;
    a3[1] = *a3;
  }

  else
  {
    v11 = v43;
    v12 = *(&v43 + 1);
    v13 = *a3;
    a3[1] = *a3;
    if (v11 < 8)
    {
      v10 = 0;
    }

    else
    {
      v34 = v4;
      v35 = a1;
      v14 = &v12[v11];
      while (1)
      {
        v15 = *a3;
        v16 = v13 - *a3;
        if (v16 == 16)
        {
          v10 = 0x100000010;
          goto LABEL_44;
        }

        v17 = v14 - v12;
        if ((v14 - v12) < 4)
        {
          a1 = v35;
          v4 = v34;
          v10 = 0x100000005;
          goto LABEL_45;
        }

        v18 = v12 + 2;
        if (v17 <= 2)
        {
          v18 = v14;
        }

        v19 = v14 - v18 <= 2;
        v22 = *v18;
        v20 = (v18 + 2);
        v21 = v22;
        v23 = v19 ? v14 : v20;
        v24 = a3[2];
        if (v13 >= v24)
        {
          v25 = (v16 >> 2) + 1;
          if (v25 >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v26 = v24 - v15;
          if (v26 >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v25;
          if (v27)
          {
            if (v27 >> 62)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v28 = operator new(4 * v27);
          }

          else
          {
            v28 = 0;
          }

          v29 = &v28[4 * (v16 >> 2)];
          *v29 = 0;
          v13 = v29 + 4;
          memcpy(v28, v15, v16);
          *a3 = v28;
          a3[1] = v13;
          a3[2] = &v28[4 * v27];
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v13++ = 0;
        }

        a3[1] = v13;
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
        *(v13 - 1) = *v23;
        if (v14 - v23 <= 4)
        {
          v12 = v14;
        }

        if ((v14 - v12) <= 7)
        {
          v10 = 0;
          goto LABEL_44;
        }
      }

      v10 = 0x100000012;
LABEL_44:
      a1 = v35;
      v4 = v34;
    }
  }

LABEL_45:
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

LABEL_50:
  v32 = *&v40[16];
  if (*&v40[16] && !atomic_fetch_add((*&v40[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    if ((v40[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v40[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v33 = *(&v42 + 1);
  if (!*(&v42 + 1) || atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v41[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

  (v33->__on_zero_shared)(v33);
  std::__shared_weak_count::__release_weak(v33);
  if ((v41[31] & 0x80000000) != 0)
  {
LABEL_57:
    operator delete(*&v41[8]);
  }
}

void sub_297D7C320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

uint64_t mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf::getSize(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Config_Cnf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2 * (v2 - v1) + 16;
  }

  v4 = *(this + 14);
  v5 = *(this + 15);
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

  v8 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v8, vceqzq_s64(*(this + 136))), vbicq_s8(v8, vceqzq_s64(*(this + 152))))) + v7 + v6 + v3;
}

double mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Req::Sys_Set_Spmi_Idc_Tx_Blank_Config_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14724;
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
  *a1 = &unk_2A1E87F88;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

{
  *(a1 + 8) = 14724;
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
  *a1 = &unk_2A1E87F88;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

void mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Req::~Sys_Set_Spmi_Idc_Tx_Blank_Config_Req(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Req *this)
{
  *this = &unk_2A1E87F88;
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

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
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
  mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Req::~Sys_Set_Spmi_Idc_Tx_Blank_Config_Req(this);

  operator delete(v1);
}

void mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Req::serialize(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 11);
  v5 = *(this + 12);
  v6 = (this + 88);
  if (v4 == v5)
  {
    v7 = 16;
  }

  else
  {
    v7 = 2 * (v5 - v4) + 32;
  }

  v8 = *(this + 14);
  v9 = *(this + 15);
  v10 = (this + 112);
  if (v8 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2 * (v9 - v8) + 16;
  }

  v12 = this + 152;
  v13 = vdupq_n_s64(8uLL);
  v14 = vaddvq_s64(vaddq_s64(vbicq_s8(v13, vceqzq_s64(*(this + 136))), vbicq_s8(v13, vceqzq_s64(*(this + 152)))));
  v55[1] = 0;
  v56 = 0;
  v15 = v14 + v11;
  v55[0] = 0;
  v16 = v15 + v7;
  if (v15 + v7)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v17 = operator new(v15 + v7);
    v55[0] = v17;
    v56 = &v17[v16];
    bzero(v17, v16);
    v55[1] = &v17[v16];
  }

  else
  {
    v17 = 0;
  }

  v54 = v17;
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
  v18 = v51;
  v51 = 0uLL;
  v19 = *(&v53 + 1);
  v53 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(&v51 + 1);
  v21 = __p[0];
  if (!*(&v51 + 1) || atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v49);
    if (v21)
    {
      goto LABEL_87;
    }

    goto LABEL_23;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (SHIBYTE(v50) < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v21)
  {
    goto LABEL_87;
  }

LABEL_23:
  mipc::Message::serializeTlv<unsigned int,4ul,false>(&v48, this, v6, 0x100u, &v54);
  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v22 = v51;
  v51 = 0uLL;
  v23 = *(&v53 + 1);
  v53 = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *(&v51 + 1);
  v25 = __p[0];
  if (!*(&v51 + 1) || atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    operator delete(v49);
    if (v25)
    {
      goto LABEL_87;
    }

    goto LABEL_35;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if (SHIBYTE(v50) < 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  if (v25)
  {
    goto LABEL_87;
  }

LABEL_35:
  mipc::Message::serializeTlv<unsigned int,4ul,false>(&v48, this, v10, 0x101u, &v54);
  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v26 = v51;
  v51 = 0uLL;
  v27 = *(&v53 + 1);
  v53 = v26;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(&v51 + 1);
  v29 = __p[0];
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
    if (!v29)
    {
      goto LABEL_47;
    }

LABEL_87:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v53;
    v53 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_88;
  }

  if (v29)
  {
    goto LABEL_87;
  }

LABEL_47:
  if (*(this + 17))
  {
    *v54 = 258;
    v30 = v54++;
    v30[1] = 2;
    v31 = v54++;
    v31[1] = **(this + 17);
    v54 += 2;
  }

  v57 = 0;
  v58 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v57, "", 0, &v48);
  v32 = v58;
  if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
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
  v33 = v51;
  v51 = 0uLL;
  v34 = *(&v53 + 1);
  v53 = v33;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *(&v51 + 1);
  v36 = __p[0];
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (v36)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned int,false>(this, v12 - 1, 259, &v54, &v48);
  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v37 = v51;
  v51 = 0uLL;
  v38 = *(&v53 + 1);
  v53 = v37;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v39 = *(&v51 + 1);
  v40 = __p[0];
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (v40)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned int,false>(this, v12, 260, &v54, &v48);
  __p[0] = v48;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v49;
  __p[3] = v50;
  HIBYTE(v50) = 0;
  LOBYTE(v49) = 0;
  v41 = v51;
  v51 = 0uLL;
  v42 = *(&v53 + 1);
  v53 = v41;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  v43 = *(&v51 + 1);
  v44 = __p[0];
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (v44)
  {
    goto LABEL_87;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v12 + 1, 261, &v54, &v48);
  v45 = *mipc::Error::operator=(__p, &v48);
  mipc::Error::~Error(&v48);
  if (v45)
  {
    goto LABEL_87;
  }

  (*(*this + 32))(&v48, this, v55);
  v46 = *mipc::Error::operator=(__p, &v48);
  mipc::Error::~Error(&v48);
  if (v46)
  {
    goto LABEL_87;
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

LABEL_88:
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

void sub_297D7CF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Req::getSize(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Req *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 2 * (v2 - v1) + 32;
  }

  v4 = *(this + 14);
  v5 = *(this + 15);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2 * (v5 - v4) + 16;
  }

  v7 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v7, vceqzq_s64(*(this + 136))), vbicq_s8(v7, vceqzq_s64(*(this + 152))))) + v6 + v3;
}

void mipc::Message::serializeTlv<unsigned int,4ul,false>(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, _WORD **a5)
{
  v8 = *a3;
  v9 = *(a3 + 1);
  if (*a3 == v9)
  {
    goto LABEL_19;
  }

  v11 = 0x100000002;
  v12 = v9 - *a3;
  if ((v12 >> 2) <= 4)
  {
    v13 = v12 >> 2;
    v14 = *(a2 + 14) - (v12 >> 2);
    v15 = (*(a2 + 14) - (v12 >> 2));
    *(a2 + 14) -= v12 >> 2;
    if (v15 < 0x100)
    {
      goto LABEL_5;
    }

    v21 = v14 + 1;
    **a5 = a4;
    v22 = *a5 + 1;
    *a5 = v22;
    *v22 = 0;
    v23 = *a5 + 1;
    *a5 = v23;
    *v23 = 0;
    v24 = *a5 + 2;
    *a5 = v24;
    *v24 = 0;
    v25 = *a5 + 2;
    *a5 = v25;
    *v25 = v14 + 1;
    v26 = *a5 + 1;
    *a5 = v26;
    *v26 = v13;
    v27 = *a5 + 1;
    *a5 = v27;
    for (i = *a3; i != *(a3 + 1); *a5 = v27)
    {
      *v27 = v21;
      v29 = *a5 + 1;
      *a5 = v29;
      *v29 = 4;
      v30 = (*a5)++;
      ++v21;
      v31 = *i++;
      *(v30 + 1) = v31;
      v27 = *a5 + 2;
    }

LABEL_19:
    v11 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_20;
  }

  v11 = 0x100000010;
LABEL_5:
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v35 = 2 * v12 + 16;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v35, &v33);
  v16 = v33;
  v17 = *v33;
  v18 = *a3;
  if (*a3 != *(a3 + 1))
  {
    do
    {
      v35 = 0xAAAAAAAAAAAAAAAALL;
      v36 = 0xAAAAAAAAAAAAAAAALL;
      v37 = 4;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v37, &v35);
      **v35 = *v18;
      if (v35)
      {
        memcpy(v17, *v35, *(v35 + 8) - *v35);
        v17 += *(v35 + 8) - *v35;
      }

      v19 = v36;
      if (v36 && !atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      ++v18;
    }

    while (v18 != *(a3 + 1));
    v16 = v33;
  }

  if (v17 != v16[1])
  {
    v20 = v16[1];
    v16[1] = v17;
  }

LABEL_20:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v11, a4, &v33, "", 0, a1);
  v32 = v34;
  if (v34)
  {
    if (!atomic_fetch_add((v34 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
    }
  }
}

void sub_297D7D34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297D7D360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf *mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14725, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E87FD0;
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

void sub_297D7D50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf::deserialize@<D0>(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14725, &v14, a3, 2);
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
  *a1 = &unk_2A1E8BA20;
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
  *a1 = &unk_2A1E87FD0;
  return a1;
}

void sub_297D7D7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf::~Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf *this)
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

uint64_t mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf::getSize(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Config_Cnf *this)
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

double mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Req::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14726;
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
  *a1 = &unk_2A1E88018;
  return result;
}

{
  *(a1 + 8) = 14726;
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
  *a1 = &unk_2A1E88018;
  return result;
}

void mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Req::~Sys_Get_Spmi_Idc_Tx_Blank_Profile_Req(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Req *this)
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

void mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Req::serialize(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297D7E190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf *mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14727, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E88060;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf::deserialize(this, v7);
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

void sub_297D7E2F0(_Unwind_Exception *a1)
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

void mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf::deserialize(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf *this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 40))(v107);
  v4 = *v107;
  *a2 = *v107;
  v6 = *(&v108 + 1);
  v5 = v108;
  *(a2 + 1) = *&v107[8];
  a2[3] = *&v107[24];
  *(a2 + 2) = __PAIR128__(v6, v5);
  if (v4)
  {
    return;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v108 = v7;
  v109 = v7;
  *v107 = v7;
  *&v107[16] = v7;
  mipc::Message::findTLV(this, 0x100u, v107);
  *&v106[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v106 = v8;
  *__p = v8;
  v104 = *v107;
  if ((v107[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v107[8], *&v107[16]);
  }

  else
  {
    *__p = *&v107[8];
    *v106 = *&v107[24];
  }

  *&v106[8] = v108;
  if (*(&v108 + 1))
  {
    atomic_fetch_add_explicit((*(&v108 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v104)
  {
    if (v104 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v104, &v98);
      goto LABEL_50;
    }

    v9 = 0;
    *(this + 12) = *(this + 11);
  }

  else
  {
    v10 = v109;
    v11 = *(&v109 + 1);
    *(this + 12) = *(this + 11);
    if (v10 < 8)
    {
      v9 = 0;
    }

    else
    {
      __src = v6;
      v12 = (v11 + v10);
      while (1)
      {
        v14 = *(this + 11);
        v13 = *(this + 12);
        v15 = v13 - v14;
        if (v13 - v14 == 5)
        {
          v9 = 0x100000010;
          goto LABEL_44;
        }

        v16 = v12 - v11;
        if ((v12 - v11) < 4)
        {
          v6 = __src;
          v9 = 0x100000005;
          goto LABEL_45;
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
      v6 = __src;
    }
  }

LABEL_45:
  v29 = *(this + 3);
  v102 = *(this + 2);
  v103 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v9, 0x100u, &v102, "", 0, &v98);
  v30 = v103;
  if (v103 && !atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

LABEL_50:
  v31 = *&v106[16];
  if (*&v106[16] && !atomic_fetch_add((*&v106[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
    if ((v106[7] & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if ((v106[7] & 0x80000000) != 0)
  {
LABEL_53:
    operator delete(__p[0]);
  }

LABEL_54:
  v32 = *(&v108 + 1);
  if (!*(&v108 + 1) || atomic_fetch_add((*(&v108 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v107[31] & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_69:
    operator delete(*&v107[8]);
    *a2 = v98;
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
  if ((v107[31] & 0x80000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_57:
  *a2 = v98;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_70;
  }

LABEL_58:
  *(a2 + 1) = v99;
  a2[3] = v100;
  HIBYTE(v100) = 0;
  LOBYTE(v99) = 0;
  v33 = v101;
  v101 = 0uLL;
  *(a2 + 2) = v33;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v34 = *a2;
  v35 = *(&v101 + 1);
  if (*(&v101 + 1) && !atomic_fetch_add((*(&v101 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    if ((SHIBYTE(v100) & 0x80000000) == 0)
    {
LABEL_64:
      if (v34)
      {
        return;
      }

      goto LABEL_73;
    }
  }

  else if ((SHIBYTE(v100) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  operator delete(v99);
  if (v34)
  {
    return;
  }

LABEL_73:
  *&v36 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v108 = v36;
  v109 = v36;
  *v107 = v36;
  *&v107[16] = v36;
  mipc::Message::findTLV(this, 0x101u, v107);
  *&v106[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v37 = 0xAAAAAAAAAAAAAAAALL;
  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v106 = v37;
  *__p = v37;
  v104 = *v107;
  if ((v107[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v107[8], *&v107[16]);
  }

  else
  {
    *__p = *&v107[8];
    *v106 = *&v107[24];
  }

  *&v106[8] = v108;
  if (*(&v108 + 1))
  {
    atomic_fetch_add_explicit((*(&v108 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v38 = v104;
  if (!v104 || v104 == 0x10000000ELL)
  {
    v39 = v109;
    v40 = *(&v109 + 1);
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
LABEL_153:
        v89 = *(this + 3);
        v102 = *(this + 2);
        v103 = v89;
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        mipc::Message::handle<(mipc::Error::Type)2>(this, v38, 0x101u, &v102, "", 0, &v98);
        v90 = v103;
        if (v103 && !atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v90->__on_zero_shared)(v90);
          std::__shared_weak_count::__release_weak(v90);
        }

        goto LABEL_158;
      }

LABEL_152:
      v38 = 0;
      goto LABEL_153;
    }

    if (v39 < 8)
    {
      goto LABEL_152;
    }

    v46 = &v40[v39];
    while (1)
    {
      v49 = *(this + 14);
      v50 = *(this + 15);
      v51 = v50 - v49;
      if (v50 - v49 == 120)
      {
        v38 = 0x100000010;
        goto LABEL_153;
      }

      if ((v46 - v40) < 4)
      {
        v38 = 0x100000005;
        goto LABEL_153;
      }

      if (v46 - v40 <= 2)
      {
        v52 = v46;
      }

      else
      {
        v52 = v40 + 2;
      }

      v18 = v46 - v52 <= 2;
      v55 = *v52;
      v53 = (v52 + 2);
      v54 = v55;
      if (v18)
      {
        v53 = v46;
      }

      __srca = v53;
      v56 = *(this + 16);
      if (v50 >= v56)
      {
        v58 = 0xAAAAAAAAAAAAAAABLL * (v51 >> 3) + 1;
        if (v58 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v59 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v49) >> 3);
        if (2 * v59 > v58)
        {
          v58 = 2 * v59;
        }

        if (v59 >= 0x555555555555555)
        {
          v60 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v60 = v58;
        }

        if (v60)
        {
          if (v60 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v61 = operator new(24 * v60);
        }

        else
        {
          v61 = 0;
        }

        v62 = &v61[8 * (v51 >> 3)];
        *v62 = 0;
        *(v62 + 1) = 0;
        *(v62 + 2) = 0;
        v63 = &v62[-v51];
        if (v49 != v50)
        {
          v64 = v49;
          v65 = v63;
          do
          {
            *v65 = *v64;
            *(v65 + 2) = *(v64 + 2);
            *v64 = 0;
            *(v64 + 1) = 0;
            *(v64 + 2) = 0;
            v64 += 24;
            v65 += 24;
          }

          while (v64 != v50);
          do
          {
            v66 = *v49;
            if (*v49)
            {
              *(v49 + 1) = v66;
              operator delete(v66);
            }

            v49 += 24;
          }

          while (v49 != v50);
          v49 = *(this + 14);
        }

        v67 = &v61[24 * v60];
        v57 = v62 + 24;
        *(this + 14) = v63;
        *(this + 15) = v62 + 24;
        *(this + 16) = v67;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v50 = 0;
        *(v50 + 1) = 0;
        v57 = v50 + 24;
        *(v50 + 2) = 0;
      }

      *(this + 15) = v57;
      if (v54 < 2)
      {
        v38 = 0x100000003;
        goto LABEL_153;
      }

      v68 = *(v57 - 3);
      v69 = v54 >> 1;
      v70 = v54 & 0xFFFE;
      v71 = *(v57 - 1);
      if (v54 >> 1 > (v71 - v68) >> 1)
      {
        if (v68)
        {
          *(v57 - 2) = v68;
          operator delete(v68);
          v71 = 0;
          *(v57 - 3) = 0;
          *(v57 - 2) = 0;
          *(v57 - 1) = 0;
        }

        if (v71 <= v69)
        {
          v72 = v54 >> 1;
        }

        else
        {
          v72 = v71;
        }

        if (v71 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v73 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v73 = v72;
        }

        if (v73 < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v74 = operator new(2 * v73);
        v75 = v74;
        *(v57 - 3) = v74;
        *(v57 - 2) = v74;
        *(v57 - 1) = &v74[2 * v73];
        v47 = __srca;
        if ((v54 & 0xFFFE) != 0)
        {
          memcpy(v74, __srca, v54 & 0xFFFE);
          v75 += v70;
        }

        *(v57 - 2) = v75;
        goto LABEL_92;
      }

      v76 = *(v57 - 2);
      v77 = v76 - v68;
      if (v69 > (v76 - v68) >> 1)
      {
        break;
      }

      v47 = __srca;
      memmove(*(v57 - 3), __srca, v54 & 0xFFFE);
      *(v57 - 2) = &v68[v70];
LABEL_92:
      v48 = (((v54 + 11) & 0xFFF8) - 4) & 0xFFFC;
      if (v46 - v47 <= v48)
      {
        v40 = v46;
      }

      else
      {
        v40 = &v47[v48];
      }

      if ((v46 - v40) <= 7)
      {
        goto LABEL_152;
      }
    }

    if (v76 != v68)
    {
      memmove(*(v57 - 3), __srca, v76 - v68);
    }

    v78 = *(v57 - 2);
    v79 = v78;
    if (v77 != v70)
    {
      v80 = __srca + v77;
      v81 = &v68[v70] - v76 - 2;
      if (v81 >= 0x1E)
      {
        v79 = *(v57 - 2);
        if ((&v68[v78] - &v76[__srca]) >= 0x20)
        {
          v82 = (v81 >> 1) + 1;
          v83 = 2 * (v82 & 0xFFFFFFFFFFFFFFF0);
          v80 += v83;
          v79 = (v78 + v83);
          v84 = (v78 + 16);
          v85 = __srca + v77 + 16;
          v86 = v82 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v87 = *v85;
            *(v84 - 1) = *(v85 - 1);
            *v84 = v87;
            v84 += 2;
            v85 += 32;
            v86 -= 16;
          }

          while (v86);
          if (v82 == (v82 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_151;
          }
        }
      }

      else
      {
        v79 = *(v57 - 2);
      }

      do
      {
        v88 = *v80;
        v80 += 2;
        *v79++ = v88;
      }

      while (v80 != __srca + v70);
    }

LABEL_151:
    *(v57 - 2) = v79;
    v47 = __srca;
    goto LABEL_92;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v104, &v98);
LABEL_158:
  v91 = *&v106[16];
  if (*&v106[16] && !atomic_fetch_add((*&v106[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v91->__on_zero_shared)(v91);
    std::__shared_weak_count::__release_weak(v91);
  }

  if ((v106[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  v92 = *(&v108 + 1);
  if (*(&v108 + 1) && !atomic_fetch_add((*(&v108 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v92->__on_zero_shared)(v92);
    std::__shared_weak_count::__release_weak(v92);
  }

  if ((v107[31] & 0x80000000) != 0)
  {
    operator delete(*&v107[8]);
  }

  *a2 = v98;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v99;
  a2[3] = v100;
  HIBYTE(v100) = 0;
  LOBYTE(v99) = 0;
  v93 = v101;
  v101 = 0uLL;
  v94 = a2[5];
  *(a2 + 2) = v93;
  if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
  }

  v95 = *(&v101 + 1);
  if (*(&v101 + 1) && !atomic_fetch_add((*(&v101 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v95->__on_zero_shared)(v95);
    std::__shared_weak_count::__release_weak(v95);
  }

  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99);
  }
}

void sub_297D7EF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v17);
  _Unwind_Resume(a1);
}

uint64_t mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14727, &v14, a3, 2);
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
  *a1 = &unk_2A1E8BA68;
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
  *a1 = &unk_2A1E88060;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_297D7F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf::~Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf *this)
{
  *this = &unk_2A1E88060;
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
  *this = &unk_2A1E88060;
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
  *this = &unk_2A1E88060;
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

uint64_t mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf::getSize(mipc::cust::Sys_Get_Spmi_Idc_Tx_Blank_Profile_Cnf *this)
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

double mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Req::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14728;
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
  *a1 = &unk_2A1E880A8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

{
  *(a1 + 8) = 14728;
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
  *a1 = &unk_2A1E880A8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

void mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Req::~Sys_Set_Spmi_Idc_Tx_Blank_Profile_Req(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Req *this)
{
  *this = &unk_2A1E880A8;
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
  *this = &unk_2A1E880A8;
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
  *this = &unk_2A1E880A8;
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

void mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Req::serialize(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 11);
  v5 = *(this + 12);
  if (v4 == v5)
  {
    v6 = 16;
  }

  else
  {
    v6 = 8 * (v5 - v4) + 32;
  }

  v7 = *(this + 7);
  v8 = *(this + 15);
  v9 = *(this + 14);
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
        v78[0] = 0;
        v78[1] = 0;
        v79 = 0;
        v12 = v10 + v6;
        if (!(v10 + v6))
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }
    }

    v78[0] = 0;
    v78[1] = 0;
    v79 = 0;
    v12 = v6;
    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v78[0] = 0;
  v78[1] = 0;
  v79 = 0;
  v12 = v6;
  if (!v6)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_9:
  if ((v12 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = operator new(v12);
  v78[0] = v13;
  v79 = &v13[v12];
  bzero(v13, v12);
  v78[1] = &v13[v12];
LABEL_13:
  v77 = v13;
  v76 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v71, this, &v77);
  v14 = v74;
  *&__p[1] = *v72;
  __p[3] = v73;
  __p[0] = v71;
  v76 = v74;
  if (v71)
  {
    *a2 = v71;
    *(a2 + 8) = *&__p[1];
    v15 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v15;
    *(a2 + 32) = v14;
LABEL_112:
    *(a2 + 48) = 1;
    goto LABEL_113;
  }

  v16 = *(this + 88);
  v17 = *(this + 12);
  v18 = *(this + 11);
  if (v18 == v17)
  {
    goto LABEL_35;
  }

  v19 = 0x100000002;
  v20 = v17 - v18;
  if (v20 <= 5)
  {
    v21 = *(this + 7) - v20;
    v22 = (*(this + 7) - v20);
    *(this + 7) -= v20;
    if (v22 < 0x100)
    {
      goto LABEL_21;
    }

    v28 = v21 + 1;
    *v77++ = 256;
    *v77++ = 0;
    *v77 = 0;
    v77 += 2;
    *v77 = 0;
    v77 += 2;
    *v77++ = v28;
    *v77 = v20;
    v29 = ++v77;
    for (i = *(this + 11); i != *(this + 12); v77 += 2)
    {
      *v29 = v28;
      *++v77 = 1;
      v31 = v77++;
      ++v28;
      v32 = *i++;
      *(v31 + 2) = v32;
      v29 = v77 + 2;
    }

LABEL_35:
    v19 = 0;
    v80 = 0;
    v81 = 0;
    goto LABEL_36;
  }

  v19 = 0x100000010;
LABEL_21:
  v80 = 0xAAAAAAAAAAAAAAAALL;
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v82 = 8 * v20 + 16;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v82, &v80);
  v23 = v80;
  v24 = *v80;
  v25 = *(this + 11);
  if (v25 != *(this + 12))
  {
    do
    {
      v82 = 0xAAAAAAAAAAAAAAAALL;
      v83 = 0xAAAAAAAAAAAAAAAALL;
      v84 = 1;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v84, &v82);
      **v82 = *v25;
      if (v82)
      {
        memcpy(v24, *v82, *(v82 + 8) - *v82);
        v24 += *(v82 + 8) - *v82;
      }

      v26 = v83;
      if (v83 && !atomic_fetch_add((v83 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      ++v25;
    }

    while (v25 != *(this + 12));
    v23 = v80;
  }

  if (v24 != v23[1])
  {
    v27 = v23[1];
    v23[1] = v24;
  }

LABEL_36:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v19, 0x100u, &v80, "", 0, &v71);
  v33 = v81;
  if (v81 && !atomic_fetch_add((v81 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    __p[0] = v71;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  __p[0] = v71;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_39:
    operator delete(__p[1]);
  }

LABEL_40:
  *&__p[1] = *v72;
  __p[3] = v73;
  HIBYTE(v73) = 0;
  LOBYTE(v72[0]) = 0;
  v34 = v74;
  v74 = 0uLL;
  v76 = v34;
  if (*(&v14 + 1) && !atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v14 + 1) + 16))(*(&v14 + 1));
    std::__shared_weak_count::__release_weak(*(&v14 + 1));
    v35 = *(&v74 + 1);
    v36 = __p[0];
    if (!*(&v74 + 1))
    {
LABEL_44:
      if ((SHIBYTE(v73) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_52:
      operator delete(v72[0]);
      if (v36)
      {
        goto LABEL_111;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v35 = *(&v74 + 1);
    v36 = __p[0];
    if (!*(&v74 + 1))
    {
      goto LABEL_44;
    }
  }

  if (atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_44;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if (SHIBYTE(v73) < 0)
  {
    goto LABEL_52;
  }

LABEL_45:
  if (v36)
  {
    goto LABEL_111;
  }

LABEL_53:
  v37 = *(this + 14);
  v38 = *(this + 15);
  if (v37 == v38)
  {
    goto LABEL_61;
  }

  v39 = 0x100000002;
  v40 = 0xAAAAAAAAAAAAAAABLL * (v38 - v37);
  if (v40 > 5)
  {
    v39 = 0x100000010;
    goto LABEL_64;
  }

  v41 = *(this + 7) - v40;
  *(this + 7) = v41;
  if (v41 >= 0x100u)
  {
    v42 = v41 + 1;
    *v77++ = 257;
    *v77++ = 0;
    *v77 = 0;
    v77 += 2;
    *v77 = 0;
    v77 += 2;
    *v77++ = v41 + 1;
    *v77 = v40;
    v43 = ++v77;
    v44 = *(this + 14);
    if (v44 != *(this + 15))
    {
      while (1)
      {
        v45 = v44[2] - *v44;
        *v43 = v42;
        *++v77 = v45;
        v46 = ++v77;
        v47 = *v44;
        v48 = *(v44 + 1);
        if (*v44 == v48)
        {
          break;
        }

        v49 = v48 - v47;
        if ((v48 - v47) > 0x1FFFE)
        {
          v39 = 0x100000010;
          break;
        }

        memcpy(v46, v47, v48 - v47);
        v50 = v44[2];
        v51 = *v44;
        v44 += 6;
        v43 = (v77 + v49 + ((((((v50 - v51) & 0xFFFE) + 11) & 0xFFF8) - ((v50 - v51) & 0xFFFE) - 4) & 0xFFFE));
        v77 = v43;
        ++v42;
        if (v44 == *(this + 15))
        {
          goto LABEL_61;
        }
      }

      v37 = *(this + 14);
      v38 = *(this + 15);
      goto LABEL_64;
    }

LABEL_61:
    v39 = 0;
    v80 = 0;
    v81 = 0;
    goto LABEL_85;
  }

LABEL_64:
  if (v37 == v38)
  {
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v80 = 0xAAAAAAAAAAAAAAAALL;
    v81 = 0xAAAAAAAAAAAAAAAALL;
    v52 = 16;
    while (1)
    {
      v53 = v37[1] - *v37;
      if ((v53 + 4) >> 16)
      {
        break;
      }

      v52 += (v53 + 11) & 0xFFF8;
      v37 += 3;
      if (v37 == v38)
      {
        goto LABEL_71;
      }
    }

    v52 = 0;
LABEL_71:
    v82 = v52;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v82, &v80);
    v54 = v80;
    v55 = *v80;
    v56 = *(this + 14);
    if (v56 != *(this + 15))
    {
      do
      {
        v57 = *v56;
        v58 = *(v56 + 8);
        if (*v56 == v58)
        {
          v82 = 0;
          v83 = 0;
        }

        else
        {
          v82 = 0xAAAAAAAAAAAAAAAALL;
          v83 = 0xAAAAAAAAAAAAAAAALL;
          v84 = v58 - v57;
          std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v84, &v82);
          memcpy(*v82, *v56, *(v56 + 8) - *v56);
          if (v82)
          {
            memcpy(v55, *v82, *(v82 + 8) - *v82);
            v55 += *(v82 + 8) - *v82;
          }

          v59 = v83;
          if (v83 && !atomic_fetch_add((v83 + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v59->__on_zero_shared)(v59);
            std::__shared_weak_count::__release_weak(v59);
          }
        }

        v56 += 24;
      }

      while (v56 != *(this + 15));
      v54 = v80;
    }

    if (v55 != v54[1])
    {
      v60 = v54[1];
      v54[1] = v55;
    }
  }

LABEL_85:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v39, 0x101u, &v80, "", 0, &v71);
  v61 = v81;
  if (v81 && !atomic_fetch_add((v81 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
  }

  __p[0] = v71;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v72;
  __p[3] = v73;
  HIBYTE(v73) = 0;
  LOBYTE(v72[0]) = 0;
  v62 = v74;
  v74 = 0uLL;
  v63 = *(&v76 + 1);
  v76 = v62;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
  }

  v64 = *(&v74 + 1);
  v65 = __p[0];
  if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v64->__on_zero_shared)(v64);
    std::__shared_weak_count::__release_weak(v64);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
    if (!v65)
    {
      goto LABEL_100;
    }

LABEL_111:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v76;
    goto LABEL_112;
  }

  if (v65)
  {
    goto LABEL_111;
  }

LABEL_100:
  (*(*this + 32))(&v71, this, v78);
  __p[0] = v71;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v72;
  __p[3] = v73;
  HIBYTE(v73) = 0;
  LOBYTE(v72[0]) = 0;
  v66 = v74;
  v74 = 0uLL;
  v67 = *(&v76 + 1);
  v76 = v66;
  if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v67->__on_zero_shared)(v67);
    std::__shared_weak_count::__release_weak(v67);
  }

  v68 = *(&v74 + 1);
  v69 = __p[0];
  if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v68->__on_zero_shared)(v68);
    std::__shared_weak_count::__release_weak(v68);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
  }

  if (v69)
  {
    goto LABEL_111;
  }

  *a2 = *v78;
  *(a2 + 16) = v79;
  v78[1] = 0;
  v79 = 0;
  v78[0] = 0;
  *(a2 + 48) = 0;
  v70 = *(&v76 + 1);
  if (*(&v76 + 1) && !atomic_fetch_add((*(&v76 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v70->__on_zero_shared)(v70);
    std::__shared_weak_count::__release_weak(v70);
  }

LABEL_113:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v78[0])
  {
    v78[1] = v78[0];
    operator delete(v78[0]);
  }
}

void sub_297D80800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  mipc::Error::~Error(&a17);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Req::getSize(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Req *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 8 * (v2 - v1) + 32;
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
        return v7 + v3;
      }
    }
  }

  return v3;
}

mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf *mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14729, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E880F0;
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

void sub_297D80A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf::deserialize@<D0>(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 14729, &v14, a3, 2);
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
  *a1 = &unk_2A1E8BAB0;
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
  *a1 = &unk_2A1E880F0;
  return a1;
}

void sub_297D80D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf::~Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf *this)
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

uint64_t mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf::getSize(mipc::cust::Sys_Set_Spmi_Idc_Tx_Blank_Profile_Cnf *this)
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

double mipc::cust::Nw_Get_Power_Info_Req::Nw_Get_Power_Info_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = 14730;
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
  *a1 = &unk_2A1E88138;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = 14730;
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
  *a1 = &unk_2A1E88138;
  *(a1 + 88) = 0;
  return result;
}

void mipc::cust::Nw_Get_Power_Info_Req::~Nw_Get_Power_Info_Req(mipc::cust::Nw_Get_Power_Info_Req *this)
{
  *this = &unk_2A1E88138;
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
  *this = &unk_2A1E88138;
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
  *this = &unk_2A1E88138;
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

void mipc::cust::Nw_Get_Power_Info_Req::serialize(mipc::cust::Nw_Get_Power_Info_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297D8196C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::cust::Nw_Get_Power_Info_Req::getSize(mipc::cust::Nw_Get_Power_Info_Req *this)
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

mipc::cust::Nw_Get_Power_Info_Cnf *mipc::cust::Nw_Get_Power_Info_Cnf::Nw_Get_Power_Info_Cnf(mipc::cust::Nw_Get_Power_Info_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 14731, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E88180;
  *(this + 11) = 0;
  *(this + 12) = 0;
  mipc::cust::Nw_Get_Power_Info_Cnf::deserialize(this, v7);
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

void sub_297D81AF4(_Unwind_Exception *a1)
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

void mipc::cust::Nw_Get_Power_Info_Cnf::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<short,false>(this, this + 11, 0x100u, &v12);
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