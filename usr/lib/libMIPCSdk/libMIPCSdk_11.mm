void sub_297AE8878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mipc::Error::~Error(&a19);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t mipc::dale_cps::Apacs_Data_Req::getSize(int64x2_t *this)
{
  v1 = this[5].i64[1];
  v2 = this[6].i64[0];
  if (v1 == v2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 1472 * ((v2 - v1 - 1468) / 0x5BCuLL) + 1504;
  }

  v4 = vdupq_n_s64(8uLL);
  return vaddvq_s64(vaddq_s64(vbicq_s8(v4, vceqzq_s64(this[7])), vbicq_s8(v4, vceqzq_s64(this[8])))) + v3;
}

mipc::dale_cps::Apacs_Data_Cnf *mipc::dale_cps::Apacs_Data_Cnf::Apacs_Data_Cnf(mipc::dale_cps::Apacs_Data_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62223, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E69798;
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

void sub_297AE8AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Apacs_Data_Cnf::deserialize@<D0>(mipc::dale_cps::Apacs_Data_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Apacs_Data_Cnf::Apacs_Data_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62223, &v14, a3, 2);
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
  *a1 = &unk_2A1E6AB78;
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
  *a1 = &unk_2A1E69798;
  return a1;
}

void sub_297AE8DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Apacs_Data_Cnf::~Apacs_Data_Cnf(mipc::dale_cps::Apacs_Data_Cnf *this)
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

uint64_t mipc::dale_cps::Apacs_Data_Cnf::getSize(mipc::dale_cps::Apacs_Data_Cnf *this)
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

double mipc::dale_cps::Preferred_Plmn_List_Req::Preferred_Plmn_List_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3312;
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
  *a1 = &unk_2A1E697E0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

{
  *(a1 + 8) = -3312;
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
  *a1 = &unk_2A1E697E0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

void mipc::dale_cps::Preferred_Plmn_List_Req::~Preferred_Plmn_List_Req(mipc::dale_cps::Preferred_Plmn_List_Req *this)
{
  *this = &unk_2A1E697E0;
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

  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(this + 13);
    v6 = *(this + 12);
    if (v5 != v4)
    {
      v7 = *(this + 13);
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(this + 12);
    }

    *(this + 13) = v4;
    operator delete(v6);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete(v10);
  }

  *this = &unk_2A1E85968;
  v11 = *(this + 9);
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (*(this + 63) < 0)
  {
LABEL_20:
    operator delete(*(this + 5));
  }

LABEL_21:
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
  mipc::dale_cps::Preferred_Plmn_List_Req::~Preferred_Plmn_List_Req(this);

  operator delete(v1);
}

void mipc::dale_cps::Preferred_Plmn_List_Req::serialize(mipc::dale_cps::Preferred_Plmn_List_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 88);
  v4 = *(this + 11);
  if (v4)
  {
    v6 = *(v4 + 23);
    v7 = *(v4 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v8 = __CFADD__(v7 - 65531, 0x10000);
    v9 = ((v7 + 12) & 0xFFF8) + 16;
    if (!v8)
    {
      v9 = 16;
    }

    v10 = *(this + 6);
    v11 = *(this + 13);
    v12 = *(this + 12);
    if (v12 == v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 16;
    v13 = *(this + 6);
    v11 = *(this + 13);
    v12 = *(this + 12);
    if (v12 == v11)
    {
      goto LABEL_13;
    }
  }

  v14 = 16;
  while (1)
  {
    v15 = v12[1] - *v12;
    if ((v15 + 4) >> 16)
    {
      break;
    }

    v14 += (v15 + 11) & 0xFFF8;
    v12 += 3;
    if (v12 == v11)
    {
      goto LABEL_14;
    }
  }

LABEL_13:
  v14 = 0;
LABEL_14:
  v16 = v14 + v9 + 8 * (*(this + 15) != 0);
  v17 = *(this + 16) != 0;
  v78[1] = 0;
  v79 = 0;
  v18 = v16 + 8 * v17;
  v78[0] = 0;
  if (v18)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v19 = operator new(v16 + 8 * v17);
    v78[0] = v19;
    v79 = &v19[v18];
    bzero(v19, v18);
    v78[1] = &v19[v18];
  }

  else
  {
    v19 = 0;
  }

  v77 = v19;
  v76 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v71, this, &v77);
  v20 = v74;
  *&__p[1] = *v72;
  __p[3] = v73;
  __p[0] = v71;
  v76 = v74;
  if (v71)
  {
    *a2 = v71;
    *(a2 + 8) = *&__p[1];
    v21 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v21;
    *(a2 + 32) = v20;
LABEL_126:
    *(a2 + 48) = 1;
    goto LABEL_127;
  }

  mipc::Message::serializeTlv<mipc::mipc_string_t<20ul,false>,true>(this, v5, 0x100u, &v77, &v71);
  __p[0] = v71;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v72;
  __p[3] = v73;
  HIBYTE(v73) = 0;
  LOBYTE(v72[0]) = 0;
  v22 = v74;
  v74 = 0uLL;
  v76 = v22;
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v20 + 1) + 16))(*(&v20 + 1));
    std::__shared_weak_count::__release_weak(*(&v20 + 1));
    v23 = *(&v74 + 1);
    v24 = __p[0];
    if (!*(&v74 + 1))
    {
LABEL_26:
      if ((SHIBYTE(v73) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_32:
      operator delete(v72[0]);
      if (v24)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v23 = *(&v74 + 1);
    v24 = __p[0];
    if (!*(&v74 + 1))
    {
      goto LABEL_26;
    }
  }

  if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_26;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if (SHIBYTE(v73) < 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  if (v24)
  {
    goto LABEL_125;
  }

LABEL_33:
  v25 = *(this + 12);
  v26 = *(this + 13);
  if (v25 != v26)
  {
    v27 = 0xAAAAAAAAAAAAAAABLL * (v26 - v25);
    if (v27 > 0x400)
    {
      v28 = 0x100000010;
      goto LABEL_49;
    }

    v29 = *(this + 7) - v27;
    *(this + 7) = v29;
    if (v29 < 0x100u)
    {
      v28 = 0x100000002;
      goto LABEL_49;
    }

    v30 = v29 + 1;
    *v77++ = 257;
    *v77++ = 0;
    *v77 = 0;
    v77 += 2;
    *v77 = 0;
    v77 += 2;
    *v77++ = v29 + 1;
    *v77 = v27;
    v31 = ++v77;
    v32 = *(this + 12);
    if (v32 != *(this + 13))
    {
      while (1)
      {
        v33 = v32[2] - *v32;
        *v31 = v30;
        *++v77 = v33;
        v34 = ++v77;
        v35 = *v32;
        v36 = *(v32 + 1);
        if (*v32 == v36)
        {
          v28 = 0x100000002;
          goto LABEL_48;
        }

        v37 = v36 - v35;
        if ((0x8E38E38E38E38E39 * (v36 - v35)) >> 16)
        {
          break;
        }

        memcpy(v34, v35, v37);
        v38 = v32[2];
        v39 = *v32;
        v32 += 6;
        v31 = (v77 + v37 + (((v38 - v39 + 11) & 0xFFF8) - (v38 - v39) - 4));
        v77 = v31;
        ++v30;
        if (v32 == *(this + 13))
        {
          goto LABEL_37;
        }
      }

      v28 = 0x100000010;
LABEL_48:
      v25 = *(this + 12);
      v26 = *(this + 13);
      goto LABEL_49;
    }

LABEL_37:
    v28 = 0;
    v80 = 0;
    v81 = 0;
    goto LABEL_70;
  }

  if (*(this + 4))
  {
    goto LABEL_37;
  }

  v28 = 0x10000000FLL;
LABEL_49:
  if (v25 == v26)
  {
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v80 = 0xAAAAAAAAAAAAAAAALL;
    v81 = 0xAAAAAAAAAAAAAAAALL;
    v40 = 16;
    while (1)
    {
      v41 = v25[1] - *v25;
      if ((v41 + 4) >> 16)
      {
        break;
      }

      v40 += (v41 + 11) & 0xFFF8;
      v25 += 3;
      if (v25 == v26)
      {
        goto LABEL_56;
      }
    }

    v40 = 0;
LABEL_56:
    v83 = v40;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v83, &v80);
    v42 = v80;
    v43 = *v80;
    v44 = *(this + 12);
    if (v44 != *(this + 13))
    {
      do
      {
        v45 = *v44;
        v46 = *(v44 + 8);
        if (*v44 == v46)
        {
          v83 = 0;
          v84 = 0;
        }

        else
        {
          v83 = 0xAAAAAAAAAAAAAAAALL;
          v84 = 0xAAAAAAAAAAAAAAAALL;
          v82 = v46 - v45;
          std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v82, &v83);
          memcpy(*v83, *v44, *(v44 + 8) - *v44);
          if (v83)
          {
            memcpy(v43, *v83, *(v83 + 8) - *v83);
            v43 += *(v83 + 8) - *v83;
          }

          v47 = v84;
          if (v84 && !atomic_fetch_add((v84 + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v47->__on_zero_shared)(v47);
            std::__shared_weak_count::__release_weak(v47);
          }
        }

        v44 += 24;
      }

      while (v44 != *(this + 13));
      v42 = v80;
    }

    if (v43 != v42[1])
    {
      v48 = v42[1];
      v42[1] = v43;
    }
  }

LABEL_70:
  mipc::Message::handle<(mipc::Error::Type)1>(this, v28, 0x101u, &v80, "", 0, &v71);
  v49 = v81;
  if (v81 && !atomic_fetch_add((v81 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
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
  v50 = v74;
  v74 = 0uLL;
  v51 = *(&v76 + 1);
  v76 = v50;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  v52 = *(&v74 + 1);
  v53 = __p[0];
  if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
    if (!v53)
    {
      goto LABEL_85;
    }

LABEL_125:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v76;
    goto LABEL_126;
  }

  if (v53)
  {
    goto LABEL_125;
  }

LABEL_85:
  if (*(this + 15))
  {
    *v77 = 258;
    v54 = v77++;
    v54[1] = 1;
    v55 = v77++;
    *(v55 + 2) = **(this + 15);
    v77 += 2;
  }

  else if (!*(this + 4))
  {
    v56 = 0x10000000FLL;
    goto LABEL_89;
  }

  v56 = 0;
LABEL_89:
  v83 = 0;
  v84 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v56, 0x102u, &v83, "", 0, &v71);
  v57 = v84;
  if (v84 && !atomic_fetch_add((v84 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
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
  v58 = v74;
  v74 = 0uLL;
  v59 = *(&v76 + 1);
  v76 = v58;
  if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v59);
  }

  v60 = *(&v74 + 1);
  v61 = __p[0];
  if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
  }

  if (v61)
  {
    goto LABEL_125;
  }

  mipc::Message::serializeTlv<unsigned char,true>(this, this + 16, 259, &v77, &v71);
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
  }

  if (v65)
  {
    goto LABEL_125;
  }

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
    goto LABEL_125;
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

LABEL_127:
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

void sub_297AE9FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::dale_cps::Preferred_Plmn_List_Req::getSize(mipc::dale_cps::Preferred_Plmn_List_Req *this)
{
  v1 = *(this + 11);
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
    v8 = *(this + 6);
    v6 = *(this + 13);
    v7 = *(this + 12);
    if (v7 == v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_5:
    v4 = 16;
    v5 = *(this + 6);
    v6 = *(this + 13);
    v7 = *(this + 12);
    if (v7 == v6)
    {
      goto LABEL_12;
    }
  }

  v9 = 16;
  while (1)
  {
    v10 = v7[1] - *v7;
    if ((v10 + 4) >> 16)
    {
      break;
    }

    v9 += (v10 + 11) & 0xFFF8;
    v7 += 3;
    if (v7 == v6)
    {
      return v9 + v4 + 8 * (*(this + 15) != 0) + 8 * (*(this + 16) != 0);
    }
  }

LABEL_12:
  v9 = 0;
  return v9 + v4 + 8 * (*(this + 15) != 0) + 8 * (*(this + 16) != 0);
}

void mipc::Message::serializeTlv<mipc::mipc_string_t<20ul,false>,true>(uint64_t a1@<X0>, char **a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = v5[23];
    v7 = *(v5 + 4);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    **a4 = a3;
    v8 = (*a4 + 2);
    *a4 = v8;
    *v8 = v7 + 1;
    v9 = (*a4 + 2);
    *a4 = v9;
    v10 = *a2;
    v11 = (*a2)[23];
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = a5;
      v13 = a1;
      v11 = *(v10 + 1);
      if (v11 > 0x13)
      {
        v14 = a3;
        v10 = *v10;
        goto LABEL_11;
      }

      v16 = a4;
      v17 = a3;
      v18 = *v10;
    }

    else
    {
      v12 = a5;
      v13 = a1;
      if (v11 > 0x13)
      {
        v14 = a3;
LABEL_11:
        v24 = &v10[v11];
        v25 = v10;
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,0>(&v25, &v24, &v22);
        v15 = 0x100000010;
        a3 = v14;
        a1 = v13;
        a5 = v12;
        goto LABEL_18;
      }

      v16 = a4;
      v17 = a3;
      v18 = *a2;
    }

    memcpy(v9, v18, v11);
    v20 = (*v16 + v11);
    *v16 = v20;
    *v20 = 0;
    v19 = *v16 + 1;
    *v16 = v19;
    LOWORD(v20) = v10[23];
    if (v20 < 0)
    {
      v20 = *(v10 + 1);
    }

    *v16 = v19 + (((v20 + 12) & 0xFFF8) - v20 - 5);
    a3 = v17;
    a1 = v13;
    a5 = v12;
  }

  else if (!*(a1 + 32))
  {
    v15 = 0x10000000FLL;
    v22 = 0;
    v23 = 0;
    goto LABEL_18;
  }

  v15 = 0;
  v22 = 0;
  v23 = 0;
LABEL_18:
  mipc::Message::handle<(mipc::Error::Type)1>(a1, v15, a3, &v22, "", 0, a5);
  v21 = v23;
  if (v23)
  {
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }
}

void sub_297AEA2D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

mipc::dale_cps::Preferred_Plmn_List_Cnf *mipc::dale_cps::Preferred_Plmn_List_Cnf::Preferred_Plmn_List_Cnf(mipc::dale_cps::Preferred_Plmn_List_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62224, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E69828;
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

void sub_297AEA484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Preferred_Plmn_List_Cnf::deserialize@<D0>(mipc::dale_cps::Preferred_Plmn_List_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Preferred_Plmn_List_Cnf::Preferred_Plmn_List_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62224, &v14, a3, 2);
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
  *a1 = &unk_2A1E6ABC0;
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
  *a1 = &unk_2A1E69828;
  return a1;
}

void sub_297AEA754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Preferred_Plmn_List_Cnf::~Preferred_Plmn_List_Cnf(mipc::dale_cps::Preferred_Plmn_List_Cnf *this)
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

uint64_t mipc::dale_cps::Preferred_Plmn_List_Cnf::getSize(mipc::dale_cps::Preferred_Plmn_List_Cnf *this)
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

double mipc::dale_cps::Preferred_Plmn_Version_Req::Preferred_Plmn_Version_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3311;
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
  *a1 = &unk_2A1E69870;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = -3311;
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
  *a1 = &unk_2A1E69870;
  *(a1 + 88) = 0;
  return result;
}

void mipc::dale_cps::Preferred_Plmn_Version_Req::~Preferred_Plmn_Version_Req(mipc::dale_cps::Preferred_Plmn_Version_Req *this)
{
  *this = &unk_2A1E69870;
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
  *this = &unk_2A1E69870;
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
  *this = &unk_2A1E69870;
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

void mipc::dale_cps::Preferred_Plmn_Version_Req::serialize(mipc::dale_cps::Preferred_Plmn_Version_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AEB398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::dale_cps::Preferred_Plmn_Version_Req::getSize(mipc::dale_cps::Preferred_Plmn_Version_Req *this)
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

mipc::dale_cps::Preferred_Plmn_Version_Cnf *mipc::dale_cps::Preferred_Plmn_Version_Cnf::Preferred_Plmn_Version_Cnf(mipc::dale_cps::Preferred_Plmn_Version_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62225, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
  }

  *this = &unk_2A1E698B8;
  *(this + 11) = 0;
  mipc::dale_cps::Preferred_Plmn_Version_Cnf::deserialize(this, &v7);
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

void sub_297AEB50C(_Unwind_Exception *a1)
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

void mipc::dale_cps::Preferred_Plmn_Version_Cnf::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Preferred_Plmn_Version_Cnf::Preferred_Plmn_Version_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62225, &v14, a3, 2);
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
  *a1 = &unk_2A1E6AC08;
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
  *a1 = &unk_2A1E698B8;
  a1[11] = 0;
  return a1;
}

void sub_297AEB908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Preferred_Plmn_Version_Cnf::~Preferred_Plmn_Version_Cnf(mipc::dale_cps::Preferred_Plmn_Version_Cnf *this)
{
  *this = &unk_2A1E698B8;
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
  *this = &unk_2A1E698B8;
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
  *this = &unk_2A1E698B8;
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

uint64_t mipc::dale_cps::Preferred_Plmn_Version_Cnf::getSize(mipc::dale_cps::Preferred_Plmn_Version_Cnf *this)
{
  v1 = 24;
  if (*(this + 9))
  {
    v1 = 32;
  }

  return v1 + 8 * (*(this + 11) != 0);
}

double mipc::dale_cps::Wpim_Avs_Status_Req::Wpim_Avs_Status_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3310;
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
  *a1 = &unk_2A1E69900;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = -3310;
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
  *a1 = &unk_2A1E69900;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void mipc::dale_cps::Wpim_Avs_Status_Req::~Wpim_Avs_Status_Req(mipc::dale_cps::Wpim_Avs_Status_Req *this)
{
  *this = &unk_2A1E69900;
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
  *this = &unk_2A1E69900;
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
  *this = &unk_2A1E69900;
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

void mipc::dale_cps::Wpim_Avs_Status_Req::serialize(mipc::dale_cps::Wpim_Avs_Status_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vceqzq_s64(*(this + 88));
  v5 = vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1] + 8 * (*(this + 13) != 0);
  *&v42 = operator new(v5);
  v43 = v42 + v5;
  bzero(v42, v5);
  *(&v42 + 1) = v42 + v5;
  v41 = v42;
  v40 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v35, this, &v41);
  v6 = v38;
  *&__p[1] = *v36;
  __p[3] = v37;
  __p[0] = v35;
  v40 = v38;
  if (v35)
  {
    *a2 = v35;
    *(a2 + 8) = *&__p[1];
    v7 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
LABEL_72:
    *(a2 + 48) = 1;
    goto LABEL_73;
  }

  if (*(this + 11))
  {
    *v41 = 256;
    v8 = v41++;
    v8[1] = 1;
    v9 = v41++;
    *(v9 + 2) = **(this + 11);
    v41 += 2;
  }

  else if (!*(this + 4))
  {
    v10 = 0x10000000FLL;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v44 = 0;
  v45 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v10, 0x100u, &v44, "", 0, &v35);
  v11 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    __p[0] = v35;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __p[0] = v35;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_10:
    operator delete(__p[1]);
  }

LABEL_11:
  *&__p[1] = *v36;
  __p[3] = v37;
  HIBYTE(v37) = 0;
  LOBYTE(v36[0]) = 0;
  v12 = v38;
  v38 = 0uLL;
  v40 = v12;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
    v13 = *(&v38 + 1);
    v14 = __p[0];
    if (!*(&v38 + 1))
    {
LABEL_15:
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_23:
      operator delete(v36[0]);
      if (v14)
      {
        goto LABEL_71;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = *(&v38 + 1);
    v14 = __p[0];
    if (!*(&v38 + 1))
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
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v14)
  {
    goto LABEL_71;
  }

LABEL_24:
  if (*(this + 12))
  {
    *v41 = 257;
    v15 = v41++;
    v15[1] = 1;
    v16 = v41++;
    *(v16 + 2) = **(this + 12);
    v41 += 2;
  }

  else if (!*(this + 4))
  {
    v17 = 0x10000000FLL;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_29:
  v44 = 0;
  v45 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v17, 0x101u, &v44, "", 0, &v35);
  v18 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  __p[0] = v35;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v36;
  __p[3] = v37;
  HIBYTE(v37) = 0;
  LOBYTE(v36[0]) = 0;
  v19 = v38;
  v38 = 0uLL;
  v20 = *(&v40 + 1);
  v40 = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *(&v38 + 1);
  v22 = __p[0];
  if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
    if (!v22)
    {
      goto LABEL_44;
    }

LABEL_71:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v40;
    goto LABEL_72;
  }

  if (v22)
  {
    goto LABEL_71;
  }

LABEL_44:
  if (*(this + 13))
  {
    *v41 = 258;
    v23 = v41++;
    v23[1] = 4;
    v24 = v41++;
    *(v24 + 1) = **(this + 13);
    v41 += 2;
  }

  v44 = 0;
  v45 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v44, "", 0, &v35);
  v25 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  __p[0] = v35;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v36;
  __p[3] = v37;
  HIBYTE(v37) = 0;
  LOBYTE(v36[0]) = 0;
  v26 = v38;
  v38 = 0uLL;
  v27 = *(&v40 + 1);
  v40 = v26;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(&v38 + 1);
  v29 = __p[0];
  if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (v29)
  {
    goto LABEL_71;
  }

  (*(*this + 32))(&v35, this, &v42);
  __p[0] = v35;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v36;
  __p[3] = v37;
  HIBYTE(v37) = 0;
  LOBYTE(v36[0]) = 0;
  v30 = v38;
  v38 = 0uLL;
  v31 = *(&v40 + 1);
  v40 = v30;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(&v38 + 1);
  v33 = __p[0];
  if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (v33)
  {
    goto LABEL_71;
  }

  *a2 = v42;
  *(a2 + 16) = v43;
  v43 = 0;
  v42 = 0uLL;
  *(a2 + 48) = 0;
  v34 = *(&v40 + 1);
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_73:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v42)
  {
    *(&v42 + 1) = v42;
    operator delete(v42);
  }
}

void sub_297AEC9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::dale_cps::Wpim_Avs_Status_Cnf *mipc::dale_cps::Wpim_Avs_Status_Cnf::Wpim_Avs_Status_Cnf(mipc::dale_cps::Wpim_Avs_Status_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62226, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E69948;
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

void sub_297AECBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Wpim_Avs_Status_Cnf::deserialize@<D0>(mipc::dale_cps::Wpim_Avs_Status_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Wpim_Avs_Status_Cnf::Wpim_Avs_Status_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62226, &v14, a3, 2);
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
  *a1 = &unk_2A1E6AC50;
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
  *a1 = &unk_2A1E69948;
  return a1;
}

void sub_297AECEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Wpim_Avs_Status_Cnf::~Wpim_Avs_Status_Cnf(mipc::dale_cps::Wpim_Avs_Status_Cnf *this)
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

uint64_t mipc::dale_cps::Wpim_Avs_Status_Cnf::getSize(mipc::dale_cps::Wpim_Avs_Status_Cnf *this)
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

double mipc::dale_cps::Wpim_Voip_Status_Req::Wpim_Voip_Status_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3309;
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
  *a1 = &unk_2A1E69990;
  *(a1 + 88) = 0;
  return result;
}

{
  *(a1 + 8) = -3309;
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
  *a1 = &unk_2A1E69990;
  *(a1 + 88) = 0;
  return result;
}

void mipc::dale_cps::Wpim_Voip_Status_Req::~Wpim_Voip_Status_Req(mipc::dale_cps::Wpim_Voip_Status_Req *this)
{
  *this = &unk_2A1E69990;
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
  *this = &unk_2A1E69990;
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
  *this = &unk_2A1E69990;
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

void mipc::dale_cps::Wpim_Voip_Status_Req::serialize(mipc::dale_cps::Wpim_Voip_Status_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AEDB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t mipc::dale_cps::Wpim_Voip_Status_Req::getSize(mipc::dale_cps::Wpim_Voip_Status_Req *this)
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

mipc::dale_cps::Wpim_Voip_Status_Cnf *mipc::dale_cps::Wpim_Voip_Status_Cnf::Wpim_Voip_Status_Cnf(mipc::dale_cps::Wpim_Voip_Status_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62227, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E699D8;
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

void sub_297AEDCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Wpim_Voip_Status_Cnf::deserialize@<D0>(mipc::dale_cps::Wpim_Voip_Status_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Wpim_Voip_Status_Cnf::Wpim_Voip_Status_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62227, &v14, a3, 2);
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
  *a1 = &unk_2A1E6AC98;
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
  *a1 = &unk_2A1E699D8;
  return a1;
}

void sub_297AEDFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Wpim_Voip_Status_Cnf::~Wpim_Voip_Status_Cnf(mipc::dale_cps::Wpim_Voip_Status_Cnf *this)
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

uint64_t mipc::dale_cps::Wpim_Voip_Status_Cnf::getSize(mipc::dale_cps::Wpim_Voip_Status_Cnf *this)
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

double mipc::dale_cps::Wpim_Ids_Status_Req::Wpim_Ids_Status_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3308;
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
  *a1 = &unk_2A1E69A20;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = -3308;
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
  *a1 = &unk_2A1E69A20;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::dale_cps::Wpim_Ids_Status_Req::~Wpim_Ids_Status_Req(mipc::dale_cps::Wpim_Ids_Status_Req *this)
{
  *this = &unk_2A1E69A20;
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
  *this = &unk_2A1E69A20;
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
  *this = &unk_2A1E69A20;
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

void mipc::dale_cps::Wpim_Ids_Status_Req::serialize(mipc::dale_cps::Wpim_Ids_Status_Req *this@<X0>, uint64_t a2@<X8>)
{
  v4 = vceqzq_s64(*(this + 88));
  v5 = vbslq_s8(v4, vdupq_n_s64(0x10uLL), xmmword_297DCA380).u64[0] + vbicq_s8(xmmword_297DCA380, v4).i64[1];
  *&v35 = operator new(v5);
  v36 = v35 + v5;
  bzero(v35, v5);
  *(&v35 + 1) = v35 + v5;
  v34 = v35;
  v33 = 0u;
  memset(__p, 0, sizeof(__p));
  (*(*this + 24))(&v28, this, &v34);
  v6 = v31;
  *&__p[1] = *v29;
  __p[3] = v30;
  __p[0] = v28;
  v33 = v31;
  if (v28)
  {
    *a2 = v28;
    *(a2 + 8) = *&__p[1];
    v7 = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
LABEL_56:
    *(a2 + 48) = 1;
    goto LABEL_57;
  }

  if (*(this + 11))
  {
    *v34 = 256;
    v8 = v34++;
    v8[1] = 1;
    v9 = v34++;
    *(v9 + 2) = **(this + 11);
    v34 += 2;
  }

  else if (!*(this + 4))
  {
    v10 = 0x10000000FLL;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v37 = 0;
  v38 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v10, 0x100u, &v37, "", 0, &v28);
  v11 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    __p[0] = v28;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __p[0] = v28;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_10:
    operator delete(__p[1]);
  }

LABEL_11:
  *&__p[1] = *v29;
  __p[3] = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29[0]) = 0;
  v12 = v31;
  v31 = 0uLL;
  v33 = v12;
  if (*(&v6 + 1) && !atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v6 + 1) + 16))(*(&v6 + 1));
    std::__shared_weak_count::__release_weak(*(&v6 + 1));
    v13 = *(&v31 + 1);
    v14 = __p[0];
    if (!*(&v31 + 1))
    {
LABEL_15:
      if ((SHIBYTE(v30) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_23:
      operator delete(v29[0]);
      if (v14)
      {
        goto LABEL_55;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = *(&v31 + 1);
    v14 = __p[0];
    if (!*(&v31 + 1))
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
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v14)
  {
    goto LABEL_55;
  }

LABEL_24:
  if (*(this + 12))
  {
    *v34 = 257;
    v15 = v34++;
    v15[1] = 1;
    v16 = v34++;
    *(v16 + 2) = **(this + 12);
    v34 += 2;
  }

  else if (!*(this + 4))
  {
    v17 = 0x10000000FLL;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_29:
  v37 = 0;
  v38 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, v17, 0x101u, &v37, "", 0, &v28);
  v18 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

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
      goto LABEL_44;
    }

LABEL_55:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v33;
    goto LABEL_56;
  }

  if (v22)
  {
    goto LABEL_55;
  }

LABEL_44:
  (*(*this + 32))(&v28, this, &v35);
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
    goto LABEL_55;
  }

  *a2 = v35;
  *(a2 + 16) = v36;
  v36 = 0;
  v35 = 0uLL;
  *(a2 + 48) = 0;
  v27 = *(&v33 + 1);
  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

LABEL_57:
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }
}

void sub_297AEEE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::dale_cps::Wpim_Ids_Status_Cnf *mipc::dale_cps::Wpim_Ids_Status_Cnf::Wpim_Ids_Status_Cnf(mipc::dale_cps::Wpim_Ids_Status_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62228, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E69A68;
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

void sub_297AEF024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Wpim_Ids_Status_Cnf::deserialize@<D0>(mipc::dale_cps::Wpim_Ids_Status_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Wpim_Ids_Status_Cnf::Wpim_Ids_Status_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62228, &v14, a3, 2);
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
  *a1 = &unk_2A1E6ACE0;
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
  *a1 = &unk_2A1E69A68;
  return a1;
}

void sub_297AEF2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Wpim_Ids_Status_Cnf::~Wpim_Ids_Status_Cnf(mipc::dale_cps::Wpim_Ids_Status_Cnf *this)
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

uint64_t mipc::dale_cps::Wpim_Ids_Status_Cnf::getSize(mipc::dale_cps::Wpim_Ids_Status_Cnf *this)
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

double mipc::dale_cps::Set_Sat_System_Config_Req::Set_Sat_System_Config_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3307;
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
  *a1 = &unk_2A1E69AB0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

{
  *(a1 + 8) = -3307;
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
  *a1 = &unk_2A1E69AB0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

void mipc::dale_cps::Set_Sat_System_Config_Req::~Set_Sat_System_Config_Req(mipc::dale_cps::Set_Sat_System_Config_Req *this)
{
  *this = &unk_2A1E69AB0;
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
  *this = &unk_2A1E69AB0;
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
  *this = &unk_2A1E69AB0;
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

void mipc::dale_cps::Set_Sat_System_Config_Req::serialize(mipc::dale_cps::Set_Sat_System_Config_Req *this@<X0>, uint64_t a2@<X8>)
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

void sub_297AF0104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

mipc::dale_cps::Set_Sat_System_Config_Cnf *mipc::dale_cps::Set_Sat_System_Config_Cnf::Set_Sat_System_Config_Cnf(mipc::dale_cps::Set_Sat_System_Config_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62229, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E69AF8;
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

void sub_297AF0308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Set_Sat_System_Config_Cnf::deserialize@<D0>(mipc::dale_cps::Set_Sat_System_Config_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Set_Sat_System_Config_Cnf::Set_Sat_System_Config_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62229, &v14, a3, 2);
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
  *a1 = &unk_2A1E6AD28;
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
  *a1 = &unk_2A1E69AF8;
  return a1;
}

void sub_297AF05D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Set_Sat_System_Config_Cnf::~Set_Sat_System_Config_Cnf(mipc::dale_cps::Set_Sat_System_Config_Cnf *this)
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

uint64_t mipc::dale_cps::Set_Sat_System_Config_Cnf::getSize(mipc::dale_cps::Set_Sat_System_Config_Cnf *this)
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

double mipc::dale_cps::Set_Mcc_Req::Set_Mcc_Req(uint64_t a1, char a2)
{
  *(a1 + 8) = -3306;
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
  *a1 = &unk_2A1E69B40;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

{
  *(a1 + 8) = -3306;
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
  *a1 = &unk_2A1E69B40;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

void mipc::dale_cps::Set_Mcc_Req::~Set_Mcc_Req(mipc::dale_cps::Set_Mcc_Req *this)
{
  *this = &unk_2A1E69B40;
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

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
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
  mipc::dale_cps::Set_Mcc_Req::~Set_Mcc_Req(this);

  operator delete(v1);
}

void mipc::dale_cps::Set_Mcc_Req::serialize(mipc::dale_cps::Set_Mcc_Req *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 112);
  v4 = *(this + 14);
  v6 = *(this + 12);
  v7 = *(this + 15);
  if (v4 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4 * (v7 - v4) + 16;
  }

  v9 = (this + 136);
  v10.i64[0] = *(this + 11);
  v10.i64[1] = *(this + 13);
  v11 = vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(v10), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 136)))));
  v58[1] = 0;
  v59 = 0;
  v12 = v11 + 8 * (v6 != 0);
  v58[0] = 0;
  v13 = v12 + v8;
  if (v12 + v8)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v14 = operator new(v12 + v8);
    v58[0] = v14;
    v59 = &v14[v13];
    bzero(v14, v13);
    v58[1] = &v14[v13];
  }

  else
  {
    v14 = 0;
  }

  v57 = v14;
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
  v15 = v54;
  v54 = 0uLL;
  v16 = *(&v56 + 1);
  v56 = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(&v54 + 1);
  v18 = __p[0];
  if (!*(&v54 + 1) || atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    operator delete(v52);
    if (v18)
    {
      goto LABEL_95;
    }

    goto LABEL_20;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v18)
  {
    goto LABEL_95;
  }

LABEL_20:
  if (*(this + 11))
  {
    *v57 = 256;
    v19 = v57++;
    v19[1] = 2;
    v20 = v57++;
    v20[1] = **(this + 11);
    v57 += 2;
  }

  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x100u, &v60, "", 0, &v51);
  v21 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    __p[0] = v51;
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
LABEL_25:
    operator delete(__p[1]);
  }

LABEL_26:
  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v22 = v54;
  v54 = 0uLL;
  v23 = *(&v56 + 1);
  v56 = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *(&v54 + 1);
  v25 = __p[0];
  if (!*(&v54 + 1) || atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    operator delete(v52);
    if (v25)
    {
      goto LABEL_95;
    }

    goto LABEL_38;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if (SHIBYTE(v53) < 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if (v25)
  {
    goto LABEL_95;
  }

LABEL_38:
  if (*(this + 12))
  {
    *v57 = 257;
    v26 = v57++;
    v26[1] = 1;
    v27 = v57++;
    *(v27 + 2) = **(this + 12);
    v57 += 2;
  }

  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x101u, &v60, "", 0, &v51);
  v28 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
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
  v29 = v54;
  v54 = 0uLL;
  v30 = *(&v56 + 1);
  v56 = v29;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *(&v54 + 1);
  v32 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
    if (!v32)
    {
      goto LABEL_55;
    }

LABEL_95:
    *a2 = __p[0];
    *(a2 + 8) = *&__p[1];
    *(a2 + 24) = __p[3];
    memset(&__p[1], 0, 24);
    *(a2 + 32) = v56;
    v56 = 0uLL;
    *(a2 + 48) = 1;
    goto LABEL_96;
  }

  if (v32)
  {
    goto LABEL_95;
  }

LABEL_55:
  if (*(this + 13))
  {
    *v57 = 258;
    v33 = v57++;
    v33[1] = 1;
    v34 = v57++;
    *(v34 + 2) = **(this + 13);
    v57 += 2;
  }

  v60 = 0;
  v61 = 0;
  mipc::Message::handle<(mipc::Error::Type)1>(this, 0, 0x102u, &v60, "", 0, &v51);
  v35 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
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
  v36 = v54;
  v54 = 0uLL;
  v37 = *(&v56 + 1);
  v56 = v36;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = *(&v54 + 1);
  v39 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v39)
  {
    goto LABEL_95;
  }

  mipc::Message::serializeTlv<unsigned short,16ul,false>(&v51, this, v5, &v57);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v40 = v54;
  v54 = 0uLL;
  v41 = *(&v56 + 1);
  v56 = v40;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *(&v54 + 1);
  v43 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v43)
  {
    goto LABEL_95;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v9, 260, &v57, &v51);
  __p[0] = v51;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = v52;
  __p[3] = v53;
  HIBYTE(v53) = 0;
  LOBYTE(v52) = 0;
  v44 = v54;
  v54 = 0uLL;
  v45 = *(&v56 + 1);
  v56 = v44;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  v46 = *(&v54 + 1);
  v47 = __p[0];
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (v47)
  {
    goto LABEL_95;
  }

  mipc::Message::serializeTlv<unsigned char,false>(this, v9 + 1, 261, &v57, &v51);
  v48 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v48)
  {
    goto LABEL_95;
  }

  (*(*this + 32))(&v51, this, v58);
  v49 = *mipc::Error::operator=(__p, &v51);
  mipc::Error::~Error(&v51);
  if (v49)
  {
    goto LABEL_95;
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

LABEL_96:
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

void sub_297AF1604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mipc::Error::~Error(&a15);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mipc::dale_cps::Set_Mcc_Req::getSize(mipc::dale_cps::Set_Mcc_Req *this)
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

  v4.i64[0] = *(this + 11);
  v4.i64[1] = *(this + 13);
  return vaddvq_s64(vaddq_s64(vbslq_s8(vceqzq_s64(v4), xmmword_297DCA390, xmmword_297DCA380), vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(*(this + 136))))) + 8 * (*(this + 12) != 0) + v3;
}

void mipc::Message::serializeTlv<unsigned short,16ul,false>(uint64_t a1, uint64_t a2, __int16 **a3, _WORD **a4)
{
  v6 = *a3;
  if (v6 == *(&v6 + 1))
  {
    goto LABEL_19;
  }

  v8 = 0x100000002;
  v9 = *(&v6 + 1) - v6;
  if (((*(&v6 + 1) - v6) >> 1) <= 0x10)
  {
    v10 = v9 >> 1;
    v11 = *(a2 + 14) - (v9 >> 1);
    v12 = (*(a2 + 14) - (v9 >> 1));
    *(a2 + 14) -= v9 >> 1;
    if (v12 < 0x100)
    {
      goto LABEL_5;
    }

    v18 = v11 + 1;
    **a4 = 259;
    v19 = *a4 + 1;
    *a4 = v19;
    *v19 = 0;
    v20 = *a4 + 1;
    *a4 = v20;
    *v20 = 0;
    v21 = *a4 + 2;
    *a4 = v21;
    *v21 = 0;
    v22 = *a4 + 2;
    *a4 = v22;
    *v22 = v11 + 1;
    v23 = *a4 + 1;
    *a4 = v23;
    *v23 = v10;
    v24 = *a4 + 1;
    *a4 = v24;
    for (i = *a3; i != a3[1]; *a4 = v24)
    {
      *v24 = v18;
      v26 = *a4 + 1;
      *a4 = v26;
      *v26 = 2;
      v27 = (*a4)++;
      ++v18;
      v28 = *i++;
      v27[1] = v28;
      v24 = *a4 + 2;
    }

LABEL_19:
    v8 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_20;
  }

  v8 = 0x100000010;
LABEL_5:
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 4 * v9 + 16;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v32, &v30);
  v13 = v30;
  v14 = *v30;
  v15 = *a3;
  if (*a3 != a3[1])
  {
    do
    {
      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 2;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v34, &v32);
      **v32 = *v15;
      if (v32)
      {
        memcpy(v14, *v32, *(v32 + 8) - *v32);
        v14 += *(v32 + 8) - *v32;
      }

      v16 = v33;
      if (v33 && !atomic_fetch_add((v33 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      ++v15;
    }

    while (v15 != a3[1]);
    v13 = v30;
  }

  if (v14 != v13[1])
  {
    v17 = v13[1];
    v13[1] = v14;
  }

LABEL_20:
  mipc::Message::handle<(mipc::Error::Type)1>(a2, v8, 0x103u, &v30, "", 0, a1);
  v29 = v31;
  if (v31)
  {
    if (!atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }
  }
}

mipc::dale_cps::Set_Mcc_Cnf *mipc::dale_cps::Set_Mcc_Cnf::Set_Mcc_Cnf(mipc::dale_cps::Set_Mcc_Cnf *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62230, a2, a3, 2);
  *v4 = &unk_2A1E859A8;
  v5 = v4[4];
  if (!v5)
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 2);
    v5 = *(this + 4);
  }

  *this = &unk_2A1E69B88;
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

void sub_297AF1B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mipc::Error::~Error(&a9);
  mipc::ResponseMessage::~ResponseMessage(v9);
  _Unwind_Resume(a1);
}

double mipc::dale_cps::Set_Mcc_Cnf::deserialize@<D0>(mipc::dale_cps::Set_Mcc_Cnf *this@<X0>, uint64_t a2@<X8>)
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

void *mipc::dale_cps::Set_Mcc_Cnf::Set_Mcc_Cnf(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62230, &v14, a3, 2);
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
  *a1 = &unk_2A1E6AD70;
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
  *a1 = &unk_2A1E69B88;
  return a1;
}

void sub_297AF1E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Set_Mcc_Cnf::~Set_Mcc_Cnf(mipc::dale_cps::Set_Mcc_Cnf *this)
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

uint64_t mipc::dale_cps::Set_Mcc_Cnf::getSize(mipc::dale_cps::Set_Mcc_Cnf *this)
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

mipc::dale_cps::Lqm_Data_Bb_Ind *mipc::dale_cps::Lqm_Data_Bb_Ind::Lqm_Data_Bb_Ind(mipc::dale_cps::Lqm_Data_Bb_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62336, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E69BD0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  mipc::dale_cps::Lqm_Data_Bb_Ind::deserialize(this, &v7);
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

void sub_297AF22F0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 160);
  *(v1 + 160) = 0;
  if (v4)
  {
    operator delete(v4);
    v5 = *(v1 + 152);
    *(v1 + 152) = 0;
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 144);
      *(v1 + 144) = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v1 + 152);
    *(v1 + 152) = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *(v1 + 144);
  *(v1 + 144) = 0;
  if (!v6)
  {
LABEL_4:
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
  v7 = *(v1 + 136);
  *(v1 + 136) = 0;
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 128);
    *(v1 + 128) = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v7);
  v8 = *(v1 + 128);
  *(v1 + 128) = 0;
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 120);
    *(v1 + 120) = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v8);
  v9 = *(v1 + 120);
  *(v1 + 120) = 0;
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v9);
  v10 = *(v1 + 112);
  *(v1 + 112) = 0;
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 104);
    *(v1 + 104) = 0;
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v10);
  v11 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (!v11)
  {
LABEL_9:
    mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 96));
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
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 96));
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

void mipc::dale_cps::Lqm_Data_Bb_Ind::deserialize(void **this@<X0>, uint64_t a2@<X8>)
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
  v4 = v82;
  v82 = 0uLL;
  v5 = *(a2 + 40);
  *(a2 + 32) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a2;
  v7 = *(&v82 + 1);
  if (*(&v82 + 1) && !atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v82 = v8;
  v83 = v8;
  *__p = v8;
  *&__p[16] = v8;
  mipc::Message::findTLV(this, 0x100u, __p);
  *&v80[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v80 = v9;
  *v79 = v9;
  v78 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v79, *&__p[8], *&__p[16]);
  }

  else
  {
    *v79 = *&__p[8];
    *v80 = *&__p[24];
  }

  *&v80[8] = v82;
  if (*(&v82 + 1))
  {
    atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v78;
  if (v78 && v78 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v78, &v72);
  }

  else
  {
    v11 = v83;
    v12 = *(&v83 + 1);
    v13 = this[11];
    this[11] = 0;
    if (v13)
    {
      operator delete(v13);
    }

    if (v10)
    {
      if (v10 == 0x10000000ELL)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10;
      }
    }

    else
    {
      v25 = operator new(5uLL);
      v25[4] = 0;
      *v25 = 0;
      v26 = this[11];
      this[11] = v25;
      if (v26)
      {
        operator delete(v26);
        v25 = this[11];
      }

      v14 = 0x100000011;
      if (v11 <= 5)
      {
        if (v11 == 5)
        {
          v14 = 0;
          v32 = *v12;
          v25[4] = *(v12 + 4);
          *v25 = v32;
        }
      }

      else
      {
        v14 = 0x100000012;
      }
    }

    v15 = this[3];
    v76 = this[2];
    v77 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v14, 0x100u, &v76, "", 0, &v72);
    v16 = v77;
    if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  v17 = *&v80[16];
  if (*&v80[16] && !atomic_fetch_add((*&v80[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if ((v80[7] & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((v80[7] & 0x80000000) != 0)
  {
LABEL_35:
    operator delete(v79[0]);
  }

LABEL_36:
  v18 = *(&v82 + 1);
  if (!*(&v82 + 1) || atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((__p[31] & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    operator delete(*&__p[8]);
    *a2 = v72;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_52:
    operator delete(*(a2 + 8));
    goto LABEL_40;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if ((__p[31] & 0x80000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_39:
  *a2 = v72;
  if (*(a2 + 31) < 0)
  {
    goto LABEL_52;
  }

LABEL_40:
  *(a2 + 8) = v73;
  *(a2 + 24) = v74;
  HIBYTE(v74) = 0;
  LOBYTE(v73) = 0;
  v19 = v75;
  v75 = 0uLL;
  v20 = *(a2 + 40);
  *(a2 + 32) = v19;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *a2;
  v22 = *(&v75 + 1);
  if (*(&v75 + 1) && !atomic_fetch_add((*(&v75 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
LABEL_46:
      if (v21)
      {
        return;
      }

      goto LABEL_55;
    }
  }

  else if ((SHIBYTE(v74) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v73);
  if (v21)
  {
    return;
  }

LABEL_55:
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v82 = v23;
  v83 = v23;
  *__p = v23;
  *&__p[16] = v23;
  mipc::Message::findTLV(this, 0x101u, __p);
  *&v80[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v80 = v24;
  *v79 = v24;
  v78 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v79, *&__p[8], *&__p[16]);
  }

  else
  {
    *v79 = *&__p[8];
    *v80 = *&__p[24];
  }

  *&v80[8] = v82;
  if (*(&v82 + 1))
  {
    atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v27 = v78;
  if (!v78 || v78 == 0x10000000ELL)
  {
    v28 = v83;
    v29 = *(&v83 + 1);
    v30 = this[12];
    this[12] = 0;
    if (v30)
    {
      v31 = *v30;
      if (*v30)
      {
        v30[1] = v31;
        operator delete(v31);
      }

      operator delete(v30);
    }

    if (v27)
    {
      if (v27 != 0x10000000ELL)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    v33 = operator new(0x18uLL);
    *v33 = 0;
    v33[1] = 0;
    v33[2] = 0;
    v34 = this[12];
    this[12] = v33;
    if (v34)
    {
      v35 = *v34;
      if (*v34)
      {
        v34[1] = v35;
        operator delete(v35);
      }

      operator delete(v34);
      v33 = this[12];
    }

    if (v28)
    {
      if (v28 <= 0xF0)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v33, v29, &v29[v28], v28);
LABEL_85:
        v27 = 0;
        goto LABEL_86;
      }

      v27 = 0x100000010;
    }

    else
    {
      v27 = 0x100000003;
    }

LABEL_86:
    v36 = this[3];
    v76 = this[2];
    v77 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v27, 0x101u, &v76, "", 0, &v72);
    v37 = v77;
    if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }

    goto LABEL_91;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v78, &v72);
LABEL_91:
  v38 = *&v80[16];
  if (*&v80[16] && !atomic_fetch_add((*&v80[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  if ((v80[7] & 0x80000000) != 0)
  {
    operator delete(v79[0]);
  }

  v39 = *(&v82 + 1);
  if (*(&v82 + 1) && !atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v72;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = v73;
  *(a2 + 24) = v74;
  HIBYTE(v74) = 0;
  LOBYTE(v73) = 0;
  v40 = v75;
  v75 = 0uLL;
  v41 = *(a2 + 40);
  *(a2 + 32) = v40;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *a2;
  v43 = *(&v75 + 1);
  if (*(&v75 + 1) && !atomic_fetch_add((*(&v75 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (!v42)
  {
    *&v44 = 0xAAAAAAAAAAAAAAAALL;
    *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v82 = v44;
    v83 = v44;
    *__p = v44;
    *&__p[16] = v44;
    mipc::Message::findTLV(this, 0x102u, __p);
    *&v80[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v45 = 0xAAAAAAAAAAAAAAAALL;
    *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v80 = v45;
    *v79 = v45;
    v78 = *__p;
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v79, *&__p[8], *&__p[16]);
    }

    else
    {
      *v79 = *&__p[8];
      *v80 = *&__p[24];
    }

    *&v80[8] = v82;
    if (*(&v82 + 1))
    {
      atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v46 = v78;
    if (v78 && v78 != 0x10000000ELL)
    {
      mipc::Message::handle<(mipc::Error::Type)2>(this, &v78, &v72);
    }

    else
    {
      v47 = v83;
      v48 = *(&v83 + 1);
      v49 = this[13];
      this[13] = 0;
      if (v49)
      {
        operator delete(v49);
      }

      if (v46)
      {
        if (v46 == 0x10000000ELL)
        {
          v46 = 0;
        }
      }

      else
      {
        v50 = operator new(2uLL);
        *v50 = 0;
        v51 = this[13];
        this[13] = v50;
        if (v51)
        {
          operator delete(v51);
          v50 = this[13];
        }

        v46 = 0x100000011;
        if (v47 <= 2)
        {
          if (v47 == 2)
          {
            v46 = 0;
            *v50 = *v48;
          }
        }

        else
        {
          v46 = 0x100000012;
        }
      }

      v52 = this[3];
      v76 = this[2];
      v77 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mipc::Message::handle<(mipc::Error::Type)2>(this, v46, 0x102u, &v76, "", 0, &v72);
      v53 = v77;
      if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v53->__on_zero_shared)(v53);
        std::__shared_weak_count::__release_weak(v53);
      }
    }

    v54 = *&v80[16];
    if (*&v80[16] && !atomic_fetch_add((*&v80[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
    }

    if ((v80[7] & 0x80000000) != 0)
    {
      operator delete(v79[0]);
    }

    v55 = *(&v82 + 1);
    if (*(&v82 + 1) && !atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v55->__on_zero_shared)(v55);
      std::__shared_weak_count::__release_weak(v55);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    *a2 = v72;
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    *(a2 + 8) = v73;
    *(a2 + 24) = v74;
    HIBYTE(v74) = 0;
    LOBYTE(v73) = 0;
    v56 = v75;
    v75 = 0uLL;
    v57 = *(a2 + 40);
    *(a2 + 32) = v56;
    if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v57->__on_zero_shared)(v57);
      std::__shared_weak_count::__release_weak(v57);
    }

    v58 = *a2;
    v59 = *(&v75 + 1);
    if (*(&v75 + 1) && !atomic_fetch_add((*(&v75 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v59->__on_zero_shared)(v59);
      std::__shared_weak_count::__release_weak(v59);
    }

    if (SHIBYTE(v74) < 0)
    {
      operator delete(v73);
    }

    if (!v58)
    {
      mipc::Message::deserializeTlv<mipc::mipc_lqm_job_size_struct4,false>(__p, this, this + 14);
      *a2 = *__p;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = *&__p[8];
      *(a2 + 24) = *&__p[24];
      __p[31] = 0;
      __p[8] = 0;
      v60 = v82;
      v82 = 0uLL;
      v61 = *(a2 + 40);
      *(a2 + 32) = v60;
      if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v61->__on_zero_shared)(v61);
        std::__shared_weak_count::__release_weak(v61);
      }

      v62 = *a2;
      v63 = *(&v82 + 1);
      if (*(&v82 + 1) && !atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v63->__on_zero_shared)(v63);
        std::__shared_weak_count::__release_weak(v63);
      }

      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }

      if (!v62)
      {
        mipc::Message::deserializeTlv<mipc::mipc_lqm_transfer_time_enable_struct4,false>(__p, this, this + 15);
        *a2 = *__p;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = *&__p[24];
        __p[31] = 0;
        __p[8] = 0;
        v64 = v82;
        v82 = 0uLL;
        v65 = *(a2 + 40);
        *(a2 + 32) = v64;
        if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v65->__on_zero_shared)(v65);
          std::__shared_weak_count::__release_weak(v65);
        }

        v66 = *a2;
        v67 = *(&v82 + 1);
        if (*(&v82 + 1) && !atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v67->__on_zero_shared)(v67);
          std::__shared_weak_count::__release_weak(v67);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        if (!v66)
        {
          mipc::Message::deserializeTlv<mipc::mipc_lqm_power_cost_struct4,false>(__p, this, this + 16);
          v68 = *mipc::Error::operator=(a2, __p);
          mipc::Error::~Error(__p);
          if (!v68)
          {
            mipc::Message::deserializeTlv<mipc::mipc_lqm_enable_datastall_ind_struct4,false>(__p, this, this + 17);
            v69 = *mipc::Error::operator=(a2, __p);
            mipc::Error::~Error(__p);
            if (!v69)
            {
              mipc::Message::deserializeTlv<mipc::mipc_lqm_enable_high_tput_ind_struct4,false>(__p, this, this + 18);
              v70 = *mipc::Error::operator=(a2, __p);
              mipc::Error::~Error(__p);
              if (!v70)
              {
                mipc::Message::deserializeTlv<mipc::mipc_lqm_nr_serving_cell_type_struct4,false>(__p, this, this + 19);
                v71 = *mipc::Error::operator=(a2, __p);
                mipc::Error::~Error(__p);
                if (!v71)
                {
                  mipc::Message::deserializeTlv<mipc::mipc_lqm_enable_thermal_pressure_ind_struct4,false>(__p, this, this + 20);
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

void sub_297AF3338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

uint64_t mipc::dale_cps::Lqm_Data_Bb_Ind::Lqm_Data_Bb_Ind(uint64_t a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62336, &v14, a3, 3);
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
  *a1 = &unk_2A1E6ADB8;
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
  *a1 = &unk_2A1E69BD0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return a1;
}

void sub_297AF360C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Lqm_Data_Bb_Ind::~Lqm_Data_Bb_Ind(mipc::dale_cps::Lqm_Data_Bb_Ind *this)
{
  *this = &unk_2A1E69BD0;
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
    v11 = *v10;
    if (*v10)
    {
      v10[1] = v11;
      operator delete(v11);
    }

    operator delete(v10);
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
  mipc::dale_cps::Lqm_Data_Bb_Ind::~Lqm_Data_Bb_Ind(this);

  operator delete(v1);
}

void mipc::Message::deserializeTlv<mipc::mipc_lqm_job_size_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  *v24 = v6;
  *&v24[16] = v6;
  mipc::Message::findTLV(this, 0x103u, v24);
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
      v12 = operator new(0x14uLL);
      *v12 = 0;
      v12[1] = 0;
      *(v12 + 4) = 0;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 0x14)
      {
        if (v9 == 20)
        {
          v8 = 0;
          v14 = *v10;
          *(v12 + 4) = *(v10 + 4);
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

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x103u, &v19, "", 0, a1);
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

void sub_297AF3B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF3B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AF3B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_lqm_transfer_time_enable_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
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
  }

  else
  {
    v9 = v25;
    v10 = *(&v25 + 1);
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
      v12 = operator new(2uLL);
      *v12 = 0;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 2)
      {
        if (v9 == 2)
        {
          v8 = 0;
          *v12 = *v10;
        }
      }

      else
      {
        v8 = 0x100000012;
      }
    }

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
  }

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

void sub_297AF3E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF3E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AF3E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_lqm_power_cost_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
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
      v12 = operator new(3uLL);
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
      if (v9 <= 3)
      {
        if (v9 == 3)
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

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x105u, &v19, "", 0, a1);
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

void sub_297AF4154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF4168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AF4184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_lqm_enable_datastall_ind_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x106u, v23);
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
  }

  else
  {
    v9 = v25;
    v10 = *(&v25 + 1);
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
      v12 = operator new(8uLL);
      *v12 = 0;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 8)
      {
        if (v9 == 8)
        {
          v8 = 0;
          *v12 = *v10;
        }
      }

      else
      {
        v8 = 0x100000012;
      }
    }

    v14 = this[3];
    v18 = this[2];
    v19 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x106u, &v18, "", 0, a1);
    v15 = v19;
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

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

void sub_297AF4478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF448C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AF44A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_lqm_enable_high_tput_ind_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x107u, v23);
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
  }

  else
  {
    v9 = v25;
    v10 = *(&v25 + 1);
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
      v12 = operator new(2uLL);
      *v12 = 0;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 2)
      {
        if (v9 == 2)
        {
          v8 = 0;
          *v12 = *v10;
        }
      }

      else
      {
        v8 = 0x100000012;
      }
    }

    v14 = this[3];
    v18 = this[2];
    v19 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x107u, &v18, "", 0, a1);
    v15 = v19;
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

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

void sub_297AF479C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF47B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AF47CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_lqm_nr_serving_cell_type_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x108u, v23);
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
  }

  else
  {
    v9 = v25;
    v10 = *(&v25 + 1);
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
      v12 = operator new(2uLL);
      *v12 = 0;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 2)
      {
        if (v9 == 2)
        {
          v8 = 0;
          *v12 = *v10;
        }
      }

      else
      {
        v8 = 0x100000012;
      }
    }

    v14 = this[3];
    v18 = this[2];
    v19 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x108u, &v18, "", 0, a1);
    v15 = v19;
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

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

void sub_297AF4AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF4AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AF4AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

void mipc::Message::deserializeTlv<mipc::mipc_lqm_enable_thermal_pressure_ind_struct4,false>(void *a1, std::__shared_weak_count **this, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v25 = v6;
  *v23 = v6;
  *&v23[16] = v6;
  mipc::Message::findTLV(this, 0x109u, v23);
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
  }

  else
  {
    v9 = v25;
    v10 = *(&v25 + 1);
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
      v12 = operator new(2uLL);
      *v12 = 0;
      v13 = *a3;
      *a3 = v12;
      if (v13)
      {
        operator delete(v13);
        v12 = *a3;
      }

      v8 = 0x100000011;
      if (v9 <= 2)
      {
        if (v9 == 2)
        {
          v8 = 0;
          *v12 = *v10;
        }
      }

      else
      {
        v8 = 0x100000012;
      }
    }

    v14 = this[3];
    v18 = this[2];
    v19 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v8, 0x109u, &v18, "", 0, a1);
    v15 = v19;
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

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

void sub_297AF4DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mipc::Error::~Error(va);
  _Unwind_Resume(a1);
}

void sub_297AF4DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297AF4E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::shared_ptr<std::vector<unsigned char>>::~shared_ptr[abi:ne200100](&a9);
  mipc::Error::~Error(&a11);
  mipc::Error::~Error(&a17);
  _Unwind_Resume(a1);
}

uint64_t mipc::dale_cps::Lqm_Data_Bb_Ind::getSize(mipc::dale_cps::Lqm_Data_Bb_Ind *this)
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

  v5 = vdupq_n_s64(8uLL);
  return &v1[2 * (*(this + 11) != 0) + v4] + vaddvq_s64(vaddq_s64(vaddq_s64(vbicq_s8(xmmword_297DCE710, vceqzq_s64(*(this + 104))), vbicq_s8(xmmword_297DCE700, vceqzq_s64(*(this + 136)))), vaddq_s64(vbicq_s8(v5, vceqzq_s64(*(this + 120))), vbicq_s8(v5, vceqzq_s64(*(this + 152))))));
}

mipc::dale_cps::Lqm_Voice_Bb_Ind *mipc::dale_cps::Lqm_Voice_Bb_Ind::Lqm_Voice_Bb_Ind(mipc::dale_cps::Lqm_Voice_Bb_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62337, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E69C18;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  mipc::dale_cps::Lqm_Voice_Bb_Ind::deserialize(this, v7);
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

void sub_297AF5024(_Unwind_Exception *a1)
{
  mipc::tlv<mipc::mipc_byte_array_t<11ul,false>,false>::~tlv((v1 + 104));
  v4 = *(v1 + 96);
  *(v1 + 96) = 0;
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

void mipc::dale_cps::Lqm_Voice_Bb_Ind::deserialize(void **this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 5))(__p);
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

  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 11, 0x100u, __p);
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
  mipc::Message::deserializeTlv<unsigned char,false>(this, this + 12, 0x101u, __p);
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

      if (v16 > 0x64)
      {
        v15 = 0x100000010;
LABEL_50:
        v23 = this[3];
        v34 = this[2];
        v35 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
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

void sub_297AF569C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mipc::Error::~Error(va);
  mipc::Error::~Error(v15);
  _Unwind_Resume(a1);
}

void *mipc::dale_cps::Lqm_Voice_Bb_Ind::Lqm_Voice_Bb_Ind(void *a1, uint64_t a2, char a3)
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

  mipc::ResponseMessage::ResponseMessage(a1, 62337, &v14, a3, 3);
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
  *a1 = &unk_2A1E6AE00;
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
  *a1 = &unk_2A1E69C18;
  a1[12] = 0;
  a1[13] = 0;
  a1[11] = 0;
  return a1;
}

void sub_297AF5940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  mipc::Error::~Error(&a15);
  mipc::Error::~Error(&a9);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Lqm_Voice_Bb_Ind::~Lqm_Voice_Bb_Ind(mipc::dale_cps::Lqm_Voice_Bb_Ind *this)
{
  *this = &unk_2A1E69C18;
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
  *this = &unk_2A1E69C18;
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
  *this = &unk_2A1E69C18;
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

void *mipc::dale_cps::Lqm_Voice_Bb_Ind::getSize(mipc::dale_cps::Lqm_Voice_Bb_Ind *this)
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

  v4 = 3;
  if (HIDWORD(*(this + 4)))
  {
    v4 = 4;
  }

  return &v1[(*(this + 11) != 0) + (*(this + 12) != 0) + v4];
}

mipc::dale_cps::Laps_Fetch_Ind *mipc::dale_cps::Laps_Fetch_Ind::Laps_Fetch_Ind(mipc::dale_cps::Laps_Fetch_Ind *this, const unsigned __int8 *a2, size_t a3)
{
  v4 = mipc::Message::Message(this, 62338, a2, a3, 3);
  *v4 = &unk_2A1E859A8;
  if (!v4[4])
  {
    mipc::ResponseMessage::deserializeCommonResultTLV(this, 3);
  }

  *this = &unk_2A1E69C60;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  mipc::dale_cps::Laps_Fetch_Ind::deserialize(this, v7);
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

void sub_297AF5F48(_Unwind_Exception *a1)
{
  mipc::tlv_array<mipc::mipc_string_t<256ul,false>,20ul,false>::~tlv_array((v1 + 152));
  v5 = *(v1 + 144);
  *(v1 + 144) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  mipc::tlv_array<mipc::mipc_string_t<256ul,false>,20ul,false>::~tlv_array(v2);
  mipc::tlv_array<mipc::mipc_string_t<256ul,false>,20ul,false>::~tlv_array((v1 + 96));
  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  mipc::ResponseMessage::~ResponseMessage(v1);
  _Unwind_Resume(a1);
}

void mipc::dale_cps::Laps_Fetch_Ind::deserialize(mipc::dale_cps::Laps_Fetch_Ind *this@<X0>, uint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  (*(*this + 40))(__p);
  v4 = *__p;
  *a2 = *__p;
  v5 = v103;
  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  *(a2 + 2) = v5;
  if (v4)
  {
    return;
  }

  mipc::Message::deserializeTlv<unsigned char,true>(this, this + 11, 0x100u, __p);
  *a2 = *__p;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = *&__p[8];
  a2[3] = *&__p[24];
  __p[31] = 0;
  __p[8] = 0;
  v6 = v103;
  v103 = 0uLL;
  *(a2 + 2) = v6;
  if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v5 + 1) + 16))(*(&v5 + 1));
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
    v7 = *a2;
    v8 = *(&v103 + 1);
    if (!*(&v103 + 1))
    {
LABEL_8:
      if ((__p[31] & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = *a2;
    v8 = *(&v103 + 1);
    if (!*(&v103 + 1))
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if ((__p[31] & 0x80000000) == 0)
  {
LABEL_9:
    if (v7)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*&__p[8]);
  if (v7)
  {
    return;
  }

LABEL_15:
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v103 = v9;
  v104 = v9;
  *__p = v9;
  *&__p[16] = v9;
  mipc::Message::findTLV(this, 0x101u, __p);
  *&v101[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v101 = v10;
  *v100 = v10;
  v99 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v100, *&__p[8], *&__p[16]);
  }

  else
  {
    *v100 = *&__p[8];
    *v101 = *&__p[24];
  }

  *&v101[8] = v103;
  if (*(&v103 + 1))
  {
    atomic_fetch_add_explicit((*(&v103 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v99;
  if (v99 && v99 != 0x10000000ELL)
  {
    mipc::Message::handle<(mipc::Error::Type)2>(this, &v99, &v93);
    goto LABEL_78;
  }

  v12 = v104;
  v13 = *(&v104 + 1);
  v14 = *(this + 12);
  v15 = *(this + 13);
  while (v15 != v14)
  {
    v16 = *(v15 - 1);
    v15 -= 3;
    if (v16 < 0)
    {
      operator delete(*v15);
    }
  }

  *(this + 13) = v14;
  if (v11)
  {
    if (v11 != 0x10000000ELL)
    {
      goto LABEL_73;
    }
  }

  else if (v12 >= 8)
  {
    v17 = (v13 + v12);
    while (1)
    {
      v18 = *(this + 12);
      v19 = *(this + 13);
      v20 = v19 - v18;
      if ((v19 - v18) == 72)
      {
LABEL_206:
        v11 = 0x100000010;
        goto LABEL_73;
      }

      if (v17 - v13 < 4)
      {
        v11 = 0x100000005;
        goto LABEL_73;
      }

      v21 = v17 - v13 <= 2 ? v17 : (v13 + 2);
      v22 = v17 - v21 <= 2;
      v25 = *v21;
      v23 = v21 + 1;
      v24 = v25;
      v26 = (v22 ? v17 : v23);
      v27 = *(this + 14);
      if (v19 >= v27)
      {
        v91 = v24;
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
            v37 = *v35;
            *(v36 + 2) = v35[2];
            *v36 = v37;
            v36 += 24;
            v35[1] = 0;
            v35[2] = 0;
            *v35 = 0;
            v35 += 3;
          }

          while (v35 != v19);
          do
          {
            if (*(v18 + 23) < 0)
            {
              operator delete(*v18);
            }

            v18 += 24;
          }

          while (v18 != v19);
          v18 = *(this + 12);
        }

        v38 = &v32[24 * v31];
        v28 = (v33 + 24);
        *(this + 12) = v34;
        *(this + 13) = v33 + 24;
        *(this + 14) = v38;
        if (v18)
        {
          operator delete(v18);
        }

        v24 = v91;
      }

      else
      {
        *v19 = 0;
        v19[1] = 0;
        v28 = (v19 + 3);
        v19[2] = 0;
      }

      *(this + 13) = v28;
      if (!v24)
      {
        break;
      }

      if (v24 > 4)
      {
        goto LABEL_206;
      }

      if (v24 != 4)
      {
        v11 = 0x100000011;
        goto LABEL_73;
      }

      std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v28 - 3, v26, (v26 + 3), 3uLL);
      v11 = 0;
      if (v17 - v26 <= 4)
      {
        v13 = v17;
      }

      else
      {
        v13 = v26 + 4;
      }

      if (v17 - v13 <= 7)
      {
        goto LABEL_73;
      }
    }

    v11 = 0x100000003;
    goto LABEL_73;
  }

  v11 = 0;
LABEL_73:
  v39 = *(this + 3);
  v97 = *(this + 2);
  v98 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, v11, 0x101u, &v97, "", 0, &v93);
  v40 = v98;
  if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_78:
  v41 = *&v101[16];
  if (*&v101[16] && !atomic_fetch_add((*&v101[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  if ((v101[7] & 0x80000000) != 0)
  {
    operator delete(v100[0]);
  }

  v42 = *(&v103 + 1);
  if (*(&v103 + 1) && !atomic_fetch_add((*(&v103 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v93;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v94;
  a2[3] = v95;
  HIBYTE(v95) = 0;
  LOBYTE(v94) = 0;
  v43 = v96;
  v96 = 0uLL;
  v44 = a2[5];
  *(a2 + 2) = v43;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  v45 = *a2;
  v46 = *(&v96 + 1);
  if (*(&v96 + 1) && !atomic_fetch_add((*(&v96 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
    if (v45)
    {
      return;
    }
  }

  else if (v45)
  {
    return;
  }

  *&v47 = 0xAAAAAAAAAAAAAAAALL;
  *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v103 = v47;
  v104 = v47;
  *__p = v47;
  *&__p[16] = v47;
  mipc::Message::findTLV(this, 0x102u, __p);
  *&v101[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v48 = 0xAAAAAAAAAAAAAAAALL;
  *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v101 = v48;
  *v100 = v48;
  v99 = *__p;
  if ((__p[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v100, *&__p[8], *&__p[16]);
  }

  else
  {
    *v100 = *&__p[8];
    *v101 = *&__p[24];
  }

  *&v101[8] = v103;
  if (*(&v103 + 1))
  {
    atomic_fetch_add_explicit((*(&v103 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v49 = v99;
  if (!v99 || v99 == 0x10000000ELL)
  {
    v50 = v104;
    v51 = *(&v104 + 1);
    v52 = *(this + 15);
    v53 = *(this + 16);
    while (v53 != v52)
    {
      v54 = *(v53 - 1);
      v53 -= 3;
      if (v54 < 0)
      {
        operator delete(*v53);
      }
    }

    *(this + 16) = v52;
    if (v49)
    {
      if (v49 != 0x10000000ELL)
      {
        goto LABEL_158;
      }
    }

    else if (v50 >= 8)
    {
      v55 = (v51 + v50);
      while (1)
      {
        v56 = *(this + 15);
        v57 = *(this + 16);
        v58 = v57 - v56;
        if ((v57 - v56) == 288)
        {
LABEL_209:
          v49 = 0x100000010;
          goto LABEL_158;
        }

        if (v55 - v51 < 4)
        {
          v49 = 0x100000005;
          goto LABEL_158;
        }

        v59 = v55 - v51 <= 2 ? v55 : (v51 + 2);
        v22 = v55 - v59 <= 2;
        v62 = *v59;
        v60 = v59 + 1;
        v61 = v62;
        v63 = (v22 ? v55 : v60);
        v64 = *(this + 17);
        if (v57 >= v64)
        {
          v92 = v61;
          v66 = 0xAAAAAAAAAAAAAAABLL * (v58 >> 3) + 1;
          if (v66 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v67 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v56) >> 3);
          if (2 * v67 > v66)
          {
            v66 = 2 * v67;
          }

          v68 = v67 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v66;
          if (v68)
          {
            if (v68 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v69 = operator new(24 * v68);
          }

          else
          {
            v69 = 0;
          }

          v70 = &v69[8 * (v58 >> 3)];
          *v70 = 0;
          *(v70 + 1) = 0;
          *(v70 + 2) = 0;
          v71 = &v70[-v58];
          if (v56 != v57)
          {
            v72 = v56;
            v73 = v71;
            do
            {
              v74 = *v72;
              *(v73 + 2) = v72[2];
              *v73 = v74;
              v73 += 24;
              v72[1] = 0;
              v72[2] = 0;
              *v72 = 0;
              v72 += 3;
            }

            while (v72 != v57);
            do
            {
              if (*(v56 + 23) < 0)
              {
                operator delete(*v56);
              }

              v56 += 24;
            }

            while (v56 != v57);
            v56 = *(this + 15);
          }

          v75 = &v69[24 * v68];
          v65 = (v70 + 24);
          *(this + 15) = v71;
          *(this + 16) = v70 + 24;
          *(this + 17) = v75;
          if (v56)
          {
            operator delete(v56);
          }

          v61 = v92;
        }

        else
        {
          *v57 = 0;
          v57[1] = 0;
          v65 = (v57 + 3);
          v57[2] = 0;
        }

        *(this + 16) = v65;
        if (!v61)
        {
          break;
        }

        if (v61 > 7)
        {
          goto LABEL_209;
        }

        if (v61 != 7)
        {
          v49 = 0x100000011;
          goto LABEL_158;
        }

        std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(v65 - 3, v63, (v63 + 6), 6uLL);
        v49 = 0;
        if (v55 - v63 <= 12)
        {
          v51 = v55;
        }

        else
        {
          v51 = v63 + 12;
        }

        if (v55 - v51 <= 7)
        {
          goto LABEL_158;
        }
      }

      v49 = 0x100000003;
      goto LABEL_158;
    }

    v49 = 0;
LABEL_158:
    v76 = *(this + 3);
    v97 = *(this + 2);
    v98 = v76;
    if (v76)
    {
      atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mipc::Message::handle<(mipc::Error::Type)2>(this, v49, 0x102u, &v97, "", 0, &v93);
    v77 = v98;
    if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v77->__on_zero_shared)(v77);
      std::__shared_weak_count::__release_weak(v77);
    }

    goto LABEL_163;
  }

  mipc::Message::handle<(mipc::Error::Type)2>(this, &v99, &v93);
LABEL_163:
  v78 = *&v101[16];
  if (*&v101[16] && !atomic_fetch_add((*&v101[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v78->__on_zero_shared)(v78);
    std::__shared_weak_count::__release_weak(v78);
  }

  if ((v101[7] & 0x80000000) != 0)
  {
    operator delete(v100[0]);
  }

  v79 = *(&v103 + 1);
  if (*(&v103 + 1) && !atomic_fetch_add((*(&v103 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v79->__on_zero_shared)(v79);
    std::__shared_weak_count::__release_weak(v79);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  *a2 = v93;
  if (*(a2 + 31) < 0)
  {
    operator delete(a2[1]);
  }

  *(a2 + 1) = v94;
  a2[3] = v95;
  HIBYTE(v95) = 0;
  LOBYTE(v94) = 0;
  v80 = v96;
  v96 = 0uLL;
  v81 = a2[5];
  *(a2 + 2) = v80;
  if (v81 && !atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v81->__on_zero_shared)(v81);
    std::__shared_weak_count::__release_weak(v81);
  }

  v82 = *a2;
  v83 = *(&v96 + 1);
  if (*(&v96 + 1) && !atomic_fetch_add((*(&v96 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v83->__on_zero_shared)(v83);
    std::__shared_weak_count::__release_weak(v83);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  if (!v82)
  {
    mipc::Message::deserializeTlv<mipc::mipc_LapsFetchDataCellInfo_struct8,false>(__p, this, this + 18);
    *a2 = *__p;
    if (*(a2 + 31) < 0)
    {
      operator delete(a2[1]);
    }

    *(a2 + 1) = *&__p[8];
    a2[3] = *&__p[24];
    __p[31] = 0;
    __p[8] = 0;
    v84 = v103;
    v103 = 0uLL;
    v85 = a2[5];
    *(a2 + 2) = v84;
    if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v85->__on_zero_shared)(v85);
      std::__shared_weak_count::__release_weak(v85);
    }

    v86 = *a2;
    v87 = *(&v103 + 1);
    if (*(&v103 + 1) && !atomic_fetch_add((*(&v103 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v87->__on_zero_shared)(v87);
      std::__shared_weak_count::__release_weak(v87);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (!v86)
    {
      mipc::Message::deserializeTlv<mipc::mipc_string_t<7ul,false>,12ul,false>(__p, this, this + 19);
      *a2 = *__p;
      if (*(a2 + 31) < 0)
      {
        operator delete(a2[1]);
      }

      *(a2 + 1) = *&__p[8];
      a2[3] = *&__p[24];
      __p[31] = 0;
      __p[8] = 0;
      v88 = v103;
      v103 = 0uLL;
      v89 = a2[5];
      *(a2 + 2) = v88;
      if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v89->__on_zero_shared)(v89);
        std::__shared_weak_count::__release_weak(v89);
      }

      v90 = *(&v103 + 1);
      if (*(&v103 + 1) && !atomic_fetch_add((*(&v103 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v90->__on_zero_shared)(v90);
        std::__shared_weak_count::__release_weak(v90);
      }

      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }
    }
  }
}