void wis::asString(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  ctu::hex(*a1);
  v4 = std::string::insert(&v22, 0, "Trigger(cid=0x");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v23, ", trid=0x");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  ctu::hex(a1[1]);
  if ((v21 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v24, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v25, ", sid=");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, a1[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v26, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v27, ")");
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_2982D7A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982D7AEC(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_2982DE7D0();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_2982D7BDC(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (a2 < 0x80)
  {
    LOBYTE(v4) = a2;
  }

  else
  {
    do
    {
      v7 = v2 | 0x80;
      sub_2982D7AEC(a1, &v7);
      v4 = v2 >> 7;
      v5 = v2 >> 14;
      v2 >>= 7;
    }

    while (v5);
  }

  v6 = v4;
  sub_2982D7AEC(a1, &v6);
}

void wis::createTagForProtobuf(wis *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2982D7BDC(a3, (8 * this) | 2);
  sub_2982D7BDC(a3, a2);
}

void sub_2982D7C94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sMetricToXpcTransform(uint64_t *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v6 = xpc_null_create();
  if (!a2 || !a3)
  {
    v9 = xpc_null_create();
    goto LABEL_26;
  }

  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  wis::GetProtobufTag(a2, a3, v25);
  v16[0] = 0;
  v16[1] = a2 + v25[0];
  v16[2] = a2 + v25[0] + a3 - LODWORD(v25[0]);
  v17 = a3 - LODWORD(v25[0]);
  v18 = 0;
  v19 = 0;
  v20 = a3 - LODWORD(v25[0]);
  v21 = xmmword_298304740;
  v22 = *MEMORY[0x29EDC9750];
  v23 = 0;
  v24 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C287EE0](v7) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  if (v8)
  {
    xpc_retain(v8);
    v10 = v8;
  }

  else
  {
    v10 = xpc_null_create();
  }

  v11 = a1[1];
  v29 = *a1;
  v30 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v26;
  if (v10)
  {
    xpc_retain(v10);
    object = v10;
    v13 = v10;
  }

  else
  {
    v13 = xpc_null_create();
    object = v13;
    if (!v13)
    {
      v13 = 0;
      object = xpc_null_create();
      goto LABEL_19;
    }
  }

  xpc_retain(v13);
LABEL_19:
  xpc_release(v13);
  MetricFileMetadataHelper::MetricFileMetadataHelper(&v32, &v29, v12);
  if (v30)
  {
    sub_2982D89F4(v30);
  }

  xpc_release(v10);
  do
  {
    v27 = 0uLL;
    v28 = 0xFFFFFFFFLL;
    sub_2982D8DA4(v16, &v27, &object);
  }

  while ((v19 & 1) == 0);
  sub_2982DDC40(&v34);
  if (v33)
  {
    sub_2982D89F4(v33);
  }

  xpc_release(object);
  v14 = xpc_null_create();
  xpc_release(v14);
  MEMORY[0x29C2877D0](v16);
  v9 = v6;
  v6 = v8;
LABEL_26:
  xpc_release(v9);
  return v6;
}

void sub_2982D7EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object)
{
  xpc_release(v28);
  MEMORY[0x29C2877D0](&a9);
  xpc_release(v27);
  _Unwind_Resume(a1);
}

uint64_t wis::GetProtobufTag@<X0>(uint64_t this@<X0>, const unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (this)
  {
    v4 = this;
    v8 = this;
    v6 = sub_2982D80A8(&v8, &a2[this]);
    if ((v6 & 7) != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C2879E0](exception, &unk_29830425A);
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    *(a3 + 4) = v6 >> 3;
    this = sub_2982D80A8(&v8, &a2[v4]);
    *a3 = (v8 - v4);
    a3[1] = this;
  }

  return this;
}

void sub_2982D8060(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_free_exception(v17);
  __cxa_begin_catch(a1);
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;

  __cxa_end_catch();
}

uint64_t sub_2982D80A8(void *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 != a2)
  {
    while (*v3 < 0)
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }
  }

  if (v3 == a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C2879E0](exception, &unk_29830425A);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *a1 = v3 + 1;
  v4 = *v3 & 0x7F;
  if (v3 == v2)
  {
    return *v3 & 0x7F;
  }

  do
  {
    v5 = *--v3;
    result = v5 & 0x7F | (v4 << 7);
    v4 = v5 & 0x7F | (v4 << 7);
  }

  while (v3 != v2);
  return result;
}

uint64_t MetricFileMetadataHelper::getMetadataForComponent(MetricFileMetadataHelper *this, unsigned int a2)
{
  v10 = a2;
  v3 = sub_2982D83F4(this + 5, &v10);
  if (v3)
  {
    return v3[3];
  }

  MetricFileMetadataHelper::createMetadataForComponent(this, v10, &v9);
  if (!v9)
  {
    operator new();
  }

  v11 = &v10;
  v5 = sub_2982D854C(this + 5, &v10);
  v6 = *(&v9 + 1);
  v4 = v9;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v5[4];
  v5[3] = v4;
  v5[4] = v6;
  if (v7)
  {
    sub_2982D89F4(v7);
    v4 = v9;
  }

  if (*(&v9 + 1))
  {
    sub_2982D89F4(*(&v9 + 1));
  }

  return v4;
}

void sub_2982D8290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2982D89F4(a10);
  }

  _Unwind_Resume(exception_object);
}

void MetricFileMetadataHelper::createMetadataForComponent(WISMetadataLoader **this@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *this;
  if (a2)
  {
    WISMetadataLoader::loadComponentMetadata(v3, a2, a3);
  }

  else
  {
    WISMetadataLoader::loadMetricFileMetadata(v3, a3);
  }
}

void MetricFileMetadataHelper::MetricFileMetadataHelper(MetricFileMetadataHelper *this, void *a2)
{
  v3 = a2[1];
  *this = *a2;
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0xFFFFFFFFLL;
  *(this + 2) = MetricFileMetadataHelper::getMetadataForComponent(this, 0);
  MetricFileMetadataHelper::setupMetricFileSentinel(this);
}

void sub_2982D8344(_Unwind_Exception *a1)
{
  sub_2982DDC40(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_2982D89F4(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t MetricFileMetadataHelper::MetricFileMetadataHelper(uint64_t a1, void *a2, unsigned int a3)
{
  MetricFileMetadataHelper::MetricFileMetadataHelper(a1, a2);
  *(v5 + 16) = *(v5 + 80);
  *(v5 + 32) = *(v5 + 96);
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(v5, &v8, a3, &v10);
  v6 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v6;
  return a1;
}

{
  MetricFileMetadataHelper::MetricFileMetadataHelper(a1, a2);
  *(v5 + 16) = *(v5 + 80);
  *(v5 + 32) = *(v5 + 96);
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(v5, &v8, a3, &v10);
  v6 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v6;
  return a1;
}

uint64_t *sub_2982D83F4(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void WISMetadataLoader::loadMetricFileMetadata(WISMetadataLoader *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = *this;
    (*(**this + 16))(&v9);
    v6 = v9;
    v9 = 0uLL;
    v7 = *(this + 3);
    *(this + 1) = v6;
    if (v7)
    {
      sub_2982D89F4(v7);
      if (*(&v9 + 1))
      {
        sub_2982D89F4(*(&v9 + 1));
      }
    }

    v4 = *(this + 2);
  }

  v8 = *(this + 3);
  *a2 = v4;
  a2[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t *sub_2982D854C(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2982D87A0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2982DE79C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2982D8904(uint64_t a1, size_t __n)
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

      sub_2982D87A0(a1, prime);
    }
  }
}

void sub_2982D89F4(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

double MetricFileMetadataHelper::resolveSubfieldInMetricHandle@<D0>(MetricFileMetadataHelper *a1@<X0>, __n128 *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *a2;
  v10 = a2[1].n128_i64[0];
  MetadataHelper::resolveSubfieldInHandle(a1, &v9, a3, v11);
  if (*&v11[24] || *v11 != *(a1 + 5))
  {
    result = *v11;
    v8 = *&v11[16];
    *a4 = *v11;
    *(a4 + 16) = v8;
  }

  else
  {
    *v11 = MetricFileMetadataHelper::getMetadataForComponent(a1, HIWORD(a3));
    *&v11[8] = xmmword_298305350;
    v9 = *v11;
    v10 = 0xFFFFFFFFLL;
    *&result = MetadataHelper::resolveSubfieldInHandle(a1, &v9, a3, a4).n128_u64[0];
  }

  return result;
}

__n128 MetadataHelper::resolveSubfieldInHandle@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  v25 = *a2;
  v26 = a2[1].n128_u64[0];
  MetadataHelper::descendIntoMessage(a1, &v25, &v27);
  *a2 = v27;
  a2[1].n128_u64[0] = 0xFFFFFFFFLL;
  v7 = a2->n128_u64[0];
  if (!a2->n128_u64[0])
  {
    goto LABEL_18;
  }

  v8 = a2->n128_u64[1];
  v10 = v7 + 32;
  v9 = *(v7 + 32);
  if (v8 >= (*(v10 + 8) - v9) >> 3)
  {
    goto LABEL_18;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  if (v13 != v12)
  {
    v14 = v13 - v12;
    v13 = v12;
    do
    {
      v15 = v14 >> 1;
      v16 = &v13[v14 >> 1];
      v18 = *v16;
      v17 = v16 + 1;
      v14 += ~(v14 >> 1);
      if (*(v18 + 40) <= a3)
      {
        v13 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
  }

  if (v13 != v12 && ((v21 = *(v13 - 1), v19 = v13 - 1, v20 = v21, v22 = *(v21 + 40), v22 == a3) || (v22 < a3 ? (v23 = (*(v20 + 52) & 8) == 0) : (v23 = 1), !v23 && *(v20 + 28) > a3)))
  {
    a2[1].n128_u64[0] = v19 - v12;
  }

  else
  {
LABEL_18:
    v20 = 0;
  }

  result = *a2;
  *a4 = *a2;
  a4[1].n128_u64[0] = a2[1].n128_u64[0];
  a4[1].n128_u64[1] = v20;
  return result;
}

double MetricFileMetadataHelper::setupMetricFileSentinel(__n128 *this)
{
  v4 = this[5];
  v5 = this[6].n128_u64[0];
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(this, &v4, 0xFu, &v6);
  v2 = v7;
  v5 = v7;
  v4 = v6;
  this[5] = v6;
  this[6].n128_u64[0] = v2;
  v4 = this[5];
  v5 = v2;
  MetadataHelper::descendIntoMessage(this, &v4, &v6);
  result = v6.n128_f64[0];
  this[5] = v6;
  this[6].n128_u64[0] = v7;
  return result;
}

__n128 MetadataHelper::descendIntoMessage@<Q0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a2)
  {
    v5 = *(a1 + 16);
    *(a2 + 2) = *(a1 + 32);
    *a2 = v5;
  }

  if (*(a2 + 2) != 0xFFFFFFFFLL)
  {
    Field = MetadataHandle::getField(a2);
    if (Field)
    {
      *(a2 + 1) = *(Field + 20);
    }

    *(a2 + 2) = 0xFFFFFFFFLL;
  }

  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 2);
  return result;
}

uint64_t MetadataHandle::getField(MetadataHandle *this)
{
  v1 = *(this + 2);
  if (v1 != 0xFFFFFFFF && (v2 = *this) != 0 && (v3 = *(this + 1), v5 = v2 + 32, v4 = *(v2 + 32), v3 < (*(v5 + 8) - v4) >> 3) && (v6 = *(v4 + 8 * v3)) != 0 && (v8 = v6 + 8, v7 = *(v6 + 8), v1 < (*(v8 + 8) - v7) >> 3))
  {
    return *(v7 + 8 * v1);
  }

  else
  {
    return 0;
  }
}

void sub_2982D8DA4(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if ((*(this + 36) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
      goto LABEL_54;
    }

    return;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v114 = *a2;
  v115 = a2[1].n128_u64[0];
  MetricFileMetadataHelper::getSubfieldType((a3 + 8), &v114, HIDWORD(v8), &v103);
  v114 = v103;
  v115 = v104;
  BuiltinType = MetadataHelper::getBuiltinType(a3 + 8, &v114);
  v12 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      v100 = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v100) & 1) == 0)
          {
            if (!v10 && (*(this + 36) & 1) != 0)
            {
              return;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v100) & 1) == 0)
            {
              if (!v10 && (*(this + 36) & 1) != 0)
              {
                return;
              }

LABEL_12:
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
              goto LABEL_54;
            }
          }

          else
          {
            v100 = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_93;
      }

      if (v9 == 2)
      {
        if (!v10 && (*(this + 36) & 1) != 0)
        {
          return;
        }
      }

      else
      {
        if (v9 != 5)
        {
LABEL_93:
          v29 = v100;
          switch(v12)
          {
            case 1:
            case 15:
              v34 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode(v100);
              *v107 = *a2;
              v108 = a2[1].n128_u64[0];
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              v31 = sub_2982DC788(a3, &v114, v10);
              v32 = xpc_null_create();
              if (v12 != 11)
              {
                if (v12 == 12)
                {
                  sub_2982DE1A4(v34 != 0.0, &object);
                  v35 = object.n128_u64[0];
                  object.n128_u64[0] = v32;
                  xpc_release(v32);
                  object.n128_u64[0] = 0;
                  v32 = v35;
                }

LABEL_193:
                if (MEMORY[0x29C287EE0](v32) == MEMORY[0x29EDCAA40])
                {
                  sub_2982F6AC0(&v105, v34);
                  v61 = v105;
                  *&v105 = v32;
                  xpc_release(v32);
                  *&v105 = 0;
                  v32 = v61;
                }

                __p = v32;
                if (!v32)
                {
LABEL_187:
                  __p = xpc_null_create();
                  goto LABEL_188;
                }

LABEL_186:
                xpc_retain(v32);
LABEL_188:
                v114 = *v107;
                v115 = v108;
                v59 = sub_2982DCCD8(a3, &v114, v10);
                sub_2982DCD54(a3, v31, &__p, v59);
                xpc_release(__p);
                __p = 0;
                xpc_release(v32);
                return;
              }

              object = *v107;
              v112 = v108;
              sub_2982DD334(a3, &object, v10, v34, &v114);
              if (SHIBYTE(v115) < 0)
              {
                if (!*(&v114 + 1))
                {
LABEL_192:
                  operator delete(v114);
                  goto LABEL_193;
                }

                v56 = v114;
              }

              else
              {
                if (!HIBYTE(v115))
                {
                  goto LABEL_193;
                }

                v56 = &v114;
              }

              sub_2982DD478(v56, &object);
              v60 = object.n128_u64[0];
              object.n128_u64[0] = v32;
              xpc_release(v32);
              object.n128_u64[0] = 0;
              v32 = v60;
              if ((SHIBYTE(v115) & 0x80000000) == 0)
              {
                goto LABEL_193;
              }

              goto LABEL_192;
            case 2:
            case 16:
              v30 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode(v100);
              *v107 = *a2;
              v108 = a2[1].n128_u64[0];
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              v31 = sub_2982DC788(a3, &v114, v10);
              v32 = xpc_null_create();
              if (v12 != 11)
              {
                if (v12 == 12)
                {
                  sub_2982DE1A4(v30 != 0.0, &object);
                  v33 = object.n128_u64[0];
                  object.n128_u64[0] = v32;
                  xpc_release(v32);
                  object.n128_u64[0] = 0;
                  v32 = v33;
                }

LABEL_183:
                if (MEMORY[0x29C287EE0](v32) == MEMORY[0x29EDCAA40])
                {
                  sub_2982F6AFC(&v105, v30);
                  v58 = v105;
                  *&v105 = v32;
                  xpc_release(v32);
                  *&v105 = 0;
                  v32 = v58;
                }

                __p = v32;
                if (!v32)
                {
                  goto LABEL_187;
                }

                goto LABEL_186;
              }

              object = *v107;
              v112 = v108;
              sub_2982DD334(a3, &object, v10, v30, &v114);
              if (SHIBYTE(v115) < 0)
              {
                if (!*(&v114 + 1))
                {
LABEL_182:
                  operator delete(v114);
                  goto LABEL_183;
                }

                v55 = v114;
              }

              else
              {
                if (!HIBYTE(v115))
                {
                  goto LABEL_183;
                }

                v55 = &v114;
              }

              sub_2982DD478(v55, &object);
              v57 = object.n128_u64[0];
              object.n128_u64[0] = v32;
              xpc_release(v32);
              object.n128_u64[0] = 0;
              v32 = v57;
              if ((SHIBYTE(v115) & 0x80000000) == 0)
              {
                goto LABEL_183;
              }

              goto LABEL_182;
            case 3:
            case 11:
            case 17:
            case 25:
              object.n128_u64[0] = v100;
              goto LABEL_105;
            case 4:
            case 10:
            case 18:
            case 24:
              object.n128_u64[0] = v100;
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              sub_2982DCA54(a3, &object, &v114, v10, v12);
              return;
            case 5:
            case 19:
              object.n128_u64[0] = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode(v100);
LABEL_105:
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              sub_2982DD0F0(a3, &object, &v114, v10, v12);
              return;
            case 6:
            case 20:
              object.n128_u32[0] = v100;
              goto LABEL_107;
            case 7:
            case 9:
            case 21:
            case 23:
              object.n128_u32[0] = v100;
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              sub_2982DD5E0(a3, &object, &v114, v10, v12);
              return;
            case 8:
            case 22:
              object.n128_u32[0] = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode(v100);
LABEL_107:
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              sub_2982DD864(a3, &object, &v114, v10, v12);
              return;
            case 12:
            case 26:
              object = *a2;
              v112 = a2[1].n128_u64[0];
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              v36 = sub_2982DC788(a3, &v114, v10);
              v37 = xpc_null_create();
              if (v12 == 12)
              {
                sub_2982DE1A4(v29 != 0, v107);
                v38 = *v107;
                *v107 = v37;
                xpc_release(v37);
                *v107 = 0;
                v37 = v38;
              }

              if (MEMORY[0x29C287EE0](v37) == MEMORY[0x29EDCAA40])
              {
                sub_2982DDAA8(v29 != 0, &v105);
                v39 = v105;
                *&v105 = v37;
                xpc_release(v37);
                *&v105 = 0;
                v37 = v39;
              }

              __p = v37;
              if (v37)
              {
                xpc_retain(v37);
              }

              else
              {
                __p = xpc_null_create();
              }

              v114 = object;
              v115 = v112;
              v54 = sub_2982DCCD8(a3, &v114, v10);
              sub_2982DCD54(a3, v36, &__p, v54);
              xpc_release(__p);
              __p = 0;
              xpc_release(v37);
              return;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C2879E0](exception, "This should never happen, no matter what the input!");
              goto LABEL_54;
          }
        }

        LODWORD(v114) = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v114))
        {
          v100 = v114;
          goto LABEL_93;
        }

        if (!v10 && (*(this + 36) & 1) != 0)
        {
          return;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
LABEL_54:
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      v107[0] = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v107))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v107[0] = *v24;
        *(this + 1) = v24 + 1;
      }

      v114 = 0uLL;
      v115 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        object = *a2;
        v112 = a2[1].n128_u64[0];
        sub_2982DD4C8(a3, &v114, &object, v10);
      }

      if ((SHIBYTE(v115) & 0x80000000) == 0)
      {
        goto LABEL_160;
      }

      v50 = v114;
      goto LABEL_159;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        *&v114 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v114))
        {
          goto LABEL_51;
        }
      }

      else
      {
        *&v114 = 0;
        if (!sub_2982E3C28(this, &v114))
        {
          goto LABEL_51;
        }
      }

      v40 = v114;
LABEL_166:
      sub_2982F56FC(a3, v40, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      LODWORD(v114) = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v114))
      {
        goto LABEL_51;
      }

      v40 = v114;
      goto LABEL_166;
    }

    object.n128_u32[0] = 0;
    if (!sub_2982E3C54(this, &object))
    {
      goto LABEL_51;
    }

    sub_2982DE234(&v114, object.n128_u32[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v114);
    if (String)
    {
      sub_2982F57FC(a3, v114, *(&v114 + 1) - v114, v10);
    }

LABEL_157:
    v50 = v114;
    if (!v114)
    {
      goto LABEL_160;
    }

    *(&v114 + 1) = v114;
LABEL_159:
    operator delete(v50);
LABEL_160:
    if ((String & 1) == 0)
    {
      goto LABEL_51;
    }

    return;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_51;
      }

      LODWORD(__p) = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__p))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(__p) = *v25;
        *(this + 1) = v25 + 1;
      }

      *v107 = this;
      v107[2] = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      ++*(this + 14);
      *&v105 = this;
      v114 = *a2;
      v115 = a2[1].n128_u64[0];
      object = v103;
      v112 = v104;
      sub_2982DC80C(a3, this, &v114, v10, &object);
      sub_2982DDBD0(&v105);
      v51 = *(this + 14);
      v52 = __OFSUB__(v51, 1);
      v53 = v51 - 1;
      if (v53 < 0 == v52)
      {
        *(this + 14) = v53;
      }

      sub_2982DDC0C(v107);
      return;
    }

    v107[0] = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || (v28 = *v27, (v28 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v107))
      {
        goto LABEL_51;
      }

      v28 = v107[0];
    }

    else
    {
      v107[0] = *v27;
      *(this + 1) = v27 + 1;
    }

    sub_2982DE234(&v114, v28);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v114);
    if (String)
    {
      object = *a2;
      v112 = a2[1].n128_u64[0];
      sub_2982DE2A8(a3, &v114, &object, v10);
    }

    goto LABEL_157;
  }

  v102 = 0;
  v16 = *(this + 1);
  if (v16 >= *(this + 2) || *v16 < 0)
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
    {
      goto LABEL_51;
    }
  }

  else
  {
    v102 = *v16;
    *(this + 1) = v16 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType(v14);
  WireTypeForType = wis::reflect::getWireTypeForType(UnpackedType);
  v100 = this;
  v101 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  __p = 0;
  v98 = 0;
  v99 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
        {
          if (v14 <= 20)
          {
            if (v14 <= 17)
            {
              if (v14 != 15)
              {
                if (v14 != 16)
                {
                  if (v14 == 17)
                  {
                    goto LABEL_136;
                  }

                  goto LABEL_262;
                }

                sub_2982E5C4C(&__p, v107);
                v105 = *a2;
                v106 = a2[1].n128_u64[0];
                v114 = *a2;
                v115 = a2[1].n128_u64[0];
                v46 = sub_2982DC788(a3, &v114, v10);
                v47 = xpc_array_create(0, 0);
                if (v47 || (v47 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C287EE0](v47) == MEMORY[0x29EDCA9E0])
                  {
                    xpc_retain(v47);
                    v43 = v47;
                  }

                  else
                  {
                    v43 = xpc_null_create();
                  }
                }

                else
                {
                  v43 = xpc_null_create();
                  v47 = 0;
                }

                v95 = v46;
                xpc_release(v47);
                v81 = *v107;
                v82 = *&v107[2];
                if (*v107 != *&v107[2])
                {
                  v83 = MEMORY[0x29EDCAA40];
                  do
                  {
                    v84 = *v81;
                    v85 = xpc_null_create();
                    if (UnpackedType != 11)
                    {
                      if (UnpackedType == 12)
                      {
                        sub_2982DE1A4(v84 != 0.0, &v113);
                        v86 = v113;
                        v113 = v85;
                        xpc_release(v85);
                        v113 = 0;
                        v85 = v86;
                      }

                      goto LABEL_254;
                    }

                    object = v105;
                    v112 = v106;
                    sub_2982DD334(a3, &object, v10, v84, &v114);
                    if (SHIBYTE(v115) < 0)
                    {
                      if (!*(&v114 + 1))
                      {
                        goto LABEL_253;
                      }

                      v87 = v114;
                    }

                    else
                    {
                      if (!HIBYTE(v115))
                      {
                        goto LABEL_254;
                      }

                      v87 = &v114;
                    }

                    sub_2982DD478(v87, &v110);
                    v88 = v110;
                    v110 = v85;
                    xpc_release(v85);
                    v110 = 0;
                    v85 = v88;
                    if (SHIBYTE(v115) < 0)
                    {
LABEL_253:
                      operator delete(v114);
                    }

LABEL_254:
                    if (MEMORY[0x29C287EE0](v85) == v83)
                    {
                      sub_2982F6AFC(&v109, v84);
                      v89 = v109;
                      v109 = v85;
                      xpc_release(v85);
                      v109 = 0;
                      v85 = v89;
                    }

                    xpc_array_append_value(v43, v85);
                    xpc_release(v85);
                    ++v81;
                  }

                  while (v81 != v82);
                }

                object.n128_u64[0] = v43;
                if (v43)
                {
                  goto LABEL_258;
                }

                goto LABEL_259;
              }

              sub_2982E580C(&__p, v107);
              v105 = *a2;
              v106 = a2[1].n128_u64[0];
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              v41 = sub_2982DC788(a3, &v114, v10);
              v42 = xpc_array_create(0, 0);
              if (v42 || (v42 = xpc_null_create()) != 0)
              {
                if (MEMORY[0x29C287EE0](v42) == MEMORY[0x29EDCA9E0])
                {
                  xpc_retain(v42);
                  v43 = v42;
                }

                else
                {
                  v43 = xpc_null_create();
                }
              }

              else
              {
                v43 = xpc_null_create();
                v42 = 0;
              }

              v95 = v41;
              xpc_release(v42);
              v62 = *v107;
              v63 = *&v107[2];
              if (*v107 == *&v107[2])
              {
LABEL_213:
                object.n128_u64[0] = v43;
                if (v43)
                {
LABEL_258:
                  xpc_retain(v43);
                  v90 = v95;
LABEL_260:
                  v114 = v105;
                  v115 = v106;
                  v91 = sub_2982DCCD8(a3, &v114, v10);
                  sub_2982DCD54(a3, v90, &object, v91);
                  xpc_release(object.n128_u64[0]);
                  object.n128_u64[0] = 0;
                  xpc_release(v43);
                  v48 = *v107;
                  if (!*v107)
                  {
                    goto LABEL_140;
                  }

                  *&v107[2] = *v107;
                  goto LABEL_139;
                }

LABEL_259:
                v90 = v95;
                object.n128_u64[0] = xpc_null_create();
                goto LABEL_260;
              }

              v64 = MEMORY[0x29EDCAA40];
              while (1)
              {
                v65 = *v62;
                v66 = xpc_null_create();
                if (UnpackedType != 11)
                {
                  if (UnpackedType == 12)
                  {
                    sub_2982DE1A4(v65 != 0.0, &v113);
                    v67 = v113;
                    v113 = v66;
                    xpc_release(v66);
                    v113 = 0;
                    v66 = v67;
                  }

                  goto LABEL_210;
                }

                object = v105;
                v112 = v106;
                sub_2982DD334(a3, &object, v10, v65, &v114);
                if (SHIBYTE(v115) < 0)
                {
                  if (!*(&v114 + 1))
                  {
                    goto LABEL_209;
                  }

                  v68 = v114;
                }

                else
                {
                  if (!HIBYTE(v115))
                  {
                    goto LABEL_210;
                  }

                  v68 = &v114;
                }

                sub_2982DD478(v68, &v110);
                v69 = v110;
                v110 = v66;
                xpc_release(v66);
                v110 = 0;
                v66 = v69;
                if (SHIBYTE(v115) < 0)
                {
LABEL_209:
                  operator delete(v114);
                }

LABEL_210:
                if (MEMORY[0x29C287EE0](v66) == v64)
                {
                  sub_2982F6AC0(&v109, v65);
                  v70 = v109;
                  v109 = v66;
                  xpc_release(v66);
                  v109 = 0;
                  v66 = v70;
                }

                xpc_array_append_value(v43, v66);
                xpc_release(v66);
                if (++v62 == v63)
                {
                  goto LABEL_213;
                }
              }
            }

            if (v14 != 18)
            {
              if (v14 == 19)
              {
                sub_2982E6110(&__p, &v114);
                object = *a2;
                v112 = a2[1].n128_u64[0];
                sub_2982F5EEC(a3, &v114, &object, v10, UnpackedType);
              }

              else
              {
                sub_2982E5B14(&__p, &v114);
                object = *a2;
                v112 = a2[1].n128_u64[0];
                sub_2982F61F8(a3, &v114, &object, v10, UnpackedType);
              }

              goto LABEL_137;
            }

LABEL_80:
            sub_2982E578C(&__p, &v114);
            object = *a2;
            v112 = a2[1].n128_u64[0];
            sub_2982F58D4(a3, &v114, &object, v10, UnpackedType);
LABEL_137:
            v48 = v114;
            if (!v114)
            {
LABEL_140:
              if (__p)
              {
                v98 = __p;
                operator delete(__p);
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v100);
              return;
            }

            *(&v114 + 1) = v114;
LABEL_139:
            operator delete(v48);
            goto LABEL_140;
          }

          if (v14 <= 23)
          {
            if (v14 == 22)
            {
              sub_2982E6418(&__p, &v114);
              object = *a2;
              v112 = a2[1].n128_u64[0];
              sub_2982F61F8(a3, &v114, &object, v10, UnpackedType);
            }

            else
            {
              sub_2982E5B14(&__p, &v114);
              object = *a2;
              v112 = a2[1].n128_u64[0];
              sub_2982F5BE0(a3, &v114, &object, v10, UnpackedType);
            }

            goto LABEL_137;
          }

          if (v14 != 26)
          {
            if (v14 == 25)
            {
LABEL_136:
              sub_2982E5FD8(&__p, &v114);
              object = *a2;
              v112 = a2[1].n128_u64[0];
              sub_2982F5EEC(a3, &v114, &object, v10, UnpackedType);
              goto LABEL_137;
            }

            if (v14 != 24)
            {
LABEL_262:
              v92 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C2879E0](v92, "This should never happen, no matter what the input!");
              __cxa_throw(v92, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }

            goto LABEL_80;
          }

          sub_2982E5D88(&__p, v107);
          v105 = *a2;
          v106 = a2[1].n128_u64[0];
          v114 = *a2;
          v115 = a2[1].n128_u64[0];
          v93 = sub_2982DC788(a3, &v114, v10);
          v44 = xpc_array_create(0, 0);
          if (v44 || (v44 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C287EE0](v44) == MEMORY[0x29EDCA9E0])
            {
              xpc_retain(v44);
              v45 = v44;
            }

            else
            {
              v45 = xpc_null_create();
            }
          }

          else
          {
            v45 = xpc_null_create();
            v44 = 0;
          }

          xpc_release(v44);
          v71 = *v107;
          v94 = v107[2] & 0x3F;
          v96 = v45;
          if (*&v107[2] <= 0x3FuLL && (v107[2] & 0x3F) == 0)
          {
LABEL_236:
            object.n128_u64[0] = v45;
            if (v45)
            {
              xpc_retain(v45);
            }

            else
            {
              object.n128_u64[0] = xpc_null_create();
            }

            v114 = v105;
            v115 = v106;
            v80 = sub_2982DCCD8(a3, &v114, v10);
            sub_2982DCD54(a3, v93, &object, v80);
            xpc_release(object.n128_u64[0]);
            object.n128_u64[0] = 0;
            xpc_release(v45);
            v48 = *v107;
            if (!*v107)
            {
              goto LABEL_140;
            }

            goto LABEL_139;
          }

          v72 = 0;
          v73 = *v107 + 8 * (*&v107[2] >> 6);
          while (1)
          {
            v74 = xpc_null_create();
            v75 = 1 << v72;
            if (UnpackedType != 11)
            {
              if (UnpackedType == 12)
              {
                sub_2982DE1A4((*v71 & v75) != 0, &v113);
                v76 = v113;
                v113 = v74;
                xpc_release(v74);
                v113 = 0;
                v74 = v76;
                v45 = v96;
              }

              goto LABEL_229;
            }

            object = v105;
            v112 = v106;
            sub_2982DD334(a3, &object, v10, (*v71 >> v72) & 1, &v114);
            if (SHIBYTE(v115) < 0)
            {
              if (!*(&v114 + 1))
              {
                goto LABEL_228;
              }

              v77 = v114;
            }

            else
            {
              if (!HIBYTE(v115))
              {
                goto LABEL_229;
              }

              v77 = &v114;
            }

            sub_2982DD478(v77, &v110);
            v78 = v110;
            v110 = v74;
            xpc_release(v74);
            v110 = 0;
            v74 = v78;
            v45 = v96;
            if (SHIBYTE(v115) < 0)
            {
LABEL_228:
              operator delete(v114);
            }

LABEL_229:
            if (MEMORY[0x29C287EE0](v74) == MEMORY[0x29EDCAA40])
            {
              sub_2982DDAA8((*v71 & v75) != 0, &v109);
              v79 = v109;
              v109 = v74;
              xpc_release(v74);
              v109 = 0;
              v74 = v79;
              v45 = v96;
            }

            xpc_array_append_value(v45, v74);
            xpc_release(v74);
            v71 += v72 == 63;
            if (v72 == 63)
            {
              v72 = 0;
            }

            else
            {
              ++v72;
            }

            if (v71 == v73 && v72 == v94)
            {
              goto LABEL_236;
            }
          }
        }

        *&v114 = 0;
        sub_2982E3C80(&__p, &v114);
        if (WireTypeForType > 1)
        {
          break;
        }

        if (WireTypeForType)
        {
          if (WireTypeForType == 1)
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v98 - 1);
LABEL_31:
            if ((LittleEndian64Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          v21 = v98 - 1;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
            goto LABEL_31;
          }

          *v21 = v23;
          *(this + 1) = v22 + 1;
        }
      }

      if (WireTypeForType != 5)
      {
        break;
      }

      LODWORD(v114) = 0;
      LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v114);
      *(v98 - 1) = v114;
      if ((LittleEndian32Fallback & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  while (WireTypeForType != 2);
LABEL_48:
  if (__p)
  {
    v98 = __p;
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
LABEL_51:
  if (v10 || (*(this + 36) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

void sub_2982DA430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t object)
{
  if (*(v32 - 121) < 0)
  {
    operator delete(*(v32 - 144));
  }

  xpc_release(v31);
  _Unwind_Resume(a1);
}

double MetricFileMetadataHelper::getSubfieldType@<D0>(MetricFileMetadataHelper *a1@<X0>, __n128 *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1].n128_u64[0];
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(a1, &v6, a3, &v8);
  result = *&v8;
  *a4 = v8;
  *(a4 + 16) = v9;
  return result;
}

double WISMetadataLoader::loadComponentMetadata@<D0>(WISMetadataLoader *this@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  (*(**this + 32))(&v5, *this, *(this + 2), a2);
  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t *BestChoiceMetadataLoaderDelegate::readComponentData@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v9 = a3;
  (*(*a1 + 88))(a1);
  v7 = 40;
  if (a2 == 1)
  {
    v7 = 80;
  }

  result = sub_2982D83F4((a1 + v7), &v9);
  if (result)
  {
    return sub_2982DA9A0(result[3], result[4], a4);
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

const unsigned __int8 *sub_2982DA9A0@<X0>(const unsigned __int8 *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && a2)
  {
    PB::Reader::Reader(&v3, result);
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void *BestChoiceMetadataLoaderDelegate::ensureCacheReady(void *this)
{
  if (!this[8])
  {
    v2 = this;
    v3 = (*(*this + 96))(this);
    v4 = *(*v2 + 104);

    return v4(v2, v3);
  }

  return this;
}

uint64_t sub_2982DAB00(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 2)
      {
        sub_2982DBDD8();
      }

      if ((v9 >> 3) == 1)
      {
        sub_2982DACEC();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v21 = v4 ^ 1;
  return v21 & 1;
}

double sub_2982DAE38(uint64_t a1)
{
  *a1 = &unk_2A1EB69B8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_2982DAE68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2982DE79C();
}

double sub_2982DAEB0(uint64_t a1)
{
  *a1 = &unk_2A1EB6AB8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_2982DAEDC(uint64_t a1)
{
  sub_2982DAF14(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2982DAF14(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_2982DAF88(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 2)
      {
        sub_2982DB1C4();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v21 = v4 ^ 1;
  return v21 & 1;
}

double sub_2982DB310(uint64_t a1)
{
  *a1 = &unk_2A1EB6968;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *&result = 0x100000001;
  *(a1 + 32) = 0x100000001;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  return result;
}

uint64_t sub_2982DB344(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_208;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 52) |= 0x10u;
              v68 = *(this + 1);
              v67 = *(this + 2);
              v69 = *this;
              if (v68 > 0xFFFFFFFFFFFFFFF5 || v68 + 10 > v67)
              {
                v131 = 0;
                v132 = 0;
                v72 = 0;
                v17 = v67 >= v68;
                v133 = v67 - v68;
                if (!v17)
                {
                  v133 = 0;
                }

                v134 = (v69 + v68);
                v135 = v68 + 1;
                while (1)
                {
                  if (!v133)
                  {
                    LODWORD(v72) = 0;
                    *(this + 24) = 1;
                    goto LABEL_194;
                  }

                  v136 = *v134;
                  *(this + 1) = v135;
                  v72 |= (v136 & 0x7F) << v131;
                  if ((v136 & 0x80) == 0)
                  {
                    break;
                  }

                  v131 += 7;
                  --v133;
                  ++v134;
                  ++v135;
                  v14 = v132++ > 8;
                  if (v14)
                  {
LABEL_145:
                    LODWORD(v72) = 0;
                    goto LABEL_194;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v72) = 0;
                }
              }

              else
              {
                v70 = 0;
                v71 = 0;
                v72 = 0;
                v73 = (v69 + v68);
                v74 = v68 + 1;
                while (1)
                {
                  *(this + 1) = v74;
                  v75 = *v73++;
                  v72 |= (v75 & 0x7F) << v70;
                  if ((v75 & 0x80) == 0)
                  {
                    break;
                  }

                  v70 += 7;
                  ++v74;
                  v14 = v71++ > 8;
                  if (v14)
                  {
                    goto LABEL_145;
                  }
                }
              }

LABEL_194:
              *(a1 + 32) = v72;
              goto LABEL_204;
            case 0xB:
              *(a1 + 52) |= 8u;
              v99 = *(this + 1);
              v98 = *(this + 2);
              v100 = *this;
              if (v99 > 0xFFFFFFFFFFFFFFF5 || v99 + 10 > v98)
              {
                v149 = 0;
                v150 = 0;
                v103 = 0;
                v17 = v98 >= v99;
                v151 = v98 - v99;
                if (!v17)
                {
                  v151 = 0;
                }

                v152 = (v100 + v99);
                v153 = v99 + 1;
                while (1)
                {
                  if (!v151)
                  {
                    LODWORD(v103) = 0;
                    *(this + 24) = 1;
                    goto LABEL_203;
                  }

                  v154 = *v152;
                  *(this + 1) = v153;
                  v103 |= (v154 & 0x7F) << v149;
                  if ((v154 & 0x80) == 0)
                  {
                    break;
                  }

                  v149 += 7;
                  --v151;
                  ++v152;
                  ++v153;
                  v14 = v150++ > 8;
                  if (v14)
                  {
LABEL_169:
                    LODWORD(v103) = 0;
                    goto LABEL_203;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v103) = 0;
                }
              }

              else
              {
                v101 = 0;
                v102 = 0;
                v103 = 0;
                v104 = (v100 + v99);
                v105 = v99 + 1;
                while (1)
                {
                  *(this + 1) = v105;
                  v106 = *v104++;
                  v103 |= (v106 & 0x7F) << v101;
                  if ((v106 & 0x80) == 0)
                  {
                    break;
                  }

                  v101 += 7;
                  ++v105;
                  v14 = v102++ > 8;
                  if (v14)
                  {
                    goto LABEL_169;
                  }
                }
              }

LABEL_203:
              *(a1 + 28) = v103;
              goto LABEL_204;
            case 0xC:
              *(a1 + 52) |= 4u;
              v41 = *(this + 1);
              v40 = *(this + 2);
              v42 = *this;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
              {
                v113 = 0;
                v114 = 0;
                v45 = 0;
                v17 = v40 >= v41;
                v115 = v40 - v41;
                if (!v17)
                {
                  v115 = 0;
                }

                v116 = (v42 + v41);
                v117 = v41 + 1;
                while (1)
                {
                  if (!v115)
                  {
                    LODWORD(v45) = 0;
                    *(this + 24) = 1;
                    goto LABEL_185;
                  }

                  v118 = *v116;
                  *(this + 1) = v117;
                  v45 |= (v118 & 0x7F) << v113;
                  if ((v118 & 0x80) == 0)
                  {
                    break;
                  }

                  v113 += 7;
                  --v115;
                  ++v116;
                  ++v117;
                  v14 = v114++ > 8;
                  if (v14)
                  {
LABEL_117:
                    LODWORD(v45) = 0;
                    goto LABEL_185;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v45) = 0;
                }
              }

              else
              {
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = (v42 + v41);
                v47 = v41 + 1;
                while (1)
                {
                  *(this + 1) = v47;
                  v48 = *v46++;
                  v45 |= (v48 & 0x7F) << v43;
                  if ((v48 & 0x80) == 0)
                  {
                    break;
                  }

                  v43 += 7;
                  ++v47;
                  v14 = v44++ > 8;
                  if (v14)
                  {
                    goto LABEL_117;
                  }
                }
              }

LABEL_185:
              *(a1 + 24) = v45;
              goto LABEL_204;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 52) |= 2u;
              v59 = *(this + 1);
              v58 = *(this + 2);
              v60 = *this;
              if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v58)
              {
                v125 = 0;
                v126 = 0;
                v63 = 0;
                v17 = v58 >= v59;
                v127 = v58 - v59;
                if (!v17)
                {
                  v127 = 0;
                }

                v128 = (v60 + v59);
                v129 = v59 + 1;
                while (1)
                {
                  if (!v127)
                  {
                    LODWORD(v63) = 0;
                    *(this + 24) = 1;
                    goto LABEL_191;
                  }

                  v130 = *v128;
                  *(this + 1) = v129;
                  v63 |= (v130 & 0x7F) << v125;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v125 += 7;
                  --v127;
                  ++v128;
                  ++v129;
                  v14 = v126++ > 8;
                  if (v14)
                  {
LABEL_137:
                    LODWORD(v63) = 0;
                    goto LABEL_191;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v63) = 0;
                }
              }

              else
              {
                v61 = 0;
                v62 = 0;
                v63 = 0;
                v64 = (v60 + v59);
                v65 = v59 + 1;
                while (1)
                {
                  *(this + 1) = v65;
                  v66 = *v64++;
                  v63 |= (v66 & 0x7F) << v61;
                  if ((v66 & 0x80) == 0)
                  {
                    break;
                  }

                  v61 += 7;
                  ++v65;
                  v14 = v62++ > 8;
                  if (v14)
                  {
                    goto LABEL_137;
                  }
                }
              }

LABEL_191:
              *(a1 + 20) = v63;
              goto LABEL_204;
            case 8:
              *(a1 + 52) |= 1u;
              v86 = *(this + 1);
              v85 = *(this + 2);
              v87 = *this;
              if (v86 > 0xFFFFFFFFFFFFFFF5 || v86 + 10 > v85)
              {
                v143 = 0;
                v144 = 0;
                v90 = 0;
                v17 = v85 >= v86;
                v145 = v85 - v86;
                if (!v17)
                {
                  v145 = 0;
                }

                v146 = (v87 + v86);
                v147 = v86 + 1;
                while (1)
                {
                  if (!v145)
                  {
                    LODWORD(v90) = 0;
                    *(this + 24) = 1;
                    goto LABEL_200;
                  }

                  v148 = *v146;
                  *(this + 1) = v147;
                  v90 |= (v148 & 0x7F) << v143;
                  if ((v148 & 0x80) == 0)
                  {
                    break;
                  }

                  v143 += 7;
                  --v145;
                  ++v146;
                  ++v147;
                  v14 = v144++ > 8;
                  if (v14)
                  {
LABEL_161:
                    LODWORD(v90) = 0;
                    goto LABEL_200;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v90) = 0;
                }
              }

              else
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = (v87 + v86);
                v92 = v86 + 1;
                while (1)
                {
                  *(this + 1) = v92;
                  v93 = *v91++;
                  v90 |= (v93 & 0x7F) << v88;
                  if ((v93 & 0x80) == 0)
                  {
                    break;
                  }

                  v88 += 7;
                  ++v92;
                  v14 = v89++ > 8;
                  if (v14)
                  {
                    goto LABEL_161;
                  }
                }
              }

LABEL_200:
              *(a1 + 16) = v90;
              goto LABEL_204;
            case 9:
              *(a1 + 52) |= 0x20u;
              v28 = *(this + 1);
              v27 = *(this + 2);
              v29 = *this;
              if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
              {
                v107 = 0;
                v108 = 0;
                v32 = 0;
                v17 = v27 >= v28;
                v109 = v27 - v28;
                if (!v17)
                {
                  v109 = 0;
                }

                v110 = (v29 + v28);
                v111 = v28 + 1;
                while (1)
                {
                  if (!v109)
                  {
                    LODWORD(v32) = 0;
                    *(this + 24) = 1;
                    goto LABEL_182;
                  }

                  v112 = *v110;
                  *(this + 1) = v111;
                  v32 |= (v112 & 0x7F) << v107;
                  if ((v112 & 0x80) == 0)
                  {
                    break;
                  }

                  v107 += 7;
                  --v109;
                  ++v110;
                  ++v111;
                  v14 = v108++ > 8;
                  if (v14)
                  {
LABEL_109:
                    LODWORD(v32) = 0;
                    goto LABEL_182;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v32) = 0;
                }
              }

              else
              {
                v30 = 0;
                v31 = 0;
                v32 = 0;
                v33 = (v29 + v28);
                v34 = v28 + 1;
                while (1)
                {
                  *(this + 1) = v34;
                  v35 = *v33++;
                  v32 |= (v35 & 0x7F) << v30;
                  if ((v35 & 0x80) == 0)
                  {
                    break;
                  }

                  v30 += 7;
                  ++v34;
                  v14 = v31++ > 8;
                  if (v14)
                  {
                    goto LABEL_109;
                  }
                }
              }

LABEL_182:
              *(a1 + 36) = v32;
              goto LABEL_204;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            operator new();
          case 5:
            *(a1 + 52) |= 0x200u;
            v94 = *(this + 1);
            if (v94 >= *(this + 2))
            {
              v97 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v95 = v94 + 1;
              v96 = *(*this + v94);
              *(this + 1) = v95;
              v97 = v96 != 0;
            }

            *(a1 + 49) = v97;
            goto LABEL_204;
          case 6:
            *(a1 + 52) |= 0x100u;
            v36 = *(this + 1);
            if (v36 >= *(this + 2))
            {
              v39 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v37 = v36 + 1;
              v38 = *(*this + v36);
              *(this + 1) = v37;
              v39 = v38 != 0;
            }

            *(a1 + 48) = v39;
            goto LABEL_204;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 52) |= 0x40u;
            v50 = *(this + 1);
            v49 = *(this + 2);
            v51 = *this;
            if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v49)
            {
              v119 = 0;
              v120 = 0;
              v54 = 0;
              v17 = v49 >= v50;
              v121 = v49 - v50;
              if (!v17)
              {
                v121 = 0;
              }

              v122 = (v51 + v50);
              v123 = v50 + 1;
              while (1)
              {
                if (!v121)
                {
                  LODWORD(v54) = 0;
                  *(this + 24) = 1;
                  goto LABEL_188;
                }

                v124 = *v122;
                *(this + 1) = v123;
                v54 |= (v124 & 0x7F) << v119;
                if ((v124 & 0x80) == 0)
                {
                  break;
                }

                v119 += 7;
                --v121;
                ++v122;
                ++v123;
                v14 = v120++ > 8;
                if (v14)
                {
LABEL_129:
                  LODWORD(v54) = 0;
                  goto LABEL_188;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v54) = 0;
              }
            }

            else
            {
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = (v51 + v50);
              v56 = v50 + 1;
              while (1)
              {
                *(this + 1) = v56;
                v57 = *v55++;
                v54 |= (v57 & 0x7F) << v52;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                ++v56;
                v14 = v53++ > 8;
                if (v14)
                {
                  goto LABEL_129;
                }
              }
            }

LABEL_188:
            *(a1 + 40) = v54;
            goto LABEL_204;
          case 2:
            *(a1 + 52) |= 0x80u;
            v77 = *(this + 1);
            v76 = *(this + 2);
            v78 = *this;
            if (v77 > 0xFFFFFFFFFFFFFFF5 || v77 + 10 > v76)
            {
              v137 = 0;
              v138 = 0;
              v81 = 0;
              v17 = v76 >= v77;
              v139 = v76 - v77;
              if (!v17)
              {
                v139 = 0;
              }

              v140 = (v78 + v77);
              v141 = v77 + 1;
              while (1)
              {
                if (!v139)
                {
                  LODWORD(v81) = 0;
                  *(this + 24) = 1;
                  goto LABEL_197;
                }

                v142 = *v140;
                *(this + 1) = v141;
                v81 |= (v142 & 0x7F) << v137;
                if ((v142 & 0x80) == 0)
                {
                  break;
                }

                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
LABEL_153:
                  LODWORD(v81) = 0;
                  goto LABEL_197;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              v79 = 0;
              v80 = 0;
              v81 = 0;
              v82 = (v78 + v77);
              v83 = v77 + 1;
              while (1)
              {
                *(this + 1) = v83;
                v84 = *v82++;
                v81 |= (v84 & 0x7F) << v79;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v79 += 7;
                ++v83;
                v14 = v80++ > 8;
                if (v14)
                {
                  goto LABEL_153;
                }
              }
            }

LABEL_197:
            *(a1 + 44) = v81;
            goto LABEL_204;
          case 3:
            *(a1 + 52) |= 0x400u;
            v23 = *(this + 1);
            if (v23 >= *(this + 2))
            {
              v26 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v24 = v23 + 1;
              v25 = *(*this + v23);
              *(this + 1) = v24;
              v26 = v25 != 0;
            }

            *(a1 + 50) = v26;
            goto LABEL_204;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v156 = 0;
        return v156 & 1;
      }

LABEL_204:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_208:
  v156 = v4 ^ 1;
  return v156 & 1;
}

double sub_2982DBF24(uint64_t a1)
{
  *a1 = &unk_2A1EB5588;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_2982DBF50(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 2)
      {
        sub_2982DC18C();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_2982DC2D8(uint64_t result)
{
  *result = &unk_2A1EB6500;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_2982DC2FC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_70;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v33 = *(this + 1);
        v32 = *(this + 2);
        v34 = *this;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v47 = 0;
          v48 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v49 = v32 - v33;
          if (!v17)
          {
            v49 = 0;
          }

          v50 = (v34 + v33);
          v51 = v33 + 1;
          while (1)
          {
            if (!v49)
            {
              v37 = 0;
              *(this + 24) = 1;
              goto LABEL_65;
            }

            v52 = *v50;
            *(this + 1) = v51;
            v37 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_57:
              v37 = 0;
              goto LABEL_65;
            }
          }

          if (*(this + 24))
          {
            v37 = 0;
          }
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = (v34 + v33);
          v39 = v33 + 1;
          while (1)
          {
            *(this + 1) = v39;
            v40 = *v38++;
            v37 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
              goto LABEL_57;
            }
          }
        }

LABEL_65:
        *(a1 + 16) = v37;
      }

      else if (v22 == 2)
      {
        *(a1 + 32) |= 2u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v41 = 0;
          v42 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v43 = v23 - v24;
          if (!v17)
          {
            v43 = 0;
          }

          v44 = (v25 + v24);
          v45 = v24 + 1;
          while (1)
          {
            if (!v43)
            {
              v28 = 0;
              *(this + 24) = 1;
              goto LABEL_62;
            }

            v46 = *v44;
            *(this + 1) = v45;
            v28 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            --v43;
            ++v44;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
LABEL_49:
              v28 = 0;
              goto LABEL_62;
            }
          }

          if (*(this + 24))
          {
            v28 = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_49;
            }
          }
        }

LABEL_62:
        *(a1 + 24) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this))
        {
          v54 = 0;
          return v54 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_70:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t MetadataHelper::getBuiltinType(uint64_t a1, MetadataHandle *a2)
{
  result = MetadataHandle::getField(a2);
  if (result)
  {
    return *(result + 44);
  }

  return result;
}

uint64_t wis::reflect::getDecodingType(uint64_t a1, int a2)
{
  v3 = a1;
  if (wis::reflect::getWireTypeForType(a1) != a2)
  {
    UnpackedType = wis::reflect::getUnpackedType(v3);
    if (wis::reflect::getWireTypeForType(UnpackedType) == a2)
    {
      return UnpackedType;
    }

    else if (a2 == 2 && (PackedType = wis::reflect::getPackedType(v3), PackedType))
    {
      return PackedType;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t wis::reflect::getWireTypeForType(int a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return byte_298305208[a1 - 1];
  }
}

char *sub_2982DC788(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 8), &v6, a3, &v8);
  *a2 = v8;
  *(a2 + 2) = v9;
  Field = MetadataHandle::getField(a2);
  if (!Field)
  {
    return &unk_29830425A;
  }

  result = *(Field + 8);
  if (!result)
  {
    return &unk_29830425A;
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void sub_2982DC80C(xpc_object_t *a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, __int128 *a3, unsigned int a4, __int128 *a5)
{
  v21 = *a3;
  v22 = *(a3 + 2);
  v10 = sub_2982DC788(a1, &v21, a4);
  v11 = xpc_dictionary_create(0, 0, 0);
  if (v11 || (v11 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C287EE0](v11) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v11);
      v12 = v11;
    }

    else
    {
      v12 = xpc_null_create();
    }
  }

  else
  {
    v12 = xpc_null_create();
    v11 = 0;
  }

  xpc_release(v11);
  v13 = *a1;
  *a1 = xpc_null_create();
  v14 = xpc_null_create();
  v15 = *a1;
  *a1 = v12;
  xpc_release(v15);
  xpc_release(v14);
  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
  {
    v21 = *a5;
    v22 = *(a5 + 2);
    sub_2982D8DA4(a2);
  }

  v16 = *a1;
  *a1 = xpc_null_create();
  v17 = xpc_null_create();
  v18 = *a1;
  *a1 = v13;
  xpc_release(v18);
  object = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    object = xpc_null_create();
  }

  v21 = *a3;
  v22 = *(a3 + 2);
  v19 = sub_2982DCCD8(a1, &v21, a4);
  sub_2982DCD54(a1, v10, &object, v19);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  xpc_release(v17);
}

void sub_2982DCA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_2982DCA54(void *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v24 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = xpc_null_create();
  if (a5 == 11)
  {
    v20 = *a3;
    v21 = *(a3 + 2);
    sub_2982DD334(a1, &v20, a4, *a2, __p);
    if (SHIBYTE(v24) < 0)
    {
      if (!__p[1])
      {
LABEL_10:
        operator delete(__p[0]);
        goto LABEL_11;
      }

      v13 = __p[0];
    }

    else
    {
      if (!HIBYTE(v24))
      {
        goto LABEL_11;
      }

      v13 = __p;
    }

    sub_2982DD478(v13, &v19);
    v14 = v19;
    v19 = v11;
    xpc_release(v11);
    v19 = 0;
    v11 = v14;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a5 == 12)
  {
    sub_2982DE1A4(*a2 != 0, &v22);
    v12 = v22;
    v22 = v11;
    xpc_release(v11);
    v22 = 0;
    v11 = v12;
  }

LABEL_11:
  if (MEMORY[0x29C287EE0](v11) == MEMORY[0x29EDCAA40])
  {
    sub_2982DCC98(*a2, &v18);
    v15 = v18;
    v18 = v11;
    xpc_release(v11);
    v18 = 0;
    v11 = v15;
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  *__p = *a3;
  v24 = *(a3 + 2);
  v16 = sub_2982DCCD8(a1, __p, a4);
  sub_2982DCD54(a1, v10, &object, v16);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2982DCC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
  _Unwind_Resume(a1);
}

xpc_object_t sub_2982DCC98@<X0>(uint64_t value@<X1>, void *a2@<X8>)
{
  result = xpc_uint64_create(value);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

uint64_t sub_2982DCCD8(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 8), &v7, a3, &v9);
  *a2 = v9;
  *(a2 + 2) = v10;
  Field = MetadataHandle::getField(a2);
  if (Field && (*(Field + 52) & 0x400) != 0)
  {
    v5 = *(Field + 50);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_2982DCD54(void *a1, uint64_t a2, xpc_object_t *a3, int a4)
{
  if (a4)
  {
    v22 = a1;
    v23 = a2;
    sub_2982DDAE8(&v22, &v24);
    v7 = MEMORY[0x29C287EE0](v24);
    v8 = MEMORY[0x29EDCA9E0];
    if (v7 != MEMORY[0x29EDCA9E0])
    {
      v9 = xpc_array_create(0, 0);
      if (v9 || (v9 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C287EE0](v9) == v8)
        {
          xpc_retain(v9);
          v10 = v9;
        }

        else
        {
          v10 = xpc_null_create();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v9 = 0;
      }

      xpc_release(v9);
      v12 = xpc_null_create();
      v13 = v24;
      v24 = v10;
      xpc_release(v13);
      xpc_release(v12);
      v20 = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        v20 = xpc_null_create();
      }

      v22 = a1;
      v23 = a2;
      sub_2982DDB84(&v22, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      xpc_release(v20);
      v20 = 0;
    }

    v14 = *a3;
    if (*a3 && MEMORY[0x29C287EE0](*a3) == v8)
    {
      xpc_retain(v14);
    }

    else
    {
      v14 = xpc_null_create();
    }

    if (MEMORY[0x29C287EE0](v14) == v8)
    {
      v22 = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        v22 = xpc_null_create();
      }

      sub_2982F6B3C(v19, &v22, 0);
      xpc_release(v22);
      v22 = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        v22 = xpc_null_create();
      }

      if (MEMORY[0x29C287EE0](v14) == v8)
      {
        count = xpc_array_get_count(v14);
      }

      else
      {
        count = 0;
      }

      sub_2982F6B3C(v18, &v22, count);
      xpc_release(v22);
      sub_2982F6988(v19, v18, &v24);
      xpc_release(v18[0]);
      v18[0] = 0;
      xpc_release(v19[0]);
      v19[0] = 0;
    }

    else
    {
      xpc_array_append_value(v24, *a3);
    }

    xpc_release(v14);
    xpc_release(v24);
  }

  else
  {
    v11 = *a3;
    v16 = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      v16 = xpc_null_create();
    }

    v22 = a1;
    v23 = a2;
    sub_2982DD0A4(&v22, &v16, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v16);
  }
}

void sub_2982DCFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, xpc_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  xpc_release(object);
  xpc_release(a14);
  xpc_release(v18);
  xpc_release(*(v19 - 56));
  _Unwind_Resume(a1);
}

xpc_object_t sub_2982DD0A4@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void sub_2982DD0F0(void *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v24 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = xpc_null_create();
  if (a5 == 11)
  {
    v20 = *a3;
    v21 = *(a3 + 2);
    sub_2982DD334(a1, &v20, a4, *a2, __p);
    if (SHIBYTE(v24) < 0)
    {
      if (!__p[1])
      {
LABEL_10:
        operator delete(__p[0]);
        goto LABEL_11;
      }

      v13 = __p[0];
    }

    else
    {
      if (!HIBYTE(v24))
      {
        goto LABEL_11;
      }

      v13 = __p;
    }

    sub_2982DD478(v13, &v19);
    v14 = v19;
    v19 = v11;
    xpc_release(v11);
    v19 = 0;
    v11 = v14;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a5 == 12)
  {
    sub_2982DE1A4(*a2 != 0, &v22);
    v12 = v22;
    v22 = v11;
    xpc_release(v11);
    v22 = 0;
    v11 = v12;
  }

LABEL_11:
  if (MEMORY[0x29C287EE0](v11) == MEMORY[0x29EDCAA40])
  {
    sub_2982F6A80(*a2, &v18);
    v15 = v18;
    v18 = v11;
    xpc_release(v11);
    v18 = 0;
    v11 = v15;
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  *__p = *a3;
  v24 = *(a3 + 2);
  v16 = sub_2982DCCD8(a1, __p, a4);
  sub_2982DCD54(a1, v10, &object, v16);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2982DD2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
  _Unwind_Resume(a1);
}

_BYTE *sub_2982DD334@<X0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 8), &v15, a3, &v17);
  *a2 = v17;
  *(a2 + 2) = v18;
  result = MetadataHandle::getEnum(a2);
  if (!result)
  {
    return sub_2982E1488(a5, &unk_29830425A);
  }

  v9 = *(result + 1);
  v10 = *(result + 2);
  if (v9 == v10)
  {
    return sub_2982E1488(a5, &unk_29830425A);
  }

  while (1)
  {
    v11 = *v9;
    v12 = (*(*v9 + 32) & 2) != 0 ? 24 : 16;
    if (*(v11 + v12) == a4)
    {
      break;
    }

    if (++v9 == v10)
    {
      return sub_2982E1488(a5, &unk_29830425A);
    }
  }

  v13 = *(v11 + 8);
  if (*(v13 + 23) < 0)
  {
    return sub_2982DE100(a5, *v13, *(v13 + 1));
  }

  v14 = *v13;
  *(a5 + 16) = *(v13 + 2);
  *a5 = v14;
  return result;
}

uint64_t MetadataHandle::getEnum(MetadataHandle *this)
{
  result = MetadataHandle::getField(this);
  if (result)
  {
    if ((*(result + 52) & 1) != 0 && (v3 = *(result + 16), v4 = *(*this + 8), v3 < (*(*this + 16) - v4) >> 3))
    {
      return *(v4 + 8 * v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

xpc_object_t sub_2982DD478@<X0>(char *string@<X1>, void *a2@<X8>)
{
  if (!string || (result = xpc_string_create(string), (*a2 = result) == 0))
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

void sub_2982DD4C8(void *a1, char *a2, __int128 *a3, unsigned int a4)
{
  v13 = *a3;
  v14 = *(a3 + 2);
  v8 = sub_2982DC788(a1, &v13, a4);
  if (a2[23] >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  sub_2982DD478(v9, &object);
  v11 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v11 = xpc_null_create();
  }

  v13 = *a3;
  v14 = *(a3 + 2);
  v10 = sub_2982DCCD8(a1, &v13, a4);
  sub_2982DCD54(a1, v8, &v11, v10);
  xpc_release(v11);
  v11 = 0;
  xpc_release(object);
}

void sub_2982DD5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void sub_2982DD5E0(void *a1, _DWORD *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v24 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = xpc_null_create();
  if (a5 == 11)
  {
    v20 = *a3;
    v21 = *(a3 + 2);
    sub_2982DD334(a1, &v20, a4, *a2, __p);
    if (SHIBYTE(v24) < 0)
    {
      if (!__p[1])
      {
LABEL_10:
        operator delete(__p[0]);
        goto LABEL_11;
      }

      v13 = __p[0];
    }

    else
    {
      if (!HIBYTE(v24))
      {
        goto LABEL_11;
      }

      v13 = __p;
    }

    sub_2982DD478(v13, &v19);
    v14 = v19;
    v19 = v11;
    xpc_release(v11);
    v19 = 0;
    v11 = v14;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a5 == 12)
  {
    sub_2982DE1A4(*a2 != 0, &v22);
    v12 = v22;
    v22 = v11;
    xpc_release(v11);
    v22 = 0;
    v11 = v12;
  }

LABEL_11:
  if (MEMORY[0x29C287EE0](v11) == MEMORY[0x29EDCAA40])
  {
    sub_2982DD824(*a2, &v18);
    v15 = v18;
    v18 = v11;
    xpc_release(v11);
    v18 = 0;
    v11 = v15;
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  *__p = *a3;
  v24 = *(a3 + 2);
  v16 = sub_2982DCCD8(a1, __p, a4);
  sub_2982DCD54(a1, v10, &object, v16);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2982DD7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
  _Unwind_Resume(a1);
}

xpc_object_t sub_2982DD824@<X0>(int64_t value@<X1>, void *a2@<X8>)
{
  result = xpc_int64_create(value);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

void sub_2982DD864(void *a1, int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v24 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = xpc_null_create();
  if (a5 == 11)
  {
    v20 = *a3;
    v21 = *(a3 + 2);
    sub_2982DD334(a1, &v20, a4, *a2, __p);
    if (SHIBYTE(v24) < 0)
    {
      if (!__p[1])
      {
LABEL_10:
        operator delete(__p[0]);
        goto LABEL_11;
      }

      v13 = __p[0];
    }

    else
    {
      if (!HIBYTE(v24))
      {
        goto LABEL_11;
      }

      v13 = __p;
    }

    sub_2982DD478(v13, &v19);
    v14 = v19;
    v19 = v11;
    xpc_release(v11);
    v19 = 0;
    v11 = v14;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a5 == 12)
  {
    sub_2982DE1A4(*a2 != 0, &v22);
    v12 = v22;
    v22 = v11;
    xpc_release(v11);
    v22 = 0;
    v11 = v12;
  }

LABEL_11:
  if (MEMORY[0x29C287EE0](v11) == MEMORY[0x29EDCAA40])
  {
    sub_2982DDAA8(*a2, &v18);
    v15 = v18;
    v18 = v11;
    xpc_release(v11);
    v18 = 0;
    v11 = v15;
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  *__p = *a3;
  v24 = *(a3 + 2);
  v16 = sub_2982DCCD8(a1, __p, a4);
  sub_2982DCD54(a1, v10, &object, v16);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2982DDA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
  _Unwind_Resume(a1);
}

xpc_object_t sub_2982DDAA8@<X0>(int a1@<W1>, void *a2@<X8>)
{
  result = xpc_int64_create(a1);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

void sub_2982DDAE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C287EE0](v4) != MEMORY[0x29EDCA9E0])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

xpc_object_t sub_2982DDB84@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2982DDBD0(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

uint64_t sub_2982DDC0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(*a1);
  return a1;
}

uint64_t sub_2982DDC40(uint64_t a1)
{
  sub_2982DDC7C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2982DDC7C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_2982D89F4(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2982DDCE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x29C287C70);
  }
}

void sub_2982DDD44(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2982DDE3C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2982DDD98(void **a1)
{
  *a1 = &unk_2A1EB69B8;
  v2 = a1 + 1;
  v3 = a1 + 4;
  sub_2982DDD44(&v3);
  v3 = v2;
  sub_2982DDD44(&v3);
  PB::Base::~Base(a1);
}

void sub_2982DDE04(uint64_t a1)
{
  sub_2982DDEA8(a1);

  JUMPOUT(0x29C287C70);
}

void *sub_2982DDE3C(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_2982DDEA8(uint64_t a1)
{
  *a1 = &unk_2A1EB6AB8;
  v4 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2982DDCE8(v2, v3);
  }

  v5 = (a1 + 8);
  sub_2982DDD44(&v5);
  PB::Base::~Base(a1);
}

void sub_2982DDF18(PB::Base *this)
{
  *this = &unk_2A1EB6968;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2982DDCE8(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_2982DDF78(PB::Base *a1)
{
  sub_2982DDF18(a1);

  JUMPOUT(0x29C287C70);
}

void sub_2982DDFB0(uint64_t a1)
{
  *a1 = &unk_2A1EB5588;
  v4 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2982DDCE8(v2, v3);
  }

  v5 = (a1 + 8);
  sub_2982DDD44(&v5);
  PB::Base::~Base(a1);
}

void sub_2982DE01C(uint64_t a1)
{
  sub_2982DDFB0(a1);

  JUMPOUT(0x29C287C70);
}

void sub_2982DE054(PB::Base *this)
{
  *this = &unk_2A1EB6500;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2982DDCE8(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_2982DE0B4(PB::Base *a1)
{
  sub_2982DE054(a1);

  JUMPOUT(0x29C287C70);
}

void *sub_2982DE100(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2982DE6F4();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

xpc_object_t sub_2982DE1A4@<X0>(BOOL value@<W1>, void *a2@<X8>)
{
  result = xpc_BOOL_create(value);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

void sub_2982DE1E4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2982DE7D0();
}

void *sub_2982DE234(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2982DE1E4(result, a2);
  }

  return result;
}

void sub_2982DE28C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982DE2A8(void *a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v11 = *a3;
  v12 = *(a3 + 2);
  v8 = sub_2982DC788(a1, &v11, a4);
  sub_2982DE378(*a2, *(a2 + 8) - *a2, &object);
  v11 = *a3;
  v12 = *(a3 + 2);
  v9 = sub_2982DCCD8(a1, &v11, a4);
  sub_2982DCD54(a1, v8, &object, v9);
  xpc_release(object);
}

xpc_object_t sub_2982DE378@<X0>(void *bytes@<X1>, size_t length@<X2>, void *a3@<X8>)
{
  result = xpc_data_create(bytes, length);
  *a3 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a3 = result;
  }

  return result;
}

uint64_t sub_2982DE5DC(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  v6 = a1[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "enum_names");
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2982DE694(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 32))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  return result;
}

void sub_2982DE70C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2982DE768(exception, a1);
  __cxa_throw(exception, off_29EE905F8, MEMORY[0x29EDC9348]);
}

std::logic_error *sub_2982DE768(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void sub_2982DE79C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t sDumpMetricFile@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v9[0] = 0;
  v9[1] = a2;
  v9[2] = a2 + a3;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  v14 = xmmword_298304740;
  v15 = *MEMORY[0x29EDC9750];
  v16 = 0;
  v17 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = 0uLL;
      v8 = 0xFFFFFFFFLL;
      sub_2982DEA80(v6);
    }

    v7 = 0uLL;
    v8 = 0xFFFFFFFFLL;
    sub_2982DEA80(v6);
  }

  v7 = 0uLL;
  v8 = 0xFFFFFFFFLL;
  v6[0] = a4 != 0;
  sub_2982DE990(&v7, v9, v6, a1, a5);
  return MEMORY[0x29C2877D0](v9);
}

void sub_2982DE958(_Unwind_Exception *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2982E1E24((v7 + 8), a3);
  MEMORY[0x29C2877D0](va);
  _Unwind_Resume(a1);
}

void sub_2982DE990(__n128 *a1@<X0>, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *a3;
  v10 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v11[0] = a5;
  v11[1] = 0;
  MetricFileMetadataHelper::MetricFileMetadataHelper(&v12, &v10);
  v14[64] = v7;
  if (*(&v10 + 1))
  {
    sub_2982D89F4(*(&v10 + 1));
  }

  while ((*(a2 + 36) & 1) == 0)
  {
    v8 = *a1;
    v9 = a1[1].n128_u64[0];
    sub_2982E2760(a2, &v8, v11);
  }

  sub_2982DDC40(v14);
  if (v13)
  {
    sub_2982D89F4(v13);
  }
}

void sub_2982DEA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_2982D89F4(a14);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982DEB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2982D89F4(a14);
  }

  sub_2982E1E24(v14 + 1, *v14);
  _Unwind_Resume(a1);
}

void sub_2982DEB78(void *a1@<X8>)
{
  v1 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_2982DECC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E1DE4(va);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sDumpMetricLog@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v9[0] = 0;
  v9[1] = a2;
  v9[2] = a2 + a3;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  v14 = xmmword_298304740;
  v15 = *MEMORY[0x29EDC9750];
  v16 = 0;
  v17 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = 0uLL;
      v8 = 0xFFFFFFFFLL;
      sub_2982DEFA0(v6);
    }

    v7 = 0uLL;
    v8 = 0xFFFFFFFFLL;
    sub_2982DEFA0(v6);
  }

  v7 = 0uLL;
  v8 = 0xFFFFFFFFLL;
  v6[0] = a4 != 0;
  sub_2982DEEB0(&v7, v9, v6, a1, a5);
  return MEMORY[0x29C2877D0](v9);
}

void sub_2982DEE78(_Unwind_Exception *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2982E1E24((v7 + 8), a3);
  MEMORY[0x29C2877D0](va);
  _Unwind_Resume(a1);
}

void sub_2982DEEB0(__n128 *a1@<X0>, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *a3;
  v10 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v11[0] = a5;
  v11[1] = 0;
  MetricFileMetadataHelper::MetricFileMetadataHelper(&v12, &v10);
  v14[64] = v7;
  if (*(&v10 + 1))
  {
    sub_2982D89F4(*(&v10 + 1));
  }

  while ((*(a2 + 36) & 1) == 0)
  {
    v8 = *a1;
    v9 = a1[1].n128_u64[0];
    sub_2982E2760(a2, &v8, v11);
  }

  sub_2982DDC40(v14);
  if (v13)
  {
    sub_2982D89F4(v13);
  }
}

void sub_2982DEF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_2982D89F4(a14);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982DF064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2982D89F4(a14);
  }

  sub_2982E1E24(v14 + 1, *v14);
  _Unwind_Resume(a1);
}

uint64_t sDumpDeviceConfiguration@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v9[0] = 0;
  v9[1] = a2;
  v9[2] = a2 + a3;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  v14 = xmmword_298304740;
  v15 = *MEMORY[0x29EDC9750];
  v16 = 0;
  v17 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = 0uLL;
      v8 = 0xFFFFFFFFLL;
      sub_2982DF36C(v6);
    }

    v7 = 0uLL;
    v8 = 0xFFFFFFFFLL;
    sub_2982DF36C(v6);
  }

  v7 = 0uLL;
  v8 = 0xFFFFFFFFLL;
  v6[0] = a4 != 0;
  sub_2982DF240(&v7, v9, v6, a1, a5);
  return MEMORY[0x29C2877D0](v9);
}

void sub_2982DF208(_Unwind_Exception *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2982E1E24((v7 + 8), a3);
  MEMORY[0x29C2877D0](va);
  _Unwind_Resume(a1);
}

void sub_2982DF240(__n128 *a1@<X0>, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *a3;
  v10 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v11[0] = a5;
  v11[1] = 0;
  DeviceConfigMetadataHelper::DeviceConfigMetadataHelper(&v12, &v10);
  v15 = v7;
  MetricFileMetadataHelper::MetricFileMetadataHelper(&v16, &v10);
  if (*(&v10 + 1))
  {
    sub_2982D89F4(*(&v10 + 1));
  }

  while ((*(a2 + 36) & 1) == 0)
  {
    v8 = *a1;
    v9 = a1[1].n128_u64[0];
    sub_2982EBDE0(a2, &v8, v11);
  }

  sub_2982DDC40(&v18);
  if (v17)
  {
    sub_2982D89F4(v17);
  }

  if (v14)
  {
    sub_2982D89F4(v14);
  }

  if (v13)
  {
    sub_2982D89F4(v13);
  }
}

void sub_2982DF324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_2982ED2C0(v15 + 16);
  if (a14)
  {
    sub_2982D89F4(a14);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

void sub_2982DF430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2982D89F4(a14);
  }

  sub_2982E1E24(v14 + 1, *v14);
  _Unwind_Resume(a1);
}

void (****sub_2982DF464(void (****result)(void), unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6))(void)
{
  v9 = result;
  v10 = *a2;
  if (v10 > 4)
  {
    if (*a2 <= 6u)
    {
      if (v10 == 5)
      {
        v23 = *(a2 + 1);

        return sub_2982E0D84(result, v23);
      }

      else if (v10 == 6)
      {
        v21 = *(a2 + 1);

        return sub_2982E0F6C(result, v21);
      }

      return result;
    }

    if (v10 == 7)
    {
      v30 = *(a2 + 1);

      return sub_2982E10BC(result, v30);
    }

    if (v10 != 8)
    {
      if (v10 != 9)
      {
        return result;
      }

      v14 = *result;
      v13 = (**v9)[1];
      goto LABEL_61;
    }

    v32 = *result;
    v33 = (**v9)[1];
    if (!a3)
    {
      v33();
      v39 = **(a2 + 1);
      v40 = *(*(a2 + 1) + 8);
      v41 = **(a2 + 1);
      if (v41 != v40)
      {
        while (v41 != v40 - 1)
        {
          v42 = *v41++;
          sub_2982E0CAC(v9, v42);
          (***v9)(*v9, 44);
          v40 = *(*(a2 + 1) + 8);
        }

        sub_2982E0CAC(v9, *(v40 - 1));
      }

      ((**v9)[1])(*v9, "],subtype:", 12);
      v50 = *(a2 + 1);
      if (*(v50 + 25) == 1)
      {
        sub_2982E0CAC(v9, *(v50 + 24));
        v51 = ***v9;

        return v51();
      }

      v13 = (**v9)[1];
      goto LABEL_61;
    }

    v33();
    v34 = (a6 + a5);
    v35 = v9 + 76;
    v36 = *(v9 + 631);
    if ((v36 & 0x80000000) != 0)
    {
      v52 = v9[77];
      if (v52 >= v34)
      {
        v37 = *v9;
LABEL_66:
        v38 = *v35;
        goto LABEL_67;
      }
    }

    else
    {
      if (v34 <= v36)
      {
        v37 = *v9;
        v38 = v9 + 76;
LABEL_67:
        ((*v37)[1])(v37, v38, v34);
        ((**v9)[1])(*v9, "bytes: [", 10);
        v53 = **(a2 + 1);
        v54 = *(*(a2 + 1) + 8);
        v55 = **(a2 + 1);
        if (v55 != v54)
        {
          for (; v55 != v54 - 1; v54 = *(*(a2 + 1) + 8))
          {
            v56 = *v55++;
            sub_2982E0CAC(v9, v56);
            ((**v9)[1])(*v9, ", ", 2);
          }

          sub_2982E0CAC(v9, *(v54 - 1));
        }

        ((**v9)[1])(*v9, "],\n", 3);
        v57 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v57 = *v35;
        }

        ((**v9)[1])(*v9, v57, v34);
        ((**v9)[1])(*v9, "subtype: ", 11);
        v58 = *(a2 + 1);
        if (*(v58 + 25) == 1)
        {
          sub_2982E0CAC(v9, *(v58 + 24));
        }

        else
        {
          ((**v9)[1])(*v9, "null", 4);
        }

        (***v9)(*v9, 10);
        if (*(v9 + 631) < 0)
        {
          v59 = *v35;
        }

        v60 = (**v9)[1];
        goto LABEL_104;
      }

      v52 = *(v9 + 631);
    }

    std::string::resize((v9 + 76), 2 * v52, 32);
    v37 = *v9;
    v38 = v9 + 76;
    if ((*(v9 + 631) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v15 = *result;
      v16 = **v9;
      if (!*(*(a2 + 1) + 16))
      {
        v43 = v16[1];
        goto LABEL_46;
      }

      if (!a3)
      {
        (*v16)();
        v44 = *(a2 + 1);
        v45 = *v44;
        if (v44[2] == 1)
        {
          v46 = *v44;
        }

        else
        {
          v61 = 0;
          do
          {
            (***v9)(*v9, 34);
            sub_2982E0660(v9, v45 + 4, a4);
            ((**v9)[1])(*v9, ":", 2);
            sub_2982DF464(v9, v45 + 7, 0, a4, a5, a6);
            (***v9)();
            v62 = v45[1];
            if (v62)
            {
              do
              {
                v46 = v62;
                v62 = *v62;
              }

              while (v62);
            }

            else
            {
              do
              {
                v46 = v45[2];
                v63 = *v46 == v45;
                v45 = v46;
              }

              while (!v63);
            }

            ++v61;
            v45 = v46;
          }

          while (v61 < *(*(a2 + 1) + 16) - 1);
        }

        (***v9)(*v9, 34);
        sub_2982E0660(v9, v46 + 4, a4);
        ((**v9)[1])(*v9, ":", 2);
        sub_2982DF464(v9, v46 + 7, 0, a4, a5, a6);
        goto LABEL_105;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = v9 + 76;
      v19 = *(v9 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = v9[77];
        if (v20 < v17)
        {
          goto LABEL_120;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(v9 + 631);
LABEL_120:
        std::string::resize((v9 + 76), 2 * v20, 32);
      }

      v64 = *(a2 + 1);
      v65 = *v64;
      if (v64[2] == 1)
      {
        v66 = *v64;
      }

      else
      {
        v67 = 0;
        do
        {
          v68 = v9 + 76;
          if (*(v9 + 631) < 0)
          {
            v68 = *v18;
          }

          ((**v9)[1])(*v9, v68, (a6 + a5));
          (***v9)();
          sub_2982E0660(v9, v65 + 4, a4);
          ((**v9)[1])(*v9, ": ", 3);
          sub_2982DF464(v9, v65 + 7, 1, a4, a5, (a6 + a5));
          ((**v9)[1])(*v9, ",\n", 2);
          v69 = v65[1];
          if (v69)
          {
            do
            {
              v66 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v66 = v65[2];
              v63 = *v66 == v65;
              v65 = v66;
            }

            while (!v63);
          }

          ++v67;
          v65 = v66;
        }

        while (v67 < *(*(a2 + 1) + 16) - 1);
      }

      v70 = v9 + 76;
      if (*(v9 + 631) < 0)
      {
        v70 = *v18;
      }

      ((**v9)[1])(*v9, v70, (a6 + a5));
      (***v9)();
      sub_2982E0660(v9, v66 + 4, a4);
      ((**v9)[1])(*v9, ": ", 3);
      sub_2982DF464(v9, v66 + 7, 1, a4, a5, (a6 + a5));
      (***v9)();
      if (*(v9 + 631) < 0)
      {
        v71 = *v18;
      }

      v60 = (**v9)[1];
LABEL_104:
      v60();
LABEL_105:
      v13 = ***v9;
      goto LABEL_117;
    }

    v22 = *result;
    v13 = (**v9)[1];
LABEL_61:

    return v13();
  }

  switch(v10)
  {
    case 2u:
      v24 = *result;
      v25 = **v9;
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        if (!a3)
        {
          (*v25)();
          v47 = *(a2 + 1);
          for (i = *v47; ; i += 16)
          {
            v49 = v47[1];
            if (i == v49 - 16)
            {
              break;
            }

            sub_2982DF464(v9, i, 0, a4, a5, a6);
            (***v9)();
            v47 = *(a2 + 1);
          }

          sub_2982DF464(v9, v49 - 16, 0, a4, a5, a6);
LABEL_116:
          v13 = ***v9;
LABEL_117:

          return v13();
        }

        v25[1]();
        v26 = a6 + a5;
        v27 = v9 + 76;
        v28 = *(v9 + 631);
        if ((v28 & 0x80000000) != 0)
        {
          v29 = v9[77];
          if (v29 < v26)
          {
            goto LABEL_121;
          }
        }

        else if (v26 > v28)
        {
          v29 = *(v9 + 631);
LABEL_121:
          std::string::resize((v9 + 76), 2 * v29, 32);
        }

        v72 = *(a2 + 1);
        v73 = *v72;
        if (*v72 != v72[1] - 16)
        {
          do
          {
            v74 = v9 + 76;
            if (*(v9 + 631) < 0)
            {
              v74 = *v27;
            }

            ((**v9)[1])(*v9, v74, (a6 + a5));
            sub_2982DF464(v9, v73, 1, a4, a5, (a6 + a5));
            ((**v9)[1])(*v9, ",\n", 2);
            v73 += 16;
          }

          while (v73 != *(*(a2 + 1) + 8) - 16);
        }

        v75 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v75 = *v27;
        }

        ((**v9)[1])(*v9, v75, (a6 + a5));
        sub_2982DF464(v9, *(*(a2 + 1) + 8) - 16, 1, a4, a5, (a6 + a5));
        (***v9)();
        if (*(v9 + 631) < 0)
        {
          v27 = *v27;
        }

        ((**v9)[1])(*v9, v27, a6);
        goto LABEL_116;
      }

      v43 = v25[1];
LABEL_46:

      return v43();
    case 3u:
      v31 = *result;
      (***v9)();
      sub_2982E0660(v9, *(a2 + 1), a4);
      v13 = ***v9;
      goto LABEL_117;
    case 4u:
      v12 = *result;
      v13 = (**v9)[1];
      a2[8];
      goto LABEL_61;
  }

  return result;
}

void sub_2982E0464(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB55D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C287C70);
}

void sub_2982E0508(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_2982E0648(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2982D89F4(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2982E0660(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v3 >> 63;
  v15 = result + 90;
  do
  {
    v16 = *a2;
    if ((v14 & 1) == 0)
    {
      v16 = a2;
    }

    v17 = *(v16 + v9);
    if (v12)
    {
      v13 = *(v16 + v9) & 0x3F | (v13 << 6);
    }

    else
    {
      v13 = (0xFFu >> byte_2983048C1[v17]) & v17;
    }

    v12 = byte_2983048C1[16 * v12 + 256 + byte_2983048C1[v17]];
    if (v12 == 1)
    {
      v19 = *(v7 + 158);
      if ((v19 - 1) < 2)
      {
        v9 -= v10 != 0;
        if (v19 != 1)
        {
LABEL_50:
          v12 = 0;
          v10 = 0;
          v8 = v11;
          goto LABEL_51;
        }

        v20 = v15 + v11;
        if (a3)
        {
          *v20 = 1717990748;
          *(v20 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v20 = -16401;
          *(v20 + 2) = -67;
        }

        goto LABEL_48;
      }

      if (!v19)
      {
        v45 = 3;
        *__str = 0;
        snprintf(__str, 3uLL, "%.2X", v17);
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v38, v9);
        v28 = std::string::insert(&v38, 0, "invalid UTF-8 byte at index ");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        v30 = std::string::append(&v39, ": 0x");
        v31 = *&v30->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if (v45 >= 0)
        {
          v32 = __str;
        }

        else
        {
          v32 = *__str;
        }

        if (v45 >= 0)
        {
          v33 = v45;
        }

        else
        {
          v33 = v44;
        }

        v34 = std::string::append(&v40, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v42 = v34->__r_.__value_.__r.__words[2];
        v41 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_2982E116C(316, &v41, exception);
        __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
      }

      v12 = 1;
    }

    else
    {
      if (!v12)
      {
        if (v13 <= 11)
        {
          switch(v13)
          {
            case 8:
              v18 = 25180;
              goto LABEL_47;
            case 9:
              v18 = 29788;
              goto LABEL_47;
            case 10:
              v18 = 28252;
              goto LABEL_47;
          }
        }

        else if (v13 > 33)
        {
          if (v13 == 34)
          {
            v18 = 8796;
            goto LABEL_47;
          }

          if (v13 == 92)
          {
            v18 = 23644;
            goto LABEL_47;
          }
        }

        else
        {
          if (v13 == 12)
          {
            v18 = 26204;
            goto LABEL_47;
          }

          if (v13 == 13)
          {
            v18 = 29276;
LABEL_47:
            *(v15 + v8) = v18;
            v11 = v8 + 2;
            goto LABEL_48;
          }
        }

        if (v13 > 0x7E)
        {
          v21 = a3;
        }

        else
        {
          v21 = 0;
        }

        if (v13 >= 0x20 && v21 == 0)
        {
          v11 = v8 + 1;
          *(v15 + v8) = *(v16 + v9);
        }

        else if (HIWORD(v13))
        {
          result = snprintf((v15 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v13 >> 10) - 10304), v13 & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v15 + v8), 7uLL, "\\u%04x", v13);
          v11 = v8 + 6;
        }

LABEL_48:
        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v15);
          v12 = 0;
          v11 = 0;
          v10 = 0;
          v8 = 0;
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      if ((a3 & 1) == 0)
      {
        *(v15 + v8++) = *(v16 + v9);
      }

      ++v10;
    }

LABEL_51:
    ++v9;
    v23 = *(a2 + 23);
    v14 = v23 >> 63;
    v24 = a2[1];
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *(a2 + 23);
    }
  }

  while (v9 < v24);
  if (v12)
  {
    v26 = *(v7 + 158);
    switch(v26)
    {
      case 1:
        (*(**v7 + 8))(*v7, v15, v11);
        v25 = *(**v7 + 8);
        break;
      case 2:
        v25 = *(**v7 + 8);
        break;
      case 0:
        v45 = 3;
        *__str = 0;
        v36 = *a2;
        if ((v23 & 0x80000000) == 0)
        {
          v36 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v36 + v24 - 1));
        v37 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        sub_2982E116C(316, &v41, v37);
        __cxa_throw(v37, &unk_2A1EB5688, sub_2982E12B0);
      default:
        return result;
    }

LABEL_60:

    return v25();
  }

  if (v8)
  {
    v25 = *(**v7 + 8);
    goto LABEL_60;
  }

  return result;
}

void sub_2982E0BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      if (*(v41 - 89) < 0)
      {
        operator delete(*(v41 - 112));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

uint64_t sub_2982E0CAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = *&a00010203040506[2 * (a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = *&a00010203040506[2 * a2];
  return (*(**a1 + 8))();
}

uint64_t sub_2982E0D84(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  v3 = a1 + 2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    *v3 = 45;
    v2 = -v2;
    if (v2 >= 0xA)
    {
      v6 = 4;
      v10 = v2;
      while (1)
      {
        if (v10 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_24;
        }

        if (v10 <= 0x3E7)
        {
          break;
        }

        if (v10 >> 4 < 0x271)
        {
          goto LABEL_24;
        }

        v6 += 4;
        v9 = v10 >= 0x186A0;
        v10 /= 0x2710uLL;
        if (!v9)
        {
          v6 -= 3;
          goto LABEL_24;
        }
      }

      --v6;
    }

    else
    {
      v6 = 1;
    }

LABEL_24:
    v7 = v6 + 1;
  }

  else
  {
    if (v2 < 0xA)
    {
      v4 = a1 + 17;
LABEL_32:
      *(v4 - 1) = v2 | 0x30;
      return (*(**a1 + 8))();
    }

    v7 = 4;
    v8 = v2;
    while (1)
    {
      if (v8 <= 0x63)
      {
        v7 -= 2;
        goto LABEL_25;
      }

      if (v8 <= 0x3E7)
      {
        break;
      }

      if (v8 >> 4 < 0x271)
      {
        goto LABEL_25;
      }

      v7 += 4;
      v9 = v8 >= 0x186A0;
      v8 /= 0x2710uLL;
      if (!v9)
      {
        v7 -= 3;
        goto LABEL_25;
      }
    }

    --v7;
  }

LABEL_25:
  v4 = &v3[v7];
  if (v2 < 0x64)
  {
    v11 = v2;
  }

  else
  {
    do
    {
      v11 = v2 / 0x64;
      *(v4 - 1) = *&a00010203040506[2 * (v2 % 0x64) + 200];
      v4 -= 2;
      v12 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v12 > 0x270);
  }

  if (v11 < 0xA)
  {
    LOBYTE(v2) = v11;
    goto LABEL_32;
  }

  *(v4 - 1) = *&a00010203040506[2 * v11 + 200];
  return (*(**a1 + 8))();
}

uint64_t sub_2982E0F6C(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  if (a2 < 0xA)
  {
    v3 = a1 + 17;
LABEL_20:
    *(v3 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  v5 = 4;
  v6 = a2;
  while (1)
  {
    if (v6 <= 0x63)
    {
      v5 -= 2;
      goto LABEL_13;
    }

    if (v6 <= 0x3E7)
    {
      break;
    }

    if (v6 >> 4 < 0x271)
    {
      goto LABEL_13;
    }

    v7 = v6 >> 5;
    v6 /= 0x2710uLL;
    v5 += 4;
    if (v7 <= 0xC34)
    {
      v5 -= 3;
      goto LABEL_13;
    }
  }

  --v5;
LABEL_13:
  v3 = a1 + v5 + 16;
  if (a2 < 0x64)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = v2 / 0x64;
      *(v3 - 2) = *&a00010203040506[2 * (v2 % 0x64) + 400];
      v3 -= 2;
      v9 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v9 > 0x270);
  }

  if (v8 < 0xA)
  {
    LOBYTE(v2) = v8;
    goto LABEL_20;
  }

  *(v3 - 2) = *&a00010203040506[2 * v8 + 400];
  return (*(**a1 + 8))();
}

uint64_t sub_2982E10BC(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    sub_2982E16D0(a1 + 16, a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

void sub_2982E116C(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2982E1488(&__p, "type_error");
  sub_2982E1304(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_2982E1540(a3, a1, v11);
  *a3 = &unk_2A1EB56B0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2982E1268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E12B0(std::exception *a1)
{
  a1->__vftable = &unk_2A1EB56D8;
  MEMORY[0x29C2879F0](&a1[2]);

  std::exception::~exception(a1);
}

void sub_2982E1304(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
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

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "] ");
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_2982E1424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2982E1488(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2982DE6F4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_2982E1540(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_2A1EB56D8;
  *(a1 + 8) = a2;
  MEMORY[0x29C2879E0](a1 + 16, a3);
  return a1;
}

void sub_2982E15A4(std::exception *a1)
{
  a1->__vftable = &unk_2A1EB56D8;
  MEMORY[0x29C2879F0](&a1[2]);
  std::exception::~exception(a1);

  JUMPOUT(0x29C287C70);
}

void sub_2982E1614(std::exception *a1)
{
  a1->__vftable = &unk_2A1EB56D8;
  MEMORY[0x29C2879F0](&a1[2]);

  std::exception::~exception(a1);
}

void sub_2982E1668(std::exception *a1)
{
  a1->__vftable = &unk_2A1EB56D8;
  MEMORY[0x29C2879F0](&a1[2]);
  std::exception::~exception(a1);

  JUMPOUT(0x29C287C70);
}

uint64_t sub_2982E16D0(_BYTE *a1, double a2)
{
  v2 = a1;
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    *a1 = 45;
    v2 = a1 + 1;
  }

  if (a2 == 0.0)
  {
    *v2 = 11824;
    result = (v2 + 3);
    v2[2] = 48;
    return result;
  }

  v12 = 0;
  sub_2982E18F0(v2, &v12 + 1, &v12, a2);
  v4 = SHIDWORD(v12);
  v5 = v12 + SHIDWORD(v12);
  if ((v12 & 0x80000000) == 0 && v5 <= 15)
  {
    memset(&v2[SHIDWORD(v12)], 48, v12);
    *&v2[v5] = 12334;
    return &v2[v5 + 2];
  }

  if ((v5 - 16) >= 0xFFFFFFF1)
  {
    v7 = &v2[v5];
    memmove(v7 + 1, v7, SHIDWORD(v12) - v5);
    *v7 = 46;
    return &v2[v4 + 1];
  }

  if (v5 == 0 || v5 >= 0xFFFFFFFD)
  {
    v6 = -v5;
    memmove(&v2[v6 + 2], v2, SHIDWORD(v12));
    *v2 = 11824;
    memset(v2 + 2, 48, v6);
    return &v2[v6 + 2 + v4];
  }

  if (HIDWORD(v12) != 1)
  {
    memmove(v2 + 2, v2 + 1, SHIDWORD(v12) - 1);
    v2[1] = 46;
    v2 += v4;
  }

  v8 = v5 - 1;
  if (v5 >= 1)
  {
    v9 = 43;
  }

  else
  {
    v9 = 45;
  }

  v2[2] = v9;
  v2[1] = 101;
  if (v5 - 1 < 0)
  {
    v8 = 1 - v5;
  }

  if (v8 > 9)
  {
    if (v8 > 0x63)
    {
      v2[3] = v8 / 0x64 + 48;
      v8 %= 0x64u;
      v10 = v2 + 5;
      v2[4] = (v8 / 0xAu) | 0x30;
      LOBYTE(v8) = v8 % 0xAu;
      v11 = 4;
      goto LABEL_25;
    }

    v10 = v2 + 4;
    v2[3] = (v8 / 0xAu) | 0x30;
    LOBYTE(v8) = v8 % 0xAu;
  }

  else
  {
    v10 = v2 + 4;
    v2[3] = 48;
  }

  v11 = 3;
LABEL_25:
  result = &v2[v11 + 2];
  *v10 = v8 | 0x30;
  return result;
}

uint64_t sub_2982E18F0(uint64_t a1, int *a2, _DWORD *a3, double a4)
{
  sub_2982E1A18(v20, a4);
  v27 = v20[1];
  v26 = v20[0];
  v25[0] = v21;
  v25[1] = v22;
  if (-61 - v22 <= 0)
  {
    v7 = 78913 * (-61 - v22) / 0x40000;
  }

  else
  {
    v7 = 78913 * (-61 - v22) / 0x40000 + 1;
  }

  v8 = (&unk_298304CB0 + 16 * (((v7 + 307 + (((v7 + 307) >> 28) & 7)) << 16) >> 19));
  v9 = v8[1];
  v23 = *v8;
  v24 = v9;
  v10 = sub_2982E1AC0(&v26, &v23);
  v12 = v11;
  v13 = sub_2982E1AC0(&v27, &v23);
  v15 = v14;
  v16 = sub_2982E1AC0(v25, &v23);
  *a3 = -HIDWORD(v9);
  return sub_2982E1B20(a1, a2, a3, v13 + 1, v15, v10, v12, v18, v16 - 1, v17);
}

void sub_2982E1A18(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (*&a2 >> 52)
  {
    v5 = (*&a2 >> 52) + 4294966221;
    v3 = 2 * (v2 | 0x10000000000000);
    v4 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
    v6 = (*&a2 >> 52) - 1076;
    if (*&a2 >> 53 && !v2)
    {
      v7 = (*&a2 >> 52) - 53;
      v8 = 0x3FFFFFFFFFFFFFLL;
      v2 = 0x10000000000000;
      goto LABEL_8;
    }

    v2 |= 0x10000000000000uLL;
  }

  else
  {
    v3 = 2 * *&a2;
    v4 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    LODWORD(v5) = -1074;
    v6 = -1075;
  }

  v8 = v3 - 1;
  v7 = v6;
  do
  {
LABEL_8:
    v4 *= 2;
    --v6;
  }

  while ((v4 & 0x8000000000000000) == 0);
  do
  {
    v2 *= 2;
    LODWORD(v5) = v5 - 1;
  }

  while ((v2 & 0x8000000000000000) == 0);
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8 << (v7 - v6);
  *(a1 + 24) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
}

unint64_t sub_2982E1AC0(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t sub_2982E1B20(uint64_t result, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int a10)
{
  v10 = a9 - a4;
  v11 = a9 - a6;
  v12 = -a10;
  v13 = 1 << -a10;
  v14 = a9 >> -a10;
  v15 = (v13 - 1) & a9;
  if (v14 <= 0x3B9AC9FF)
  {
    if (v14 <= 0x5F5E0FF)
    {
      if (v14 <= 0x98967F)
      {
        if (v14 <= 0xF423F)
        {
          v18 = v14 >> 5;
          v19 = v14 >> 4;
          if (v14 <= 9)
          {
            v20 = 1;
          }

          else
          {
            v20 = 10;
          }

          if (v14 <= 9)
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v14 <= 0x63)
          {
            v22 = v20;
          }

          else
          {
            v22 = 100;
          }

          if (v14 <= 0x63)
          {
            v23 = v21;
          }

          else
          {
            v23 = 3;
          }

          if (v14 <= 0x3E7)
          {
            v24 = v22;
          }

          else
          {
            v24 = 1000;
          }

          if (v14 <= 0x3E7)
          {
            v25 = v23;
          }

          else
          {
            v25 = 4;
          }

          if (v19 <= 0x270)
          {
            v26 = v24;
          }

          else
          {
            v26 = 10000;
          }

          if (v19 <= 0x270)
          {
            v27 = v25;
          }

          else
          {
            v27 = 5;
          }

          v28 = v18 > 0xC34;
          if (v18 > 0xC34)
          {
            v16 = 100000;
          }

          else
          {
            v16 = v26;
          }

          if (v28)
          {
            v17 = 6;
          }

          else
          {
            v17 = v27;
          }
        }

        else
        {
          v16 = 1000000;
          v17 = 7;
        }
      }

      else
      {
        v16 = 10000000;
        v17 = 8;
      }
    }

    else
    {
      v16 = 100000000;
      v17 = 9;
    }
  }

  else
  {
    v16 = 1000000000;
    v17 = 10;
  }

  v29 = result - 1;
  v30 = a6 - a9;
  while (v17 > 0)
  {
    v31 = v14 / v16;
    v14 = v14 % v16;
    v32 = *a2;
    *a2 = v32 + 1;
    *(result + v32) = v31 + 48;
    --v17;
    v33 = (v14 << v12) + v15;
    if (v10 >= v33)
    {
      *a3 += v17;
      v34 = v16 << v12;
      v35 = v33 < v11 && v10 - v33 >= v34;
      if (!v35)
      {
        return result;
      }

      v36 = *a2;
      v37 = v11 - v33;
      v38 = v15 + (v14 << v12) + v34;
      v39 = v10 - v38;
      do
      {
        if (v38 >= v11 && v37 <= v30 + v38)
        {
          break;
        }

        --*(v29 + v36);
        if (v38 >= v11)
        {
          break;
        }

        v37 -= v34;
        v38 += v34;
        v35 = v39 >= v34;
        v39 -= v34;
      }

      while (v35);
    }

    else
    {
      v16 /= 0xAu;
    }

    if (v10 >= v33)
    {
      return result;
    }
  }

  v40 = 0;
  do
  {
    v41 = v10;
    v42 = v11;
    v43 = 5 * v15;
    v44 = *a2;
    *a2 = v44 + 1;
    *(result + v44) = ((2 * v43) >> v12) + 48;
    v10 = 10 * v41;
    v11 *= 10;
    --v40;
    v15 = (v13 - 1) & (2 * v43);
  }

  while (10 * v41 < v15);
  *a3 += v40;
  if (v15 < v11 && 10 * v41 - v15 >= v13)
  {
    v45 = *a2;
    v46 = 10 * v42 - v15;
    v47 = v13 + v15;
    v48 = 10 * v41 - v47;
    v49 = -10 * v42;
    do
    {
      if (v47 >= v11 && v46 <= v49 + v47)
      {
        break;
      }

      --*(v29 + v45);
      if (v47 >= v11)
      {
        break;
      }

      v46 -= v13;
      v47 += v13;
      v35 = v48 >= v13;
      v48 -= v13;
    }

    while (v35);
  }

  return result;
}

uint64_t sub_2982E1DE4(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  return a1;
}

void sub_2982E1E24(uint64_t *a1, int a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2 == 1)
  {
    sub_2982E216C(&v29, *(*a1 + 16));
    v6 = *a1 + 8;
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v30;
      do
      {
        if (v8 >= v31)
        {
          v8 = sub_2982E24E8(&v29, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          *(v7 + 56) = 0;
          v7[8] = 0;
          v8 += 16;
        }

        v30 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    sub_2982E216C(&v29, (*(*a1 + 8) - **a1) >> 4);
    v4 = **a1;
    v5 = *(*a1 + 8);
    while (v4 != v5)
    {
      sub_2982E2228(&v29, v4);
      v4 += 16;
    }
  }

  for (i = v30; v29 != v30; i = v30)
  {
    LOBYTE(v27) = *(i - 16);
    v28 = *(i - 8);
    *(i - 16) = 0;
    *(i - 8) = 0;
    v13 = v30 - 16;
    sub_2982E1E24(v30 - 8, *(v30 - 16));
    v30 = v13;
    if (v27 == 1)
    {
      v19 = v28;
      v20 = v28 + 1;
      v21 = *v28;
      if (*v28 != v28 + 1)
      {
        do
        {
          if (v13 >= v31)
          {
            v13 = sub_2982E24E8(&v29, (v21 + 7));
          }

          else
          {
            *v13 = *(v21 + 56);
            *(v13 + 8) = v21[8];
            *(v21 + 56) = 0;
            v21[8] = 0;
            v13 += 16;
          }

          v30 = v13;
          v22 = v21[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v21[2];
              v11 = *v23 == v21;
              v21 = v23;
            }

            while (!v11);
          }

          v21 = v23;
        }

        while (v23 != v20);
        v19 = v28;
      }

      sub_2982E2600(v19, *(v19 + 8));
      *v19 = v19 + 8;
      *(v19 + 16) = 0;
      *(v19 + 8) = 0;
    }

    else if (v27 == 2)
    {
      v14 = v28;
      v15 = *v28;
      v16 = v28[1];
      if (*v28 != v16)
      {
        do
        {
          sub_2982E2228(&v29, v15);
          v15 += 16;
        }

        while (v15 != v16);
        v14 = v28;
        v15 = *v28;
        v16 = v28[1];
      }

      if (v16 != v15)
      {
        v17 = v16 - 8;
        do
        {
          v18 = v17 - 8;
          sub_2982E1E24(v17, *(v17 - 8));
          v17 -= 16;
        }

        while (v18 != v15);
      }

      v14[1] = v15;
    }

    sub_2982E1E24(&v28, v27);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v24 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v26 = *v24;
        goto LABEL_51;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_54;
      }

      v24 = *a1;
      v25 = **a1;
      if (v25)
      {
        v24[1] = v25;
        v26 = v25;
LABEL_51:
        operator delete(v26);
        goto LABEL_52;
      }
    }

LABEL_53:
    operator delete(v24);
    goto LABEL_54;
  }

  if (a2 == 1)
  {
    sub_2982E2600(*a1, *(*a1 + 8));
    goto LABEL_52;
  }

  if (a2 == 2)
  {
    v27 = *a1;
    sub_2982E26C4(&v27);
LABEL_52:
    v24 = *a1;
    goto LABEL_53;
  }

LABEL_54:
  v27 = &v29;
  sub_2982E26C4(&v27);
}

void *sub_2982E216C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_2982E236C(result, a2);
    }

    sub_2982DE7D0();
  }

  return result;
}

void sub_2982E2214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2982E2228(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2982DE7D0();
    }

    v9 = v5 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v20 = result;
    if (v10)
    {
      sub_2982E236C(result, v10);
    }

    v11 = 16 * v7;
    v17 = 0;
    v18 = v11;
    *(&v19 + 1) = 0;
    *v11 = *a2;
    *(v11 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    *&v19 = 16 * v7 + 16;
    v12 = *(result + 8);
    v13 = 16 * v7 + *result - v12;
    sub_2982E23B4(result, *result, v12, v13);
    v14 = *v3;
    *v3 = v13;
    v15 = *(v3 + 16);
    v16 = v19;
    *(v3 + 8) = v19;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v17 = v14;
    v18 = v14;
    result = sub_2982E2494(&v17);
    v6 = v16;
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_2982E2358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

void sub_2982E236C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2982DE79C();
}

uint64_t sub_2982E23B4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      *(a4 + 8) = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    v6 = a2;
    do
    {
      v7 = *v6;
      v6 += 16;
      result = sub_2982E1E24(a2 + 8, v7);
      a2 = v6;
    }

    while (v6 != a3);
  }

  return result;
}

uint64_t sub_2982E242C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_2982E1E24(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t sub_2982E2494(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_2982E1E24(v4 + 8, v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2982E24E8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2982DE7D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_2982E236C(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v17 = 16 * v2 + 16;
  v9 = *(a1 + 8);
  v10 = 16 * v2 + *a1 - v9;
  sub_2982E23B4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_2982E2494(&v15);
  return v14;
}

void sub_2982E25EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

void sub_2982E2600(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_2982E2600(a1, *a2);
    sub_2982E2600(a1, *(a2 + 1));
    sub_2982E1E24(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_2982E2670(uint64_t a1, uint64_t a2)
{
  sub_2982E1E24((a2 + 32), *(a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_2982E26C4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 8;
      do
      {
        v7 = (v6 - 8);
        sub_2982E1E24(v6, *(v6 - 8));
        v6 -= 16;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2982E2760(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if ((*(this + 36) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
      goto LABEL_54;
    }

    return;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v86 = *a2;
  v87 = a2[1].n128_i64[0];
  MetricFileMetadataHelper::getSubfieldType((a3 + 16), &v86, HIDWORD(v8), &v81);
  v86 = *&v81.__r_.__value_.__l.__data_;
  v87 = v81.__r_.__value_.__r.__words[2];
  BuiltinType = MetadataHelper::getBuiltinType(a3 + 16, &v86);
  v12 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      v82.__r_.__value_.__r.__words[0] = 0;
      if (v9 > 1u)
      {
        if (v9 == 2)
        {
          if (!v10 && (*(this + 36) & 1) != 0)
          {
            return;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_93;
          }

          v86.n128_u32[0] = 0;
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v86))
          {
            v82.__r_.__value_.__r.__words[0] = v86.n128_u32[0];
            goto LABEL_93;
          }

          if (!v10 && (*(this + 36) & 1) != 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v82) & 1) == 0)
          {
            if (!v10 && (*(this + 36) & 1) != 0)
            {
              return;
            }

            goto LABEL_122;
          }

LABEL_93:
          v29 = v82.__r_.__value_.__r.__words[0];
          switch(v12)
          {
            case 1:
            case 15:
              v33 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode(v82.__r_.__value_.__l.__data_);
              v83 = *a2->n128_u8;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              v31 = sub_2982E47D0(a3, &v86, v10);
              v86 = 0uLL;
              v87 = 0;
              if (v12 == 11)
              {
                v84 = v83;
                sub_2982E4854(a3, &v84, v10, v33, &v85);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

              else if (v12 == 12)
              {
                v34 = sub_2982F5120(a3, v33 != 0.0);
                MEMORY[0x29C287A60](&v86, v34);
              }

              v70 = HIBYTE(v87);
              if (v87 < 0)
              {
                v70 = v86.n128_u64[1];
              }

              if (!v70)
              {
                v85 = v83;
                v71 = sub_2982E4B00(a3, &v85, v10);
                (v71)(&v85, a3, v33);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

              goto LABEL_247;
            case 2:
            case 16:
              v30 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode(v82.__r_.__value_.__l.__data_);
              v83 = *a2->n128_u8;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              v31 = sub_2982E47D0(a3, &v86, v10);
              v86 = 0uLL;
              v87 = 0;
              if (v12 == 11)
              {
                v84 = v83;
                sub_2982E4854(a3, &v84, v10, v30, &v85);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

              else if (v12 == 12)
              {
                v32 = sub_2982F5120(a3, v30 != 0.0);
                MEMORY[0x29C287A60](&v86, v32);
              }

              v68 = HIBYTE(v87);
              if (v87 < 0)
              {
                v68 = v86.n128_u64[1];
              }

              if (!v68)
              {
                v85 = v83;
                v69 = sub_2982E4E80(a3, &v85, v10);
                (v69)(&v85, a3, v30);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

LABEL_247:
              sub_2982F5088(a3, v31, &v86);
              goto LABEL_248;
            case 3:
            case 11:
            case 17:
            case 25:
              v85.__r_.__value_.__r.__words[0] = v82.__r_.__value_.__r.__words[0];
              goto LABEL_105;
            case 4:
            case 10:
            case 18:
            case 24:
              v85.__r_.__value_.__r.__words[0] = v82.__r_.__value_.__r.__words[0];
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              sub_2982E4150(a3, &v85, &v86, v10, v12);
              return;
            case 5:
            case 19:
              v85.__r_.__value_.__r.__words[0] = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode(v82.__r_.__value_.__r.__words[0]);
LABEL_105:
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              sub_2982E4490(a3, &v85, &v86, v10, v12);
              return;
            case 6:
            case 20:
              LODWORD(v85.__r_.__value_.__l.__data_) = v82.__r_.__value_.__l.__data_;
              goto LABEL_107;
            case 7:
            case 9:
            case 21:
            case 23:
              LODWORD(v85.__r_.__value_.__l.__data_) = v82.__r_.__value_.__l.__data_;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              sub_2982E42F0(a3, &v85, &v86, v10, v12);
              return;
            case 8:
            case 22:
              LODWORD(v85.__r_.__value_.__l.__data_) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode(v82.__r_.__value_.__l.__data_);
LABEL_107:
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              sub_2982E4630(a3, &v85, &v86, v10, v12);
              return;
            case 12:
            case 26:
              v84 = *a2->n128_u8;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              v35 = sub_2982E47D0(a3, &v86, v10);
              v86 = 0uLL;
              v87 = 0;
              if (v12 != 12)
              {
                goto LABEL_112;
              }

              v36 = sub_2982F5120(a3, v29 != 0);
              MEMORY[0x29C287A60](&v86, v36);
              v37 = HIBYTE(v87);
              if (v87 < 0)
              {
                v37 = v86.n128_u64[1];
              }

              if (!v37)
              {
LABEL_112:
                v85 = v84;
                v38 = sub_2982E5044(a3, &v85, v10);
                (v38)(&v85, a3, v29 != 0);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

              sub_2982F5088(a3, v35, &v86);
LABEL_248:
              if (SHIBYTE(v87) < 0)
              {
                operator delete(v86.n128_u64[0]);
              }

              return;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C2879E0](exception, "This should never happen, no matter what the input!");
              goto LABEL_54;
          }
        }

        v26 = *(this + 1);
        if (v26 < *(this + 2) && (*v26 & 0x8000000000000000) == 0)
        {
          v82.__r_.__value_.__r.__words[0] = *v26;
          *(this + 1) = v26 + 1;
          goto LABEL_93;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v82))
        {
          goto LABEL_93;
        }

        if (!v10 && (*(this + 36) & 1) != 0)
        {
          return;
        }
      }

LABEL_122:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
LABEL_54:
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      LODWORD(v84.__r_.__value_.__l.__data_) = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v84))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v84.__r_.__value_.__l.__data_) = *v24;
        *(this + 1) = v24 + 1;
      }

      v86 = 0uLL;
      v87 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        v85 = *a2->n128_u8;
        sub_2982E3D60(a3, &v86, &v85, v10);
      }

      if ((SHIBYTE(v87) & 0x80000000) == 0)
      {
        goto LABEL_220;
      }

      v64 = v86.n128_u64[0];
      goto LABEL_219;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        v86.n128_u64[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v86.n128_u64))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v86.n128_u64[0] = 0;
        if (!sub_2982E3C28(this, v86.n128_u64))
        {
          goto LABEL_51;
        }
      }

      v39 = v86.n128_u64[0];
LABEL_224:
      sub_2982E3FC0(a3, v39, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      v86.n128_u32[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v86))
      {
        goto LABEL_51;
      }

      v39 = v86.n128_u32[0];
      goto LABEL_224;
    }

    LODWORD(v85.__r_.__value_.__l.__data_) = 0;
    if (!sub_2982E3C54(this, &v85))
    {
      goto LABEL_51;
    }

    sub_2982DE234(&v86, LODWORD(v85.__r_.__value_.__l.__data_));
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v86.n128_u64[0]);
    if (String)
    {
      sub_2982E4084(a3, v86.n128_u64[0], v86.n128_u64[1] - v86.n128_u64[0], v10);
    }

LABEL_217:
    v64 = v86.n128_u64[0];
    if (!v86.n128_u64[0])
    {
      goto LABEL_220;
    }

    v86.n128_u64[1] = v86.n128_u64[0];
LABEL_219:
    operator delete(v64);
LABEL_220:
    if ((String & 1) == 0)
    {
      goto LABEL_51;
    }

    return;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_51;
      }

      LODWORD(v82.__r_.__value_.__l.__data_) = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v82))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v82.__r_.__value_.__l.__data_) = *v25;
        *(this + 1) = v25 + 1;
      }

      v84.__r_.__value_.__r.__words[0] = this;
      LODWORD(v84.__r_.__value_.__r.__words[1]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      ++*(this + 14);
      v83.__r_.__value_.__r.__words[0] = this;
      v86 = *a2;
      v87 = a2[1].n128_i64[0];
      v85 = v81;
      sub_2982E3E98(a3, this, &v86, v10, &v85);
      sub_2982E3F84(&v83);
      v65 = *(this + 14);
      v66 = __OFSUB__(v65, 1);
      v67 = v65 - 1;
      if (v67 < 0 == v66)
      {
        *(this + 14) = v67;
      }

      sub_2982DDC0C(&v84);
      return;
    }

    LODWORD(v84.__r_.__value_.__l.__data_) = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || (data = *v27, (data & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v84))
      {
        goto LABEL_51;
      }

      data = v84.__r_.__value_.__l.__data_;
    }

    else
    {
      LODWORD(v84.__r_.__value_.__l.__data_) = *v27;
      *(this + 1) = v27 + 1;
    }

    sub_2982DE234(&v86, data);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v86.n128_u64[0]);
    if (String)
    {
      v85 = *a2->n128_u8;
      sub_2982E3DF4(a3, &v86, &v85, v10);
    }

    goto LABEL_217;
  }

  v80 = 0;
  v16 = *(this + 1);
  if (v16 >= *(this + 2) || *v16 < 0)
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
    {
      goto LABEL_51;
    }
  }

  else
  {
    v80 = *v16;
    *(this + 1) = v16 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType(v14);
  WireTypeForType = wis::reflect::getWireTypeForType(UnpackedType);
  v78 = this;
  v79 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  __p = 0;
  v76 = 0;
  v77 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
        {
          if (v14 > 20)
          {
            if (v14 <= 23)
            {
              if (v14 == 22)
              {
                sub_2982E6418(&__p, &v86);
                v85 = *a2->n128_u8;
                sub_2982E624C(a3, &v86, &v85, v10, UnpackedType);
              }

              else
              {
                sub_2982E5B14(&__p, &v86);
                v85 = *a2->n128_u8;
                sub_2982E5948(a3, &v86, &v85, v10, UnpackedType);
              }

LABEL_197:
              v62 = v86.n128_u64[0];
              if (v86.n128_u64[0])
              {
                v86.n128_u64[1] = v86.n128_u64[0];
                goto LABEL_199;
              }

LABEL_200:
              if (__p)
              {
                v76 = __p;
                operator delete(__p);
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              return;
            }

            if (v14 == 26)
            {
              sub_2982E5D88(&__p, &v83);
              v82 = *a2->n128_u8;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              v74 = sub_2982E47D0(a3, &v86, v10);
              v41 = v83.__r_.__value_.__r.__words[0];
              if (v83.__r_.__value_.__l.__size_ > 0x3F || (v83.__r_.__value_.__s.__data_[8] & 0x3F) != 0)
              {
                v73 = v83.__r_.__value_.__s.__data_[8] & 0x3F;
                v48 = 0;
                v49 = 0;
                v50 = v83.__r_.__value_.__r.__words[0] + 8 * (v83.__r_.__value_.__l.__size_ >> 6);
                do
                {
                  v51 = 1 << v49;
                  v86 = 0uLL;
                  v87 = 0;
                  v52 = v49;
                  if (UnpackedType == 11)
                  {
                    v84 = v82;
                    sub_2982E4854(a3, &v84, v10, (*v41 >> v49) & 1, &v85);
                    if (SHIBYTE(v87) < 0)
                    {
                      operator delete(v86.n128_u64[0]);
                    }

                    v86 = *&v85.__r_.__value_.__l.__data_;
                    v87 = v85.__r_.__value_.__r.__words[2];
                  }

                  else if (UnpackedType == 12)
                  {
                    v53 = sub_2982F5120(a3, (*v41 & v51) != 0);
                    MEMORY[0x29C287A60](&v86, v53);
                  }

                  v54 = HIBYTE(v87);
                  if (v87 < 0)
                  {
                    v54 = v86.n128_u64[1];
                  }

                  if (!v54)
                  {
                    if (!v48)
                    {
                      v85 = v82;
                      v48 = sub_2982E5044(a3, &v85, v10);
                    }

                    (v48)(&v85, a3, (*v41 & v51) != 0);
                    if (SHIBYTE(v87) < 0)
                    {
                      operator delete(v86.n128_u64[0]);
                    }

                    v86 = *&v85.__r_.__value_.__l.__data_;
                    v87 = v85.__r_.__value_.__r.__words[2];
                  }

                  sub_2982F5088(a3, v74, &v86);
                  if (SHIBYTE(v87) < 0)
                  {
                    operator delete(v86.n128_u64[0]);
                  }

                  v41 += v52 == 63;
                  if (v52 == 63)
                  {
                    v49 = 0;
                  }

                  else
                  {
                    v49 = v52 + 1;
                  }
                }

                while (v41 != v50 || v49 != v73);
                v41 = v83.__r_.__value_.__r.__words[0];
              }

              if (!v41)
              {
                goto LABEL_200;
              }

              goto LABEL_193;
            }

            if (v14 == 25)
            {
LABEL_196:
              sub_2982E5FD8(&__p, &v86);
              v85 = *a2->n128_u8;
              sub_2982E5E0C(a3, &v86, &v85, v10, UnpackedType);
              goto LABEL_197;
            }

            if (v14 != 24)
            {
LABEL_250:
              v72 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C2879E0](v72, "This should never happen, no matter what the input!");
              __cxa_throw(v72, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }
          }

          else
          {
            if (v14 <= 17)
            {
              switch(v14)
              {
                case 0xF:
                  sub_2982E580C(&__p, &v83.__r_.__value_.__l.__data_);
                  v82 = *a2->n128_u8;
                  v86 = *a2;
                  v87 = a2[1].n128_i64[0];
                  v40 = sub_2982E47D0(a3, &v86, v10);
                  size = v83.__r_.__value_.__l.__size_;
                  v41 = v83.__r_.__value_.__r.__words[0];
                  if (v83.__r_.__value_.__r.__words[0] == v83.__r_.__value_.__l.__size_)
                  {
LABEL_191:
                    if (!v41)
                    {
                      goto LABEL_200;
                    }

                    v83.__r_.__value_.__l.__size_ = v41;
LABEL_193:
                    v62 = v41;
LABEL_199:
                    operator delete(v62);
                    goto LABEL_200;
                  }

                  v43 = v40;
                  v44 = 0;
                  do
                  {
                    v45 = *v41;
                    v86 = 0uLL;
                    v87 = 0;
                    if (UnpackedType == 11)
                    {
                      v84 = v82;
                      sub_2982E4854(a3, &v84, v10, v45, &v85);
                      if (SHIBYTE(v87) < 0)
                      {
                        operator delete(v86.n128_u64[0]);
                      }

                      v86 = *&v85.__r_.__value_.__l.__data_;
                      v87 = v85.__r_.__value_.__r.__words[2];
                    }

                    else if (UnpackedType == 12)
                    {
                      v46 = sub_2982F5120(a3, v45 != 0.0);
                      MEMORY[0x29C287A60](&v86, v46);
                    }

                    v47 = HIBYTE(v87);
                    if (v87 < 0)
                    {
                      v47 = v86.n128_u64[1];
                    }

                    if (!v47)
                    {
                      if (!v44)
                      {
                        v85 = v82;
                        v44 = sub_2982E4B00(a3, &v85, v10);
                      }

                      (v44)(&v85, a3, v45);
                      if (SHIBYTE(v87) < 0)
                      {
                        operator delete(v86.n128_u64[0]);
                      }

                      v86 = *&v85.__r_.__value_.__l.__data_;
                      v87 = v85.__r_.__value_.__r.__words[2];
                    }

                    sub_2982F5088(a3, v43, &v86);
                    if (SHIBYTE(v87) < 0)
                    {
                      operator delete(v86.n128_u64[0]);
                    }

                    ++v41;
                  }

                  while (v41 != size);
                  break;
                case 0x10:
                  sub_2982E5C4C(&__p, &v83.__r_.__value_.__l.__data_);
                  v82 = *a2->n128_u8;
                  v86 = *a2;
                  v87 = a2[1].n128_i64[0];
                  v55 = sub_2982E47D0(a3, &v86, v10);
                  v56 = v83.__r_.__value_.__l.__size_;
                  v41 = v83.__r_.__value_.__r.__words[0];
                  if (v83.__r_.__value_.__r.__words[0] == v83.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_191;
                  }

                  v57 = v55;
                  v58 = 0;
                  do
                  {
                    v59 = *v41;
                    v86 = 0uLL;
                    v87 = 0;
                    if (UnpackedType == 11)
                    {
                      v84 = v82;
                      sub_2982E4854(a3, &v84, v10, v59, &v85);
                      if (SHIBYTE(v87) < 0)
                      {
                        operator delete(v86.n128_u64[0]);
                      }

                      v86 = *&v85.__r_.__value_.__l.__data_;
                      v87 = v85.__r_.__value_.__r.__words[2];
                    }

                    else if (UnpackedType == 12)
                    {
                      v60 = sub_2982F5120(a3, v59 != 0.0);
                      MEMORY[0x29C287A60](&v86, v60);
                    }

                    v61 = HIBYTE(v87);
                    if (v87 < 0)
                    {
                      v61 = v86.n128_u64[1];
                    }

                    if (!v61)
                    {
                      if (!v58)
                      {
                        v85 = v82;
                        v58 = sub_2982E4E80(a3, &v85, v10);
                      }

                      (v58)(&v85, a3, v59);
                      if (SHIBYTE(v87) < 0)
                      {
                        operator delete(v86.n128_u64[0]);
                      }

                      v86 = *&v85.__r_.__value_.__l.__data_;
                      v87 = v85.__r_.__value_.__r.__words[2];
                    }

                    sub_2982F5088(a3, v57, &v86);
                    if (SHIBYTE(v87) < 0)
                    {
                      operator delete(v86.n128_u64[0]);
                    }

                    v41 = (v41 + 4);
                  }

                  while (v41 != v56);
                  break;
                case 0x11:
                  goto LABEL_196;
                default:
                  goto LABEL_250;
              }

              v41 = v83.__r_.__value_.__r.__words[0];
              goto LABEL_191;
            }

            if (v14 != 18)
            {
              if (v14 == 19)
              {
                sub_2982E6110(&__p, &v86);
                v85 = *a2->n128_u8;
                sub_2982E5E0C(a3, &v86, &v85, v10, UnpackedType);
              }

              else
              {
                sub_2982E5B14(&__p, &v86);
                v85 = *a2->n128_u8;
                sub_2982E624C(a3, &v86, &v85, v10, UnpackedType);
              }

              goto LABEL_197;
            }
          }

          sub_2982E578C(&__p, &v86);
          v85 = *a2->n128_u8;
          sub_2982E55C0(a3, &v86, &v85, v10, UnpackedType);
          goto LABEL_197;
        }

        v86.n128_u64[0] = 0;
        sub_2982E3C80(&__p, &v86);
        if (WireTypeForType > 1)
        {
          break;
        }

        if (WireTypeForType)
        {
          if (WireTypeForType == 1)
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76 - 1);
LABEL_31:
            if ((LittleEndian64Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          v21 = v76 - 1;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
            goto LABEL_31;
          }

          *v21 = v23;
          *(this + 1) = v22 + 1;
        }
      }

      if (WireTypeForType != 5)
      {
        break;
      }

      v86.n128_u32[0] = 0;
      LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v86);
      *(v76 - 1) = v86.n128_u32[0];
      if ((LittleEndian32Fallback & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  while (WireTypeForType != 2);
LABEL_48:
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
LABEL_51:
  if (v10 || (*(this + 36) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

uint64_t sub_2982E3BF0(uint64_t a1)
{
  sub_2982DDC40(a1 + 56);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  return a1;
}

uint64_t sub_2982E3C28(wireless_diagnostics::google::protobuf::io::CodedInputStream *a1, unint64_t *a2)
{
  v2 = *(a1 + 1);
  if (v2 >= *(a1 + 2))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a1, a2);
  }

  v3 = *v2;
  if ((v3 & 0x8000000000000000) != 0)
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a1, a2);
  }

  *a2 = v3;
  *(a1 + 1) = v2 + 1;
  return 1;
}

uint64_t sub_2982E3C54(wireless_diagnostics::google::protobuf::io::CodedInputStream *a1, unsigned int *a2)
{
  v2 = *(a1 + 1);
  if (v2 >= *(a1 + 2))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a1, a2);
  }

  v3 = *v2;
  if ((v3 & 0x80000000) != 0)
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a1, a2);
  }

  *a2 = v3;
  *(a1 + 1) = v2 + 1;
  return 1;
}

void sub_2982E3C80(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2982DE7D0();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2982E5578(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_2982E3D60(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  v7 = *a3;
  v6 = sub_2982E47D0(a1, &v7, a4);
  sub_2982F5164(a2, &v7);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v7;
  sub_2982F5088(a1, v6, a2);
}

void sub_2982E3DF4(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  __p = *a3;
  v6 = sub_2982E47D0(a1, &__p, a4);
  sub_2982F53CC(*(a2 + 8) - *a2, *a2, &__p);
  sub_2982F5088(a1, v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2982E3E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2982E3E98(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, __int128 *a3, unsigned int a4, __int128 *a5)
{
  v10 = *a3;
  v11 = *(a3 + 2);
  v8 = sub_2982E47D0(a1, &v10, a4);
  sub_2982F5074(a1);
  std::string::append(*a1, v8);
  std::string::append(*a1, " {\n");
  ++*(a1 + 8);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
  {
    do
    {
      v10 = *a5;
      v11 = *(a5 + 2);
      sub_2982E2760(a2);
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) > 0);
  }

  --*(a1 + 8);
  sub_2982F5074(a1);
  return std::string::append(*a1, "}\n");
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2982E3F84(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2982E3FC0(uint64_t a1, unint64_t a2, unsigned int __val)
{
  sub_2982F5154(__val, &v7);
  sub_2982F5144(a2, &__p);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  sub_2982F5088(a1, v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_2982E4050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E4084(uint64_t a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  sub_2982F5154(__val, &v9);
  sub_2982F53CC(a3, a2, &__p);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  sub_2982F5088(a1, v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_2982E411C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E4150(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2982E47D0(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982E4854(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2982F5120(a1, *a2 != 0);
    MEMORY[0x29C287A60](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2982E4944(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2982F5088(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982E42C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E42F0(uint64_t a1, _DWORD *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2982E47D0(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982E4854(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2982F5120(a1, *a2 != 0);
    MEMORY[0x29C287A60](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2982E4CC4(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2982F5088(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982E4468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E4490(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2982E47D0(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982E4854(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2982F5120(a1, *a2 != 0);
    MEMORY[0x29C287A60](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2982E5200(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2982F5088(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982E4608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E4630(uint64_t a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2982E47D0(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982E4854(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2982F5120(a1, *a2 != 0);
    MEMORY[0x29C287A60](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2982E53BC(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2982F5088(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982E47A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2982E47D0(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v6, a3, &v8);
  *a2 = v8;
  *(a2 + 2) = v9;
  Field = MetadataHandle::getField(a2);
  if (!Field)
  {
    return &unk_29830425A;
  }

  result = *(Field + 8);
  if (!result)
  {
    return &unk_29830425A;
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

_BYTE *sub_2982E4854@<X0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v15, a3, &v17);
  *a2 = v17;
  *(a2 + 2) = v18;
  result = MetadataHandle::getEnum(a2);
  if (!result)
  {
    return sub_2982E1488(a5, &unk_29830425A);
  }

  v9 = *(result + 1);
  v10 = *(result + 2);
  if (v9 == v10)
  {
    return sub_2982E1488(a5, &unk_29830425A);
  }

  while (1)
  {
    v11 = *v9;
    v12 = (*(*v9 + 32) & 2) != 0 ? 24 : 16;
    if (*(v11 + v12) == a4)
    {
      break;
    }

    if (++v9 == v10)
    {
      return sub_2982E1488(a5, &unk_29830425A);
    }
  }

  v13 = *(v11 + 8);
  if (*(v13 + 23) < 0)
  {
    return sub_2982DE100(a5, *v13, *(v13 + 1));
  }

  v14 = *v13;
  *(a5 + 16) = *(v13 + 2);
  *a5 = v14;
  return result;
}

uint64_t (*sub_2982E4944(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982E4A10;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2982E4A10;
    if (Field)
    {
      v5 = sub_2982E4A10;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982E4A10;
        if (v8 <= 0x1F)
        {
          return off_2A1EB56F0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982E4A2C(unint64_t a1@<X1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2982E4A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982E4B00(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = j_std::to_string;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = j_std::to_string;
    if (Field)
    {
      v5 = j_std::to_string;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = j_std::to_string;
        if (v8 <= 0x1F)
        {
          return off_2A1EB57F0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982E4BF0(std::string *a1@<X8>, double a2@<D0>)
{
  sub_2982FF1DC(a2, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2982E4C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982E4CC4(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982E4D90;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2982E4D90;
    if (Field)
    {
      v5 = sub_2982E4D90;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982E4D90;
        if (v8 <= 0x1F)
        {
          return off_2A1EB58F0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982E4DAC(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2982E4E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982E4E80(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = j_std::to_string;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = j_std::to_string;
    if (Field)
    {
      v5 = j_std::to_string;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = j_std::to_string;
        if (v8 <= 0x1F)
        {
          return off_2A1EB59F0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982E4F70(std::string *a1@<X8>, float a2@<S0>)
{
  sub_2982FF1DC(a2, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2982E4FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982E5044(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982E5110;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2982E5110;
    if (Field)
    {
      v5 = sub_2982E5110;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982E5110;
        if (v8 <= 0x1F)
        {
          return off_2A1EB5AF0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982E512C(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2982E519C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982E5200(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982E52CC;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2982E52CC;
    if (Field)
    {
      v5 = sub_2982E52CC;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982E52CC;
        if (v8 <= 0x1F)
        {
          return off_2A1EB5BF0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982E52E8(unint64_t a1@<X1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}