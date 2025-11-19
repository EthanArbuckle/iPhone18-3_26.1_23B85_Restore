void UC::appClipCodeVersion0Bytes(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v6 = vcvtpd_u64_f64(vcvtd_n_f64_u64(a2 + 1, 3uLL));
  v13 = 0;
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  v10 = 0;
  v11 = 0;
  __p = 0;
  v12 = 0;
  v7 = 8 * v6 - (a2 + 1);
  if (v7)
  {
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 8 * v6 - (a2 + 1);
    }

    do
    {
      UC::UCBitVector::append(&__p, 0);
      --v8;
    }

    while (v8);
  }

  UC::UCBitVector::append(&__p, 1);
  for (; v3; --v3)
  {
    UC::UCBitVector::append(&__p, *a1++ != 48);
  }

  UC::UCBitVector::getBytesCopy(&__p, a3);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_2702DFDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void UC::appClipCodeVersion1Bytes(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = 0;
  v7 = 0;
  v8 = 0;
  __p = 0;
  v9 = 0;
  if (a2)
  {
    v4 = a2;
    do
    {
      UC::UCBitVector::append(&__p, *a1++ != 48);
      --v4;
    }

    while (v4);
  }

  UC::UCBitVector::getBytesCopy(&__p, a3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_2702DFEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void UC::bitVectorFromAppClipCodeEncodingData(UC *this@<X0>, const unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  v6[4] = 0;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  *(v6 + 24) = 0;
  *a3 = v6;
  if (a2)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = v8[this];
      v10 = 8;
      do
      {
        UC::UCBitVector::append(v7, (v9 >> --v10) & 1);
      }

      while (v10);
      ++v8;
    }

    while (v8 != a2);
  }
}

void sub_2702DFF60(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](v1, v2);
  _Unwind_Resume(a1);
}

BOOL UC::readUntilBeginMarkerFound(UC *this, UC::UCBitStream *a2)
{
  do
  {
    hasMore = UC::UCBitStream::hasMore(this);
  }

  while (hasMore && UC::UCBitStream::readNextBit(this) != 1);
  return hasMore;
}

void std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](int a1, void **__p)
{
  if (__p)
  {
    v3 = *__p;
    if (*__p)
    {
      __p[1] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

std::string *UC::UCURLComponents::UCURLComponents(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, std::string::size_type a8, __int128 *a9, __int128 *a10)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v17 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v17;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v18 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v18;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v19 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v19;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *a5, *(a5 + 1));
  }

  else
  {
    v20 = *a5;
    this[3].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&this[3].__r_.__value_.__l.__data_ = v20;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *a6, *(a6 + 1));
  }

  else
  {
    v21 = *a6;
    this[4].__r_.__value_.__r.__words[2] = *(a6 + 2);
    *&this[4].__r_.__value_.__l.__data_ = v21;
  }

  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *a7, *(a7 + 1));
  }

  else
  {
    v22 = *a7;
    this[5].__r_.__value_.__r.__words[2] = *(a7 + 2);
    *&this[5].__r_.__value_.__l.__data_ = v22;
  }

  this[6].__r_.__value_.__r.__words[0] = a8;
  if (*(a9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), *a9, *(a9 + 1));
  }

  else
  {
    v23 = *a9;
    this[7].__r_.__value_.__r.__words[0] = *(a9 + 2);
    *&this[6].__r_.__value_.__r.__words[1] = v23;
  }

  if (*(a10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *a10, *(a10 + 1));
  }

  else
  {
    v24 = *a10;
    this[8].__r_.__value_.__r.__words[0] = *(a10 + 2);
    *&this[7].__r_.__value_.__r.__words[1] = v24;
  }

  return this;
}

{
  return UC::UCURLComponents::UCURLComponents(this, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_2702E0598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void UC::UCBitVector::append(UC::UCBitVector *this, int a2)
{
  v2 = *(this + 4);
  *(this + 24) |= a2 << (~v2 & 7);
  *(this + 4) = v2 + 1;
  if (((v2 + 1) & 7) == 0)
  {
    std::vector<unsigned char>::push_back[abi:ne200100](this, this + 24);
    *(this + 24) = 0;
  }
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = &v5[-*a1];
    v9 = v8 + 1;
    if ((v8 + 1) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v12[v8] = *a2;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void UC::UCBitVector::getBytesCopy(UC::UCBitVector *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 4) & 7;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *this, *(this + 1), *(this + 1) - *this);
  if (v4)
  {
    std::vector<unsigned char>::push_back[abi:ne200100](a2, this + 24);
  }
}

void sub_2702E0924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

UC::UCBitStream *UC::UCBitStream::UCBitStream(UC::UCBitStream *this, const UC::UCBitVector *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this, *a2, *(a2 + 1), *(a2 + 1) - *a2);
  *(this + 24) = *(a2 + 24);
  *(this + 5) = 0;
  return this;
}

uint64_t UC::UCBitStream::readNextBit(UC::UCBitStream *this)
{
  v1 = *(this + 5);
  if (v1 >= *(this + 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Out of bounds access when reading next bit from bit stream");
  }

  if (v1 >= 8 * (*(this + 1) - *this))
  {
    v2 = this + 24;
  }

  else
  {
    v2 = (*this + (v1 >> 3));
  }

  v3 = *v2 >> (~v1 & 7);
  *(this + 5) = v1 + 1;
  return v3 & 1;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_2702E0AD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void *UC::SUE::SegmentedURLEncoderImpl::SegmentedURLEncoderImpl(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = 0;
  return result;
}

void UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(std::string::value_type *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v6 = *a1;
      memset(&v7, 0, sizeof(v7));
      std::string::push_back(&v7, v6);
      std::vector<std::string>::push_back[abi:ne200100](a3, &v7);
      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }

      ++a1;
      --v3;
    }

    while (v3);
  }
}

void sub_2702E0BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void UC::SUE::SegmentedURLEncoderImpl::_encodeHost(std::string *this@<X1>, UC::SUE::UCSegmentedURLCoderProvider **a2@<X0>, int a3@<W2>, int *a4@<X8>)
{
  v5 = this;
  *&v62 = *MEMORY[0x277D85DE8];
  memset(&v60, 0, sizeof(v60));
  *(v59 + 3) = 0;
  v59[0] = 0;
  v8 = std::string::rfind(this, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v8 == -1)
  {
    v12 = 0;
    v10 = 0;
    std::string::operator=(&v60, v5);
    size = 0;
  }

  else
  {
    v9 = v8;
    std::string::basic_string(&v58, v5, v8, 0xFFFFFFFFFFFFFFFFLL, &v56);
    size = v58.__r_.__value_.__l.__size_;
    v10 = v58.__r_.__value_.__r.__words[0];
    v59[0] = v58.__r_.__value_.__r.__words[2];
    *(v59 + 3) = *(&v58.__r_.__value_.__r.__words[2] + 3);
    v12 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    std::string::basic_string(&v58, v5, 0, v9, &v56);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    v60 = v58;
  }

  if (a3)
  {
    std::string::push_back(v5, 124);
    std::string::push_back(&v60, 124);
  }

  v13 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
  if (v13 < 0)
  {
    v14 = v5;
    v5 = v5->__r_.__value_.__r.__words[0];
    v13 = v14->__r_.__value_.__l.__size_;
  }

  UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(v5, v13, &v58);
  v56 = 0uLL;
  v57 = 0;
  UC::SUE::UCSegmentedURLCoderProvider::getHostCoder(*a2, &v53);
  (*(*v53 + 40))(v55);
  v56 = *v55;
  v57 = v55[2];
  HIBYTE(v55[2]) = 0;
  LOBYTE(v55[0]) = 0;
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  memset(v55, 0, sizeof(v55));
  v53 = 0;
  v54 = 0uLL;
  if ((v12 & 0x80u) == 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = size;
  }

  if (!v15)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    LOBYTE(v21) = 0;
    goto LABEL_61;
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v60;
  }

  else
  {
    v16 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v60.__r_.__value_.__l.__size_;
  }

  UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(v16, v17, v52);
  UC::SUE::UCSegmentedURLCoderProvider::getHostCoder(*a2, &v48);
  (*(*v48.__r_.__value_.__l.__data_ + 40))(&__p);
  if (v48.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48.__r_.__value_.__l.__size_);
  }

  if ((v12 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&v61, v10, size);
  }

  else
  {
    v61.__r_.__value_.__r.__words[0] = v10;
    v61.__r_.__value_.__l.__size_ = size;
    LODWORD(v61.__r_.__value_.__r.__words[2]) = v59[0];
    *(&v61.__r_.__value_.__r.__words[2] + 3) = *(v59 + 3);
    *(&v61.__r_.__value_.__s + 23) = v12;
  }

  memset(&v48, 0, sizeof(v48));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v48, &v61, &v62, 1uLL);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  UC::SUE::UCSegmentedURLCoderProvider::getTLDCoder(*a2, &v61);
  v22 = (*(*v61.__r_.__value_.__l.__data_ + 16))(v61.__r_.__value_.__r.__words[0], &v48);
  if (v61.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61.__r_.__value_.__l.__size_);
  }

  if (v22)
  {
    UC::SUE::UCSegmentedURLCoderProvider::getTLDCoder(*a2, &v46);
    (*(*v46 + 40))(&v61);
    if ((v51 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v51 & 0x80u) == 0)
    {
      v24 = v51;
    }

    else
    {
      v24 = v50;
    }

    v25 = std::string::append(&v61, p_p, v24);
    v26 = v25->__r_.__value_.__r.__words[0];
    v55[1] = v25->__r_.__value_.__l.__size_;
    *(&v55[1] + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
    LOBYTE(v21) = *(&v25->__r_.__value_.__s + 23);
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v55[0] = v26;
    HIBYTE(v55[2]) = v21;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }
  }

  else
  {
    UC::SUE::UCSegmentedURLCoderProvider::getTLDFixedLengthCoder(*a2, &v61);
    v21 = (*(*v61.__r_.__value_.__l.__data_ + 16))(v61.__r_.__value_.__r.__words[0], &v48);
    if (v61.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61.__r_.__value_.__l.__size_);
    }

    if (v21)
    {
      UC::SUE::UCSegmentedURLCoderProvider::getTLDFixedLengthCoder(*a2, &v46);
      (*(*v46 + 40))(&v61);
      if ((v51 & 0x80u) == 0)
      {
        v27 = &__p;
      }

      else
      {
        v27 = __p;
      }

      if ((v51 & 0x80u) == 0)
      {
        v28 = v51;
      }

      else
      {
        v28 = v50;
      }

      v29 = std::string::append(&v61, v27, v28);
      v18 = v29->__r_.__value_.__r.__words[0];
      *&v54 = v29->__r_.__value_.__l.__size_;
      *(&v54 + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
      v19 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v53 = v18;
      HIBYTE(v54) = v19;
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      LOBYTE(v21) = 0;
      goto LABEL_58;
    }
  }

  v18 = 0;
  v19 = 0;
LABEL_58:
  v61.__r_.__value_.__r.__words[0] = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  if (v51 < 0)
  {
    operator delete(__p);
  }

  __p = v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v20 = v55[1];
  v15 = v54;
LABEL_61:
  v30 = SHIBYTE(v57);
  v31 = HIBYTE(v57);
  if (SHIBYTE(v57) < 0)
  {
    v31 = *(&v56 + 1);
  }

  v32 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v32 = v20;
  }

  v33 = v32 != 0;
  v34 = v32 < v31;
  if ((v19 & 0x80u) == 0)
  {
    v35 = v19;
  }

  else
  {
    v35 = v15;
  }

  if (v33 && v34)
  {
    v36 = v55;
  }

  else
  {
    v36 = &v56;
  }

  if (v33 && v34)
  {
    v31 = v32;
    v37 = 0;
  }

  else
  {
    v37 = 2;
  }

  if (v33 && v34)
  {
    v38 = v21;
  }

  else
  {
    v38 = HIBYTE(v57);
  }

  v39 = v35 != 0 && v35 < v31;
  if (v35 != 0 && v35 < v31)
  {
    v40 = &v53;
  }

  else
  {
    v40 = v36;
  }

  if (v35 != 0 && v35 < v31)
  {
    v41 = 1;
  }

  else
  {
    v41 = v37;
  }

  *a4 = v41;
  v42 = (a4 + 2);
  if (v39)
  {
    v43 = v19;
  }

  else
  {
    v43 = v38;
  }

  if ((v43 & 0x80) != 0)
  {
    if (v33 && v34)
    {
      v44 = v55;
    }

    else
    {
      v44 = &v56;
    }

    if (v39)
    {
      v44 = &v53;
    }

    std::string::__init_copy_ctor_external(v42, *v40, v44[1]);
  }

  else
  {
    *&v42->__r_.__value_.__l.__data_ = *v40;
    v42->__r_.__value_.__r.__words[2] = v40[2];
  }

  if ((v19 & 0x80) == 0)
  {
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_96;
    }

LABEL_103:
    operator delete(v55[0]);
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_104;
  }

  operator delete(v18);
  if ((v21 & 0x80) != 0)
  {
    goto LABEL_103;
  }

LABEL_96:
  if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_97;
  }

LABEL_104:
  operator delete(v56);
LABEL_97:
  *&v56 = &v58;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v56);
  if ((v12 & 0x80) != 0)
  {
    operator delete(v10);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_2702E1270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  *(v42 - 112) = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v42 - 112));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  a33 = &a40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  _Unwind_Resume(a1);
}

void UC::Exception::CoderError::~CoderError(std::exception *this)
{
  this->__vftable = &unk_28803D300;
  if (SHIBYTE(this[10].__vftable) < 0)
  {
    operator delete(this[8].__vftable);
  }

  if (SHIBYTE(this[7].__vftable) < 0)
  {
    operator delete(this[5].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28803D300;
  if (SHIBYTE(this[10].__vftable) < 0)
  {
    operator delete(this[8].__vftable);
  }

  if (SHIBYTE(this[7].__vftable) < 0)
  {
    operator delete(this[5].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete(v2);
}

void UC::SUE::SegmentedURLEncoderImpl::encodeURL(UC::SUE::SegmentedURLEncoderImpl *this@<X0>, const UC::UCURLComponents *a2@<X1>, std::string *a3@<X8>)
{
  if (!*(this + 2))
  {
    v6 = operator new(8uLL);
    *v6 = &unk_28803D3C0;
    *(this + 2) = v6;
  }

  v7 = a2 + 24;
  v8 = *(a2 + 47);
  if (v8 < 0)
  {
    if (*(a2 + 4) != 5)
    {
LABEL_218:
      exception = __cxa_allocate_exception(0x58uLL);
      UC::Exception::CoderError::CoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 1, "", 0, "Only encoding of the scheme https is supported", 46);
      goto LABEL_222;
    }

    v7 = *v7;
  }

  else if (v8 != 5)
  {
    goto LABEL_218;
  }

  v9 = *v7;
  v10 = v7[4];
  if (v9 != 1886680168 || v10 != 115)
  {
    goto LABEL_218;
  }

  if (*(a2 + 18))
  {
    exception = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 2, "", 0, "Encoding of URLs with port is not supported", 43);
    goto LABEL_222;
  }

  v12 = *(a2 + 175);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 20);
  }

  if (v12)
  {
    exception = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 3, "", 0, "Encoding of URLs with user is not supported", 43);
    goto LABEL_222;
  }

  v13 = *(a2 + 199);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 23);
  }

  if (v13)
  {
    exception = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 4, "", 0, "Encoding of URLs with password is not supported", 47);
LABEL_222:
  }

  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3[1].__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    __str = *(a2 + 2);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v66 = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(v66, "UCSegmentedURLCoderErrorDomain", 0x1EuLL, 5, "", 0, "The URL must have a host component", 0x22uLL);
  }

  memset(&v90, 0, sizeof(v90));
  if (*(a2 + 95) >= 0)
  {
    v15 = *(a2 + 95);
  }

  else
  {
    v15 = *(a2 + 10);
  }

  if (*(a2 + 119) >= 0)
  {
    v16 = *(a2 + 119);
  }

  else
  {
    v16 = *(a2 + 13);
  }

  if (*(a2 + 143) >= 0)
  {
    v17 = *(a2 + 143);
  }

  else
  {
    v17 = *(a2 + 16);
  }

  std::string::basic_string[abi:ne200100]<0>(&v87, "appclip.");
  v18 = v89;
  if ((v89 & 0x80u) == 0)
  {
    v19 = &v87;
  }

  else
  {
    v19 = v87;
  }

  if ((v89 & 0x80u) == 0)
  {
    v20 = v89;
  }

  else
  {
    v20 = v88;
  }

  v21 = &v19[v20];
  if (v20)
  {
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    while (*v19 == p_str->__r_.__value_.__s.__data_[0])
    {
      ++v19;
      p_str = (p_str + 1);
      if (!--v20)
      {
        goto LABEL_46;
      }
    }

    v21 = v19;
    if ((v89 & 0x80) != 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_46:
    if ((v89 & 0x80) != 0)
    {
LABEL_50:
      if (v21 != &v87[v88])
      {
        goto LABEL_51;
      }

      v18 = v88;
LABEL_55:
      std::string::basic_string(&v85, &__str, v18, 0xFFFFFFFFFFFFFFFFLL, &v76);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v85;
      std::string::basic_string[abi:ne200100]<0>(&v85, "1");
      std::vector<std::string>::push_back[abi:ne200100](&v90, &v85);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      v23 = 1;
      goto LABEL_60;
    }
  }

  if (v21 == (&v87 + v89))
  {
    goto LABEL_55;
  }

LABEL_51:
  std::string::basic_string[abi:ne200100]<0>(&v85, "0");
  std::vector<std::string>::push_back[abi:ne200100](&v90, &v85);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  v23 = 0;
LABEL_60:
  UC::SUE::UCSegmentedURLEncodingResult::setSpecialSubdomainType(a3, v23);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    v84 = __str;
  }

  v24 = v16 + v15;
  v25 = -v17;
  UC::SUE::SegmentedURLEncoderImpl::_encodeHost(&v84, this, v16 + v15 != -v17, &v85);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForHostFormatType(v85.__r_.__value_.__l.__data_, &v76);
  if ((v86 & 0x80u) == 0)
  {
    v26 = &v85.__r_.__value_.__s.__data_[8];
  }

  else
  {
    v26 = v85.__r_.__value_.__l.__size_;
  }

  if ((v86 & 0x80u) == 0)
  {
    v27 = v86;
  }

  else
  {
    v27 = v85.__r_.__value_.__r.__words[2];
  }

  v28 = std::string::append(&v76, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v83 = v28->__r_.__value_.__r.__words[2];
  v82 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  std::vector<std::string>::push_back[abi:ne200100](&v90, &v82);
  data = v85.__r_.__value_.__l.__data_;
  v31 = operator new(0x20uLL);
  UC::SUE::UCSegmentedURLEncodingResult::HostResult::HostResult(v31, &v85.__r_.__value_.__r.__words[1], v24 != v25, data);
  v80 = v31;
  v81 = 0;
  UC::SUE::UCSegmentedURLEncodingResult::setHostEncodingResult(a3, &v80);
  v32 = v80;
  v80 = 0;
  if (v32)
  {
    std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](&v80, v32);
  }

  memset(&__p, 0, sizeof(__p));
  memset(&v78, 0, sizeof(v78));
  v33 = *(a2 + 143);
  if ((v33 & 0x80u) != 0)
  {
    v33 = *(a2 + 16);
  }

  if (!v33)
  {
    UC::SUE::SegmentedURLEncoderImpl::_tryEncodingSegmentedPathAndQuery(this, a2 + 9, a2 + 12, &v76);
    v34 = v77;
    if (v77 == 1)
    {
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v74, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
      }

      else
      {
        v74 = v76;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v74, "");
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v74;
    UC::SUE::SegmentedURLEncoderImpl::_tryEncodingWithPathWordBookAndAutoQueryTemplateFormat(this, a2 + 72, a2 + 96, &v74);
    if (v75 == 1)
    {
      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__x, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
      }

      else
      {
        __x = v74;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__x, "");
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    v78 = __x;
    if (v75 == 1 && SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (v34 && SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v76 = *(a2 + 3);
  }

  v35 = *(a2 + 119);
  if ((v35 & 0x80u) != 0)
  {
    v35 = *(a2 + 13);
  }

  if (v35)
  {
    std::operator+<char>();
    v36 = (v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v74 : v74.__r_.__value_.__r.__words[0];
    v37 = (v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v74.__r_.__value_.__r.__words[2]) : v74.__r_.__value_.__l.__size_;
    std::string::append(&v76, v36, v37);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  v38 = *(a2 + 143);
  if ((v38 & 0x80u) != 0)
  {
    v38 = *(a2 + 16);
  }

  if (v38)
  {
    std::operator+<char>();
    v39 = (v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v74 : v74.__r_.__value_.__r.__words[0];
    v40 = (v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v74.__r_.__value_.__r.__words[2]) : v74.__r_.__value_.__l.__size_;
    std::string::append(&v76, v39, v40);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  v41 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v43 = v76.__r_.__value_.__l.__size_;
    if (!v76.__r_.__value_.__l.__size_)
    {
      memset(&v74, 0, sizeof(v74));
      goto LABEL_155;
    }

    v42 = v76.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v76.__r_.__value_.__s + 23))
    {
      memset(&v74, 0, sizeof(v74));
      goto LABEL_139;
    }

    v42 = &v76;
    v43 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
  }

  if (v42->__r_.__value_.__s.__data_[0] == 47)
  {
    if (v43 == 1)
    {
      goto LABEL_133;
    }

    v44 = v76.__r_.__value_.__r.__words[0];
    if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v76;
    }

    if (v44->__r_.__value_.__s.__data_[1] != 35)
    {
LABEL_133:
      std::string::basic_string(&v74, &v76, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &__x);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      v76 = v74;
      v41 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    }
  }

  memset(&v74, 0, sizeof(v74));
  if (v41 < 0)
  {
LABEL_155:
    if (!v76.__r_.__value_.__l.__size_)
    {
      goto LABEL_156;
    }

    goto LABEL_140;
  }

LABEL_139:
  if (!v41)
  {
LABEL_156:
    v47 = 0;
    goto LABEL_157;
  }

LABEL_140:
  if (std::string::find(&v76, 124, 0) != -1)
  {
    v67 = __cxa_allocate_exception(0x58uLL);
    std::string::basic_string[abi:ne200100]<0>(&__x, "|");
    if ((__x.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_x = &__x;
    }

    else
    {
      p_x = __x.__r_.__value_.__r.__words[0];
    }

    if ((__x.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(__x.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = __x.__r_.__value_.__l.__size_;
    }

    UC::Exception::CoderError::CoderError(v67, "UCSegmentedURLCoderErrorDomain", 0x1EuLL, 6, p_x, v69, "Encountered an unsupported symbol while encoding URL's path or query", 0x44uLL);
  }

  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = &v76;
  }

  else
  {
    v45 = v76.__r_.__value_.__r.__words[0];
  }

  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = v76.__r_.__value_.__l.__size_;
  }

  UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(v45, v46, &__x);
  UC::SUE::UCSegmentedURLCoderProvider::getCombinedPathAndQueryCoder(*this, &v70);
  (*(*v70 + 40))(&v72);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v74 = v72;
  *(&v72.__r_.__value_.__s + 23) = 0;
  v72.__r_.__value_.__s.__data_[0] = 0;
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  v72.__r_.__value_.__r.__words[0] = &__x;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v72);
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = v74.__r_.__value_.__l.__size_;
  }

LABEL_157:
  std::string::basic_string[abi:ne200100]<0>(&__x, "0");
  v48 = SHIBYTE(__x.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__x.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v48 = __x.__r_.__value_.__l.__size_;
    operator delete(__x.__r_.__value_.__l.__data_);
  }

  v49 = v48 + v47;
  if (v48 + v47 >= 0xFFFFFFFF)
  {
    v50 = 0xFFFFFFFFLL;
  }

  else
  {
    v50 = v48 + v47;
  }

  if (v47)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0xFFFFFFFFLL;
  }

  v52 = v49 < 0xFFFFFFFF && v47 != 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = __p.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100]<0>(&__x, "1");
  v54 = SHIBYTE(__x.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__x.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v54 = __x.__r_.__value_.__l.__size_;
    operator delete(__x.__r_.__value_.__l.__data_);
    if (!v53)
    {
      goto LABEL_177;
    }
  }

  else if (!v53)
  {
    goto LABEL_177;
  }

  v55 = v54 + v53;
  if (v54 + v53 < v51)
  {
    v56 = 0;
    v57 = 1;
    v51 = v55;
    v52 = 1;
    goto LABEL_178;
  }

LABEL_177:
  v57 = 0;
  v56 = 1;
LABEL_178:
  v58 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v58 = v78.__r_.__value_.__l.__size_;
  }

  if (v58)
  {
    v59 = v58 >= v51;
  }

  else
  {
    v59 = 1;
  }

  v60 = !v59;
  begin = v90.__begin_;
  UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForTemplateType(v60, &__x);
  v62.__i_ = begin;
  std::vector<std::string>::insert(&v90, v62, &__x);
  if (SHIBYTE(__x.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__x.__r_.__value_.__l.__data_);
  }

  UC::SUE::UCSegmentedURLEncodingResult::setTemplateType(a3, v60);
  UC::SUE::UCSegmentedURLEncodingResult::setHasPathOrQuery(a3, (v60 | v52) & 1);
  if ((v60 | v52))
  {
    if (v60)
    {
      p_p = &v78;
    }

    else
    {
      UC::SUE::UCSegmentedURLEncodingResult::setNonTemplatePathAndQueryEncodeType(a3, v56);
      UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForNonTemplatePathAndQueryEncodeType(v56, &__x);
      std::vector<std::string>::push_back[abi:ne200100](&v90, &__x);
      if (SHIBYTE(__x.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__x.__r_.__value_.__l.__data_);
      }

      if (v57)
      {
        p_p = &__p;
      }

      else
      {
        p_p = &v74;
      }
    }

    std::vector<std::string>::push_back[abi:ne200100](&v90, p_p);
  }

  UC::JoinString(&v90, &__x);
  UC::SUE::UCSegmentedURLEncodingResult::setEncodingBits(a3, &__x);
  if (SHIBYTE(__x.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__x.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v64 = v81;
  v81 = 0;
  if (v64)
  {
    std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](&v81, v64);
  }

  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82);
  }

  if (v86 < 0)
  {
    operator delete(v85.__r_.__value_.__l.__size_);
  }

  if (v89 < 0)
  {
    operator delete(v87);
  }

  v85.__r_.__value_.__r.__words[0] = &v90;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v85);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_2702E2108(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a28 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (!v28)
  {
    JUMPOUT(0x2702E238CLL);
  }

  JUMPOUT(0x2702E237CLL);
}

void sub_2702E21B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char *a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x58uLL);
    v19 = exception;
    v20 = *(v17 + 55);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v21 = v17[4];
      v20 = v17[5];
    }

    else
    {
      v21 = v17 + 4;
    }

    UC::Exception::CoderError::CoderError(exception, "UCSegmentedURLCoderErrorDomain", 0x1EuLL, 6, v21, v20, "Encountered an unsupported symbol while encoding URL's path or query", 0x44uLL);
  }

  a12 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  JUMPOUT(0x2702E236CLL);
}

void sub_2702E2294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, void **a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  v60 = a51;
  a51 = 0;
  if (v60)
  {
    std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](&a51, v60);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (*(v58 - 161) < 0)
  {
    operator delete(*(v58 - 184));
  }

  if (*(v58 - 137) < 0)
  {
    operator delete(*(v58 - 160));
  }

  *(v58 - 192) = v58 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v58 - 192));
  if (*(v58 - 89) < 0)
  {
    operator delete(*(v58 - 112));
  }

  UC::SUE::UCSegmentedURLEncodingResult::~UCSegmentedURLEncodingResult(v57);
  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v20.__end_cap_.__value_ = a1;
    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v13 + 24;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    v19 = *(a1 + 16);
    *(a1 + 16) = v14;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = (v4 + 24);
  }

  *(a1 + 8) = v7;
}

void *UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForHostFormatType@<X0>(unsigned int a1@<W1>, void *a2@<X8>)
{
  if (a1 >= 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    UC::Exception::InternalCoderError::InternalCoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 0, "Unknown host format type", 24);
  }

  v2 = off_279E00778[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void UC::SUE::SegmentedURLEncoderImpl::_tryEncodingSegmentedPathAndQuery(UC::SUE::UCSegmentedURLCoderProvider **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *(a3 + 23);
  if (v7 < 0)
  {
    v8 = a3[1];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!*(a3 + 23))
    {
      goto LABEL_10;
    }

    v8 = *(a3 + 23);
  }

  if (v7 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (*(v9 + v8 - 1) == 38)
  {
    *a4 = 0;
    a4[24] = 0;
    return;
  }

LABEL_10:
  v10 = *(a2 + 23);
  if (v10 < 0)
  {
    v11 = a2[1];
    if (!v11)
    {
      v13 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
LABEL_20:
      v14 = a2;
      a2 = *a2;
      v10 = v14[1];
      goto LABEL_21;
    }
  }

  else
  {
    if (!*(a2 + 23))
    {
      v13 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      goto LABEL_21;
    }

    v11 = *(a2 + 23);
  }

  v12 = *a2;
  if (v10 >= 0)
  {
    v12 = a2;
  }

  v13 = *(v12 + v11 - 1) == 47;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  UC::SplitString(a2, v10, 0x2Fu, &v68);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  UC::SUE::SegmentedURLEncoderImpl::_filterByComponentsToKeep(v15, &v68, &v65);
  if (v66 == v65 && v13)
  {
    std::string::basic_string[abi:ne200100]<0>(&v63, "/");
    std::vector<std::string>::push_back[abi:ne200100](&v65, &v63);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }
  }

  v16 = v68;
  v17 = v69;
  while (v17 != v16)
  {
    v18 = *(v17 - 1);
    v17 -= 3;
    if (v18 < 0)
    {
      operator delete(*v17);
    }
  }

  v69 = v16;
  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = a3[1];
  }

  UC::SplitString(v20, v21, 0x26u, &v68);
  v63 = 0uLL;
  v64 = 0;
  UC::SUE::SegmentedURLEncoderImpl::_filterByComponentsToKeep(v22, &v68, &v63);
  memset(&v62, 0, sizeof(v62));
  v23 = *(&v63 + 1);
  v24 = v63;
  v25 = v65;
  if (v66 - v65 == 24)
  {
    v26 = *(v65 + 23);
    if (v26 < 0)
    {
      if (v65[1] != 1)
      {
        goto LABEL_43;
      }

      v25 = *v65;
    }

    else if (v26 != 1)
    {
      goto LABEL_43;
    }

    if (*v25 != 47 || *(&v63 + 1) == v63)
    {
      goto LABEL_44;
    }

    goto LABEL_104;
  }

LABEL_43:
  if (v66 != v65)
  {
LABEL_44:
    v54 = a4;
    v27 = 0;
    v28 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3);
    v29 = v28 - 1;
    if (v28 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3);
    }

    while (1)
    {
      v32 = v23 != v24 || v29 != 0;
      v33 = &v65[v27];
      v34 = SHIBYTE(v65[v27 + 2]);
      if (v34 < 0)
      {
        v35 = *v33;
        v34 = v33[1];
      }

      else
      {
        v35 = &v65[v27];
      }

      UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(v35, v34, &v61);
      if ((UC::SUE::SegmentedURLEncoderImpl::_canEncodeSegmentedPathComponentOrQueryValue(a1, &v61) & 1) == 0)
      {
        *v54 = 0;
        v54[24] = 0;
        v60.__r_.__value_.__r.__words[0] = &v61;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
        goto LABEL_119;
      }

      v36 = &v65[v27];
      if (SHIBYTE(v65[v27 + 2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v60, *v36, v36[1]);
      }

      else
      {
        v37 = *v36;
        v60.__r_.__value_.__r.__words[2] = v36[2];
        *&v60.__r_.__value_.__l.__data_ = v37;
      }

      if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = v60.__r_.__value_.__l.__size_;
        if (v60.__r_.__value_.__l.__size_ != 1)
        {
          if (v29)
          {
            v42 = 0;
          }

          else
          {
            v42 = v13;
          }

          if (v42)
          {
            goto LABEL_84;
          }

          goto LABEL_82;
        }

        v38 = v60.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) != 1)
        {
          if (v29)
          {
            v40 = 0;
          }

          else
          {
            v40 = v13;
          }

          if (v40)
          {
LABEL_77:
            size = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
            goto LABEL_84;
          }

          goto LABEL_82;
        }

        v38 = &v60;
      }

      if (v38->__r_.__value_.__s.__data_[0] != 47)
      {
        if (v29)
        {
          v41 = 0;
        }

        else
        {
          v41 = v13;
        }

        if (v41)
        {
          if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          size = v60.__r_.__value_.__l.__size_;
LABEL_84:
          v44 = &v60;
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = v60.__r_.__value_.__r.__words[0];
          }

          v43 = v44->__r_.__value_.__s.__data_[size - 1] != 47;
LABEL_87:
          std::string::basic_string[abi:ne200100]<0>(&v57, "0");
          UC::SUE::SegmentedURLEncoderImpl::_encodeURLPathComponent(a1, &v65[v27], v43, v32, __p);
          if ((v56 & 0x80u) == 0)
          {
            v45 = __p;
          }

          else
          {
            v45 = __p[0];
          }

          if ((v56 & 0x80u) == 0)
          {
            v46 = v56;
          }

          else
          {
            v46 = __p[1];
          }

          v47 = std::string::append(&v57, v45, v46);
          v48 = *&v47->__r_.__value_.__l.__data_;
          v59 = v47->__r_.__value_.__r.__words[2];
          *v58 = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          if (v56 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          std::vector<std::string>::push_back[abi:ne200100](&v62, v58);
          goto LABEL_98;
        }

LABEL_82:
        v43 = 0;
        goto LABEL_87;
      }

      std::string::basic_string[abi:ne200100]<0>(v58, "10");
      std::vector<std::string>::push_back[abi:ne200100](&v62, v58);
LABEL_98:
      if (SHIBYTE(v59) < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      v60.__r_.__value_.__r.__words[0] = &v61;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
      --v29;
      v27 += 3;
      if (!--v30)
      {
        v23 = *(&v63 + 1);
        v24 = v63;
        a4 = v54;
        break;
      }
    }
  }

LABEL_104:
  if (v23 == v24)
  {
LABEL_116:
    UC::JoinString(&v62, &v61);
    *a4 = v61;
    a4[24] = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v61, "11");
    std::vector<std::string>::push_back[abi:ne200100](&v62, &v61);
    v49 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v50 = 0;
    v51 = v49 - 1;
    if (v49 <= 1)
    {
      v49 = 1;
    }

    while ((UC::SUE::SegmentedURLEncoderImpl::_canEncodeSegmentedQureyParameter(a1, (v63 + v50)) & 1) != 0)
    {
      v53 = v51-- != 0;
      UC::SUE::SegmentedURLEncoderImpl::_encodeSegmentedQueryComponent((v63 + v50), a1, v53, &v61);
      std::vector<std::string>::push_back[abi:ne200100](&v62, &v61);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      v50 += 24;
      if (!--v49)
      {
        goto LABEL_116;
      }
    }

    *a4 = 0;
    a4[24] = 0;
  }

LABEL_119:
  v61.__r_.__value_.__r.__words[0] = &v62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  v62.__r_.__value_.__r.__words[0] = &v63;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v62);
  *&v63 = &v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v63);
  v65 = &v68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v65);
}

void sub_2702E2C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  __p = &a43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  a43 = v43 - 160;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a43);
  *(v43 - 160) = v43 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v43 - 160));
  *(v43 - 136) = v43 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v43 - 136));
  _Unwind_Resume(a1);
}

void UC::SUE::SegmentedURLEncoderImpl::_tryEncodingWithPathWordBookAndAutoQueryTemplateFormat(UC::SUE::UCSegmentedURLCoderProvider **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (UC::SUE::SegmentedURLEncoderImpl::_pathAndQueryMatchPathWordBookAndAutoQueryTemplateFormat(a1, a2, a3))
  {
    memset(v47, 0, sizeof(v47));
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    UC::SplitString(v9, v10, 0x2Fu, v47);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    UC::SUE::SegmentedURLEncoderImpl::_filterByComponentsToKeep(v11, v47, &v44);
    memset(v43, 0, sizeof(v43));
    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    UC::SplitString(v13, v14, 0x26u, v43);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    UC::SUE::SegmentedURLEncoderImpl::_filterByComponentsToKeep(v15, v43, &v40);
    memset(&v39, 0, sizeof(v39));
    if (v45 - v44 == 24)
    {
      std::string::basic_string[abi:ne200100]<0>(&v37, "0");
      UC::SUE::UCSegmentedURLCoderProvider::getKnownWordFixedLengthCoder(*a1, &v33);
      (*(*v33 + 32))(v35);
      if ((v36 & 0x80u) == 0)
      {
        v16 = v35;
      }

      else
      {
        v16 = v35[0];
      }

      if ((v36 & 0x80u) == 0)
      {
        v17 = v36;
      }

      else
      {
        v17 = v35[1];
      }

      v18 = std::string::append(&v37, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v39, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }

    if (v41 == v40)
    {
      goto LABEL_61;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "1");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&v39, v22, v23);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v41 == v40)
    {
LABEL_61:
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(a4, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
      }

      else
      {
        *a4 = v39;
      }

      v32 = 1;
    }

    else
    {
      v24 = 0;
      v25 = 0xAAAAAAAAAAAAAAABLL * (v41 - v40);
      v26 = v25 - 1;
      if (v25 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = 0xAAAAAAAAAAAAAAABLL * (v41 - v40);
      }

      while ((UC::SUE::SegmentedURLEncoderImpl::_canEncodeSegmentedQureyParameter(a1, &v40[v24]) & 1) != 0)
      {
        v29 = v26-- != 0;
        UC::SUE::SegmentedURLEncoderImpl::_encodePathWordBookAndAutoQueryTemplateQueryComponent(&v40[v24], a1, v29, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &__p;
        }

        else
        {
          v30 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v39, v30, v31);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v24 += 3;
        if (!--v27)
        {
          goto LABEL_61;
        }
      }

      v32 = 0;
      a4->__r_.__value_.__s.__data_[0] = 0;
    }

    a4[1].__r_.__value_.__s.__data_[0] = v32;
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v39.__r_.__value_.__r.__words[0] = &v40;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
    v40 = v43;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
    v43[0] = &v44;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v43);
    v44 = v47;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  }

  else
  {
    a4->__r_.__value_.__s.__data_[0] = 0;
    a4[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void sub_2702E309C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t **__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t *a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  __p = &a35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  a35 = &a38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a35);
  a38 = v38 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a38);
  *(v38 - 112) = v38 - 88;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v38 - 112));
  _Unwind_Resume(a1);
}

void *UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForNonTemplatePathAndQueryEncodeType@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1 == 1)
  {
    v2 = "0";
  }

  else
  {
    if (a1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      UC::Exception::InternalCoderError::InternalCoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 0, "Unknown non-template path and query encode type type", 52);
    }

    v2 = "1";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

std::vector<std::string>::iterator std::vector<std::string>::insert(std::vector<std::string> *this, std::vector<std::string>::const_iterator __position, std::vector<std::string>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    if (v10 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = __position.__i_ - begin;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    }

    if (v12 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v13;
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    v26.__end_cap_.__value_ = this;
    if (v14)
    {
      v16 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v14);
    }

    else
    {
      v16 = 0;
    }

    v26.__first_ = v16;
    v26.__begin_ = v16 + v15;
    v26.__end_ = v26.__begin_;
    v26.__end_cap_.__value_ = &v16[v14];
    std::__split_buffer<std::string>::emplace_back<std::string>(&v26, __x);
    v18 = v26.__begin_;
    memcpy(v26.__end_, i, this->__end_ - i);
    v19 = this->__begin_;
    v20 = v26.__begin_;
    v26.__end_ = (v26.__end_ + this->__end_ - i);
    this->__end_ = i;
    v21 = i - v19;
    v22 = (v20 - (i - v19));
    memcpy(v22, v19, v21);
    v23 = this->__begin_;
    this->__begin_ = v22;
    v24 = this->__end_cap_.__value_;
    *&this->__end_ = *&v26.__end_;
    v26.__end_ = v23;
    v26.__end_cap_.__value_ = v24;
    v26.__first_ = v23;
    v26.__begin_ = v23;
    std::__split_buffer<std::string>::~__split_buffer(&v26);
    return v18;
  }

  else if (__position.__i_ == end)
  {
    v17 = *&__x->__r_.__value_.__l.__data_;
    end->__r_.__value_.__r.__words[2] = __x->__r_.__value_.__r.__words[2];
    *&end->__r_.__value_.__l.__data_ = v17;
    __x->__r_.__value_.__l.__size_ = 0;
    __x->__r_.__value_.__r.__words[2] = 0;
    __x->__r_.__value_.__r.__words[0] = 0;
    this->__end_ = end + 1;
  }

  else
  {
    std::vector<std::string>::__move_range(this, __position.__i_, end, &__position.__i_[1]);
    if (SHIBYTE(i->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(i->__r_.__value_.__l.__data_);
    }

    v8 = *&__x->__r_.__value_.__l.__data_;
    i->__r_.__value_.__r.__words[2] = __x->__r_.__value_.__r.__words[2];
    *&i->__r_.__value_.__l.__data_ = v8;
    *(&__x->__r_.__value_.__s + 23) = 0;
    __x->__r_.__value_.__s.__data_[0] = 0;
  }

  return i;
}

void *UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForTemplateType@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      UC::Exception::InternalCoderError::InternalCoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 0, "Unknown template type", 21);
    }

    v2 = "1";
  }

  else
  {
    v2 = "0";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t UC::SUE::SegmentedURLEncoderImpl::_canEncodeSegmentedPathComponentOrQueryValue(UC::SUE::UCSegmentedURLCoderProvider **a1, uint64_t a2)
{
  UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*a1, &v8);
  if ((*(*v8 + 16))(v8, a2))
  {
    v4 = 1;
  }

  else
  {
    UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQuery6BitAlphabetCoder(*a1, &v6);
    v4 = (*(*v6 + 16))(v6, a2);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v4;
}

void sub_2702E3588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UC::SUE::SegmentedURLEncoderImpl::_canEncodeSegmentedQureyParameter(UC::SUE::UCSegmentedURLCoderProvider **a1, std::string *this)
{
  v4 = std::string::find(this, 61, 0);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  std::string::basic_string(&v17, this, 0, v4, &v16);
  std::string::basic_string(&v16, this, v5 + 1, 0xFFFFFFFFFFFFFFFFLL, v15);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v17;
  }

  else
  {
    v6 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(v6, size, v15);
  UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*a1, &v13);
  v8 = (*(*v13 + 2))(v13, v15);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v8)
  {
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = v16.__r_.__value_.__l.__size_;
    }

    UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(v9, v10, &v13);
    canEncodeSegmentedPathComponentOrQueryValue = UC::SUE::SegmentedURLEncoderImpl::_canEncodeSegmentedPathComponentOrQueryValue(a1, &v13);
    v18 = &v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  }

  else
  {
    canEncodeSegmentedPathComponentOrQueryValue = 0;
  }

  v13 = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return canEncodeSegmentedPathComponentOrQueryValue;
}

void sub_2702E3730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v22 - 40) = v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v22 - 40));
  a10 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 41) < 0)
  {
    operator delete(*(v22 - 64));
  }

  _Unwind_Resume(a1);
}

void UC::SUE::SegmentedURLEncoderImpl::_encodeSegmentedPathOrQueryValueComponent(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  if (a5)
  {
    v13 = "|";
  }

  else
  {
    v13 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(v50, v13);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v50, v48);
  if ((v49 & 0x80u) == 0)
  {
    v14 = v48;
  }

  else
  {
    v14 = v48[0];
  }

  if ((v49 & 0x80u) == 0)
  {
    v15 = v49;
  }

  else
  {
    v15 = v48[1];
  }

  UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(v14, v15, v47);
  __p = 0uLL;
  v46 = 0;
  UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*a1, &v43);
  v16 = (*(*v43 + 16))(v43, v47);
  if (*(&v43 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
  }

  if (v16)
  {
    UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*a1, v40);
    v17 = v40[0];
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, *a4, *(a4 + 8));
    }

    else
    {
      v42 = *a4;
    }

    (*(*v17 + 56))(&v43, v17, v47, &v42);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p);
    }

    __p = v43;
    v46 = v44;
    HIBYTE(v44) = 0;
    LOBYTE(v43) = 0;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (v40[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40[1]);
    }
  }

  v43 = 0uLL;
  v44 = 0;
  UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQuery6BitAlphabetCoder(*a1, v40);
  v18 = (*(*v40[0] + 16))(v40[0], v47);
  if (v40[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40[1]);
  }

  if (v18)
  {
    UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQuery6BitAlphabetCoder(*a1, v38);
    (*(*v38[0] + 40))(v40);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43);
    }

    v43 = *v40;
    v44 = v41;
    HIBYTE(v41) = 0;
    LOBYTE(v40[0]) = 0;
    if (v38[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38[1]);
    }
  }

  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if ((*(**(a1 + 16) + 24))(*(a1 + 16), a3))
  {
    (*(**(a1 + 16) + 32))(v38);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }

    *v40 = *v38;
    v41 = v39;
  }

  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  if (a2)
  {
    UC::SUE::UCSegmentedURLCoderProvider::getKnownWordFixedLengthCoder(*a1, &v36);
    v19 = (*(*v36 + 24))(v36, a3);
    if (*(&v36 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
    }

    if (v19)
    {
      UC::SUE::UCSegmentedURLCoderProvider::getKnownWordFixedLengthCoder(*a1, &v34);
      (*(*v34 + 32))(&v36);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      *v38 = v36;
      v39 = v37;
      HIBYTE(v37) = 0;
      LOBYTE(v36) = 0;
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }

    LODWORD(v20) = 0;
  }

  else
  {
    LODWORD(v20) = 1;
  }

  v21 = HIBYTE(v41);
  if (v41 < 0)
  {
    v21 = v40[1];
  }

  if (v21 < 1 || (v22 = (v21 - a6), v21 - a6 < 0))
  {
    v24 = 0;
    p_p = &__p;
    v22 = 0xFFFFFFFFLL;
    if (!a2)
    {
      goto LABEL_56;
    }
  }

  else
  {
    p_p = v40;
    v24 = 1;
    if ((a2 & 1) == 0)
    {
      LODWORD(v20) = 1;
      goto LABEL_56;
    }

    LODWORD(v20) = 0;
  }

  v25 = HIBYTE(v39);
  if (v39 < 0)
  {
    v25 = v38[1];
  }

  if (v25 >= 1)
  {
    v26 = v25 & 0x7FFFFFFF;
    if (v26 < v22)
    {
      LODWORD(v20) = 0;
      p_p = v38;
      v24 = 3;
      v22 = v26;
    }
  }

LABEL_56:
  v27 = HIBYTE(v46);
  if (v46 < 0)
  {
    v27 = DWORD2(__p);
  }

  if (v27 >= 1)
  {
    v28 = v27 & 0x7FFFFFFF;
    if (v28 < v22)
    {
      v24 = 0;
      LODWORD(v20) = a2 ^ 1;
      p_p = &__p;
      v22 = v28;
    }
  }

  v29 = HIBYTE(v44);
  if (v44 < 0)
  {
    v29 = DWORD2(v43);
  }

  v30 = v29 > 0;
  v31 = (v29 & 0x7FFFFFFFu) < v22;
  if (v30 && v31)
  {
    v20 = a2 ^ 1u;
  }

  else
  {
    v20 = v20;
  }

  if (v30 && v31)
  {
    v32 = &v43;
  }

  else
  {
    v32 = p_p;
  }

  v33 = 2;
  if (!v30 || !v31)
  {
    v33 = v24;
  }

  UC::SUE::SegmentedURLEncoderImpl::SegmentedPathOrQueryValueEncodingResult::SegmentedPathOrQueryValueEncodingResult(a7, v33 | (v20 << 32), v32);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p);
  }

  *&__p = v47;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }
}

void sub_2702E3D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, std::__shared_weak_count *a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  __p = (v48 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v48 - 105) < 0)
  {
    operator delete(*(v48 - 128));
  }

  if (*(v48 - 81) < 0)
  {
    operator delete(*(v48 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void UC::SUE::SegmentedURLEncoderImpl::_encodeURLPathComponent(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v62[2] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    UC::Exception::InternalCoderError::InternalCoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 0, "Cannot encode empty path", 24);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  UC::SUE::SegmentedURLEncoderImpl::_encodeSegmentedPathOrQueryValueComponent(a1, 1, a2, &__p, a4, 0, &v58);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (HIDWORD(v58))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForPathComponentEncodingType(v58, &__p);
  if (v60 >= 0)
  {
    v11 = &v59;
  }

  else
  {
    v11 = v59;
  }

  if (v60 >= 0)
  {
    v12 = HIBYTE(v60);
  }

  else
  {
    v12 = *(&v59 + 1);
  }

  v13 = std::string::append(&__p, v11, v12);
  v14 = v13->__r_.__value_.__r.__words[0];
  v62[0] = v13->__r_.__value_.__l.__size_;
  *(v62 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v15 = SHIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (a3)
    {
      goto LABEL_15;
    }

LABEL_70:
    v42 = v62[0];
    *a5 = v14;
    *(a5 + 8) = v42;
    *(a5 + 15) = *(v62 + 7);
    *(a5 + 23) = v15;
    goto LABEL_77;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((a3 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_15:
  v46 = v14;
  v47 = v15;
  std::string::basic_string[abi:ne200100]<0>(v53, "");
  UC::SUE::SegmentedURLEncoderImpl::_encodeSegmentedPathOrQueryValueComponent(a1, 1, a2, v53, 1, 0, &__p);
  v58 = __p.__r_.__value_.__r.__words[0];
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  v59 = *&__p.__r_.__value_.__r.__words[1];
  v60 = v56;
  HIBYTE(v56) = 0;
  __p.__r_.__value_.__s.__data_[8] = 0;
  v61 = v57;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }

  if (HIDWORD(v58))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForPathComponentEncodingType(v58, &__p);
  if (v60 >= 0)
  {
    v16 = &v59;
  }

  else
  {
    v16 = v59;
  }

  if (v60 >= 0)
  {
    v17 = HIBYTE(v60);
  }

  else
  {
    v17 = *(&v59 + 1);
  }

  v18 = std::string::append(&__p, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v54 = v18->__r_.__value_.__r.__words[2];
  *v53 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "10");
  if (v54 >= 0)
  {
    v20 = v53;
  }

  else
  {
    v20 = v53[0];
  }

  if (v54 >= 0)
  {
    v21 = HIBYTE(v54);
  }

  else
  {
    v21 = v53[1];
  }

  v22 = std::string::insert(&__p, 0, v20, v21);
  size = v22->__r_.__value_.__l.__size_;
  v45 = v22->__r_.__value_.__r.__words[0];
  v52[0] = v22->__r_.__value_.__r.__words[2];
  *(v52 + 3) = *(&v22->__r_.__value_.__r.__words[2] + 3);
  v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v25 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v22->__r_.__value_.__r.__words[0] = 0;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = *(a2 + 8);
  }

  v27 = v50;
  std::string::basic_string[abi:ne200100](v50, v26 + 1);
  if (v51 < 0)
  {
    v27 = v50[0];
  }

  if (v26)
  {
    if (*(a2 + 23) >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    memmove(v27, v28, v26);
  }

  *(v27 + v26) = 47;
  std::string::basic_string[abi:ne200100]<0>(v48, "");
  UC::SUE::SegmentedURLEncoderImpl::_encodeSegmentedPathOrQueryValueComponent(a1, 1, v50, v48, a4, 0, &__p);
  v58 = __p.__r_.__value_.__r.__words[0];
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  v59 = *&__p.__r_.__value_.__r.__words[1];
  v60 = v56;
  HIBYTE(v56) = 0;
  __p.__r_.__value_.__s.__data_[8] = 0;
  v61 = v57;
  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (HIDWORD(v58))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForPathComponentEncodingType(v58, &__p);
  if (v60 >= 0)
  {
    v29 = &v59;
  }

  else
  {
    v29 = v59;
  }

  if (v60 >= 0)
  {
    v30 = HIBYTE(v60);
  }

  else
  {
    v30 = *(&v59 + 1);
  }

  v31 = std::string::append(&__p, v29, v30);
  v32 = v31->__r_.__value_.__r.__words[0];
  v33 = v31->__r_.__value_.__l.__size_;
  LODWORD(v48[0]) = v31->__r_.__value_.__r.__words[2];
  *(v48 + 3) = *(&v31->__r_.__value_.__r.__words[2] + 3);
  v34 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
  v35 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
  v31->__r_.__value_.__r.__words[0] = 0;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v36 = (v24 & 0x80u) != 0;
  if ((v24 & 0x80u) == 0)
  {
    v37 = v24;
  }

  else
  {
    v37 = size;
  }

  if ((v34 & 0x80u) == 0)
  {
    v38 = v34;
  }

  else
  {
    v38 = v33;
  }

  if (v37 >= v38)
  {
    *a5 = v32;
    *(a5 + 8) = v33;
    *(a5 + 16) = v48[0];
    *(a5 + 19) = *(v48 + 3);
    *(a5 + 23) = v35;
    v40 = v45;
    v41 = v46;
    v39 = v47;
  }

  else
  {
    *a5 = v45;
    *(a5 + 8) = size;
    *(a5 + 16) = v52[0];
    *(a5 + 19) = *(v52 + 3);
    *(a5 + 23) = v25;
    v39 = v47;
    if (v34 < 0)
    {
      operator delete(v32);
    }

    v36 = 0;
    v40 = 0;
    v41 = v46;
  }

  if ((v51 & 0x80000000) == 0)
  {
    if (!v36)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  operator delete(v50[0]);
  if (v36)
  {
LABEL_74:
    operator delete(v40);
  }

LABEL_75:
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

  operator delete(v41);
LABEL_77:
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_2702E4434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, int a11, int a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (v46 < 0)
  {
    operator delete(a9);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a12 < 0)
  {
    operator delete(a10);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(exception_object);
}

void UC::Exception::InternalCoderError::~InternalCoderError(std::exception *this)
{
  this->__vftable = &unk_28803D358;
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    operator delete(this[5].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28803D358;
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    operator delete(this[5].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete(v2);
}

void *UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForPathComponentEncodingType@<X0>(unsigned int a1@<W1>, void *a2@<X8>)
{
  if (a1 >= 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    UC::Exception::InternalCoderError::InternalCoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 0, "Unknown path component type", 27);
  }

  v2 = off_279E00758[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void UC::SUE::SegmentedURLEncoderImpl::_encodeSegmentedQueryComponent(std::string *this@<X1>, UC::SUE::UCSegmentedURLCoderProvider **a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = std::string::find(this, 61, 0);
  std::string::basic_string(&v61, this, 0, v8, &v41);
  std::string::basic_string(&v60, this, v8 + 1, 0xFFFFFFFFFFFFFFFFLL, &v41);
  if (a3)
  {
    v9 = "|";
  }

  else
  {
    v9 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(v58, v9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v61.__r_.__value_.__l.__data_, v58, v56);
  std::string::basic_string[abi:ne200100]<0>(&v41, "|");
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v61;
  }

  else
  {
    v10 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v61.__r_.__value_.__l.__size_;
  }

  v12 = std::string::insert(&v41, 0, v10, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v55 = v12->__r_.__value_.__r.__words[2];
  v54 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if ((v57 & 0x80u) == 0)
  {
    v14 = v56;
  }

  else
  {
    v14 = v56[0];
  }

  if ((v57 & 0x80u) == 0)
  {
    v15 = v57;
  }

  else
  {
    v15 = v56[1];
  }

  UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(v14, v15, &v53);
  UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*a2, &v41);
  v16 = v41.__r_.__value_.__r.__words[0];
  std::string::basic_string[abi:ne200100]<0>(__p, "?");
  (*(*v16 + 56))(&v50, v16, &v53, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v41.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41.__r_.__value_.__l.__size_);
  }

  if (v55 >= 0)
  {
    v17 = &v54;
  }

  else
  {
    v17 = v54;
  }

  if (v55 >= 0)
  {
    v18 = HIBYTE(v55);
  }

  else
  {
    v18 = *(&v54 + 1);
  }

  UC::SUE::SegmentedURLEncoderImpl::_tokenizeStringWithSingleCharacterSymbols(v17, v18, &v41);
  std::vector<std::string>::__vdeallocate(&v53);
  v53 = v41;
  memset(&v41, 0, sizeof(v41));
  v45 = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
  UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*a2, &v41);
  v19 = v41.__r_.__value_.__r.__words[0];
  std::string::basic_string[abi:ne200100]<0>(v43, "?");
  (*(*v19 + 56))(&v45, v19, &v53, v43);
  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v41.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41.__r_.__value_.__l.__size_);
  }

  v20 = v47;
  v21 = v46;
  v22 = v52;
  v23 = v51;
  std::string::basic_string[abi:ne200100]<0>(&v40, "=");
  if ((v20 & 0x80u) == 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = v21;
  }

  if ((v22 & 0x80u) == 0)
  {
    v25 = v22;
  }

  else
  {
    v25 = v23;
  }

  UC::SUE::SegmentedURLEncoderImpl::_encodeSegmentedPathOrQueryValueComponent(a2, 0, &v60.__r_.__value_.__l.__data_, &v40, a3, v24 - v25, &v41);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (HIDWORD(v41.__r_.__value_.__r.__words[0]) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (LODWORD(v41.__r_.__value_.__l.__data_) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v39, "01");
    if ((v42 & 0x80u) == 0)
    {
      v26 = &v41.__r_.__value_.__s.__data_[8];
    }

    else
    {
      v26 = v41.__r_.__value_.__l.__size_;
    }

    if ((v42 & 0x80u) == 0)
    {
      v27 = v42;
    }

    else
    {
      v27 = v41.__r_.__value_.__r.__words[2];
    }

    v28 = std::string::append(&v39, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if ((v52 & 0x80u) == 0)
    {
      v30 = &v50;
    }

    else
    {
      v30 = v50;
    }

    if ((v52 & 0x80u) == 0)
    {
      v31 = v52;
    }

    else
    {
      v31 = v51;
    }
  }

  else
  {
    UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForQueryComponentEncodingType(v41.__r_.__value_.__l.__data_, &v39);
    if ((v47 & 0x80u) == 0)
    {
      v32 = &v45;
    }

    else
    {
      v32 = v45;
    }

    if ((v47 & 0x80u) == 0)
    {
      v33 = v47;
    }

    else
    {
      v33 = v46;
    }

    v34 = std::string::append(&v39, v32, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if ((v42 & 0x80u) == 0)
    {
      v30 = &v41.__r_.__value_.__s.__data_[8];
    }

    else
    {
      v30 = v41.__r_.__value_.__l.__size_;
    }

    if ((v42 & 0x80u) == 0)
    {
      v31 = v42;
    }

    else
    {
      v31 = v41.__r_.__value_.__r.__words[2];
    }
  }

  v36 = std::string::append(&v40, v30, v31);
  v37 = v36->__r_.__value_.__l.__size_;
  *a4 = v36->__r_.__value_.__r.__words[0];
  *(a4 + 8) = v37;
  *(a4 + 15) = *(&v36->__r_.__value_.__r.__words[1] + 7);
  LOBYTE(v37) = *(&v36->__r_.__value_.__s + 23);
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
  *(a4 + 23) = v37;
  if (v38 < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41.__r_.__value_.__l.__size_);
  }

  if (v47 < 0)
  {
    operator delete(v45);
  }

  if (v52 < 0)
  {
    operator delete(v50);
  }

  v41.__r_.__value_.__r.__words[0] = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }
}

void sub_2702E4B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  a23 = &a53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a23);
  if (*(v53 - 169) < 0)
  {
    operator delete(*(v53 - 192));
  }

  if (*(v53 - 137) < 0)
  {
    operator delete(*(v53 - 160));
  }

  if (*(v53 - 113) < 0)
  {
    operator delete(*(v53 - 136));
  }

  if (*(v53 - 89) < 0)
  {
    operator delete(*(v53 - 112));
  }

  if (*(v53 - 65) < 0)
  {
    operator delete(*(v53 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_2702E4C54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  JUMPOUT(0x2702E4BECLL);
}

void sub_2702E4C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    JUMPOUT(0x2702E4C08);
  }

  JUMPOUT(0x2702E4C0CLL);
}

void *UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForQueryComponentEncodingType@<X0>(unsigned int a1@<W1>, void *a2@<X8>)
{
  if (a1 >= 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    UC::Exception::InternalCoderError::InternalCoderError(exception, "UCSegmentedURLCoderErrorDomain", 30, 0, "Unknown query component type", 28);
  }

  v2 = off_279E00790[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void UC::SUE::SegmentedURLEncoderImpl::_filterByComponentsToKeep(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1] - *a2;
  if (v3)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    do
    {
      v9 = (*a2 + v6);
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
        v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v12 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v6 += 24;
      --v8;
    }

    while (v8);
  }
}

void sub_2702E4E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t UC::SUE::SegmentedURLEncoderImpl::_pathAndQueryMatchPathWordBookAndAutoQueryTemplateFormat(UC::SUE::UCSegmentedURLCoderProvider **a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a3;
  v5 = *(a2 + 23);
  v6 = a2[1];
  if ((v5 & 0x80u) == 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v7 >= 2)
  {
    v8 = (v5 & 0x80u) == 0 ? a2 : *a2;
    if (*(v8 + v7 - 1) == 47)
    {
      return 0;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (v6 != 1)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      goto LABEL_22;
    }

    v9 = *a2;
    goto LABEL_14;
  }

  v9 = a2;
  if (v5 == 1)
  {
LABEL_14:
    if (*v9 != 47)
    {
      goto LABEL_18;
    }

    v10 = *(a3 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = a3[1];
    }

    if (v10)
    {
LABEL_18:
      v44 = 0;
      v45 = 0;
      v46 = 0;
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_23;
      }

LABEL_22:
      a2 = *a2;
      v5 = v6;
      goto LABEL_23;
    }

    return 0;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
LABEL_23:
  UC::SplitString(a2, v5, 0x2Fu, &v44);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  UC::SUE::SegmentedURLEncoderImpl::_filterByComponentsToKeep(v12, &v44, &v41);
  if (0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3) > 1)
  {
    goto LABEL_24;
  }

  if (v42 - v41 == 24)
  {
    UC::SUE::UCSegmentedURLCoderProvider::getKnownWordFixedLengthCoder(*a1, &v38);
    v14 = ((*v38)[3])(v38, v41);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v15 = *(v3 + 23);
  if ((v15 & 0x8000000000000000) == 0)
  {
    if (*(v3 + 23))
    {
      v16 = *(v3 + 23);
      goto LABEL_35;
    }

LABEL_38:
    v11 = 1;
    goto LABEL_25;
  }

  v16 = v3[1];
  if (!v16)
  {
    goto LABEL_38;
  }

LABEL_35:
  v17 = v16 - 1;
  if ((v15 & 0x80000000) != 0)
  {
    v18 = *v3;
    if (*(*v3 + v17) != 38)
    {
      v38 = 0;
      v39 = 0;
      v15 = v3[1];
      v3 = v18;
      goto LABEL_41;
    }

LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  if (*(v3 + v17) == 38)
  {
    goto LABEL_24;
  }

  v38 = 0;
  v39 = 0;
LABEL_41:
  v40 = 0;
  UC::SplitString(v3, v15, 0x26u, &v38);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  UC::SUE::SegmentedURLEncoderImpl::_filterByComponentsToKeep(v19, &v38, &v35);
  v20 = v35;
  v21 = v36;
  if (v35 == v36)
  {
LABEL_85:
    v11 = 1;
    goto LABEL_87;
  }

  v22 = 0;
  while (1)
  {
    v23 = std::string::find(v20, 61, 0);
    if (v23 == -1)
    {
      break;
    }

    v24 = v23;
    std::string::basic_string(&__str, v20, 0, v23, &v33);
    std::string::basic_string(&v33, v20, v24 + 1, 0xFFFFFFFFFFFFFFFFLL, &__p);
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_70;
      }

      p_str = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__str.__r_.__value_.__s + 23))
      {
        goto LABEL_70;
      }

      p_str = &__str;
    }

    if (p_str->__r_.__value_.__s.__data_[0] != 112)
    {
      goto LABEL_70;
    }

    if (!v22)
    {
      if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (__str.__r_.__value_.__l.__size_ == 1)
        {
          v28 = __str.__r_.__value_.__r.__words[0];
          goto LABEL_67;
        }
      }

      else if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 1)
      {
        v28 = &__str;
LABEL_67:
        if (v28->__r_.__value_.__s.__data_[0] == 112)
        {
          v30 = 3;
          v22 = 1;
          goto LABEL_71;
        }
      }

      v22 = 0;
LABEL_70:
      v30 = 1;
      goto LABEL_71;
    }

    std::string::basic_string(&__p, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v47);
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      if (!__p.__r_.__value_.__l.__size_)
      {
        v30 = 1;
LABEL_84:
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_71;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        goto LABEL_70;
      }

      p_p = &__p;
    }

    if ((UC::IsAllDigits(p_p, size) & 1) == 0)
    {
      goto LABEL_63;
    }

    v29 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &__p;
    }

    if (v29->__r_.__value_.__s.__data_[0] == 48)
    {
LABEL_63:
      v30 = 1;
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_84;
    }

    v31 = std::stoi(&__p, 0, 10);
    v30 = v22 != v31;
    if (v22 == v31)
    {
      ++v22;
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_84;
    }

LABEL_71:
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v30 != 3 && v30)
    {
      break;
    }

    if (++v20 == v21)
    {
      goto LABEL_85;
    }
  }

  v11 = 0;
LABEL_87:
  __str.__r_.__value_.__r.__words[0] = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  v35 = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
LABEL_25:
  v38 = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
  v41 = &v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  return v11;
}

void sub_2702E52B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t **a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  a21 = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a27 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  a30 = v31 - 104;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  *(v31 - 104) = v31 - 80;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v31 - 104));
  _Unwind_Resume(a1);
}

void UC::SUE::SegmentedURLEncoderImpl::_encodePathWordBookAndAutoQueryTemplateQueryComponent(std::string *this@<X1>, uint64_t a2@<X0>, int a3@<W2>, std::string *a4@<X8>)
{
  v8 = std::string::find(this, 61, 0);
  std::string::basic_string(&v16, this, v8 + 1, 0xFFFFFFFFFFFFFFFFLL, v13);
  std::string::basic_string[abi:ne200100]<0>(&__p, "=");
  UC::SUE::SegmentedURLEncoderImpl::_encodeSegmentedPathOrQueryValueComponent(a2, 0, &v16.__r_.__value_.__l.__data_, &__p, a3, 0, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v13[1] != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  UC::SUE::SegmentedURLEncoderImpl::_encodingBitsForQueryComponentEncodingType(v13[0], &__p);
  if ((v15 & 0x80u) == 0)
  {
    v9 = v14;
  }

  else
  {
    v9 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = v14[1];
  }

  v11 = std::string::append(&__p, v9, v10);
  *a4 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_2702E54B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v22 - 33) < 0)
  {
    operator delete(*(v22 - 56));
  }

  _Unwind_Resume(exception_object);
}

void *UC::SUE::SegmentedURLDecoderImpl::SegmentedURLDecoderImpl(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  v4 = operator new(8uLL);
  *v4 = &unk_28803D3C0;
  a1[2] = v4;
  return a1;
}

void sub_2702E5580(_Unwind_Exception *exception_object)
{
  *(v1 + 16) = 0;
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UC::SUE::SegmentedURLDecoderImpl::_decodeHostFormatType(UC::SUE::SegmentedURLDecoderImpl *this, UC::UCBitStream *a2)
{
  result = UC::UCBitStream::readNextBit(a2);
  if (result)
  {
    if (UC::UCBitStream::readNextBit(a2))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t UC::SUE::SegmentedURLDecoderImpl::_decodeQueryComponentEncodingType(UC::SUE::SegmentedURLDecoderImpl *this, UC::UCBitStream *a2)
{
  NextBit = UC::UCBitStream::readNextBit(a2);
  v4 = UC::UCBitStream::readNextBit(a2);
  if (!NextBit)
  {
    return v4 != 0;
  }

  if (v4)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    UC::Exception::InvalidDecodingInstruction::InvalidDecodingInstruction(exception, "11", 2, "Encountered an invalid instruction (11) for query component decoding.", 69);
  }

  return 2;
}

void UC::Exception::InvalidDecodingInstruction::~InvalidDecodingInstruction(std::exception *this)
{
  this->__vftable = &unk_28803D398;
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28803D398;
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete(v2);
}

void UC::SUE::SegmentedURLDecoderImpl::decodeURL(UC::SUE::UCSegmentedURLCoderProvider **this@<X0>, UC::UCBitStream *a2@<X1>, std::string *a3@<X8>)
{
  if (UC::UCBitStream::hasMore(a2))
  {
    NextBit = UC::UCBitStream::readNextBit(a2);
    v7 = UC::UCBitStream::readNextBit(a2);
    v8 = v7;
    v9 = UC::SUE::SegmentedURLDecoderImpl::_decodeHostFormatType(v7, a2);
    std::string::basic_string[abi:ne200100]<0>(a3, "https://");
    memset(&v35, 0, sizeof(v35));
    if (v8)
    {
      std::string::append(&v35, "appclip.");
    }

    if (v9 > 1)
    {
      UC::SUE::UCSegmentedURLCoderProvider::getHostCoder(*this, &v29);
      v10 = v29;
      std::string::basic_string[abi:ne200100]<0>(v23, "|");
      (*(*v10 + 48))(&__p, v10, a2, v23);
      if ((v34 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v34 & 0x80u) == 0)
      {
        v12 = v34;
      }

      else
      {
        v12 = v33;
      }

      std::string::append(&v35, p_p, v12);
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    else
    {
      if (v9)
      {
        UC::SUE::UCSegmentedURLCoderProvider::getTLDFixedLengthCoder(*this, &__p);
      }

      else
      {
        UC::SUE::UCSegmentedURLCoderProvider::getTLDCoder(*this, &__p);
      }

      v13 = __p;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      (*(*v13 + 56))(&__p, v13, a2);
      UC::SUE::UCSegmentedURLCoderProvider::getHostCoder(*this, &v27);
      v14 = v27;
      std::string::basic_string[abi:ne200100]<0>(v25, "|");
      (*(*v14 + 48))(&v29, v14, a2, v25);
      if ((v31 & 0x80u) == 0)
      {
        v15 = &v29;
      }

      else
      {
        v15 = v29;
      }

      if ((v31 & 0x80u) == 0)
      {
        v16 = v31;
      }

      else
      {
        v16 = v30;
      }

      std::string::append(&v35, v15, v16);
      if (v31 < 0)
      {
        operator delete(v29);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if ((v34 & 0x80u) == 0)
      {
        v17 = &__p;
      }

      else
      {
        v17 = __p;
      }

      if ((v34 & 0x80u) == 0)
      {
        v18 = v34;
      }

      else
      {
        v18 = v33;
      }

      std::string::append(&v35, v17, v18);
      if (v34 < 0)
      {
        operator delete(__p);
      }
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v35;
    }

    else
    {
      v19 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v19, size);
    if (UC::UCBitStream::hasMore(a2))
    {
      if (NextBit)
      {
        UC::SUE::SegmentedURLDecoderImpl::_decodeRestOfURLWithPathWordBookAndAutoQueryTemplateFormat(&__p, this, a2);
        if ((v34 & 0x80u) == 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p;
        }

        if ((v34 & 0x80u) == 0)
        {
          v22 = v34;
        }

        else
        {
          v22 = v33;
        }
      }

      else
      {
        UC::SUE::SegmentedURLDecoderImpl::_decodeRestOfURLWithNonTemplateFormat(this, a2, &__p);
        if ((v34 & 0x80u) == 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p;
        }

        if ((v34 & 0x80u) == 0)
        {
          v22 = v34;
        }

        else
        {
          v22 = v33;
        }
      }

      std::string::append(a3, v21, v22);
      if (v34 < 0)
      {
        operator delete(__p);
      }
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

void sub_2702E5A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 49) < 0)
  {
    operator delete(*(v36 - 72));
  }

  if (*(v35 + 23) < 0)
  {
    operator delete(*v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UC::SUE::SegmentedURLDecoderImpl::_decodeRestOfURLWithPathWordBookAndAutoQueryTemplateFormat(UC::SUE::SegmentedURLDecoderImpl *this, UC::UCBitStream *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  if (UC::UCBitStream::readNextBit(a2))
  {
    LOBYTE(__p) = 47;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &__p, 1);
LABEL_15:
    LOBYTE(__p) = 63;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &__p, 1);
    UC::SUE::SegmentedURLDecoderImpl::_decodeQueryStringComponentsForPathWordBookAndAutoQueryTemplate(&__p, this, a2);
    if ((v16 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v16 & 0x80u) == 0)
    {
      v9 = v16;
    }

    else
    {
      v9 = v15;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, p_p, v9);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    std::ostream::flush();
    goto LABEL_24;
  }

  LOBYTE(__p) = 47;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &__p, 1);
  UC::SUE::UCSegmentedURLCoderProvider::getKnownWordFixedLengthCoder(*this, &v12);
  (*(*v12 + 56))(&__p);
  if ((v16 & 0x80u) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (UC::UCBitStream::hasMore(a2))
  {
    if (!UC::UCBitStream::readNextBit(a2))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      UC::Exception::InvalidDecodingInstruction::InvalidDecodingInstruction(exception, "Encountered path indicator", 0x1AuLL, "Decoder encountered invalid instruction while decoding template query", 0x45uLL);
    }

    goto LABEL_15;
  }

LABEL_24:
  std::stringbuf::str();
  v17 = *MEMORY[0x277D82828];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x27439D8A0](&v21);
}

void sub_2702E5E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  std::ostringstream::~ostringstream(&a17);
  _Unwind_Resume(a1);
}

void UC::SUE::SegmentedURLDecoderImpl::_decodeRestOfURLWithNonTemplateFormat(UC::SUE::SegmentedURLDecoderImpl *this@<X0>, UC::UCBitStream *a2@<X1>, uint64_t a3@<X8>)
{
  if (UC::UCBitStream::readNextBit(a2))
  {

    UC::SUE::SegmentedURLDecoderImpl::_decodeSegmentedPathAndQuery(this, a2, a3);
  }

  else
  {

    UC::SUE::SegmentedURLDecoderImpl::_decodeCombinedPathAndQuery(this, a2, a3);
  }
}

void UC::SUE::SegmentedURLDecoderImpl::_decodeCombinedPathAndQuery(UC::SUE::UCSegmentedURLCoderProvider **this@<X0>, UC::UCBitStream *a2@<X1>, uint64_t a3@<X8>)
{
  UC::SUE::UCSegmentedURLCoderProvider::getCombinedPathAndQueryCoder(*this, &v9);
  v5 = v9;
  std::string::basic_string[abi:ne200100]<0>(__p, "|");
  (*(*v5 + 48))(v11, v5, a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (SHIBYTE(v12) < 0)
  {
    if (!v11[1])
    {
      goto LABEL_13;
    }

    v6 = *v11[0];
  }

  else
  {
    if (!HIBYTE(v12))
    {
      goto LABEL_13;
    }

    v6 = LOBYTE(v11[0]);
  }

  if (v6 == 47 || v6 == 35)
  {
    *a3 = *v11;
    *(a3 + 16) = v12;
    return;
  }

LABEL_13:
  std::operator+<char>();
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_2702E603C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void UC::SUE::SegmentedURLDecoderImpl::_decodeSegmentedPathAndQuery(UC::SUE::SegmentedURLDecoderImpl *this@<X0>, UC::UCBitStream *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = UC::SUE::SegmentedURLDecoderImpl::_decodeHostFormatType(this, a2);
  while (v6 <= 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    if (v6)
    {
      MEMORY[0x27439D6B0](__p, "/");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "");
      UC::SUE::SegmentedURLDecoderImpl::_decodePathValueDecodeEncodingType(this, a2, v18);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v20;
      v23 = v21;
      HIBYTE(v21) = 0;
      LOBYTE(v20[0]) = 0;
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }
    }

    if ((SHIBYTE(v23) & 0x8000000000000000) != 0)
    {
      if (__p[1] != 1)
      {
        goto LABEL_22;
      }

      v7 = __p[0];
    }

    else
    {
      if (SHIBYTE(v23) != 1)
      {
        goto LABEL_22;
      }

      v7 = __p;
    }

    if (*v7 != 47)
    {
LABEL_22:
      std::operator+<char>();
      if (v21 >= 0)
      {
        v10 = v20;
      }

      else
      {
        v10 = v20[0];
      }

      if (v21 >= 0)
      {
        v11 = HIBYTE(v21);
      }

      else
      {
        v11 = v20[1];
      }

      std::string::append(a3, v10, v11);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      goto LABEL_30;
    }

    if (v23 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if (v23 >= 0)
    {
      v9 = SHIBYTE(v23);
    }

    else
    {
      v9 = __p[1];
    }

    std::string::append(a3, v8, v9);
LABEL_30:
    hasMore = UC::UCBitStream::hasMore(a2);
    v13 = hasMore;
    if (hasMore)
    {
      v6 = UC::SUE::SegmentedURLDecoderImpl::_decodeHostFormatType(hasMore, a2);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
      if (!v13)
      {
        break;
      }
    }

    else if (!v13)
    {
      break;
    }
  }

  if (v6 == 2)
  {
    v14 = 0;
    while (UC::UCBitStream::hasMore(a2))
    {
      UC::SUE::SegmentedURLDecoderImpl::_decodeSegmentedQueryStringComponent(this, a2, __p);
      if (v14)
      {
        std::operator+<char>();
        if (v21 >= 0)
        {
          v15 = v20;
        }

        else
        {
          v15 = v20[0];
        }

        if (v21 >= 0)
        {
          v16 = HIBYTE(v21);
        }

        else
        {
          v16 = v20[1];
        }
      }

      else
      {
        v17 = *(a3 + 23);
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(a3 + 8);
        }

        if (v17)
        {
          std::operator+<char>();
          if (v21 >= 0)
          {
            v15 = v20;
          }

          else
          {
            v15 = v20[0];
          }

          if (v21 >= 0)
          {
            v16 = HIBYTE(v21);
          }

          else
          {
            v16 = v20[1];
          }
        }

        else
        {
          std::operator+<char>();
          if (v21 >= 0)
          {
            v15 = v20;
          }

          else
          {
            v15 = v20[0];
          }

          if (v21 >= 0)
          {
            v16 = HIBYTE(v21);
          }

          else
          {
            v16 = v20[1];
          }
        }
      }

      std::string::append(a3, v15, v16);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      --v14;
    }
  }
}

void sub_2702E6360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 + 23) < 0)
  {
    operator delete(*v26);
  }

  _Unwind_Resume(exception_object);
}

void UC::SUE::SegmentedURLDecoderImpl::_decodeSegmentedQueryStringComponent(UC::SUE::SegmentedURLDecoderImpl *this@<X0>, UC::UCBitStream *a2@<X1>, uint64_t a3@<X8>)
{
  ComponentEncodingType = UC::SUE::SegmentedURLDecoderImpl::_decodeQueryComponentEncodingType(this, a2);
  if (ComponentEncodingType == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "=");
    UC::SUE::SegmentedURLDecoderImpl::_decodeQueryValueWithEncodingType(this, a2, 1, &v30);
    if (v32 < 0)
    {
      operator delete(v30);
    }

    UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*this, &v25);
    v7 = v25.__r_.__value_.__r.__words[0];
    std::string::basic_string[abi:ne200100]<0>(v28, "?");
    std::string::basic_string[abi:ne200100]<0>(__p, "|");
    (*(*v7 + 64))(&v30, v7, a2, v28, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (v25.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25.__r_.__value_.__l.__size_);
    }

    if ((v32 & 0x80u) == 0)
    {
      v8 = v32;
    }

    else
    {
      v8 = v31;
    }

    v9 = &v25;
    std::string::basic_string[abi:ne200100](&v25, v8 + 1);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if ((v32 & 0x80u) == 0)
      {
        v10 = &v30;
      }

      else
      {
        v10 = v30;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 61;
    if ((v35 & 0x80u) == 0)
    {
      v11 = &v33;
    }

    else
    {
      v11 = v33;
    }

    if ((v35 & 0x80u) == 0)
    {
      v12 = v35;
    }

    else
    {
      v12 = v34;
    }

    v13 = std::string::append(&v25, v11, v12);
  }

  else
  {
    v14 = ComponentEncodingType;
    UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*this, &v30);
    v15 = v30;
    std::string::basic_string[abi:ne200100]<0>(v23, "?");
    std::string::basic_string[abi:ne200100]<0>(v21, "|");
    (*(*v15 + 64))(&v33, v15, a2, v23, v21);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    std::string::basic_string[abi:ne200100]<0>(&v25, "=");
    UC::SUE::SegmentedURLDecoderImpl::_decodeQueryValueWithEncodingType(this, a2, v14, &v25);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if ((v35 & 0x80u) == 0)
    {
      v16 = v35;
    }

    else
    {
      v16 = v34;
    }

    v17 = &v25;
    std::string::basic_string[abi:ne200100](&v25, v16 + 1);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v25.__r_.__value_.__r.__words[0];
    }

    if (v16)
    {
      if ((v35 & 0x80u) == 0)
      {
        v18 = &v33;
      }

      else
      {
        v18 = v33;
      }

      memmove(v17, v18, v16);
    }

    *(&v17->__r_.__value_.__l.__data_ + v16) = 61;
    if ((v32 & 0x80u) == 0)
    {
      v19 = &v30;
    }

    else
    {
      v19 = v30;
    }

    if ((v32 & 0x80u) == 0)
    {
      v20 = v32;
    }

    else
    {
      v20 = v31;
    }

    v13 = std::string::append(&v25, v19, v20);
  }

  *a3 = *&v13->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&v13->__r_.__value_.__l + 2);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(v30);
  }

  if (v35 < 0)
  {
    operator delete(v33);
  }
}

void sub_2702E672C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 81) < 0)
  {
    operator delete(*(v38 - 104));
  }

  if (*(v38 - 57) < 0)
  {
    operator delete(*(v38 - 80));
  }

  _Unwind_Resume(exception_object);
}

void UC::SUE::SegmentedURLDecoderImpl::_decodeQueryValueWithEncodingType(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQuery6BitAlphabetCoder(*a1, &v17);
    v6 = v17;
    std::string::basic_string[abi:ne200100]<0>(v10, "|");
    (*(*v6 + 48))(v6, a2, v10);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v7 = v10[0];
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    v5 = *(a1 + 16);
    std::string::basic_string[abi:ne200100]<0>(__p, "|");
    (*(*v5 + 48))(v5, a2, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*a1, &v17);
  v9 = v17;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
  }

  else
  {
    v16 = *a4;
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "|");
  (*(*v9 + 64))(v9, a2, &v16, v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = v16.__r_.__value_.__r.__words[0];
LABEL_14:
    operator delete(v7);
  }

LABEL_15:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_2702E69EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v32 = *(v30 - 40);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_2702E6A4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2702E6A44);
}

void UC::SUE::SegmentedURLDecoderImpl::_decodePathValueDecodeEncodingType(uint64_t a1, UC::UCBitStream *this, uint64_t a3)
{
  NextBit = UC::UCBitStream::readNextBit(this);
  v7 = UC::UCBitStream::readNextBit(this);
  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  if (NextBit)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7 != 0;
  }

  UC::SUE::SegmentedURLDecoderImpl::_decodePathValueWithEncodingType(a1, this, v9, a3);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_2702E6C30(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x27439D8A0](v1);
  _Unwind_Resume(a1);
}

uint64_t UC::SUE::SegmentedURLDecoderImpl::_decodeQueryStringComponentsForPathWordBookAndAutoQueryTemplate(UC::SUE::SegmentedURLDecoderImpl *this, UC::UCBitStream *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v4 = 0;
  while (UC::UCBitStream::hasMore(a2))
  {
    if (v4)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "&", 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "p", 1);
    if (v4)
    {
      MEMORY[0x27439D7F0](&v15, v4);
    }

    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "=", 1);
    v6 = std::string::basic_string[abi:ne200100]<0>(v11, "=");
    ComponentEncodingType = UC::SUE::SegmentedURLDecoderImpl::_decodeQueryComponentEncodingType(v6, a2);
    UC::SUE::SegmentedURLDecoderImpl::_decodeQueryValueWithEncodingType(this, a2, ComponentEncodingType, v11);
    if ((v14 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v9 = v14;
    }

    else
    {
      v9 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v8, v9);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    ++v4;
  }

  std::ostream::flush();
  std::stringbuf::str();
  v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x27439D8A0](&v19);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x27439D8A0](a1 + 112);
  return a1;
}

void UC::SUE::SegmentedURLDecoderImpl::_decodePathValueWithEncodingType(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      UC::SUE::UCSegmentedURLCoderProvider::getKnownWordFixedLengthCoder(*a1, &v17);
      (*(*v17 + 56))(v17, a2);
      goto LABEL_17;
    }

    UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQuery6BitAlphabetCoder(*a1, &v17);
    v7 = v17;
    std::string::basic_string[abi:ne200100]<0>(v10, "|");
    (*(*v7 + 48))(v7, a2, v10);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v8 = v10[0];
LABEL_16:
    operator delete(v8);
LABEL_17:
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    return;
  }

  if (!a3)
  {
    UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(*a1, &v17);
    v6 = v17;
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
    }

    else
    {
      v16 = *a4;
    }

    std::string::basic_string[abi:ne200100]<0>(v14, "|");
    (*(*v6 + 64))(v6, a2, &v16, v14);
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v8 = v16.__r_.__value_.__r.__words[0];
    goto LABEL_16;
  }

  v9 = *(a1 + 16);
  std::string::basic_string[abi:ne200100]<0>(__p, "|");
  (*(*v9 + 48))(v9, a2, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2702E720C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 40);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UC::Exception::CoderError::CoderError(uint64_t a1, void *__src, size_t __len, int a4, const void *a5, size_t a6, void *a7, size_t a8)
{
  *a1 = &unk_28803D300;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = a7;
  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (__len | 7) + 1;
    }

    v15 = operator new(v17);
    *(a1 + 16) = __len;
    *(a1 + 24) = v17 | 0x8000000000000000;
    *(a1 + 8) = v15;
    v10 = a7;
    goto LABEL_9;
  }

  *(a1 + 31) = __len;
  v15 = (a1 + 8);
  if (__len)
  {
LABEL_9:
    memmove(v15, __src, __len);
  }

  *(v15 + __len) = 0;
  *(a1 + 32) = a4;
  if (a6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a6 >= 0x17)
  {
    if ((a6 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (a6 | 7) + 1;
    }

    v18 = operator new(v19);
    *(a1 + 48) = a6;
    *(a1 + 56) = v19 | 0x8000000000000000;
    *(a1 + 40) = v18;
    goto LABEL_18;
  }

  *(a1 + 63) = a6;
  v18 = (a1 + 40);
  if (a6)
  {
LABEL_18:
    memmove(v18, a5, a6);
  }

  *(v18 + a6) = 0;
  if (a8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a8 >= 0x17)
  {
    if ((a8 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (a8 | 7) + 1;
    }

    v20 = operator new(v21);
    *(a1 + 72) = a8;
    *(a1 + 80) = v21 | 0x8000000000000000;
    *(a1 + 64) = v20;
  }

  else
  {
    v20 = (a1 + 64);
    *(a1 + 87) = a8;
    if (!a8)
    {
      goto LABEL_28;
    }
  }

  memmove(v20, v10, a8);
LABEL_28:
  *(v20 + a8) = 0;
  return a1;
}

void sub_2702E745C(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

uint64_t UC::Exception::CoderError::what(UC::Exception::CoderError *this)
{
  result = this + 64;
  if (*(this + 87) < 0)
  {
    return *result;
  }

  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void UC::SUE::UCSegmentedURLEncodingResult::~UCSegmentedURLEncodingResult(UC::SUE::UCSegmentedURLEncodingResult *this)
{
  v4 = *(this + 5);
  v2 = (this + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](v2, v3);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t UC::SUE::SegmentedURLEncoderImpl::SegmentedPathOrQueryValueEncodingResult::SegmentedPathOrQueryValueEncodingResult(uint64_t a1, unint64_t a2, __int128 *a3)
{
  *a1 = a2;
  v4 = (a1 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a3, *(a3 + 1));
    LODWORD(v5) = *(a1 + 4);
  }

  else
  {
    v5 = HIDWORD(a2);
    v6 = *a3;
    v4->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v4->__r_.__value_.__l.__data_ = v6;
  }

  *(a1 + 32) = v5 == 0;
  return a1;
}

uint64_t UC::Exception::InternalCoderError::InternalCoderError(uint64_t a1, void *__src, size_t __len, int a4, void *a5, size_t a6)
{
  *a1 = &unk_28803D358;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (__len | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 16) = __len;
    *(a1 + 24) = v13 | 0x8000000000000000;
    *(a1 + 8) = v12;
    goto LABEL_9;
  }

  *(a1 + 31) = __len;
  v12 = (a1 + 8);
  if (__len)
  {
LABEL_9:
    memmove(v12, __src, __len);
  }

  *(v12 + __len) = 0;
  *(a1 + 32) = a4;
  if (a6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a6 >= 0x17)
  {
    if ((a6 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (a6 | 7) + 1;
    }

    v14 = operator new(v15);
    *(a1 + 48) = a6;
    *(a1 + 56) = v15 | 0x8000000000000000;
    *(a1 + 40) = v14;
  }

  else
  {
    v14 = (a1 + 40);
    *(a1 + 63) = a6;
    if (!a6)
    {
      goto LABEL_19;
    }
  }

  memmove(v14, a5, a6);
LABEL_19:
  *(v14 + a6) = 0;
  return a1;
}

void sub_2702E7764(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

uint64_t UC::Exception::InternalCoderError::what(UC::Exception::InternalCoderError *this)
{
  result = this + 40;
  if (*(this + 63) < 0)
  {
    return *result;
  }

  return result;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
}

uint64_t UC::Exception::InvalidDecodingInstruction::InvalidDecodingInstruction(uint64_t a1, void *__src, size_t __len, void *a4, size_t a5)
{
  *a1 = &unk_28803D398;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (__len | 7) + 1;
    }

    v10 = operator new(v11);
    *(a1 + 16) = __len;
    *(a1 + 24) = v11 | 0x8000000000000000;
    *(a1 + 8) = v10;
    goto LABEL_9;
  }

  *(a1 + 31) = __len;
  v10 = (a1 + 8);
  if (__len)
  {
LABEL_9:
    memmove(v10, __src, __len);
  }

  *(v10 + __len) = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a5 >= 0x17)
  {
    if ((a5 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (a5 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 40) = a5;
    *(a1 + 48) = v13 | 0x8000000000000000;
    *(a1 + 32) = v12;
  }

  else
  {
    v12 = (a1 + 32);
    *(a1 + 55) = a5;
    if (!a5)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a4, a5);
LABEL_19:
  *(v12 + a5) = 0;
  return a1;
}

void sub_2702E79B4(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

uint64_t UC::Exception::InvalidDecodingInstruction::what(UC::Exception::InvalidDecodingInstruction *this)
{
  result = this + 32;
  if (*(this + 55) < 0)
  {
    return *result;
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18.__end_cap_.__value_ = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  begin = v7 + v2;
  v18.__first_ = v7;
  v18.__begin_ = begin;
  value = &v7[v6];
  v18.__end_ = begin;
  v18.__end_cap_.__value_ = value;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v18.__begin_;
    end = v18.__end_;
    value = v18.__end_cap_.__value_;
  }

  else
  {
    v10 = *a2;
    begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v10;
    end = v7 + v2;
  }

  v12 = end + 1;
  v13 = *(a1 + 8) - *a1;
  v14 = begin - v13;
  memcpy(begin - v13, *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = value;
  v18.__end_ = v15;
  v18.__end_cap_.__value_ = v16;
  v18.__first_ = v15;
  v18.__begin_ = v15;
  std::__split_buffer<std::string>::~__split_buffer(&v18);
  return v12;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_2702E7E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::string>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[24 * v4];
  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](int a1, void **__p)
{
  if (__p)
  {
    if (*(__p + 23) < 0)
    {
      operator delete(*__p);
    }

    operator delete(__p);
  }
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

__n128 std::__split_buffer<std::string>::emplace_back<std::string>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a1 + 24))
  {
    v5 = *(a1 + 8);
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      v10 = v9 >> 2;
      v11 = *(a1 + 32);
      v23.__end_cap_.__value_ = *(a1 + 32);
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v11, v9);
      v14 = &v12[24 * v10];
      v15 = *(a1 + 8);
      v16 = v15;
      v17 = v14;
      v18 = *(&v15 + 1) - v15;
      if (*(&v15 + 1) != v15)
      {
        v17 = &v14[v18];
        v19 = &v12[24 * v10];
        do
        {
          v20 = *v16;
          *(v19 + 2) = *(v16 + 2);
          *v19 = v20;
          v19 += 24;
          *(v16 + 1) = 0;
          *(v16 + 2) = 0;
          *v16 = 0;
          v16 = (v16 + 24);
          v18 -= 24;
        }

        while (v18);
        v15 = *(a1 + 8);
      }

      v23.__first_ = *a1;
      *a1 = v12;
      *(a1 + 8) = v14;
      *&v23.__begin_ = v15;
      v21 = *(a1 + 24);
      *(a1 + 16) = v17;
      *(a1 + 24) = &v12[24 * v13];
      v23.__end_cap_.__value_ = v21;
      std::__split_buffer<std::string>::~__split_buffer(&v23);
      v4 = *(a1 + 16);
    }

    else
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
      v7 = -3 * (v6 >> 1);
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v23, v5, v4, v5 - 24 * (v6 >> 1));
      v4 = v8;
      *(a1 + 8) += 8 * v7;
      *(a1 + 16) = v8;
    }
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(a1 + 16) += 24;
  return result;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    if ((a2 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (a2 | 7) + 1;
    }

    v5 = operator new(v4);
    *(a1 + 8) = a2;
    *(a1 + 16) = v4 | 0x8000000000000000;
    *a1 = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = a2;
  }

  return a1;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x27439D850](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2702E8414(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x27439D7C0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x27439D7D0](v13);
  return a1;
}

void sub_2702E8684(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x27439D7D0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2702E8664);
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
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2702E88A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UC::UCLEB128Coder::canEncode(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 1;
  }

  do
  {
    result = (*(*a1 + 24))(a1, v2);
    v2 += 24;
    if (result)
    {
      v6 = v2 == v3;
    }

    else
    {
      v6 = 1;
    }
  }

  while (!v6);
  return result;
}

uint64_t UC::UCLEB128Coder::canEncode(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      v4 = a2;
      goto LABEL_6;
    }

    return 0;
  }

  v3 = *(a2 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *a2;
LABEL_6:
  result = UC::IsAllDigits(v4, v3);
  if (result)
  {
    if (v3 == 1)
    {
      return 1;
    }

    result = 0;
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v3 <= 0x14 && *v6 != 48)
    {
      if (v3 != 20)
      {
        return 1;
      }

      v7 = 0;
      do
      {
        v8 = v6[v7];
        v9 = UC::UCLEB128Coder::canEncode(std::string const&)::maxNumber[v7];
        result = v8 <= v9;
      }

      while (v8 <= v9 && v7++ != 19);
    }
  }

  return result;
}

uint64_t UC::UCLEB128Coder::encode(uint64_t a1, const std::string *a2)
{
  if (((*(*a1 + 24))(a1) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    if (v21 >= 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = v20[0];
    }

    if (v21 >= 0)
    {
      v12 = HIBYTE(v21);
    }

    else
    {
      v12 = v20[1];
    }

    UC::Exception::InvalidEncodingInput::InvalidEncodingInput(exception, v11, v12);
  }

  v25 = 0;
  std::istringstream::basic_istringstream[abi:ne200100](v20, a2, 8);
  MEMORY[0x27439D7A0](v20, &v25);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v3 = v25;
  do
  {
    v25 = v3 >> 7;
    if (v3 > 0x7F)
    {
      LOBYTE(__p[0]) = 49;
    }

    else
    {
      LOBYTE(__p[0]) = 48;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, __p, 1);
    v4 = 0;
    v14 = 7;
    strcpy(__p, "0000000");
    v5 = 6;
    do
    {
      if (((v3 & 0x7F) >> v4))
      {
        if (v14 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *(v6 + v5) = 49;
      }

      ++v4;
      --v5;
    }

    while (v4 != 7);
    if (v14 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (v14 >= 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v7, v8);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = v25;
  }

  while (v25);
  std::ostream::flush();
  std::stringbuf::str();
  v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  MEMORY[0x27439D8A0](&v19);
  v20[0] = *MEMORY[0x277D82820];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::istream::~istream();
  return MEMORY[0x27439D8A0](&v24);
}

void sub_2702E8DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
    if ((v55 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v55)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v54);
  goto LABEL_6;
}

void UC::Exception::InvalidEncodingInput::~InvalidEncodingInput(std::exception *this)
{
  this->__vftable = &unk_28803D408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28803D408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete(v2);
}

{
  this->__vftable = &unk_28803D408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_2702E9020(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x27439D8A0](v1);
  _Unwind_Resume(a1);
}

void UC::UCLEB128Coder::encode(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      (*(*a1 + 32))(__p, a1, v3);
      if ((v10 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v10 & 0x80u) == 0)
      {
        v8 = v10;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a3, v7, v8);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 24;
    }

    while (v3 != v4);
  }
}

void sub_2702E9108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UC::UCLEB128Coder::decode(int a1, UC::UCBitStream *this)
{
  v3 = 0;
  v4 = 0;
  do
  {
    NextBit = UC::UCBitStream::readNextBit(this);
    v6 = 0;
    v7 = 0;
    do
    {
      v7 = UC::UCBitStream::readNextBit(this) | (2 * v7);
    }

    while (v6++ < 6);
    v4 |= v7 << (7 * v3++);
  }

  while (NextBit);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  MEMORY[0x27439D800](&v10, v4);
  std::stringbuf::str();
  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x27439D8A0](&v14);
}

void sub_2702E92F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t UC::Exception::InvalidEncodingInput::InvalidEncodingInput(uint64_t a1, void *__src, size_t __len)
{
  *a1 = &unk_28803D408;
  v4 = (a1 + 8);
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v4 = operator new(v7);
    *(a1 + 16) = __len;
    *(a1 + 24) = v7 | 0x8000000000000000;
    *(a1 + 8) = v4;
  }

  else
  {
    *(a1 + 31) = __len;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memmove(v4, __src, __len);
LABEL_10:
  *(v4 + __len) = 0;
  return a1;
}

uint64_t UC::Exception::InvalidEncodingInput::what(UC::Exception::InvalidEncodingInput *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x27439D850](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2702E962C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t UC::UCHuffmanTreeNode::UCHuffmanTreeNode(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = a3;
  return a1;
}

void sub_2702E96B0(_Unwind_Exception *a1)
{
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v1 + 1, 0);
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

uint64_t UC::UCHuffmanTreeNode::UCHuffmanTreeNode(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, __int128 *a5)
{
  v7 = *a2;
  *a2 = 0;
  *a1 = v7;
  v8 = *a3;
  *a3 = 0;
  *(a1 + 8) = v8;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    *(a1 + 32) = *(a5 + 2);
    *(a1 + 16) = v9;
  }

  *(a1 + 40) = a4;
  return a1;
}

void sub_2702E974C(_Unwind_Exception *a1)
{
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void *UC::UCHuffmanCoder::UCHuffmanCoder(void *a1, void **a2)
{
  *a1 = &unk_28803D430;
  a1[1] = 0;
  a1[2] = 0;
  v3 = a1 + 2;
  v4 = *a2;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = &v34;
  UC::UCMultiContextSymbolFrequencyTrie::getOrderedSymbols(v4, &v28);
  v5 = *v28;
  v6 = v28[1];
  while (v5 != v6)
  {
    FrequencyForSymbol = UC::UCSymbolFrequencyTable::getFrequencyForSymbol(v4, v5);
    v8 = operator new(0x30uLL);
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *v5, *(v5 + 8));
    }

    else
    {
      v9 = *v5;
      v35.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&v35.__r_.__value_.__l.__data_ = v9;
    }

    UC::UCHuffmanTreeNode::UCHuffmanTreeNode(v8, &v35, FrequencyForSymbol);
    v27 = v8;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v10 = operator new(8uLL);
    v11 = v27;
    v26 = v10;
    v27 = 0;
    v35.__r_.__value_.__r.__words[0] = 0;
    *v10 = v11;
    std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&v35, 0);
    std::priority_queue<std::unique_ptr<UCHuffmanNodeWrapper>,std::vector<std::unique_ptr<UCHuffmanNodeWrapper>>,createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0>::push(&v30, &v26);
    v12 = v26;
    if (v26)
    {
      std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v26, 0);
      operator delete(v12);
    }

    std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&v27, 0);
    v5 += 24;
  }

  v13 = v30;
  if ((v31 - v30) >= 9)
  {
    do
    {
      v14 = *v13;
      v15 = *v14;
      *v14 = 0;
      v27 = v15;
      std::priority_queue<std::unique_ptr<UCHuffmanNodeWrapper>,std::vector<std::unique_ptr<UCHuffmanNodeWrapper>>,createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0>::pop(&v30);
      v16 = **v30;
      **v30 = 0;
      v26 = v16;
      std::priority_queue<std::unique_ptr<UCHuffmanNodeWrapper>,std::vector<std::unique_ptr<UCHuffmanNodeWrapper>>,createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0>::pop(&v30);
      LODWORD(v35.__r_.__value_.__l.__data_) = *(v26 + 10) + v27[10];
      std::make_unique[abi:ne200100]<UC::UCHuffmanTreeNode,std::unique_ptr<UC::UCHuffmanTreeNode>,std::unique_ptr<UC::UCHuffmanTreeNode>,unsigned int,char const(&)[1],0>(&v27, &v26, &v35, "", &v25);
      v17 = operator new(8uLL);
      v18 = v25;
      v24 = v17;
      v25 = 0;
      v35.__r_.__value_.__r.__words[0] = 0;
      *v17 = v18;
      std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&v35, 0);
      std::priority_queue<std::unique_ptr<UCHuffmanNodeWrapper>,std::vector<std::unique_ptr<UCHuffmanNodeWrapper>>,createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0>::push(&v30, &v24);
      v19 = v24;
      if (v24)
      {
        std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v24, 0);
        operator delete(v19);
      }

      std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&v25, 0);
      std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&v26, 0);
      std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&v27, 0);
      v13 = v30;
    }

    while ((v31 - v30) > 8);
  }

  v20 = *v13;
  v21 = *v20;
  *v20 = 0;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v35.__r_.__value_.__r.__words[0] = &v30;
  std::vector<std::unique_ptr<UCHuffmanNodeWrapper>>::__destroy_vector::operator()[abi:ne200100](&v35);
  v23 = 0;
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v3, v21);
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&v23, 0);
  return a1;
}

void sub_2702E9A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, char *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  a23 = &a25;
  std::vector<std::unique_ptr<UCHuffmanNodeWrapper>>::__destroy_vector::operator()[abi:ne200100](&a23);
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v35, 0);
  std::unique_ptr<std::unordered_map<std::string,std::string>>::reset[abi:ne200100](v36, 0);
  _Unwind_Resume(a1);
}

void UC::UCHuffmanCoder::_initilizeSymbolToCodeMap(uint64_t **this)
{
  v1 = (this + 1);
  if (!this[1])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    _generateSymbolToCodeMapHelper(v3, &__p, this[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::unique_ptr<std::unordered_map<std::string,std::string>>::reset[abi:ne200100](v1, v3);
  }
}

void sub_2702E9B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void _generateSymbolToCodeMapHelper(uint64_t a1, std::string *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a3;
  if (*a3)
  {
    std::string::push_back(a2, 48);
    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, v4->__r_.__value_.__l.__data_, v4->__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = *v4;
    }

    _generateSymbolToCodeMapHelper(a1, &v15, v6);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v8 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
    if (v8 < 0)
    {
      v10 = v4->__r_.__value_.__r.__words[0];
      v9 = v4->__r_.__value_.__l.__size_ - 1;
      v4->__r_.__value_.__l.__size_ = v9;
    }

    else
    {
      v9 = v8 - 1;
      *(&v4->__r_.__value_.__s + 23) = v9 & 0x7F;
      v10 = v4;
    }

    v10->__r_.__value_.__s.__data_[v9] = 0;
    v7 = a3[1];
    if (v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = a3[1];
    if (v7)
    {
LABEL_14:
      std::string::push_back(v4, 49);
      if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v4->__r_.__value_.__l.__data_, v4->__r_.__value_.__l.__size_);
      }

      else
      {
        __p = *v4;
      }

      _generateSymbolToCodeMapHelper(a1, &__p, v7);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
      if (v11 < 0)
      {
        v12 = v4->__r_.__value_.__l.__size_ - 1;
        v4->__r_.__value_.__l.__size_ = v12;
        v4 = v4->__r_.__value_.__r.__words[0];
      }

      else
      {
        v12 = v11 - 1;
        *(&v4->__r_.__value_.__s + 23) = v12 & 0x7F;
      }

      v4->__r_.__value_.__s.__data_[v12] = 0;
      return;
    }

    if (*(a3 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, a3[2], a3[3]);
    }

    else
    {
      v16 = *(a3 + 2);
    }

    v17 = &v16;
    v13 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v16.__r_.__value_.__l.__data_, &std::piecewise_construct, &v17);
    std::string::operator=((v13 + 5), v4);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2702E9D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void UC::UCHuffmanCoder::encode(uint64_t **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  UC::UCHuffmanCoder::_initilizeSymbolToCodeMap(a1);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1[1], a2);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v11 = exception;
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

    UC::Exception::UnsupportedEncodingSymbol::UnsupportedEncodingSymbol(exception, v13, v14, "Huffman coder encountered an unsupported symbol", 47);
  }

  if (*(v6 + 63) < 0)
  {
    v8 = v6[5];
    v9 = v6[6];

    std::string::__init_copy_ctor_external(a3, v8, v9);
  }

  else
  {
    v7 = *(v6 + 5);
    a3->__r_.__value_.__r.__words[2] = v6[7];
    *&a3->__r_.__value_.__l.__data_ = v7;
  }
}

void UC::Exception::UnsupportedEncodingSymbol::~UnsupportedEncodingSymbol(std::exception *this)
{
  this->__vftable = &unk_28803D498;
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  this->__vftable = &unk_28803D408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28803D498;
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  this->__vftable = &unk_28803D408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete(v2);
}

void UC::UCHuffmanCoder::encode(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      (*(*a1 + 32))(__p, a1, v3);
      if ((v10 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v10 & 0x80u) == 0)
      {
        v8 = v10;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a3, v7, v8);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 24;
    }

    while (v3 != v4);
  }
}

void sub_2702E9FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void UC::UCHuffmanCoder::decode(UC::UCBitStream *this@<X1>, uint64_t a2@<X0>, const void **a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  while (UC::UCBitStream::hasMore(this))
  {
    (*(*a2 + 56))(__p, a2, this);
    v8 = v16;
    v9 = *(a3 + 23);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = a3[1];
    }

    if ((v16 & 0x80u) == 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = __p[1];
    }

    if ((v16 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v11 == v9 && (v10 >= 0 ? (v13 = a3) : (v13 = *a3), !memcmp(v12, v13, v11)))
    {
      v14 = 0;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_17;
      }

LABEL_20:
      operator delete(__p[0]);
      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      std::string::append(a4, v12, v11);
      v14 = 1;
      if ((v16 & 0x80) != 0)
      {
        goto LABEL_20;
      }

LABEL_17:
      if ((v14 & 1) == 0)
      {
        return;
      }
    }
  }
}

void sub_2702EA140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UC::UCHuffmanCoder::canEncode(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 1;
  }

  do
  {
    result = (*(*a1 + 24))(a1, v2);
    v2 += 24;
    if (result)
    {
      v6 = v2 == v3;
    }

    else
    {
      v6 = 1;
    }
  }

  while (!v6);
  return result;
}

void UC::UCHuffmanCoder::decodeNextSymbol(UC::UCHuffmanCoder *this@<X0>, UC::UCBitStream *a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(this + 2);
  if (!UC::UCBitStream::hasMore(a2))
  {
LABEL_5:
    exception = __cxa_allocate_exception(0x38uLL);
    UC::Exception::InvalidDecodingSymbolInstruction::InvalidDecodingSymbolInstruction(exception, "", 0, "Huffman decoder encountered an invalid symbol instruction. The encoding bit stream is invalid", 93);
  }

  while (1)
  {
    v5 = *(v5 + 8 * (UC::UCBitStream::readNextBit(a2) != 0));
    if (!*v5 && !*(v5 + 8))
    {
      break;
    }

    if (!UC::UCBitStream::hasMore(a2))
    {
      goto LABEL_5;
    }
  }

  if (*(v5 + 39) < 0)
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    std::string::__init_copy_ctor_external(a3, v8, v9);
  }

  else
  {
    v7 = *(v5 + 16);
    a3->__r_.__value_.__r.__words[2] = *(v5 + 32);
    *&a3->__r_.__value_.__l.__data_ = v7;
  }
}

void UC::Exception::InvalidDecodingSymbolInstruction::~InvalidDecodingSymbolInstruction(std::exception *this)
{
  this->__vftable = &unk_28803D4C0;
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28803D4C0;
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete(v2);
}

void UC::UCHuffmanCoder::~UCHuffmanCoder(UC::UCHuffmanCoder *this)
{
  *this = &unk_28803D430;
  v1 = (this + 8);
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](this + 2, 0);
  std::unique_ptr<std::unordered_map<std::string,std::string>>::reset[abi:ne200100](v1, 0);
}

{
  *this = &unk_28803D430;
  v2 = (this + 8);
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](this + 2, 0);
  std::unique_ptr<std::unordered_map<std::string,std::string>>::reset[abi:ne200100](v2, 0);

  operator delete(this);
}

void std::priority_queue<std::unique_ptr<UCHuffmanNodeWrapper>,std::vector<std::unique_ptr<UCHuffmanNodeWrapper>>,createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0>::push(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = *a1;
    v9 = v5 - *a1;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v23[4] = a1;
    if (v14)
    {
      v15 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<UCHuffmanNodeWrapper>>>(a1, v14);
      v14 = v16;
      v8 = *a1;
      v9 = a1[1] - *a1;
    }

    else
    {
      v15 = 0;
    }

    v17 = &v15[8 * v10];
    v18 = &v15[8 * v14];
    v19 = *a2;
    *a2 = 0;
    v20 = &v17[-8 * (v9 >> 3)];
    *v17 = v19;
    v7 = (v17 + 8);
    memcpy(v20, v8, v9);
    v21 = *a1;
    *a1 = v20;
    a1[1] = v7;
    v22 = a1[2];
    a1[2] = v18;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    std::__split_buffer<std::unique_ptr<UCHuffmanNodeWrapper>>::~__split_buffer(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = (v5 + 1);
  }

  a1[1] = v7;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0 &,std::__wrap_iter<std::unique_ptr<UCHuffmanNodeWrapper> *>>(*a1, v7, (v7 - *a1) >> 3);
}

void std::priority_queue<std::unique_ptr<UCHuffmanNodeWrapper>,std::vector<std::unique_ptr<UCHuffmanNodeWrapper>>,createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0>::pop(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 3;
  if (v4 >= 2)
  {
    v5 = 0;
    v6 = *v2;
    *v2 = 0;
    v16 = v6;
    v7 = v2;
    do
    {
      v8 = &v7[v5 + 1];
      v9 = (2 * v5) | 1;
      v10 = 2 * v5 + 2;
      if (v10 < v4)
      {
        v11 = createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0::operator()(&v7[v5 + 1], &v7[v5 + 2]);
        v12 = v11 ? 8 : 0;
        v8 = (v8 + v12);
        if (v11)
        {
          v9 = v10;
        }
      }

      v13 = *v8;
      *v8 = 0;
      std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100](v7, v13);
      v7 = v8;
      v5 = v9;
    }

    while (v9 <= ((v4 - 2) >> 1));
    v14 = (v3 - 8);
    if (v8 == (v3 - 8))
    {
      std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100](v8, v16);
    }

    else
    {
      v15 = *v14;
      *v14 = 0;
      std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100](v8, v15);
      std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100]((v3 - 8), v16);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0 &,std::__wrap_iter<std::unique_ptr<UCHuffmanNodeWrapper> *>>(v2, (v8 + 1), v8 + 1 - v2);
    }

    v3 = *(a1 + 8);
  }

  std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100]((v3 - 8), 0);
  *(a1 + 8) = v3 - 8;
}

void sub_2702EA6C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::make_unique[abi:ne200100]<UC::UCHuffmanTreeNode,std::unique_ptr<UC::UCHuffmanTreeNode>,std::unique_ptr<UC::UCHuffmanTreeNode>,unsigned int,char const(&)[1],0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  v11 = *a1;
  *a1 = 0;
  v12 = *a2;
  *a2 = 0;
  v15 = v12;
  v16 = v11;
  LODWORD(a3) = *a3;
  std::string::basic_string[abi:ne200100]<0>(__p, a4);
  UC::UCHuffmanTreeNode::UCHuffmanTreeNode(v10, &v16, &v15, a3, __p);
  *a5 = v10;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&v15, 0);
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&v16, 0);
}

void sub_2702EA79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&a16, 0);
  std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](&a17, 0);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<UCHuffmanNodeWrapper>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

uint64_t std::__split_buffer<std::unique_ptr<UCHuffmanNodeWrapper>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0 &,std::__wrap_iter<std::unique_ptr<UCHuffmanNodeWrapper> *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 8 * (v3 >> 1));
    v7 = (a2 - 8);
    if (createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0::operator()(v6, (a2 - 8)))
    {
      v8 = *v7;
      *v7 = 0;
      v11 = v8;
      do
      {
        v9 = v6;
        v10 = *v6;
        *v6 = 0;
        std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100](v7, v10);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 8 * v5);
        v7 = v9;
      }

      while (createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0::operator()(v6, &v11));
      std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100](v9, v8);
    }
  }
}

void sub_2702EA918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

BOOL createHuffmanTree(UC::UCSymbolFrequencyTable const&)::$_0::operator()(uint64_t ***a1, uint64_t ***a2)
{
  v2 = **a1;
  v3 = *(v2 + 10);
  v4 = **a2;
  v5 = *(v4 + 10);
  if (v3 == v5)
  {
    do
    {
      do
      {
        v7 = v2;
        v2 = *v2;
      }

      while (v2);
    }

    while (v7[1]);
    if (*(v7 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v7[2], v7[3]);
      v4 = **a2;
    }

    else
    {
      v22 = *(v7 + 2);
    }

    do
    {
      do
      {
        v9 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    while (v9[1]);
    if (*(v9 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v9[2], v9[3]);
    }

    else
    {
      v21 = *(v9 + 2);
    }

    v10 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
    v11 = v21.__r_.__value_.__r.__words[0];
    v12 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v22;
    }

    else
    {
      v14 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v21.__r_.__value_.__l.__size_;
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v21;
    }

    else
    {
      v16 = v21.__r_.__value_.__r.__words[0];
    }

    if (v15 >= size)
    {
      v17 = size;
    }

    else
    {
      v17 = v15;
    }

    v18 = memcmp(v14, v16, v17);
    if (size < v15)
    {
      v19 = -1;
    }

    else
    {
      v19 = v15 < size;
    }

    if (v18)
    {
      v19 = v18;
    }

    v8 = v19 > 0;
    if (v10 < 0)
    {
      operator delete(v11);
      if ((*(&v22.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        return v8;
      }
    }

    else if ((v12 & 0x80) == 0)
    {
      return v8;
    }

    operator delete(v22.__r_.__value_.__l.__data_);
    return v8;
  }

  return v3 > v5;
}

void sub_2702EAA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v2, 0);

    operator delete(v2);
  }
}

void std::vector<std::unique_ptr<UCHuffmanNodeWrapper>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<UCHuffmanNodeWrapper>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  v27[0] = 0;
  ++*(a1 + 24);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v27);
  return i;
}

void sub_2702EADEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  v9 = v8;
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 16), *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    *(v8 + 4) = *(v10 + 2);
    *(v8 + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  v9[7] = 0;
  *(a4 + 16) = 1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v4 = operator new(8 * a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 16;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *a1;
            if (!*(*a1 + 8 * v12))
            {
              v13[v12] = v7;
              goto LABEL_24;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_24:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    *(a1 + 8) = 0;
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t UC::Exception::UnsupportedEncodingSymbol::UnsupportedEncodingSymbol(uint64_t a1, const void *a2, size_t a3, void *__src, size_t __len)
{
  v8 = UC::Exception::InvalidEncodingInput::InvalidEncodingInput(a1, __src, __len);
  *v8 = &unk_28803D498;
  v9 = v8 + 4;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0x17)
  {
    if ((a3 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (a3 | 7) + 1;
    }

    v9 = operator new(v10);
    *(a1 + 40) = a3;
    *(a1 + 48) = v10 | 0x8000000000000000;
    *(a1 + 32) = v9;
  }

  else
  {
    *(a1 + 55) = a3;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  memmove(v9, a2, a3);
LABEL_10:
  *(v9 + a3) = 0;
  return a1;
}

uint64_t UC::Exception::InvalidDecodingSymbolInstruction::InvalidDecodingSymbolInstruction(uint64_t a1, void *__src, size_t __len, void *a4, size_t a5)
{
  *a1 = &unk_28803D4C0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (__len | 7) + 1;
    }

    v10 = operator new(v11);
    *(a1 + 16) = __len;
    *(a1 + 24) = v11 | 0x8000000000000000;
    *(a1 + 8) = v10;
    goto LABEL_9;
  }

  *(a1 + 31) = __len;
  v10 = (a1 + 8);
  if (__len)
  {
LABEL_9:
    memmove(v10, __src, __len);
  }

  *(v10 + __len) = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a5 >= 0x17)
  {
    if ((a5 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (a5 | 7) + 1;
    }

    v12 = operator new(v13);
    *(a1 + 40) = a5;
    *(a1 + 48) = v13 | 0x8000000000000000;
    *(a1 + 32) = v12;
  }

  else
  {
    v12 = (a1 + 32);
    *(a1 + 55) = a5;
    if (!a5)
    {
      goto LABEL_19;
    }
  }

  memmove(v12, a4, a5);
LABEL_19:
  *(v12 + a5) = 0;
  return a1;
}

void sub_2702EB9C4(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

uint64_t UC::Exception::InvalidDecodingSymbolInstruction::what(UC::Exception::InvalidDecodingSymbolInstruction *this)
{
  result = this + 32;
  if (*(this + 55) < 0)
  {
    return *result;
  }

  return result;
}

void std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v2 + 8, 0);
    std::unique_ptr<UC::UCHuffmanTreeNode>::reset[abi:ne200100](v2, 0);

    operator delete(v2);
  }
}

void std::unique_ptr<std::unordered_map<std::string,std::string>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v3);

    operator delete(v4);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

std::string *UC::SUE::UCSegmentedURLCoderProvider::UCSegmentedURLCoderProvider(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v9;
  }

  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  *&this[4].__r_.__value_.__r.__words[1] = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  return this;
}

void sub_2702EBD78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void UC::SUE::UCSegmentedURLCoderProvider::clearCaches(UC::SUE::UCSegmentedURLCoderProvider *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    UC::UCMultiContextHuffmanCoder::clearCaches(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    UC::UCMultiContextHuffmanCoder::clearCaches(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {

    UC::UCMultiContextHuffmanCoder::clearCaches(v4);
  }
}

uint64_t UC::SUE::UCSegmentedURLCoderProvider::getTLDCoder@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v67 = *MEMORY[0x277D85DE8];
  v4 = *(this + 72);
  if (v4)
  {
    v5 = *(this + 80);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v17, ".com");
    LOWORD(v18) = -2;
    std::string::basic_string[abi:ne200100]<0>(&v19, ".org");
    v21 = 9974;
    std::string::basic_string[abi:ne200100]<0>(&v22, ".net");
    v24 = 5990;
    std::string::basic_string[abi:ne200100]<0>(v25, ".de");
    LOWORD(v26) = 4451;
    std::string::basic_string[abi:ne200100]<0>(&v27, ".ru");
    v29 = 4077;
    std::string::basic_string[abi:ne200100]<0>(&v30, ".cn");
    v32 = 3255;
    std::string::basic_string[abi:ne200100]<0>(v33, ".uk");
    LOWORD(v34) = 3206;
    std::string::basic_string[abi:ne200100]<0>(&v35, ".jp");
    v37 = 2274;
    std::string::basic_string[abi:ne200100]<0>(&v38, ".it");
    v40 = 1580;
    std::string::basic_string[abi:ne200100]<0>(v41, ".fr");
    LOWORD(v42) = 1437;
    std::string::basic_string[abi:ne200100]<0>(&v43, ".nl");
    v45 = 1432;
    std::string::basic_string[abi:ne200100]<0>(&v46, ".au");
    v48 = 1299;
    std::string::basic_string[abi:ne200100]<0>(v49, ".br");
    LOWORD(v50) = 1197;
    std::string::basic_string[abi:ne200100]<0>(&v51, ".ca");
    v53 = 1154;
    std::string::basic_string[abi:ne200100]<0>(&v54, ".info");
    v56 = 1097;
    std::string::basic_string[abi:ne200100]<0>(&v57, ".in");
    v58 = 981;
    std::string::basic_string[abi:ne200100]<0>(v59, ".edu");
    v60 = 961;
    std::string::basic_string[abi:ne200100]<0>(v61, ".us");
    v62 = 865;
    std::string::basic_string[abi:ne200100]<0>(v63, ".pl");
    v64 = 850;
    std::string::basic_string[abi:ne200100]<0>(v65, ".ga");
    v66 = 838;
    std::unordered_map<std::string,unsigned short>::unordered_map(v16, &v17, 20);
    v6 = 640;
    do
    {
      if (v16[v6 + 39] < 0)
      {
        operator delete(*&v16[v6 + 16]);
      }

      v6 -= 32;
    }

    while (v6);
    std::string::basic_string[abi:ne200100]<0>(&v17, ".com");
    std::string::basic_string[abi:ne200100]<0>(&v18, ".org");
    std::string::basic_string[abi:ne200100]<0>(&v20, ".net");
    std::string::basic_string[abi:ne200100]<0>(&v23, ".de");
    std::string::basic_string[abi:ne200100]<0>(v25, ".ru");
    std::string::basic_string[abi:ne200100]<0>(&v26, ".cn");
    std::string::basic_string[abi:ne200100]<0>(&v28, ".uk");
    std::string::basic_string[abi:ne200100]<0>(&v31, ".jp");
    std::string::basic_string[abi:ne200100]<0>(v33, ".it");
    std::string::basic_string[abi:ne200100]<0>(&v34, ".fr");
    std::string::basic_string[abi:ne200100]<0>(&v36, ".nl");
    std::string::basic_string[abi:ne200100]<0>(&v39, ".au");
    std::string::basic_string[abi:ne200100]<0>(v41, ".br");
    std::string::basic_string[abi:ne200100]<0>(&v42, ".ca");
    std::string::basic_string[abi:ne200100]<0>(&v44, ".info");
    std::string::basic_string[abi:ne200100]<0>(&v47, ".in");
    std::string::basic_string[abi:ne200100]<0>(v49, ".edu");
    std::string::basic_string[abi:ne200100]<0>(&v50, ".us");
    std::string::basic_string[abi:ne200100]<0>(&v52, ".pl");
    std::string::basic_string[abi:ne200100]<0>(&v55, ".ga");
    memset(&v15, 0, sizeof(v15));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v15, &v17, &v57, 0x14uLL);
    v7 = 480;
    do
    {
      if (*(&v17 + v7 - 1) < 0)
      {
        operator delete(*&v16[v7 + 24]);
      }

      v7 -= 24;
    }

    while (v7);
    std::allocate_shared[abi:ne200100]<std::unordered_map<std::string,unsigned short>,std::allocator<std::unordered_map<std::string,unsigned short>>,std::unordered_map<std::string,unsigned short>&,0>(v16, &v17);
    std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string>&,0>(&v15, &v12);
    std::allocate_shared[abi:ne200100]<UC::UCSymbolFrequencyTable,std::allocator<UC::UCSymbolFrequencyTable>,std::shared_ptr<std::unordered_map<std::string,unsigned short>> &,std::shared_ptr<std::vector<std::string>>,0>(&v17, &v12, &v13);
    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }

    std::allocate_shared[abi:ne200100]<UC::UCHuffmanCoder,std::allocator<UC::UCHuffmanCoder>,std::shared_ptr<UC::UCSymbolFrequencyTable> &,0>(&v13, &v12);
    v8 = *(&v12 + 1);
    v9 = v12;
    v12 = 0uLL;
    v10 = *(v2 + 80);
    *(v2 + 72) = __PAIR128__(v8, v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
      }

      v8 = *(v2 + 80);
    }

    *a2 = *(v2 + 72);
    a2[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (*(&v17 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
    }

    *&v17 = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
    this = std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(v16);
  }

  v11 = *MEMORY[0x277D85DE8];
  return this;
}