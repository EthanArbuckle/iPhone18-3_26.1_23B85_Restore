uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::CriticalCarrierId>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::CriticalCarrierId>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E818;
  *(result + 3) = *(a1 + 12);
  return result;
}

char *qmi::MutableMessageBase::createTLV<coex::tlv::abm::BandInfo>(void *a1)
{
  v2 = operator new(0x18uLL);
  v2[8] = 19;
  *v2 = &unk_2A1E1E868;
  *(v2 + 3) = 0;
  v3 = v2 + 12;
  *(v2 + 4) = 0;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = v2;
      v14 = operator new(8 * v12);
      v2 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[8 * v9];
    *v15 = v2;
    v6 = v15 + 8;
    memcpy(v14, v7, v8);
    a1[1] = v14;
    a1[2] = v6;
    a1[3] = &v14[8 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 8;
  }

  a1[2] = v6;
  return v3;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::BandInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::BandInfo>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E868;
  *(result + 12) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SetCC1Req8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F8A5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SetCC2Req8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F8A6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ThrottlePeriodicity>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::ThrottlePeriodicity>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E8B8;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm21SetLaaGpioThrottleReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F8A888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::GnssBandId>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::GnssBandId>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E908;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::GnssL5Level>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<coex::tlv::abm::GnssL5Level>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1E958;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm13SetGnssBandId8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F8AABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 32);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 40) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = 8 * (v10 < v6);
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

uint64_t boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 292) > *(*result + 288))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v75 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v4;
  v70[9] = v4;
  v70[6] = v4;
  v70[7] = v4;
  v70[4] = v4;
  v70[5] = v4;
  v70[2] = v4;
  v70[3] = v4;
  v70[0] = v4;
  v70[1] = v4;
  v5 = a1[3];
  v71 = 10;
  __p = v70;
  v73 = 0;
  v74 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v66 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v64 = v3;
    v65 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v67 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
          v25 = v24;
          v26 = v20;
          if (v24)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v66 = v11;
      v66[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E1E9F0;
      v52[2] = v11;
      v66[1] = v52;
      v66[2] = v65[2];
      v53 = v65[3];
      v66[3] = v53;
      v3 = v64;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v68 = v66;
      v69 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E1E990;
      v54[2] = v66;
      v55 = *v64;
      v56 = v64[1];
      *v64 = v66;
      v64[1] = v54;
      v68 = v55;
      v69 = v56;
      if (v56)
      {
        if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v56 + 16))(v56);
          if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v56 + 24))(v56);
          }
        }
      }

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v67;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v67 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v67 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v68 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v68 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v68);
      v57 = **v3;
      v68 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v74);
  v60 = __p;
  if (__p)
  {
    if (v73 > 0)
    {
      v62 = __p + 16 * v73;
      do
      {
        v63 = *(v62 - 1);
        if (v63)
        {
          if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v63 + 16))(v63);
            if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 24))(v63);
            }
          }
        }

        v62 -= 16;
      }

      while (v62 > v60);
    }

    if (v71 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296F8B5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void tlv::parseV<nas::tlv::abm::BBHoppingList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 8);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 8), v6, 4);
        *(v10 + 8) = *(v8 + 2);
        v10 += 16;
        v8 += 12;
      }

      while (v10 != v11);
      v8 = v12 + 12;
    }
  }

  *a1 = v8;
}

void sub_296F8BF6C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8BF54);
}

void sub_296F8BF80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void tlv::parseV<nas::tlv::abm::BBHRPLMNList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 8);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 8), v6, 4);
        *(v10 + 8) = *(v8 + 2);
        v10 += 16;
        v8 += 12;
      }

      while (v10 != v11);
      v8 = v12 + 12;
    }
  }

  *a1 = v8;
}

void sub_296F8C064(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8C04CLL);
}

void sub_296F8C078(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void tlv::parseV<nas::tlv::abm::BBNeighborSecondList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 8);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 8), v6, 4);
        *(v10 + 8) = *(v8 + 2);
        v10 += 16;
        v8 += 12;
      }

      while (v10 != v11);
      v8 = v12 + 12;
    }
  }

  *a1 = v8;
}

void sub_296F8C15C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8C144);
}

void sub_296F8C170(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void tlv::parseV<nas::tlv::abm::DLSCellFrequencyList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 8);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 8), v6, 4);
        *(v10 + 8) = *(v8 + 2);
        v10 += 16;
        v8 += 12;
      }

      while (v10 != v11);
      v8 = v12 + 12;
    }
  }

  *a1 = v8;
}

void sub_296F8C254(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8C23CLL);
}

void sub_296F8C268(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void tlv::parseV<nas::tlv::abm::BBCampUplinkFreqList>(tlv **a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v8 = v5 + 1;
  v7 = v9;
  if (v9)
  {
    std::vector<nas::tlv::abm::BBFreqItem>::__append(a3, v7);
    v10 = *a3;
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v12 = v8;
        tlv::throwIfNotEnoughBytes(v8, v6, 8);
        *v10 = *v8;
        tlv::throwIfNotEnoughBytes((v8 + 8), v6, 4);
        *(v10 + 8) = *(v8 + 2);
        v10 += 16;
        v8 += 12;
      }

      while (v10 != v11);
      v8 = v12 + 12;
    }
  }

  *a1 = v8;
}

void sub_296F8C34C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296F8C334);
}

void sub_296F8C360(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Timestamp::Timestamp(Timestamp *this)
{
  v15 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v12 = 0uLL;
  if ((gettimeofday(&v12, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v10 = __error();
  v11 = strerror(*v10);
  *buf = 136315138;
  v14 = v11;
  _os_log_error_impl(&dword_296ECF000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v12;
  v9 = *MEMORY[0x29EDCA608];
}

void *Timestamp::Timestamp(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v7 = *(v5 + 8);
      v9 = *a1;
      v8 = a1[1];
      v10 = v3;
      if (*a1 != v3)
      {
        v11 = a1[1];
        v12 = v3;
        if (v8)
        {
          do
          {
            v10 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v10 = v12[2];
            v13 = *v10 == v12;
            v12 = v10;
          }

          while (v13);
        }

        if (*(v10 + 8) >= v7)
        {
          break;
        }
      }

      if (v8)
      {
        v14 = v10;
      }

      else
      {
        v14 = v3;
      }

      if (v8)
      {
        v15 = v10 + 1;
      }

      else
      {
        v15 = v3;
      }

      if (!*v15)
      {
        goto LABEL_25;
      }

LABEL_28:
      v20 = v5[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v5[2];
          v13 = *v21 == v5;
          v5 = v21;
        }

        while (!v13);
      }

      v5 = v21;
      if (v21 == v4)
      {
        return a1;
      }
    }

    v15 = v3;
    v14 = v3;
    if (v8)
    {
      v16 = a1[1];
      while (1)
      {
        while (1)
        {
          v14 = v16;
          v17 = *(v16 + 32);
          if (v17 <= v7)
          {
            break;
          }

          v16 = *v14;
          v15 = v14;
          if (!*v14)
          {
            goto LABEL_25;
          }
        }

        if (v17 >= v7)
        {
          goto LABEL_28;
        }

        v16 = v14[1];
        if (!v16)
        {
          v15 = v14 + 1;
          break;
        }
      }
    }

LABEL_25:
    v18 = operator new(0x38uLL);
    v19 = *(v5 + 2);
    v18[6] = v5[6];
    *(v18 + 2) = v19;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v14;
    *v15 = v18;
    if (*v9)
    {
      *a1 = *v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v18);
    ++a1[2];
    goto LABEL_28;
  }

  return a1;
}

void *Timestamp::Timestamp(void *a1, _OWORD *a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

__n128 Timestamp::set(uint64_t **a1, __n128 *a2, int a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v9 <= a3)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v6 = *(v8 + 1);
      if (!v6)
      {
        v7 = v8 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = (a1 + 1);
LABEL_8:
    v10 = v8;
    v8 = operator new(0x38uLL);
    *(v8 + 8) = a3;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v10;
    *v7 = v8;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
    a1[2] = (a1[2] + 1);
  }

  result = *a2;
  *(v8 + 40) = *a2;
  return result;
}

void *Timestamp::Timestamp(void *a1, uint64_t a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

uint64_t **Timestamp::Timestamp(uint64_t **a1, char *a2, char a3, int a4)
{
  v5 = a2;
  v28 = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  __p[2] = 0x11AAAAAAAAAA0053;
  *__p = *"%Y-%m-%d-%H-%M-%S";
  if ((a3 & 0x10) != 0)
  {
    HIBYTE(__p[2]) = 19;
    strcpy(__p, "%Y.%m.%d_%H-%M-%S%z");
  }

  *(&v23 + 1) = 0xAAAAAAAA00000000;
  memset(&v24, 0, sizeof(v24));
  if (a2[23] < 0)
  {
    v5 = *a2;
  }

  if (strptime(v5, __p, &v24))
  {
    v24.tm_isdst = -1;
    *&v23 = mktime(&v24);
    if (v23 != -1)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136315138;
      v27 = v20;
      _os_log_error_impl(&dword_296ECF000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = __error();
    v9 = strerror(*v8);
    *buf = 136315138;
    v27 = v9;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after absolute time conversion failed. Error: %s\n";
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
  }

  v23 = 0uLL;
  if (gettimeofday(&v23, 0) < 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v21 = __error();
    v22 = strerror(*v21);
    *buf = 136315138;
    v27 = v22;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after conversion failure. Error: %s\n";
LABEL_32:
    _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
  }

LABEL_15:
  v12 = *v7;
  v13 = v7;
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 32);
        if (v14 <= a4)
        {
          break;
        }

        v12 = *v13;
        v7 = v13;
        if (!*v13)
        {
          goto LABEL_22;
        }
      }

      if (v14 >= a4)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        v7 = v13 + 1;
        goto LABEL_22;
      }
    }

    *(v13 + 5) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    v15 = operator new(0x38uLL);
    *(v15 + 8) = a4;
    *(v15 + 5) = 0;
    *(v15 + 6) = 0;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v13;
    *v7 = v15;
    v16 = **a1;
    if (v16)
    {
      *a1 = v16;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[2] = (a1[2] + 1);
    *(v15 + 40) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_25:
      operator delete(__p[0]);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296F8CE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t Timestamp::get(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a3)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a3));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a3)
  {
    return 0;
  }

  *a2 = *(v6 + 40);
  return 1;
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v69 = *MEMORY[0x29EDCA608];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v63 = v6;
  v62 = v6;
  v61 = v6;
  v60 = v6;
  v59 = v6;
  v58 = v6;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v55 = v6;
  v54 = v6;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v51 = v6;
  __p = v6;
  v49 = v6;
  v48 = v6;
  v47 = v6;
  v46 = v6;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v57 = 0;
  v7 = MEMORY[0x29EDC9590] + 104;
  v53 = MEMORY[0x29EDC9590] + 104;
  v8 = MEMORY[0x29EDC9590] + 64;
  v45 = MEMORY[0x29EDC9590] + 64;
  v9 = MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 24);
  v43 = *(MEMORY[0x29EDC9528] + 16);
  *(&v43 + *(v43 - 24)) = v10;
  v44 = 0;
  v11 = (&v43 + *(v43 - 24));
  std::ios_base::init(v11, &v46);
  v12 = MEMORY[0x29EDC9590] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v13 = v9[5];
  v45 = v9[4];
  *(&v45 + *(v45 - 24)) = v13;
  v43 = v9[1];
  *(&v43 + *(v43 - 24)) = v9[6];
  v53 = v7;
  v43 = v12;
  v14 = MEMORY[0x29EDC9568] + 16;
  v45 = v8;
  *&v46 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C268DF0](&v46 + 8);
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v15 = MEMORY[0x29EDC9570] + 16;
  *&v46 = MEMORY[0x29EDC9570] + 16;
  __p = 0u;
  v51 = 0u;
  LODWORD(v52) = 24;
  v16 = v9;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v46);
  v19 = *(a1 + 8);
  v18 = a1 + 8;
  v17 = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = v18;
  do
  {
    if (*(v17 + 32) >= a2)
    {
      v20 = v17;
    }

    v17 = *(v17 + 8 * (*(v17 + 32) < a2));
  }

  while (v17);
  if (v20 == v18)
  {
LABEL_10:
    v22 = 0;
    v23 = 0;
    v21 = a4;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = a4;
    if (*(v20 + 32) > a2)
    {
      v22 = 0;
      v23 = 0;
      if ((a3 & 0x11) == 0)
      {
        goto LABEL_19;
      }

LABEL_11:
      v41.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v42 = v23;
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v41.tm_mon = v24;
      *&v41.tm_isdst = v24;
      *&v41.tm_sec = v24;
      localtime_r(&v42, &v41);
      v67 = 0u;
      v68 = 0u;
      *__s = 0u;
      v66 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v25 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v25 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v25, &v41);
      v26 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, __s, v26);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "-", 1);
        v27 = v45;
        v28 = &v45 + *(v45 - 24);
        if (*(v28 + 36) == -1)
        {
          std::ios_base::getloc((&v45 + *(v45 - 24)));
          v29 = std::locale::use_facet(&v64, MEMORY[0x29EDC93D0]);
          (v29->__vftable[2].~facet_0)(v29, 32);
          std::locale::~locale(&v64);
          v27 = v45;
        }

        *(v28 + 36) = 48;
        *(&v47 + *(v27 - 24)) = 3;
        MEMORY[0x29C268D10](&v45, (v22 / 1000));
      }

      goto LABEL_24;
    }

    v23 = *(v20 + 40);
    v22 = *(v20 + 48);
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_19:
  MEMORY[0x29C268D30](&v45, v23);
  if ((a3 & 4) != 0)
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_24;
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, ".", 1);
    v22 = (v22 / 1000);
  }

  MEMORY[0x29C268D10](v30, v22);
LABEL_24:
  if ((v52 & 0x10) != 0)
  {
    v32 = *(&v51 + 1);
    if (*(&v51 + 1) < v49)
    {
      *(&v51 + 1) = v49;
      v32 = v49;
    }

    v33 = *(&v48 + 1);
    v31 = v32 - *(&v48 + 1);
    if ((v32 - *(&v48 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if ((v52 & 8) == 0)
    {
      v31 = 0;
      v21[23] = 0;
      goto LABEL_38;
    }

    v33 = v47;
    v31 = v48 - v47;
    if (v48 - v47 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_42:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v35 = operator new(v34);
    *(v21 + 1) = v31;
    *(v21 + 2) = v34 | 0x8000000000000000;
    *v21 = v35;
    v21 = v35;
    goto LABEL_37;
  }

  v21[23] = v31;
  if (v31)
  {
LABEL_37:
    memmove(v21, v33, v31);
  }

LABEL_38:
  v21[v31] = 0;
  v43 = *v16;
  v36 = v16[9];
  *(&v43 + *(v43 - 24)) = v16[8];
  v45 = v36;
  *&v46 = v15;
  if (SBYTE7(v51) < 0)
  {
    operator delete(__p);
  }

  *&v46 = v14;
  std::locale::~locale(&v46 + 1);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C268E60](&v53);
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F8D62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  MEMORY[0x29C268E60](a12);
  _Unwind_Resume(a1);
}

uint64_t *Timestamp::convert(uint64_t a1)
{
  memset(v8, 170, sizeof(v8));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  Timestamp::Timestamp(v8, &__p, 9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  else
  {
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  v2 = &v8[1];
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x80000000) == 0)
    {
      v2 = v3;
    }

    v3 = *(v3 + ((v4 >> 28) & 8));
  }

  while (v3);
  if (v2 != &v8[1] && *(v2 + 8) <= 0)
  {
    v5 = v2[5];
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v8, v1);
  return v5;
}

void sub_296F8D7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Timestamp::timediffUSec(Timestamp *this, const Timestamp *a2, const Timestamp *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 8);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v4;
      }

      v4 = *&v4[(v7 >> 28) & 8];
    }

    while (v4);
    if (v6 == v3 || *(v6 + 8) > 0)
    {
      v8 = 0;
      v4 = 0;
      v11 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v11;
      if (!v11)
      {
LABEL_21:
        v18 = &v4[v8] - v10;
        if (v18 >= 0)
        {
          return v18;
        }

        else
        {
          return -v18;
        }
      }
    }

    else
    {
      v4 = *(v6 + 12);
      v8 = 1000000 * *(v6 + 5);
      v17 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = *(a2 + 1);
    v9 = a2 + 8;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = v9;
  do
  {
    v14 = *(v10 + 8);
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v10;
    }

    v10 = *&v10[(v14 >> 28) & 8];
  }

  while (v10);
  if (v13 == v9 || *(v13 + 8) > 0)
  {
    v15 = &v4[v8];
    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    v19 = &v4[v8 - *(v13 + 12) + -1000000 * *(v13 + 5)];
    if (v19 >= 0)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t diag::QMICommandDriver::create@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0xA8uLL);
  v7 = *a1;
  if (*a1)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a1 + 8);
  aBlock = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = *a2;
  v10 = a2[1];
  v13[0] = v9;
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  diag::QMICommandDriver::QMICommandDriver(v6, &aBlock, v13);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<diag::QMICommandDriver>::shared_ptr[abi:ne200100]<diag::QMICommandDriver,std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver*)#1},0>(a3, v6);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return (*(**a3 + 16))(*a3, v11);
}

void sub_296F8DB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  dispatch::callback<void({block_pointer})(diag::CommandDriver::Event,dispatch::group_session)>::~callback(&a11);
  if (v12)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t diag::QMICommandDriver::QMICommandDriver(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  diag::CommandDriver::CommandDriver();
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  *a1 = &unk_2A1E1EA50;
  *(a1 + 104) = vdup_n_s32(0x61A8u);
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = dispatch_group_create();
  *(a1 + 160) = 0;
  return a1;
}

void sub_296F8DD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  dispatch::callback<void({block_pointer})(diag::CommandDriver::Event,dispatch::group_session)>::~callback(&a11);
  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::~QMICommandDriver(diag::QMICommandDriver *this)
{
  *this = &unk_2A1E1EA50;
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 14));
    *(this + 14) = 0;
  }

  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v13, 2u);
  }

  v4 = *(this + 20);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(this + 20);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  v6 = *(this + 19);
  if (v6)
  {
    dispatch_release(v6);
  }

  qmi::Client::~Client((this + 120));
  *this = &unk_2A1E1F3A8;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  v7 = *(this + 9);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    _Block_release(v9);
  }

  MEMORY[0x29C268320](this + 40);
  v10 = *(this + 4);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void diag::QMICommandDriver::stopTimer_sync(diag::QMICommandDriver *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 14));
    *(this + 14) = 0;
  }
}

void diag::QMICommandDriver::init(diag::QMICommandDriver *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN4diag16QMICommandDriver4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_28_3;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4diag13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_166_0;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v100 = 0xAAAAAAAAAAAAAAAALL;
  v101 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v100, *(v2 + 64));
  if (!v100)
  {
    Name = diag::CommandDriver::getName(v2);
    v39 = strlen(Name);
    if (v39 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v40 = v39;
    if (v39 >= 0x17)
    {
      if ((v39 | 7) == 0x17)
      {
        v51 = 25;
      }

      else
      {
        v51 = (v39 | 7) + 1;
      }

      p_dst = operator new(v51);
      v95 = v40;
      v96 = v51 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v96) = v39;
      p_dst = &__dst;
      if (!v39)
      {
        LOBYTE(__dst) = 0;
        v42 = *(v2 + 24);
        v86 = v42;
        if (!v42)
        {
LABEL_79:
          v92 = 4;
          strcpy(v91, "diag");
          v43 = *(v2 + 16);
          if (!v43 || (v44 = *(v2 + 8), (v45 = std::__shared_weak_count::lock(v43)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v46 = v45;
          atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v84 = 0;
            v85 = 0;
            v47 = std::__shared_weak_count::lock(v45);
            if (v47)
            {
LABEL_83:
              atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v84 = v44;
              v85 = v47;
LABEL_84:
              std::__shared_weak_count::__release_weak(v46);
              if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v47->__on_zero_shared)(v47);
                std::__shared_weak_count::__release_weak(v47);
              }

              qmi::Client::createWithQueue();
              v48 = v99;
              v99 = 0uLL;
              v49 = *(v2 + 144);
              *(v2 + 136) = v48;
              if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v49->__on_zero_shared)(v49);
                std::__shared_weak_count::__release_weak(v49);
              }

              qmi::Client::~Client(buf);
              if (v85)
              {
                std::__shared_weak_count::__release_weak(v85);
              }

              if (v92 < 0)
              {
                operator delete(v91[0]);
                v15 = v86;
                if (!v86)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v15 = v86;
                if (!v86)
                {
                  goto LABEL_29;
                }
              }

LABEL_28:
              dispatch_release(v15);
              goto LABEL_29;
            }
          }

          else
          {
            (v45->__on_zero_shared)(v45);
            std::__shared_weak_count::__release_weak(v46);
            v84 = 0;
            v85 = 0;
            v47 = std::__shared_weak_count::lock(v46);
            if (v47)
            {
              goto LABEL_83;
            }
          }

          v84 = 0;
          v85 = v47;
          goto LABEL_84;
        }

LABEL_78:
        dispatch_retain(v42);
        goto LABEL_79;
      }
    }

    memmove(p_dst, Name, v40);
    *(p_dst + v40) = 0;
    v42 = *(v2 + 24);
    v86 = v42;
    if (!v42)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v3 = diag::CommandDriver::getName(v2);
  v4 = strlen(v3);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v50 = 25;
    }

    else
    {
      v50 = (v4 | 7) + 1;
    }

    v6 = operator new(v50);
    v95 = v5;
    v96 = v50 | 0x8000000000000000;
    __dst = v6;
LABEL_102:
    memmove(v6, v3, v5);
    *(v6 + v5) = 0;
    v7 = *(v2 + 24);
    v93 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIBYTE(v96) = v4;
  v6 = &__dst;
  if (v4)
  {
    goto LABEL_102;
  }

  LOBYTE(__dst) = 0;
  v7 = *(v2 + 24);
  v93 = v7;
  if (v7)
  {
LABEL_6:
    dispatch_retain(v7);
  }

LABEL_7:
  v92 = 4;
  strcpy(v91, "diag");
  v8 = *(v2 + 16);
  if (!v8 || (v9 = *(v2 + 8), (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
    v89 = 0;
    v90 = 0;
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_105:
    v89 = 0;
    v90 = v12;
    goto LABEL_12;
  }

  v89 = 0;
  v90 = 0;
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_105;
  }

LABEL_11:
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v89 = v9;
  v90 = v12;
LABEL_12:
  std::__shared_weak_count::__release_weak(v11);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v87 = v100;
  v88 = v101;
  if (v101)
  {
    atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v13 = v99;
  v99 = 0uLL;
  v14 = *(v2 + 144);
  *(v2 + 136) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  qmi::Client::~Client(buf);
  if (v88 && !atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v88->__on_zero_shared)(v88);
    std::__shared_weak_count::__release_weak(v88);
  }

  if (v90)
  {
    std::__shared_weak_count::__release_weak(v90);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  v15 = v93;
  if (v93)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (SHIBYTE(v96) < 0)
  {
    operator delete(__dst);
  }

  v77 = MEMORY[0x29EDCA5F8];
  v78 = 1174405120;
  v79 = ___ZN4diag16QMICommandDriver4initEv_block_invoke_2;
  v80 = &__block_descriptor_tmp_15;
  v17 = a1[5];
  v16 = a1[6];
  v81 = v2;
  v82 = v17;
  v83 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v70 = MEMORY[0x29EDCA5F8];
  v71 = 1174405120;
  v72 = ___ZN4diag16QMICommandDriver4initEv_block_invoke_3;
  v73 = &__block_descriptor_tmp_6_2;
  v19 = a1[5];
  v18 = a1[6];
  v74 = v2;
  v75 = v19;
  v76 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v63 = MEMORY[0x29EDCA5F8];
  v64 = 1174405120;
  v65 = ___ZN4diag16QMICommandDriver4initEv_block_invoke_7;
  v66 = &__block_descriptor_tmp_11_4;
  v21 = a1[5];
  v20 = a1[6];
  v67 = v2;
  v68 = v21;
  v69 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v56 = MEMORY[0x29EDCA5F8];
  v57 = 1174405120;
  v58 = ___ZN4diag16QMICommandDriver4initEv_block_invoke_12;
  v59 = &__block_descriptor_tmp_15_2;
  v23 = a1[5];
  v22 = a1[6];
  v60 = v2;
  v61 = v23;
  v62 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v54[1] = MEMORY[0x29EDCA5F8];
  v54[2] = 1174405120;
  v54[3] = ___ZN4diag16QMICommandDriver4initEv_block_invoke_16;
  v54[4] = &__block_descriptor_tmp_20_4;
  v25 = a1[5];
  v24 = a1[6];
  v54[5] = v2;
  v54[6] = v25;
  v55 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v26 = *(v2 + 104);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver4initEv_block_invoke_21;
  aBlock[3] = &__block_descriptor_tmp_25_1;
  v28 = a1[5];
  v27 = a1[6];
  aBlock[4] = v2;
  aBlock[5] = v28;
  v53 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = _Block_copy(aBlock);
  v54[0] = v29;
  diag::QMICommandDriver::startTimer_sync(v2, v26, v54);
  if (v29)
  {
    _Block_release(v29);
  }

  v30 = *(v2 + 16);
  if (!v30 || (v31 = *(v2 + 8), (v32 = std::__shared_weak_count::lock(v30)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v33 = v32;
  atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *buf = 0;
    v98 = 0;
    v34 = std::__shared_weak_count::lock(v32);
    if (v34)
    {
      goto LABEL_49;
    }

LABEL_96:
    v35 = v98;
    *buf = 0;
    v98 = v34;
    if (!v35)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v33);
  *buf = 0;
  v98 = 0;
  v34 = std::__shared_weak_count::lock(v33);
  if (!v34)
  {
    goto LABEL_96;
  }

LABEL_49:
  atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v35 = v98;
  *buf = v31;
  v98 = v34;
  if (v35)
  {
LABEL_50:
    std::__shared_weak_count::__release_weak(v35);
  }

LABEL_51:
  std::__shared_weak_count::__release_weak(v33);
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  qmi::Client::setClientHandle();
  if (v98)
  {
    std::__shared_weak_count::__release_weak(v98);
  }

  qmi::Client::start((v2 + 120));
  v36 = *(v2 + 40);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v36, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_weak(v69);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_weak(v76);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_weak(v83);
  }

  v37 = v101;
  if (v101)
  {
    if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }
  }
}

void sub_296F8EAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  v54 = *(v52 - 232);
  if (v54)
  {
    std::__shared_weak_count::__release_weak(v54);
    if ((*(v52 - 161) & 0x80000000) == 0)
    {
LABEL_3:
      v55 = *(v52 - 224);
      if (!v55)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v52 - 161) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v52 - 184));
  v55 = *(v52 - 224);
  if (!v55)
  {
LABEL_8:
    if (*(v52 - 129) < 0)
    {
      operator delete(*(v52 - 152));
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v52 - 96);
      _Unwind_Resume(a1);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v52 - 96);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v55);
  goto LABEL_8;
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 160);
        *(v3 + 160) = 0;
        if (v6)
        {
          dispatch_group_leave(v6);
          dispatch_release(v6);
        }

        v7 = *(v3 + 112);
        if (v7)
        {
          dispatch_source_cancel(v7);
          dispatch_release(*(v3 + 112));
          *(v3 + 112) = 0;
        }

        diag::CommandDriver::notifyOfEvent_sync();
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F8EDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_3(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 112);
        if (v6)
        {
          dispatch_source_cancel(v6);
          dispatch_release(*(v3 + 112));
          *(v3 + 112) = 0;
        }

        diag::CommandDriver::notifyOfEvent_sync();
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F8EF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_7(void *a1, NSObject *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        if (a2)
        {
          dispatch_retain(a2);
          dispatch_retain(a2);
          dispatch_group_enter(a2);
        }

        v8 = *(v5 + 20);
        *(v5 + 20) = a2;
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }

        diag::QMICommandDriver::onLowPower_sync(v5);
        if (a2)
        {
          dispatch_release(a2);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F8F040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    dispatch_release(v9);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::onLowPower_sync(diag::QMICommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v7 = *(this + 27);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver15onLowPower_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_32_5;
  aBlock[4] = this;
  aBlock[5] = v3;
  v15 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = _Block_copy(aBlock);
  v16 = v8;
  diag::QMICommandDriver::startTimer_sync(this, v7, &v16);
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = *(this + 19);
  if (v9)
  {
    dispatch_retain(*(this + 19));
    dispatch_group_enter(v9);
    v10 = *(this + 19);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 3);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4diag16QMICommandDriver15onLowPower_syncEv_block_invoke_33;
  block[3] = &__block_descriptor_tmp_36_2;
  block[4] = this;
  block[5] = v3;
  v13 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  dispatch_group_notify(v10, v11, block);
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(v9);
  }

  diag::CommandDriver::notifyOfEvent_sync();
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_296F8F284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v24)
  {
    dispatch_group_leave(v24);
    dispatch_release(v24);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_12(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        diag::CommandDriver::notifyOfEvent_sync();
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F8F3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_16(void *a1, xpc_object_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v18 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (a1[5])
  {
    __p[3] = 0;
    diag::CommandDriver::notifyOfEvent_sync();
    if (a2)
    {
      xpc_retain(a2);
      v7 = *(v5 + 40);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2 = xpc_null_create();
      v7 = *(v5 + 40);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    v10 = MEMORY[0x29C269360](a2);
    memset(__p, 170, 24);
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v11 | 7) + 1;
      }

      v13 = operator new(v14);
      __p[1] = v12;
      __p[2] = (v14 | 0x8000000000000000);
      __p[0] = v13;
    }

    else
    {
      HIBYTE(__p[2]) = v11;
      v13 = __p;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    memcpy(v13, v10, v12);
LABEL_21:
    *(v12 + v13) = 0;
    free(v10);
    v15 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v15 = __p[0];
    }

    *buf = 136315138;
    v20 = v15;
    _os_log_error_impl(&dword_296ECF000, v7, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_8:
    xpc_release(a2);
    v6 = v18;
    if (!v18)
    {
      goto LABEL_11;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F8F630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void diag::QMICommandDriver::startTimer_sync(uint64_t a1, unsigned int a2, void **a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 112);
  if (v6)
  {
    dispatch_source_cancel(v6);
    dispatch_release(*(a1 + 112));
    *(a1 + 112) = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(a1 + 24));
  *(a1 + 112) = v7;
  if (v7)
  {
    v8 = *(a1 + 16);
    if (!v8 || (v9 = *(a1 + 8), (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    p_shared_weak_owners = &v10->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v11);
    }

    v13 = *(a1 + 112);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN4diag16QMICommandDriver15startTimer_syncEjN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
    handler[3] = &__block_descriptor_tmp_29_2;
    handler[4] = v9;
    v21 = v11;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v14 = *a3;
    if (*a3)
    {
      v14 = _Block_copy(v14);
    }

    aBlock = v14;
    dispatch_source_set_event_handler(v13, handler);
    v15 = *(a1 + 112);
    v16 = dispatch_time(0, 1000000 * a2);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_activate(*(a1 + 112));
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v24 = a2;
      _os_log_debug_impl(&dword_296ECF000, v17, OS_LOG_TYPE_DEBUG, "#D Timeout set to %ums", buf, 8u);
      v18 = aBlock;
      if (!aBlock)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v18 = aBlock;
      if (!aBlock)
      {
LABEL_13:
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        std::__shared_weak_count::__release_weak(v11);
        goto LABEL_16;
      }
    }

    _Block_release(v18);
    goto LABEL_13;
  }

LABEL_16:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_296F8F8C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver4initEv_block_invoke_21(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v10 = v4;
    if (v4)
    {
      v5 = v4;
      v9 = a1[5];
      if (!v9 || (group = 0, diag::CommandDriver::notifyOfEvent_sync(), v7 = 13, strcpy(__p, "Start Timeout"), diag::QMICommandDriver::onError_sync(v3, __p), (v7 & 0x80000000) == 0))
      {
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_8:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      operator delete(__p[0]);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }
  }
}

void sub_296F8F9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_group_t group, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::onError_sync(NSObject **a1, uint64_t *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = a1[20];
  a1[20] = 0;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(a1[14]);
    a1[14] = 0;
  }

  qmi::Client::stop((a1 + 15));
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    if (!a2[1])
    {
LABEL_10:
      v8 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_10;
  }

  v7 = a1[5];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_10;
  }

  if ((v6 & 0x80000000) != 0)
  {
    a2 = *a2;
  }

  v10 = 136315138;
  v11 = a2;
  _os_log_error_impl(&dword_296ECF000, v7, OS_LOG_TYPE_ERROR, "%s", &v10, 0xCu);
  v9 = *MEMORY[0x29EDCA608];
}

void ___ZN4diag16QMICommandDriver15startTimer_syncEjN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[4])
      {
        (*(a1[6] + 16))();
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

void *__copy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE48c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE48c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN4diag16QMICommandDriver15onLowPower_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v12 = v4;
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
        goto LABEL_14;
      }

      v6 = v3[14];
      if (v6)
      {
        dispatch_source_cancel(v6);
        dispatch_release(v3[14]);
        v3[14] = 0;
      }

      v7 = v3[20];
      if (!v7 || (v3[20] = 0, dispatch_group_leave(v7), dispatch_release(v7), group = 0, diag::CommandDriver::notifyOfEvent_sync(), v8 = v3[5], !os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
      {
LABEL_14:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_11:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      *v9 = 0;
      _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "LowPower Timeout", v9, 2u);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_296F8FE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver15onLowPower_syncEv_block_invoke_33(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = v3[14];
        if (v6)
        {
          dispatch_source_cancel(v6);
          dispatch_release(v3[14]);
          v3[14] = 0;
        }

        v7 = v3[20];
        if (v7)
        {
          v3[20] = 0;
          dispatch_group_leave(v7);
          dispatch_release(v7);
          v8 = v3[5];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I LowPower Complete", v9, 2u);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void diag::QMICommandDriver::setInterface_sync(uint64_t a1, int a2, void **a3)
{
  if ((a2 - 1) > 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = dword_296FC2D30[a2 - 1];
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v7;
  v46 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v45);
  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 0x40000000;
  v8 = ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v42 = ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v43 = &__block_descriptor_tmp_38_2;
  v44 = v6;
  v9 = *(&v45 + 1);
  v10 = v46;
  v11 = *(&v45 + 1);
  if (*(&v45 + 1) != v46)
  {
    v11 = *(&v45 + 1);
    while (*(*v11 + 8) != 1)
    {
      if (++v11 == v46)
      {
        goto LABEL_12;
      }
    }
  }

  if (v11 == v46)
  {
LABEL_12:
    v15 = operator new(0x10uLL);
    v15[8] = 1;
    *v15 = &unk_2A1E1F438;
    *(v15 + 3) = 0;
    v14 = v15 + 12;
    if (v10 >= *(&v46 + 1))
    {
      v17 = v10 - v9;
      v18 = (v10 - v9) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v20 = *(&v46 + 1) - v9;
      if ((*(&v46 + 1) - v9) >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v31 = a3;
      if (v21)
      {
        if (v21 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = v15;
        v23 = v15 + 12;
        v24 = operator new(8 * v21);
        v15 = v22;
      }

      else
      {
        v23 = v15 + 12;
        v24 = 0;
      }

      v25 = &v24[8 * v18];
      *v25 = v15;
      v16 = v25 + 8;
      memcpy(v24, v9, v17);
      *(&v45 + 1) = v24;
      *&v46 = v16;
      *(&v46 + 1) = &v24[8 * v21];
      if (v9)
      {
        operator delete(v9);
      }

      v14 = v23;
      a3 = v31;
    }

    else
    {
      *v10 = v15;
      v16 = v10 + 8;
    }

    *&v46 = v16;
    v8 = v42;
  }

  else
  {
    v12 = ***v11;
    if (!v13)
    {
      __cxa_bad_cast();
    }

    v14 = v13 + 12;
  }

  v8(v41, v14);
  v26 = *(a1 + 16);
  if (!v26 || (v27 = *(a1 + 8), (v28 = std::__shared_weak_count::lock(v26)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = v28;
  atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v29);
  }

  v36 = a1 + 120;
  v37 = QMIServiceMsg::create();
  v38 = 25000;
  v39 = 0;
  v40 = 0;
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 1174405120;
  v32[2] = ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v32[3] = &__block_descriptor_tmp_42_1;
  v32[4] = a1;
  v32[5] = v27;
  v33 = v29;
  atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v35 = a2;
  v30 = *a3;
  if (*a3)
  {
    v30 = _Block_copy(v30);
  }

  v34 = v30;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v32;
  v40 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v40)
  {
    _Block_release(v40);
  }

  if (v34)
  {
    _Block_release(v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  std::__shared_weak_count::__release_weak(v29);
  qmi::MutableMessageBase::~MutableMessageBase(&v45);
}

void sub_296F9036C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  std::__shared_weak_count::__release_weak(v29);
  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    v22 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v21 = v8;
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error setting interface", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 64);
          capabilities::diag::asString();
          v13 = v20 >= 0 ? buf : *buf;
          *v23 = 136315138;
          v24 = v13;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Interface set to: %s", v23, 0xCu);
          if (v20 < 0)
          {
            operator delete(*buf);
          }
        }

        v14 = *(a1 + 56);
        if (v14)
        {
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 1174405120;
          v16[2] = ___ZN4diag16QMICommandDriver17setInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_39;
          v16[3] = &__block_descriptor_tmp_40_4;
          aBlock = _Block_copy(v14);
          v18 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v16);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_296F905EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296F90600(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4diag13CommandDriverEEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void diag::QMICommandDriver::setBufferingMode_sync(uint64_t a1, int a2, void **a3)
{
  if ((a2 - 1) > 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = dword_296FC2D30[a2 - 1];
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v7;
  v46 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v45);
  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 0x40000000;
  v8 = ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v42 = ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v43 = &__block_descriptor_tmp_44_1;
  v44 = v6;
  v9 = *(&v45 + 1);
  v10 = v46;
  v11 = *(&v45 + 1);
  if (*(&v45 + 1) != v46)
  {
    v11 = *(&v45 + 1);
    while (*(*v11 + 8) != 1)
    {
      if (++v11 == v46)
      {
        goto LABEL_12;
      }
    }
  }

  if (v11 == v46)
  {
LABEL_12:
    v15 = operator new(0x10uLL);
    v15[8] = 1;
    *v15 = &unk_2A1E1F4C0;
    *(v15 + 3) = 0;
    v14 = v15 + 12;
    if (v10 >= *(&v46 + 1))
    {
      v17 = v10 - v9;
      v18 = (v10 - v9) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v20 = *(&v46 + 1) - v9;
      if ((*(&v46 + 1) - v9) >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v31 = a3;
      if (v21)
      {
        if (v21 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = v15;
        v23 = v15 + 12;
        v24 = operator new(8 * v21);
        v15 = v22;
      }

      else
      {
        v23 = v15 + 12;
        v24 = 0;
      }

      v25 = &v24[8 * v18];
      *v25 = v15;
      v16 = v25 + 8;
      memcpy(v24, v9, v17);
      *(&v45 + 1) = v24;
      *&v46 = v16;
      *(&v46 + 1) = &v24[8 * v21];
      if (v9)
      {
        operator delete(v9);
      }

      v14 = v23;
      a3 = v31;
    }

    else
    {
      *v10 = v15;
      v16 = v10 + 8;
    }

    *&v46 = v16;
    v8 = v42;
  }

  else
  {
    v12 = ***v11;
    if (!v13)
    {
      __cxa_bad_cast();
    }

    v14 = v13 + 12;
  }

  v8(v41, v14);
  v26 = *(a1 + 16);
  if (!v26 || (v27 = *(a1 + 8), (v28 = std::__shared_weak_count::lock(v26)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = v28;
  atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v29);
  }

  v36 = a1 + 120;
  v37 = QMIServiceMsg::create();
  v38 = 25000;
  v39 = 0;
  v40 = 0;
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 1174405120;
  v32[2] = ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v32[3] = &__block_descriptor_tmp_51_3;
  v32[4] = a1;
  v32[5] = v27;
  v33 = v29;
  atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v35 = a2;
  v30 = *a3;
  if (*a3)
  {
    v30 = _Block_copy(v30);
  }

  v34 = v30;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v32;
  v40 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v40)
  {
    _Block_release(v40);
  }

  if (v34)
  {
    _Block_release(v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  std::__shared_weak_count::__release_weak(v29);
  qmi::MutableMessageBase::~MutableMessageBase(&v45);
}

void sub_296F90AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  std::__shared_weak_count::__release_weak(v29);
  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    v22 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v21 = v8;
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error setting buffering mode", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 64);
          capabilities::diag::asString();
          v13 = v20 >= 0 ? buf : *buf;
          *v23 = 136315138;
          v24 = v13;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Buffering mode set to: %s", v23, 0xCu);
          if (v20 < 0)
          {
            operator delete(*buf);
          }
        }

        v14 = *(a1 + 56);
        if (v14)
        {
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 1174405120;
          v16[2] = ___ZN4diag16QMICommandDriver21setBufferingMode_syncEN12capabilities4diag14BufferingModesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_45;
          v16[3] = &__block_descriptor_tmp_48_3;
          aBlock = _Block_copy(v14);
          v18 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v16);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_296F90D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296F90D6C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void diag::QMICommandDriver::setWaterMarks_sync(uint64_t a1, __int16 a2, __int16 a3, void **a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v74 = v8;
  v75 = v8;
  qmi::MutableMessageBase::MutableMessageBase(&v74);
  v70[0] = MEMORY[0x29EDCA5F8];
  v70[1] = 0x40000000;
  v9 = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v71 = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v72 = &__block_descriptor_tmp_53_1;
  v73 = a2;
  v10 = *(&v74 + 1);
  v11 = v75;
  v12 = *(&v74 + 1);
  if (*(&v74 + 1) != v75)
  {
    v12 = *(&v74 + 1);
    while (*(*v12 + 8) != 17)
    {
      if (++v12 == v75)
      {
        goto LABEL_9;
      }
    }
  }

  if (v12 == v75)
  {
LABEL_9:
    v16 = operator new(0x10uLL);
    v16[8] = 17;
    *v16 = &unk_2A1E1F510;
    *(v16 + 5) = 0;
    v15 = v16 + 10;
    if (v11 >= *(&v75 + 1))
    {
      v18 = v11 - v10;
      v19 = (v11 - v10) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        goto LABEL_64;
      }

      v21 = *(&v75 + 1) - v10;
      if ((*(&v75 + 1) - v10) >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      v52 = v16 + 10;
      if (v22)
      {
        v54 = a2;
        if (v22 >> 61)
        {
          goto LABEL_65;
        }

        v23 = a3;
        v24 = a4;
        v25 = v16;
        v26 = operator new(8 * v22);
        v16 = v25;
        a4 = v24;
        a3 = v23;
        a2 = v54;
      }

      else
      {
        v26 = 0;
      }

      v27 = &v26[8 * v19];
      *v27 = v16;
      v17 = v27 + 8;
      memcpy(v26, v10, v18);
      *(&v74 + 1) = v26;
      *&v75 = v17;
      *(&v75 + 1) = &v26[8 * v22];
      if (v10)
      {
        operator delete(v10);
      }

      v15 = v52;
    }

    else
    {
      *v11 = v16;
      v17 = v11 + 8;
    }

    *&v75 = v17;
    v9 = v71;
  }

  else
  {
    v13 = ***v12;
    if (!v14)
    {
      goto LABEL_63;
    }

    v15 = v14 + 10;
  }

  v9(v70, v15);
  v66[0] = MEMORY[0x29EDCA5F8];
  v66[1] = 0x40000000;
  v28 = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v67 = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v68 = &__block_descriptor_tmp_55_1;
  v69 = a3;
  v29 = *(&v74 + 1);
  v30 = v75;
  v31 = *(&v74 + 1);
  if (*(&v74 + 1) != v75)
  {
    v31 = *(&v74 + 1);
    while (*(*v31 + 8) != 16)
    {
      if (++v31 == v75)
      {
        goto LABEL_33;
      }
    }
  }

  if (v31 == v75)
  {
LABEL_33:
    v35 = operator new(0x10uLL);
    v35[8] = 16;
    *v35 = &unk_2A1E1F560;
    *(v35 + 5) = 0;
    v34 = v35 + 10;
    if (v30 < *(&v75 + 1))
    {
      *v30 = v35;
      v36 = v30 + 8;
LABEL_48:
      *&v75 = v36;
      v28 = v67;
      goto LABEL_49;
    }

    v37 = v30 - v29;
    v38 = (v30 - v29) >> 3;
    v39 = v38 + 1;
    if (!((v38 + 1) >> 61))
    {
      v40 = *(&v75 + 1) - v29;
      if ((*(&v75 + 1) - v29) >> 2 > v39)
      {
        v39 = v40 >> 2;
      }

      if (v40 >= 0x7FFFFFFFFFFFFFF8)
      {
        v41 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = v39;
      }

      v53 = v35 + 10;
      if (!v41)
      {
        v45 = 0;
        goto LABEL_45;
      }

      v55 = a2;
      if (!(v41 >> 61))
      {
        v42 = a3;
        v43 = a4;
        v44 = v35;
        v45 = operator new(8 * v41);
        v35 = v44;
        a4 = v43;
        a3 = v42;
        a2 = v55;
LABEL_45:
        v46 = &v45[8 * v38];
        *v46 = v35;
        v36 = v46 + 8;
        memcpy(v45, v29, v37);
        *(&v74 + 1) = v45;
        *&v75 = v36;
        *(&v75 + 1) = &v45[8 * v41];
        if (v29)
        {
          operator delete(v29);
        }

        v34 = v53;
        goto LABEL_48;
      }

LABEL_65:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_64:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v32 = ***v31;
  if (!v33)
  {
LABEL_63:
    __cxa_bad_cast();
  }

  v34 = v33 + 10;
LABEL_49:
  v28(v66, v34);
  v47 = *(a1 + 16);
  if (!v47 || (v48 = *(a1 + 8), (v49 = std::__shared_weak_count::lock(v47)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v50 = v49;
  atomic_fetch_add_explicit(&v49->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v50);
  }

  v61 = a1 + 120;
  v62 = QMIServiceMsg::create();
  v63 = 25000;
  v64 = 0;
  v65 = 0;
  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = 1174405120;
  v56[2] = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_3;
  v56[3] = &__block_descriptor_tmp_62_4;
  v56[4] = a1;
  v56[5] = v48;
  v57 = v50;
  atomic_fetch_add_explicit(&v50->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v59 = a2;
  v60 = a3;
  v51 = *a4;
  if (*a4)
  {
    v51 = _Block_copy(v51);
  }

  v58 = v51;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v56;
  v65 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v65)
  {
    _Block_release(v65);
  }

  if (v58)
  {
    _Block_release(v58);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  std::__shared_weak_count::__release_weak(v50);
  qmi::MutableMessageBase::~MutableMessageBase(&v74);
}

void sub_296F91368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock, uint64_t a19, char a20)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a20);
  std::__shared_weak_count::__release_weak(v20);
  qmi::MutableMessageBase::~MutableMessageBase((v21 - 176));
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error setting water marks", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 64);
          v13 = *(a1 + 66);
          *buf = 67109376;
          v20 = v12;
          v21 = 1024;
          v22 = v13;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Water marks set to: %u,%u", buf, 0xEu);
        }

        v14 = *(a1 + 56);
        if (v14)
        {
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 1174405120;
          v16[2] = ___ZN4diag16QMICommandDriver18setWaterMarks_syncEttN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_56;
          v16[3] = &__block_descriptor_tmp_59_4;
          aBlock = _Block_copy(v14);
          v18 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v16);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_296F915D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::drainBuffer_sync(uint64_t a1, void **a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v4;
  v18[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v18);
  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(a1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v13 = a1 + 120;
  v14 = QMIServiceMsg::create();
  v15 = 25000;
  v16 = 0;
  v17 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4diag16QMICommandDriver16drainBuffer_syncEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_69_7;
  v10[4] = a1;
  v10[5] = v6;
  v11 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = *a2;
  if (*a2)
  {
    v9 = _Block_copy(v9);
  }

  v12 = v9;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v10;
  v17 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v17)
  {
    _Block_release(v17);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::__shared_weak_count::__release_weak(v8);
  qmi::MutableMessageBase::~MutableMessageBase(v18);
}

void sub_296F917E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  std::__shared_weak_count::__release_weak(v23);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void sub_296F9182C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver16drainBuffer_syncEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error requesting drain of DIAG buffer", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Requested to drain DIAG buffer", buf, 2u);
        }

        v12 = a1[7];
        if (v12)
        {
          v13[0] = MEMORY[0x29EDCA5F8];
          v13[1] = 1174405120;
          v13[2] = ___ZN4diag16QMICommandDriver16drainBuffer_syncEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_63;
          v13[3] = &__block_descriptor_tmp_66_0;
          aBlock = _Block_copy(v12);
          v15 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v13);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void diag::QMICommandDriver::setPresetID_sync(uint64_t a1, char a2, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v6;
  v43 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v42);
  v38[0] = MEMORY[0x29EDCA5F8];
  v38[1] = 0x40000000;
  v7 = ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v39 = ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v40 = &__block_descriptor_tmp_71_1;
  v41 = a2;
  v8 = *(&v42 + 1);
  v9 = v43;
  v10 = *(&v42 + 1);
  if (*(&v42 + 1) != v43)
  {
    v10 = *(&v42 + 1);
    while (*(*v10 + 8) != 1)
    {
      if (++v10 == v43)
      {
        goto LABEL_9;
      }
    }
  }

  if (v10 == v43)
  {
LABEL_9:
    v14 = operator new(0x10uLL);
    v15 = v14;
    v14[4] = 1;
    *v14 = &unk_2A1E1F5B0;
    if (v9 >= *(&v43 + 1))
    {
      v17 = v9 - v8;
      v18 = (v9 - v8) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v20 = *(&v43 + 1) - v8;
      if ((*(&v43 + 1) - v8) >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = operator new(8 * v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v22[8 * v18];
      *v23 = v15;
      v16 = v23 + 8;
      memcpy(v22, v8, v17);
      *(&v42 + 1) = v22;
      *&v43 = v16;
      *(&v43 + 1) = &v22[8 * v21];
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v9 = v14;
      v16 = v9 + 8;
    }

    v13 = v15 + 9;
    *&v43 = v16;
    v7 = v39;
  }

  else
  {
    v11 = ***v10;
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 9;
  }

  v7(v38, v13);
  v24 = *(a1 + 16);
  if (!v24 || (v25 = *(a1 + 8), (v26 = std::__shared_weak_count::lock(v24)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = v26;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v27);
  }

  v33 = a1 + 120;
  v34 = QMIServiceMsg::create();
  v35 = 25000;
  v36 = 0;
  v37 = 0;
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 1174405120;
  v29[2] = ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
  v29[3] = &__block_descriptor_tmp_78_1;
  v29[4] = a1;
  v29[5] = v25;
  v30 = v27;
  atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v32 = a2;
  v28 = *a3;
  if (*a3)
  {
    v28 = _Block_copy(v28);
  }

  v31 = v28;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3;
  aBlock[3] = &unk_29EE60848;
  aBlock[4] = v29;
  v37 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v37)
  {
    _Block_release(v37);
  }

  if (v31)
  {
    _Block_release(v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  std::__shared_weak_count::__release_weak(v27);
  qmi::MutableMessageBase::~MutableMessageBase(&v42);
}

void sub_296F91DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  qmi::Client::SendProxy::~SendProxy(&a19);
  std::__shared_weak_count::__release_weak(v29);
  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v9 == 0;
        v11 = *(v5 + 40);
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Error setting mask preset ID", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 64);
          *buf = 67109120;
          v19 = v12;
          _os_log_impl(&dword_296ECF000, v11, OS_LOG_TYPE_DEFAULT, "#I Logging preset ID set to: %u", buf, 8u);
        }

        v13 = *(a1 + 56);
        if (v13)
        {
          v15[0] = MEMORY[0x29EDCA5F8];
          v15[1] = 1174405120;
          v15[2] = ___ZN4diag16QMICommandDriver16setPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_72;
          v15[3] = &__block_descriptor_tmp_75_1;
          aBlock = _Block_copy(v13);
          v17 = v10;
          ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v15);
          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_296F9201C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void diag::QMICommandDriver::isCurrentPresetID_sync(uint64_t a1, char a2, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v6;
  v21[1] = v6;
  qmi::MutableMessageBase::MutableMessageBase(v21);
  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(a1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  v16 = a1 + 120;
  v17 = QMIServiceMsg::create();
  v18 = 25000;
  v19 = 0;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_88;
  v12[4] = a1;
  v12[5] = v8;
  v13 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = a2;
  v11 = *a3;
  if (*a3)
  {
    v11 = _Block_copy(v11);
  }

  v14 = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15DIAGGetPresetID8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60870;
  aBlock[4] = v12;
  v20 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v20)
  {
    _Block_release(v20);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v10);
  qmi::MutableMessageBase::~MutableMessageBase(v21);
}

void sub_296F92234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  std::__shared_weak_count::__release_weak(v23);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void sub_296F92280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    v32 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v31 = v8;
      if (!v8)
      {
LABEL_19:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2000000000;
      v9 = *(a2 + 1);
      v30 = v9 == 0;
      if (v9)
      {
        v10 = *(v5 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error setting mask preset ID", buf, 2u);
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        v17[0] = MEMORY[0x29EDCA5F8];
        v17[1] = 1174405120;
        v17[2] = ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_82;
        v17[3] = &unk_2A1E1EEA0;
        v17[4] = v29;
        aBlock = _Block_copy(v11);
        ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v17);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      else
      {
        v20[0] = MEMORY[0x29EDCA5F8];
        v20[1] = 1174405120;
        v21 = ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
        v22 = &unk_2A1E1EE68;
        v23 = v29;
        v24 = v5;
        v28 = *(a1 + 64);
        v12 = *(a1 + 56);
        if (v12)
        {
          v12 = _Block_copy(v12);
        }

        v25 = v12;
        v26 = v8;
        v27 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v15 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v14, 1);
          buf[0] = *v15;
          v21(v20, buf);
        }

        v16 = v27;
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        if (v25)
        {
          _Block_release(v25);
        }
      }

LABEL_18:
      _Block_object_dispose(v29, 8);
      v7 = v32;
      if (!v32)
      {
        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_296F92540(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F92444);
}

void sub_296F92578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *aBlock)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 + 56);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose((v24 - 112), 8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v24 - 80);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(uint64_t a1, unsigned __int8 *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 72) == v3;
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Current logging preset ID is: %u", buf, 8u);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 56);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN4diag16QMICommandDriver22isCurrentPresetID_syncEhN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_79;
    v10[3] = &unk_2A1E1EE30;
    v8 = _Block_copy(v6);
    v10[4] = *(a1 + 32);
    aBlock = v8;
    ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v7 + 8), v10);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F926E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c48_ZTSNSt3__110shared_ptrIN4diag13CommandDriverEEE(void *a1, void *a2)
{
  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[7];
  v5 = a2[8];
  a1[6] = result;
  a1[7] = v6;
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c48_ZTSNSt3__110shared_ptrIN4diag13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  _Block_release(v2);
}

void diag::QMICommandDriver::isCurrentInterface_sync(uint64_t a1, int a2, void **a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v6;
  v21[1] = v6;
  qmi::MutableMessageBase::MutableMessageBase(v21);
  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(a1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  v16 = a1 + 120;
  v17 = QMIServiceMsg::create();
  v18 = 25000;
  v19 = 0;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_103_0;
  v12[4] = a1;
  v12[5] = v8;
  v13 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = a2;
  v11 = *a3;
  if (*a3)
  {
    v11 = _Block_copy(v11);
  }

  v14 = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm9DIAGProbe8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60898;
  aBlock[4] = v12;
  v20 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v20)
  {
    _Block_release(v20);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v10);
  qmi::MutableMessageBase::~MutableMessageBase(v21);
}

void sub_296F92A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  std::__shared_weak_count::__release_weak(v23);
  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void sub_296F92A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    v32 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v31 = v8;
      if (!v8)
      {
LABEL_19:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2000000000;
      v9 = *(a2 + 1);
      v30 = v9 == 0;
      if (v9)
      {
        v10 = *(v5 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error checking for active DIAG interface", buf, 2u);
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v11 = *(a1 + 56);
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        v17[0] = MEMORY[0x29EDCA5F8];
        v17[1] = 1174405120;
        v17[2] = ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_97;
        v17[3] = &unk_2A1E1EF78;
        v17[4] = v29;
        aBlock = _Block_copy(v11);
        ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v17);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      else
      {
        v20[0] = MEMORY[0x29EDCA5F8];
        v20[1] = 1174405120;
        v21 = ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2;
        v22 = &unk_2A1E1EF40;
        v23 = v29;
        v24 = v5;
        v28 = *(a1 + 64);
        v12 = *(a1 + 56);
        if (v12)
        {
          v12 = _Block_copy(v12);
        }

        v25 = v12;
        v26 = v8;
        v27 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v15 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v14, 1);
          buf[0] = *v15;
          v21(v20, buf);
        }

        v16 = v27;
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        if (v25)
        {
          _Block_release(v25);
        }
      }

LABEL_18:
      _Block_object_dispose(v29, 8);
      v7 = v32;
      if (!v32)
      {
        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_296F92D4C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F92C50);
}

void sub_296F92D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *aBlock)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 + 56);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose((v24 - 112), 8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v24 - 80);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_2(uint64_t a1, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  v4 = *a2;
  if (v4 > 2)
  {
    v5 = *(v3 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a1 + 72) == dword_296FC2D24[v4];
    v5 = *(v3 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  capabilities::diag::asString();
  if (v14 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  *buf = 136315138;
  v16 = p_p;
  _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Current DIAG interface is: %s", buf, 0xCu);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_9:
    v7 = *(a1 + 48);
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  operator delete(__p);
  v7 = *(a1 + 48);
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_10:
  v8 = *(a1 + 56);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN4diag16QMICommandDriver23isCurrentInterface_syncEN12capabilities4diag10InterfacesEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke_89;
  v11[3] = &unk_2A1E1EF08;
  v9 = _Block_copy(v7);
  v11[4] = *(a1 + 32);
  aBlock = v9;
  ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((v8 + 8), v11);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

LABEL_12:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296F92F60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t diag::QMICommandDriver::validateCommands_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v16 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x1ED) == 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109120;
      v15[1] = v2;
      _os_log_error_impl(&dword_296ECF000, v11, OS_LOG_TYPE_ERROR, "Invalid QMI Command mask passed - 0x%x", v15, 8u);
      v2 = 0;
      v14 = *MEMORY[0x29EDCA608];
      return v2;
    }

    v2 = 0;
    goto LABEL_27;
  }

  if (a2)
  {
    v2 = a2 & 0xFFFFFFFE;
    v4 = *(a1 + 40);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Set interface unsupported", v15, 2u);
    }
  }

  if ((v2 & 4) != 0)
  {
    a1 = capabilities::diag::supportsBuffering(a1);
    if ((a1 & 1) == 0)
    {
      v2 = v2 & 0xFFFFFFFB;
      v5 = *(v3 + 40);
      a1 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Set buffering mode unsupported", v15, 2u);
      }
    }
  }

  if ((v2 & 8) != 0)
  {
    a1 = capabilities::diag::supportsBuffering(a1);
    if ((a1 & 1) == 0)
    {
      v2 = v2 & 0xFFFFFFF7;
      v6 = *(v3 + 40);
      a1 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Set water marks unsupported", v15, 2u);
      }
    }
  }

  if ((v2 & 0x20) != 0)
  {
    a1 = capabilities::diag::supportsBuffering(a1);
    if ((a1 & 1) == 0)
    {
      v2 = v2 & 0xFFFFFFDF;
      v7 = *(v3 + 40);
      a1 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEFAULT, "#I Draining DIAG buffer unsupported", v15, 2u);
      }
    }
  }

  if ((v2 & 0x40) != 0)
  {
    a1 = capabilities::diag::supportsMultipleMasks(a1);
    if ((a1 & 1) == 0)
    {
      v2 = v2 & 0xFFFFFFBF;
      v8 = *(v3 + 40);
      a1 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Setting logging preset ID unsupported", v15, 2u);
      }
    }
  }

  if ((v2 & 0x80) == 0 || (capabilities::diag::supportsMultipleMasks(a1) & 1) != 0 || (v2 = v2 & 0xFFFFFF7F, v9 = *(v3 + 40), !os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT)))
  {
LABEL_27:
    v12 = *MEMORY[0x29EDCA608];
    return v2;
  }

  LOWORD(v15[0]) = 0;
  _os_log_impl(&dword_296ECF000, v9, OS_LOG_TYPE_DEFAULT, "#I Checking current logging preset ID unsupported", v15, 2u);
  v10 = *MEMORY[0x29EDCA608];
  return v2;
}

void diag::QMICommandDriver::stop(diag::QMICommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN4diag16QMICommandDriver4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_105_0;
  v1[4] = this;
  ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped(this + 1, v1);
}

void ___ZN4diag16QMICommandDriver4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 11;
  strcpy(__p, "Forced stop");
  diag::QMICommandDriver::onError_sync(v1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296F93344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void diag::QMICommandDriver::perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = diag::QMICommandDriver::validateCommands_sync(a1, a2);
  if (v9)
  {
    v10 = v9;
    block = 0;
    p_block = &block;
    v74 = 0x2000000000;
    LODWORD(v75) = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2000000000;
    v71 = 1;
    if (v9)
    {
      v62[0] = MEMORY[0x29EDCA5F8];
      v62[1] = 1174405120;
      v62[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
      v62[3] = &unk_2A1E1F018;
      v62[5] = &v68;
      v62[6] = a1;
      v65 = a3;
      v66 = a4;
      v62[4] = &block;
      v67 = v9;
      v11 = *a5;
      if (*a5)
      {
        v11 = _Block_copy(v11);
      }

      v12 = *(a5 + 8);
      v63 = v11;
      v64 = v12;
      if (v12)
      {
        dispatch_retain(v12);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v62);
      if (v64)
      {
        dispatch_release(v64);
      }

      if (v63)
      {
        _Block_release(v63);
      }
    }

    if ((v10 & 4) != 0 && *(v69 + 24) == 1)
    {
      v56[0] = MEMORY[0x29EDCA5F8];
      v56[1] = 1174405120;
      v56[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_110;
      v56[3] = &unk_2A1E1F088;
      v59 = a3;
      v60 = a4;
      v56[4] = &block;
      v56[5] = &v68;
      v56[6] = a1;
      v61 = v10;
      v13 = *a5;
      if (*a5)
      {
        v13 = _Block_copy(v13);
      }

      v14 = *(a5 + 8);
      aBlock = v13;
      object = v14;
      if (v14)
      {
        dispatch_retain(v14);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v56);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }
    }

    if ((v10 & 8) != 0 && *(v69 + 24) == 1)
    {
      v50[0] = MEMORY[0x29EDCA5F8];
      v50[1] = 1174405120;
      v50[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_118;
      v50[3] = &unk_2A1E1F0F8;
      v53 = a3;
      v54 = a4;
      v50[4] = &block;
      v50[5] = &v68;
      v50[6] = a1;
      v55 = v10;
      v15 = *a5;
      if (*a5)
      {
        v15 = _Block_copy(v15);
      }

      v16 = *(a5 + 8);
      v51 = v15;
      v52 = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v50);
      if (v52)
      {
        dispatch_release(v52);
      }

      if (v51)
      {
        _Block_release(v51);
      }
    }

    if ((v10 & 0x20) != 0 && *(v69 + 24) == 1)
    {
      v46[0] = MEMORY[0x29EDCA5F8];
      v46[1] = 1174405120;
      v46[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_126;
      v46[3] = &unk_2A1E1F168;
      v46[4] = &block;
      v46[5] = &v68;
      v46[6] = a1;
      v49 = v10;
      v17 = *a5;
      if (*a5)
      {
        v17 = _Block_copy(v17);
      }

      v18 = *(a5 + 8);
      v47 = v17;
      v48 = v18;
      if (v18)
      {
        dispatch_retain(v18);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v46);
      if (v48)
      {
        dispatch_release(v48);
      }

      if (v47)
      {
        _Block_release(v47);
      }
    }

    if ((v10 & 0x40) != 0 && *(v69 + 24) == 1)
    {
      v40[0] = MEMORY[0x29EDCA5F8];
      v40[1] = 1174405120;
      v40[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_134;
      v40[3] = &unk_2A1E1F1D8;
      v43 = a3;
      v44 = a4;
      v40[4] = &block;
      v40[5] = &v68;
      v40[6] = a1;
      v45 = v10;
      v19 = *a5;
      if (*a5)
      {
        v19 = _Block_copy(v19);
      }

      v20 = *(a5 + 8);
      v41 = v19;
      v42 = v20;
      if (v20)
      {
        dispatch_retain(v20);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v40);
      if (v42)
      {
        dispatch_release(v42);
      }

      if (v41)
      {
        _Block_release(v41);
      }
    }

    if ((v10 & 0x80) != 0 && *(v69 + 24) == 1)
    {
      v34[0] = MEMORY[0x29EDCA5F8];
      v34[1] = 1174405120;
      v34[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_142;
      v34[3] = &unk_2A1E1F248;
      v37 = a3;
      v38 = a4;
      v34[4] = &block;
      v34[5] = &v68;
      v34[6] = a1;
      v39 = v10;
      v21 = *a5;
      if (*a5)
      {
        v21 = _Block_copy(v21);
      }

      v22 = *(a5 + 8);
      v35 = v21;
      v36 = v22;
      if (v22)
      {
        dispatch_retain(v22);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v34);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (v35)
      {
        _Block_release(v35);
      }
    }

    if ((v10 & 0x100) != 0 && *(v69 + 24) == 1)
    {
      v28[0] = MEMORY[0x29EDCA5F8];
      v28[1] = 1174405120;
      v28[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_150;
      v28[3] = &unk_2A1E1F2B8;
      v31 = a3;
      v32 = a4;
      v28[4] = &block;
      v28[5] = &v68;
      v28[6] = a1;
      v33 = v10;
      v23 = *a5;
      if (*a5)
      {
        v23 = _Block_copy(v23);
      }

      v24 = *(a5 + 8);
      v29 = v23;
      v30 = v24;
      if (v24)
      {
        dispatch_retain(v24);
      }

      ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped((a1 + 8), v28);
      if (v30)
      {
        dispatch_release(v30);
      }

      if (v29)
      {
        _Block_release(v29);
      }
    }

    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(&block, 8);
  }

  else
  {
    if (*a5)
    {
      v25 = _Block_copy(*a5);
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a5 + 8);
    block = MEMORY[0x29EDCA5F8];
    p_block = 1174405120;
    v74 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v75 = &__block_descriptor_tmp_177_0;
    if (v25)
    {
      v27 = _Block_copy(v25);
    }

    else
    {
      v27 = 0;
    }

    v76 = v27;
    v77 = 1;
    dispatch_async(v26, &block);
    if (v76)
    {
      _Block_release(v76);
    }

    if (v25)
    {
      _Block_release(v25);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 72);
    capabilities::diag::asString();
    v5 = v18 >= 0 ? &__p : __p;
    *buf = 136315138;
    v20 = v5;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting interface to: %s", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  v6 = *(a1 + 72);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_106;
  aBlock[3] = &unk_2A1E1EFE0;
  v12 = *(a1 + 32);
  v15 = *(a1 + 88);
  v7 = *(a1 + 56);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a1 + 64);
  v13 = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = _Block_copy(aBlock);
  v16 = v9;
  diag::QMICommandDriver::setInterface_sync(v2, v6, &v16);
  if (v9)
  {
    _Block_release(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296F93B68(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_106(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 1u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void __copy_helper_block_e8_48c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_48c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    _Block_release(v3);
  }
}

void __copy_helper_block_e8_56c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_56c46_ZTSN8dispatch8callbackIU13block_pointerFvbEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_110(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 76);
    capabilities::diag::asString();
    v5 = v18 >= 0 ? &__p : __p;
    *buf = 136315138;
    v20 = v5;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting buffering mode to: %s", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  v6 = *(a1 + 76);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_111;
  aBlock[3] = &unk_2A1E1F050;
  v12 = *(a1 + 32);
  v15 = *(a1 + 88);
  v7 = *(a1 + 56);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a1 + 64);
  v13 = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = _Block_copy(aBlock);
  v16 = v9;
  diag::QMICommandDriver::setBufferingMode_sync(v2, v6, &v16);
  if (v9)
  {
    _Block_release(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296F93FA8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_111(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 4u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_118(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 82);
    v5 = *(a1 + 80);
    *buf = 67109376;
    v19 = v4;
    v20 = 1024;
    v21 = v5;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting water marks to: %u,%u", buf, 0xEu);
  }

  v6 = *(a1 + 82);
  v7 = *(a1 + 80);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_119;
  v12[3] = &unk_2A1E1F0C0;
  v13 = *(a1 + 32);
  v16 = *(a1 + 88);
  v8 = *(a1 + 56);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a1 + 64);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = _Block_copy(v12);
  v17 = v10;
  diag::QMICommandDriver::setWaterMarks_sync(v2, v6, v7, &v17);
  if (v10)
  {
    _Block_release(v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_296F942A0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_119(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 8u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_126(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Draining Baseband DIAG buffer", buf, 2u);
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_127;
  v7[3] = &unk_2A1E1F130;
  v8 = *(a1 + 32);
  v11 = *(a1 + 72);
  v4 = *(a1 + 56);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 64);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = _Block_copy(v7);
  v12 = v6;
  diag::QMICommandDriver::drainBuffer_sync(v2, &v12);
  if (v6)
  {
    _Block_release(v6);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_296F94540(_Unwind_Exception *a1)
{
  if (v1)
  {
    _Block_release(v1);
  }

  dispatch::callback<void({block_pointer})(BOOL)>::~callback(v2 + 48);
  _Unwind_Resume(a1);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_127(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 0x20u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_134(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 84);
    *buf = 67109120;
    v17 = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting logging preset ID to: %u", buf, 8u);
  }

  v5 = *(a1 + 84);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_135;
  v10[3] = &unk_2A1E1F1A0;
  v11 = *(a1 + 32);
  v14 = *(a1 + 88);
  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a1 + 64);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = _Block_copy(v10);
  v15 = v8;
  diag::QMICommandDriver::setPresetID_sync(v2, v5, &v15);
  if (v8)
  {
    _Block_release(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F947F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_135(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 0x40u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_142(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 84);
    *buf = 67109120;
    v17 = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Checking if DIAG preset ID is: %u", buf, 8u);
  }

  v5 = *(a1 + 84);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_143;
  v10[3] = &unk_2A1E1F210;
  v11 = *(a1 + 32);
  v14 = *(a1 + 88);
  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a1 + 64);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = _Block_copy(v10);
  v15 = v8;
  diag::QMICommandDriver::isCurrentPresetID_sync(v2, v5, &v15);
  if (v8)
  {
    _Block_release(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F94AD0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_143(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 0x80u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_150(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 72);
    capabilities::diag::asString();
    v5 = v18 >= 0 ? &__p : __p;
    *buf = 136315138;
    v20 = v5;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Checking if DIAG is active on: %s", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  v6 = *(a1 + 72);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_151;
  aBlock[3] = &unk_2A1E1F280;
  v12 = *(a1 + 32);
  v15 = *(a1 + 88);
  v7 = *(a1 + 56);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a1 + 64);
  v13 = v7;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = _Block_copy(aBlock);
  v16 = v9;
  diag::QMICommandDriver::isCurrentInterface_sync(v2, v6, &v16);
  if (v9)
  {
    _Block_release(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296F94DD8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4diag16QMICommandDriver7performENS_13CommandDriver7CommandENS1_7OptionsEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke_151(uint64_t a1, char a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= 0x100u;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (*(a1 + 64) == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(v4 + 8) + 24);
    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_177_0;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v5;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

atomic_ullong *std::shared_ptr<diag::QMICommandDriver>::shared_ptr[abi:ne200100]<diag::QMICommandDriver,std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E1F3D0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296F95068(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver*)#1}::operator() const(diag::QMICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<diag::QMICommandDriver *,std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver *)#1},std::allocator<diag::QMICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<diag::QMICommandDriver *,std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver *)#1},std::allocator<diag::QMICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4diag13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4diag13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4diag13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4diag13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<diag::QMICommandDriver> ctu::SharedSynchronizable<diag::CommandDriver>::make_shared_ptr<diag::QMICommandDriver>(diag::QMICommandDriver*)::{lambda(diag::QMICommandDriver*)#1}::operator() const(diag::QMICommandDriver*)::{lambda(void *)#1}::__invoke(diag::QMICommandDriver *a1)
{
  if (a1)
  {
    diag::QMICommandDriver::~QMICommandDriver(a1);

    operator delete(v1);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGConfig>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 12);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGConfig>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1F438;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ctu::SharedSynchronizable<diag::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4diag13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E1F468;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4diag13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4diag13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  cast_message_type<qmi::ResponseBase const&>::cast(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_296F95474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGBuffering>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 12);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGBuffering>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1F4C0;
  *(result + 3) = *(a1 + 12);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGWMLow>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGWMLow>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1F510;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGWMHigh>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 10);
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGWMHigh>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1F560;
  *(result + 5) = *(a1 + 10);
  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGPresetID>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DIAGPresetID>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1F5B0;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15DIAGGetPresetID8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F95778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm9DIAGProbe8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F95894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void data::QMIDataCommandDriver::checkError(const qmi::ResponseBase *a1@<X1>, CFTypeRef *a2@<X8>)
{
  *a2 = 0;
  if (!*(a1 + 1))
  {
    return;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[7] = v5;
  v28[8] = v5;
  v28[5] = v5;
  v28[6] = v5;
  v28[3] = v5;
  v28[4] = v5;
  v28[1] = v5;
  v28[2] = v5;
  v27 = v5;
  v28[0] = v5;
  *v25 = v5;
  v26 = v5;
  v23 = v5;
  v24 = v5;
  v21 = v5;
  v22 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  v6 = *(a1 + 1);
  v7 = qmi::asString();
  v8 = strlen(v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "(", 3);
  v11 = MEMORY[0x29C268D20](v10, *(a1 + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ")", 2);
  if ((BYTE8(v27) & 0x10) != 0)
  {
    v14 = v27;
    if (v27 < *(&v24 + 1))
    {
      *&v27 = *(&v24 + 1);
      v14 = *(&v24 + 1);
    }

    v15 = v24;
    v12 = v14 - v24;
    if ((v14 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((BYTE8(v27) & 8) == 0)
    {
      v12 = 0;
      HIBYTE(v19) = 0;
      v13 = __p;
      goto LABEL_16;
    }

    v15 = *(&v22 + 1);
    v12 = *(&v23 + 1) - *(&v22 + 1);
    if (*(&v23 + 1) - *(&v22 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_28:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v12 | 7) + 1;
    }

    v13 = operator new(v16);
    __p[1] = v12;
    v19 = v16 | 0x8000000000000000;
    __p[0] = v13;
    goto LABEL_15;
  }

  HIBYTE(v19) = v12;
  v13 = __p;
  if (v12)
  {
LABEL_15:
    memmove(v13, v15, v12);
  }

LABEL_16:
  *(v13 + v12) = 0;
  CreateError();
  if (&cf == a2)
  {
    goto LABEL_19;
  }

  v17 = *a2;
  *a2 = cf;
  cf = 0;
  if (v17)
  {
    CFRelease(v17);
LABEL_19:
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  *&v21 = *MEMORY[0x29EDC9538];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v21 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  *(&v21 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v22);
  std::ostream::~ostream();
  MEMORY[0x29C268E60](v28);
}

void sub_296F95BDC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C268E60](va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(v22);
  _Unwind_Resume(a1);
}

uint64_t data::QMIDataCommandDriver::create@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x78uLL);
  v5 = *a1;
  v6 = a1[1];
  v13 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v14 = 0;
  }

  data::CommandDriver::CommandDriver();
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  *v4 = &unk_2A1E1F618;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *a2 = v4;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = operator new(0x20uLL);
  v7[1] = 0;
  v8 = v7 + 1;
  *v7 = &unk_2A1E1FC18;
  v7[2] = 0;
  v7[3] = v4;
  a2[1] = v7;
  v9 = *(v4 + 2);
  if (v9)
  {
    if (v9->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v7 + 2, 1uLL, memory_order_relaxed);
      *(v4 + 1) = v4;
      *(v4 + 2) = v7;
      v10 = v7;
      std::__shared_weak_count::__release_weak(v9);
      v7 = v10;
      if (!atomic_fetch_add(v8, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v7 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 1) = v4;
    *(v4 + 2) = v7;
    if (!atomic_fetch_add(v8, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_12:
      v11 = v7;
      (*(*v7 + 16))(v7);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  return (*(**a2 + 80))(*a2);
}

void sub_296F95E8C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<data::QMIDataCommandDriver> ctu::SharedSynchronizable<data::CommandDriver>::make_shared_ptr<data::QMIDataCommandDriver>(data::QMIDataCommandDriver*)::{lambda(data::QMIDataCommandDriver*)#1}::operator() const(data::QMIDataCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_296F95EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F95ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t data::QMIDataCommandDriver::QMIDataCommandDriver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  data::CommandDriver::CommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E1F618;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  data::CommandDriver::CommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E1F618;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void data::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E1FBB0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C268320](this + 5);
  v3 = this[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[3];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void data::QMIDataCommandDriver::~QMIDataCommandDriver(void **this)
{
  *this = &unk_2A1E1F618;
  qmi::Client::~Client((this + 11));

  data::CommandDriver::~CommandDriver(this);
}

{
  *this = &unk_2A1E1F618;
  qmi::Client::~Client((this + 11));

  data::CommandDriver::~CommandDriver(this);
}

{
  *this = &unk_2A1E1F618;
  qmi::Client::~Client((this + 11));
  data::CommandDriver::~CommandDriver(this);

  operator delete(v2);
}

void data::QMIDataCommandDriver::init(data::QMIDataCommandDriver *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = (this + 8);
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN4data20QMIDataCommandDriver4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_17_1;
  v9[4] = this;
  v9[5] = v5;
  v10 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped(v4, v9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN4data20QMIDataCommandDriver4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v56 = 0xAAAAAAAAAAAAAAAALL;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v56, *(v2 + 48));
  if (!v56)
  {
    Name = data::CommandDriver::getName(v2);
    v25 = strlen(Name);
    if (v25 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v26 = v25;
    if (v25 >= 0x17)
    {
      if ((v25 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v25 | 7) + 1;
      }

      p_dst = operator new(v38);
      v51 = v26;
      v52 = v38 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v52) = v25;
      p_dst = &__dst;
      if (!v25)
      {
        LOBYTE(__dst) = 0;
        v28 = *(v2 + 24);
        v46 = v28;
        if (!v28)
        {
LABEL_46:
          v29 = *(v2 + 16);
          if (!v29 || (v30 = *(v2 + 8), (v31 = std::__shared_weak_count::lock(v29)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v32 = v31;
          atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = std::__shared_weak_count::lock(v31);
            if (v33)
            {
LABEL_50:
              atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v45 = v33;
LABEL_51:
              std::__shared_weak_count::__release_weak(v32);
              if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v33->__on_zero_shared)(v33);
                std::__shared_weak_count::__release_weak(v33);
              }

              qmi::Client::createWithQueue();
              v34 = v55;
              v55 = 0uLL;
              v35 = *(v2 + 112);
              *(v2 + 104) = v34;
              if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v35->__on_zero_shared)(v35);
                std::__shared_weak_count::__release_weak(v35);
              }

              qmi::Client::~Client(buf);
              if (v45)
              {
                std::__shared_weak_count::__release_weak(v45);
              }

              v16 = v46;
              if (v46)
              {
                goto LABEL_28;
              }

              goto LABEL_29;
            }
          }

          else
          {
            (v31->__on_zero_shared)(v31);
            std::__shared_weak_count::__release_weak(v32);
            v33 = std::__shared_weak_count::lock(v32);
            if (v33)
            {
              goto LABEL_50;
            }
          }

          v45 = v33;
          goto LABEL_51;
        }

LABEL_45:
        dispatch_retain(v28);
        goto LABEL_46;
      }
    }

    memmove(p_dst, Name, v26);
    *(p_dst + v26) = 0;
    v28 = *(v2 + 24);
    v46 = v28;
    if (!v28)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v4 = data::CommandDriver::getName(v2);
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v5 | 7) + 1;
    }

    v7 = operator new(v36);
    v51 = v6;
    v52 = v36 | 0x8000000000000000;
    __dst = v7;
LABEL_65:
    memmove(v7, v4, v6);
    *(v7 + v6) = 0;
    v8 = *(v2 + 24);
    v49 = v8;
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  HIBYTE(v52) = v5;
  v7 = &__dst;
  if (v5)
  {
    goto LABEL_65;
  }

  LOBYTE(__dst) = 0;
  v8 = *(v2 + 24);
  v49 = v8;
  if (v8)
  {
LABEL_8:
    dispatch_retain(v8);
  }

LABEL_9:
  v9 = *(v2 + 16);
  if (!v9 || (v10 = *(v2 + 8), (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v12);
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_68:
    v48 = v13;
    goto LABEL_14;
  }

  v13 = std::__shared_weak_count::lock(v11);
  if (!v13)
  {
    goto LABEL_68;
  }

LABEL_13:
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v48 = v13;
LABEL_14:
  std::__shared_weak_count::__release_weak(v12);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v47 = v57;
  if (v57)
  {
    atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v14 = v55;
  v55 = 0uLL;
  v15 = *(v2 + 112);
  *(v2 + 104) = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  qmi::Client::~Client(buf);
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  v16 = v49;
  if (v49)
  {
LABEL_28:
    dispatch_release(v16);
  }

LABEL_29:
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__dst);
  }

  v17 = a1[6];
  v43 = a1[5];
  v44 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v18 = a1[6];
  v41 = a1[5];
  v42 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v19 = a1[6];
  v39 = a1[5];
  v40 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  *buf = 0;
  v54 = 0;
  v20 = a1[6];
  if (v20)
  {
    v21 = std::__shared_weak_count::lock(v20);
    if (v21)
    {
      v22 = a1[5];
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *buf = v22;
      v54 = v21;
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v23 = v21;
        (v21->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v23);
      }
    }

    else
    {
      *buf = 0;
      v54 = 0;
    }
  }

  qmi::Client::setClientHandle();
  if (v54)
  {
    std::__shared_weak_count::__release_weak(v54);
  }

  qmi::Client::start((v2 + 88));
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  v37 = v57;
  if (v57)
  {
    if (!atomic_fetch_add((v57 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }
  }
}

void sub_296F96BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, dispatch_object_t object, char a34)
{
  if (a32)
  {
    std::__shared_weak_count::__release_weak(a32);
    if ((*(v34 - 161) & 0x80000000) == 0)
    {
LABEL_3:
      v36 = object;
      if (!object)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v34 - 161) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v34 - 184));
  v36 = object;
  if (!object)
  {
LABEL_8:
    if (*(v34 - 129) < 0)
    {
      operator delete(*(v34 - 152));
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v34 - 96);
      _Unwind_Resume(a1);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v34 - 96);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v36);
  goto LABEL_8;
}

void ___ZN4data20QMIDataCommandDriver4initEv_block_invoke_4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Stopped", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4data13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4data13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4data20QMIDataCommandDriver4initEv_block_invoke_6(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Started", v7, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZN4data20QMIDataCommandDriver4initEv_block_invoke_10(void *a1, xpc_object_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
        }

        v8 = MEMORY[0x29C269360](a2);
        v9 = *(v5 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v12 = v8;
          _os_log_impl(&dword_296ECF000, v9, OS_LOG_TYPE_DEFAULT, "#I Server error %s", buf, 0xCu);
        }

        free(v8);
        xpc_release(a2);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296F97054(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void data::QMIDataCommandDriver::getDataAggregationMaxDatagrams(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_26_3;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<data::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v3;
  v19 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v18);
  v4 = *(&v18 + 1);
  if (*(&v18 + 1) != v19)
  {
    while (*(*v4 + 8) != 16)
    {
      if (++v4 == v19)
      {
        goto LABEL_8;
      }
    }
  }

  if (v4 == v19)
  {
LABEL_8:
    v7 = qmi::MutableMessageBase::createTLV<wda::tlv::abm::PeripheralEndPointID>(&v18, 16);
  }

  else
  {
    v5 = ***v4;
    if (!v6)
    {
      __cxa_bad_cast();
    }

    v7 = v6 + 12;
  }

  *v7 = 0x400000003;
  v13 = v2 + 88;
  v14 = QMIServiceMsg::create();
  v15 = 25000;
  v16 = 0;
  v17 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3;
  v10[3] = &__block_descriptor_tmp_23_3;
  v10[4] = v2;
  v8 = a1[5];
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = a1[6];
  v11 = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3wda3abm13GetDataFormat8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60960;
  aBlock[4] = v10;
  v17 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v17)
  {
    _Block_release(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v18);
}

void sub_296F9735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F97380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F97394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_3(uint64_t a1, const qmi::ResponseBase *a2)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  data::QMIDataCommandDriver::checkError(a2, &cf);
  v4 = cf;
  if (cf)
  {
    if (*(a1 + 40) && *(a1 + 48))
    {
      CFRetain(cf);
      v5 = xpc_null_create();
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = _Block_copy(v6);
      }

      else
      {
        v7 = 0;
      }

      v13 = *(a1 + 48);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_160_0;
      if (v7)
      {
        v14 = _Block_copy(v7);
      }

      else
      {
        v14 = 0;
      }

      v23 = v14;
      v24 = v4;
      CFRetain(v4);
      v25 = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        v25 = xpc_null_create();
      }

      dispatch_async(v13, block);
      xpc_release(v25);
      v25 = 0;
      if (v24)
      {
        CFRelease(v24);
      }

      if (v23)
      {
        _Block_release(v23);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      xpc_release(v5);
      CFRelease(v4);
    }
  }

  else
  {
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 1174405120;
    v16 = ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4;
    v17 = &__block_descriptor_tmp_21_3;
    v8 = *(a1 + 40);
    if (v8)
    {
      v8 = _Block_copy(v8);
    }

    v9 = *(a1 + 48);
    aBlock = v8;
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v20 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v12 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 4);
      LODWORD(block[0]) = *v12;
      v16(v15, block);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F97610(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v2, 21, v1, v3);
  JUMPOUT(0x296F974D4);
}

void sub_296F97660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v9 + 48));
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(v10 + 32);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4data20QMIDataCommandDriver30getDataAggregationMaxDatagramsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE_block_invoke_4(void *a1, int *a2)
{
  v2 = *a2;
  v10 = -1431655935;
  v9 = &unk_2A1E18DA8;
  v11 = v2;
  if (!a1[4] || !a1[5])
  {
    return;
  }

  v4 = a1[6];
  object[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  abm::data::DataAggregationMaxDatagrams::toDict(&v9, object);
  v5 = a1[4];
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEclIJS5_NS6_4dictEEEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_160_0;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    cf = v4;
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  aBlock = 0;
  cf = v4;
  if (v4)
  {
LABEL_12:
    CFRetain(v4);
  }

LABEL_13:
  v15 = object[0];
  if (object[0])
  {
    xpc_retain(object[0]);
  }

  else
  {
    v15 = xpc_null_create();
  }

  dispatch_async(v7, block);
  xpc_release(v15);
  v15 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(object[0]);
  object[0] = 0;
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296F97844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c92_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE48c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a2[5];
  a1[4] = v4;
  a1[5] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  result = a2[6];
  a1[6] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c92_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE48c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::object)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void __copy_helper_block_e8_40c92_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c92_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc6objectEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}