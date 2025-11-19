void sub_297CE257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Get_Throttle_Actuator_Cnf::~Get_Throttle_Actuator_Cnf(mipc::sys::Get_Throttle_Actuator_Cnf *this)
{
  *this = &unk_2A1E820F8;
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
  *this = &unk_2A1E820F8;
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
  *this = &unk_2A1E820F8;
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

uint64_t mipc::sys::Get_Throttle_Actuator_Cnf::getSize(mipc::sys::Get_Throttle_Actuator_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  v2 = v1 + 8 * (*(this + 11) != 0);
  v3 = 56;
  if (!*(this + 12))
  {
    v3 = 0;
  }

  return v2 + v3;
}

mipc::sys::At_Ind *mipc::sys::At_Ind::At_Ind(mipc::sys::At_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16385, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E82140;
  *(this + 11) = 0;
  *(this + 80) = 1;
  mipc::sys::At_Ind::deserialize(this, &v7);
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

void sub_297CE2ACC(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sys::At_Ind::deserialize(mipc::sys::At_Ind *this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_string_t<2048ul,false>,false>(&v8, this, this + 11, 0x100u);
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

uint64_t mipc::sys::At_Ind::At_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16385, &v14, a3, 3);
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
  *a1 = &unk_2A1E85650;
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
  *a1 = &unk_2A1E82140;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297CE2ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::At_Ind::~At_Ind(mipc::sys::At_Ind *this)
{
  *this = &unk_2A1E82140;
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
  *this = &unk_2A1E82140;
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
  *this = &unk_2A1E82140;
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

void mipc::Message::deserializeTlv<mipc::mipc_string_t<2048ul,false>,false>(void *a1, std::__shared_weak_count **this, void ***a3, unsigned int a4)
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

  if (v11 <= 0x800)
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

void sub_297CE35B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297CE35C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297CE35E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::sys::At_Ind::getSize(mipc::sys::At_Ind *this)
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

mipc::sys::Thermal_Sensor_Ind *mipc::sys::Thermal_Sensor_Ind::Thermal_Sensor_Ind(mipc::sys::Thermal_Sensor_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16386, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E82188;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  mipc::sys::Thermal_Sensor_Ind::deserialize(this, v7);
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

void sub_297CE3798(_Unwind_Exception *a1)
{
  v4 = *(v1 + 12);
  if (v4)
  {
    *(v1 + 13) = v4;
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

void mipc::sys::Thermal_Sensor_Ind::deserialize(std::__shared_weak_count **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  ((*this)[1].__shared_weak_owners_)(v37);
  v4 = *v37;
  *a2 = *v37;
  v5 = v38;
  *(a2 + 1) = *&v37[8];
  a2[3] = *&v37[24];
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v6;
  v39 = v6;
  *v37 = v6;
  *&v37[16] = v6;
  mipc::Message::findTLV(this, 0x104u, v37);
  *&v36[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v36 = v7;
  *__p = v7;
  v34 = *v37;
  if ((v37[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v37[8], *&v37[16]);
  }

  else
  {
    *__p = *&v37[8];
    *v36 = *&v37[24];
  }

  *&v36[8] = v38;
  if (*(&v38 + 1))
  {
    atomic_fetch_add_explicit((*(&v38 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v34;
  if (v34 && v34 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v34, &v28);
  }

  else
  {
    v9 = v39;
    v10 = *(&v39 + 1);
    v11 = this[4];
    v12 = this[11];
    this[11] = 0;
    if (v12)
    {
      operator delete(v12);
    }

    if (v8)
    {
      v13 = 0x10000000FLL;
      if (v11)
      {
        v13 = 0;
      }

      if (v8 == 0x10000000ELL)
      {
        v14 = v13;
      }

      else
      {
        v14 = v8;
      }
    }

    else
    {
      v25 = operator new(0x1CuLL);
      v25->__vftable = 0;
      v25->__shared_owners_ = 0;
      LODWORD(v25[1].__vftable) = 0;
      v25->__shared_weak_owners_ = 0;
      v26 = this[11];
      this[11] = v25;
      if (v26)
      {
        operator delete(v26);
        v25 = this[11];
      }

      if (v9 <= 0x1C)
      {
        if (v9 == 28)
        {
          v14 = 0;
          v27 = *v10;
          *(&v25->__shared_owners_ + 4) = *(v10 + 12);
          v25->std::__shared_count = v27;
        }

        else
        {
          v14 = 0x100000011;
        }
      }

      else
      {
        v14 = 0x100000012;
      }
    }

    v15 = this[3];
    v32 = this[2];
    v33 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v14, 0x104u, &v32, "", 0, &v28);
    v16 = v33;
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  v17 = *&v36[16];
  if (*&v36[16] && !atomic_fetch_add((*&v36[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if ((v36[7] & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v36[7] & 0x80000000) != 0)
  {
LABEL_26:
    operator delete(__p[0]);
  }

LABEL_27:
  v18 = *(&v38 + 1);
  if (!*(&v38 + 1) || atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v37[31] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_42:
    operator delete(*&v37[8]);
    *a2 = v28;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_43:
    operator delete(a2[1]);
    goto LABEL_31;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if ((v37[31] & 0x80000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_30:
  *a2 = v28;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_43;
  }

LABEL_31:
  *(a2 + 1) = v29;
  a2[3] = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29) = 0;
  v19 = v31;
  v31 = 0uLL;
  *(a2 + 2) = v19;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v20 = *a2;
  v21 = *(&v31 + 1);
  if (!*(&v31 + 1) || atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_45:
    operator delete(v29);
    if (v20)
    {
      return;
    }

    goto LABEL_46;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_45;
  }

LABEL_37:
  if (v20)
  {
    return;
  }

LABEL_46:
  mipc::Message::deserializeTlv<mipc::mipc_sys_thermal_sensor_info_e_struct4,8ul,false>(v37, this, this + 12, 0x105u);
  *a2 = *v37;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&v37[8];
  a2[3] = *&v37[24];
  v37[31] = 0;
  v37[8] = 0;
  v22 = v38;
  v38 = 0uLL;
  v23 = a2[5];
  *(a2 + 2) = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *(&v38 + 1);
  if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if ((v37[31] & 0x80000000) != 0)
  {
    operator delete(*&v37[8]);
  }
}

void sub_297CE3D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

uint64_t mipc::sys::Thermal_Sensor_Ind::Thermal_Sensor_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16386, &v14, a3, 3);
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
  *a1 = &unk_2A1E85698;
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
  *a1 = &unk_2A1E82188;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_297CE3FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Thermal_Sensor_Ind::~Thermal_Sensor_Ind(mipc::sys::Thermal_Sensor_Ind *this)
{
  *this = &unk_2A1E82188;
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
  *this = &unk_2A1E82188;
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
  *this = &unk_2A1E82188;
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

unint64_t mipc::sys::Thermal_Sensor_Ind::getSize(mipc::sys::Thermal_Sensor_Ind *this)
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

  v4 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 32;
  }

  return v4 + 32 * (*(this + 11) != 0) + v3;
}

mipc::sys::Mcf_Ind *mipc::sys::Mcf_Ind::Mcf_Ind(mipc::sys::Mcf_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16389, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E821D0;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  mipc::sys::Mcf_Ind::deserialize(this, &v7);
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

void sub_297CE4534(_Unwind_Exception *a1)
{
  v5 = *(v1 + 20);
  *(v1 + 20) = 0;
  if (v5)
  {
    operator delete(v5);
    v6 = *(v1 + 19);
    *(v1 + 19) = 0;
    if (!v6)
    {
LABEL_3:
      v7 = *(v1 + 18);
      *(v1 + 18) = 0;
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v6 = *(v1 + 19);
    *(v1 + 19) = 0;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  operator delete(v6);
  v7 = *(v1 + 18);
  *(v1 + 18) = 0;
  if (!v7)
  {
LABEL_4:
    v8 = *(v1 + 17);
    *(v1 + 17) = 0;
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v7);
  v8 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (!v8)
  {
LABEL_5:
    v9 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v8);
  v9 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (!v9)
  {
LABEL_6:
    mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v2);
    v10 = *(v1 + 14);
    *(v1 + 14) = 0;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v9);
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v2);
  v10 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (!v10)
  {
LABEL_7:
    v11 = *(v1 + 13);
    *(v1 + 13) = 0;
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v10);
  v11 = *(v1 + 13);
  *(v1 + 13) = 0;
  if (!v11)
  {
LABEL_8:
    v12 = *(v1 + 12);
    *(v1 + 12) = 0;
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v11);
  v12 = *(v1 + 12);
  *(v1 + 12) = 0;
  if (!v12)
  {
LABEL_9:
    v13 = *v3;
    *v3 = 0;
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v12);
  v13 = *v3;
  *v3 = 0;
  if (!v13)
  {
LABEL_10:
    mipc::ResponseMessage::~ResponseMessage(v1);
    _Unwind_Resume(a1);
  }

LABEL_19:
  operator delete(v13);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sys::Mcf_Ind::deserialize(mipc::sys::Mcf_Ind *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(&v32);
  *a2 = v32;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v34;
  HIBYTE(v34) = 0;
  LOBYTE(__p) = 0;
  v4 = v35;
  v35 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v35 + 1);
  if (*(&v35 + 1) && !atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
LABEL_9:
      if (v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p);
  if (v6)
  {
    return;
  }

LABEL_13:
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 11, 0x100u, &v32);
  *a2 = v32;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v34;
  HIBYTE(v34) = 0;
  LOBYTE(__p) = 0;
  v8 = v35;
  v35 = 0uLL;
  v9 = *(a2 + 40);
  *(a2 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *a2;
  v11 = *(&v35 + 1);
  if (!*(&v35 + 1) || atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v34) & 0x80000000) == 0)
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
  if (SHIBYTE(v34) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v10)
  {
    return;
  }

LABEL_25:
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, &v32);
  *a2 = v32;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = __p;
  *(a2 + 24) = v34;
  HIBYTE(v34) = 0;
  LOBYTE(__p) = 0;
  v12 = v35;
  v35 = 0uLL;
  v13 = *(a2 + 40);
  *(a2 + 32) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *a2;
  v15 = *(&v35 + 1);
  if (*(&v35 + 1) && !atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (!v14)
  {
    mipc::Message::deserializeTlv<unsigned char,false>(this, this + 13, 0x102u, &v32);
    *a2 = v32;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = __p;
    *(a2 + 24) = v34;
    HIBYTE(v34) = 0;
    LOBYTE(__p) = 0;
    v16 = v35;
    v35 = 0uLL;
    v17 = *(a2 + 40);
    *(a2 + 32) = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *a2;
    v19 = *(&v35 + 1);
    if (*(&v35 + 1) && !atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      mipc::Message::deserializeTlv<unsigned char,false>(this, this + 14, 0x103u, &v32);
      *a2 = v32;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = __p;
      *(a2 + 24) = v34;
      HIBYTE(v34) = 0;
      LOBYTE(__p) = 0;
      v20 = v35;
      v35 = 0uLL;
      v21 = *(a2 + 40);
      *(a2 + 32) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v22 = *a2;
      v23 = *(&v35 + 1);
      if (*(&v35 + 1) && !atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }

      if (!v22)
      {
        mipc::Message::deserializeTlv<mipc::mipc_string_t<2048ul,false>,false>(&v32, this, this + 15, 0x104u);
        *a2 = v32;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = __p;
        *(a2 + 24) = v34;
        HIBYTE(v34) = 0;
        LOBYTE(__p) = 0;
        v24 = v35;
        v35 = 0uLL;
        v25 = *(a2 + 40);
        *(a2 + 32) = v24;
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = *a2;
        v27 = *(&v35 + 1);
        if (*(&v35 + 1) && !atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p);
        }

        if (!v26)
        {
          mipc::Message::deserializeTlv<unsigned int,false>(this, this + 16, 0x105u, &v32);
          v28 = *mipc::Error::operator=(a2, &v32);
          mipc::Error::~Error(&v32);
          if (!v28)
          {
            mipc::Message::deserializeTlv<unsigned char,false>(this, this + 17, 0x106u, &v32);
            v29 = *mipc::Error::operator=(a2, &v32);
            mipc::Error::~Error(&v32);
            if (!v29)
            {
              mipc::Message::deserializeTlv<unsigned char,true>(this, this + 18, 0x10Au, &v32);
              v30 = *mipc::Error::operator=(a2, &v32);
              mipc::Error::~Error(&v32);
              if (!v30)
              {
                mipc::Message::deserializeTlv<unsigned char,true>(this, this + 19, 0x10Bu, &v32);
                v31 = *mipc::Error::operator=(a2, &v32);
                mipc::Error::~Error(&v32);
                if (!v31)
                {
                  mipc::Message::deserializeTlv<unsigned int,false>(this, this + 20, 0x10Cu, &v32);
                  mipc::Error::operator=(a2, &v32);
                  mipc::Error::~Error(&v32);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t mipc::sys::Mcf_Ind::Mcf_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16389, &v14, a3, 3);
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
  *a1 = &unk_2A1E856E0;
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
  *a1 = &unk_2A1E821D0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return a1;
}

void sub_297CE50B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Mcf_Ind::~Mcf_Ind(mipc::sys::Mcf_Ind *this)
{
  *this = &unk_2A1E821D0;
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
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

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
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (*(this + 63) < 0)
  {
LABEL_26:
    operator delete(*(this + 5));
  }

LABEL_27:
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
  mipc::sys::Mcf_Ind::~Mcf_Ind(this);

  operator delete(v1);
}

uint64_t mipc::sys::Mcf_Ind::getSize(mipc::sys::Mcf_Ind *this)
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

  v5 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v5 = 32;
  }

  v6.i64[0] = *(this + 14);
  v6.i64[1] = *(this + 16);
  v7 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vbicq_s8(v7, vceqzq_s64(*(this + 6))), vbicq_s8(v7, vceqzq_s64(*(this + 136)))), vaddq_s64(vbicq_s8(v7, vceqzq_s64(v6)), vbicq_s8(v7, vceqzq_s64(*(this + 152)))))) + 8 * (*(this + 11) != 0) + v5 + v1;
}

mipc::sys::Sbp_Ind *mipc::sys::Sbp_Ind::Sbp_Ind(mipc::sys::Sbp_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16390, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E82218;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 80) = 1;
  mipc::sys::Sbp_Ind::deserialize(this, v7);
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

void sub_297CE54C4(_Unwind_Exception *a1)
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

void mipc::sys::Sbp_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

uint64_t mipc::sys::Sbp_Ind::Sbp_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16390, &v14, a3, 3);
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
  *a1 = &unk_2A1E85728;
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
  *a1 = &unk_2A1E82218;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297CE5A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Sbp_Ind::~Sbp_Ind(mipc::sys::Sbp_Ind *this)
{
  *this = &unk_2A1E82218;
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
  *this = &unk_2A1E82218;
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
  *this = &unk_2A1E82218;
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

uint64_t mipc::sys::Sbp_Ind::getSize(mipc::sys::Sbp_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0);
}

mipc::sys::Thermal_Actuator_Ind *mipc::sys::Thermal_Actuator_Ind::Thermal_Actuator_Ind(mipc::sys::Thermal_Actuator_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16406, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E82260;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::sys::Thermal_Actuator_Ind::deserialize(this, v7);
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

void sub_297CE5F5C(_Unwind_Exception *a1)
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

void mipc::sys::Thermal_Actuator_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

void *mipc::sys::Thermal_Actuator_Ind::Thermal_Actuator_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16406, &v14, a3, 3);
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
  *a1 = &unk_2A1E85770;
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
  *a1 = &unk_2A1E82260;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297CE65C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Thermal_Actuator_Ind::~Thermal_Actuator_Ind(mipc::sys::Thermal_Actuator_Ind *this)
{
  *this = &unk_2A1E82260;
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
  *this = &unk_2A1E82260;
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
  *this = &unk_2A1E82260;
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

uint64_t mipc::sys::Thermal_Actuator_Ind::getSize(mipc::sys::Thermal_Actuator_Ind *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0);
}

mipc::sys::Dmf_Urc_Ind *mipc::sys::Dmf_Urc_Ind::Dmf_Urc_Ind(mipc::sys::Dmf_Urc_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16408, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E822A8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 80) = 1;
  mipc::sys::Dmf_Urc_Ind::deserialize(this, v7);
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

void sub_297CE6B50(_Unwind_Exception *a1)
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

void mipc::sys::Dmf_Urc_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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
  mipc::Message::deserializeTlv<mipc::mipc_byte_array_t<2048ul,false>,true>(this, this + 12, 0x101u, &v12);
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

uint64_t mipc::sys::Dmf_Urc_Ind::Dmf_Urc_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16408, &v14, a3, 3);
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
  *a1 = &unk_2A1E857B8;
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
  *a1 = &unk_2A1E822A8;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297CE7070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Dmf_Urc_Ind::~Dmf_Urc_Ind(mipc::sys::Dmf_Urc_Ind *this)
{
  *this = &unk_2A1E822A8;
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
  *this = &unk_2A1E822A8;
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
  *this = &unk_2A1E822A8;
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

void *mipc::sys::Dmf_Urc_Ind::getSize(mipc::sys::Dmf_Urc_Ind *this)
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

mipc::sys::Meta_Control_Ind *mipc::sys::Meta_Control_Ind::Meta_Control_Ind(mipc::sys::Meta_Control_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16409, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E822F0;
  *(this + 11) = 0;
  mipc::sys::Meta_Control_Ind::deserialize(this, &v7);
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

void sub_297CE7610(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sys::Meta_Control_Ind::deserialize(mipc::sys::Meta_Control_Ind *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  (*(*this + 40))(v34);
  v4 = *v34;
  *a2 = *v34;
  v5 = v35;
  *(a2 + 8) = *&v34[8];
  *(a2 + 24) = *&v34[24];
  *(a2 + 32) = v5;
  if (v4)
  {
    return;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v6;
  v36 = v6;
  *v34 = v6;
  *&v34[16] = v6;
  mipc::Message::findTLV(this, 0x100u, v34);
  *&v33[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v33 = v7;
  *__p = v7;
  v31 = *v34;
  if ((v34[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *&v34[8], *&v34[16]);
  }

  else
  {
    *__p = *&v34[8];
    *v33 = *&v34[24];
  }

  *&v33[8] = v35;
  if (*(&v35 + 1))
  {
    atomic_fetch_add_explicit((*(&v35 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v31;
  if (v31 && v31 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v31, &v25);
    goto LABEL_32;
  }

  v9 = v36;
  v10 = *(&v36 + 1);
  v11 = *(this + 4);
  v12 = *(this + 11);
  *(this + 11) = 0;
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

    v16 = *(this + 3);
    v29 = *(this + 2);
    v30 = v16;
    if (!v16)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v17 = operator new(0x18uLL);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  v18 = *(this + 11);
  *(this + 11) = v17;
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

  if (!v9)
  {
    v15 = 0x100000003;
    v16 = *(this + 3);
    v29 = *(this + 2);
    v30 = v16;
    if (!v16)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(*(this + 11), v10, &v10[v9], v9);
  v15 = 0;
  v16 = *(this + 3);
  v29 = *(this + 2);
  v30 = v16;
  if (v16)
  {
LABEL_28:
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_29:
  mipc::Message::handle<(mipc::Error::Type)2>(this, v15, 0x100u, &v29, "", 0, &v25);
  v20 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

LABEL_32:
  v21 = *&v33[16];
  if (*&v33[16] && !atomic_fetch_add((*&v33[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    if ((v33[7] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((v33[7] & 0x80000000) != 0)
  {
LABEL_35:
    operator delete(__p[0]);
  }

LABEL_36:
  v22 = *(&v35 + 1);
  if (!*(&v35 + 1) || atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v34[31] & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    operator delete(*&v34[8]);
    *a2 = v25;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_52;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if ((v34[31] & 0x80000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_39:
  *a2 = v25;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_52:
  operator delete(*(a2 + 8));
LABEL_40:
  *(a2 + 8) = v26;
  *(a2 + 24) = v27;
  HIBYTE(v27) = 0;
  LOBYTE(v26) = 0;
  v23 = v28;
  v28 = 0uLL;
  *(a2 + 32) = v23;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  v24 = *(&v28 + 1);
  if (!*(&v28 + 1) || atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_46;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if (SHIBYTE(v27) < 0)
  {
LABEL_46:
    operator delete(v26);
  }
}

void sub_297CE7A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

void *mipc::sys::Meta_Control_Ind::Meta_Control_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16409, &v14, a3, 3);
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
  *a1 = &unk_2A1E85800;
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
  *a1 = &unk_2A1E822F0;
  a1[11] = 0;
  return a1;
}

void sub_297CE7D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Meta_Control_Ind::~Meta_Control_Ind(mipc::sys::Meta_Control_Ind *this)
{
  *this = &unk_2A1E822F0;
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
  *this = &unk_2A1E822F0;
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
  *this = &unk_2A1E822F0;
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

void *mipc::sys::Meta_Control_Ind::getSize(mipc::sys::Meta_Control_Ind *this)
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

mipc::sys::Idc_Frame_Cfg_Ind *mipc::sys::Idc_Frame_Cfg_Ind::Idc_Frame_Cfg_Ind(mipc::sys::Idc_Frame_Cfg_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16413, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E82338;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  mipc::sys::Idc_Frame_Cfg_Ind::deserialize(this, v7);
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

void sub_297CE8294(_Unwind_Exception *a1)
{
  v4 = *(v1 + 17);
  if (v4)
  {
    *(v1 + 18) = v4;
    operator delete(v4);
    v5 = *(v1 + 14);
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
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 15) = v5;
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

void mipc::sys::Idc_Frame_Cfg_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
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

  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 11, 0x100u, &v24);
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
  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 12, 0x101u, &v24);
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
    mipc::Message::deserializeTlv<unsigned short,true>(this, this + 13, 0x102u, &v24);
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
      mipc::Message::deserializeTlv<unsigned short,40ul,false>(&v24, this, this + 14);
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
        mipc::Message::deserializeTlv<unsigned char,40ul,false>(&v24, this, this + 17);
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

uint64_t mipc::sys::Idc_Frame_Cfg_Ind::Idc_Frame_Cfg_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16413, &v14, a3, 3);
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
  *a1 = &unk_2A1E85848;
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
  *a1 = &unk_2A1E82338;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return a1;
}

void sub_297CE8B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Idc_Frame_Cfg_Ind::~Idc_Frame_Cfg_Ind(mipc::sys::Idc_Frame_Cfg_Ind *this)
{
  *this = &unk_2A1E82338;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
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
  mipc::sys::Idc_Frame_Cfg_Ind::~Idc_Frame_Cfg_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<unsigned short,40ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v6;
  v41 = v6;
  *v39 = v6;
  *&v39[16] = v6;
  mipc::Message::findTLV(this, 0x103u, v39);
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
    v11 = *a3;
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v33 = a1;
      v12 = &v10[v9];
      while (1)
      {
        v13 = *a3;
        v14 = v11 - *a3;
        if (v14 == 80)
        {
          v8 = 0x100000010;
          goto LABEL_45;
        }

        v15 = v12 - v10;
        if ((v12 - v10) < 4)
        {
          a1 = v33;
          v8 = 0x100000005;
          goto LABEL_46;
        }

        v16 = v10 + 2;
        if (v15 <= 2)
        {
          v16 = v12;
        }

        v17 = v12 - v16 <= 2;
        v20 = *v16;
        v18 = (v16 + 2);
        v19 = v20;
        v21 = v17 ? v12 : v18;
        v22 = a3[2];
        if (v11 >= v22)
        {
          v23 = v14 >> 1;
          if (v14 >> 1 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v24 = v22 - v13;
          v25 = v24 <= v23 + 1 ? v23 + 1 : v24;
          v26 = v24 >= 0x7FFFFFFFFFFFFFFELL ? 0x7FFFFFFFFFFFFFFFLL : v25;
          if (v26)
          {
            if (v26 < 0)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v27 = operator new(2 * v26);
          }

          else
          {
            v27 = 0;
          }

          v28 = &v27[2 * v23];
          *v28 = 0;
          v11 = v28 + 2;
          memcpy(v27, v13, v14);
          *a3 = v27;
          a3[1] = v11;
          a3[2] = &v27[2 * v26];
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v11++ = 0;
        }

        a3[1] = v11;
        if (v19 > 2)
        {
          break;
        }

        if (v19 != 2)
        {
          v8 = 0x100000011;
          goto LABEL_45;
        }

        v10 = (v21 + 2);
        *(v11 - 1) = *v21;
        if (v12 - v21 <= 4)
        {
          v10 = v12;
        }

        if ((v12 - v10) <= 7)
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

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x103u, &v34, "", 0, a1);
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

void sub_297CE90E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void mipc::Message::deserializeTlv<unsigned char,40ul,false>(void *a1, std::__shared_weak_count **this, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v6;
  v40 = v6;
  *v38 = v6;
  *&v38[16] = v6;
  mipc::Message::findTLV(this, 0x104u, v38);
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

  if (v35)
  {
    if (v35 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v35, a1);
      goto LABEL_49;
    }

    v8 = 0;
    a3[1] = *a3;
  }

  else
  {
    v9 = v40;
    v10 = *(&v40 + 1);
    a3[1] = *a3;
    if (v9 < 8)
    {
      v8 = 0;
    }

    else
    {
      v32 = a1;
      v11 = (v10 + v9);
      while (1)
      {
        v13 = *a3;
        v12 = a3[1];
        v14 = &v12[-*a3];
        if (v14 == 40)
        {
          v8 = 0x100000010;
          goto LABEL_43;
        }

        v15 = v11 - v10;
        if ((v11 - v10) < 4)
        {
          a1 = v32;
          v8 = 0x100000005;
          goto LABEL_44;
        }

        v16 = v10 + 1;
        if (v15 <= 2)
        {
          v16 = v11;
        }

        v17 = v11 - v16 <= 2;
        v20 = *v16;
        v18 = v16 + 1;
        v19 = v20;
        if (v17)
        {
          v21 = v11;
        }

        else
        {
          v21 = v18;
        }

        v22 = a3[2];
        if (v12 >= v22)
        {
          v24 = v14 + 1;
          if ((v14 + 1) < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v25 = v22 - v13;
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            v27 = operator new(v26);
          }

          else
          {
            v27 = 0;
          }

          v27[v14] = 0;
          v23 = &v27[v14 + 1];
          memcpy(v27, v13, v14);
          *a3 = v27;
          a3[1] = v23;
          a3[2] = &v27[v26];
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v12 = 0;
          v23 = (v12 + 1);
        }

        a3[1] = v23;
        if (v19 > 1)
        {
          v8 = 0x100000012;
          goto LABEL_43;
        }

        if (!v19)
        {
          break;
        }

        v10 = v21 + 2;
        *(v23 - 1) = *v21;
        if (v11 - v21 <= 4)
        {
          v10 = v11;
        }

        if ((v11 - v10) <= 7)
        {
          v8 = 0;
          goto LABEL_43;
        }
      }

      v8 = 0x100000011;
LABEL_43:
      a1 = v32;
    }
  }

LABEL_44:
  v28 = this[3];
  v33 = this[2];
  v34 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x104u, &v33, "", 0, a1);
  v29 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_49:
  v30 = *&v37[16];
  if (*&v37[16] && !atomic_fetch_add((*&v37[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    if ((v37[7] & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if ((v37[7] & 0x80000000) != 0)
  {
LABEL_52:
    operator delete(__p[0]);
  }

LABEL_53:
  v31 = *(&v39 + 1);
  if (!*(&v39 + 1) || atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v38[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_56;
  }

  (v31->__on_zero_shared)(v31);
  std::__shared_weak_count::__release_weak(v31);
  if ((v38[31] & 0x80000000) != 0)
  {
LABEL_56:
    operator delete(*&v38[8]);
  }
}

void sub_297CE94F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

uint64_t mipc::sys::Idc_Frame_Cfg_Ind::getSize(mipc::sys::Idc_Frame_Cfg_Ind *this)
{
  v1 = *(this + 14);
  v2 = *(this + 15);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4 * (v2 - v1) + 16;
  }

  v4 = *(this + 17);
  v5 = *(this + 18);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 8 * (v5 - v4) + 16;
  }

  v7 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v7 = 32;
  }

  return v7 + 8 * (*(this + 11) != 0) + 8 * (*(this + 12) != 0) + 8 * (*(this + 13) != 0) + v3 + v6;
}

mipc::sys::Idc_Scan_Freq_Ind *mipc::sys::Idc_Scan_Freq_Ind::Idc_Scan_Freq_Ind(mipc::sys::Idc_Scan_Freq_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16414, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E82380;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  mipc::sys::Idc_Scan_Freq_Ind::deserialize(this, v7);
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

void sub_297CE9710(_Unwind_Exception *a1)
{
  v4 = *(v1 + 14);
  if (v4)
  {
    *(v1 + 15) = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      mipc::ResponseMessage::~ResponseMessage(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 12) = v5;
  operator delete(v5);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sys::Idc_Scan_Freq_Ind::deserialize(std::__shared_weak_count **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  ((*this)[1].__shared_weak_owners_)(&v12);
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

  mipc::Message::deserializeTlv<unsigned short,32ul,false>(&v12, this, this + 11, 0x100u);
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
  mipc::Message::deserializeTlv<unsigned short,32ul,false>(&v12, this, this + 14, 0x101u);
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

uint64_t mipc::sys::Idc_Scan_Freq_Ind::Idc_Scan_Freq_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16414, &v14, a3, 3);
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
  *a1 = &unk_2A1E85890;
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
  *a1 = &unk_2A1E82380;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_297CE9C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Idc_Scan_Freq_Ind::~Idc_Scan_Freq_Ind(mipc::sys::Idc_Scan_Freq_Ind *this)
{
  *this = &unk_2A1E82380;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
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
  *this = &unk_2A1E82380;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
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
  *this = &unk_2A1E82380;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
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

void mipc::Message::deserializeTlv<unsigned short,32ul,false>(void *a1, std::__shared_weak_count **this, void *a3, unsigned int a4)
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
      goto LABEL_51;
    }

    v10 = 0;
    a3[1] = *a3;
  }

  else
  {
    v11 = v44;
    v12 = *(&v44 + 1);
    v13 = *a3;
    a3[1] = *a3;
    if (v11 < 8)
    {
      v10 = 0;
    }

    else
    {
      v35 = v4;
      v36 = a1;
      v14 = &v12[v11];
      while (1)
      {
        v15 = *a3;
        v16 = v13 - *a3;
        if (v16 == 64)
        {
          v10 = 0x100000010;
          goto LABEL_45;
        }

        v17 = v14 - v12;
        if ((v14 - v12) < 4)
        {
          a1 = v36;
          v4 = v35;
          v10 = 0x100000005;
          goto LABEL_46;
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
          v25 = v16 >> 1;
          if (v16 >> 1 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v26 = v24 - v15;
          v27 = v26 <= v25 + 1 ? v25 + 1 : v26;
          v28 = v26 >= 0x7FFFFFFFFFFFFFFELL ? 0x7FFFFFFFFFFFFFFFLL : v27;
          if (v28)
          {
            if (v28 < 0)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = operator new(2 * v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = &v29[2 * v25];
          *v30 = 0;
          v13 = v30 + 2;
          memcpy(v29, v15, v16);
          *a3 = v29;
          a3[1] = v13;
          a3[2] = &v29[2 * v28];
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
        if (v21 > 2)
        {
          break;
        }

        if (v21 != 2)
        {
          v10 = 0x100000011;
          goto LABEL_45;
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
          goto LABEL_45;
        }
      }

      v10 = 0x100000012;
LABEL_45:
      a1 = v36;
      v4 = v35;
    }
  }

LABEL_46:
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

LABEL_51:
  v33 = *&v41[16];
  if (*&v41[16] && !atomic_fetch_add((*&v41[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
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
  v34 = *(&v43 + 1);
  if (!*(&v43 + 1) || atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v42[31] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  (v34->__on_zero_shared)(v34);
  std::__shared_weak_count::__release_weak(v34);
  if ((v42[31] & 0x80000000) != 0)
  {
LABEL_58:
    operator delete(*&v42[8]);
  }
}

void sub_297CEA41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

uint64_t mipc::sys::Idc_Scan_Freq_Ind::getSize(mipc::sys::Idc_Scan_Freq_Ind *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4 * (v2 - v1) + 16;
  }

  v4 = *(this + 14);
  v5 = *(this + 15);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4 * (v5 - v4) + 16;
  }

  v7 = 24;
  if (HIDWORD(*(this + 4)))
  {
    v7 = 32;
  }

  return v3 + v6 + v7;
}

mipc::sys::Idc_Channel_Param_Ind *mipc::sys::Idc_Channel_Param_Ind::Idc_Channel_Param_Ind(mipc::sys::Idc_Channel_Param_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16415, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E823C8;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  mipc::sys::Idc_Channel_Param_Ind::deserialize(this, &v7);
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

void sub_297CEA608(_Unwind_Exception *a1)
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

void mipc::sys::Idc_Channel_Param_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
  mipc::Message::deserializeTlv<unsigned short,true>(this, this + 12, 0x101u, &v28);
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
    mipc::Message::deserializeTlv<unsigned short,true>(this, this + 13, 0x102u, &v28);
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
      mipc::Message::deserializeTlv<unsigned short,true>(this, this + 14, 0x103u, &v28);
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
        mipc::Message::deserializeTlv<unsigned short,true>(this, this + 15, 0x104u, &v28);
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
          mipc::Message::deserializeTlv<unsigned char,true>(this, this + 16, 0x105u, &v28);
          mipc::Error::operator=(a2, &v28);
          mipc::Error::~Error(&v28);
        }
      }
    }
  }
}

uint64_t mipc::sys::Idc_Channel_Param_Ind::Idc_Channel_Param_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16415, &v14, a3, 3);
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
  *a1 = &unk_2A1E858D8;
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
  *a1 = &unk_2A1E823C8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_297CEB008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Idc_Channel_Param_Ind::~Idc_Channel_Param_Ind(mipc::sys::Idc_Channel_Param_Ind *this)
{
  *this = &unk_2A1E823C8;
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
  mipc::sys::Idc_Channel_Param_Ind::~Idc_Channel_Param_Ind(this);

  operator delete(v1);
}

uint64_t mipc::sys::Idc_Channel_Param_Ind::getSize(int64x2_t *this)
{
  v1 = 24;
  if (this[2].i32[1])
  {
    v1 = 32;
  }

  v2 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v2, vceqzq_s64(this[6])), vbicq_s8(v2, vceqzq_s64(this[7])))) + 8 * (this[5].i64[1] != 0) + v1 + 8 * (this[8].i64[0] != 0);
}

mipc::sys::Forward_At_Ind *mipc::sys::Forward_At_Ind::Forward_At_Ind(mipc::sys::Forward_At_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 16418, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E82410;
  *(this + 11) = 0;
  *(this + 80) = 1;
  mipc::sys::Forward_At_Ind::deserialize(this, &v7);
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

void sub_297CEB360(_Unwind_Exception *a1)
{
  v3 = v2;
  mipc::tlv<mipc::mipc_string_t<22ul,false>,false>::~tlv(v3);
  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::sys::Forward_At_Ind::deserialize(mipc::sys::Forward_At_Ind *this@<X0>, uint64_t a2@<X8>)
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
    mipc::Message::deserializeTlv<mipc::mipc_string_t<2048ul,false>,false>(&v8, this, this + 11, 0x100u);
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

uint64_t mipc::sys::Forward_At_Ind::Forward_At_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 16418, &v14, a3, 3);
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
  *a1 = &unk_2A1E85920;
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
  *a1 = &unk_2A1E82410;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void sub_297CEB760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::sys::Forward_At_Ind::~Forward_At_Ind(mipc::sys::Forward_At_Ind *this)
{
  *this = &unk_2A1E82410;
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
  *this = &unk_2A1E82410;
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
  *this = &unk_2A1E82410;
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

uint64_t mipc::sys::Forward_At_Ind::getSize(mipc::sys::Forward_At_Ind *this)
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

uint64_t mipc::tlv<mipc::mipc_byte_array_t<64ul,false>,false>::deserialize(void **a1, uint64_t a2)
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
      if (v7 <= 0x40)
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

void mipc::sDefaultSerializeErrorHandler(uint64_t a1, uint64_t *a2)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v15 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, a2[1], a2[2]);
    v4 = a2[5];
    v17 = a2[4];
    v18 = v4;
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = *(a2 + 1);
    v4 = a2[5];
    v17 = a2[4];
    v18 = v4;
    if (!v4)
    {
LABEL_4:
      *exception = &unk_2A1E85A90;
      *(exception + 1) = 0;
      *(exception + 2) = 0;
      *(exception + 3) = 0;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v16;
        }

        else
        {
          v6 = v16.__r_.__value_.__r.__words[0];
        }

        std::string::append((exception + 8), v6, size);
      }

      v8 = v17;
      v7 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (!v8)
      {
LABEL_16:
      }

      v9 = v17;
      v10 = v18;
      v19 = v17;
      v20 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mipc::tlv_util::hex_sp(v9, &v21);
      v11 = std::string::insert(&v21, 0, "\nTLV buffer: ", 0xDuLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v23 = v11->__r_.__value_.__r.__words[2];
      v22 = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (v23 >= 0)
      {
        v13 = &v22;
      }

      else
      {
        v13 = v22;
      }

      if (v23 >= 0)
      {
        v14 = HIBYTE(v23);
      }

      else
      {
        v14 = *(&v22 + 1);
      }

      std::string::append((exception + 8), v13, v14);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22);
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }
      }

      else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if (!v10)
        {
          goto LABEL_16;
        }

LABEL_33:
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        goto LABEL_16;
      }

      operator delete(v21.__r_.__value_.__l.__data_);
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  goto LABEL_4;
}

void sub_297CEC190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a26 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a19);
    if ((*(v26 + 31) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a19);
    if ((*(v26 + 31) & 0x80000000) == 0)
    {
LABEL_8:
      std::exception::~exception(v26);
      if (a18 && !atomic_fetch_add(&a18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (a18->__on_zero_shared)(a18);
        std::__shared_weak_count::__release_weak(a18);
      }

      if (a16 < 0)
      {
        operator delete(a11);
      }

      __cxa_free_exception(v26);
      _Unwind_Resume(a1);
    }
  }

  operator delete(*v27);
  goto LABEL_8;
}

void mipc::sDefaultDeserializeErrorHandler(uint64_t a1, uint64_t *a2)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v15 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, a2[1], a2[2]);
    v4 = a2[5];
    v17 = a2[4];
    v18 = v4;
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = *(a2 + 1);
    v4 = a2[5];
    v17 = a2[4];
    v18 = v4;
    if (!v4)
    {
LABEL_4:
      *exception = &unk_2A1E85AD0;
      *(exception + 1) = 0;
      *(exception + 2) = 0;
      *(exception + 3) = 0;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v16;
        }

        else
        {
          v6 = v16.__r_.__value_.__r.__words[0];
        }

        std::string::append((exception + 8), v6, size);
      }

      v8 = v17;
      v7 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (!v8)
      {
LABEL_16:
      }

      v9 = v17;
      v10 = v18;
      v19 = v17;
      v20 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mipc::tlv_util::hex_sp(v9, &v21);
      v11 = std::string::insert(&v21, 0, "\nMessage buffer: ", 0x11uLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v23 = v11->__r_.__value_.__r.__words[2];
      v22 = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (v23 >= 0)
      {
        v13 = &v22;
      }

      else
      {
        v13 = v22;
      }

      if (v23 >= 0)
      {
        v14 = HIBYTE(v23);
      }

      else
      {
        v14 = *(&v22 + 1);
      }

      std::string::append((exception + 8), v13, v14);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22);
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }
      }

      else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if (!v10)
        {
          goto LABEL_16;
        }

LABEL_33:
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        goto LABEL_16;
      }

      operator delete(v21.__r_.__value_.__l.__data_);
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  goto LABEL_4;
}

void sub_297CEC4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a26 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a19);
    if ((*(v26 + 31) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a19);
    if ((*(v26 + 31) & 0x80000000) == 0)
    {
LABEL_8:
      std::exception::~exception(v26);
      if (a18 && !atomic_fetch_add(&a18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (a18->__on_zero_shared)(a18);
        std::__shared_weak_count::__release_weak(a18);
      }

      if (a16 < 0)
      {
        operator delete(a11);
      }

      __cxa_free_exception(v26);
      _Unwind_Resume(a1);
    }
  }

  operator delete(*v27);
  goto LABEL_8;
}

double mipc::Message::Message(uint64_t a1, __int16 a2, char a3, char a4)
{
  *a1 = &unk_2A1E85968;
  *(a1 + 8) = a2;
  *(a1 + 10) = a3;
  *(a1 + 11) = a4;
  *(a1 + 12) = 1878982656;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

{
  *a1 = &unk_2A1E85968;
  *(a1 + 8) = a2;
  *(a1 + 10) = a3;
  *(a1 + 11) = a4;
  *(a1 + 12) = 1878982656;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

uint64_t mipc::Message::Message(uint64_t a1, __int16 a2, const void *a3, size_t a4, char a5)
{
  *a1 = &unk_2A1E85968;
  *(a1 + 8) = a2;
  *(a1 + 10) = 0;
  *(a1 + 11) = a5;
  *(a1 + 12) = 1878982656;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  if (!a3 || !a4)
  {
    v18 = 0;
    v19 = 0;
    mipc::Message::handle<(mipc::Error::Type)2>(v20, a1, 0x100000004, 0, 0, "", 0);
    v8 = v23;
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      if ((v22 & 0x80000000) == 0)
      {
        return a1;
      }
    }

    else if ((v22 & 0x80000000) == 0)
    {
      return a1;
    }

    operator delete(v21);
    return a1;
  }

  if (a4 > 0xF)
  {
    v10 = operator new(0x30uLL);
    v10[1] = 0;
    v10[2] = 0;
    *v10 = &unk_2A1E64738;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = operator new(a4);
    v10[3] = v11;
    v12 = &v11[a4];
    v10[5] = &v11[a4];
    memcpy(v11, a3, a4);
    v10[4] = v12;
    *(a1 + 16) = v10 + 3;
    *(a1 + 24) = v10;
    mipc::Message::deserializeHdr(a1);
  }

  else
  {
    mipc::Message::handle<(mipc::Error::Type)2>(v14, a1, 0x100000005, 0, 0, "insufficient buf for message hdr", 32);
    v7 = v17;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_297CEC8E8(_Unwind_Exception *a1)
{
  mipc::Error::~Error((v1 + 32));
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void sub_297CEC908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error((v9 + 32));
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void mipc::Message::handle<(mipc::Error::Type)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, unsigned __int8 *a6, uint64_t a7)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 16) = v10;
  *(a1 + 32) = v10;
  *a1 = v10;
  v11 = *(a2 + 8);
  v21 = a4;
  v22 = a5;
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
    v27 = a4;
    v28 = a5;
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v27 = a4;
    v28 = 0;
  }

  mipc::Error::Error<>(&v23, 2u, a3, v11, 0x8000u, &v27, a6, a7);
  v12 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v22;
  *a1 = v23;
  *(a1 + 8) = v24;
  *(a1 + 24) = v25;
  v24 = 0uLL;
  *(a1 + 32) = v26;
  v25 = 0;
  v26 = 0uLL;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (*a1)
    {
LABEL_10:
      std::__memberwise_copy_assign[abi:ne200100]<std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,0ul,1ul,2ul>(a2 + 32, a1);
      v14 = mipc::Message::sDeserializeErrHandler;
      v15 = *(a2 + 8);
      v17 = *(a2 + 32);
      if (*(a2 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a2 + 40), *(a2 + 48));
      }

      else
      {
        __p = *(a2 + 40);
      }

      v16 = *(a2 + 72);
      v19 = *(a2 + 64);
      v20 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v14(v15, &v17);
    }
  }

  else if (*a1)
  {
    goto LABEL_10;
  }
}

void sub_297CECBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::Error::~Error(v9);
  _Unwind_Resume(a1);
}

void sub_297CECBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v7 - 48);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mipc::Message::deserializeHdr(mipc::Message *this)
{
  v134 = *MEMORY[0x29EDCA608];
  v2 = *(this + 2);
  v3 = *v2;
  if (**v2 != 609491332)
  {
    v8 = *(this + 3);
    v83 = *(this + 2);
    v84 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(v85, this, 0x100000019, v2, v8, "invalid hdr magic", 17);
    v9 = v88;
    if (v88 && !atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if ((v87 & 0x80000000) == 0)
      {
LABEL_12:
        v10 = v84;
        if (!v84)
        {
LABEL_183:
          result = 0;
          goto LABEL_184;
        }

LABEL_181:
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        goto LABEL_183;
      }
    }

    else if ((v87 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(__p);
    goto LABEL_12;
  }

  v4 = *(this + 4);
  v5 = *(v3 + 5);
  if (*(this + 4))
  {
    if (v5 != v4)
    {
      v6 = *(this + 3);
      v79 = *(this + 2);
      v80 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v81 = v7;
        *&v81[16] = v7;
        v82 = v7;
        v4 = *(this + 4);
        v93 = v2;
        v94 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v98 = v2;
        v99 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v95 = 0x100000008;
        memset(&v96, 0, sizeof(v96));
        *&v97 = v2;
        *(&v97 + 1) = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v81 = v20;
        *&v81[16] = v20;
        v82 = v20;
        v93 = v2;
        v94 = 0;
        v98 = v2;
        v99 = 0;
        v95 = 0x100000008;
        memset(&v96, 0, sizeof(v96));
        v97 = v2;
      }

      v101[0] = 0;
      v101[1] = 0;
      v102 = 0;
      v106 = v4;
      v107 = 0;
      v108 = "Deserialize";
      v109 = 0xAAAAAAAAAAAAAAAALL;
      v111 = 0xAAAAAAAAAAAAAAAALL;
      v112 = 12678;
      v110 = mipc::asString(0x100000008);
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v131 = v21;
      v132 = v21;
      v130 = v21;
      v129 = v21;
      v128 = v21;
      v127 = v21;
      v126 = v21;
      v125 = v21;
      v124 = v21;
      v123 = v21;
      v122 = v21;
      v121 = v21;
      v120 = v21;
      v119 = v21;
      v118 = v21;
      v117 = v21;
      v113 = &v117;
      v114 = xmmword_297DCA3A0;
      v115 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v116 = 0;
      __src = &v117;
      v103 = 3;
      v104 = &v106;
      v105 = 12678;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v113, "[MIPC] Msg ({:#x}): {} error ({})", 33, &v103);
      v22 = *(&v114 + 1);
      if (*(&v114 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v23 = __src;
      if (*(&v114 + 1) >= 0x17uLL)
      {
        if ((*(&v114 + 1) | 7) == 0x17)
        {
          v25 = 25;
        }

        else
        {
          v25 = (*(&v114 + 1) | 7) + 1;
        }

        v24 = operator new(v25);
        *&__dst[8] = v22;
        *&__dst[16] = v25 | 0x8000000000000000;
        *__dst = v24;
      }

      else
      {
        __dst[23] = BYTE8(v114);
        v24 = __dst;
        if (!*(&v114 + 1))
        {
LABEL_36:
          v24[v22] = 0;
          if (__src != &v117)
          {
            operator delete(__src);
          }

          if (SHIBYTE(v102) < 0)
          {
            operator delete(v101[0]);
          }

          v102 = *&__dst[16];
          *v101 = *__dst;
          if (__dst[23] >= 0)
          {
            v26 = v101;
          }

          else
          {
            v26 = v101[0];
          }

          if (__dst[23] >= 0)
          {
            v27 = HIBYTE(*&__dst[16]);
          }

          else
          {
            v27 = v101[1];
          }

          std::string::append(&v96, v26, v27);
          memset(__dst, 170, sizeof(__dst));
          v28 = *(v3 + 5);
          v107 = 0;
          v108 = 6;
          v106 = v28;
          *&v29 = 0xAAAAAAAAAAAAAAAALL;
          *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v131 = v29;
          v132 = v29;
          v130 = v29;
          v129 = v29;
          v128 = v29;
          v127 = v29;
          v126 = v29;
          v125 = v29;
          v124 = v29;
          v123 = v29;
          v122 = v29;
          v121 = v29;
          v120 = v29;
          v119 = v29;
          v118 = v29;
          v117 = v29;
          v113 = &v117;
          v114 = xmmword_297DCA3A0;
          v115 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
          v116 = 0;
          __src = &v117;
          v103 = 1;
          v104 = &v106;
          v105 = 6;
          std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v113, "defined MsgId does not match received MsgId ({:#x})", 51, &v103);
          v30 = *(&v114 + 1);
          if (*(&v114 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v31 = __src;
          if (*(&v114 + 1) >= 0x17uLL)
          {
            if ((*(&v114 + 1) | 7) == 0x17)
            {
              v33 = 25;
            }

            else
            {
              v33 = (*(&v114 + 1) | 7) + 1;
            }

            v32 = operator new(v33);
            *&__dst[8] = v30;
            *&__dst[16] = v33 | 0x8000000000000000;
            *__dst = v32;
          }

          else
          {
            __dst[23] = BYTE8(v114);
            v32 = __dst;
            if (!*(&v114 + 1))
            {
LABEL_55:
              v32[v30] = 0;
              if (__src != &v117)
              {
                operator delete(__src);
              }

              v34 = __dst[23];
              if (__dst[23] >= 0)
              {
                v35 = __dst[23];
              }

              else
              {
                v35 = *&__dst[8];
              }

              if (v35)
              {
                v36 = v35 + 2;
                if (v35 + 2 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v36 <= 0x16)
                {
                  v113 = 0;
                  v114 = 0uLL;
                  v38 = &v113;
                  HIBYTE(v114) = v35 + 2;
                }

                else
                {
                  if ((v36 | 7) == 0x17)
                  {
                    v37 = 25;
                  }

                  else
                  {
                    v37 = (v36 | 7) + 1;
                  }

                  v38 = operator new(v37);
                  *(&v114 + 1) = v37 | 0x8000000000000000;
                  v113 = v38;
                  *&v114 = v35 + 2;
                }

                *v38 = 8250;
                v39 = v38 + 1;
                if (v34 >= 0)
                {
                  v40 = __dst;
                }

                else
                {
                  v40 = *__dst;
                }

                memmove(v39, v40, v35);
                *(v39 + v35) = 0;
                if (v114 >= 0)
                {
                  v41 = &v113;
                }

                else
                {
                  v41 = v113;
                }

                if (v114 >= 0)
                {
                  v42 = HIBYTE(v114);
                }

                else
                {
                  v42 = v114;
                }

                std::string::append(&v96, v41, v42);
                if (SHIBYTE(v114) < 0)
                {
                  operator delete(v113);
                }
              }

              if (v34 < 0)
              {
                operator delete(*__dst);
                if ((SHIBYTE(v102) & 0x80000000) == 0)
                {
LABEL_81:
                  v43 = v99;
                  if (!v99)
                  {
                    goto LABEL_87;
                  }

LABEL_85:
                  if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v43->__on_zero_shared)(v43);
                    std::__shared_weak_count::__release_weak(v43);
                  }

LABEL_87:
                  *&v81[8] = v96;
                  memset(&v96, 0, sizeof(v96));
                  *v81 = v95;
                  v82 = v97;
                  v97 = 0uLL;
                  if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v94->__on_zero_shared)(v94);
                    std::__shared_weak_count::__release_weak(v94);
                  }

                  if (*v81)
                  {
                    std::__memberwise_copy_assign[abi:ne200100]<std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,0ul,1ul,2ul>(this + 32, v81);
                    v44 = mipc::Message::sDeserializeErrHandler;
                    v45 = *(this + 4);
                    v89 = *(this + 4);
                    if (*(this + 63) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v90, *(this + 5), *(this + 6));
                    }

                    else
                    {
                      v90 = *(this + 40);
                    }

                    v46 = *(this + 9);
                    v91 = *(this + 8);
                    v92 = v46;
                    if (v46)
                    {
                      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
                    }

                    v44(v45, &v89);
                  }

                  if (*(&v82 + 1) && !atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (*(**(&v82 + 1) + 16))(*(&v82 + 1));
                    std::__shared_weak_count::__release_weak(*(&v82 + 1));
                  }

                  if ((v81[31] & 0x80000000) != 0)
                  {
                    operator delete(*&v81[8]);
                  }

                  v10 = v80;
                  if (!v80)
                  {
                    goto LABEL_183;
                  }

                  goto LABEL_181;
                }
              }

              else if ((SHIBYTE(v102) & 0x80000000) == 0)
              {
                goto LABEL_81;
              }

              operator delete(v101[0]);
              v43 = v99;
              if (!v99)
              {
                goto LABEL_87;
              }

              goto LABEL_85;
            }
          }

          memmove(v32, v31, v30);
          goto LABEL_55;
        }
      }

      memmove(v24, v23, v22);
      goto LABEL_36;
    }
  }

  else
  {
    *(this + 4) = v5;
  }

  *(this + 6) = bswap32(*(v3 + 6)) >> 16;
  *(this + 10) = *(v3 + 8);
  result = mipc::Message::validateSimId(this);
  if (result)
  {
    v12 = *(v3 + 9);
    if (*(this + 11))
    {
      if ((mipc::Message::validateMsgType(this, v12) & 1) == 0)
      {
        goto LABEL_183;
      }
    }

    else
    {
      *(this + 11) = v12;
    }

    v13 = *(this + 2);
    v14 = v13[1] - *v13 - 16;
    if (v14 == *(v3 + 7))
    {
      result = 1;
      goto LABEL_184;
    }

    v15 = *(this + 3);
    v75 = *(this + 2);
    v76 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = **(this + 2);
      v17 = *(*(this + 2) + 8);
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v77 = v18;
      *&v77[16] = v18;
      v78 = v18;
      v19 = *(this + 4);
      v93 = v13;
      v94 = v15;
      v14 = v17 - v16 - 16;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v98 = v13;
      v99 = v15;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v95 = 0x100000006;
      memset(&v96, 0, sizeof(v96));
      *&v97 = v13;
      *(&v97 + 1) = v15;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *&v47 = 0xAAAAAAAAAAAAAAAALL;
      *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v77 = v47;
      *&v77[16] = v47;
      v78 = v47;
      v19 = *(this + 4);
      v93 = v13;
      v94 = 0;
      v98 = v13;
      v99 = 0;
      v95 = 0x100000006;
      memset(&v96, 0, sizeof(v96));
      v97 = v13;
    }

    v101[0] = 0;
    v101[1] = 0;
    v102 = 0;
    v48 = mipc::asString(0x100000006);
    v106 = v19;
    v107 = 0;
    v108 = "Deserialize";
    v109 = 0xAAAAAAAAAAAAAAAALL;
    v111 = 0xAAAAAAAAAAAAAAAALL;
    v112 = 12678;
    v110 = v48;
    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v131 = v49;
    v132 = v49;
    v130 = v49;
    v129 = v49;
    v128 = v49;
    v127 = v49;
    v126 = v49;
    v125 = v49;
    v124 = v49;
    v123 = v49;
    v122 = v49;
    v121 = v49;
    v120 = v49;
    v119 = v49;
    v118 = v49;
    v117 = v49;
    v113 = &v117;
    v114 = xmmword_297DCA3A0;
    v115 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v116 = 0;
    __src = &v117;
    v103 = 3;
    v104 = &v106;
    v105 = 12678;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v113, "[MIPC] Msg ({:#x}): {} error ({})", 33, &v103);
    v50 = *(&v114 + 1);
    if (*(&v114 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v51 = __src;
    if (*(&v114 + 1) >= 0x17uLL)
    {
      if ((*(&v114 + 1) | 7) == 0x17)
      {
        v53 = 25;
      }

      else
      {
        v53 = (*(&v114 + 1) | 7) + 1;
      }

      v52 = operator new(v53);
      *&__dst[8] = v50;
      *&__dst[16] = v53 | 0x8000000000000000;
      *__dst = v52;
    }

    else
    {
      __dst[23] = BYTE8(v114);
      v52 = __dst;
      if (!*(&v114 + 1))
      {
LABEL_114:
        v52[v50] = 0;
        if (__src != &v117)
        {
          operator delete(__src);
        }

        if (SHIBYTE(v102) < 0)
        {
          operator delete(v101[0]);
        }

        v102 = *&__dst[16];
        *v101 = *__dst;
        if (__dst[23] >= 0)
        {
          v54 = v101;
        }

        else
        {
          v54 = v101[0];
        }

        if (__dst[23] >= 0)
        {
          v55 = HIBYTE(*&__dst[16]);
        }

        else
        {
          v55 = v101[1];
        }

        std::string::append(&v96, v54, v55);
        memset(__dst, 170, sizeof(__dst));
        v106 = *(v3 + 7);
        v107 = 0;
        v109 = 0;
        v110 = 230;
        v108 = v14;
        *&v56 = 0xAAAAAAAAAAAAAAAALL;
        *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v131 = v56;
        v132 = v56;
        v130 = v56;
        v129 = v56;
        v128 = v56;
        v127 = v56;
        v126 = v56;
        v125 = v56;
        v124 = v56;
        v123 = v56;
        v122 = v56;
        v121 = v56;
        v120 = v56;
        v119 = v56;
        v118 = v56;
        v117 = v56;
        v113 = &v117;
        v114 = xmmword_297DCA3A0;
        v115 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v116 = 0;
        __src = &v117;
        v103 = 2;
        v104 = &v106;
        v105 = 230;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v113, "msg hdr len ({}) does not match remaining buf size ({})", 55, &v103);
        v57 = *(&v114 + 1);
        if (*(&v114 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v58 = __src;
        if (*(&v114 + 1) >= 0x17uLL)
        {
          if ((*(&v114 + 1) | 7) == 0x17)
          {
            v60 = 25;
          }

          else
          {
            v60 = (*(&v114 + 1) | 7) + 1;
          }

          v59 = operator new(v60);
          *&__dst[8] = v57;
          *&__dst[16] = v60 | 0x8000000000000000;
          *__dst = v59;
        }

        else
        {
          __dst[23] = BYTE8(v114);
          v59 = __dst;
          if (!*(&v114 + 1))
          {
LABEL_133:
            v59[v57] = 0;
            if (__src != &v117)
            {
              operator delete(__src);
            }

            v61 = __dst[23];
            if (__dst[23] >= 0)
            {
              v62 = __dst[23];
            }

            else
            {
              v62 = *&__dst[8];
            }

            if (v62)
            {
              v63 = v62 + 2;
              if (v62 + 2 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v63 <= 0x16)
              {
                v113 = 0;
                v114 = 0uLL;
                v65 = &v113;
                HIBYTE(v114) = v62 + 2;
              }

              else
              {
                if ((v63 | 7) == 0x17)
                {
                  v64 = 25;
                }

                else
                {
                  v64 = (v63 | 7) + 1;
                }

                v65 = operator new(v64);
                *(&v114 + 1) = v64 | 0x8000000000000000;
                v113 = v65;
                *&v114 = v62 + 2;
              }

              *v65 = 8250;
              v66 = v65 + 1;
              if (v61 >= 0)
              {
                v67 = __dst;
              }

              else
              {
                v67 = *__dst;
              }

              memmove(v66, v67, v62);
              *(v66 + v62) = 0;
              if (v114 >= 0)
              {
                v68 = &v113;
              }

              else
              {
                v68 = v113;
              }

              if (v114 >= 0)
              {
                v69 = HIBYTE(v114);
              }

              else
              {
                v69 = v114;
              }

              std::string::append(&v96, v68, v69);
              if (SHIBYTE(v114) < 0)
              {
                operator delete(v113);
              }
            }

            if (v61 < 0)
            {
              operator delete(*__dst);
              if ((SHIBYTE(v102) & 0x80000000) == 0)
              {
LABEL_159:
                v70 = v99;
                if (!v99)
                {
                  goto LABEL_165;
                }

LABEL_163:
                if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v70->__on_zero_shared)(v70);
                  std::__shared_weak_count::__release_weak(v70);
                }

LABEL_165:
                *&v77[8] = v96;
                memset(&v96, 0, sizeof(v96));
                *v77 = v95;
                v78 = v97;
                v97 = 0uLL;
                if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v94->__on_zero_shared)(v94);
                  std::__shared_weak_count::__release_weak(v94);
                }

                if (*v77)
                {
                  std::__memberwise_copy_assign[abi:ne200100]<std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,0ul,1ul,2ul>(this + 32, v77);
                  v71 = mipc::Message::sDeserializeErrHandler;
                  v72 = *(this + 4);
                  v89 = *(this + 4);
                  if (*(this + 63) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v90, *(this + 5), *(this + 6));
                  }

                  else
                  {
                    v90 = *(this + 40);
                  }

                  v73 = *(this + 9);
                  v91 = *(this + 8);
                  v92 = v73;
                  if (v73)
                  {
                    atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
                  }

                  v71(v72, &v89);
                }

                if (*(&v78 + 1) && !atomic_fetch_add((*(&v78 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (*(**(&v78 + 1) + 16))(*(&v78 + 1));
                  std::__shared_weak_count::__release_weak(*(&v78 + 1));
                }

                if ((v77[31] & 0x80000000) != 0)
                {
                  operator delete(*&v77[8]);
                }

                v10 = v76;
                if (!v76)
                {
                  goto LABEL_183;
                }

                goto LABEL_181;
              }
            }

            else if ((SHIBYTE(v102) & 0x80000000) == 0)
            {
              goto LABEL_159;
            }

            operator delete(v101[0]);
            v70 = v99;
            if (!v99)
            {
              goto LABEL_165;
            }

            goto LABEL_163;
          }
        }

        memmove(v59, v58, v57);
        goto LABEL_133;
      }
    }

    memmove(v52, v51, v50);
    goto LABEL_114;
  }

LABEL_184:
  v74 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297CEDAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mipc::Error::~Error(&a38);
  mipc::Error::~Error(&a15);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_297CEDAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  if (v72 < 0)
  {
    operator delete(a54);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  mipc::Error::~Error(&a46);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a52);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a44);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_297CEDBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mipc::Error::~Error(&a38);
  mipc::Error::~Error(&a23);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_297CEDBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  if (v72 < 0)
  {
    operator delete(a54);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  mipc::Error::~Error(&a46);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a52);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a44);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t mipc::Message::Message(mipc::Message *this, const unsigned __int8 *a2, size_t a3)
{
  return mipc::Message::Message(this, 0, a2, a3, 0);
}

{
  return mipc::Message::Message(this, 0, a2, a3, 0);
}

uint64_t mipc::Message::Message(uint64_t result, __int16 a2, uint64_t a3, char a4, char a5)
{
  *result = &unk_2A1E85968;
  *(result + 8) = a2;
  *(result + 10) = a4;
  *(result + 11) = a5;
  *(result + 12) = 1878982656;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = *a3;
  if (*(a3 + 31) < 0)
  {
    v7 = result;
    std::string::__init_copy_ctor_external((result + 40), *(a3 + 8), *(a3 + 16));
    result = v7;
  }

  else
  {
    v6 = *(a3 + 8);
    *(result + 56) = *(a3 + 24);
    *(result + 40) = v6;
  }

  v8 = *(a3 + 40);
  *(result + 64) = *(a3 + 32);
  *(result + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 80) = 0;
  return result;
}

{
  *result = &unk_2A1E85968;
  *(result + 8) = a2;
  *(result + 10) = a4;
  *(result + 11) = a5;
  *(result + 12) = 1878982656;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = *a3;
  if (*(a3 + 31) < 0)
  {
    v7 = result;
    std::string::__init_copy_ctor_external((result + 40), *(a3 + 8), *(a3 + 16));
    result = v7;
  }

  else
  {
    v6 = *(a3 + 8);
    *(result + 56) = *(a3 + 24);
    *(result + 40) = v6;
  }

  v8 = *(a3 + 40);
  *(result + 64) = *(a3 + 32);
  *(result + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 80) = 0;
  return result;
}

void mipc::Message::~Message(mipc::Message *this)
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

uint64_t mipc::Message::validateSimId(mipc::Message *this)
{
  v2 = *(this + 10);
  result = 1;
  if (v2 <= 3)
  {
    if (v2 < 3)
    {
      return result;
    }
  }

  else
  {
    v4 = (v2 - 4) > 0x3C || ((1 << (v2 - 4)) & 0x1000000010001011) == 0;
    if (!v4 || v2 == 128 || v2 == 255)
    {
      return result;
    }
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(v9, this, 0x10000000CLL, v5, v6, "", 0);
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  return 0;
}

uint64_t mipc::Message::validateMsgType(uint64_t a1, unsigned int a2)
{
  v93 = *MEMORY[0x29EDCA608];
  if (a2 - 1 >= 3)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v47 = v6;
    v48 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(v49, a1, 0x10000000DLL, v6, v7, "", 0);
    v8 = v52;
    if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      if ((v51 & 0x80000000) == 0)
      {
LABEL_10:
        v9 = v48;
        if (v48)
        {
LABEL_99:
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }
        }

LABEL_101:
        result = 0;
        goto LABEL_102;
      }
    }

    else if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(__p);
    goto LABEL_10;
  }

  v4 = *(a1 + 11);
  if (v4 != a2)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v44 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *(a1 + 11);
    }

    if (v4 > 3)
    {
      v12 = "Undefined";
    }

    else
    {
      v12 = (&off_29EE84640)[v4];
    }

    v13 = (&off_29EE84628)[a2 - 1];
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v45 = v14;
    *&v45[16] = v14;
    v46 = v14;
    v15 = *(a1 + 8);
    v53 = v10;
    v54 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v59 = v11;
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      memset(&v56, 0, sizeof(v56));
      *&v57 = v10;
      *(&v57 + 1) = v11;
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v59 = 0;
      memset(&v56, 0, sizeof(v56));
      v57 = v10;
    }

    v58 = v10;
    v55 = 0x10000000DLL;
    v61[0] = 0;
    v61[1] = 0;
    v62 = 0;
    v16 = mipc::asString(0x10000000DLL);
    v66 = v15;
    v67 = 0;
    v68 = "Deserialize";
    v69 = 0xAAAAAAAAAAAAAAAALL;
    v71 = 0xAAAAAAAAAAAAAAAALL;
    v72 = 12678;
    v70 = v16;
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v90 = v17;
    v91 = v17;
    v89 = v17;
    v88 = v17;
    v87 = v17;
    v86 = v17;
    v85 = v17;
    v84 = v17;
    v83 = v17;
    v82 = v17;
    v81 = v17;
    v80 = v17;
    v79 = v17;
    v78 = v17;
    v77 = v17;
    v76 = v17;
    v73 = &v76;
    *&v74.__r_.__value_.__l.__data_ = xmmword_297DCA3A0;
    v74.__r_.__value_.__r.__words[2] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v75 = 0;
    __src = &v76;
    v63 = 3;
    v64 = &v66;
    v65 = 12678;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v73, "[MIPC] Msg ({:#x}): {} error ({})", 33, &v63);
    size = v74.__r_.__value_.__l.__size_;
    if (v74.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = __src;
    if (v74.__r_.__value_.__l.__size_ >= 0x17)
    {
      v21 = v12;
      if ((v74.__r_.__value_.__l.__size_ | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v74.__r_.__value_.__l.__size_ | 7) + 1;
      }

      v20 = operator new(v22);
      *&__dst[8] = size;
      *&__dst[16] = v22 | 0x8000000000000000;
      *__dst = v20;
      v12 = v21;
    }

    else
    {
      __dst[23] = v74.__r_.__value_.__s.__data_[8];
      v20 = __dst;
      if (!v74.__r_.__value_.__l.__size_)
      {
LABEL_31:
        v20[size] = 0;
        if (__src != &v76)
        {
          operator delete(__src);
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(v61[0]);
        }

        v62 = *&__dst[16];
        *v61 = *__dst;
        if (__dst[23] >= 0)
        {
          v23 = v61;
        }

        else
        {
          v23 = *__dst;
        }

        if (__dst[23] >= 0)
        {
          v24 = __dst[23];
        }

        else
        {
          v24 = *&__dst[8];
        }

        std::string::append(&v56, v23, v24);
        memset(__dst, 170, sizeof(__dst));
        v66 = v12;
        v67 = 0xAAAAAAAAAAAAAAAALL;
        v68 = v13;
        v69 = 0xAAAAAAAAAAAAAAAALL;
        v71 = 0;
        v72 = 6540;
        v70 = a2;
        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v90 = v25;
        v91 = v25;
        v89 = v25;
        v88 = v25;
        v87 = v25;
        v86 = v25;
        v85 = v25;
        v84 = v25;
        v83 = v25;
        v82 = v25;
        v81 = v25;
        v80 = v25;
        v79 = v25;
        v78 = v25;
        v77 = v25;
        v76 = v25;
        v73 = &v76;
        *&v74.__r_.__value_.__l.__data_ = xmmword_297DCA3A0;
        v74.__r_.__value_.__r.__words[2] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v75 = 0;
        __src = &v76;
        v63 = 3;
        v64 = &v66;
        v65 = 6540;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v73, "defined MsgType ({}) does not match received MsgType ({} - {:#x})", 65, &v63);
        v26 = v74.__r_.__value_.__l.__size_;
        if (v74.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v27 = __src;
        if (v74.__r_.__value_.__l.__size_ >= 0x17)
        {
          if ((v74.__r_.__value_.__l.__size_ | 7) == 0x17)
          {
            v29 = 25;
          }

          else
          {
            v29 = (v74.__r_.__value_.__l.__size_ | 7) + 1;
          }

          v28 = operator new(v29);
          *&__dst[8] = v26;
          *&__dst[16] = v29 | 0x8000000000000000;
          *__dst = v28;
        }

        else
        {
          __dst[23] = v74.__r_.__value_.__s.__data_[8];
          v28 = __dst;
          if (!v74.__r_.__value_.__l.__size_)
          {
LABEL_50:
            v28[v26] = 0;
            if (__src != &v76)
            {
              operator delete(__src);
            }

            v30 = __dst[23];
            if (__dst[23] >= 0)
            {
              v31 = __dst[23];
            }

            else
            {
              v31 = *&__dst[8];
            }

            if (!v31)
            {
              goto LABEL_73;
            }

            v32 = v31 + 2;
            if (v31 + 2 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v32 <= 0x16)
            {
              *&v74.__r_.__value_.__l.__data_ = 0uLL;
              v73 = 0;
              v34 = &v73;
              v74.__r_.__value_.__s.__data_[15] = v31 + 2;
            }

            else
            {
              v33 = (v32 | 7) == 0x17 ? 25 : (v32 | 7) + 1;
              v34 = operator new(v33);
              v74.__r_.__value_.__r.__words[0] = v31 + 2;
              v74.__r_.__value_.__l.__size_ = v33 | 0x8000000000000000;
              v73 = v34;
            }

            *v34 = 8250;
            v35 = v34 + 1;
            v36 = v30 >= 0 ? __dst : *__dst;
            memmove(v35, v36, v31);
            *(v35 + v31) = 0;
            v37 = v74.__r_.__value_.__s.__data_[15] >= 0 ? &v73 : v73;
            v38 = v74.__r_.__value_.__s.__data_[15] >= 0 ? v74.__r_.__value_.__s.__data_[15] : v74.__r_.__value_.__r.__words[0];
            std::string::append(&v56, v37, v38);
            if (v74.__r_.__value_.__s.__data_[15] < 0)
            {
              operator delete(v73);
              if ((v30 & 0x80000000) == 0)
              {
LABEL_74:
                if ((SHIBYTE(v62) & 0x80000000) == 0)
                {
                  goto LABEL_75;
                }

                goto LABEL_79;
              }
            }

            else
            {
LABEL_73:
              if ((v30 & 0x80000000) == 0)
              {
                goto LABEL_74;
              }
            }

            operator delete(*__dst);
            if ((SHIBYTE(v62) & 0x80000000) == 0)
            {
LABEL_75:
              v39 = v59;
              if (!v59)
              {
                goto LABEL_82;
              }

LABEL_80:
              if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v39->__on_zero_shared)(v39);
                std::__shared_weak_count::__release_weak(v39);
              }

LABEL_82:
              *&v45[8] = v56;
              memset(&v56, 0, sizeof(v56));
              *v45 = v55;
              v46 = v57;
              v57 = 0uLL;
              if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v54->__on_zero_shared)(v54);
                std::__shared_weak_count::__release_weak(v54);
                if (*v45)
                {
LABEL_85:
                  std::__memberwise_copy_assign[abi:ne200100]<std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,0ul,1ul,2ul>(a1 + 32, v45);
                  v40 = mipc::Message::sDeserializeErrHandler;
                  v41 = *(a1 + 8);
                  v73 = *(a1 + 32);
                  if (*(a1 + 63) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v74, *(a1 + 40), *(a1 + 48));
                  }

                  else
                  {
                    v74 = *(a1 + 40);
                  }

                  v42 = *(a1 + 72);
                  v75 = *(a1 + 64);
                  *&v76 = v42;
                  if (v42)
                  {
                    atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
                  }

                  v40(v41, &v73);
                }
              }

              else if (*v45)
              {
                goto LABEL_85;
              }

              if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(**(&v46 + 1) + 16))(*(&v46 + 1));
                std::__shared_weak_count::__release_weak(*(&v46 + 1));
              }

              if ((v45[31] & 0x80000000) != 0)
              {
                operator delete(*&v45[8]);
              }

              v9 = v44;
              if (v44)
              {
                goto LABEL_99;
              }

              goto LABEL_101;
            }

LABEL_79:
            operator delete(v61[0]);
            v39 = v59;
            if (!v59)
            {
              goto LABEL_82;
            }

            goto LABEL_80;
          }
        }

        memmove(v28, v27, v26);
        goto LABEL_50;
      }
    }

    memmove(v20, v19, size);
    goto LABEL_31;
  }

  result = 1;
LABEL_102:
  v43 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297CEEB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  mipc::Error::~Error(&a60);
  mipc::Error::~Error(&a17);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void sub_297CEEB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  if (v68 < 0)
  {
    operator delete(a42);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  mipc::Error::~Error(&a34);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a40);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a32);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void sub_297CEEC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const char *mipc::asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Undefined";
  }

  else
  {
    return (&off_29EE84640)[a1];
  }
}

double mipc::Message::preSerialize@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  *(a1 + 14) = 28671;
  *a2 += 16;
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  return result;
}

double mipc::Message::postSerialize@<D0>(_WORD *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 > 0xF)
  {
    if (v4 - 65552 > 0xFFFFFFFFFFFEFFFFLL)
    {
      *v3 = 609491332;
      *(v3 + 8) = a1[5];
      *(v3 + 10) = a1[4];
      *(v3 + 12) = bswap32(a1[6]) >> 16;
      *(v3 + 14) = v4 - 16;
      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
      a3[2] = 0u;
    }

    else
    {
      mipc::Message::handle<(mipc::Error::Type)1>(a3, a1, 0x100000007, 0, 0, "exceeded max message size after serialization", 45);
    }
  }

  else
  {
    mipc::Message::handle<(mipc::Error::Type)1>(a3, a1, 0x100000002, 0, 0, "", 0);
  }

  return result;
}

void sub_297CEED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mipc::Message::handle<(mipc::Error::Type)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, unsigned __int8 *a6, uint64_t a7)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 16) = v10;
  *(a1 + 32) = v10;
  *a1 = v10;
  v11 = *(a2 + 8);
  v21 = a4;
  v22 = a5;
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
    v27 = a4;
    v28 = a5;
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v27 = a4;
    v28 = 0;
  }

  mipc::Error::Error<>(&v23, 1u, a3, v11, 0x8000u, &v27, a6, a7);
  v12 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v22;
  *a1 = v23;
  *(a1 + 8) = v24;
  *(a1 + 24) = v25;
  v24 = 0uLL;
  *(a1 + 32) = v26;
  v25 = 0;
  v26 = 0uLL;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (*a1)
    {
LABEL_10:
      std::__memberwise_copy_assign[abi:ne200100]<std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,std::tuple<mipc::ErrorCode,std::string,std::shared_ptr<std::vector<unsigned char>>>,0ul,1ul,2ul>(a2 + 32, a1);
      v14 = mipc::Message::sSerializeErrHandler;
      v15 = *(a2 + 8);
      v17 = *(a2 + 32);
      if (*(a2 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a2 + 40), *(a2 + 48));
      }

      else
      {
        __p = *(a2 + 40);
      }

      v16 = *(a2 + 72);
      v19 = *(a2 + 64);
      v20 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v14(v15, &v17);
    }
  }

  else if (*a1)
  {
    goto LABEL_10;
  }
}

void sub_297CEEFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::Error::~Error(v9);
  _Unwind_Resume(a1);
}

void sub_297CEF00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v7 - 48);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double mipc::Message::populateHdr@<D0>(_WORD *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *a2;
  *v3 = 609491332;
  *(v3 + 8) = a1[5];
  *(v3 + 10) = a1[4];
  *(v3 + 12) = bswap32(a1[6]) >> 16;
  v4 = (*(a2 + 2) - v3 - 16);
  *(v3 + 14) = *(a2 + 4) - v3 - 16;
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  return result;
}

double mipc::Message::preDeserialize@<D0>(mipc::Message *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 4);
  if (HIDWORD(v2))
  {
    *a2 = v2;
    if (*(this + 63) < 0)
    {
      std::string::__init_copy_ctor_external((a2 + 8), *(this + 5), *(this + 6));
      v4 = *(this + 9);
      *(a2 + 32) = *(this + 8);
      *(a2 + 40) = v4;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *(this + 40);
      *(a2 + 8) = v3;
      *(a2 + 24) = *(this + 7);
      v4 = *(this + 9);
      *(a2 + 32) = *(this + 8);
      *(a2 + 40) = v4;
      if (v4)
      {
LABEL_4:
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }
    }
  }

  else
  {
    *&v3 = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return *&v3;
}

void mipc::Message::getNextTLV(uint64_t a1@<X0>, unsigned __int16 **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = v4 - *a2;
  if (v6 <= 3)
  {
    v7 = *(a1 + 8);
    v93 = 0;
    v94 = 0;
    mipc::Error::Error<>(&v88, 0, 0x100000005, v7, 0x8000u, &v93, "", 0);
    v8 = v94;
    if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      *a3 = v88;
      v9 = (a3 + 8);
      if ((SHIBYTE(v90) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *a3 = v88;
      v9 = (a3 + 8);
      if ((SHIBYTE(v90) & 0x80000000) == 0)
      {
LABEL_5:
        *&v9->__r_.__value_.__l.__data_ = v89;
        v9->__r_.__value_.__r.__words[2] = v90;
LABEL_24:
        v29 = v92;
        *(a3 + 32) = v91;
        *(a3 + 40) = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v30 = v92;
          *(a3 + 48) = 0;
          *(a3 + 56) = 0;
          if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v30->__on_zero_shared)(v30);
            std::__shared_weak_count::__release_weak(v30);
          }
        }

        else
        {
          *(a3 + 48) = 0;
          *(a3 + 56) = 0;
        }

        if (SHIBYTE(v90) < 0)
        {
          operator delete(v89);
        }

        return;
      }
    }

    std::string::__init_copy_ctor_external(v9, v89, *(&v89 + 1));
    goto LABEL_24;
  }

  v12 = *v5;
  v11 = v5 + 1;
  v10 = v12;
  if (v6 <= 2)
  {
    v13 = a2[1];
  }

  else
  {
    v13 = v11;
  }

  v19 = v4 - v13 <= 2;
  v16 = *v13;
  v15 = v13 + 1;
  v14 = v16;
  if (v19)
  {
    v17 = a2[1];
  }

  else
  {
    v17 = v15;
  }

  *a2 = v17;
  if ((v10 & 0x8000) != 0)
  {
    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    v86 = v24;
    v87 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v94 = v25;
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v94 = 0;
    }

    v93 = v24;
    mipc::Error::Error<>(&v88, 2u, 0x100000006, v23, v10, &v93, "TlvT greater than max", 21);
    v33 = v94;
    if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }

    *a3 = v88;
    v34 = (a3 + 8);
    if (SHIBYTE(v90) < 0)
    {
      std::string::__init_copy_ctor_external(v34, v89, *(&v89 + 1));
    }

    else
    {
      *&v34->__r_.__value_.__l.__data_ = v89;
      *(a3 + 24) = v90;
    }

    v35 = v92;
    *(a3 + 32) = v91;
    *(a3 + 40) = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = v92;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
      }
    }

    else
    {
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
    }

    if (SHIBYTE(v90) < 0)
    {
      operator delete(v89);
    }

    v37 = v87;
    if (v87)
    {
      goto LABEL_91;
    }
  }

  else
  {
    if (v14)
    {
      v18 = (((v14 + 11) & 0xFFF8) - 4) & 0xFFFC;
      v19 = v4 - v17 <= v18;
      if (v4 - v17 < v18)
      {
        v20 = *(a1 + 8);
        v21 = *(a1 + 16);
        v22 = *(a1 + 24);
        v74 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          v94 = v22;
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v94 = 0;
        }

        v93 = v21;
        mipc::Error::Error<>(&v88, 2u, 0x100000005, v20, v10, &v93, "insufficient buf for 8-byte aligned TlvL", 40);
        v42 = v94;
        if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v42->__on_zero_shared)(v42);
          std::__shared_weak_count::__release_weak(v42);
        }

        *a3 = v88;
        v43 = (a3 + 8);
        if (SHIBYTE(v90) < 0)
        {
          std::string::__init_copy_ctor_external(v43, v89, *(&v89 + 1));
        }

        else
        {
          *&v43->__r_.__value_.__l.__data_ = v89;
          *(a3 + 24) = v90;
        }

        v44 = v92;
        *(a3 + 32) = v91;
        *(a3 + 40) = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          v45 = v92;
          *(a3 + 48) = 0;
          *(a3 + 56) = 0;
          if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v45->__on_zero_shared)(v45);
            std::__shared_weak_count::__release_weak(v45);
          }
        }

        else
        {
          *(a3 + 48) = 0;
          *(a3 + 56) = 0;
        }

        if (SHIBYTE(v90) < 0)
        {
          operator delete(v89);
        }

        v37 = v74;
        if (!v74)
        {
          return;
        }

LABEL_91:
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        return;
      }

      v31 = v17 + v18;
      if (!v19)
      {
        v4 = v31;
      }

      *a2 = v4;
      v32 = v17;
LABEL_35:
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 48) = v10;
      *(a3 + 50) = v14;
      *(a3 + 56) = v32;
      return;
    }

    if ((v4 - v17) > 0xB)
    {
      v32 = v17 + 6;
      if (v4 - v17 <= 12)
      {
        v32 = v4;
      }

      *a2 = v32;
      v38 = *(v17 + 2);
      v83 = v38;
      if (((v38 - 28672) >> 8) > 0x90u)
      {
        if (v38 < 0x10000)
        {
          LOWORD(v14) = 0;
          goto LABEL_35;
        }

        LOWORD(v14) = 0;
        v50 = HIWORD(v38);
        v51 = v32;
        while (1)
        {
          v52 = v4 - v51;
          if ((v4 - v51) < 8)
          {
            break;
          }

          v55 = *v51;
          v53 = v51 + 2;
          v54 = v55;
          if (v52 <= 2)
          {
            v53 = v4;
          }

          v19 = v4 - v53 <= 2;
          v58 = *v53;
          v56 = (v53 + 2);
          v57 = v58;
          if (v19)
          {
            v56 = v4;
          }

          *a2 = v56;
          HIWORD(v80) = v54;
          if (v54 != v38)
          {
            v65 = *(a1 + 8);
            v67 = *(a1 + 16);
            v66 = *(a1 + 24);
            v79[0] = v67;
            v79[1] = v66;
            if (v66)
            {
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            mipc::SdkError<(mipc::Error::Type)2>::SdkError<unsigned short &>(&v88, 0x100000006, v65, v10, v67, v66, "tlv-array index ({:#x}): outside of valid range/not consecutive", 63, &v80 + 1);
            LOWORD(v80) = 0;
            v78 = 0;
            v93 = 0;
            std::tuple<mipc::Error,unsigned short,unsigned short,std::__wrap_iter<unsigned char *>>::tuple[abi:ne200100]<std::_And,0>(a3, &v88, &v80, &v78, &v93);
            mipc::Error::~Error(&v88);
            std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v79);
            return;
          }

          if (!v57)
          {
            v68 = *(a1 + 8);
            v70 = *(a1 + 16);
            v69 = *(a1 + 24);
            v77[0] = v70;
            v77[1] = v69;
            if (v69)
            {
              atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            mipc::SdkError<(mipc::Error::Type)2>::SdkError<unsigned short &>(&v88, 0x100000013, v68, v10, v70, v69, "tlv-array index ({:#x})", 23, &v80 + 1);
            LOWORD(v80) = 0;
            v78 = 0;
            v93 = 0;
            std::tuple<mipc::Error,unsigned short,unsigned short,std::__wrap_iter<unsigned char *>>::tuple[abi:ne200100]<std::_And,0>(a3, &v88, &v80, &v78, &v93);
            mipc::Error::~Error(&v88);
            std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v77);
            return;
          }

          v59 = (v57 + 11) & 0xFFF8;
          v60 = (v59 - 4) & 0xFFFC;
          v61 = v4 - v56 <= v60;
          if (v4 - v56 < v60)
          {
            v71 = *(a1 + 8);
            v73 = *(a1 + 16);
            v72 = *(a1 + 24);
            v76[0] = v73;
            v76[1] = v72;
            if (v72)
            {
              atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            mipc::SdkError<(mipc::Error::Type)2>::SdkError<unsigned short &>(&v88, 0x100000005, v71, v10, v73, v72, "tlv-array index ({:#x}): insufficient buf for 8-byte aligned TlvL", 65, &v80 + 1);
            LOWORD(v80) = 0;
            v78 = 0;
            v93 = 0;
            std::tuple<mipc::Error,unsigned short,unsigned short,std::__wrap_iter<unsigned char *>>::tuple[abi:ne200100]<std::_And,0>(a3, &v88, &v80, &v78, &v93);
            mipc::Error::~Error(&v88);
            std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v76);
            return;
          }

          LOWORD(v38) = v38 + 1;
          v51 = v56 + v60;
          if (v61)
          {
            v51 = v4;
          }

          *a2 = v51;
          LOWORD(v14) = v59 + v14;
          LOWORD(v50) = v50 - 1;
          if (!v50)
          {
            goto LABEL_35;
          }
        }

        v82 = v50;
        v62 = *(a1 + 8);
        v64 = *(a1 + 16);
        v63 = *(a1 + 24);
        v75[0] = v64;
        v75[1] = v63;
        if (v63)
        {
          atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        mipc::SdkError<(mipc::Error::Type)2>::SdkError<unsigned short &>(&v88, 0x100000006, v62, v10, v64, v63, "insufficient buf for remaining {} tlv-array indices", 51, &v82);
        v80 = 0;
        v93 = 0;
        std::tuple<mipc::Error,unsigned short,unsigned short,std::__wrap_iter<unsigned char *>>::tuple[abi:ne200100]<std::_And,0>(a3, &v88, &v80 + 1, &v80, &v93);
        mipc::Error::~Error(&v88);
        std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v75);
      }

      else
      {
        v39 = *(a1 + 8);
        v41 = *(a1 + 16);
        v40 = *(a1 + 24);
        v81[0] = v41;
        v81[1] = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        mipc::SdkError<(mipc::Error::Type)2>::SdkError<unsigned short &>(&v88, 0x100000006, v39, v10, v41, v40, "arrayBaseT ({:#x}) outside of valid TlvT range", 46, &v83);
        v80 = 0;
        v93 = 0;
        std::tuple<mipc::Error,unsigned short,unsigned short,std::__wrap_iter<unsigned char *>>::tuple[abi:ne200100]<std::_And,0>(a3, &v88, &v80 + 1, &v80, &v93);
        mipc::Error::~Error(&v88);
        std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](v81);
      }
    }

    else
    {
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v28 = *(a1 + 24);
      v84 = v27;
      v85 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        v94 = v28;
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v94 = 0;
      }

      v93 = v27;
      mipc::Error::Error<>(&v88, 2u, 0x100000006, v26, v10, &v93, "tlv-array but insufficient buf for array header", 47);
      v46 = v94;
      if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v46->__on_zero_shared)(v46);
        std::__shared_weak_count::__release_weak(v46);
      }

      *a3 = v88;
      v47 = (a3 + 8);
      if (SHIBYTE(v90) < 0)
      {
        std::string::__init_copy_ctor_external(v47, v89, *(&v89 + 1));
      }

      else
      {
        *&v47->__r_.__value_.__l.__data_ = v89;
        *(a3 + 24) = v90;
      }

      v48 = v92;
      *(a3 + 32) = v91;
      *(a3 + 40) = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        v49 = v92;
        *(a3 + 48) = 0;
        *(a3 + 56) = 0;
        if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }
      }

      else
      {
        *(a3 + 48) = 0;
        *(a3 + 56) = 0;
      }

      if (SHIBYTE(v90) < 0)
      {
        operator delete(v89);
      }

      v37 = v85;
      if (v85)
      {
        goto LABEL_91;
      }
    }
  }
}