void *qmi::createRequest@<X0>(int a1@<W0>, __int16 *a2@<X1>, unsigned __int16 a3@<W2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = &unk_2A1E9BE40;
  *(v8 + 40) = 0u;
  *(v8 + 24) = 0u;
  *a4 = v8 + 24;
  a4[1] = v8;
  if (a1)
  {
    v9 = 9;
  }

  else
  {
    v9 = 8;
  }

  v10 = a3;
  v11 = a3 + v9;
  v12 = operator new(v11);
  bzero(v12, v11);
  *v12 = 1;
  *(v12 + 1) = v11 - 1;
  v12[3] = 0;
  v12[4] = a1;
  *(v12 + 5) = 0;
  v12[7] = 0;
  if (a1)
  {
    v12[8] = 0;
  }

  result = memcpy(&v12[v9], a2, v10);
  v14 = *a2;
  *(v8 + 3) = v12;
  *(v8 + 4) = &v12[v11];
  *(v8 + 5) = &v12[v11];
  *(v8 + 24) = v14;
  return result;
}

void qmi::MutableMessageBase::serialize(qmi::MutableMessageBase *this@<X0>, char **a2@<X8>)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = 4;
  if (v4 == v5)
  {
LABEL_5:
    v8 = operator new(v6);
    *a2 = v8;
    v9 = &v8[v6];
    a2[2] = &v8[v6];
    bzero(v8, v6);
    a2[1] = &v8[v6];
    goto LABEL_7;
  }

  do
  {
    v7 = *v4++;
    v6 += (*(*v7 + 16))(v7);
  }

  while (v4 != v5);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    goto LABEL_5;
  }

  v9 = 0;
  v8 = 0;
LABEL_7:
  *v8 = *this;
  *(v8 + 1) = v9 - v8 - 4;
  v10 = *(this + 8);
  v11 = *(this + 2);
  v12 = *(this + 1);
  if (v12 != v11)
  {
    v13 = v8 + 4;
    do
    {
      (*(**v12 + 24))(*v12, &v13);
      ++v12;
    }

    while (v12 != v11);
    if (v13 != v9)
    {
      qmi::MutableMessageBase::sWriteErrorHandler(*this, a2, v13 - v8);
    }
  }
}

void sub_29806BA38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t qmi::parse(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 < 8)
  {
    return 0;
  }

  v16 = v3;
  v17 = v4;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v14) = *a1;
  v6 = *(a1 + 1);
  *(&v14 + 2) = *(a1 + 1);
  BYTE6(v14) = *(a1 + 5);
  if (BYTE5(v14))
  {
    if (a2 == 8)
    {
      return 0;
    }

    v11 = *(a1 + 6);
    if (v11 > 4)
    {
      v12 = 3;
    }

    else
    {
      v12 = dword_2980870D8[v11];
    }

    LODWORD(v15) = v12;
    v8 = 9;
    WORD2(v15) = *(a1 + 7);
    v9 = v6 + 1;
    v10 = v6 - 8;
    if (v6 + 1 >= 9)
    {
      goto LABEL_16;
    }

LABEL_11:
    (*(a3 + 16))(a3, &v14, 0, 0xFFFFFFFFLL, 0);
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 6);
  if (v7 >= 3)
  {
    v7 = 3;
  }

  LODWORD(v15) = v7;
  v8 = 8;
  WORD2(v15) = *(a1 + 7);
  v9 = v6 + 1;
  v10 = v6 - 7;
  if (v6 + 1 < 8)
  {
    goto LABEL_11;
  }

LABEL_16:
  (*(a3 + 16))(a3, &v14, a1 + v8, v10, a2 - v8);
  if (v6 >= a2)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1107296256;
  v4[2] = ___ZN3qmi5parseEPKhiU13block_pointerFvRKNS_10QMuxHeaderES1_iE_block_invoke;
  v4[3] = &__block_descriptor_tmp;
  v4[4] = a3;
  return qmi::parse(a1, a2, v4);
}

qmi::MessageBase *qmi::MessageBase::MessageBase(qmi::MessageBase *this, unsigned __int16 *a2, unint64_t a3)
{
  *this = 0;
  *(this + 4) = 0;
  v4 = (this + 4);
  *(this + 12) = 0;
  *(this + 5) = 0;
  if (a3 <= 3)
  {
    v5 = 65540;
LABEL_5:
    *v4 = v5;
    *(this + 1) = 0;
    *(this + 2) = 0;
    return this;
  }

  *this = *a2;
  v7 = a2[1];
  if (v7 + 4 > a3)
  {
    v5 = 65541;
    goto LABEL_5;
  }

  v9 = operator new(0x30uLL);
  v9->__shared_owners_ = 0;
  v9->__shared_weak_owners_ = 0;
  v9->__vftable = &unk_2A1E9B780;
  v9[1].__vftable = 0;
  v9[1].__shared_owners_ = 0;
  v9[1].__shared_weak_owners_ = 0;
  v10 = v7 + 4;
  if (v7 + 4 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = operator new(v7 + 4);
  v9[1].__vftable = v11;
  v12 = &v11[v10];
  v9[1].__shared_weak_owners_ = &v11[v10];
  memcpy(v11, a2, v10);
  v9[1].__shared_owners_ = &v11[v10];
  *(this + 1) = v9 + 1;
  *(this + 2) = v9;
  if (v11 + 7 <= &v11[v10])
  {
    v13 = &v11[*(v11 + 5) + 7];
    if (v13 + 3 <= v12)
    {
      do
      {
        v14 = v13 + *(v13 + 1);
        v13 = v14 + 3;
      }

      while (v14 + 6 <= v12);
    }
  }

  else
  {
    v13 = (v11 + 4);
  }

  if (v13 != v12)
  {
    *v4 = 65543;
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  return this;
}

void sub_29806BD9C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v2[1].__shared_owners_ = v5;
    operator delete(v5);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v6);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void qmi::MutableMessageBase::~MutableMessageBase(qmi::MutableMessageBase *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  do
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = *(this + 1);
  if (v2)
  {
LABEL_3:
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  do
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = *(this + 1);
  if (v2)
  {
LABEL_3:
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void qmi::MessageBase::~MessageBase(qmi::MessageBase *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

unint64_t qmi::MessageBase::findTlvValue(qmi::MessageBase *this, int a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v4 = *v2;
  v3 = v2[1];
  result = v4 + 7;
  if (v4 + 7 > v3)
  {
    return 0;
  }

  v7 = *(v4 + 5);
  if (*(v4 + 4) != a2)
  {
    while (1)
    {
      v8 = (result + v7);
      result += v7 + 3;
      if (result > v3)
      {
        break;
      }

      v7 = *(v8 + 1);
      if (*v8 == a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

qmi::MessageBase *qmi::ResponseBase::ResponseBase(qmi::ResponseBase *this, unsigned __int16 *a2, unint64_t a3)
{
  result = qmi::MessageBase::MessageBase(this, a2, a3);
  if (*(result + 1))
  {
    return result;
  }

  v4 = *(result + 1);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  v7 = (*v4 + 7);
  if (v7 > v5)
  {
    goto LABEL_5;
  }

  v9 = *(v6 + 4);
  v10 = *(v6 + 5);
  if (v9 != 2)
  {
    while (1)
    {
      v11 = v7 + v10;
      v7 = v11 + 3;
      if ((v11 + 3) > v5)
      {
        break;
      }

      v12 = *v11;
      v10 = *(v11 + 1);
      if (v12 == 2)
      {
        goto LABEL_10;
      }
    }

LABEL_5:
    v8 = 65542;
    goto LABEL_6;
  }

LABEL_10:
  if (v10 == 4)
  {
    if (!*v7)
    {
      return result;
    }

    v8 = v7[1];
    if (!v8)
    {
      *(result + 1) = 65552;
      return result;
    }

LABEL_6:
    *(result + 1) = v8;
    return result;
  }

  *(result + 1) = 65543;
  v13 = *(result + 2);
  *(result + 1) = 0;
  *(result + 2) = 0;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v14 = result;
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      return v14;
    }
  }

  return result;
}

void qmi::MessageBase::validateMsgId(qmi::MessageBase *this, int a2)
{
  if (!*(this + 1) && *this != a2)
  {
    *(this + 1) = 65544;
    v2 = *(this + 2);
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);

        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }
}

void std::__shared_ptr_emplace<qmi::SerializedMessage>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t qmi::MutableMessageBase::MutableMessageBase(uint64_t this, __int16 a2)
{
  *this = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

unint64_t tlv::throwIfNotEnoughBytes(unint64_t this, const unsigned __int8 *a2, unint64_t a3)
{
  if (this > a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvParseException::TlvParseException(exception);
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) != 0 || this + a3 > a2)
  {
    v4 = this;
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvParseException::TlvParseException(exception, a3, &a2[-v4]);
LABEL_7:
  }

  return this;
}

void defaultParsingHandler(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  exception = __cxa_allocate_exception(0x20uLL);
  tlv_parsing_exception::tlv_parsing_exception(exception, a1, a2, v6);
}

void (*qmi::MessageBase::setParsingErrorHandler(void (*this)(uint64_t a1, uint64_t a2, const unsigned __int8 *a3), BOOL (*a2)(unsigned __int16, unsigned __int16, const unsigned __int8 *, unint64_t)))(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  if (this)
  {
    v2 = this;
  }

  else
  {
    v2 = defaultParsingHandler;
  }

  qmi::MessageBase::sParsingErrorHandler = v2;
  return this;
}

uint64_t qmi::MessageBase::MessageBase(uint64_t result, __int16 a2, int a3)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t qmi::MessageBase::MessageBase(uint64_t result, int a2)
{
  *result = 0;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  *result = 0;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void qmi::MessageBase::setError(uint64_t a1, int a2, int a3)
{
  *(a1 + 4) = a2;
  if (a3)
  {
    v3 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

void qmi::MessageBase::validateBuffer(qmi::MessageBase *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v3 = *v1;
    v2 = v1[1];
    if (v3 + 7 <= v2)
    {
      v4 = v3 + 7 + *(v3 + 5);
      if (v4 + 3 <= v2)
      {
        do
        {
          v6 = v4 + *(v4 + 1);
          v4 = v6 + 3;
        }

        while (v6 + 6 <= v2);
      }
    }

    else
    {
      v4 = v3 + 4;
    }

    if (v4 != v2)
    {
      *(this + 1) = 65543;
      v5 = *(this + 2);
      *(this + 1) = 0;
      *(this + 2) = 0;
      if (v5)
      {
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);

          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }
  }
}

uint64_t std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

qmi::MessageBase *qmi::MessageBase::MessageBase(qmi::MessageBase *this, const qmi::MutableMessageBase *a2)
{
  *this = *a2;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  qmi::MutableMessageBase::serialize(a2, __p);
  v3 = operator new(0x30uLL);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_2A1E9B780;
  *(v3 + 24) = *__p;
  *(v3 + 5) = v13;
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  v4 = *(this + 2);
  *(this + 1) = v3 + 24;
  *(this + 2) = v3;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = *(this + 1);
  if (!v5)
  {
    return this;
  }

  v7 = *v5;
  v6 = v5[1];
  if (v7 + 7 <= v6)
  {
    v8 = v7 + 7 + *(v7 + 5);
    if (v8 + 3 <= v6)
    {
      do
      {
        v11 = v8 + *(v8 + 1);
        v8 = v11 + 3;
      }

      while (v11 + 6 <= v6);
    }
  }

  else
  {
    v8 = v7 + 4;
  }

  if (v8 == v6)
  {
    return this;
  }

  *(this + 1) = 65543;
  v9 = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return this;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return this;
}

void sub_29806D5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v10 + 8);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v10 + 8);
  _Unwind_Resume(a1);
}

__n128 qmi::MessageBase::swap(qmi::MessageBase *this, qmi::MessageBase *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v3 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  result = *(a2 + 8);
  v5 = *(this + 8);
  *(this + 8) = result;
  *(a2 + 8) = v5;
  return result;
}

unsigned __int8 *qmi::MessageBase::findNextTlv(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (*a3)
  {
    v4 = *a3 + 3 > v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  result = *(a3 + 24);
  v6 = *(a3 + 18);
  if (*(a3 + 16) != a2)
  {
    do
    {
      v7 = &result[v6];
      *a3 = v7;
      if (!result)
      {
        break;
      }

      result = v7 + 3;
      if ((v7 + 3) > v3)
      {
        return 0;
      }

      *(a3 + 24) = v7 + 1;
      v8 = *v7;
      *(a3 + 24) = v7 + 2;
      v9 = v7[1];
      *(a3 + 24) = result;
      v6 = v9 | (v7[2] << 8);
      *(a3 + 16) = v8;
      *(a3 + 18) = v6;
    }

    while (v8 != a2);
  }

  return result;
}

void tlv_parsing_exception::tlv_parsing_exception(tlv_parsing_exception *this, uint64_t a2, uint64_t a3, const unsigned __int8 *a4)
{
  *(this + 1) = 0;
  v7 = this + 8;
  *this = &unk_2A1E9B758;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[7] = v8;
  v29[8] = v8;
  v29[5] = v8;
  v29[6] = v8;
  v29[3] = v8;
  v29[4] = v8;
  v29[1] = v8;
  v29[2] = v8;
  v28 = v8;
  v29[0] = v8;
  *__p = v8;
  v27 = v8;
  v24 = v8;
  v25 = v8;
  v22 = v8;
  v23 = v8;
  v21 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v21);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "tlv_parsing_exception: msgId=", 29);
  v10 = MEMORY[0x29C27F7A0](v9, a2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " tlvId=", 7);
  MEMORY[0x29C27F7A0](v11, a3);
  if ((BYTE8(v28) & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < *(&v25 + 1))
    {
      *&v28 = *(&v25 + 1);
      v14 = *(&v25 + 1);
    }

    v15 = v25;
    v12 = v14 - v25;
    if ((v14 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v12 = 0;
      HIBYTE(v20) = 0;
      p_dst = &__dst;
      goto LABEL_15;
    }

    v15 = *(&v23 + 1);
    v12 = *(&v24 + 1) - *(&v23 + 1);
    if (*(&v24 + 1) - *(&v23 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
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

    p_dst = operator new(v16);
    *(&__dst + 1) = v12;
    v20 = v16 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v20) = v12;
  p_dst = &__dst;
  if (v12)
  {
LABEL_14:
    memmove(p_dst, v15, v12);
  }

LABEL_15:
  *(p_dst + v12) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*v7);
  }

  *v7 = __dst;
  v17 = MEMORY[0x29EDC9528];
  *(v7 + 2) = v20;
  *&v21 = *v17;
  v18 = v17[9];
  *(&v21 + *(v21 - 24)) = v17[8];
  *&v22 = v18;
  *(&v22 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v22 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  MEMORY[0x29C27F880](v29);
}

void sub_29806DA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 + 31) < 0)
  {
    operator delete(*v14);
  }

  std::exception::~exception(v13);
  _Unwind_Resume(a1);
}

void tlv_parsing_exception::~tlv_parsing_exception(std::exception *this)
{
  this->__vftable = &unk_2A1E9B758;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    v2 = this;
    operator delete(this[1].__vftable);
    this = v2;
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2A1E9B758;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
    std::exception::~exception(this);
  }

  else
  {
    std::exception::~exception(this);
  }

  operator delete(v2);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  *(a1 + 128) = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x29EDC9590] + 64;
  *(a1 + 16) = MEMORY[0x29EDC9590] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 24);
  v8 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x29EDC9590] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x29EDC9568] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x29C27F820](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_29806DE08(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C27F880](v1);
  _Unwind_Resume(a1);
}

uint64_t tlv_parsing_exception::what(tlv_parsing_exception *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE89C08, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C27F700](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x29EDC93D0]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C27F710](v14);
  return a1;
}

void sub_29806E24C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C27F710](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29806E22CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_29806E48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9B780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t qmi::RandomMessageContext::generateRandomChars(uint64_t this, char *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = this;
    do
    {
      this = (*(*v5 + 16))(v5, 95);
      *a2++ = qmi::RandomMessageContext::generateRandomChars(char *,unsigned long)::PRINTABLE[this];
      --v3;
    }

    while (v3);
  }

  return this;
}

void qmi::sCreateRandomMessageContext(qmi *this@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v5 = this;
  v7 = operator new(0x10uLL);
  *v7 = &unk_2A1E9B820;
  v7[2] = 1;
  v8 = strlen(a2);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_dst = operator new(v11);
    v20 = v9;
    v21 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v21) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_9:
    memcpy(p_dst, a2, v9);
  }

  *(p_dst + v9) = 0;
  v12 = HIBYTE(v21);
  v13 = &__dst;
  if (v21 < 0)
  {
    v13 = __dst;
    v12 = v20;
  }

  if (v12)
  {
    v14 = 0;
    do
    {
      v15 = *v13;
      v13 = (v13 + 1);
      v14 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v15) ^ ((0xC6A4A7935BD1E995 * v15) >> 47))) ^ v14) + 3864292196u;
      --v12;
    }

    while (v12);
    v16 = 0xC6A4A7935BD1E995 * v14;
    if (SHIBYTE(v21) < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = 0;
    if (SHIBYTE(v21) < 0)
    {
LABEL_16:
      operator delete(__dst);
    }
  }

  v17 = 1540483477 * ((1540483477 * ((v16 >> 47) ^ v16)) ^ (678072505 * ((((0xC6A4A7935BD1E995 * v5) >> 32) >> 15) ^ (1540483477 * v5)) - 430675100)) - 430675100;
  v18 = v17 + (((((v17 + 2 * v17) >> 32) + ((v17 - ((v17 + 2 * v17) >> 32)) >> 1)) >> 30) | ((((v17 + 2 * v17) >> 32) + ((v17 - ((v17 + 2 * v17) >> 32)) >> 1)) >> 30 << 31));
  if (v18 <= 1)
  {
    v18 = 1;
  }

  v7[2] = v18;
  *a3 = v7;
}

void *qmi::sCreateAlwaysZeroRandomMessageContext@<X0>(void *a1@<X8>)
{
  result = operator new(8uLL);
  *result = &unk_2A1E9B878;
  *a1 = result;
  return result;
}

void *qmi::sCreateZeroButLen1RandomMessageContext@<X0>(void *a1@<X8>)
{
  result = operator new(8uLL);
  *result = &unk_2A1E9B8D0;
  *a1 = result;
  return result;
}

uint64_t anonymous namespace::LinearRandomMessageContext::generateBytes(uint64_t this, char *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = &a2[a3];
    do
    {
      v4 = *(this + 8);
      do
      {
        v5 = v4 / 0xADC8;
        v6 = 48271 * (v4 % 0xADC8);
        v5 *= 3399;
        v7 = v6 >= v5;
        v8 = v6 - v5;
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = 0x7FFFFFFF;
        }

        v4 = v9 + v8;
      }

      while (v4 - 1 > 0x7FFFFEFF);
      *(this + 8) = v4;
      *a2++ = v4 - 1;
    }

    while (a2 != v3);
  }

  return this;
}

uint64_t anonymous namespace::LinearRandomMessageContext::generateLength(_anonymous_namespace_::LinearRandomMessageContext *this, int a2)
{
  v3[0] = 0;
  v3[1] = a2;
  return std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(this + 8, v3);
}

uint64_t anonymous namespace::LinearRandomMessageContext::generateUnsigned(_anonymous_namespace_::LinearRandomMessageContext *this, int a2)
{
  v3[0] = 0;
  v3[1] = a2;
  return std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(this + 8, v3);
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    result = 0;
    v14 = *(a1 + 24);
    if (!v14)
    {
      return result;
    }

    goto LABEL_20;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = **a1;
  if (v4 >= 0x20)
  {
    v15 = 0;
    do
    {
      v16 = v6 / 0xADC8;
      v17 = 48271 * (v6 % 0xADC8);
      v16 *= 3399;
      v11 = v17 >= v16;
      v18 = v17 - v16;
      if (v11)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0x7FFFFFFF;
      }

      v6 = v19 + v18;
    }

    while (v6 - 1 >= v3 || ++v15 != v2);
    result = (v6 - 1) & v5;
  }

  else
  {
    v7 = 0;
    LODWORD(result) = 0;
    while (1)
    {
      v9 = v6 / 0xADC8;
      v10 = 48271 * (v6 % 0xADC8);
      v9 *= 3399;
      v11 = v10 >= v9;
      v12 = v10 - v9;
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }

      v6 = v13 + v12;
      if (v6 - 1 < v3)
      {
        result = ((v6 - 1) & v5) + (result << v4);
        if (++v7 == v2)
        {
          break;
        }
      }
    }
  }

  **a1 = v6;
  v14 = *(a1 + 24);
  if (v2 < v14)
  {
LABEL_20:
    v20 = *a1;
    v21 = *(a1 + 44);
    v22 = *(a1 + 16);
    v23 = *(a1 + 52);
    v24 = *v20;
    if (v22 >= 0x1F)
    {
      do
      {
        v30 = v24 / 0xADC8;
        v31 = 48271 * (v24 % 0xADC8);
        v30 *= 3399;
        v11 = v31 >= v30;
        v32 = v31 - v30;
        if (v11)
        {
          v33 = 0;
        }

        else
        {
          v33 = 0x7FFFFFFF;
        }

        v24 = v33 + v32;
      }

      while (v24 - 1 >= v21 || ++v2 != v14);
      result = (v24 - 1) & v23;
      *v20 = v24;
    }

    else
    {
      v25 = v22 + 1;
      while (1)
      {
        v26 = v24 / 0xADC8;
        v27 = 48271 * (v24 % 0xADC8);
        v26 *= 3399;
        v11 = v27 >= v26;
        v28 = v27 - v26;
        if (v11)
        {
          v29 = 0;
        }

        else
        {
          v29 = 0x7FFFFFFF;
        }

        v24 = v29 + v28;
        if (v24 - 1 < v21)
        {
          result = ((v24 - 1) & v23) + (result << v25);
          if (++v2 == v14)
          {
            break;
          }
        }
      }

      *v20 = v24;
    }
  }

  return result;
}

uint64_t std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, _DWORD *a2)
{
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    v25[5] = v2;
    v25[6] = v3;
    v6 = v5 + 1;
    if (v5 == -1)
    {
      v22 = a1;
      v23 = xmmword_298086C70;
      LODWORD(v25[1]) = 2147418112;
      v24 = 2;
      v25[0] = 2;
      *(&v25[1] + 4) = 0xFFFF7FFE0000;
      HIDWORD(v25[2]) = 0x1FFFF;
      return std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(&v22);
    }

    v7 = __clz(v6);
    v8 = 31;
    if (((v6 << v7) & 0x7FFFFFFF) != 0)
    {
      v8 = 32;
    }

    v9 = v8 - v7;
    memset(v25, 170, 24);
    v22 = a1;
    *&v23 = v8 - v7;
    v10 = (v8 - v7) >= 0x1E;
    v11 = v8 - v7 - 30;
    if (!v10)
    {
      v11 = v9;
    }

    v12 = v11 != 0;
    if (v9 <= 0x1D)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    v14 = v9 / v13;
    *(&v23 + 1) = v14;
    v24 = v13;
    v15 = (-1 << v14) & 0x7FFFFFFE;
    if (v14 >= 0x20)
    {
      v15 = 0;
    }

    LODWORD(v25[1]) = v15;
    if (v15 / v13 < (v15 ^ 0x7FFFFFFE))
    {
      v14 = v9 / ++v13;
      *(&v23 + 1) = v14;
      v24 = v13;
      if (v14 > 0x1F)
      {
        v16 = a2;
        LODWORD(v25[1]) = 0;
        v25[0] = v13 - (v9 % v13);
        LODWORD(v14) = 32;
        goto LABEL_21;
      }

      LODWORD(v25[1]) = (-1 << (v9 / v13)) & 0x7FFFFFFE;
    }

    v25[0] = v13 - v9 % v13;
    v16 = a2;
    if (v14 <= 0x1E)
    {
      v17 = 0xFFFFFFFF >> -v14;
      if (!v14)
      {
        v17 = 0;
      }

      HIDWORD(v25[1]) = 0x3FFFFFFFu >> v14 << (v14 + 1);
      LODWORD(v25[2]) = v17;
      v18 = 0xFFFFFFFF >> ~v14;
      goto LABEL_22;
    }

LABEL_21:
    v19 = -v14;
    v18 = -1;
    HIDWORD(v25[1]) = 0;
    LODWORD(v25[2]) = 0xFFFFFFFF >> v19;
LABEL_22:
    HIDWORD(v25[2]) = v18;
    do
    {
      v20 = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(&v22);
    }

    while (v20 >= v6);
    return *v16 + v20;
  }

  return v4;
}

const char *qmi::asString(int a1)
{
  if (a1 >= 0x10000)
  {
    if (a1 > 65541)
    {
      if (a1 > 65544)
      {
        switch(a1)
        {
          case 65545:
            return "ATCS_NULL_MESSAGE";
          case 65552:
            return "ATCS_BAD_QMI_ERROR";
          case 65553:
            return "ATCS_SERVER_FAILURE";
          default:
LABEL_22:
            if (HIWORD(a1) == 57005)
            {
              return "ATCS_UNKNOWN_ERROR";
            }

            else
            {
              return "UNKNOWN ERROR";
            }
        }
      }

      else if (a1 == 65542)
      {
        return "ATCS_NO_RESULT_CODE";
      }

      else if (a1 == 65543)
      {
        return "ATCS_PARSING_ERROR";
      }

      else
      {
        return "ATCS_MSGID_MISMATCH";
      }
    }

    else if (a1 > 65538)
    {
      if (a1 == 65539)
      {
        return "ATCS_CANCELLED";
      }

      else if (a1 == 65540)
      {
        return "ATCS_BUF_NO_HEADER";
      }

      else
      {
        return "ATCS_BUF_TOO_SMALL";
      }
    }

    else if (a1 == 0x10000)
    {
      return "ATCS_MIN_ERROR_VALUE";
    }

    else if (a1 == 65537)
    {
      return "ATCS_TIMEOUT";
    }

    else
    {
      return "ATCS_CLIENT_NOT_READY";
    }
  }

  else
  {
    result = "QMI_ERROR_NONE";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "QMI_ERR_MALFORMED_MSG";
        break;
      case 2:
        result = "QMI_ERR_NO_MEMORY";
        break;
      case 3:
        result = "QMI_ERR_INTERNAL";
        break;
      case 4:
        result = "QMI_ERR_ABORTED";
        break;
      case 5:
        result = "QMI_ERR_CLIENT_IDS_EXHAUSTED";
        break;
      case 6:
        result = "QMI_ERR_UNABORTABLE_TRANSACTION";
        break;
      case 7:
        result = "QMI_ERR_INVALID_CLIENT_ID";
        break;
      case 8:
        result = "QMI_ERR_NO_THRESHOLDS";
        break;
      case 9:
        result = "QMI_ERR_INVALID_HANDLE";
        break;
      case 10:
        result = "QMI_ERR_INVALID_PROFILE";
        break;
      case 11:
        result = "QMI_ERR_INVALID_PINID";
        break;
      case 12:
        result = "QMI_ERR_INCORRECT_PIN";
        break;
      case 13:
        result = "QMI_ERR_NO_NETWORK_FOUND";
        break;
      case 14:
        result = "QMI_ERR_CALL_FAILED";
        break;
      case 15:
        result = "QMI_ERR_OUT_OF_CALL";
        break;
      case 16:
        result = "QMI_ERR_NOT_PROVISIONED";
        break;
      case 17:
        result = "QMI_ERR_MISSING_ARG";
        break;
      case 18:
        result = "QMI_ERR_GENERIC_0012";
        break;
      case 19:
        result = "QMI_ERR_ARG_TOO_LONG";
        break;
      case 20:
        result = "QMI_ERR_GENERIC_0014";
        break;
      case 21:
        result = "QMI_ERR_GENERIC_0015";
        break;
      case 22:
        result = "QMI_ERR_INVALID_TX_ID";
        break;
      case 23:
        result = "QMI_ERR_DEVICE_IN_USE";
        break;
      case 24:
        result = "QMI_ERR_OP_NETWORK_UNSUPPORTED";
        break;
      case 25:
        result = "QMI_ERR_OP_DEVICE_UNSUPPORTED";
        break;
      case 26:
        result = "QMI_ERR_NO_EFFECT";
        break;
      case 27:
        result = "QMI_ERR_NO_FREE_PROFILE";
        break;
      case 28:
        result = "QMI_ERR_INVALID_PDP_TYPE";
        break;
      case 29:
        result = "QMI_ERR_INVALID_TECH_PREF";
        break;
      case 30:
        result = "QMI_ERR_INVALID_PROFILE_TYPE";
        break;
      case 31:
        result = "QMI_ERR_INVALID_SERVICE_TYPE";
        break;
      case 32:
        result = "QMI_ERR_INVALID_REGISTER_ACTION";
        break;
      case 33:
        result = "QMI_ERR_INVALID_PS_ATTACH_ACTION";
        break;
      case 34:
        result = "QMI_ERR_AUTHENTICATION_FAILED";
        break;
      case 35:
        result = "QMI_ERR_PIN_BLOCKED";
        break;
      case 36:
        result = "QMI_ERR_PIN_PERM_BLOCKED";
        break;
      case 37:
        result = "QMI_ERR_UIM_NOT_INITIALIZED";
        break;
      case 38:
        result = "QMI_ERR_MAX_QOS_REQUESTS_IN_USE";
        break;
      case 39:
        result = "QMI_ERR_INCORRECT_FLOW_FILTER";
        break;
      case 40:
        result = "QMI_ERR_NETWORK_QOS_UNAWARE";
        break;
      case 41:
        result = "QMI_ERR_INVALID_ID";
        break;
      case 42:
        result = "QMI_ERR_REQUESTED_NUM_UNSUPPORTED";
        break;
      case 43:
        result = "QMI_ERR_INTERFACE_NOT_FOUND";
        break;
      case 44:
        result = "QMI_ERR_FLOW_SUSPENDED";
        break;
      case 45:
        result = "QMI_ERR_INVALID_DATA_FORMAT";
        break;
      case 46:
        result = "QMI_ERR_GENERAL";
        break;
      case 47:
        result = "QMI_ERR_UNKNOWN";
        break;
      case 48:
        result = "QMI_ERR_INVALID_ARG";
        break;
      case 49:
        result = "QMI_ERR_INVALID_INDEX";
        break;
      case 50:
        result = "QMI_ERR_NO_ENTRY";
        break;
      case 51:
        result = "QMI_ERR_DEVICE_STORAGE_FULL";
        break;
      case 52:
        result = "QMI_ERR_DEVICE_NOT_READY";
        break;
      case 53:
        result = "QMI_ERR_NETWORK_NOT_READY";
        break;
      case 54:
        result = "QMI_ERR_CAUSE_CODE";
        break;
      case 55:
        result = "QMI_ERR_MESSAGE_NOT_SENT";
        break;
      case 56:
        result = "QMI_ERR_MESSAGE_DELIVERY_FAILURE";
        break;
      case 57:
        result = "QMI_ERR_INVALID_MESSAGE_ID";
        break;
      case 58:
        result = "QMI_ERR_ENCODING";
        break;
      case 59:
        result = "QMI_ERR_AUTHENTICATION_LOCK";
        break;
      case 60:
        result = "QMI_ERR_INVALID_TRANSITION";
        break;
      case 61:
        result = "QMI_ERR_NOT_A_MCAST_IFACE";
        break;
      case 62:
        result = "QMI_ERR_MAX_MCAST_REQUESTS_IN_USE";
        break;
      case 63:
        result = "QMI_ERR_INVALID_MCAST_HANDLE";
        break;
      case 64:
        result = "QMI_ERR_INVALID_IP_FAMILY_PREF";
        break;
      case 65:
        result = "QMI_ERR_SESSION_INACTIVE";
        break;
      case 66:
        result = "QMI_ERR_SESSION_INVALID";
        break;
      case 67:
        result = "QMI_ERR_SESSION_OWNERSHIP";
        break;
      case 68:
        result = "QMI_ERR_INSUFFICIENT_RESOURCES";
        break;
      case 69:
        result = "QMI_ERR_DISABLED";
        break;
      case 70:
        result = "QMI_ERR_INVALID_OPERATION";
        break;
      case 71:
        result = "QMI_ERR_INVALID_QMI_CMD";
        break;
      case 72:
        result = "QMI_ERR_TPDU_TYPE";
        break;
      case 73:
        result = "QMI_ERR_SMSC_ADDR";
        break;
      case 74:
        result = "QMI_ERR_INFO_UNAVAILABLE";
        break;
      case 75:
        result = "QMI_ERR_SEGMENT_TOO_LONG";
        break;
      case 76:
        result = "QMI_ERR_SEGMENT_ORDER";
        break;
      case 77:
        result = "QMI_ERR_BUNDLING_NOT_SUPPORTED";
        break;
      case 78:
        result = "QMI_ERR_OP_PARTIAL_FAILURE";
        break;
      case 79:
        result = "QMI_ERR_POLICY_MISMATCH";
        break;
      case 80:
        result = "QMI_ERR_SIM_FILE_NOT_FOUND";
        break;
      case 81:
        result = "QMI_ERR_EXTENDED_INTERNAL";
        break;
      case 82:
        result = "QMI_ERR_ACCESS_DENIED";
        break;
      case 83:
        result = "QMI_ERR_HARDWARE_RESTRICTED";
        break;
      case 84:
        result = "QMI_ERR_ACK_NOT_SENT";
        break;
      case 85:
        result = "QMI_ERR_INJECT_TIMEOUT";
        break;
      case 86:
        result = "QMI_ERR_GENERIC_0056";
        break;
      case 87:
        result = "QMI_ERR_GENERIC_0057";
        break;
      case 88:
        result = "QMI_ERR_GENERIC_0058";
        break;
      case 89:
        result = "QMI_ERR_GENERIC_0059";
        break;
      case 90:
        result = "QMI_ERR_INCOMPATIBLE_STATE";
        break;
      case 91:
        result = "QMI_ERR_FDN_RESTRICT";
        break;
      case 92:
        result = "QMI_ERR_SUPS_FAILURE_CAUSE";
        break;
      case 93:
        result = "QMI_ERR_NO_RADIO";
        break;
      case 94:
        result = "QMI_ERR_NOT_SUPPORTED";
        break;
      case 95:
        result = "QMI_ERR_NO_SUBSCRIPTION";
        break;
      case 96:
        result = "QMI_ERR_CARD_CALL_CONTROL_FAILED";
        break;
      case 97:
        result = "QMI_ERR_NETWORK_ABORTED";
        break;
      case 98:
        result = "QMI_ERR_MSG_BLOCKED";
        break;
      case 99:
        result = "QMI_ERR_GENERIC_0063";
        break;
      case 100:
        result = "QMI_ERR_INVALID_SESSION_TYPE";
        break;
      case 101:
        result = "QMI_ERR_INVALID_PB_TYPE";
        break;
      case 102:
        result = "QMI_ERR_NO_SIM";
        break;
      case 103:
        result = "QMI_ERR_PB_NOT_READY";
        break;
      case 104:
        result = "QMI_ERR_PIN_RESTRICTION";
        break;
      case 105:
        result = "QMI_ERR_PIN2_RESTRICTION";
        break;
      case 106:
        result = "QMI_ERR_PUK_RESTRICTION";
        break;
      case 107:
        result = "QMI_ERR_PUK2_RESTRICTION";
        break;
      case 108:
        result = "QMI_ERR_PB_ACCESS_RESTRICTED";
        break;
      case 109:
        result = "QMI_ERR_PB_DELETE_IN_PROG";
        break;
      case 110:
        result = "QMI_ERR_PB_TEXT_TOO_LONG";
        break;
      case 111:
        result = "QMI_ERR_PB_NUMBER_TOO_LONG";
        break;
      case 112:
        result = "QMI_ERR_PB_HIDDEN_KEY_RESTRICTION";
        break;
      case 113:
        result = "QMI_ERR_PB_NOT_AVAILABLE";
        break;
      case 114:
        result = "QMI_ERR_DEVICE_MEMORY_ERROR";
        break;
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 259:
      case 260:
      case 261:
      case 262:
      case 263:
      case 264:
      case 265:
      case 266:
      case 267:
      case 268:
      case 269:
      case 270:
      case 271:
      case 272:
      case 273:
      case 274:
      case 275:
      case 276:
      case 277:
      case 278:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 286:
      case 287:
      case 288:
      case 289:
      case 290:
      case 291:
      case 292:
      case 293:
      case 294:
      case 295:
      case 296:
      case 297:
      case 298:
      case 299:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 343:
      case 344:
      case 345:
      case 346:
      case 347:
      case 348:
      case 349:
      case 350:
      case 351:
      case 352:
      case 353:
      case 354:
      case 355:
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 392:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 400:
      case 401:
      case 402:
      case 403:
      case 404:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 410:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 519:
        goto LABEL_22;
      case 201:
        result = "CM_CALL_CMD_ERR_CLIENT_ID_P";
        break;
      case 202:
        result = "CM_CALL_CMD_ERR_CALL_ID_P";
        break;
      case 203:
        result = "CM_CALL_CMD_ERR_NUM_CALL_IDS_P";
        break;
      case 204:
        result = "CM_CALL_CMD_ERR_CALL_TYPE_P";
        break;
      case 205:
        result = "CM_CALL_CMD_ERR_SRV_TYPE_P";
        break;
      case 206:
        result = "CM_CALL_CMD_ERR_SRV_OPT_P";
        break;
      case 207:
        result = "CM_CALL_CMD_ERR_MODE_PREF_P";
        break;
      case 208:
        result = "CM_CALL_CMD_ERR_NO_NUM_P";
        break;
      case 209:
        result = "CM_CALL_CMD_ERR_NULL_NUM_P";
        break;
      case 210:
        result = "CM_CALL_CMD_ERR_NUM_P";
        break;
      case 211:
        result = "CM_CALL_CMD_ERR_NUM_LEN_P";
        break;
      case 212:
        result = "CM_CALL_CMD_ERR_NULL_ALPHA_P";
        break;
      case 213:
        result = "CM_CALL_CMD_ERR_ALPHA_LEN_P";
        break;
      case 214:
        result = "CM_CALL_CMD_ERR_MISMATCH_P";
        break;
      case 215:
        result = "CM_CALL_CMD_ERR_NULL_PARAM_P";
        break;
      case 216:
        result = "CM_CALL_CMD_ERR_ACTIVATE_CODE_P";
        break;
      case 217:
        result = "CM_CALL_CMD_ERR_CALL_SUPS_P";
        break;
      case 218:
        result = "CM_CALL_CMD_ERR_QOS_LEN_P";
        break;
      case 219:
        result = "CM_CALL_CMD_ERR_LAST_ACT_DATA_NET_P";
        break;
      case 220:
        result = "CM_CALL_CMD_ERR_INVALID_PRIMARY_CALL_ID_P";
        break;
      case 221:
        result = "CM_CALL_CMD_ERR_INVALID_GROUP_ID_P";
        break;
      case 222:
        result = "CM_CALL_CMD_ERR_PROFILE_NUMBER_IN_USE_P";
        break;
      case 223:
        result = "CM_CALL_CMD_ERR_UMTS_CDMA_HANDOVER_REQ_P";
        break;
      case 224:
        result = "CM_CALL_CMD_ERR_UMTS_CDMA_HANDOVER_CNF_P";
        break;
      case 225:
        result = "CM_CALL_CMD_ERR_OFFLINE_S";
        break;
      case 226:
        result = "CM_CALL_CMD_ERR_CDMA_LOCK_S";
        break;
      case 227:
        result = "CM_CALL_CMD_ERR_FLASH_S";
        break;
      case 228:
        result = "CM_CALL_CMD_ERR_ORIG_RES_S";
        break;
      case 229:
        result = "CM_CALL_CMD_ERR_NO_FUNDS_S";
        break;
      case 230:
        result = "CM_CALL_CMD_ERR_EMERGENCY_MODE_S";
        break;
      case 231:
        result = "CM_CALL_CMD_ERR_IN_USE_S";
        break;
      case 232:
        result = "CM_CALL_CMD_ERR_SRV_TYPE_S";
        break;
      case 233:
        result = "CM_CALL_CMD_ERR_CALL_TYPE_S";
        break;
      case 234:
        result = "CM_CALL_CMD_ERR_CALL_STATE_S";
        break;
      case 235:
        result = "CM_CALL_CMD_ERR_SRV_STATE_S";
        break;
      case 236:
        result = "CM_CALL_CMD_ERR_NO_SO_S";
        break;
      case 237:
        result = "CM_CALL_CMD_ERR_ALERT_ANS_BYPASS_S";
        break;
      case 238:
        result = "CM_CALL_CMD_ERR_UIM_NOT_PRESENT_S";
        break;
      case 239:
        result = "CM_CALL_CMD_ERR_BAD_PRIVACY_PREF_S";
        break;
      case 240:
        result = "CM_CALL_CMD_ERR_NO_CALL_ID_S";
        break;
      case 241:
        result = "CM_CALL_CMD_ERR_CALL_ORIG_FAIL_S";
        break;
      case 242:
        result = "CM_CALL_CMD_ERR_INVALID_MODE_S";
        break;
      case 243:
        result = "CM_CALL_CMD_ERR_INVALID_SIM_STATE_S";
        break;
      case 244:
        result = "CM_CALL_CMD_ERR_MAX_PRIMARY_PDP_CONTEXTS_S";
        break;
      case 245:
        result = "CM_CALL_CMD_ERR_MAX_SEC_PDP_CONTEXT_PER_PRI_S";
        break;
      case 246:
        result = "CM_CALL_CMD_ERR_NO_COLLOC_HDR";
        break;
      case 247:
        result = "CM_CALL_CMD_ERR_NO_BUF_L";
        break;
      case 248:
        result = "CM_CALL_CMD_ERR_MC_COM_L";
        break;
      case 249:
        result = "CM_CALL_CMD_ERR_OTHER";
        break;
      case 250:
        result = "CM_CALL_CMD_ERR_FUNCTION_UNAVAILABLE_DUE_TO_UNDEFINED_FEATURE";
        break;
      case 251:
        result = "CM_CALL_CMD_ERR_CALL_CONTROL_REJECTED";
        break;
      case 252:
        result = "CM_CALL_CMD_ERR_FAVORED_MODE_PREF_FOR_ORIGINATION";
        break;
      case 253:
        result = "CM_CALL_CMD_ERR_CONNECTION_ID_OUT_L";
        break;
      case 254:
        result = "CM_CALL_CMD_ERR_SUPS_SRV_ON_PROHIBITED_LINE_S";
        break;
      case 255:
        result = "CM_CALL_CMD_ERR_USER_DATA_LENGTH_P";
        break;
      case 256:
        result = "CM_CALL_CMD_ERR_NON_NEGOT_BEARER_P";
        break;
      case 257:
        result = "CM_CALL_CMD_ERR_INVALID_BC_P";
        break;
      case 258:
        result = "CM_CALL_CMD_ERR_INVALID_ORIG_CLIENT_P";
        break;
      case 500:
        result = "QMI_ERR_FILE_NOT_SUPPORTED";
        break;
      case 501:
        result = "QMI_ERR_FILE_TRANSFER_BUSY";
        break;
      case 502:
        result = "QMI_ERR_TOO_MANY_DUPLICATES";
        break;
      case 503:
        result = "QMI_ERR_UNEXPECTED_SEG_NUMBER";
        break;
      case 504:
        result = "QMI_ERR_UNSUPPORTED_QMI_CMD";
        break;
      case 505:
        result = "QMI_ERR_PB_DESERIALIZE";
        break;
      case 506:
        result = "QMI_ERR_PB_SERIALIZE";
        break;
      case 507:
        result = "QMI_ERR_AWDC_CONFIG_SET";
        break;
      case 508:
        result = "QMI_ERR_AWDC_CONFIG_DELETE";
        break;
      case 509:
        result = "QMI_ERR_AWDC_SET_Q_METRICS";
        break;
      case 510:
        result = "MAV_QMI_MEAS_ERROR_BAD_MEAS_ID";
        break;
      case 511:
        result = "MAV_QMI_MEAS_ERROR_LISTENER_ERROR";
        break;
      case 512:
        result = "MAV_QMI_MEAS_ERROR_BAD_MEAS_TYPE";
        break;
      case 513:
        result = "MAV_QMI_ERR_DATA_IN_BUFFER";
        break;
      case 514:
        result = "MAV_QMI_ERR_FAIL_ORIG_DURING_INCOMING";
        break;
      case 515:
        result = "MAV_QMI_ERR_RTP_INITIALIZATION_FAILED";
        break;
      case 516:
        result = "QMI_ERR_VINYL_NOCAPABLE_UICC";
        break;
      case 517:
        result = "QMI_ERR_VINYL_NOT_READY";
        break;
      case 518:
        result = "QMI_ERR_SECURITY_FAILURE";
        break;
      case 520:
        result = "QMI_ERROR_ACTIVATION_NOT_READY";
        break;
      default:
        if (a1 != -559087616)
        {
          goto LABEL_22;
        }

        result = "ATCS_UNKNOWN_ERROR";
        break;
    }
  }

  return result;
}

const char *qmi::asLongString()
{
  result = "QMI Control Service";
  switch("QMI Control Service")
  {
    case 0u:
      return result;
    case 1u:
      result = "QMI Wireless Data Service";
      break;
    case 2u:
      result = "QMI Device Management Service";
      break;
    case 3u:
      result = "QMI Network Access Service";
      break;
    case 4u:
      result = "QMI Qos Service";
      break;
    case 5u:
      result = "QMI Wireless Messaging Service";
      break;
    case 6u:
      result = "QMI Position Determination Service";
      break;
    case 8u:
      result = "QMI Access Terminal Service";
      break;
    case 9u:
      result = "QMI Voice Service";
      break;
    case 0xAu:
      result = "QMI Card App Toolkit";
      break;
    case 0xBu:
      result = "QMI User Identity Module";
      break;
    case 0xCu:
      result = "QMI Phonebook Manager Service";
      break;
    case 0x1Au:
      result = "QMI Wireless Data Administrative Service";
      break;
    case 0x22u:
      result = "QMI Coexistence Service";
      break;
    case 0x24u:
      result = "QMI Persistent Device Service";
      break;
    case 0x28u:
      result = "QMI 5WI 787 Service";
      break;
    case 0x2Au:
      result = "QMI Data System Determination";
      break;
    case 0x2Bu:
      result = "QMI Subsystem Control";
      break;
    case 0x2Cu:
      result = "QMI Modem File System Extended Service";
      break;
    case 0x30u:
      result = "QMI Data Filter Service";
      break;
    case 0x52u:
      result = "QMI Media Service Extension";
      break;
    case 0xE1u:
      result = "QMI Audio Service";
      break;
    case 0xE2u:
      result = "QMI Board Support Package Service";
      break;
    case 0xE3u:
      result = "QMI Carrier IQ Service";
      break;
    case 0xE4u:
      result = "QMI Apple Wireless Diagnostics";
      break;
    case 0xE5u:
      result = "QMI Vinyl Service";
      break;
    case 0xE6u:
      result = "QMI Mav 5WI Service";
      break;
    case 0xE7u:
      result = "QMI Enhnaced Link Quality Metric Service";
      break;
    case 0xE8u:
      result = "QMI Mav P2P Service";
      break;
    case 0xE9u:
      result = "QMI BSP APPS Service";
      break;
    case 0xEAu:
      result = "QMI Stewie Service";
      break;
    case 0xEDu:
      result = "QMI Mav L1 Service";
      break;
    default:
      result = "Unknown Service";
      break;
  }

  return result;
}

const char *qmi::asShortString()
{
  result = "CTL";
  switch("CTL")
  {
    case 0u:
      return result;
    case 1u:
      result = "WDS";
      break;
    case 2u:
      result = "DMS";
      break;
    case 3u:
      result = "NAS";
      break;
    case 4u:
      result = "QOS";
      break;
    case 5u:
      result = "WMS";
      break;
    case 6u:
      result = "PDS";
      break;
    case 8u:
      result = "AT";
      break;
    case 9u:
      result = "VS";
      break;
    case 0xAu:
      result = "CAT";
      break;
    case 0xBu:
      result = "UIM";
      break;
    case 0xCu:
      result = "PBM";
      break;
    case 0x1Au:
      result = "WDA";
      break;
    case 0x22u:
      result = "COEX";
      break;
    case 0x24u:
      result = "PDC";
      break;
    case 0x28u:
      result = "787";
      break;
    case 0x2Au:
      result = "DSD";
      break;
    case 0x2Bu:
      result = "SSCTL";
      break;
    case 0x2Cu:
      result = "MFSE";
      break;
    case 0x30u:
      result = "DFS";
      break;
    case 0x52u:
      result = "MS";
      break;
    case 0xE1u:
      result = "AUDIO";
      break;
    case 0xE2u:
      result = "BSP";
      break;
    case 0xE3u:
      result = "CIQ";
      break;
    case 0xE4u:
      result = "AWD";
      break;
    case 0xE5u:
      result = "VINYL";
      break;
    case 0xE6u:
      result = "MAVIMS";
      break;
    case 0xE7u:
      result = "ELQM";
      break;
    case 0xE8u:
      result = "P2P";
      break;
    case 0xE9u:
      result = "APPS";
      break;
    case 0xEAu:
      result = "SFT";
      break;
    case 0xEDu:
      result = "MAVL1";
      break;
    default:
      result = "???";
      break;
  }

  return result;
}

uint64_t qmi::serviceTypeFromString(unsigned __int16 *a1)
{
  v2 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) == 3)
    {
      v10 = *a1;
      if (**a1 == 21571 && *(*a1 + 2) == 76)
      {
        return 0;
      }

      if (*v10 == 17495 && *(v10 + 2) == 83)
      {
        return 1;
      }

      if (*v10 == 19780 && *(v10 + 2) == 83)
      {
        return 2;
      }

      if (*v10 == 16718 && *(v10 + 2) == 83)
      {
        return 3;
      }

      if (*v10 == 20305 && *(v10 + 2) == 83)
      {
        return 4;
      }

      v16 = *v10;
      v17 = *(v10 + 2);
      if (v16 == 19799 && v17 == 83)
      {
        return 5;
      }
    }

    if (*(a1 + 1) == 3 && **a1 == 17488 && *(*a1 + 2) == 83)
    {
      return 6;
    }

    if (*(a1 + 1) == 2)
    {
      if (**a1 == 21569)
      {
        return 8;
      }

      if ((v2 & 0x80) == 0)
      {
        if (v2 == 3)
        {
          goto LABEL_108;
        }

        if (v2 != 2)
        {
          goto LABEL_92;
        }

        goto LABEL_70;
      }
    }

    if (*(a1 + 1) != 2 || **a1 != 21334)
    {
      if (*(a1 + 1) != 3)
      {
        goto LABEL_86;
      }

      if (**a1 == 16707 && *(*a1 + 2) == 84)
      {
        return 10;
      }

      if ((v2 & 0x80) != 0)
      {
LABEL_86:
        if (*(a1 + 1) == 3)
        {
          v22 = *a1;
          goto LABEL_88;
        }
      }

      else
      {
        v22 = a1;
        if (v2 == 3)
        {
          goto LABEL_88;
        }
      }

      goto LABEL_92;
    }

    return 9;
  }

  if (v2 == 2)
  {
    if (*a1 != 21569)
    {
LABEL_70:
      if (*a1 != 21334)
      {
        goto LABEL_92;
      }

      return 9;
    }

    return 8;
  }

  if (v2 == 3)
  {
    if (*a1 != 21571 || *(a1 + 2) != 76)
    {
      if (*a1 != 17495 || *(a1 + 2) != 83)
      {
        if (*a1 != 19780 || *(a1 + 2) != 83)
        {
          if (*a1 != 16718 || *(a1 + 2) != 83)
          {
            if (*a1 != 20305 || *(a1 + 2) != 83)
            {
              if (*a1 != 19799 || *(a1 + 2) != 83)
              {
                if (*a1 != 17488 || *(a1 + 2) != 83)
                {
LABEL_108:
                  v26 = *a1 == 16707 && *(a1 + 2) == 84;
                  v22 = a1;
                  if (!v26)
                  {
LABEL_88:
                    v23 = *v22;
                    v24 = *(v22 + 2);
                    if (v23 == 18773 && v24 == 77)
                    {
                      return 11;
                    }

                    goto LABEL_92;
                  }

                  return 10;
                }

                return 6;
              }

              return 5;
            }

            return 4;
          }

          return 3;
        }

        return 2;
      }

      return 1;
    }

    return 0;
  }

LABEL_92:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "PBM"))
  {
    return 12;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "AUDIO"))
  {
    return 225;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "BSP"))
  {
    return 226;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "CIQ"))
  {
    return 227;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "AWD"))
  {
    return 228;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "COEX"))
  {
    return 34;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "DSD"))
  {
    return 42;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "MFSE"))
  {
    return 44;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "VINYL"))
  {
    return 229;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "MAVIMS"))
  {
    return 230;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "ELQM"))
  {
    return 231;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "PDC"))
  {
    return 36;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "P2P"))
  {
    return 232;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "MS"))
  {
    return 82;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "WDA"))
  {
    return 26;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "APPS"))
  {
    return 233;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "DFS"))
  {
    return 48;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "SSCTL"))
  {
    return 43;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "SFT"))
  {
    return 234;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "MAVL1"))
  {
    return -19;
  }

  else
  {
    return -1;
  }
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE89C10, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void qmi::RandomMessageReporter::~RandomMessageReporter(qmi::RandomMessageReporter *this)
{
  *this = &unk_2A1E9B928;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

BOOL qmi::RandomMessageReporter::verifyMessageId(std::string **this, int a2, int a3)
{
  if (a2 != a3)
  {
    memset(&v42, 0, sizeof(v42));
    std::string::append(&v42, 4uLL, 48);
    if (a2)
    {
      size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
      v7 = &v42;
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v42.__r_.__value_.__r.__words[0];
      }

      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v42.__r_.__value_.__l.__size_;
      }

      v8 = v7 + size - 1;
      v9 = a2;
      do
      {
        v10 = v9;
        if ((v9 & 0xFu) >= 0xA)
        {
          v11 = (v9 & 0xF) + 87;
        }

        else
        {
          v11 = v9 & 0xF | 0x30;
        }

        *v8 = v11;
        if (v9 >= 0xA0u)
        {
          v12 = (v9 >> 4) + 87;
        }

        else
        {
          v12 = (v9 >> 4) | 0x30;
        }

        *(v8 - 1) = v12;
        v9 = HIBYTE(v9);
        v8 -= 2;
      }

      while (v10 >= 0x100);
    }

    v13 = std::string::insert(&v42, 0, "QMI Message Id does not match: actual=0x", 0x28uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v15 = v43.__r_.__value_.__l.__size_;
      v18 = (v43.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v18 - v43.__r_.__value_.__l.__size_ < 0xD)
      {
        v19 = 0x7FFFFFFFFFFFFFF7;
        v16 = v43.__r_.__value_.__l.__size_ + 13;
        if (0x7FFFFFFFFFFFFFF7 - (v43.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v43.__r_.__value_.__l.__size_ + 13 - v18)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v17 = v43.__r_.__value_.__r.__words[0];
        if (v18 > 0x3FFFFFFFFFFFFFF2)
        {
          v22 = 0;
LABEL_30:
          v23 = operator new(v19);
          v24 = v23;
          if (v15)
          {
            memmove(v23, v17, v15);
          }

          qmemcpy((v24 + v15), ", expected=0x", 13);
          if (!v22)
          {
            operator delete(v17);
          }

          v43.__r_.__value_.__l.__size_ = v16;
          v43.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
          v43.__r_.__value_.__r.__words[0] = v24;
          v25 = (v24 + v16);
LABEL_41:
          *v25 = 0;
          v46 = v43;
          memset(&v43, 0, sizeof(v43));
          memset(&__p, 0, sizeof(__p));
          std::string::append(&__p, 4uLL, 48);
          v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v30 = __p.__r_.__value_.__l.__size_;
          p_p = __p.__r_.__value_.__r.__words[0];
          if (a3)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
              v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            v31 = p_p + v30 - 1;
            v32 = a3;
            do
            {
              v33 = v32;
              if ((v32 & 0xFu) >= 0xA)
              {
                v34 = (v32 & 0xF) + 87;
              }

              else
              {
                v34 = v32 & 0xF | 0x30;
              }

              *v31 = v34;
              if (v32 >= 0xA0u)
              {
                v35 = (v32 >> 4) + 87;
              }

              else
              {
                v35 = (v32 >> 4) | 0x30;
              }

              *(v31 - 1) = v35;
              v32 = HIBYTE(v32);
              v31 -= 2;
            }

            while (v33 >= 0x100);
            v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v30 = __p.__r_.__value_.__l.__size_;
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((v28 & 0x80u) == 0)
          {
            v36 = &__p;
          }

          else
          {
            v36 = p_p;
          }

          if ((v28 & 0x80u) == 0)
          {
            v37 = v28;
          }

          else
          {
            v37 = v30;
          }

          v38 = std::string::append(&v46, v36, v37);
          v39 = *&v38->__r_.__value_.__l.__data_;
          v45 = v38->__r_.__value_.__r.__words[2];
          *v44 = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_61:
              if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_62;
              }

              goto LABEL_68;
            }
          }

          else if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          operator delete(v46.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_62:
            if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_63;
            }

LABEL_69:
            operator delete(v42.__r_.__value_.__l.__data_);
LABEL_63:
            memset(&v46, 170, sizeof(v46));
            ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v46);
            ((*this)->__r_.__value_.__r.__words[2])(this, &v46, v44);
            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v45) & 0x80000000) == 0)
              {
                return a2 != a3;
              }
            }

            else if ((SHIBYTE(v45) & 0x80000000) == 0)
            {
              return a2 != a3;
            }

            operator delete(v44[0]);
            return a2 != a3;
          }

LABEL_68:
          operator delete(v43.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_69;
        }

LABEL_21:
        v20 = 2 * v18;
        if (v16 > 2 * v18)
        {
          v20 = v16;
        }

        if ((v20 | 7) == 0x17)
        {
          v21 = 25;
        }

        else
        {
          v21 = (v20 | 7) + 1;
        }

        if (v20 >= 0x17)
        {
          v19 = v21;
        }

        else
        {
          v19 = 23;
        }

        v22 = v18 == 22;
        goto LABEL_30;
      }

      v26 = v43.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) - 10) < 0xD)
      {
        v16 = SHIBYTE(v43.__r_.__value_.__r.__words[2]) + 13;
        v17 = &v43;
        v18 = 22;
        goto LABEL_21;
      }

      v26 = &v43;
    }

    qmemcpy(v26 + v15, ", expected=0x", 13);
    v27 = v15 + 13;
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      v43.__r_.__value_.__l.__size_ = v15 + 13;
    }

    else
    {
      *(&v43.__r_.__value_.__s + 23) = v27 & 0x7F;
    }

    v25 = v26 + v27;
    goto LABEL_41;
  }

  return a2 != a3;
}

void sub_29807093C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(a15);
  goto LABEL_6;
}

void qmi::RandomMessageReporter::reportMismatch(std::string **a1, uint64_t a2)
{
  memset(&__p, 170, sizeof(__p));
  ctu::join<std::__wrap_iter<char const**>>(a1[1], a1[2], "::", 2uLL, &__p);
  ((*a1)->__r_.__value_.__r.__words[2])(a1, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_298070A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL qmi::RandomMessageReporter::verifyTlvId(std::string **this, unsigned int a2, unsigned int a3)
{
  if (a2 != a3)
  {
    memset(&v38, 0, sizeof(v38));
    std::string::append(&v38, 2uLL, 48);
    if (a2)
    {
      size = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
      v7 = &v38;
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v38.__r_.__value_.__r.__words[0];
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v38.__r_.__value_.__l.__size_;
      }

      v8 = v7 + size;
      if ((a2 & 0xF) >= 0xA)
      {
        v9 = (a2 & 0xF) + 87;
      }

      else
      {
        v9 = a2 & 0xF | 0x30;
      }

      *(v8 - 1) = v9;
      v10 = (a2 >> 4) + 87;
      if (a2 < 0xA0)
      {
        LOBYTE(v10) = (a2 >> 4) | 0x30;
      }

      *(v8 - 2) = v10;
    }

    v11 = std::string::insert(&v38, 0, "TLV Id does not match: actual=0x", 0x20uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v13 = v39.__r_.__value_.__l.__size_;
      v16 = (v39.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v16 - v39.__r_.__value_.__l.__size_ < 0xD)
      {
        v17 = 0x7FFFFFFFFFFFFFF7;
        v14 = v39.__r_.__value_.__l.__size_ + 13;
        if (0x7FFFFFFFFFFFFFF7 - (v39.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v39.__r_.__value_.__l.__size_ + 13 - v16)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v15 = v39.__r_.__value_.__r.__words[0];
        if (v16 > 0x3FFFFFFFFFFFFFF2)
        {
          v20 = 0;
LABEL_28:
          v21 = operator new(v17);
          v22 = v21;
          if (v13)
          {
            memmove(v21, v15, v13);
          }

          qmemcpy((v22 + v13), ", expected=0x", 13);
          if (!v20)
          {
            operator delete(v15);
          }

          v39.__r_.__value_.__l.__size_ = v14;
          v39.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
          v39.__r_.__value_.__r.__words[0] = v22;
          v23 = (v22 + v14);
LABEL_39:
          *v23 = 0;
          v42 = v39;
          memset(&v39, 0, sizeof(v39));
          memset(&__p, 0, sizeof(__p));
          std::string::append(&__p, 2uLL, 48);
          v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v28 = __p.__r_.__value_.__l.__size_;
          p_p = __p.__r_.__value_.__r.__words[0];
          if (a3)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
              v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            v29 = p_p + v28;
            if ((a3 & 0xF) >= 0xA)
            {
              v30 = (a3 & 0xF) + 87;
            }

            else
            {
              v30 = a3 & 0xF | 0x30;
            }

            *(v29 - 1) = v30;
            v31 = (a3 >> 4) + 87;
            if (a3 < 0xA0)
            {
              LOBYTE(v31) = (a3 >> 4) | 0x30;
            }

            *(v29 - 2) = v31;
            v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v28 = __p.__r_.__value_.__l.__size_;
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((v26 & 0x80u) == 0)
          {
            v32 = &__p;
          }

          else
          {
            v32 = p_p;
          }

          if ((v26 & 0x80u) == 0)
          {
            v33 = v26;
          }

          else
          {
            v33 = v28;
          }

          v34 = std::string::append(&v42, v32, v33);
          v35 = *&v34->__r_.__value_.__l.__data_;
          v41 = v34->__r_.__value_.__r.__words[2];
          *v40 = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_56:
              if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_57;
              }

              goto LABEL_63;
            }
          }

          else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          operator delete(v42.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_57:
            if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_58;
            }

LABEL_64:
            operator delete(v38.__r_.__value_.__l.__data_);
LABEL_58:
            memset(&v42, 170, sizeof(v42));
            ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &v42);
            ((*this)->__r_.__value_.__r.__words[2])(this, &v42, v40);
            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v41) & 0x80000000) == 0)
              {
                return a2 != a3;
              }
            }

            else if ((SHIBYTE(v41) & 0x80000000) == 0)
            {
              return a2 != a3;
            }

            operator delete(v40[0]);
            return a2 != a3;
          }

LABEL_63:
          operator delete(v39.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_64;
        }

LABEL_19:
        v18 = 2 * v16;
        if (v14 > 2 * v16)
        {
          v18 = v14;
        }

        if ((v18 | 7) == 0x17)
        {
          v19 = 25;
        }

        else
        {
          v19 = (v18 | 7) + 1;
        }

        if (v18 >= 0x17)
        {
          v17 = v19;
        }

        else
        {
          v17 = 23;
        }

        v20 = v16 == 22;
        goto LABEL_28;
      }

      v24 = v39.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) - 10) < 0xD)
      {
        v14 = SHIBYTE(v39.__r_.__value_.__r.__words[2]) + 13;
        v15 = &v39;
        v16 = 22;
        goto LABEL_19;
      }

      v24 = &v39;
    }

    qmemcpy(v24 + v13, ", expected=0x", 13);
    v25 = v13 + 13;
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      v39.__r_.__value_.__l.__size_ = v13 + 13;
    }

    else
    {
      *(&v39.__r_.__value_.__s + 23) = v25 & 0x7F;
    }

    v23 = v24 + v25;
    goto LABEL_39;
  }

  return a2 != a3;
}

void sub_298070EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(a15);
  goto LABEL_6;
}

void qmi::RandomMessageReporter::reportTlvMissing(std::string **this, unsigned int a2)
{
  memset(&v24, 0, sizeof(v24));
  std::string::append(&v24, 2uLL, 48);
  if (a2)
  {
    size = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
    v5 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v6 = v5 + size;
    if ((a2 & 0xF) >= 0xA)
    {
      v7 = (a2 & 0xF) + 87;
    }

    else
    {
      v7 = a2 & 0xF | 0x30;
    }

    *(v6 - 1) = v7;
    v8 = (a2 >> 4) + 87;
    if (a2 < 0xA0)
    {
      LOBYTE(v8) = (a2 >> 4) | 0x30;
    }

    *(v6 - 2) = v8;
  }

  v9 = std::string::insert(&v24, 0, "TLV 0x", 6uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) < 0x17u)
    {
      v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) | 0x20;
      p_p = &__p;
      v14 = 22;
LABEL_18:
      v16 = 2 * v14;
      if (v12 > 2 * v14)
      {
        v16 = v12;
      }

      if ((v16 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v16 | 7) + 1;
      }

      if (v16 >= 0x17)
      {
        v15 = v17;
      }

      else
      {
        v15 = 23;
      }

      v18 = v14 == 22;
      goto LABEL_27;
    }

    v22 = &__p;
    qmemcpy(&__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]), " is not present but was expected", 32);
    v23 = v11 + 32;
    *(&__p.__r_.__value_.__s + 23) = (v11 + 32) & 0x7F;
LABEL_34:
    v21 = v22 + v23;
    goto LABEL_35;
  }

  v11 = __p.__r_.__value_.__l.__size_;
  v14 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v14 - __p.__r_.__value_.__l.__size_ >= 0x20)
  {
    v22 = __p.__r_.__value_.__r.__words[0];
    qmemcpy((__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_), " is not present but was expected", 32);
    v23 = v11 + 32;
    __p.__r_.__value_.__l.__size_ = v11 + 32;
    goto LABEL_34;
  }

  v15 = 0x7FFFFFFFFFFFFFF7;
  v12 = __p.__r_.__value_.__l.__size_ + 32;
  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 32 - v14)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if (v14 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_18;
  }

  v18 = 0;
LABEL_27:
  v19 = operator new(v15);
  v20 = v19;
  if (v11)
  {
    memmove(v19, p_p, v11);
  }

  qmemcpy((v20 + v11), " is not present but was expected", 32);
  if (!v18)
  {
    operator delete(p_p);
  }

  __p.__r_.__value_.__l.__size_ = v12;
  __p.__r_.__value_.__r.__words[2] = v15 | 0x8000000000000000;
  __p.__r_.__value_.__r.__words[0] = v20;
  v21 = (v20 + v12);
LABEL_35:
  *v21 = 0;
  v25 = __p;
  memset(&__p, 0, sizeof(__p));
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  memset(&__p, 170, sizeof(__p));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &__p);
  ((*this)->__r_.__value_.__r.__words[2])(this, &__p, &v25);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_41;
  }
}

void sub_29807124C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void qmi::RandomMessageReporter::reportParseUnderrun(std::string **this)
{
  v2 = operator new(0x48uLL);
  v3 = xmmword_298086D30;
  strcpy(v2, "Parse underrun; expected end of message but more bytes still remain");
  memset(&__p, 170, sizeof(__p));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &__p);
  ((*this)->__r_.__value_.__r.__words[2])(this, &__p, &v2);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v3) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(v2);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v3) < 0)
  {
    goto LABEL_5;
  }
}

void sub_2980713A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void qmi::RandomMessageReporter::reportTlvParseFailure(std::string **this, unsigned int a2)
{
  memset(&v24, 0, sizeof(v24));
  std::string::append(&v24, 2uLL, 48);
  if (a2)
  {
    size = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
    v5 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v6 = v5 + size;
    if ((a2 & 0xF) >= 0xA)
    {
      v7 = (a2 & 0xF) + 87;
    }

    else
    {
      v7 = a2 & 0xF | 0x30;
    }

    *(v6 - 1) = v7;
    v8 = (a2 >> 4) + 87;
    if (a2 < 0xA0)
    {
      LOBYTE(v8) = (a2 >> 4) | 0x30;
    }

    *(v6 - 2) = v8;
  }

  v9 = std::string::insert(&v24, 0, "TLV 0x", 6uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 7) < 0x10)
    {
      v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 16;
      p_p = &__p;
      v14 = 22;
LABEL_18:
      v16 = 2 * v14;
      if (v12 > 2 * v14)
      {
        v16 = v12;
      }

      if ((v16 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v16 | 7) + 1;
      }

      if (v16 >= 0x17)
      {
        v15 = v17;
      }

      else
      {
        v15 = 23;
      }

      v18 = v14 == 22;
      goto LABEL_27;
    }

    v22 = &__p;
LABEL_34:
    *(&v22->__r_.__value_.__l.__data_ + v11) = *" failed to parse";
    v23 = v11 + 16;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = v11 + 16;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v23 & 0x7F;
    }

    v21 = v22 + v23;
    goto LABEL_38;
  }

  v11 = __p.__r_.__value_.__l.__size_;
  v14 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v14 - __p.__r_.__value_.__l.__size_ >= 0x10)
  {
    v22 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_34;
  }

  v15 = 0x7FFFFFFFFFFFFFF7;
  v12 = __p.__r_.__value_.__l.__size_ + 16;
  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 16 - v14)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if (v14 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_18;
  }

  v18 = 0;
LABEL_27:
  v19 = operator new(v15);
  v20 = v19;
  if (v11)
  {
    memmove(v19, p_p, v11);
  }

  *(v20 + v11) = *" failed to parse";
  if (!v18)
  {
    operator delete(p_p);
  }

  __p.__r_.__value_.__l.__size_ = v12;
  __p.__r_.__value_.__r.__words[2] = v15 | 0x8000000000000000;
  __p.__r_.__value_.__r.__words[0] = v20;
  v21 = (v20 + v12);
LABEL_38:
  *v21 = 0;
  v25 = __p;
  memset(&__p, 0, sizeof(__p));
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  memset(&__p, 170, sizeof(__p));
  ctu::join<std::__wrap_iter<char const**>>(this[1], this[2], "::", 2uLL, &__p);
  ((*this)->__r_.__value_.__r.__words[2])(this, &__p, &v25);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_44:
    operator delete(v25.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_44;
  }
}

void sub_2980716C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *ctu::join<std::__wrap_iter<char const**>>@<X0>(std::string *result@<X0>, std::string *a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (result != a2)
  {
    v8 = result;
    result = std::string::__assign_external(a5, result->__r_.__value_.__l.__data_);
    if ((a4 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (a4 | 7) + 1;
    }

    if (a3)
    {
      if (a4 < 0x7FFFFFFFFFFFFFF8)
      {
        if (a4 >= 0x17)
        {
          for (i = &v8->__r_.__value_.__l.__size_; i != a2; ++i)
          {
            v20 = operator new(v10);
            v27 = a4;
            v28 = v10 | 0x8000000000000000;
            __dst = v20;
            memmove(v20, a3, a4);
            v20[a4] = 0;
            std::string::append(a5, v20, a4);
            operator delete(v20);
            v21 = *i;
            v22 = strlen(v21);
            result = std::string::append(a5, v21, v22);
          }
        }

        else if (a4)
        {
          for (j = &v8->__r_.__value_.__l.__size_; j != a2; ++j)
          {
            HIBYTE(v28) = a4;
            memmove(&__dst, a3, a4);
            *(&__dst + a4) = 0;
            if (v28 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            if (v28 >= 0)
            {
              v18 = HIBYTE(v28);
            }

            else
            {
              v18 = v27;
            }

            std::string::append(a5, p_dst, v18);
            if (SHIBYTE(v28) < 0)
            {
              operator delete(__dst);
            }

            v15 = *j;
            v16 = strlen(v15);
            result = std::string::append(a5, v15, v16);
          }
        }

        else
        {
          for (k = &v8->__r_.__value_.__l.__size_; k != a2; ++k)
          {
            HIBYTE(v28) = 0;
            LOBYTE(__dst) = 0;
            std::string::append(a5, &__dst, 0);
            if (SHIBYTE(v28) < 0)
            {
              operator delete(__dst);
            }

            v24 = *k;
            v25 = strlen(v24);
            result = std::string::append(a5, v24, v25);
          }
        }
      }

      else if (&v8->__r_.__value_.__r.__words[1] != a2)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      for (m = &v8->__r_.__value_.__l.__size_; m != a2; ++m)
      {
        v12 = *m;
        v13 = strlen(v12);
        result = std::string::append(a5, v12, v13);
      }
    }
  }

  return result;
}

void sub_298071954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

_DWORD *sInitializeAtcsQmiMessageDefinitions(uint64_t **a1)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&_MergedGlobals);
    a1 = v3;
    if (v4)
    {
      MessageCollection_QMI_CTL_Printers_h::MessageCollection_QMI_CTL_Printers_h(v3);
      __cxa_atexit(MessageCollection_QMI_CTL_Printers_h::~MessageCollection_QMI_CTL_Printers_h, &qword_2A1899610, &dword_29806B000);
      __cxa_guard_release(&_MergedGlobals);
      a1 = v3;
    }
  }

  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899620;
  v8 = word_2A1899622;
  v9 = byte_2A1899624;
  v5 = &qword_2A1899610;
  v1 = a1;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(a1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899658;
  v8 = word_2A189965A;
  v9 = byte_2A189965C;
  v5 = &qword_2A1899648;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899680;
  v8 = word_2A1899682;
  v9 = byte_2A1899684;
  v5 = &qword_2A1899670;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A18996B8;
  v8 = word_2A18996BA;
  v9 = byte_2A18996BC;
  v5 = &qword_2A18996A8;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A18996E0;
  v8 = word_2A18996E2;
  v9 = byte_2A18996E4;
  v5 = &qword_2A18996D0;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899708;
  v8 = word_2A189970A;
  v9 = byte_2A189970C;
  v5 = &qword_2A18996F8;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899740;
  v8 = word_2A1899742;
  v9 = byte_2A1899744;
  v5 = &qword_2A1899730;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899768;
  v8 = word_2A189976A;
  v9 = byte_2A189976C;
  v5 = &qword_2A1899758;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A18997A0;
  v8 = word_2A18997A2;
  v9 = byte_2A18997A4;
  v5 = &qword_2A1899790;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A18997C8;
  v8 = word_2A18997CA;
  v9 = byte_2A18997CC;
  v5 = &qword_2A18997B8;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899800;
  v8 = word_2A1899802;
  v9 = byte_2A1899804;
  v5 = &qword_2A18997F0;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899838;
  v8 = word_2A189983A;
  v9 = byte_2A189983C;
  v5 = &qword_2A1899828;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899860;
  v8 = word_2A1899862;
  v9 = byte_2A1899864;
  v5 = &qword_2A1899850;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A1899888;
  v8 = word_2A189988A;
  v9 = byte_2A189988C;
  v5 = &qword_2A1899878;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A18998A0;
  v8 = word_2A18998A2;
  v9 = byte_2A18998A4;
  v5 = &qword_2A1899890;
  std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
  v7 = -86;
  v10 = -86;
  v6 = byte_2A18998B8;
  v8 = word_2A18998BA;
  v9 = byte_2A18998BC;
  v5 = &qword_2A18998A8;
  return std::__tree<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::__map_value_compare<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>,std::less<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>>,true>,std::allocator<std::__value_type<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType>,QmiMessageDefinition const*>>>::__emplace_multi<std::tuple<qmi::ServiceType,unsigned short,qmi::MessageType> const&,QmiMessageDefinition const*>(v1, &v6, &v5);
}

void MessageCollection_QMI_CTL_Printers_h::~MessageCollection_QMI_CTL_Printers_h(MessageCollection_QMI_CTL_Printers_h *this)
{
  *(this + 83) = &unk_2A1E9C140;
  *(this + 72) = &unk_2A1E9C110;
  *(this + 67) = &unk_2A1E9C0E0;
  *(this + 60) = &unk_2A1E9C0B0;
  *(this + 53) = &unk_2A1E9C080;
  *(this + 48) = &unk_2A1E9C050;
  *(this + 41) = &unk_2A1E9C020;
  *(this + 36) = &unk_2A1E9BFF0;
  *(this + 29) = &unk_2A1E9BFC0;
  *(this + 24) = &unk_2A1E9BF90;
  *(this + 19) = &unk_2A1E9BF60;
  *(this + 12) = &unk_2A1E9BF30;
  *(this + 7) = &unk_2A1E9BF00;
  *this = &unk_2A1E9BED0;
}

void MessageCollection_QMI_CTL_Printers_h::MessageCollection_QMI_CTL_Printers_h(MessageCollection_QMI_CTL_Printers_h *this)
{
  byte_2A1899620 = 0;
  word_2A1899622 = 41;
  byte_2A1899624 = 0;
  qword_2A1899610 = &unk_2A1E9BED0;
  *algn_2A1899618 = "ctl::ConfigPowerSaveMode::Request";
  qword_2A1899628 = &unk_2A1E9B9A8;
  unk_2A1899630 = "ctl::tlv::PowerSaveDescriptor";
  qword_2A1899638 = &unk_2A1E9B9F0;
  unk_2A1899640 = "ctl::tlv::IndicationSet";
  byte_2A1899658 = 0;
  word_2A189965A = 41;
  byte_2A189965C = 1;
  qword_2A1899648 = &unk_2A1E9BF00;
  unk_2A1899650 = "ctl::ConfigPowerSaveMode::Response";
  qword_2A1899660 = &unk_2A1E9BC68;
  unk_2A1899668 = "QMI Response Result";
  byte_2A1899680 = 0;
  word_2A1899682 = 50;
  byte_2A1899684 = 0;
  qword_2A1899670 = &unk_2A1E9BF30;
  unk_2A1899678 = "ctl::ConfigPowerSaveModeExt::Request";
  qword_2A1899688 = &unk_2A1E9B9A8;
  unk_2A1899690 = "ctl::tlv::PowerSaveDescriptor";
  qword_2A1899698 = &unk_2A1E9BA38;
  unk_2A18996A0 = "ctl::tlv::IndicationSetExt";
  byte_2A18996B8 = 0;
  word_2A18996BA = 50;
  byte_2A18996BC = 1;
  qword_2A18996A8 = &unk_2A1E9BF60;
  unk_2A18996B0 = "ctl::ConfigPowerSaveModeExt::Response";
  qword_2A18996C0 = &unk_2A1E9BC68;
  unk_2A18996C8 = "QMI Response Result";
  byte_2A18996E0 = 0;
  word_2A18996E2 = 34;
  byte_2A18996E4 = 0;
  qword_2A18996D0 = &unk_2A1E9BF90;
  unk_2A18996D8 = "ctl::GetClientId::Request";
  qword_2A18996E8 = &unk_2A1E9BA80;
  unk_2A18996F0 = "ctl::tlv::ServiceType";
  byte_2A1899708 = 0;
  word_2A189970A = 34;
  byte_2A189970C = 1;
  qword_2A18996F8 = &unk_2A1E9BFC0;
  unk_2A1899700 = "ctl::GetClientId::Response";
  qword_2A1899710 = &unk_2A1E9BC68;
  unk_2A1899718 = "QMI Response Result";
  qword_2A1899720 = &unk_2A1E9BAC8;
  unk_2A1899728 = "ctl::tlv::AssignedId";
  byte_2A1899740 = 0;
  word_2A1899742 = 35;
  byte_2A1899744 = 0;
  qword_2A1899730 = &unk_2A1E9BFF0;
  unk_2A1899738 = "ctl::ReleaseClientId::Request";
  qword_2A1899748 = &unk_2A1E9BAC8;
  unk_2A1899750 = "ctl::tlv::AssignedId";
  byte_2A1899768 = 0;
  word_2A189976A = 35;
  byte_2A189976C = 1;
  qword_2A1899758 = &unk_2A1E9C020;
  unk_2A1899760 = "ctl::ReleaseClientId::Response";
  qword_2A1899770 = &unk_2A1E9BC68;
  unk_2A1899778 = "QMI Response Result";
  qword_2A1899780 = &unk_2A1E9BAC8;
  unk_2A1899788 = "ctl::tlv::AssignedId";
  qword_2A1899798 = "ctl::RevokeClientId::Indication";
  byte_2A18997A0 = 0;
  word_2A18997A2 = 36;
  byte_2A18997A4 = 2;
  qword_2A1899790 = &unk_2A1E9C050;
  qword_2A18997A8 = &unk_2A1E9BAC8;
  unk_2A18997B0 = "ctl::tlv::AssignedId";
  byte_2A18997C8 = 0;
  word_2A18997CA = 38;
  byte_2A18997CC = 0;
  qword_2A18997B8 = &unk_2A1E9C080;
  unk_2A18997C0 = "ctl::SetDataFormat::Request";
  qword_2A18997D0 = &unk_2A1E9BB10;
  unk_2A18997D8 = "ctl::tlv::DataFormat";
  qword_2A18997E0 = &unk_2A1E9BB58;
  unk_2A18997E8 = "ctl::tlv::LinkLayerProtocol";
  byte_2A1899800 = 0;
  word_2A1899802 = 38;
  byte_2A1899804 = 1;
  qword_2A18997F0 = &unk_2A1E9C0B0;
  unk_2A18997F8 = "ctl::SetDataFormat::Response";
  qword_2A1899808 = &unk_2A1E9BC68;
  unk_2A1899810 = "QMI Response Result";
  qword_2A1899820 = "ctl::tlv::LinkLayerProtocol";
  qword_2A1899818 = &unk_2A1E9BB58;
  qword_2A1899830 = "ctl::SetPowerSaveMode::Request";
  byte_2A1899838 = 0;
  word_2A189983A = 42;
  byte_2A189983C = 0;
  qword_2A1899828 = &unk_2A1E9C0E0;
  qword_2A1899848 = "ctl::tlv::PowerSaveState";
  qword_2A1899840 = &unk_2A1E9BBA0;
  qword_2A1899858 = "ctl::SetPowerSaveMode::Response";
  byte_2A1899860 = 0;
  word_2A1899862 = 42;
  byte_2A1899864 = 1;
  qword_2A1899850 = &unk_2A1E9C110;
  qword_2A1899870 = "QMI Response Result";
  qword_2A1899868 = &unk_2A1E9BC68;
  qword_2A1899880 = "ctl::Sync::Indication";
  byte_2A1899888 = 0;
  word_2A189988A = 39;
  byte_2A189988C = 2;
  qword_2A1899878 = &unk_2A1E9C2A8;
  qword_2A1899898 = "ctl::Sync::Request";
  byte_2A18998A0 = 0;
  word_2A18998A2 = 39;
  byte_2A18998A4 = 0;
  qword_2A1899890 = &unk_2A1E9C2F0;
  qword_2A18998B0 = "ctl::Sync::Response";
  byte_2A18998B8 = 0;
  word_2A18998BA = 39;
  byte_2A18998BC = 1;
  qword_2A18998A8 = &unk_2A1E9C140;
  qword_2A18998C8 = "QMI Response Result";
  qword_2A18998C0 = &unk_2A1E9BC68;
}

void TlvDefinitionImpl<ctl::tlv::PowerSaveDescriptor,(unsigned char)1>::parse(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v13 = 0xAAAAAA0000000000;
  tlv::throwIfNotEnoughBytes(v5, v6, 4uLL);
  v7 = *v5++;
  LODWORD(v13) = v7;
  tlv::throwIfNotEnoughBytes(v5, v6, 1uLL);
  BYTE4(v13) = *v5;
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v8;
  *(a3 + 16) = v8;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v9, *(a1 + 8));
  ctl::tlv::print_tlv_field(&v13, &object);
  v10 = object;
  object = xpc_null_create();
  v11 = *(a3 + 32);
  *(a3 + 32) = v10;
  xpc_release(v11);
  xpc_release(object);
}

void sub_2980728D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29807282CLL);
}

char *TlvDefinitionImpl<ctl::tlv::PowerSaveDescriptor,(unsigned char)1>::build@<X0>(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0xAAAAAA0000000000;
  ctl::tlv::build_tlv_field(a1, &v4);
  result = operator new(5uLL);
  *a2 = result;
  a2[1] = result + 5;
  a2[2] = result + 5;
  *result = v4;
  result[4] = BYTE4(v4);
  return result;
}

void sub_298072954(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x298072944);
}

void sub_298072960(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TlvAnnotation::~TlvAnnotation(xpc_object_t *this)
{
  xpc_release(this[4]);
  this[4] = 0;
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void TlvAnnotation::TlvAnnotation(TlvAnnotation *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 24) = 0;
  *(this + 2) = 0;
  v2 = xpc_array_create(0, 0);
  v3 = v2;
  if (v2)
  {
    *(this + 4) = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *(this + 4) = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v3) != MEMORY[0x29EDCA9E0])
  {
    v4 = xpc_null_create();
LABEL_8:
    *(this + 4) = v4;
    goto LABEL_9;
  }

  xpc_retain(v3);
LABEL_9:
  xpc_release(v3);
}

void TlvDefinitionImpl<ctl::tlv::IndicationSet,(unsigned char)17>::parse(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  tlv::throwIfNotAligned(v7, v6, 2uLL);
  v8 = v6 - v7;
  if ((v6 - v7) >= 2)
  {
    v9 = operator new(v8 & 0xFFFFFFFFFFFFFFFELL);
    bzero(v9, v8 & 0xFFFFFFFFFFFFFFFELL);
    v15 = v9;
    v16 = (v9 + (v8 & 0xFFFFFFFFFFFFFFFELL));
    v17 = &v9[v8 >> 1];
  }

  else
  {
    v9 = 0;
  }

  memcpy(v9, v7, v8);
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v10;
  *(a3 + 16) = v10;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v11, *(a1 + 8));
  if (v7)
  {
    ctl::tlv::print_tlv_field(&v15, &object);
    v12 = object;
    object = xpc_null_create();
    v13 = *(a3 + 32);
    *(a3 + 32) = v12;
    xpc_release(v13);
    xpc_release(object);
    v9 = v15;
    if (!v15)
    {
      return;
    }
  }

  else
  {
    TlvDefinition::sFillInParseFailure(a3, a2);
    if (!v9)
    {
      return;
    }
  }

  v16 = v9;
  operator delete(v9);
}

void sub_298072BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  TlvAnnotation::~TlvAnnotation(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_298072BEC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x298072B24);
}

void TlvDefinitionImpl<ctl::tlv::IndicationSet,(unsigned char)17>::build(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  extract_tlv_field(a1, "fEnabledIndSet", 0, &object);
  tlv::build_tlv_field<unsigned short>(&object, &v6);
  xpc_release(object);
  v3 = v6;
  v4 = v7 - v6;
  if (v7 == v6)
  {
    memcpy(0, v6, v7 - v6);
    a2[1] = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v5 = operator new(v7 - v6);
  *a2 = v5;
  a2[1] = &v5[v4];
  a2[2] = &v5[v4];
  memcpy(v5, v3, v4);
  if (v3)
  {
LABEL_6:
    v7 = v3;
    operator delete(v3);
  }
}

void sub_298072CD4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a9)
  {
    JUMPOUT(0x298072CB4);
  }

  JUMPOUT(0x298072CA8);
}

void sub_298072D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
    v12 = *v10;
    if (!*v10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v12 = *v10;
    if (!*v10)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(exception_object);
}

void TlvDefinitionImpl<ctl::tlv::IndicationSetExt,(unsigned char)16>::parse(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  tlv::throwIfNotEnoughBytes(v6, v5, 1uLL);
  v9 = *v6;
  v7 = v6 + 1;
  v8 = v9;
  v10 = 2 * v9;
  tlv::throwIfNotEnoughBytes(v7, v5, v10);
  if (v9)
  {
    v11 = operator new(v10);
    bzero(v11, v10);
    v17 = v11;
    v18 = &v11[v10];
    v19 = &v11[2 * v8];
  }

  else
  {
    v11 = 0;
  }

  memcpy(v11, v7, v10);
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v12;
  *(a3 + 16) = v12;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v13, *(a1 + 8));
  ctl::tlv::print_tlv_field(&v17, &object);
  v14 = object;
  object = xpc_null_create();
  v15 = *(a3 + 32);
  *(a3 + 32) = v14;
  xpc_release(v15);
  xpc_release(object);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_298072E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  TlvAnnotation::~TlvAnnotation(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_298072EB8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x298072DF0);
}

void TlvDefinitionImpl<ctl::tlv::IndicationSetExt,(unsigned char)16>::build(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  extract_tlv_field(a1, "fEnabledIndSet", 0, &object);
  tlv::build_tlv_field<unsigned short>(&object, &v9);
  xpc_release(object);
  v3 = v9;
  v4 = v10 - v9;
  v5 = v10 - v9 + 1;
  if (v5 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = operator new(v10 - v9 + 1);
  v7 = &v6[v5];
  v8 = v6;
  bzero(v6, v5);
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v7;
  *v8 = v4 >> 1;
  memcpy(v8 + 1, v3, v4);
  if (v3)
  {
    v10 = v3;
    operator delete(v3);
  }
}

void sub_298072FA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a9)
  {
    JUMPOUT(0x298072F80);
  }

  JUMPOUT(0x298072F74);
}

void sub_298072FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
    v12 = *v10;
    if (!*v10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v12 = *v10;
    if (!*v10)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(exception_object);
}

void TlvDefinitionImpl<ctl::tlv::ServiceType,(unsigned char)1>::parse(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v12 = 0;
  tlv::throwIfNotEnoughBytes(v6, v5, 1uLL);
  v12 = *v6;
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v7;
  *(a3 + 16) = v7;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v8, *(a1 + 8));
  ctl::tlv::print_tlv_field(&v12, &object);
  v9 = object;
  object = xpc_null_create();
  v10 = *(a3 + 32);
  *(a3 + 32) = v9;
  xpc_release(v10);
  xpc_release(object);
}

void sub_2980730FC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x298073064);
}

_BYTE *TlvDefinitionImpl<ctl::tlv::ServiceType,(unsigned char)1>::build@<X0>(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  extract_tlv_field(a1, "fSvcType", 0, &object);
  v3 = sAttemptDecodeNumber(&object, &v7);
  xpc_release(object);
  v4 = operator new(1uLL);
  *a2 = v4;
  *v4 = v3;
  result = v4 + 1;
  a2[1] = result;
  a2[2] = result;
  return result;
}

void sub_298073198(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x298073184);
}

void sub_2980731C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TlvDefinitionImpl<ctl::tlv::AssignedId,(unsigned char)1>::parse(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v13 = 0;
  tlv::throwIfNotEnoughBytes(v5, v6, 1uLL);
  v7 = *v5++;
  LOBYTE(v13) = v7;
  tlv::throwIfNotEnoughBytes(v5, v6, 1uLL);
  HIBYTE(v13) = *v5;
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v8;
  *(a3 + 16) = v8;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v9, *(a1 + 8));
  ctl::tlv::print_tlv_field(&v13, &object);
  v10 = object;
  object = xpc_null_create();
  v11 = *(a3 + 32);
  *(a3 + 32) = v10;
  xpc_release(v11);
  xpc_release(object);
}

void sub_2980732F4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x298073248);
}

_WORD *TlvDefinitionImpl<ctl::tlv::AssignedId,(unsigned char)1>::build@<X0>(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 0;
  ctl::tlv::build_tlv_field(a1, &v5);
  v3 = operator new(2uLL);
  *a2 = v3;
  *v3 = v5;
  result = v3 + 1;
  a2[1] = result;
  a2[2] = result;
  return result;
}

void sub_29807335C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29807334CLL);
}

void sub_298073368(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TlvDefinitionImpl<ctl::tlv::DataFormat,(unsigned char)1>::parse(uint64_t a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v12 = 0;
  tlv::throwIfNotEnoughBytes(v6, v5, 1uLL);
  v12 = *v6;
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v7;
  *(a3 + 16) = v7;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v8, *(a1 + 8));
  ctl::tlv::print_tlv_field(&v12, &object);
  v9 = object;
  object = xpc_null_create();
  v10 = *(a3 + 32);
  *(a3 + 32) = v9;
  xpc_release(v10);
  xpc_release(object);
}

void sub_29807346C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2980733D4);
}

_BYTE *TlvDefinitionImpl<ctl::tlv::DataFormat,(unsigned char)1>::build@<X0>(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  extract_tlv_field(a1, "fFormat", 0, &object);
  v3 = sAttemptDecodeNumber(&object, &v7);
  xpc_release(object);
  v4 = operator new(1uLL);
  *a2 = v4;
  *v4 = v3;
  result = v4 + 1;
  a2[1] = result;
  a2[2] = result;
  return result;
}

void sub_298073508(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2980734F4);
}

void sub_298073530(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TlvDefinitionImpl<ctl::tlv::LinkLayerProtocol,(unsigned char)16>::parse(uint64_t a1@<X0>, unsigned __int16 **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v12 = 0;
  tlv::throwIfNotEnoughBytes(v6, v5, 2uLL);
  v12 = *v6;
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v7;
  *(a3 + 16) = v7;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v8, *(a1 + 8));
  ctl::tlv::print_tlv_field(&v12, &object);
  v9 = object;
  object = xpc_null_create();
  v10 = *(a3 + 32);
  *(a3 + 32) = v9;
  xpc_release(v10);
  xpc_release(object);
}

void sub_298073634(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29807359CLL);
}

_WORD *TlvDefinitionImpl<ctl::tlv::LinkLayerProtocol,(unsigned char)16>::build@<X0>(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  extract_tlv_field(a1, "fProtocol", 0, &object);
  v3 = sAttemptDecodeNumber(&object, &v7);
  xpc_release(object);
  v4 = operator new(2uLL);
  *a2 = v4;
  *v4 = v3;
  result = v4 + 1;
  a2[1] = result;
  a2[2] = result;
  return result;
}

void sub_2980736D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2980736BCLL);
}

void sub_2980736F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TlvDefinitionImpl<ctl::tlv::PowerSaveState,(unsigned char)1>::parse(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v12 = 0;
  tlv::throwIfNotEnoughBytes(v6, v5, 4uLL);
  v12 = *v6;
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v7;
  *(a3 + 16) = v7;
  TlvAnnotation::TlvAnnotation(a3);
  std::string::__assign_external(v8, *(a1 + 8));
  ctl::tlv::print_tlv_field(&v12, &object);
  v9 = object;
  object = xpc_null_create();
  v10 = *(a3 + 32);
  *(a3 + 32) = v9;
  xpc_release(v10);
  xpc_release(object);
}

void sub_2980737FC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x298073764);
}

_DWORD *TlvDefinitionImpl<ctl::tlv::PowerSaveState,(unsigned char)1>::build@<X0>(xpc_object_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 0;
  extract_tlv_field(a1, "fHandle", 0, &object);
  tlv::build_tlv_field(&object, &v5);
  xpc_release(object);
  v3 = operator new(4uLL);
  *a2 = v3;
  *v3 = v5;
  result = v3 + 1;
  a2[1] = result;
  a2[2] = result;
  return result;
}

void sub_29807389C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x298073888);
}

void sub_2980738C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t print_tlv_field@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  return print_tlv_field_as<unsigned short,ctl::LinkLayerProtocol>(a2, a1);
}

{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  *(&v19 + *(v19 - 24) + 8) = *(&v19 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x29C27F740](&v19, a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (0x", 4);
  v7 = v6;
  v8 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v6 + *(v8 - 24) + 24) = 2;
  v9 = v6 + *(v8 - 24);
  if (*(v9 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v8 - 24)));
    v10 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 32);
    std::locale::~locale(&v28);
    *(v9 + 36) = v11;
  }

  *(v9 + 36) = 48;
  v12 = MEMORY[0x29C27F740](v7, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_16;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_16:
    memmove(a2, v15, v13);
  }

LABEL_17:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v26);
}

{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  *(&v19 + *(v19 - 24) + 8) = *(&v19 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x29C27F790](&v19, a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (0x", 4);
  v7 = v6;
  v8 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v6 + *(v8 - 24) + 24) = 4;
  v9 = v6 + *(v8 - 24);
  if (*(v9 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v8 - 24)));
    v10 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 32);
    std::locale::~locale(&v28);
    *(v9 + 36) = v11;
  }

  *(v9 + 36) = 48;
  v12 = MEMORY[0x29C27F790](v7, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_16;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_16:
    memmove(a2, v15, v13);
  }

LABEL_17:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v26);
}

{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  *(&v19 + *(v19 - 24) + 8) = *(&v19 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x29C27F750](&v19, a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (0x", 4);
  v7 = v6;
  v8 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v6 + *(v8 - 24) + 24) = 8;
  v9 = v6 + *(v8 - 24);
  if (*(v9 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v8 - 24)));
    v10 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 32);
    std::locale::~locale(&v28);
    *(v9 + 36) = v11;
  }

  *(v9 + 36) = 48;
  v12 = MEMORY[0x29C27F750](v7, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_16;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_16:
    memmove(a2, v15, v13);
  }

LABEL_17:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v26);
}

{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  *(&v19 + *(v19 - 24) + 8) = *(&v19 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x29C27F7B0](&v19, a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (0x", 4);
  v7 = v6;
  v8 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v6 + *(v8 - 24) + 24) = 16;
  v9 = v6 + *(v8 - 24);
  if (*(v9 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v8 - 24)));
    v10 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 32);
    std::locale::~locale(&v28);
    *(v9 + 36) = v11;
  }

  *(v9 + 36) = 48;
  v12 = MEMORY[0x29C27F7B0](v7, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_16;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_16:
    memmove(a2, v15, v13);
  }

LABEL_17:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v26);
}

{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  *(&v19 + *(v19 - 24) + 8) = *(&v19 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x29C27F7C0](&v19, a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (0x", 4);
  v7 = v6;
  v8 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v6 + *(v8 - 24) + 24) = 16;
  v9 = v6 + *(v8 - 24);
  if (*(v9 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v8 - 24)));
    v10 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 32);
    std::locale::~locale(&v28);
    *(v9 + 36) = v11;
  }

  *(v9 + 36) = 48;
  v12 = MEMORY[0x29C27F7C0](v7, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_16;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_16:
    memmove(a2, v15, v13);
  }

LABEL_17:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v26);
}

uint64_t print_tlv_field_as<unsigned short,ctl::LinkLayerProtocol>(_BYTE *a1, uint64_t a2)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  *(&v19 + *(v19 - 24) + 8) = *(&v19 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x29C27F750](&v19, a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (0x", 4);
  v7 = v6;
  v8 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v6 + *(v8 - 24) + 24) = 4;
  v9 = v6 + *(v8 - 24);
  if (*(v9 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v8 - 24)));
    v10 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 32);
    std::locale::~locale(&v28);
    *(v9 + 36) = v11;
  }

  *(v9 + 36) = 48;
  v12 = MEMORY[0x29C27F770](v7, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a1[23] = 0;
      goto LABEL_17;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a1 + 1) = v13;
    *(a1 + 2) = v16 | 0x8000000000000000;
    *a1 = v17;
    a1 = v17;
    goto LABEL_16;
  }

  a1[23] = v13;
  if (v13)
  {
LABEL_16:
    memmove(a1, v15, v13);
  }

LABEL_17:
  a1[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v26);
}

void sub_298073C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

void ctl::tlv::print_tlv_field(unsigned __int8 *a1@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  print_tlv_field_as<unsigned char,qmi::ServiceType>(__p, *a1);
  if (v15 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = xpc_string_create(v7);
  v16 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v16 = v8;
  }

  print_tlv_field_pair("fSvcType", &v16, &value);
  v9 = *a2;
  v10 = value;
  xpc_array_append_value(*a2, value);
  xpc_release(v10);
  value = 0;
  xpc_release(v8);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  print_char_type(a1[1], __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = xpc_string_create(v11);
  v16 = v12;
  if (!v12)
  {
    v12 = xpc_null_create();
    v16 = v12;
  }

  print_tlv_field_pair("fClientId", &v16, &value);
  v13 = value;
  xpc_array_append_value(v9, value);
  xpc_release(v13);
  value = 0;
  xpc_release(v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  print_tlv_field_as<unsigned char,qmi::ServiceType>(__p, *a1);
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = xpc_string_create(v7);
  v12 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v12 = v8;
  }

  print_tlv_field_pair("fSvcType", &v12, &value);
  v9 = value;
  xpc_array_append_value(*a2, value);
  xpc_release(v9);
  value = 0;
  xpc_release(v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_298073E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  xpc_release(v19);
  xpc_release(v18);
  if (a15 < 0)
  {
    operator delete(__p);
    xpc::array::~array(v17);
    _Unwind_Resume(a1);
  }

  xpc::array::~array(v17);
  _Unwind_Resume(a1);
}

uint64_t ctl::tlv::build_tlv_field(xpc_object_t *a1, _BYTE *a2)
{
  extract_tlv_field(a1, "fSvcType", 0, &object);
  *a2 = sAttemptDecodeNumber(&object, &v6);
  xpc_release(object);
  extract_tlv_field(a1, "fClientId", 1uLL, &object);
  tlv::build_tlv_field(&object, a2 + 1);
  xpc_release(object);
  return 2;
}

{
  extract_tlv_field(a1, "fSvcType", 0, &object);
  *a2 = sAttemptDecodeNumber(&object, &v5);
  xpc_release(object);
  return 1;
}

void ctl::tlv::print_tlv_field(unsigned int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  print_tlv_field_as<unsigned short,ctl::LinkLayerProtocol>(__p, *a1);
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = xpc_string_create(v7);
  v12 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v12 = v8;
  }

  print_tlv_field_pair("fProtocol", &v12, &value);
  v9 = value;
  xpc_array_append_value(*a2, value);
  xpc_release(v9);
  value = 0;
  xpc_release(v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  print_number_field<unsigned int>(*a1, __p);
  if (v15 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = xpc_string_create(v7);
  v16 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v16 = v8;
  }

  print_tlv_field_pair("fHandle", &v16, &value);
  v9 = *a2;
  v10 = value;
  xpc_array_append_value(*a2, value);
  xpc_release(v10);
  value = 0;
  xpc_release(v8);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  print_tlv_field_as<unsigned char,qmi::ServiceType>(__p, *(a1 + 4));
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = xpc_string_create(v11);
  v16 = v12;
  if (!v12)
  {
    v12 = xpc_null_create();
    v16 = v12;
  }

  print_tlv_field_pair("fSvcType", &v16, &value);
  v13 = value;
  xpc_array_append_value(v9, value);
  xpc_release(v13);
  value = 0;
  xpc_release(v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[7] = v8;
  v36[8] = v8;
  v36[5] = v8;
  v36[6] = v8;
  v36[3] = v8;
  v36[4] = v8;
  v36[1] = v8;
  v36[2] = v8;
  v35 = v8;
  v36[0] = v8;
  *__p = v8;
  v34 = v8;
  v31 = v8;
  v32 = v8;
  v29 = v8;
  v30 = v8;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
  *(&v29 + *(v29 - 24) + 8) = *(&v29 + *(v29 - 24) + 8) & 0xFFFFFFB5 | 2;
  v9 = MEMORY[0x29C27F750](&v29, v7);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (0x", 4);
  v11 = v10;
  v12 = *v10;
  *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v10 + *(v12 - 24) + 24) = 2;
  v13 = v10 + *(v12 - 24);
  if (*(v13 + 36) == -1)
  {
    std::ios_base::getloc((v10 + *(v12 - 24)));
    v14 = std::locale::use_facet(&v38, MEMORY[0x29EDC93D0]);
    v15 = (v14->__vftable[2].~facet_0)(v14, 32);
    std::locale::~locale(&v38);
    *(v13 + 36) = v15;
  }

  *(v13 + 36) = 48;
  v16 = MEMORY[0x29C27F770](v11, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")", 1);
  if ((BYTE8(v35) & 0x10) != 0)
  {
    v19 = v35;
    if (v35 < *(&v32 + 1))
    {
      *&v35 = *(&v32 + 1);
      v19 = *(&v32 + 1);
    }

    v20 = v32;
    v17 = v19 - v32;
    if ((v19 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((BYTE8(v35) & 8) == 0)
    {
      v17 = 0;
      HIBYTE(v26) = 0;
      v18 = __dst;
      goto LABEL_25;
    }

    v20 = *(&v30 + 1);
    v17 = *(&v31 + 1) - *(&v30 + 1);
    if (*(&v31 + 1) - *(&v30 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_35:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v17 | 7) + 1;
    }

    v18 = operator new(v21);
    __dst[1] = v17;
    v26 = v21 | 0x8000000000000000;
    __dst[0] = v18;
    goto LABEL_24;
  }

  HIBYTE(v26) = v17;
  v18 = __dst;
  if (v17)
  {
LABEL_24:
    memmove(v18, v20, v17);
  }

LABEL_25:
  *(v18 + v17) = 0;
  *&v29 = *MEMORY[0x29EDC9538];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v29 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v29 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v30);
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v36);
  if (v26 >= 0)
  {
    v22 = __dst;
  }

  else
  {
    v22 = __dst[0];
  }

  v23 = xpc_string_create(v22);
  v27 = v23;
  if (!v23)
  {
    v23 = xpc_null_create();
    v27 = v23;
  }

  print_tlv_field_pair("fFormat", &v27, &value);
  v24 = value;
  xpc_array_append_value(*a2, value);
  xpc_release(v24);
  value = 0;
  xpc_release(v23);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }
}

{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  print_number_field<unsigned int>(*a1, __p);
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = xpc_string_create(v7);
  v12 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v12 = v8;
  }

  print_tlv_field_pair("fHandle", &v12, &value);
  v9 = value;
  xpc_array_append_value(*a2, value);
  xpc_release(v9);
  value = 0;
  xpc_release(v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29807417C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  v20 = v19;
  xpc_release(v20);
  xpc_release(v18);
  if (a15 < 0)
  {
    operator delete(__p);
    xpc::array::~array(v17);
    _Unwind_Resume(a1);
  }

  xpc::array::~array(v17);
  _Unwind_Resume(a1);
}

uint64_t ctl::tlv::build_tlv_field(xpc_object_t *a1, _DWORD *a2)
{
  extract_tlv_field(a1, "fProtocol", 0, &object);
  *a2 = sAttemptDecodeNumber(&object, &v5);
  xpc_release(object);
  return 1;
}

{
  extract_tlv_field(a1, "fFormat", 0, &object);
  *a2 = sAttemptDecodeNumber(&object, &v5);
  xpc_release(object);
  return 1;
}

{
  extract_tlv_field(a1, "fHandle", 0, &object);
  tlv::build_tlv_field(&object, a2);
  xpc_release(object);
  return 1;
}

void sub_298074448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  xpc_release(v19);
  xpc_release(v18);
  if (a15 < 0)
  {
    operator delete(__p);
    xpc::array::~array(v17);
    _Unwind_Resume(a1);
  }

  xpc::array::~array(v17);
  _Unwind_Resume(a1);
}

uint64_t ctl::tlv::build_tlv_field(xpc_object_t *a1, uint64_t a2)
{
  extract_tlv_field(a1, "fHandle", 0, &object);
  tlv::build_tlv_field(&object, a2);
  xpc_release(object);
  extract_tlv_field(a1, "fSvcType", 1uLL, &object);
  *(a2 + 4) = sAttemptDecodeNumber(&object, &v6);
  xpc_release(object);
  return 2;
}

void ctl::tlv::print_tlv_field(unsigned __int16 **a1@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  print_tlv_field<unsigned short>(&object, a1);
  v7 = object;
  v10 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
    v10 = v7;
  }

  print_tlv_field_pair("fEnabledIndSet", &v10, &value);
  v8 = value;
  xpc_array_append_value(*a2, value);
  xpc_release(v8);
  value = 0;
  xpc_release(v7);
  v10 = 0;
  xpc_release(object);
}

{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  print_tlv_field<unsigned short>(&object, a1);
  v7 = object;
  v10 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
    v10 = v7;
  }

  print_tlv_field_pair("fEnabledIndSet", &v10, &value);
  v8 = value;
  xpc_array_append_value(*a2, value);
  xpc_release(v8);
  value = 0;
  xpc_release(v7);
  v10 = 0;
  xpc_release(object);
}

void sub_2980746E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12)
{
  v15 = v14;
  xpc_release(v15);
  xpc_release(v13);
  xpc_release(object);
  xpc::array::~array(v12);
  _Unwind_Resume(a1);
}

void print_tlv_field<unsigned short>(xpc_object_t *a1, unsigned __int16 **a2)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a1 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C27FAF0](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a1 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      print_number_field<unsigned short>(*v7, __p);
      if (v12 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = xpc_string_create(v9);
      if (!v10)
      {
        v10 = xpc_null_create();
      }

      xpc_array_append_value(*a1, v10);
      xpc_release(v10);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      ++v7;
    }

    while (v7 != v8);
  }
}

void sub_298074888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(v16);
  if (a15 < 0)
  {
    operator delete(__p);
    xpc::array::~array(v15);
    _Unwind_Resume(a1);
  }

  xpc::array::~array(v15);
  _Unwind_Resume(a1);
}

uint64_t ctl::tlv::build_tlv_field(xpc_object_t *a1, void **a2)
{
  extract_tlv_field(a1, "fEnabledIndSet", 0, &object);
  tlv::build_tlv_field<unsigned short>(&object, a2);
  xpc_release(object);
  return 1;
}

{
  extract_tlv_field(a1, "fEnabledIndSet", 0, &object);
  tlv::build_tlv_field<unsigned short>(&object, a2);
  xpc_release(object);
  return 1;
}

void tlv::build_tlv_field<unsigned short>(void *a1, void **a2)
{
  tlv::throwIfNotArray(a1);
  v4 = *a1;
  v5 = MEMORY[0x29EDCA9E0];
  if (*a1 && MEMORY[0x29C27FAF0](*a1) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
  }

  v7 = *a2;
  v6 = a2[1];
  v34 = v4;
  if (MEMORY[0x29C27FAF0](v4) == v5)
  {
    count = xpc_array_get_count(v4);
  }

  else
  {
    count = 0;
  }

  v9 = count + ((v6 - v7) >> 1);
  v10 = *a2;
  if (v9 > (a2[2] - *a2) >> 1)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v11 = a2[1];
    v12 = operator new(2 * v9);
    memcpy(v12, v10, v11 - v10);
    *a2 = v12;
    a2[1] = &v12[v11 - v10];
    a2[2] = &v12[2 * v9];
    if (v10)
    {
      operator delete(v10);
    }
  }

  if (v4)
  {
    xpc_retain(v4);
    v13 = v4;
LABEL_15:
    xpc_retain(v13);
    v14 = v13;
    goto LABEL_16;
  }

  v13 = xpc_null_create();
  if (v13)
  {
    goto LABEL_15;
  }

  v13 = xpc_null_create();
  v14 = 0;
LABEL_16:
  xpc_release(v14);
  if (v4)
  {
    xpc_retain(v4);
    v15 = v4;
  }

  else
  {
    v15 = xpc_null_create();
  }

  if (MEMORY[0x29C27FAF0](v4) == v5)
  {
    v16 = xpc_array_get_count(v4);
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_23:
    v17 = xpc_null_create();
    goto LABEL_24;
  }

  v16 = 0;
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_21:
  xpc_retain(v15);
  v17 = v15;
LABEL_24:
  xpc_release(v15);
  if (v16 || v13 != v17)
  {
    v18 = 0;
    v19 = v16 - 1;
    while (1)
    {
      v21 = a2[1];
      v20 = a2[2];
      if (v21 >= v20)
      {
        v23 = *a2;
        v24 = v21 - *a2;
        v25 = v24 >> 1;
        if (v24 >> 1 <= -2)
        {
          std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
        }

        v26 = v20 - v23;
        if (v26 <= v25 + 1)
        {
          v27 = v25 + 1;
        }

        else
        {
          v27 = v26;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

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
        v22 = v30 + 2;
        memcpy(v29, v23, v24);
        *a2 = v29;
        a2[1] = v22;
        a2[2] = &v29[2 * v28];
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v21 = 0;
        v22 = v21 + 1;
      }

      a2[1] = v22;
      value = xpc_array_get_value(v13, v18);
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      tlv::build_tlv_field(&object, a2[1] - 1);
      xpc_release(object);
      v32 = v18 + 1;
      if (v19 == v18++)
      {
        v18 = v32;
        if (v13 == v17)
        {
          break;
        }
      }
    }
  }

  xpc_release(v17);
  xpc_release(v13);
  xpc_release(v34);
}

void sub_298074C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(v10);
  xpc_release(v9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_298074DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12)
{
  v15 = v14;
  xpc_release(v15);
  xpc_release(v13);
  xpc_release(object);
  xpc::array::~array(v12);
  _Unwind_Resume(a1);
}

void sub_29807500C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  v20 = v19;
  xpc_release(v20);
  xpc_release(v18);
  if (a15 < 0)
  {
    operator delete(__p);
    xpc::array::~array(v17);
    _Unwind_Resume(a1);
  }

  xpc::array::~array(v17);
  _Unwind_Resume(a1);
}

void sub_298075578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  std::locale::~locale((v19 - 56));
  std::ostringstream::~ostringstream(&a18);
  xpc::array::~array(v18);
  _Unwind_Resume(a1);
}

void sub_2980757E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  v20 = v19;
  xpc_release(v20);
  xpc_release(v18);
  if (a15 < 0)
  {
    operator delete(__p);
    xpc::array::~array(v17);
    _Unwind_Resume(a1);
  }

  xpc::array::~array(v17);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x29EDC9538] + 16);
  v5 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C27F820](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_298075A68(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C27F880](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C27F880](a1 + 112);
  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t print_tlv_field_as<unsigned char,qmi::ServiceType>(_BYTE *a1, unsigned int a2)
{
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[7] = v4;
  v28[8] = v4;
  v28[5] = v4;
  v28[6] = v4;
  v28[3] = v4;
  v28[4] = v4;
  v28[1] = v4;
  v28[2] = v4;
  v27 = v4;
  v28[0] = v4;
  *__p = v4;
  v26 = v4;
  v23 = v4;
  *__src = v4;
  v21 = v4;
  v22 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  *(&v21 + *(v21 - 24) + 8) = *(&v21 + *(v21 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = qmi::asShortString();
  v6 = strlen(v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " (0x", 4);
  v9 = v8;
  v10 = *v8;
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v8 + *(v10 - 24) + 24) = 2;
  v11 = v8 + *(v10 - 24);
  if (*(v11 + 36) == -1)
  {
    std::ios_base::getloc((v8 + *(v10 - 24)));
    v12 = std::locale::use_facet(&v30, MEMORY[0x29EDC93D0]);
    v13 = (v12->__vftable[2].~facet_0)(v12, 32);
    std::locale::~locale(&v30);
    *(v11 + 36) = v13;
  }

  *(v11 + 36) = 48;
  v14 = MEMORY[0x29C27F770](v9, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ")", 1);
  if ((BYTE8(v27) & 0x10) != 0)
  {
    v16 = v27;
    if (v27 < __src[1])
    {
      *&v27 = __src[1];
      v16 = __src[1];
    }

    v17 = __src[0];
    v15 = v16 - __src[0];
    if ((v16 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v27) & 8) == 0)
    {
      v15 = 0;
      a1[23] = 0;
      goto LABEL_17;
    }

    v17 = *(&v22 + 1);
    v15 = *(&v23 + 1) - *(&v22 + 1);
    if (*(&v23 + 1) - *(&v22 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v19 = operator new(v18);
    *(a1 + 1) = v15;
    *(a1 + 2) = v18 | 0x8000000000000000;
    *a1 = v19;
    a1 = v19;
    goto LABEL_16;
  }

  a1[23] = v15;
  if (v15)
  {
LABEL_16:
    memmove(a1, v17, v15);
  }

LABEL_17:
  a1[v15] = 0;
  *&v21 = *MEMORY[0x29EDC9538];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v21 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v21 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v22);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v28);
}

void sub_298075F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

std::runtime_error *tlv::TlvBuildException::TlvBuildException(std::runtime_error *a1, const std::string *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1E9BBE8;
  return result;
}

{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1E9BBE8;
  return result;
}

std::runtime_error *tlv::TlvBuildException::TlvBuildException(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_2A1E9BBE8;
  return result;
}

{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_2A1E9BBE8;
  return result;
}

void tlv::TlvBuildException::~TlvBuildException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

std::runtime_error *tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(std::runtime_error *a1, const std::string *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1E9BC10;
  return result;
}

{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1E9BC10;
  return result;
}

std::runtime_error *tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_2A1E9BC10;
  return result;
}

{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_2A1E9BC10;
  return result;
}

void tlv::TlvBuildUnexpectedField::~TlvBuildUnexpectedField(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

size_t tlv::throwIfBinarySizeNotEqual(xpc_object_t *a1, uint64_t a2)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA40])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Null object encountered");
    goto LABEL_8;
  }

  if (MEMORY[0x29C27FAF0](*a1) != MEMORY[0x29EDCA9F8])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Object encountered, but not a XPC_TYPE_DATA as expected");
    goto LABEL_8;
  }

  result = xpc_data_get_length(*a1);
  if (result != a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Object does not have exactly the right number of elements!");
LABEL_8:
  }

  return result;
}

uint64_t tlv::throwIfNotArray(void *a1)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA40])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Null object encountered");
    goto LABEL_6;
  }

  result = MEMORY[0x29C27FAF0](*a1);
  if (result != MEMORY[0x29EDCA9E0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Object encountered, but not a XPC_TYPE_ARRAY as expected");
LABEL_6:
  }

  return result;
}

uint64_t tlv::tryParseNumber(xpc_object_t *a1, unint64_t *a2)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA40])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Null object encountered");
  }

  v4 = MEMORY[0x29C27FAF0](*a1);
  if (v4 == MEMORY[0x29EDCAA30])
  {
    value = xpc_int64_get_value(*a1);
    return value != 0;
  }

  if (v4 == MEMORY[0x29EDCAA58])
  {
    value = xpc_uint64_get_value(*a1);
    return value != 0;
  }

  if (v4 == MEMORY[0x29EDCA9E8])
  {
    v8 = *a1;

    return xpc_BOOL_get_value(v8);
  }

  else
  {
    v5 = MEMORY[0x29EDCAA50];
    if (v4 == MEMORY[0x29EDCAA50])
    {
      memset(__p, 170, sizeof(__p));
      if (MEMORY[0x29C27FAF0](*a1) == v5)
      {
        string_ptr = xpc_string_get_string_ptr(*a1);
        length = xpc_string_get_length(*a1);
        std::string::basic_string[abi:ne200100](__p, string_ptr, length);
      }

      else
      {
        memset(__p, 0, sizeof(__p));
      }

      v12 = 0;
      if (sAttemptDecodeNumber(__p, a2, &v12) && (v12 & 1) != 0)
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        return 1;
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

void sub_2980765A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sAttemptDecodeNumber(uint64_t a1, unint64_t *a2, _BYTE *a3)
{
  __idx = 0;
  *a2 = std::stoull(a1, &__idx, 0);
  *a3 = 1;
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  return __idx == v5;
}

uint64_t tlv::tryParseNumber(xpc_object_t *a1, void *a2)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA40])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Null object encountered");
  }

  v4 = MEMORY[0x29C27FAF0](*a1);
  if (v4 == MEMORY[0x29EDCAA30])
  {
    value = xpc_int64_get_value(*a1);
    return value != 0;
  }

  if (v4 == MEMORY[0x29EDCAA58])
  {
    value = xpc_uint64_get_value(*a1);
    return value != 0;
  }

  if (v4 == MEMORY[0x29EDCA9E8])
  {
    v8 = *a1;

    return xpc_BOOL_get_value(v8);
  }

  else
  {
    v5 = MEMORY[0x29EDCAA50];
    if (v4 != MEMORY[0x29EDCAA50])
    {
      return 0;
    }

    memset(__p, 170, sizeof(__p));
    if (MEMORY[0x29C27FAF0](*a1) == v5)
    {
      string_ptr = xpc_string_get_string_ptr(*a1);
      length = xpc_string_get_length(*a1);
      std::string::basic_string[abi:ne200100](__p, string_ptr, length);
    }

    else
    {
      memset(__p, 0, sizeof(__p));
    }

    v12 = 0;
    if (sAttemptDecodeNumber(__p, &v12, &v13))
    {
      *a2 = v12;
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      return 1;
    }

    else
    {
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      operator delete(__p[0]);
      return 0;
    }
  }
}

void sub_2980768B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int64_t sAttemptDecodeNumber(xpc_object_t *a1, BOOL *a2)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA40])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Null object encountered");
    goto LABEL_53;
  }

  v4 = MEMORY[0x29C27FAF0](*a1);
  if (v4 == MEMORY[0x29EDCAA30])
  {
    result = xpc_int64_get_value(*a1);
    *a2 = result >= 0;
    return result;
  }

  if (v4 != MEMORY[0x29EDCAA58])
  {
    if (v4 == MEMORY[0x29EDCA9E8])
    {
      *a2 = 1;
      return xpc_BOOL_get_value(*a1);
    }

    v5 = MEMORY[0x29EDCAA50];
    if (v4 == MEMORY[0x29EDCAA50])
    {
      memset(__p, 170, sizeof(__p));
      if (MEMORY[0x29C27FAF0](*a1) == v5)
      {
        string_ptr = xpc_string_get_string_ptr(*a1);
        length = xpc_string_get_length(*a1);
        std::string::basic_string[abi:ne200100](__p, string_ptr, length);
      }

      else
      {
        memset(__p, 0, sizeof(__p));
      }

      v32 = 0;
      if (sAttemptDecodeNumber(__p, &v32, a2))
      {
LABEL_49:
        result = v32;
        if (SHIBYTE(__p[2]) < 0)
        {
          v27 = v32;
          operator delete(__p[0]);
          return v27;
        }

        return result;
      }

      v10 = HIBYTE(__p[2]);
      v11 = __p[1];
      if (SHIBYTE(__p[2]) >= 0)
      {
        v12 = HIBYTE(__p[2]);
      }

      else
      {
        v12 = __p[1];
      }

      if (!v12)
      {
        goto LABEL_51;
      }

      v13 = __p[0];
      if (SHIBYTE(__p[2]) >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      v15 = memchr(v14, 40, v12);
      v16 = v15 - v14;
      if (!v15)
      {
        v16 = -1;
      }

      v17 = -v12;
      v18 = v14 + v12 - 1;
      do
      {
        if (!v17)
        {
          goto LABEL_51;
        }

        v19 = *v18--;
        ++v17;
      }

      while (v19 != 41);
      if (v16 >= -v17 || v17 == 1)
      {
LABEL_51:
        v28 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v28, "String, but could not find a valid number");
        v28->__vftable = &unk_2A1E9BC10;
      }

      if ((v10 & 0x80) != 0)
      {
        if (v11 > v16)
        {
LABEL_34:
          v20 = v16 + 1;
          v21 = (~v16 - v17);
          if (&v11[-v20] >= v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = &v11[-v20];
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v22 >= 0x17)
          {
            if ((v22 | 7) == 0x17)
            {
              v24 = 25;
            }

            else
            {
              v24 = (v22 | 7) + 1;
            }

            v23 = operator new(v24);
            __dst[1] = v22;
            v31 = v24 | 0x8000000000000000;
            __dst[0] = v23;
          }

          else
          {
            HIBYTE(v31) = v22;
            v23 = __dst;
            if (!v22)
            {
LABEL_46:
              *(v23 + v22) = 0;
              v25 = sAttemptDecodeNumber(__dst, &v32, a2);
              if (SHIBYTE(v31) < 0)
              {
                v26 = v25;
                operator delete(__dst[0]);
                v25 = v26;
              }

              if (v25)
              {
                goto LABEL_49;
              }

              goto LABEL_51;
            }
          }

          memmove(v23, v13 + v20, v22);
          goto LABEL_46;
        }
      }

      else if (v16 < v10)
      {
        v13 = __p;
        v11 = v10;
        goto LABEL_34;
      }

      std::string::__throw_out_of_range[abi:ne200100]();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Non-number type encountered.");
LABEL_53:
  }

  *a2 = 1;
  v7 = *a1;

  return xpc_uint64_get_value(v7);
}

void sub_298076CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

unint64_t tlv::build_tlv_field(xpc_object_t *a1, _BYTE *a2)
{
  v6 = 0;
  result = sAttemptDecodeNumber(a1, &v6);
  if (!v6 || result > 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Bool field is a number but out of range");
  }

  *a2 = result;
  return result;
}

{
  v5 = 0;
  result = sAttemptDecodeNumber(a1, &v5);
  if (!v5 || result > 0xFF)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "UInt8 field is a number but out of range");
  }

  *a2 = result;
  return result;
}

int64_t tlv::build_tlv_field(xpc_object_t *a1, _BYTE *a2)
{
  result = sAttemptDecodeNumber(a1, &v5);
  if (result != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Int8 field is a number but out of range");
  }

  *a2 = result;
  return result;
}

int64_t tlv::build_tlv_field(xpc_object_t *a1, _WORD *a2)
{
  result = sAttemptDecodeNumber(a1, &v5);
  if (result != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Int16 field is a number but out of range");
  }

  *a2 = result;
  return result;
}

unint64_t tlv::build_tlv_field(xpc_object_t *a1, _WORD *a2)
{
  v6 = 0;
  result = sAttemptDecodeNumber(a1, &v6);
  if (!v6 || result >> 16 != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "UInt16 field is a number but out of range");
  }

  *a2 = result;
  return result;
}

int64_t tlv::build_tlv_field(xpc_object_t *a1, _DWORD *a2)
{
  result = sAttemptDecodeNumber(a1, &v5);
  if (result != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Bool field is a number but out of range");
  }

  *a2 = result;
  return result;
}

unint64_t tlv::build_tlv_field(xpc_object_t *a1, _DWORD *a2)
{
  v6 = 0;
  result = sAttemptDecodeNumber(a1, &v6);
  if (!v6 || HIDWORD(result) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "UInt32 field is a number but out of range");
  }

  *a2 = result;
  return result;
}

int64_t tlv::build_tlv_field(xpc_object_t *a1, int64_t *a2)
{
  v5 = 0;
  result = sAttemptDecodeNumber(a1, &v5);
  *a2 = result;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "UInt64 field is a number but is negative");
  }

  return result;
}

float tlv::build_tlv_field(xpc_object_t *a1, float *a2)
{
  v4 = NAN;
  tlv::build_tlv_field(a1, &v4);
  result = v4;
  *a2 = result;
  return result;
}

void tlv::build_tlv_field(xpc_object_t *a1, double *a2)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA40])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Null object encountered");
    goto LABEL_19;
  }

  v4 = MEMORY[0x29C27FAF0](*a1);
  if (v4 == MEMORY[0x29EDCAA30])
  {
    value = xpc_int64_get_value(*a1);
LABEL_13:
    *a2 = value;
    return;
  }

  if (v4 == MEMORY[0x29EDCAA58])
  {
    value = xpc_uint64_get_value(*a1);
    goto LABEL_13;
  }

  if (v4 == MEMORY[0x29EDCA9E8])
  {
    value = xpc_BOOL_get_value(*a1);
    goto LABEL_13;
  }

  if (v4 == MEMORY[0x29EDCAA08])
  {
    value = xpc_double_get_value(*a1);
    goto LABEL_13;
  }

  v5 = MEMORY[0x29EDCAA50];
  if (v4 != MEMORY[0x29EDCAA50])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Non-number type encountered.");
LABEL_19:
  }

  memset(&__str, 170, sizeof(__str));
  if (MEMORY[0x29C27FAF0](*a1) == v5)
  {
    string_ptr = xpc_string_get_string_ptr(*a1);
    length = xpc_string_get_length(*a1);
    std::string::basic_string[abi:ne200100](&__str, string_ptr, length);
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
  }

  *a2 = std::stod(&__str, 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

double tlv::build_tlv_field(xpc_object_t *a1, uint64_t a2)
{
  if (MEMORY[0x29C27FAF0](*a1) == MEMORY[0x29EDCAA40])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Null object encountered");
LABEL_48:
  }

  v4 = MEMORY[0x29C27FAF0](*a1);
  v5 = MEMORY[0x29EDCAA50];
  if (v4 != MEMORY[0x29EDCAA50])
  {
LABEL_46:
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "String expected but got something else.");
    goto LABEL_48;
  }

  memset(__p, 170, sizeof(__p));
  if (MEMORY[0x29C27FAF0](*a1) != v5)
  {
    v7 = 0;
    memset(__p, 0, sizeof(__p));
    goto LABEL_22;
  }

  string_ptr = xpc_string_get_string_ptr(*a1);
  length = xpc_string_get_length(*a1);
  std::string::basic_string[abi:ne200100](__p, string_ptr, length);
  v7 = HIBYTE(__p[2]);
  v15 = __p[0];
  v16 = __p[1];
  v19 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = HIBYTE(__p[2]);
  }

  else
  {
    v20 = __p[1];
  }

  if (!v20)
  {
LABEL_22:
    v14 = 1;
    if (v7 < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = memchr(v8, 34, v20);
  v10 = v9 - v8;
  if (!v9)
  {
    v10 = -1;
  }

  v11 = -v20;
  v12 = v8 + v20 - 1;
  do
  {
    if (!v11)
    {
      v14 = 1;
      goto LABEL_25;
    }

    v13 = *v12--;
    ++v11;
  }

  while (v13 != 34);
  v14 = 1;
  if (v10 >= -v11 || v11 == 1)
  {
LABEL_25:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v7 & 0x80) == 0)
  {
    if (v10 < v19)
    {
      v15 = __p;
      v16 = v19;
      goto LABEL_30;
    }

LABEL_49:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v16 <= v10)
  {
    goto LABEL_49;
  }

LABEL_30:
  v21 = v10 + 1;
  v22 = (~v10 - v11);
  if (&v16[-v21] >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = &v16[-v21];
  }

  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v23 | 7) + 1;
    }

    v24 = operator new(v25);
    *(&v27 + 1) = v23;
    v28 = v25 | 0x8000000000000000;
    *&v27 = v24;
  }

  else
  {
    HIBYTE(v28) = v23;
    v24 = &v27;
    if (!v23)
    {
      goto LABEL_42;
    }
  }

  memmove(v24, v15 + v21, v23);
LABEL_42:
  *(v24 + v23) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  v14 = 0;
  result = *&v27;
  *a2 = v27;
  *(a2 + 16) = v28;
  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    goto LABEL_27;
  }

LABEL_26:
  operator delete(__p[0]);
LABEL_27:
  if (v14)
  {
    goto LABEL_46;
  }

  return result;
}

{
  sAttemptToDecodeData(&v5, a1);
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

void sub_298077734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sAttemptToDecodeData(void **a1, xpc_object_t *a2)
{
  if (MEMORY[0x29C27FAF0](*a2) == MEMORY[0x29EDCAA40])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Null object encountered");
LABEL_63:
  }

  v4 = MEMORY[0x29C27FAF0](*a2);
  v5 = *a2;
  if (v4 == MEMORY[0x29EDCA9F8])
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(*a2);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    if (length)
    {
      if ((length & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v13 = length;
      v14 = operator new(length);
      *a1 = v14;
      v15 = &v14[v13];
      a1[2] = &v14[v13];
      memcpy(v14, bytes_ptr, v13);
      a1[1] = v15;
    }

    return;
  }

  v6 = MEMORY[0x29C27FAF0](v5);
  v7 = MEMORY[0x29EDCAA50];
  if (v6 != MEMORY[0x29EDCAA50])
  {
LABEL_61:
    exception = __cxa_allocate_exception(0x10uLL);
    tlv::TlvBuildUnexpectedField::TlvBuildUnexpectedField(exception, "Non-data type encountered.");
    goto LABEL_63;
  }

  memset(__p, 170, sizeof(__p));
  if (MEMORY[0x29C27FAF0](*a2) == v7)
  {
    string_ptr = xpc_string_get_string_ptr(*a2);
    v17 = xpc_string_get_length(*a2);
    std::string::basic_string[abi:ne200100](__p, string_ptr, v17);
    v10 = HIBYTE(__p[2]);
    v9 = __p[0];
    v8 = __p[1];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    memset(__p, 0, sizeof(__p));
  }

  if ((v10 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = v9;
  }

  if ((v10 & 0x80u) == 0)
  {
    v19 = v10;
  }

  else
  {
    v19 = v8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  ctu::parse_hex_impl(v18, v19, 1, 0, &v39);
  v20 = v39;
  *a1 = v39;
  v21 = v40;
  *(a1 + 1) = v40;
  if (v20 != v21)
  {
    goto LABEL_17;
  }

  v23 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v23 = __p[1];
  }

  if (!v23)
  {
LABEL_56:
    v30 = v20;
    goto LABEL_57;
  }

  v25 = (v24 + v23);
  v26 = v24;
  v27 = (v24 + v23);
  while (2)
  {
    for (i = (v26 + 2); ; i = (i + 1))
    {
      v26 = (i - 1);
      if (*(i - 2) != 93)
      {
        if (v26 == v25)
        {
          goto LABEL_38;
        }

        continue;
      }

      if (v26 == v25)
      {
        goto LABEL_38;
      }

      if (*v26 == 58)
      {
        break;
      }
    }

    if (i != v25)
    {
      if (*i == 32)
      {
        v27 = (i - 2);
      }

      continue;
    }

    break;
  }

LABEL_38:
  if (v27 == v25 || (v29 = v27 - v24, v29 == -1))
  {
    if (v23 >= 9)
    {
      v32 = v24;
      while (1)
      {
        v33 = memchr(v32, 91, v23 - 8);
        if (!v33)
        {
          break;
        }

        if (*v33 == 0x736574796220305BLL && *(v33 + 8) == 93)
        {
          if (v33 == v25)
          {
            goto LABEL_56;
          }

          v35 = v33 - v24;
          v30 = v20;
          if (v35 != -1)
          {
            goto LABEL_17;
          }

          goto LABEL_57;
        }

        v32 = (v33 + 1);
        v23 = v25 - v32;
        if (v25 - v32 < 9)
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_56;
  }

  ctu::parse_hex_impl((v24 + v29 + 3), (v23 - v29 - 3), 1, 0, &v39);
  v30 = v39;
  v31 = v40;
  if (v20)
  {
    v37 = v40;
    operator delete(v20);
    v31 = v37;
  }

  *a1 = v30;
  *(a1 + 1) = v31;
  if (v30 != v31)
  {
LABEL_17:
    v22 = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_57:
  if (v30)
  {
    a1[1] = v30;
    operator delete(v30);
  }

  v22 = 1;
  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_18:
    operator delete(__p[0]);
  }

LABEL_19:
  if (v22)
  {
    goto LABEL_61;
  }
}

void sub_298077B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17)
  {
    *(v16 + 8) = v17;
    operator delete(v17);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void tlv::build_tlv_field(xpc_object_t *a1, void **a2)
{
  memset(v23, 170, sizeof(v23));
  sAttemptToDecodeData(v23, a1);
  v3 = v23[0];
  v4 = v23[1];
  v5 = v23[1] - v23[0];
  v6 = a2[2];
  v7 = *a2;
  if (v6 - *a2 < v23[1] - v23[0])
  {
    if (v7)
    {
      a2[1] = v7;
      operator delete(v7);
      v6 = 0;
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 2 * v6;
    if (2 * v6 <= v5)
    {
      v8 = v5;
    }

    if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v10 = operator new(v9);
    v11 = v10;
    *a2 = v10;
    a2[1] = v10;
    a2[2] = &v10[v9];
    if (v3 != v4)
    {
      memcpy(v10, v3, v5);
      v11 += v5;
    }

    a2[1] = v11;
    if (!v3)
    {
      return;
    }

LABEL_21:

    operator delete(v3);
    return;
  }

  v12 = a2[1];
  v13 = v12 - v7;
  if (v12 - v7 < v5)
  {
    v14 = v23[0] + v13;
    if (v12 == v7)
    {
      v15 = a2[1];
      v16 = v15;
      if (v14 == v23[1])
      {
        goto LABEL_32;
      }
    }

    else
    {
      memmove(*a2, v23[0], v13);
      v15 = a2[1];
      v16 = v15;
      if (v14 == v4)
      {
        goto LABEL_32;
      }
    }

    v17 = &v4[v7] - &v12[v3];
    if (v17 >= 0x20)
    {
      v16 = v15;
      if ((v7 + v15 - &v12[v3]) >= 0x20)
      {
        v14 += v17 & 0xFFFFFFFFFFFFFFE0;
        v16 = &v15[v17 & 0xFFFFFFFFFFFFFFE0];
        v18 = v15 + 16;
        v19 = &v3[v12 - v7 + 16];
        v20 = v17 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v21 = *v19;
          *(v18 - 1) = *(v19 - 1);
          *v18 = v21;
          v18 += 2;
          v19 += 32;
          v20 -= 32;
        }

        while (v20);
        if (v17 == (v17 & 0xFFFFFFFFFFFFFFE0))
        {
LABEL_32:
          a2[1] = v16;
          if (!v3)
          {
            return;
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
      v16 = v15;
    }

    do
    {
      v22 = *v14++;
      *v16++ = v22;
    }

    while (v14 != v4);
    goto LABEL_32;
  }

  if (v23[1] != v23[0])
  {
    memmove(*a2, v23[0], v23[1] - v23[0]);
  }

  a2[1] = v7 + v5;
  if (v3)
  {
    goto LABEL_21;
  }
}

void sub_298077DE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_298078168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t print_char_type@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  *(&v19 + *(v19 - 24) + 8) = *(&v19 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x29C27F750](&v19, a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (0x", 4);
  v7 = v6;
  v8 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v6 + *(v8 - 24) + 24) = 2;
  v9 = v6 + *(v8 - 24);
  if (*(v9 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v8 - 24)));
    v10 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 32);
    std::locale::~locale(&v28);
    *(v9 + 36) = v11;
  }

  *(v9 + 36) = 48;
  v12 = MEMORY[0x29C27F760](v7, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_16;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_16:
    memmove(a2, v15, v13);
  }

LABEL_17:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v26);
}

void sub_29807851C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

void sub_2980788D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t print_number_field<unsigned short>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  *(&v19 + *(v19 - 24) + 8) = *(&v19 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x29C27F7A0](&v19, a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (0x", 4);
  v7 = v6;
  v8 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v6 + *(v8 - 24) + 24) = 4;
  v9 = v6 + *(v8 - 24);
  if (*(v9 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v8 - 24)));
    v10 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 32);
    std::locale::~locale(&v28);
    *(v9 + 36) = v11;
  }

  *(v9 + 36) = 48;
  v12 = MEMORY[0x29C27F7A0](v7, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_16;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_16:
    memmove(a2, v15, v13);
  }

LABEL_17:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v26);
}

void sub_298078C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

void sub_298079038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t print_number_field<unsigned int>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  *(&v19 + *(v19 - 24) + 8) = *(&v19 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x29C27F760](&v19, a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (0x", 4);
  v7 = v6;
  v8 = *v6;
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v6 + *(v8 - 24) + 24) = 8;
  v9 = v6 + *(v8 - 24);
  if (*(v9 + 36) == -1)
  {
    std::ios_base::getloc((v6 + *(v8 - 24)));
    v10 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v11 = (v10->__vftable[2].~facet_0)(v10, 32);
    std::locale::~locale(&v28);
    *(v9 + 36) = v11;
  }

  *(v9 + 36) = 48;
  v12 = MEMORY[0x29C27F760](v7, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_21:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_16;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_16:
    memmove(a2, v15, v13);
  }

LABEL_17:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C27F880](v26);
}

void sub_2980793EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

void sub_29807979C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

void sub_298079B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

const char *asString(unsigned int a1)
{
  if (a1 > 5)
  {
    return "unknown";
  }

  else
  {
    return off_29EE89C20[a1];
  }
}

std::string *string_with_quotes<std::string>(std::string *__dst, uint64_t a2, unsigned int a3)
{
  memset(__dst, 170, sizeof(std::string));
  *(&__dst->__r_.__value_.__s + 23) = 1;
  LOWORD(__dst->__r_.__value_.__l.__data_) = 34;
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = v5 + 2;
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 < 0x17)
  {
    v10 = HIBYTE(__dst->__r_.__value_.__r.__words[2]);
    size = 0xAAAAAAAAAAAAAAAALL;
    if ((v4 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v4 & 0x80u) == 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    if (!v14)
    {
      goto LABEL_68;
    }
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 24;
    }

    else
    {
      v9 = v6 | 7;
    }

    std::string::__shrink_or_extend[abi:ne200100](__dst, v9);
    v10 = HIBYTE(__dst->__r_.__value_.__r.__words[2]);
    size = __dst->__r_.__value_.__l.__size_;
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    if (!v14)
    {
      goto LABEL_68;
    }
  }

  if ((v10 & 0x80u) == 0)
  {
    v15 = v10;
  }

  else
  {
    v15 = size;
  }

  v16 = __dst->__r_.__value_.__r.__words[0];
  if ((v10 & 0x80u) == 0)
  {
    v16 = __dst;
  }

  if (v16 > v13 || (&v16->__r_.__value_.__l.__data_ + v15 + 1) <= v13)
  {
    std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__dst, v14, v15, v13, v13 + v14);
    goto LABEL_68;
  }

  *v37 = v15;
  __p = 0;
  v36 = a3;
  v18 = 0;
  v39 = 0;
  v40 = 0;
  do
  {
    while (1)
    {
      v20 = v13->__r_.__value_.__s.__data_[v18];
      v21 = HIBYTE(v40);
      if (SHIBYTE(v40) < 0)
      {
        break;
      }

      if (HIBYTE(v40) == 22)
      {
        p_p = &__p;
        v23 = 22;
LABEL_42:
        if (v23 + 1 > 2 * v23)
        {
          v24 = v23 + 1;
        }

        else
        {
          v24 = 2 * v23;
        }

        if ((v24 | 7) == 0x17)
        {
          v25 = 25;
        }

        else
        {
          v25 = (v24 | 7) + 1;
        }

        if (v24 >= 0x17)
        {
          v26 = v25;
        }

        else
        {
          v26 = 23;
        }

        v27 = v23 == 22;
        goto LABEL_52;
      }

      HIBYTE(v40) = (HIBYTE(v40) + 1) & 0x7F;
      v19 = &__p + v21;
      *v19 = v20;
      v19[1] = 0;
      if (v14 == ++v18)
      {
        goto LABEL_61;
      }
    }

    v23 = (v40 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v39 != v23)
    {
      v29 = __p;
      v23 = v39;
      goto LABEL_58;
    }

    if ((v40 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    p_p = __p;
    if (v23 <= 0x3FFFFFFFFFFFFFF2)
    {
      goto LABEL_42;
    }

    v27 = 0;
    v26 = 0x7FFFFFFFFFFFFFF7;
LABEL_52:
    v28 = operator new(v26);
    v29 = v28;
    if (v23)
    {
      memmove(v28, p_p, v23);
    }

    if (!v27)
    {
      operator delete(p_p);
    }

    __p = v29;
    v40 = v26 | 0x8000000000000000;
LABEL_58:
    v39 = v23 + 1;
    v30 = &v29[v23];
    *v30 = v20;
    v30[1] = 0;
    ++v18;
  }

  while (v14 != v18);
LABEL_61:
  v31 = HIBYTE(v40);
  if (v40 >= 0)
  {
    v32 = &__p;
  }

  else
  {
    v32 = __p;
  }

  if (v40 < 0)
  {
    v31 = v39;
  }

  std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__dst, v14, *v37, v32, &v32[v31]);
  a3 = v36;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

LABEL_68:
  std::string::append(__dst, " (", 3uLL);
  if (a3 > 5)
  {
    v33 = "unknown";
  }

  else
  {
    v33 = off_29EE89C20[a3];
  }

  v34 = strlen(v33);
  std::string::append(__dst, v33, v34);
  return std::string::append(__dst, ")", 1uLL);
}