void sub_297ACC60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Sml_Rsu_Ind::~Sml_Rsu_Ind(mipc::sim::Sml_Rsu_Ind *this)
{
  *this = &unk_2A1E66678;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

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
  *this = &unk_2A1E66678;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

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
  *this = &unk_2A1E66678;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

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

uint64_t mipc::sim::Sml_Rsu_Ind::getSize(mipc::sim::Sml_Rsu_Ind *this)
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

  v5 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v5 = 32;
  }

  return v5 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + v1;
}

mipc::sim::Simapp_Ind *mipc::sim::Simapp_Ind::Simapp_Ind(mipc::sim::Simapp_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17679, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E666C0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  mipc::sim::Simapp_Ind::deserialize(this, &v7);
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

void sub_297ACCC14(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 18);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 17);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 16);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v1 + 15);
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

void mipc::sim::Simapp_Ind::deserialize(mipc::sim::Simapp_Ind *this@<X0>, uint64_t a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 11, 0x100u, &v30);
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
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, &v30);
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
    mipc::Message::deserializeTlv<mipc::mipc_string_t<4ul,false>,false>(&v30, this, this + 13, 0x102u);
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
      mipc::Message::deserializeTlv<mipc::mipc_string_t<4ul,false>,false>(&v30, this, this + 14, 0x103u);
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
        mipc::Message::deserializeTlv<mipc::mipc_string_t<128ul,false>,false>(this, this + 15, 0x104u, &v30);
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
          mipc::Message::deserializeTlv<mipc::mipc_string_t<128ul,false>,false>(this, this + 16, 0x105u, &v30);
          v28 = *mipc::Error::operator=(a2, &v30);
          mipc::Error::~Error(&v30);
          if (!v28)
          {
            mipc::Message::deserializeTlv<mipc::mipc_string_t<128ul,false>,false>(this, this + 17, 0x106u, &v30);
            v29 = *mipc::Error::operator=(a2, &v30);
            mipc::Error::~Error(&v30);
            if (!v29)
            {
              mipc::Message::deserializeTlv<mipc::mipc_string_t<32ul,false>,false>(this, this + 18, 0x107u, &v30);
              mipc::Error::operator=(a2, &v30);
              mipc::Error::~Error(&v30);
            }
          }
        }
      }
    }
  }
}

uint64_t mipc::sim::Simapp_Ind::Simapp_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17679, &v14, a3, 3);
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
  *a1 = &unk_2A1E68DC0;
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
  *a1 = &unk_2A1E666C0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return a1;
}

void sub_297ACD660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Simapp_Ind::~Simapp_Ind(mipc::sim::Simapp_Ind *this)
{
  *this = &unk_2A1E666C0;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete(v3);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

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
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (*(this + 63) < 0)
  {
LABEL_32:
    operator delete(*(this + 5));
  }

LABEL_33:
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
  mipc::sim::Simapp_Ind::~Simapp_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<4ul,false>,false>(void *a1, std::__shared_weak_count **this, void ***a3, unsigned int a4)
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

  if (v11 <= 4)
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

void sub_297ACDBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297ACDBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297ACDBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<128ul,false>,false>(mipc::Message *a1@<X0>, void ***a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
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
    v11 = mipc::tlv<mipc::mipc_string_t<128ul,false>,false>::deserialize(a2, &v18);
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

void sub_297ACDE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297ACDE94(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_297ACDEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_string_t<32ul,false>,false>(mipc::Message *a1@<X0>, void ***a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
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
    v11 = mipc::tlv<mipc::mipc_string_t<32ul,false>,false>::deserialize(a2, &v18);
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

void sub_297ACE150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297ACE164(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_297ACE188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::sim::Simapp_Ind::getSize(mipc::sim::Simapp_Ind *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
LABEL_6:
    v4 = *(this + 14);
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
  v4 = *(this + 14);
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
    v7 = *(this + 15);
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v4 = 0;
LABEL_13:
  v7 = *(this + 15);
  if (!v7)
  {
LABEL_20:
    v10 = *(this + 16);
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
  v10 = *(this + 16);
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
    v13 = *(this + 17);
    if (!v13)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v10 = 0;
LABEL_27:
  v13 = *(this + 17);
  if (!v13)
  {
    goto LABEL_32;
  }

LABEL_28:
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v16 = __CFADD__(v15 - 65531, 0x10000);
  v13 = (v15 + 12) & 0xFFF8;
  if (!v16)
  {
    v13 = 0;
  }

LABEL_32:
  v17 = *(this + 18);
  if (v17)
  {
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v16 = __CFADD__(v19 - 65531, 0x10000);
    v17 = (v19 + 12) & 0xFFF8;
    if (!v16)
    {
      v17 = 0;
    }
  }

  v20 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v20 = 32;
  }

  return v20 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + v1 + v4 + v7 + v10 + v13 + v17;
}

mipc::sim::Test_Sim_Ind *mipc::sim::Test_Sim_Ind::Test_Sim_Ind(mipc::sim::Test_Sim_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17680, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E66708;
  *(this + 11) = 0;
  mipc::sim::Test_Sim_Ind::deserialize(this, &v7);
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

void sub_297ACE490(_Unwind_Exception *a1)
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

void mipc::sim::Test_Sim_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::sim::Test_Sim_Ind::Test_Sim_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17680, &v14, a3, 3);
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
  *a1 = &unk_2A1E68E08;
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
  *a1 = &unk_2A1E66708;
  a1[11] = 0;
  return a1;
}

void sub_297ACE88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Test_Sim_Ind::~Test_Sim_Ind(mipc::sim::Test_Sim_Ind *this)
{
  *this = &unk_2A1E66708;
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
  *this = &unk_2A1E66708;
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
  *this = &unk_2A1E66708;
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

uint64_t mipc::sim::Test_Sim_Ind::getSize(mipc::sim::Test_Sim_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

mipc::sim::Card_Type_Ind *mipc::sim::Card_Type_Ind::Card_Type_Ind(mipc::sim::Card_Type_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17682, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E66750;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::sim::Card_Type_Ind::deserialize(this, v7);
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

void sub_297ACEDA4(_Unwind_Exception *a1)
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

void mipc::sim::Card_Type_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 11, 0x100u, &v16);
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
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, &v16);
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
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 13, 0x102u, &v16);
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

void *mipc::sim::Card_Type_Ind::Card_Type_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17682, &v14, a3, 3);
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
  *a1 = &unk_2A1E68E50;
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
  *a1 = &unk_2A1E66750;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297ACF410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Card_Type_Ind::~Card_Type_Ind(mipc::sim::Card_Type_Ind *this)
{
  *this = &unk_2A1E66750;
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
  *this = &unk_2A1E66750;
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
  *this = &unk_2A1E66750;
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

uint64_t mipc::sim::Card_Type_Ind::getSize(mipc::sim::Card_Type_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0);
}

mipc::sim::Simind_Ind *mipc::sim::Simind_Ind::Simind_Ind(mipc::sim::Simind_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 17683, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E66798;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 80) = 1;
  mipc::sim::Simind_Ind::deserialize(this, &v7);
  v5 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v9 & 0x80000000) == 0)
    {
      return this;
    }

    goto LABEL_6;
  }

  if (v9 < 0)
  {
LABEL_6:
    operator delete(__p);
  }

  return this;
}

void sub_297ACF9C8(_Unwind_Exception *a1)
{
  mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array((v1 + 192));
  mipc::tlv_array<mipc::mipc_byte_array_t<256ul,false>,1024ul,false>::~tlv_array((v1 + 168));
  v7 = *(v1 + 144);
  if (v7)
  {
    *(v1 + 152) = v7;
    operator delete(v7);
  }

  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v4);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 128));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v3);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv((v1 + 112));
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v2);
  v8 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v8)
  {
    operator delete(v8);
    v9 = *v5;
    *v5 = 0;
    if (!v9)
    {
LABEL_5:
      mipc::ResponseMessage::~ResponseMessage(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v9 = *v5;
    *v5 = 0;
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  operator delete(v9);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sim::Simind_Ind::deserialize(mipc::sim::Simind_Ind *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(__p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = *&__p[8];
  *(a2 + 24) = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v4 = v54;
  v54 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v54 + 1);
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 11, 0x100u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = *&__p[8];
  *(a2 + 24) = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v8 = v54;
  v54 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v54 + 1);
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = *&__p[8];
  *(a2 + 24) = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v12 = v54;
  v54 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v54 + 1);
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v14)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v54 = v16;
    v55 = v16;
    *__p = v16;
    *&__p[16] = v16;
    mipc::Message::findTLV(this, 0x102u, __p);
    *&v52[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v52 = v17;
    *v51 = v17;
    v50 = *__p;
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v51, *&__p[8], *&__p[16]);
    }

    else
    {
      *v51 = *&__p[8];
      *v52 = *&__p[24];
    }

    *&v52[8] = v54;
    if (*(&v54 + 1))
    {
      atomic_fetch_add_explicit((*(&v54 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v18 = v50;
    if (v50 && v50 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v50, &v44);
LABEL_65:
      v26 = *&v52[16];
      if (*&v52[16] && !atomic_fetch_add((*&v52[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      if ((v52[7] & 0x80000000) != 0)
      {
        operator delete(v51[0]);
      }

      v27 = *(&v54 + 1);
      if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }

      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }

      *a2 = v44;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = v45;
      *(a2 + 24) = v46;
      HIBYTE(v46) = 0;
      LOBYTE(v45) = 0;
      v28 = v47;
      v47 = 0uLL;
      v29 = *(a2 + 40);
      *(a2 + 32) = v28;
      if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      v30 = *a2;
      v31 = *(&v47 + 1);
      if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      if (SHIBYTE(v46) < 0)
      {
        operator delete(v45);
      }

      if (!v30)
      {
        mipc::Message::deserializeTlv<mipc::mipc_string_t<20ul,false>,false>(__p, this, this + 14);
        *a2 = *__p;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = *&__p[24];
        __p[31] = 0;
        __p[8] = 0;
        v32 = v54;
        v54 = 0uLL;
        v33 = *(a2 + 40);
        *(a2 + 32) = v32;
        if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v34 = *a2;
        v35 = *(&v54 + 1);
        if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
          mipc::Message::deserializeTlv<mipc::mipc_string_t<41ul,false>,false>(__p, this, this + 15);
          *a2 = *__p;
          if (*(a2 + 31) < 0)
          {
            operator delete(*(a2 + 8));
          }

          *(a2 + 8) = *&__p[8];
          *(a2 + 24) = *&__p[24];
          __p[31] = 0;
          __p[8] = 0;
          v36 = v54;
          v54 = 0uLL;
          v37 = *(a2 + 40);
          *(a2 + 32) = v36;
          if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
          }

          v38 = *a2;
          v39 = *(&v54 + 1);
          if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
            mipc::Message::deserializeTlv<mipc::mipc_string_t<101ul,false>,false>(__p, this, this + 16);
            v40 = *mipc::Error::operator=(a2, __p);
            mipc::Error::~Error(__p);
            if (!v40)
            {
              mipc::Message::deserializeTlv<mipc::mipc_string_t<256ul,false>,false>(this, this + 17, 0x106u, __p);
              v41 = *mipc::Error::operator=(a2, __p);
              mipc::Error::~Error(__p);
              if (!v41)
              {
                mipc::Message::deserializeTlv<mipc::mipc_file_list_struct4,10ul,false>(__p, this, this + 18);
                v42 = *mipc::Error::operator=(a2, __p);
                mipc::Error::~Error(__p);
                if (!v42)
                {
                  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<10ul,false>,10ul,false>(__p, this, this + 21);
                  v43 = *mipc::Error::operator=(a2, __p);
                  mipc::Error::~Error(__p);
                  if (!v43)
                  {
                    mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<261ul,false>,10ul,false>(__p, this, this + 24);
                    mipc::Error::operator=(a2, __p);
                    mipc::Error::~Error(__p);
                  }
                }
              }
            }
          }
        }
      }

      return;
    }

    v19 = v55;
    v20 = *(&v55 + 1);
    v21 = *(this + 13);
    *(this + 13) = 0;
    if (v21)
    {
      if (*(v21 + 23) < 0)
      {
        operator delete(*v21);
      }

      operator delete(v21);
    }

    if (v18)
    {
      if (v18 != 0x10000000ELL)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v22 = operator new(0x18uLL);
      *v22 = 0;
      v22[1] = 0;
      v22[2] = 0;
      v23 = *(this + 13);
      *(this + 13) = v22;
      if (v23)
      {
        if (*(v23 + 23) < 0)
        {
          operator delete(*v23);
        }

        operator delete(v23);
        v22 = *(this + 13);
      }

      v18 = 0x100000003;
      if (!v19)
      {
        goto LABEL_60;
      }

      if (v19 > 0x47)
      {
        v18 = 0x100000010;
LABEL_60:
        v24 = *(this + 3);
        v48 = *(this + 2);
        v49 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        mipc::Message::handle<(mipc::Error::Type)2>(this, v18, 0x102u, &v48, "", 0, &v44);
        v25 = v49;
        if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        goto LABEL_65;
      }

      std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v22, v20, (v20 + v19 - 1), v19 - 1);
    }

    v18 = 0;
    goto LABEL_60;
  }
}

void sub_297AD04B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

uint64_t mipc::sim::Simind_Ind::Simind_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 17683, &v14, a3, 3);
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
  *a1 = &unk_2A1E68E98;
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
  *a1 = &unk_2A1E66798;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297AD0778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sim::Simind_Ind::~Simind_Ind(mipc::sim::Simind_Ind *this)
{
  *this = &unk_2A1E66798;
  v2 = *(this + 24);
  if (v2)
  {
    v3 = *(this + 25);
    v4 = *(this + 24);
    if (v3 != v2)
    {
      v5 = *(this + 25);
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
      v4 = *(this + 24);
    }

    *(this + 25) = v2;
    operator delete(v4);
  }

  v8 = *(this + 21);
  if (v8)
  {
    v9 = *(this + 22);
    v10 = *(this + 21);
    if (v9 != v8)
    {
      v11 = *(this + 22);
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v9 - 16) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(this + 21);
    }

    *(this + 22) = v8;
    operator delete(v10);
  }

  v14 = *(this + 18);
  if (v14)
  {
    *(this + 19) = v14;
    operator delete(v14);
  }

  v15 = *(this + 17);
  *(this + 17) = 0;
  if (v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    operator delete(v15);
  }

  v16 = *(this + 16);
  *(this + 16) = 0;
  if (v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    operator delete(v16);
  }

  v17 = *(this + 15);
  *(this + 15) = 0;
  if (v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    operator delete(v17);
  }

  v18 = *(this + 14);
  *(this + 14) = 0;
  if (v18)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    operator delete(v18);
  }

  v19 = *(this + 13);
  *(this + 13) = 0;
  if (v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    operator delete(v19);
  }

  v20 = *(this + 12);
  *(this + 12) = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(this + 11);
  *(this + 11) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  *this = &unk_2A1E85968;
  v22 = *(this + 9);
  if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(this + 63) < 0)
  {
LABEL_46:
    operator delete(*(this + 5));
  }

LABEL_47:
  v23 = *(this + 3);
  if (v23)
  {
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }
}

{
  mipc::sim::Simind_Ind::~Simind_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<20ul,false>,false>(void *a1, std::__shared_weak_count **this, void ***a3)
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

  if (v9 <= 0x14)
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

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x103u, &v18, "", 0, a1);
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

void sub_297AD0D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AD0D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AD0D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<41ul,false>,false>(void *a1, std::__shared_weak_count **this, void ***a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x104u, v23);
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

  if (v9 <= 0x29)
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

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x104u, &v18, "", 0, a1);
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

void sub_297AD1098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AD10AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AD10C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_string_t<101ul,false>,false>(void *a1, std::__shared_weak_count **this, void ***a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x105u, v23);
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

  if (v9 <= 0x65)
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

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x105u, &v18, "", 0, a1);
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

void sub_297AD13DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AD13F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AD140C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_file_list_struct4,10ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
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
      goto LABEL_51;
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
        if (v14 == 590)
        {
          v8 = 0x100000010;
          goto LABEL_45;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v38;
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
          v24 = 0xCBEEA4E1A08AD8F3 * v14 + 1;
          if (v24 > 0x456C797DD49C341)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xCBEEA4E1A08AD8F3 * (v22 - v13);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          v26 = v25 >= 0x22B63CBEEA4E1A0 ? 0x456C797DD49C341 : v24;
          if (v26)
          {
            if (v26 > 0x456C797DD49C341)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(59 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[v14];
          *(v28 + 43) = 0u;
          *(v28 + 1) = 0u;
          *(v28 + 2) = 0u;
          v29 = &v27[59 * v26];
          *v28 = 0u;
          v23 = &v27[v14 + 59];
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
          *(v12 + 43) = 0u;
          v12[1] = 0u;
          v12[2] = 0u;
          v23 = v12 + 59;
          *v12 = 0u;
        }

        a3[1] = v23;
        if (v19 > 0x3B)
        {
          break;
        }

        if (v19 != 59)
        {
          v8 = 0x100000011;
          goto LABEL_45;
        }

        v31 = *v21;
        v32 = *(v21 + 1);
        v33 = *(v21 + 2);
        *(v23 - 16) = *(v21 + 43);
        *(v23 - 43) = v32;
        *(v23 - 27) = v33;
        *(v23 - 59) = v31;
        if (v11 - v21 <= 60)
        {
          v10 = v11;
        }

        else
        {
          v10 = (v21 + 30);
        }

        if ((v11 - v10) <= 7)
        {
          v8 = 0;
          goto LABEL_45;
        }
      }

      v8 = 0x100000012;
LABEL_45:
      a1 = v38;
    }
  }

LABEL_46:
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

LABEL_51:
  v36 = *&v43[16];
  if (*&v43[16] && !atomic_fetch_add((*&v43[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
    if ((v43[7] & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if ((v43[7] & 0x80000000) != 0)
  {
LABEL_54:
    operator delete(__p[0]);
  }

LABEL_55:
  v37 = *(&v45 + 1);
  if (!*(&v45 + 1) || atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v44[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  (v37->__on_zero_shared)(v37);
  std::__shared_weak_count::__release_weak(v37);
  if ((v44[31] & 0x80000000) != 0)
  {
LABEL_58:
    operator delete(*&v44[8]);
  }
}

void sub_297AD1890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<10ul,false>,10ul,false>(void *a1, std::__shared_weak_count **this, uint64_t *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v6;
  v37 = v6;
  *v35 = v6;
  *&v35[16] = v6;
  mipc::Message::findTLV(this, 0x10Au, v35);
  *&v34[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v34 = v7;
  *__p = v7;
  v32 = *v35;
  if ((v35[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v35[8], *&v35[16]);
  }

  else
  {
    *__p = *&v35[8];
    *v34 = *&v35[24];
  }

  *&v34[8] = v36;
  if (*(&v36 + 1))
  {
    atomic_fetch_add_explicit((*(&v36 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v32;
  if (v32 && v32 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v32, a1);
    goto LABEL_42;
  }

  v9 = v37;
  v10 = *(&v37 + 1);
  v12 = *a3;
  v11 = a3[1];
  if (v11 != *a3)
  {
    v13 = a3[1];
    do
    {
      v15 = *(v13 - 24);
      v13 -= 24;
      v14 = v15;
      if (v15)
      {
        *(v11 - 16) = v14;
        operator delete(v14);
      }

      v11 = v13;
    }

    while (v13 != v12);
  }

  a3[1] = v12;
  if (v8)
  {
    if (v8 != 0x10000000ELL)
    {
      goto LABEL_37;
    }
  }

  else if (v9 >= 8)
  {
    v16 = &v10[v9];
    v8 = 0x100000010;
    do
    {
      v17 = a3[1];
      if ((v17 - *a3) == 240)
      {
        goto LABEL_37;
      }

      if ((v16 - v10) < 4)
      {
        v8 = 0x100000005;
        goto LABEL_37;
      }

      if (v16 - v10 <= 2)
      {
        v18 = v16;
      }

      else
      {
        v18 = v10 + 2;
      }

      v19 = v16 - v18 <= 2;
      v22 = *v18;
      v20 = v18 + 2;
      v21 = v22;
      if (v19)
      {
        v23 = v16;
      }

      else
      {
        v23 = v20;
      }

      if (v17 >= a3[2])
      {
        v24 = std::vector<mipc::mipc_byte_array_t<256ul,false>>::__emplace_back_slow_path<>(a3);
      }

      else
      {
        *v17 = 0;
        v17[1] = 0;
        v24 = v17 + 3;
        v17[2] = 0;
      }

      a3[1] = v24;
      if (!v21)
      {
        v8 = 0x100000003;
        goto LABEL_37;
      }

      if (v21 > 0xA)
      {
        goto LABEL_37;
      }

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v24 - 3, v23, &v23[v21], v21);
      v25 = (((v21 + 11) & 0x18) - 4) & 0xFFFC;
      if (v16 - v23 <= v25)
      {
        v10 = v16;
      }

      else
      {
        v10 = &v23[v25];
      }
    }

    while ((v16 - v10) > 7);
  }

  v8 = 0;
LABEL_37:
  v26 = this[3];
  v30 = this[2];
  v31 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x10Au, &v30, "", 0, a1);
  v27 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

LABEL_42:
  v28 = *&v34[16];
  if (*&v34[16] && !atomic_fetch_add((*&v34[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    if ((v34[7] & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ((v34[7] & 0x80000000) != 0)
  {
LABEL_45:
    operator delete(__p[0]);
  }

LABEL_46:
  v29 = *(&v36 + 1);
  if (!*(&v36 + 1) || atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v35[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_49;
  }

  (v29->__on_zero_shared)(v29);
  std::__shared_weak_count::__release_weak(v29);
  if ((v35[31] & 0x80000000) != 0)
  {
LABEL_49:
    operator delete(*&v35[8]);
  }
}

void sub_297AD1C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<261ul,false>,10ul,false>(void *a1, mipc::Message *this, void *a3)
{
  v4 = this;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v6;
  v52 = v6;
  *v50 = v6;
  *&v50[16] = v6;
  mipc::Message::findTLV(this, 0x10Bu, v50);
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

        if (v24 > 0x105)
        {
          goto LABEL_78;
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v28 - 3, v26, &v26[v24], v24);
        v38 = (((v24 + 11) & 0x3F8) - 4) & 0xFFFC;
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
  mipc::Message::handle<(mipc::Error::Type)2>(v4, v8, 0x10Bu, &v45, "", 0, a1);
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

void sub_297AD21BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AD21D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_297AD21F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t mipc::sim::Simind_Ind::getSize(mipc::sim::Simind_Ind *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
LABEL_6:
    v4 = *(this + 14);
    if (!v4)
    {
      goto LABEL_7;
    }

LABEL_37:
    v31 = *(v4 + 23);
    v32 = *(v4 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    if ((v32 - 65531) >= 0xFFFFFFFFFFFF0000)
    {
      v4 = (v32 + 12) & 0xFFF8;
      v5 = *(this + 15);
      if (v5)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v4 = 0;
      v5 = *(this + 15);
      if (v5)
      {
        goto LABEL_43;
      }
    }

LABEL_8:
    v6 = *(this + 16);
    if (!v6)
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
  v4 = *(this + 14);
  if (v4)
  {
    goto LABEL_37;
  }

LABEL_7:
  v5 = *(this + 15);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_43:
  v33 = *(v5 + 23);
  v34 = *(v5 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v34 = v33;
  }

  if ((v34 - 65531) >= 0xFFFFFFFFFFFF0000)
  {
    v5 = (v34 + 12) & 0xFFF8;
    v6 = *(this + 16);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(this + 16);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

LABEL_9:
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

LABEL_13:
  v10 = *(this + 17);
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

  v13 = *(this + 18);
  v14 = *(this + 19);
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = ((2 * (((v14 - v13 - 59) * 0x8AD8F2FBA9386823) >> 64)) & 0xFFFFFFFFFFFFFFC0) + 80;
  }

  v16 = *(this + 168);
  v17 = *(this + 22);
  v18 = *(this + 21);
  if (v18 != v17)
  {
    v19 = 16;
    while (1)
    {
      v20 = v18[1] - *v18;
      if ((v20 + 4) >> 16)
      {
        break;
      }

      v19 += (v20 + 11) & 0xFFF8;
      v18 += 3;
      if (v18 == v17)
      {
        goto LABEL_27;
      }
    }
  }

  v19 = 0;
LABEL_27:
  v21 = *(this + 4);
  v23 = *(this + 11);
  v22 = *(this + 12);
  v24 = *(this + 12);
  v25 = *(this + 25);
  v26 = v24;
  if (v24 != v25)
  {
    v27 = 16;
    while (1)
    {
      v28 = v26[1] - *v26;
      if ((v28 + 4) >> 16)
      {
        break;
      }

      v27 += (v28 + 11) & 0xFFF8;
      v26 += 3;
      if (v26 == v25)
      {
        goto LABEL_33;
      }
    }
  }

  v27 = 0;
LABEL_33:
  v29 = 24;
  if (HIDWORD(v21))
  {
    v29 = 32;
  }

  return v29 + 8 * (v23 != 0) + 8 * (v22 != 0) + v1 + v4 + v5 + v6 + v10 + v15 + v19 + v27;
}

uint64_t mipc::tlv<mipc::mipc_string_t<21ul,true>,false>::deserialize(void ***a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
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
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = operator new(0x18uLL);
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0;
    v9 = *a1;
    *a1 = v8;
    if (v9)
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      operator delete(v9);
      v8 = *a1;
    }

    if (v6)
    {
      if (v6 <= 0x15)
      {
        if (v6 == 21)
        {
          std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v8, v7, (v7 + 20), 0x14uLL);
          return 0;
        }

        else
        {
          return 0x100000011;
        }
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

uint64_t mipc::tlv<mipc::mipc_string_t<81ul,false>,false>::deserialize(void ***a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
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
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = operator new(0x18uLL);
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0;
    v9 = *a1;
    *a1 = v8;
    if (v9)
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      operator delete(v9);
      v8 = *a1;
    }

    if (v6)
    {
      if (v6 <= 0x51)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v8, v7, (v7 + v6 - 1), v6 - 1);
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

uint64_t mipc::tlv<mipc::mipc_byte_array_t<16ul,true>,false>::deserialize(void **a1, uint64_t a2)
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

  if (v7 > 0x10)
  {
    return 0x100000010;
  }

  if (v7 != 16)
  {
    return 0x100000011;
  }

  v12 = v9[2];
  v13 = *v9;
  if (v12 - *v9 >= 0x10)
  {
    v19 = v9[1];
    v20 = v19 - v13;
    if ((v19 - v13) >= 0x10)
    {
      v23 = v9;
      memmove(*v9, v8, 0x10uLL);
      result = 0;
      v23[1] = v13 + 16;
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
    if (v20 == 16)
    {
      goto LABEL_41;
    }

    v25 = &v8[v20];
    v26 = v13 - v19 + 16;
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

    while (v25 != v8 + 16);
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
  if (2 * v12 <= 0x10)
  {
    v16 = 16;
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
  memcpy(v18, v8, 0x10uLL);
  result = 0;
  v15[1] = v18 + 16;
  return result;
}

uint64_t mipc::tlv<mipc::mipc_string_t<20ul,false>,true>::deserialize(void ***a1, uint64_t a2, int a3)
{
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }

  if (*a2)
  {
    v7 = 0x10000000FLL;
    if (!a3)
    {
      v7 = 0;
    }

    if (*a2 == 0x10000000ELL)
    {
      return v7;
    }

    else
    {
      return *a2;
    }
  }

  else
  {
    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = operator new(0x18uLL);
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    v12 = *a1;
    *a1 = v11;
    if (v12)
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      operator delete(v12);
      v11 = *a1;
    }

    if (v9)
    {
      if (v9 <= 0x14)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v11, v10, (v10 + v9 - 1), v9 - 1);
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

uint64_t mipc::tlv<mipc::mipc_byte_array_t<8ul,true>,true>::deserialize(void **a1, uint64_t a2, int a3)
{
  v6 = *a1;
  *a1 = 0;
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

  if (*a2)
  {
    v8 = 0x10000000FLL;
    if (!a3)
    {
      v8 = 0;
    }

    if (*a2 == 0x10000000ELL)
    {
      return v8;
    }

    else
    {
      return *a2;
    }
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = operator new(0x18uLL);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  v13 = *a1;
  *a1 = v12;
  if (v13)
  {
    v14 = *v13;
    if (*v13)
    {
      v13[1] = v14;
      operator delete(v14);
    }

    operator delete(v13);
    v12 = *a1;
  }

  if (!v10)
  {
    return 0x100000003;
  }

  if (v10 > 8)
  {
    return 0x100000010;
  }

  if (v10 != 8)
  {
    return 0x100000011;
  }

  v15 = v12[2];
  v16 = *v12;
  if (v15 - *v12 >= 8)
  {
    v22 = v12[1];
    v23 = v22 - v16;
    if ((v22 - v16) >= 8)
    {
      v26 = v12;
      memmove(*v12, v11, 8uLL);
      result = 0;
      v26[1] = v16 + 8;
      return result;
    }

    if (v22 == v16)
    {
      v25 = v12[1];
    }

    else
    {
      v24 = v12;
      memmove(*v12, v11, v22 - v16);
      v12 = v24;
      v25 = v24[1];
    }

    v27 = v25;
    if (v23 == 8)
    {
      goto LABEL_43;
    }

    v28 = &v11[v23];
    v29 = v16 - v22 + 8;
    if (v29 >= 0x20)
    {
      v27 = v25;
      if ((&v16[v25] - &v22[v11]) >= 0x20)
      {
        v28 += v29 & 0xFFFFFFFFFFFFFFE0;
        v27 = (v25 + (v29 & 0xFFFFFFFFFFFFFFE0));
        v30 = (v25 + 16);
        v31 = &v11[v22 - v16 + 16];
        v32 = v29 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v33 = *v31;
          *(v30 - 1) = *(v31 - 1);
          *v30 = v33;
          v30 += 2;
          v31 += 32;
          v32 -= 32;
        }

        while (v32);
        if (v29 == (v29 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v27 = v25;
    }

    do
    {
      v34 = *v28++;
      *v27++ = v34;
    }

    while (v28 != v11 + 8);
LABEL_43:
    v12[1] = v27;
    return 0;
  }

  if (v16)
  {
    v12[1] = v16;
    v17 = v12;
    operator delete(v16);
    v12 = v17;
    v15 = 0;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v18 = v12;
  v19 = 2 * v15;
  if (2 * v15 <= 8)
  {
    v19 = 8;
  }

  if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = v19;
  }

  v21 = operator new(v20);
  *v18 = v21;
  v18[1] = v21;
  v18[2] = &v21[v20];
  memcpy(v21, v11, 8uLL);
  result = 0;
  v18[1] = v21 + 8;
  return result;
}

uint64_t mipc::tlv<mipc::mipc_string_t<256ul,false>,false>::deserialize(void ***a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
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
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = operator new(0x18uLL);
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0;
    v9 = *a1;
    *a1 = v8;
    if (v9)
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      operator delete(v9);
      v8 = *a1;
    }

    if (v6)
    {
      if (v6 <= 0x100)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v8, v7, (v7 + v6 - 1), v6 - 1);
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

uint64_t mipc::tlv<mipc::mipc_byte_array_t<60000ul,false>,false>::deserialize(void **a1, uint64_t a2)
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
      if (v7 <= 0xEA60)
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

uint64_t mipc::tlv<mipc::mipc_string_t<128ul,false>,false>::deserialize(void ***a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
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
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = operator new(0x18uLL);
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0;
    v9 = *a1;
    *a1 = v8;
    if (v9)
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      operator delete(v9);
      v8 = *a1;
    }

    if (v6)
    {
      if (v6 <= 0x80)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v8, v7, (v7 + v6 - 1), v6 - 1);
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

uint64_t mipc::tlv<mipc::mipc_string_t<32ul,false>,false>::deserialize(void ***a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
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
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = operator new(0x18uLL);
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0;
    v9 = *a1;
    *a1 = v8;
    if (v9)
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      operator delete(v9);
      v8 = *a1;
    }

    if (v6)
    {
      if (v6 <= 0x20)
      {
        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v8, v7, (v7 + v6 - 1), v6 - 1);
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

double mipc::dale_cps::Data_Register_Ft_Req::Data_Register_Ft_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3328;
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
  *a1 = &unk_2A1E68EE0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

{
  *(a1 + 8) = -3328;
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
  *a1 = &unk_2A1E68EE0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

void mipc::dale_cps::Data_Register_Ft_Req::~Data_Register_Ft_Req(mipc::dale_cps::Data_Register_Ft_Req *this)
{
  *this = &unk_2A1E68EE0;
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
  mipc::dale_cps::Data_Register_Ft_Req::~Data_Register_Ft_Req(this);

  operator delete(v1);
}

void mipc::dale_cps::Data_Register_Ft_Req::serialize(mipc::dale_cps::Data_Register_Ft_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 136);
  v5 = vdupq_n_s64(8uLL);
  v6 = (this + 152);
  v7 = vaddvq_s64(vaddq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(*(this + 88)), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(0x18uLL), vceqzq_s64(*(this + 120)))), vaddq_s64(vbicq_s8(v5, vceqzq_s64(*(this + 104))), vbicq_s8(v5, vceqzq_s64(*(this + 136)))))) + 8 * (*(this + 19) != 0);
  v58[0] = operator new(v7);
  v59 = v58[0] + v7;
  bzero(v58[0], v7);
  v58[1] = v58[0] + v7;
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
  v8 = v54;
  v54 = 0uLL;
  v9 = *(&v56 + 1);
  v56 = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(&v54 + 1);
    v11 = __p[0];
    if (!*(&v54 + 1))
    {
LABEL_7:
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(v52);
      if (v11)
      {
        goto LABEL_101;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(&v54 + 1);
    v11 = __p[0];
    if (!*(&v54 + 1))
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
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v11)
  {
    goto LABEL_101;
  }

LABEL_14:
  if (*(this + 11))
  {
    *v57 = 256;
    v12 = v57++;
    v12[1] = 1;
    v13 = v57++;
    *(v13 + 2) = **(this + 11);
    v57 += 2;
  }

  else if (!*(this + 4))
  {
    v14 = 0x10000000FLL;
    goto LABEL_18;
  }

  v14 = 0;
LABEL_18:
  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v14, 0x100u, &v60, "", 0, &v51);
  v15 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
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
  v16 = v54;
  v54 = 0uLL;
  v17 = *(&v56 + 1);
  v56 = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(&v54 + 1);
    v19 = __p[0];
    if (!*(&v54 + 1))
    {
LABEL_26:
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_34:
      operator delete(v52);
      if (v19)
      {
        goto LABEL_101;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v18 = *(&v54 + 1);
    v19 = __p[0];
    if (!*(&v54 + 1))
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
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v19)
  {
    goto LABEL_101;
  }

LABEL_35:
  if (*(this + 12))
  {
    *v57 = 257;
    v20 = v57++;
    v20[1] = 1;
    v21 = v57++;
    *(v21 + 2) = **(this + 12);
    v57 += 2;
  }

  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v60, "", 0, &v51);
  v22 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
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
  v23 = v54;
  v54 = 0uLL;
  v24 = *(&v56 + 1);
  v56 = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(&v54 + 1);
  v26 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
    if (!v26)
    {
      goto LABEL_53;
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

  if (v26)
  {
    goto LABEL_101;
  }

LABEL_53:
  if (*(this + 13))
  {
    *v57 = 258;
    v27 = v57++;
    v27[1] = 4;
    v28 = v57++;
    *(v28 + 1) = **(this + 13);
    v57 += 2;
  }

  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v60, "", 0, &v51);
  v29 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
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
  v30 = v54;
  v54 = 0uLL;
  v31 = *(&v56 + 1);
  v56 = v30;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(&v54 + 1);
  v33 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v33)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<mipc::mipc_data_v4_addr_struct4,false>(&v51, this, this + 14, 259, &v57);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v34 = v54;
  v54 = 0uLL;
  v35 = *(&v56 + 1);
  v56 = v34;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *(&v54 + 1);
  v37 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v37)
  {
    goto LABEL_101;
  }

  if (*(this + 15))
  {
    *v57 = 260;
    v38 = v57++;
    v38[1] = 16;
    v39 = v57;
    *(v57 + 1) = **(this + 15);
    v57 = v39 + 11;
  }

  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x104u, &v60, "", 0, &v51);
  v40 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
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

  mipc::Message::serializeTlv<mipc::mipc_data_v6_addr_struct4,false>(&v51, this, this + 16, &v57);
  v45 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v45)
  {
    goto LABEL_101;
  }

  mipc::Message::serializeTlv<unsigned short,true>(this, v4, 262, &v57, &v51);
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

  mipc::Message::serializeTlv<unsigned int,true>(this, v6, 264, &v57, &v51);
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

void sub_297AD424C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mipc::Message::serializeTlv<mipc::mipc_data_v4_addr_struct4,false>(uint64_t a1, uint64_t a2, _DWORD **a3, __int16 a4, _WORD **a5)
{
  if (*a3)
  {
    **a5 = a4;
    v5 = (*a5)++;
    v5[1] = 4;
    v6 = (*a5)++;
    *(v6 + 1) = **a3;
    *a5 += 2;
  }

  v8 = 0;
  v9 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a2, 0, a4, &v8, "", 0, a1);
  v7 = v9;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void mipc::Message::serializeTlv<mipc::mipc_data_v6_addr_struct4,false>(uint64_t a1, uint64_t a2, _OWORD **a3, _WORD **a4)
{
  if (*a3)
  {
    **a4 = 261;
    v4 = (*a4)++;
    v4[1] = 16;
    v5 = (*a4)++;
    *(v5 + 1) = **a3;
    *a4 += 10;
  }

  v7 = 0;
  v8 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(a2, 0, 0x105u, &v7, "", 0, a1);
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

mipc::dale_cps::Data_Register_Ft_Cnf *mipc::dale_cps::Data_Register_Ft_Cnf::Data_Register_Ft_Cnf(mipc::dale_cps::Data_Register_Ft_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62208, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E68F28;
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

void sub_297AD46BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Data_Register_Ft_Cnf::deserialize@<D0>(mipc::dale_cps::Data_Register_Ft_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Data_Register_Ft_Cnf::Data_Register_Ft_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62208, &v14, a3, 2);
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
  *a1 = &unk_2A1E6A740;
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
  *a1 = &unk_2A1E68F28;
  return a1;
}

void sub_297AD498C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Data_Register_Ft_Cnf::~Data_Register_Ft_Cnf(mipc::dale_cps::Data_Register_Ft_Cnf *this)
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

uint64_t mipc::dale_cps::Data_Register_Ft_Cnf::getSize(mipc::dale_cps::Data_Register_Ft_Cnf *this)
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

double mipc::dale_cps::Data_Deregister_Ft_Req::Data_Deregister_Ft_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3327;
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
  *a1 = &unk_2A1E68F70;
  return result;
}

{
  *(a1 + 8) = -3327;
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
  *a1 = &unk_2A1E68F70;
  return result;
}

void mipc::dale_cps::Data_Deregister_Ft_Req::~Data_Deregister_Ft_Req(mipc::dale_cps::Data_Deregister_Ft_Req *this)
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

void mipc::dale_cps::Data_Deregister_Ft_Req::serialize(mipc::dale_cps::Data_Deregister_Ft_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AD5340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::dale_cps::Data_Deregister_Ft_Cnf *mipc::dale_cps::Data_Deregister_Ft_Cnf::Data_Deregister_Ft_Cnf(mipc::dale_cps::Data_Deregister_Ft_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62209, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E68FB8;
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

void sub_297AD5508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Data_Deregister_Ft_Cnf::deserialize@<D0>(mipc::dale_cps::Data_Deregister_Ft_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Data_Deregister_Ft_Cnf::Data_Deregister_Ft_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62209, &v14, a3, 2);
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
  *a1 = &unk_2A1E6A788;
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
  *a1 = &unk_2A1E68FB8;
  return a1;
}

void sub_297AD57D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Data_Deregister_Ft_Cnf::~Data_Deregister_Ft_Cnf(mipc::dale_cps::Data_Deregister_Ft_Cnf *this)
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

uint64_t mipc::dale_cps::Data_Deregister_Ft_Cnf::getSize(mipc::dale_cps::Data_Deregister_Ft_Cnf *this)
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

double mipc::dale_cps::Data_Drop_Ip_Packets_Req::Data_Drop_Ip_Packets_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3326;
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
  *a1 = &unk_2A1E69000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

{
  *(a1 + 8) = -3326;
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
  *a1 = &unk_2A1E69000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void mipc::dale_cps::Data_Drop_Ip_Packets_Req::~Data_Drop_Ip_Packets_Req(mipc::dale_cps::Data_Drop_Ip_Packets_Req *this)
{
  *this = &unk_2A1E69000;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
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
  *this = &unk_2A1E69000;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
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
  *this = &unk_2A1E69000;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
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

void mipc::dale_cps::Data_Drop_Ip_Packets_Req::serialize(mipc::dale_cps::Data_Drop_Ip_Packets_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 12);
  v5 = *(this + 13);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 24 * ((v5 - v4 - 16) >> 4) + 40;
  }

  v7 = 24;
  if (!*(this + 11))
  {
    v7 = 16;
  }

  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  v8 = v6 + v7;
  if (v6 + v7)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v6 + v7);
    v53[0] = v9;
    v54 = &v9[v8];
    bzero(v9, v8);
    v53[1] = &v9[v8];
  }

  else
  {
    v9 = 0;
  }

  v52 = v9;
  v51 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v46, this, &v52);
  v10 = v49;
  *&__p[1] = *v47;
  __p[3] = v48;
  __p[0] = v46;
  v51 = v49;
  if (v46)
  {
    *a2 = v46;
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
    *v52 = 256;
    v12 = v52++;
    v12[1] = 1;
    v13 = v52++;
    *(v13 + 2) = **(this + 11);
    v52 += 2;
  }

  v57 = 0;
  v58 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v57, "", 0, &v46);
  v14 = v58;
  if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    __p[0] = v46;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_17:
    operator delete(__p[1]);
  }

LABEL_18:
  *&__p[1] = *v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47[0]) = 0;
  v15 = v49;
  v49 = 0uLL;
  v51 = v15;
  if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v10 + 1) + 16))(*(&v10 + 1));
    std::__shared_weak_count::__release_weak(*(&v10 + 1));
    v16 = *(&v49 + 1);
    v17 = __p[0];
    if (!*(&v49 + 1))
    {
LABEL_22:
      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_30:
      operator delete(v47[0]);
      if (v17)
      {
        goto LABEL_76;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v16 = *(&v49 + 1);
    v17 = __p[0];
    if (!*(&v49 + 1))
    {
      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if (v17)
  {
    goto LABEL_76;
  }

LABEL_31:
  v18 = *(this + 6);
  v19 = *(this + 13);
  v20 = *(this + 12);
  if (v20 == v19)
  {
    goto LABEL_49;
  }

  v21 = 0x100000002;
  v22 = v19 - v20;
  if ((v22 >> 4) <= 5)
  {
    v23 = v22 >> 4;
    v24 = *(this + 7) - (v22 >> 4);
    v25 = (*(this + 7) - (v22 >> 4));
    *(this + 7) -= v22 >> 4;
    if (v25 < 0x100)
    {
      goto LABEL_35;
    }

    v31 = v24 + 1;
    *v52++ = 257;
    *v52++ = 0;
    *v52 = 0;
    v52 += 2;
    *v52 = 0;
    v52 += 2;
    *v52++ = v24 + 1;
    *v52 = v23;
    v32 = ++v52;
    for (i = *(this + 12); i != *(this + 13); v52 = v32)
    {
      *v32 = v31;
      *++v52 = 16;
      v34 = v52;
      ++v31;
      v35 = *i++;
      *(v52 + 1) = v35;
      v32 = v34 + 11;
    }

LABEL_49:
    v21 = 0;
    v55 = 0;
    v56 = 0;
    goto LABEL_50;
  }

  v21 = 0x100000010;
LABEL_35:
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v57 = 24 * ((v22 - 16) >> 4) + 40;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v57, &v55);
  v26 = v55;
  v27 = *v55;
  v28 = *(this + 12);
  if (v28 != *(this + 13))
  {
    do
    {
      v57 = 0xAAAAAAAAAAAAAAAALL;
      v58 = 0xAAAAAAAAAAAAAAAALL;
      v59 = 16;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v59, &v57);
      **v57 = *v28;
      if (v57)
      {
        memcpy(v27, *v57, *(v57 + 8) - *v57);
        v27 += *(v57 + 8) - *v57;
      }

      v29 = v58;
      if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      ++v28;
    }

    while (v28 != *(this + 13));
    v26 = v55;
  }

  if (v27 != v26[1])
  {
    v30 = v26[1];
    v26[1] = v27;
  }

LABEL_50:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v21, 0x101u, &v55, "", 0, &v46);
  v36 = v56;
  if (v56 && !atomic_fetch_add((v56 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47[0]) = 0;
  v37 = v49;
  v49 = 0uLL;
  v38 = *(&v51 + 1);
  v51 = v37;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v39 = *(&v49 + 1);
  v40 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
    if (!v40)
    {
      goto LABEL_65;
    }

LABEL_76:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v51;
    goto LABEL_77;
  }

  if (v40)
  {
    goto LABEL_76;
  }

LABEL_65:
  (*(*this + 32))(&v46, this, v53);
  __p[0] = v46;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v47;
  __p[3] = v48;
  HIBYTE(v48) = 0;
  LOBYTE(v47[0]) = 0;
  v41 = v49;
  v49 = 0uLL;
  v42 = *(&v51 + 1);
  v51 = v41;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  v43 = *(&v49 + 1);
  v44 = __p[0];
  if (*(&v49 + 1) && !atomic_fetch_add((*(&v49 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (v44)
  {
    goto LABEL_76;
  }

  *a2 = *v53;
  *(a2 + 16) = v54;
  v53[1] = 0;
  v54 = 0;
  v53[0] = 0;
  *(a2 + 48) = 0;
  v45 = *(&v51 + 1);
  if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

LABEL_78:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }
}

void sub_297AD6834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t mipc::dale_cps::Data_Drop_Ip_Packets_Req::getSize(mipc::dale_cps::Data_Drop_Ip_Packets_Req *this)
{
  v1 = *(this + 12);
  v2 = *(this + 13);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 24 * ((v2 - v1 - 16) >> 4) + 40;
  }

  v4 = 24;
  if (!*(this + 11))
  {
    v4 = 16;
  }

  return v3 + v4;
}

mipc::dale_cps::Data_Drop_Ip_Packets_Cnf *mipc::dale_cps::Data_Drop_Ip_Packets_Cnf::Data_Drop_Ip_Packets_Cnf(mipc::dale_cps::Data_Drop_Ip_Packets_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62210, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E69048;
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

void sub_297AD6A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Data_Drop_Ip_Packets_Cnf::deserialize@<D0>(mipc::dale_cps::Data_Drop_Ip_Packets_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Data_Drop_Ip_Packets_Cnf::Data_Drop_Ip_Packets_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62210, &v14, a3, 2);
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
  *a1 = &unk_2A1E6A7D0;
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
  *a1 = &unk_2A1E69048;
  return a1;
}

void sub_297AD6D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Data_Drop_Ip_Packets_Cnf::~Data_Drop_Ip_Packets_Cnf(mipc::dale_cps::Data_Drop_Ip_Packets_Cnf *this)
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

uint64_t mipc::dale_cps::Data_Drop_Ip_Packets_Cnf::getSize(mipc::dale_cps::Data_Drop_Ip_Packets_Cnf *this)
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

double mipc::dale_cps::Bread_Butter_Mode_Req::Bread_Butter_Mode_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3325;
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
  *a1 = &unk_2A1E69090;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = -3325;
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
  *a1 = &unk_2A1E69090;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::dale_cps::Bread_Butter_Mode_Req::~Bread_Butter_Mode_Req(mipc::dale_cps::Bread_Butter_Mode_Req *this)
{
  *this = &unk_2A1E69090;
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
  *this = &unk_2A1E69090;
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
  *this = &unk_2A1E69090;
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

void mipc::dale_cps::Bread_Butter_Mode_Req::serialize(mipc::dale_cps::Bread_Butter_Mode_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AD7B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::dale_cps::Bread_Butter_Mode_Cnf *mipc::dale_cps::Bread_Butter_Mode_Cnf::Bread_Butter_Mode_Cnf(mipc::dale_cps::Bread_Butter_Mode_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62211, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E690D8;
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

void sub_297AD7D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Bread_Butter_Mode_Cnf::deserialize@<D0>(mipc::dale_cps::Bread_Butter_Mode_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Bread_Butter_Mode_Cnf::Bread_Butter_Mode_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62211, &v14, a3, 2);
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
  *a1 = &unk_2A1E6A818;
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
  *a1 = &unk_2A1E690D8;
  return a1;
}

void sub_297AD800C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Bread_Butter_Mode_Cnf::~Bread_Butter_Mode_Cnf(mipc::dale_cps::Bread_Butter_Mode_Cnf *this)
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

uint64_t mipc::dale_cps::Bread_Butter_Mode_Cnf::getSize(mipc::dale_cps::Bread_Butter_Mode_Cnf *this)
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

double mipc::dale_cps::Data_Pdn_Stats_Req::Data_Pdn_Stats_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3324;
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
  *a1 = &unk_2A1E69120;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = -3324;
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
  *a1 = &unk_2A1E69120;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::dale_cps::Data_Pdn_Stats_Req::~Data_Pdn_Stats_Req(mipc::dale_cps::Data_Pdn_Stats_Req *this)
{
  *this = &unk_2A1E69120;
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
  *this = &unk_2A1E69120;
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
  *this = &unk_2A1E69120;
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

void mipc::dale_cps::Data_Pdn_Stats_Req::serialize(mipc::dale_cps::Data_Pdn_Stats_Req *this@<X0>, uint64_t a2@<X8>)
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
    v15[1] = 4;
    v16 = v42++;
    *(v16 + 1) = **(this + 12);
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
    v23[1] = 4;
    v24 = v42++;
    *(v24 + 1) = **(this + 13);
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

void sub_297AD9070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::dale_cps::Data_Pdn_Stats_Cnf *mipc::dale_cps::Data_Pdn_Stats_Cnf::Data_Pdn_Stats_Cnf(mipc::dale_cps::Data_Pdn_Stats_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62212, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E69168;
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

void sub_297AD9288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Data_Pdn_Stats_Cnf::deserialize@<D0>(mipc::dale_cps::Data_Pdn_Stats_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Data_Pdn_Stats_Cnf::Data_Pdn_Stats_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62212, &v14, a3, 2);
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
  *a1 = &unk_2A1E6A860;
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
  *a1 = &unk_2A1E69168;
  return a1;
}

void sub_297AD9558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Data_Pdn_Stats_Cnf::~Data_Pdn_Stats_Cnf(mipc::dale_cps::Data_Pdn_Stats_Cnf *this)
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

uint64_t mipc::dale_cps::Data_Pdn_Stats_Cnf::getSize(mipc::dale_cps::Data_Pdn_Stats_Cnf *this)
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

double mipc::dale_cps::Ap_Status_Req::Ap_Status_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3323;
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
  *a1 = &unk_2A1E691B0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

{
  *(a1 + 8) = -3323;
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
  *a1 = &unk_2A1E691B0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void mipc::dale_cps::Ap_Status_Req::~Ap_Status_Req(mipc::dale_cps::Ap_Status_Req *this)
{
  *this = &unk_2A1E691B0;
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
  mipc::dale_cps::Ap_Status_Req::~Ap_Status_Req(this);

  operator delete(v1);
}