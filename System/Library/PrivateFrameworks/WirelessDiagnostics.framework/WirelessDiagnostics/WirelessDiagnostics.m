void sub_2742E8198()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void awd::metrics::protobuf_AddDesc_SimpleMetric_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_280AC1090 & 1) == 0)
  {
    byte_280AC1090 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/WirelessDiagnostics/AWDMetrics/cpp/SimpleMetric.pb.cc", a4);
    operator new();
  }
}

double sub_2742E8280()
{
  qword_280AC1000 = 850045863;
  result = 0.0;
  unk_280AC1008 = 0u;
  unk_280AC1018 = 0u;
  unk_280AC1028 = 0u;
  qword_280AC1038 = 0;
  qword_280AC0FF0 = 0;
  *algn_280AC0FF8 = 0;
  return result;
}

double sub_2742E82B8()
{
  qword_280AC1048 = 850045863;
  result = 0.0;
  *algn_280AC1050 = 0u;
  *&algn_280AC1050[16] = 0u;
  *&algn_280AC1050[32] = 0u;
  qword_280AC1080 = 0;
  xmmword_280AC0FE0 = 0uLL;
  return result;
}

void awd::profile::protobuf_AddDesc_AwdProfile_2eproto(awd::profile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_280948919 & 1) == 0)
  {
    byte_280948919 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/WirelessDiagnostics/AWDMetrics/cpp/AwdProfile.pb.cc", a4);
    operator new();
  }
}

void *awd::profile::Condition::InitAsDefaultInstance(void *this)
{
  v1 = this;
  v2 = awd::profile::TypeVariant::default_instance_;
  if (awd::profile::TypeVariant::default_instance_)
  {
    this[2] = awd::profile::TypeVariant::default_instance_;
LABEL_4:
    v1[4] = v2;
LABEL_5:
    v1[5] = v2;
    goto LABEL_6;
  }

  this = awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  v2 = awd::profile::TypeVariant::default_instance_;
  v1[2] = awd::profile::TypeVariant::default_instance_;
  if (v2)
  {
    goto LABEL_4;
  }

  this = awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  v2 = awd::profile::TypeVariant::default_instance_;
  v1[4] = awd::profile::TypeVariant::default_instance_;
  if (v2)
  {
    goto LABEL_5;
  }

  this = awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
  v2 = awd::profile::TypeVariant::default_instance_;
  v1[5] = awd::profile::TypeVariant::default_instance_;
  if (!v2)
  {
    this = awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this);
    v2 = awd::profile::TypeVariant::default_instance_;
  }

LABEL_6:
  v1[6] = v2;
  return this;
}

void sub_2742E8B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742E8B80(void *a1@<X8>)
{
  std::mutex::lock(&qword_280AC1048);
  if (!xmmword_280AC0FE0)
  {
    sub_2743068B8();
  }

  v2 = *(&xmmword_280AC0FE0 + 1);
  *a1 = xmmword_280AC0FE0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(&qword_280AC1048);
}

void *sub_2742E8D20(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_2742F4E5C();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t *sub_2742E8D64(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_2742E8DB8(v3);
    }

    MEMORY[0x2743E9A90](v2, 0x60C40A44E5E0CLL);
  }

  return a1;
}

void sub_2742E8DB8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t *sub_2742E8E24(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  ComponentForMetricId = awd::getComponentForMetricId(*(*a1 + 2));
  v4 = sub_2742E8FF8(v2, ComponentForMetricId);
  v5 = v1[2];
  sub_2742E92C4(v4, *(v1 + 2));
  MEMORY[0x2743E9A90](v1, 0x1020C40A122CEF7);
  return sub_2742E8D64(&v7);
}

void sub_2742E8E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2743E9A90](v2, 0x1020C40A122CEF7);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t awd::serializeMetric@<X0>(awd *this@<X0>, const wireless_diagnostics::google::protobuf::MessageLite *a2@<X1>, char **a3@<X8>)
{
  v6 = (*(*this + 72))(this);
  awd::createTagForProtobuf(a2, v6, a3);
  v7 = *a3;
  v8 = a3[1] - *a3;
  v9 = v8 + v6;
  if (v8 >= v9)
  {
    if (v8 > v9)
    {
      a3[1] = &v7[v9];
    }
  }

  else
  {
    sub_2742E9850(a3, v6);
    v7 = *a3;
  }

  return MEMORY[0x2743E9840](this, &v7[v8], v6);
}

void sub_2742E8F78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double awd::SimpleMetricHelper::saveMetric(awd::SimpleMetricHelper *this, awd::Metric *a2, awd::metrics::SimpleMetric *a3, wireless_diagnostics::google::protobuf::MessageLite *a4)
{
  *a2 = a4;
  awd::serializeMetric(a3, a4, &v7);
  v5 = *(a2 + 2);
  if (v5)
  {
    *(a2 + 3) = v5;
    operator delete(v5);
  }

  result = *&v7;
  *(a2 + 1) = v7;
  *(a2 + 4) = v8;
  return result;
}

_DWORD *sub_2742E8FF8(uint64_t a1, unsigned int a2)
{
  v5 = a2;
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  if (v2 != v3)
  {
    while (**v2 != a2)
    {
      v2 += 8;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_7:
    v6 = a1 + 32;
    sub_274306B94();
  }

  return *v2;
}

void sub_2742E9190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_274306CE4(va);
  _Unwind_Resume(a1);
}

uint64_t awd::SimpleMetricHelper::makeSimpleMetric@<X0>(awd::SimpleMetricHelper *this@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  Metric = awd::SimpleMetricHelper::shouldCreateMetric(this, a2);
  if (Metric)
  {
    awd::getAWDTimestamp(Metric);
    operator new();
  }

  return awd::SimpleMetricHelper::maybeBufferMetric(this, a3);
}

{
  *a3 = 0;
  Metric = awd::SimpleMetricHelper::shouldCreateMetric(this, a2);
  if (Metric)
  {
    awd::getAWDTimestamp(Metric);
    operator new();
  }

  return awd::SimpleMetricHelper::maybeBufferMetric(this, a3);
}

{
  *a3 = 0;
  Metric = awd::SimpleMetricHelper::shouldCreateMetric(this, a2);
  if (Metric)
  {
    awd::getAWDTimestamp(Metric);
    operator new();
  }

  return awd::SimpleMetricHelper::maybeBufferMetric(this, a3);
}

{
  *a3 = 0;
  Metric = awd::SimpleMetricHelper::shouldCreateMetric(this, a2);
  if (Metric)
  {
    awd::getAWDTimestamp(Metric);
    operator new();
  }

  return awd::SimpleMetricHelper::maybeBufferMetric(this, a3);
}

void sub_2742E9264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  awd::metrics::SimpleMetric::~SimpleMetric(va);
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    sub_2742F0E58(v2, v4);
  }

  _Unwind_Resume(a1);
}

void sub_2742E92C4(unsigned int *a1, unsigned int a2)
{
  awd::SimpleMetricHelper::makeSimpleMetric((a1 + 52), a2, &v4);
  if (v4)
  {
    sub_2743056E0(a1, &v4);
    v3 = v4;
    v4 = 0;
    if (v3)
    {
      sub_2742F0E58(&v4, v3);
    }
  }
}

void sub_2742E9320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    sub_2742F0E58(&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t awd::SimpleMetricHelper::shouldCreateMetric(awd::SimpleMetricHelper *this, unsigned int a2)
{
  if (*(this + 4) == 1)
  {
    if (a2 == 0x20000)
    {
      v2 = *(this + 5);
    }

    else
    {
      v3 = *(this + 1);
      v4 = *(this + 2);
      if (v4 == v3)
      {
        goto LABEL_13;
      }

      v5 = v4 - v3;
      do
      {
        v6 = v5 >> 1;
        v7 = &v3[v5 >> 1];
        v9 = *v7;
        v8 = v7 + 1;
        v5 += ~(v5 >> 1);
        if (v9 < a2)
        {
          v3 = v8;
        }

        else
        {
          v5 = v6;
        }
      }

      while (v5);
      if (v3 == v4)
      {
LABEL_13:
        v2 = 0;
      }

      else
      {
        v2 = *v3 <= a2;
      }
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t awd::Metric::Metric(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 1;
  return this;
}

{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 1;
  return this;
}

void sub_2742E9434(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void sub_2742E9444(uint64_t a1, uint64_t a2)
{
  sub_2742E9494(a2 + 8, *(a2 + 16));
  v3 = *a2;
  if (*a2)
  {

    dispatch_release(v3);
  }
}

void sub_2742E9494(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2742E9494(a1, *a2);
    sub_2742E9494(a1, a2[1]);
    sub_274308738((a2 + 4));

    operator delete(a2);
  }
}

void sub_2742E94F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t awd::metrics::SimpleMetric::SimpleMetric(uint64_t this)
{
  *this = &unk_288351DB0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = MEMORY[0x277D82C30];
  *(this + 48) = 0;
  *(this + 36) = 0;
  return this;
}

{
  *this = &unk_288351DB0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = MEMORY[0x277D82C30];
  *(this + 48) = 0;
  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::SimpleMetric::ByteSize(awd::metrics::SimpleMetric *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    if (v2)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 13);
      if ((v2 & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v5 = *(this + 8);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 2;
      v2 = *(this + 13);
    }

    else
    {
      v6 = 3;
    }

    v3 += v6;
LABEL_11:
    if ((v2 & 4) != 0)
    {
      v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
      v2 = *(this + 13);
      if ((v2 & 8) == 0)
      {
LABEL_13:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_17;
      }
    }

    else if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 13);
    if ((v2 & 0x10) == 0)
    {
LABEL_26:
      result = ((v2 >> 4) & 2) + v3;
      goto LABEL_27;
    }

LABEL_17:
    v7 = *(this + 5);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v2 = *(this + 13);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v3 += v12 + v8 + 1;
    goto LABEL_26;
  }

  result = 0;
LABEL_27:
  *(this + 12) = result;
  return result;
}

void sub_2742E968C(uint64_t a1, _BYTE *a2)
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
      sub_2742EAB3C();
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

void sub_2742E977C(uint64_t a1, unsigned int a2)
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
      sub_2742E968C(a1, &v7);
      v4 = v2 >> 7;
      v5 = v2 >> 14;
      v2 >>= 7;
    }

    while (v5);
  }

  v6 = v4;
  sub_2742E968C(a1, &v6);
}

void awd::createTagForProtobuf(awd *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2742E977C(a3, (8 * this) | 2);
  sub_2742E977C(a3, a2);
}

void sub_2742E9834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742E9850(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2742EAB3C();
    }

    v9 = v4 - v6;
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

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t awd::metrics::SimpleMetric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 36), a2, a4);
    if ((*(v5 + 52) & 2) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 2) == 0)
  {
    return this;
  }

LABEL_13:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v8, a2, a4);
}

void awd::metrics::SimpleMetric::~SimpleMetric(awd::metrics::SimpleMetric *this)
{
  *this = &unk_288351DB0;
  awd::metrics::SimpleMetric::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288351DB0;
  awd::metrics::SimpleMetric::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288351DB0;
  awd::metrics::SimpleMetric::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::metrics::SimpleMetric::SharedDtor(uint64_t this)
{
  v1 = *(this + 40);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x2743E9A90);
  }

  return this;
}

uint64_t awd::SimpleMetricHelper::maybeBufferMetric(uint64_t result, uint64_t *a2)
{
  if ((*(result + 4) & 1) == 0)
  {
    v3 = result;
    v5 = *(result + 40);
    v4 = *(result + 48);
    if (v5 >= v4)
    {
      v8 = result + 32;
      v9 = v3[4];
      v10 = v5 - v9;
      v11 = (v5 - v9) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        sub_2742EAB3C();
      }

      v13 = v4 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      v22[4] = v3 + 4;
      if (v15)
      {
        sub_2742E9C40(v8, v15);
      }

      v16 = v11;
      v17 = (8 * v11);
      v18 = *a2;
      *a2 = 0;
      v19 = &v17[-v16];
      *v17 = v18;
      v7 = v17 + 1;
      memcpy(v19, v9, v10);
      v20 = v3[4];
      v3[4] = v19;
      v3[5] = v7;
      v21 = v3[6];
      v3[6] = 0;
      v22[2] = v20;
      v22[3] = v21;
      v22[0] = v20;
      v22[1] = v20;
      result = sub_2742E9C88(v22);
    }

    else
    {
      v6 = *a2;
      *a2 = 0;
      *v5 = v6;
      v7 = v5 + 8;
    }

    v3[5] = v7;
  }

  return result;
}

void sub_2742E9C40(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2742ECF1C();
}

uint64_t sub_2742E9C88(uint64_t a1)
{
  sub_2742E9CC0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2742E9CC0(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      sub_2742F0E58(result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

uint64_t sub_2742E9F44(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    sub_2742E9F30();
  }

  return result;
}

void awd::asString(unsigned int *a1@<X0>, std::string *a2@<X8>)
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

void sub_2742EA150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

const char *awd::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_279ED6B48[a1];
  }
}

void *awd::tagSerializedProtobuf(int a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a2;
  v5 = v3 - v4;
  v6 = (8 * a1) | 2;
  if ((8 * a1) < 0x80)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      __src[v7++] = v6 | 0x80;
      v8 = v6 >> 14;
      v6 >>= 7;
    }

    while (v8);
  }

  v9 = (v7 + 1);
  __src[v7] = v6;
  if (v5 < 0x80)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v15[v10++] = v5 | 0x80;
      v11 = v5 >> 14;
      v5 >>= 7;
    }

    while (v11);
  }

  v12 = (v10 + 1);
  v15[v10] = v5;
  v14 = 0;
  result = sub_2742EA368(a2, v4, (v12 + v9), &v14);
  if (v9)
  {
    result = memcpy(*a2, __src, v9);
  }

  if (v12)
  {
    return memcpy((*a2 + v9), v15, v12);
  }

  return result;
}

char *sub_2742EA368(uint64_t a1, char *a2, size_t a3, char *a4)
{
  v4 = a2;
  if (a3)
  {
    v5 = a4;
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8 - v9 >= a3)
    {
      v15 = v9 - a2;
      if (a3 <= v9 - a2)
      {
        v16 = *(a1 + 8);
        v17 = a3;
      }

      else
      {
        memset(*(a1 + 8), *a4, a3 - (v9 - a2));
        v16 = &v4[a3];
        *(a1 + 8) = &v4[a3];
        if (!v15)
        {
          return v4;
        }

        v17 = v9 - v4;
      }

      v18 = &v4[a3];
      v19 = v16;
      if (&v16[-a3] < v9)
      {
        if (a3 <= v15)
        {
          v20 = v9 - v4;
        }

        else
        {
          v20 = a3;
        }

        v21 = &v4[-a3];
        v22 = v4;
        do
        {
          v22[v20] = v21[v20];
          ++v21;
          ++v22;
        }

        while (&v21[v20] != v9);
        if (a3 <= v15)
        {
          v23 = v9 - v4;
        }

        else
        {
          v23 = a3;
        }

        v19 = &v22[v23];
      }

      *(a1 + 8) = v19;
      if (v16 != v18)
      {
        memmove(&v4[a3], v4, v16 - v18);
      }

      if (v4 <= v5)
      {
        if (*(a1 + 8) <= v5)
        {
          v24 = 0;
        }

        else
        {
          v24 = a3;
        }

        v5 += v24;
      }

      memset(v4, *v5, v17);
    }

    else
    {
      v10 = *a1;
      v11 = &v9[a3 - *a1];
      if (v11 < 0)
      {
        sub_2742EAB3C();
      }

      v12 = (a2 - v10);
      v13 = v8 - v10;
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      if (v14)
      {
        operator new();
      }

      v25 = a2 - v10;
      memset(v12, *a4, a3);
      v26 = &v12[a3];
      v27 = v9 - v4;
      memcpy(v26, v4, v9 - v4);
      *(a1 + 8) = v4;
      v28 = &v12[v10 - v4];
      memcpy(v28, v10, v25);
      *a1 = v28;
      *(a1 + 8) = &v26[v27];
      *(a1 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      return v12;
    }
  }

  return v4;
}

void awd::serializeMetric(uint64_t a1@<X0>, awd *a2@<X1>, uint64_t a3@<X8>)
{
  PB::Writer::Writer(&v6);
  (*(*a1 + 24))(a1, &v6);
  awd::createTagForProtobuf(a2, v6 - v7, a3);
  sub_2742EAD14(a3, *(a3 + 8), v7, v6, v6 - v7);
  PB::Writer::~Writer(&v6);
}

void sub_2742EA604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

uint64_t awd::GetProtobufTag@<X0>(uint64_t this@<X0>, const unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (this)
  {
    v4 = this;
    v8 = this;
    v6 = sub_2742EA748(&v8, &a2[this]);
    if ((v6 & 7) != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2743E98B0](exception, &unk_2743220EF);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *(a3 + 4) = v6 >> 3;
    this = sub_2742EA748(&v8, &a2[v4]);
    *a3 = (v8 - v4);
    a3[1] = this;
  }

  return this;
}

void sub_2742EA700(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_free_exception(v17);
  __cxa_begin_catch(a1);
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;

  __cxa_end_catch();
}

uint64_t sub_2742EA748(void *a1, _BYTE *a2)
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
    MEMORY[0x2743E98B0](exception, &unk_2743220EF);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
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

uint64_t awd::getCoreAnalyticsEventName(awd *this)
{
  sub_2742EA9D0(&v3);
  v1 = sub_2742EB100(&v3, "com.apple.awd.0x", 16);
  *(v1 + *(*v1 - 24) + 8) = *(v1 + *(*v1 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x2743E9960]();
  std::stringbuf::str();
  v3 = *MEMORY[0x277D82828];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x277D82828] + 24);
  v4 = MEMORY[0x277D82878] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x2743E9A40](&v7);
}

void sub_2742EA9AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2742EABF8(va, MEMORY[0x277D82828]);
  MEMORY[0x2743E9A40](v2 + 112);
  _Unwind_Resume(a1);
}

uint64_t *sub_2742EA9D0(uint64_t *a1)
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
  sub_2742EAF3C((a1 + 1), 16);
  return a1;
}

void sub_2742EAB14(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2743E9A40](v1);
  _Unwind_Resume(a1);
}

void sub_2742EAB68(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2742EABC4(exception, a1);
  __cxa_throw(exception, off_279ED6B30, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2742EABC4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2742EABF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

char *sub_2742EAD14(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_2742EAB3C();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_2742EAF3C(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743E99D0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_2742EAFF8(a1);
  return a1;
}

void sub_2742EAFD0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2742EAFF8(uint64_t a1)
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

void *sub_2742EB100(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2743E9930](v13, a1);
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

    if (!sub_2742EB2A8(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2743E9940](v13);
  return a1;
}

void sub_2742EB240(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2743E9940](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2742EB220);
}

uint64_t sub_2742EB2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        sub_2742EB490();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
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

void sub_2742EB474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t awd::ServerConnectionInfo::ServerConnectionInfo(uint64_t a1, NSObject **a2, int a3, char a4)
{
  v7 = sub_2742EB53C(a1, a2, "conn.info");
  *(v7 + 10) = a3;
  *(v7 + 44) = a4;
  awd::AWDLoggingMetric::AWDLoggingMetric((v7 + 6));
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  return a1;
}

void *sub_2742EB53C(void *a1, NSObject **a2, char *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.awd.framework", a3);
  return a1;
}

void awd::ServerConnectionInfo::setComponentConfig_sync(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::AWDLoggingMetric::setConfiguration(a1 + 48, &v7);
  if (v8)
  {
    sub_2742E8DB8(v8);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    (*(v5 + 16))();
  }

  if (*(a1 + 168))
  {
    v6 = *a2;
    wireless_diagnostics::google::protobuf::MessageLite::SerializeToString();
    (*(*(a1 + 168) + 16))();
  }
}

void sub_2742EB674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t awd::ServerConnectionInfo::trigger_sync@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int **a4@<X3>, const void **a5@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  awd::AWDLoggingMetric::trigger(a1 + 48, a2, a3);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v8 = *a4;
  v9 = a4[1];
  if (*a4 != v9)
  {
    v10 = (a1 + 120);
    do
    {
      v11 = *v8;
      v12 = *v10;
      if (!*v10)
      {
        goto LABEL_11;
      }

      v13 = a1 + 120;
      do
      {
        v14 = *(v12 + 32);
        v15 = v14 >= v11;
        v16 = v14 < v11;
        if (v15)
        {
          v13 = v12;
        }

        v12 = *(v12 + 8 * v16);
      }

      while (v12);
      if (v13 != v10 && v11 >= *(v13 + 32))
      {
        v19 = a5[1];
        v18 = a5[2];
        if (v19 >= v18)
        {
          v21 = *a5;
          v22 = v19 - *a5;
          v23 = v22 >> 2;
          v24 = (v22 >> 2) + 1;
          if (v24 >> 62)
          {
            sub_2742EAB3C();
          }

          v25 = v18 - v21;
          if (v25 >> 1 > v24)
          {
            v24 = v25 >> 1;
          }

          v15 = v25 >= 0x7FFFFFFFFFFFFFFCLL;
          v26 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v15)
          {
            v26 = v24;
          }

          if (v26)
          {
            sub_2742ECF9C(a5, v26);
          }

          *(4 * v23) = v11;
          v20 = 4 * v23 + 4;
          memcpy(0, v21, v22);
          v27 = *a5;
          *a5 = 0;
          a5[1] = v20;
          a5[2] = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v19 = v11;
          v20 = (v19 + 4);
        }

        a5[1] = v20;
        v28 = *(v13 + 40);
        if (v28)
        {
          v29 = _Block_copy(v28);
        }

        else
        {
          v29 = 0;
        }

        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 1174405120;
        block[2] = sub_2742EB9D0;
        block[3] = &unk_2883518B8;
        block[4] = a1;
        v38 = v11;
        if (v29)
        {
          v31 = _Block_copy(v29);
        }

        else
        {
          v31 = 0;
        }

        aBlock = v31;
        dispatch_async(global_queue, block);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v29)
        {
          _Block_release(v29);
        }
      }

      else
      {
LABEL_11:
        v17 = *(a1 + 32);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v40 = v11;
          _os_log_impl(&dword_2742E7000, v17, OS_LOG_TYPE_INFO, "server.conn:#I No queriable callback for metric id 0x%x", buf, 8u);
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }

  result = *(a1 + 160);
  if (result)
  {
    result = (*(result + 16))(result, HIDWORD(a2), a2, a3);
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2742EB98C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2742EB9D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_27431C5F0(a1, v2);
  }

  v3 = *(a1 + 48);
  return (*(*(a1 + 40) + 16))();
}

void *sub_2742EBA2C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_2742EBA60(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t awd::ServerConnectionInfo::triggerAnalyticsQuery_sync(awd::ServerConnectionInfo *this, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(this + 20);
  if (v4)
  {
    v5 = 1;
    (*(v4 + 16))(*(this + 20), a2, 1, a3);
  }

  else
  {
    v6 = *(this + 15);
    if (v6)
    {
      v7 = this + 120;
      do
      {
        v8 = *(v6 + 8);
        v9 = v8 >= a2;
        v10 = v8 < a2;
        if (v9)
        {
          v7 = v6;
        }

        v6 = *&v6[8 * v10];
      }

      while (v6);
      if (v7 != this + 120 && *(v7 + 8) <= a2)
      {
        dispatch_get_global_queue(0, 0);
        v14 = *(v7 + 5);
        if (v14)
        {
          _Block_copy(v14);
        }

        operator new();
      }
    }

    v11 = *(this + 4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&dword_2742E7000, v11, OS_LOG_TYPE_INFO, "server.conn:#I No queriable callback for metric id 0x%x for analytics", buf, 8u);
    }

    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_2742EBC18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2742EAB54(a1);
  }

  _Unwind_Resume(a1);
}

void awd::ServerConnectionInfo::handleNotificationTimer24h_sync(awd::ServerConnectionInfo *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(this + 17);
  v14 = this + 144;
  if (v1 != (this + 144))
  {
    do
    {
      sub_2742ECDF0(__dst, v1 + 2);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      sub_2742ED098(&v21, v26, v27, (v27 - v26) >> 4);
      v3 = *(this + 4);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v12 = __dst;
        if (v25 < 0)
        {
          v12 = __dst[0];
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v12;
        _os_log_debug_impl(&dword_2742E7000, v3, OS_LOG_TYPE_DEBUG, "server.conn:#D Calling callback on 24h-timer: %s", &buf, 0xCu);
      }

      v5 = v21;
      v4 = v22;
      while (v5 != v4)
      {
        if (*v5)
        {
          v6 = _Block_copy(*v5);
        }

        else
        {
          v6 = 0;
        }

        v7 = v5[1];
        *&buf = v6;
        *(&buf + 1) = v7;
        if (v7)
        {
          dispatch_retain(v7);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 1174405120;
        block[2] = sub_2742EBF30;
        block[3] = &unk_2883518E8;
        if (v6)
        {
          v8 = _Block_copy(v6);
        }

        else
        {
          v8 = 0;
        }

        aBlock = v8;
        object = v7;
        if (v7)
        {
          dispatch_retain(v7);
        }

        sub_2742ECDF0(&__p, __dst);
        dispatch_async(v7, block);
        v28 = &v20;
        sub_2742ED2E8(&v28);
        if (v19 < 0)
        {
          operator delete(__p);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v7)
        {
          dispatch_release(v7);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        v5 += 2;
      }

      *&buf = &v21;
      sub_2742ED2E8(&buf);
      v21 = &v26;
      sub_2742ED2E8(&v21);
      if (v25 < 0)
      {
        operator delete(__dst[0]);
      }

      v9 = *(v1 + 1);
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
          v10 = *(v1 + 2);
          v11 = *v10 == v1;
          v1 = v10;
        }

        while (!v11);
      }

      v1 = v10;
    }

    while (v10 != v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2742EBF40(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_2742ECE78(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  (*(v2 + 16))(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2742EBFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2742EBFD4(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 40);
  a1[4] = v4;
  a1[5] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return sub_2742ECDF0(a1 + 6, (a2 + 48));
}

uint64_t sub_2742EC03C(uint64_t a1)
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

void sub_2742EC07C(uint64_t a1)
{
  v4 = (a1 + 72);
  sub_2742ED2E8(&v4);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

awd::AWDServerConnection *awd::AWDServerConnection::AWDServerConnection(awd::AWDServerConnection *this)
{
  return awd::AWDServerConnection::AWDServerConnection(this);
}

{
  *this = 0;
  *(this + 1) = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v3, 2u);
  }

  return this;
}

{
  return awd::AWDServerConnection::AWDServerConnection(this);
}

{
  return awd::AWDServerConnection::AWDServerConnection(this);
}

void awd::AWDServerConnection::~AWDServerConnection(awd::AWDServerConnection *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

uint64_t awd::AWDServerConnection::getComponentId(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::getDeviceConfigurationId(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::MetricFactory::getSharedMetricFactory(awd::MetricFactory *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  result = awd::MetricFactory::fSharedMetricFactory;
  if (!awd::MetricFactory::fSharedMetricFactory)
  {
    pthread_mutex_lock(&stru_280AC0EF0);
    if (!awd::MetricFactory::fSharedMetricFactory)
    {
      operator new();
    }

    pthread_mutex_unlock(&stru_280AC0EF0);
    return awd::MetricFactory::fSharedMetricFactory;
  }

  return result;
}

uint64_t awd::MetricFactory::newMetricContainerWithIdentifier(awd::MetricFactory *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v2) = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", &v2, 2u);
  }

  sub_2742E8B80(&v2);
  if (v2 && sub_274308018())
  {
    operator new();
  }

  if (v3)
  {
    sub_2742E8DB8(v3);
  }

  return 0;
}

void sub_2742EC438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t awd::AWDServerConnection::SubmitMetric()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

void awd::AWDServerConnection::MaybeSubmitMetric()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v0, 2u);
  }
}

uint64_t awd::AWDServerConnection::SubmitMetrics()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::RegisterQueriableMetricCallbackForIdentifier()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::RegisterCallbackForTimer()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::RegisterQueriableMetricCallbackForLogging()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::forceMetricSubmission(awd::AWDServerConnection *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, const void *a6)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v7, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::forceFinishMetricSubmission(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::forceTriggerSend(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::registerCallBackForTrigger()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::registerCallBackForComponentConfiguration()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::registerCallBackForClearProfiles()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::registerCallBackForConfigChange()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::registerComponentParametersChangeCallback()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::copyComponentParameters(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::loadHotship(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::clearConfiguration(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::logConfigurations(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::forceUpload(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::isMetricNecessary(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v2, 2u);
  }

  return 0;
}

uint64_t awd::AWDServerConnection::registerCallBackForPIIOrLocationChange()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }

  return 0;
}

void awd::AWDServerConnection::locationUsed(awd::AWDServerConnection *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v1, 2u);
  }
}

void awd::AWDServerConnection::flush()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v0, 2u);
  }
}

void *sub_2742ECDA8(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_2742ECDF0(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_2742ECE78(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_2742ED098((__dst + 3), *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 4);
  return __dst;
}

void sub_2742ECE5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2742ECE78(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2742EB490();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_2742ECF1C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_2742ECF50(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_2742ED2E8(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2742ECF9C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2742ECF1C();
}

uint64_t *sub_2742ECFE4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      _Block_release(v3);
    }

    MEMORY[0x2743E9A90](v2, 0x1080C407411B482);
  }

  return a1;
}

uint64_t *sub_2742ED03C(unsigned int *a1)
{
  v2 = a1;
  (*(*(a1 + 1) + 16))(*(a1 + 1), *a1);
  return sub_2742ECFE4(&v2);
}

void sub_2742ED084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2742ECFE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2742ED098(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2742ED120(result, a4);
  }

  return result;
}

void sub_2742ED100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2742ED2E8(&a9);
  _Unwind_Resume(a1);
}

void sub_2742ED120(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2742ED15C(a1, a2);
  }

  sub_2742EAB3C();
}

void sub_2742ED15C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2742ECF1C();
}

void *sub_2742ED1A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v7 = _Block_copy(v7);
      }

      v8 = *(v6 + 8);
      *v4 = v7;
      v4[1] = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v6 += 16;
      v4 = v13 + 2;
      v13 += 2;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_2742ED24C(v10);
  return v4;
}

uint64_t sub_2742ED24C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2742ED298(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_2742ED298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *(v6 - 8);
      if (v7)
      {
        dispatch_release(v7);
      }

      v9 = *(v6 - 16);
      v6 -= 16;
      v8 = v9;
      if (v9)
      {
        _Block_release(v8);
      }
    }

    while (v6 != a5);
  }
}

void sub_2742ED2E8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2742ED33C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2742ED33C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      _Block_release(v5);
    }
  }

  a1[1] = v2;
}

uint64_t awd::AWDRegistrationMessage::AWDRegistrationMessage(uint64_t this, int a2, int a3, int a4, char a5)
{
  *this = &unk_288351928;
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = a4;
  *(this + 20) = a5;
  return this;
}

{
  *this = &unk_288351928;
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = a4;
  *(this + 20) = a5;
  return this;
}

uint64_t awd::AWDRegistrationMessage::AWDRegistrationMessage(uint64_t a1, void *a2)
{
  *a1 = &unk_288351928;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (MEMORY[0x2743EA150](*a2) == MEMORY[0x277D86468])
  {
    v6 = a2;
    v7 = "AWDMessageType";
    sub_2742ED5E8(&v6, &object);
    v4 = xpc::dyn_cast_or_default();
    xpc_release(object);
    if (v4 == 1)
    {
      v6 = a2;
      v7 = "AWDMessageDeviceConfigurationId";
      sub_2742ED5E8(&v6, &object);
      *(a1 + 8) = xpc::dyn_cast_or_default();
      xpc_release(object);
      v6 = a2;
      v7 = "AWDMessageComponentId";
      sub_2742ED5E8(&v6, &object);
      *(a1 + 12) = xpc::dyn_cast_or_default();
      xpc_release(object);
      v6 = a2;
      v7 = "AWDMessagePid";
      sub_2742ED5E8(&v6, &object);
      *(a1 + 16) = xpc::dyn_cast_or_default();
      xpc_release(object);
      v6 = a2;
      v7 = "AWDMessageNeedsConfiguration";
      sub_2742ED5E8(&v6, &object);
      *(a1 + 20) = xpc::dyn_cast_or_default();
      xpc_release(object);
    }
  }

  return a1;
}

xpc_object_t sub_2742ED5E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void awd::AWDRegistrationMessage::createXpcMessage(awd::AWDRegistrationMessage *this@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
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

  if (MEMORY[0x2743EA150](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v17 = xpc_int64_create(1);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessageType";
  sub_2742ED8B0(&v15, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v13 = xpc_int64_create(*(this + 2));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessageDeviceConfigurationId";
  sub_2742ED8B0(&v15, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_int64_create(*(this + 3));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessageComponentId";
  sub_2742ED8B0(&v15, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(*(this + 4));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessagePid";
  sub_2742ED8B0(&v15, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v7 = xpc_BOOL_create(*(this + 20));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessageNeedsConfiguration";
  sub_2742ED8B0(&v15, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
}

xpc_object_t sub_2742ED8B0@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void AWDServerConsolidateDeviceDiagnostics(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v17 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v17 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2743EA150](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v17 = v7;
LABEL_9:
  xpc_release(v6);
  switch(a1)
  {
    case 2:
      v9 = xpc_string_create("feedback");
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      v13 = &v17;
      v14 = "diagType";
      sub_2742ED8B0(&v13, &v9, &v10);
      xpc_release(v10);
      v10 = 0;
      xpc_release(v9);
      v9 = 0;
      break;
    case 1:
      object = xpc_string_create("cellular");
      if (!object)
      {
        object = xpc_null_create();
      }

      v13 = &v17;
      v14 = "diagType";
      sub_2742ED8B0(&v13, &object, &v12);
      xpc_release(v12);
      v12 = 0;
      xpc_release(object);
      object = 0;
      break;
    case 0:
      v15 = xpc_string_create("wifi");
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      v13 = &v17;
      v14 = "diagType";
      sub_2742ED8B0(&v13, &v15, &v16);
      xpc_release(v16);
      v16 = 0;
      xpc_release(v15);
      v15 = 0;
      break;
  }

  AWDServerConnector::create(v8);
}

void sub_2742EDC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, xpc_object_t object)
{
  if (a15)
  {
    sub_2742E8DB8(a15);
  }

  xpc_release(object);
  v20 = *(v18 - 64);
  if (v20)
  {
    sub_2742E8DB8(v20);
  }

  xpc_release(*(v18 - 40));

  _Unwind_Resume(a1);
}

void sub_2742EDC7C(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v35 = *a2;
  if (v35 && MEMORY[0x2743EA150](v35) == MEMORY[0x277D86468])
  {
    xpc_retain(v35);
  }

  else
  {
    v35 = xpc_null_create();
  }

  if (MEMORY[0x2743EA150](*a2) != MEMORY[0x277D864B0])
  {
    v36 = &v35;
    v37 = "files";
    sub_2742EE134(&v36, &v34);
    v5 = MEMORY[0x2743EA150](v34);
    v6 = MEMORY[0x277D86440];
    if (v5 == MEMORY[0x277D86440])
    {
      v13 = MEMORY[0x277CBEB18];
      if (MEMORY[0x2743EA150](v34) == v6)
      {
        count = xpc_array_get_count(v34);
      }

      else
      {
        count = 0;
      }

      v9 = [v13 arrayWithCapacity:count];
      v36 = v34;
      if (v34)
      {
        xpc_retain(v34);
      }

      else
      {
        v36 = xpc_null_create();
      }

      sub_2742EE7D4(&v32, &v36, 0);
      xpc_release(v36);
      v36 = v34;
      if (v34)
      {
        xpc_retain(v34);
      }

      else
      {
        v36 = xpc_null_create();
      }

      if (MEMORY[0x2743EA150](v34) == v6)
      {
        v15 = xpc_array_get_count(v34);
      }

      else
      {
        v15 = 0;
      }

      sub_2742EE7D4(v31, &v36, v15);
      xpc_release(v36);
      for (i = v33; i != v31[1] || v32 != v31[0]; i = ++v33)
      {
        v30[0] = &v32;
        v30[1] = i;
        v17 = MEMORY[0x277CCACA8];
        sub_2742EE1D0(v30, &object);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        xpc::dyn_cast_or_default();
        if (SHIBYTE(v38) < 0)
        {
          operator delete(v36);
        }

        if (v29 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v19 = [v17 stringWithUTF8String:p_p];
        [v9 addObject:v19];

        if (v29 < 0)
        {
          operator delete(__p);
        }

        xpc_release(object);
      }

      xpc_release(v31[0]);
      xpc_release(v32);
      if (v9)
      {
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v9, @"kAwdDiagnosticsFileArray", 0}];
        v8 = 0;
        goto LABEL_35;
      }

      v8 = 0;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCA9B8]);
      v8 = [v7 initWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
      v9 = 0;
    }

    v10 = 0;
LABEL_35:
    v20 = *(a1 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2742EE218;
    block[3] = &unk_279ED6B70;
    v26 = *(a1 + 32);
    v21 = v8;
    v24 = v21;
    v25 = v10;
    v22 = v10;
    dispatch_async(v20, block);

    xpc_release(v34);
    goto LABEL_36;
  }

  v11 = objc_alloc(MEMORY[0x277CCA9B8]);
  v12 = [v11 initWithDomain:*MEMORY[0x277CCA5B8] code:4 userInfo:0];
  (*(*(a1 + 32) + 16))();

LABEL_36:
  xpc_release(v35);
  objc_autoreleasePoolPop(v4);
}

void sub_2742EE044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, xpc_object_t a27)
{
  xpc_release(*(v28 - 104));

  xpc_release(*(v28 - 96));
  _Unwind_Resume(a1);
}

void sub_2742EE134(uint64_t a1@<X0>, void *a2@<X8>)
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

  if (MEMORY[0x2743EA150](v4) != MEMORY[0x277D86440])
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

xpc_object_t sub_2742EE1D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

uint64_t sub_2742EE230(uint64_t result, uint64_t a2)
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

void sub_2742EE24C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void AWDServerSetInvestigationId(unsigned int a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v15 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2743EA150](v6) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v15 = v7;
LABEL_9:
  xpc_release(v6);
  v13 = xpc_string_create("set-iid-only");
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "config";
  sub_2742ED8B0(&v11, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v9 = xpc_int64_create(a1);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "InvestigationId";
  sub_2742ED8B0(&v11, &v9, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v9);
  v9 = 0;
  AWDServerConnector::create(v8);
}

void sub_2742EE4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, dispatch_object_t object, xpc_object_t a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a15)
  {
    sub_2742E8DB8(a15);
  }

  xpc_release(a17);
  if (v17)
  {
    dispatch_release(v17);
  }

  v21 = *(v19 - 64);
  if (v21)
  {
    sub_2742E8DB8(v21);
  }

  xpc_release(*(v19 - 40));

  _Unwind_Resume(a1);
}

void sub_2742EE568(uint64_t a1, xpc_object_t *a2)
{
  if (*(a1 + 56) && *(a1 + 32))
  {
    v15 = *a2;
    v3 = v15;
    v4 = MEMORY[0x277D86468];
    if (v15 && MEMORY[0x2743EA150](v15) == v4)
    {
      xpc_retain(v15);
    }

    else
    {
      v3 = xpc_null_create();
      v15 = v3;
    }

    if (MEMORY[0x2743EA150](v3) == v4)
    {
      v12 = &v15;
      v13 = "dcid";
      sub_2742ED5E8(&v12, &v14);
      v5 = xpc::dyn_cast_or_default();
      xpc_release(v14);
      v12 = &v15;
      v13 = "InvestigationId";
      sub_2742ED5E8(&v12, &v14);
      v6 = xpc::dyn_cast_or_default();
      xpc_release(v14);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = *(a1 + 56);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2742EE73C;
    v8[3] = &unk_279ED6B98;
    v9 = *(a1 + 32);
    v10 = v5;
    v11 = v6;
    dispatch_async(v7, v8);

    xpc_release(v15);
  }
}

void sub_2742EE6E8(_Unwind_Exception *a1)
{
  xpc_release(*(v1 - 48));
  xpc_release(*(v1 - 40));
  _Unwind_Resume(a1);
}

void sub_2742EE754(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  a1[7] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void sub_2742EE784(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    sub_2742E8DB8(v3);
  }
}

void **sub_2742EE7D4(void **a1, void **a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

void sub_2742EE9E4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

__n128 awd::AWDSubmissionMessage::AWDSubmissionMessage(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, __n128 *a6)
{
  *a1 = &unk_2883519E8;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 20) = a4;
  *(a1 + 28) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  result = *a6;
  *(a1 + 32) = *a6;
  *(a1 + 48) = a6[1].n128_u64[0];
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2883519E8;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 20) = a4;
  *(a1 + 28) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  result = *a6;
  *(a1 + 32) = *a6;
  *(a1 + 48) = a6[1].n128_u64[0];
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2883519E8;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 20) = a4;
  *(a1 + 28) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  result = *a6;
  *(a1 + 32) = *a6;
  *(a1 + 48) = a6[1].n128_u64[0];
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2883519E8;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 20) = a4;
  *(a1 + 28) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  result = *a6;
  *(a1 + 32) = *a6;
  *(a1 + 48) = a6[1].n128_u64[0];
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  return result;
}

uint64_t awd::AWDSubmissionMessage::AWDSubmissionMessage(uint64_t a1, xpc_object_t *a2)
{
  *a1 = &unk_2883519E8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (MEMORY[0x2743EA150](*a2) == MEMORY[0x277D86468] && xpc_dictionary_get_int64(*a2, "AWDMessageType") == 2)
  {
    *(a1 + 12) = xpc_dictionary_get_int64(*a2, "AWDMessageMetricId");
    *(a1 + 16) = xpc_dictionary_get_int64(*a2, "AWDMessageProfileId");
    *v4 = xpc_dictionary_get_int64(*a2, "AWDMessageSourceComponentId");
    *(a1 + 24) = xpc_dictionary_get_int64(*a2, "AWDMessageTriggerId");
    *(a1 + 20) = xpc_dictionary_get_int64(*a2, "AWDMessageTriggeringComponentId");
    *(a1 + 28) = xpc_dictionary_get_int64(*a2, "AWDMessageSubmissionId");
    length = 0;
    data = xpc_dictionary_get_data(*a2, "AWDMessageSerializedMetrics", &length);
    sub_2742EEEF8((a1 + 32), data, &data[length], length);
  }

  return a1;
}

void sub_2742EEC98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void awd::AWDSubmissionMessage::createXpcMessage(const void **this@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v4, "AWDMessageSerializedMetrics", this[4], this[5] - this[4]);
  xpc_dictionary_set_int64(v4, "AWDMessageType", 2);
  xpc_dictionary_set_int64(v4, "AWDMessageMetricId", *(this + 3));
  xpc_dictionary_set_int64(v4, "AWDMessageProfileId", *(this + 4));
  xpc_dictionary_set_int64(v4, "AWDMessageTriggerId", *(this + 6));
  xpc_dictionary_set_int64(v4, "AWDMessageSourceComponentId", *(this + 2));
  xpc_dictionary_set_int64(v4, "AWDMessageTriggeringComponentId", *(this + 5));
  xpc_dictionary_set_int64(v4, "AWDMessageSubmissionId", *(this + 7));
  if (v4)
  {
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

  if (MEMORY[0x2743EA150](v4) != MEMORY[0x277D86468])
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

uint64_t awd::AWDSubmissionMessage::getSerializedMetrics(uint64_t a1)
{
  return a1 + 32;
}

{
  return a1 + 32;
}

void *sub_2742EEE38(void *a1)
{
  *a1 = &unk_2883519E8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2742EEE88(void *a1)
{
  *a1 = &unk_2883519E8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743E9A90);
}

void *sub_2742EEEF8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2742EF028(v6, v10);
    }

    sub_2742EAB3C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_2742EF028(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2742EAB3C();
}

void awd::AWDMetricBuffer::AWDMetricBuffer(uint64_t a1, int a2)
{
  *a1 = dispatch_queue_create("com.apple.awd.AWDMetricBuffer", 0);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), "com.apple.awd.framework", "metric.buffer");
  *(a1 + 16) = a2;
  operator new();
}

void awd::AWDMetricBuffer::~AWDMetricBuffer(awd::AWDMetricBuffer *this)
{
  v2 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v2)
  {
    sub_2742E8DB8(v2);
  }

  v3 = *this;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = nullsub_4;
  block[3] = &unk_279ED6BC0;
  block[4] = &v7;
  dispatch_sync(v3, block);
  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  sub_2742F0CF4(this + 80, *(this + 11));
  sub_2742F0C40(this + 56, *(this + 8));
  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    sub_2742E8DB8(v6);
  }

  MEMORY[0x2743E9730](this + 8);
  if (*this)
  {
    dispatch_release(*this);
  }
}

BOOL awd::AWDMetricBuffer::shouldBufferMetric(NSObject **this, int a2)
{
  v5 = a2;
  v2 = *this;
  v4[0] = this;
  v4[1] = &v5;
  v7 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_2742F0D54;
  block[3] = &unk_279ED6BE0;
  block[4] = &v7;
  block[5] = v4;
  dispatch_sync(v2, block);
  return v7 != 0;
}

void awd::AWDMetricBuffer::buffer(NSObject **a1, uint64_t a2)
{
  v2 = *a1;
  v3[0] = a1;
  v3[1] = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_2742F0DA0;
  block[3] = &unk_279ED6C00;
  block[4] = v3;
  dispatch_sync(v2, block);
}

void awd::AWDMetricBuffer::setConfiguration_sync(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 88);
  sub_2742F0CF4(a1 + 80, *(a1 + 88));
  *(a1 + 80) = v4;
  *v4 = 0;
  v5 = *(a1 + 64);
  *(a1 + 96) = 0;
  sub_2742F0C40(a1 + 56, v5);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 112) = *(a1 + 104);
  v6 = *(a1 + 16);
  if (v6 == 60 || v6 == 12)
  {
    v8 = *MEMORY[0x277D85DE8];

    awd::AWDMetricBuffer::setBasebandConfiguration_sync(a1, a2);
  }

  else
  {
    if (*(*a2 + 16))
    {
      buf = *(**(*a2 + 8) + 32) | (*(**(*a2 + 8) + 8) << 32);
      sub_2742F0EB4();
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

unsigned int *awd::AWDMetricBuffer::setBasebandConfiguration_sync(void *a1, uint64_t a2)
{
  v3 = *(*a2 + 16);
  if (v3)
  {
    v4 = *(*a2 + 8);
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      if ((*(*v4 + 133) & 0x20) != 0 && (*(v6 + 116) & 1) == 0)
      {
        v7 = *(v6 + 32);
        v8 = *(v6 + 8);
        v10 = a1[14];
        v9 = a1[15];
        if (v10 >= v9)
        {
          v12 = a1[13];
          v13 = v10 - v12;
          v14 = (v10 - v12) >> 3;
          v15 = v14 + 1;
          if ((v14 + 1) >> 61)
          {
            sub_2742EAB3C();
          }

          v16 = v9 - v12;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            sub_2742F13CC((a1 + 13), v17);
          }

          v18 = (8 * v14);
          *v18 = v7;
          v18[1] = v8;
          v11 = 8 * v14 + 8;
          memcpy(0, v12, v13);
          v19 = a1[13];
          a1[13] = 0;
          a1[14] = v11;
          a1[15] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v10 = v7;
          *(v10 + 1) = v8;
          v11 = (v10 + 8);
        }

        a1[14] = v11;
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v20 = a1[13];
  v21 = a1[14];
  v22 = 126 - 2 * __clz((v21 - v20) >> 3);
  if (v21 == v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  return sub_2742F1414(v20, v21, &v25, v23, 1);
}

double awd::AWDMetricBuffer::BufferInfo::bufferInfoByCallback@<D0>(awd::AWDMetricBuffer::BufferInfo *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = this;
  *&result = 4;
  *(a2 + 4) = 4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t awd::AWDMetricBuffer::BufferInfo::bufferInfoByCount@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = 2;
  *(a4 + 16) = 0;
  *(a4 + 24) = a3;
  *(a4 + 8) = a2;
  return result;
}

double awd::AWDMetricBuffer::BufferInfo::bufferInfoByTimeInSeconds@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *&result = 3;
  *(a4 + 4) = 3;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

double awd::AWDMetricBuffer::BufferInfo::bufferInfoByMostRecent@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *&result = 1;
  *(a3 + 4) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  return result;
}

void awd::AWDMetricBuffer::setConfiguration(uint64_t *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *a1;
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  operator new();
}

void awd::AWDMetricBuffer::_triggerOneMetric(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unint64_t a5, uint64_t a6)
{
  v55 = *MEMORY[0x277D85DE8];
  v47 = a2;
  v48 = a3;
  v7 = *(a1 + 48);
  if (!v7)
  {
    v11 = 0;
LABEL_16:
    v19 = *(a1 + 8);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v20 = "metric.buffer:#E fMetricSubmitter Null.";
    v21 = v19;
    v22 = 2;
    goto LABEL_18;
  }

  v11 = std::__shared_weak_count::lock(v7);
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = sub_2742F2F08(a1 + 56, &v47 + 1);
  if (v13 == v14)
  {
    v15 = *(a1 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v47;
      *&buf[8] = 1024;
      *&buf[10] = HIDWORD(v47);
      *&buf[14] = 1024;
      LODWORD(v53) = v48;
      _os_log_impl(&dword_2742E7000, v15, OS_LOG_TYPE_DEFAULT, "metric.buffer:#E Could not find buffering info for Trigger(cid=0x%x, trid=0x%x, sid=%u)in timer function.", buf, 0x14u);
    }

    goto LABEL_20;
  }

  while (*(v13 + 10) != a4)
  {
    v16 = v13[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v13[2];
        v18 = *v17 == v13;
        v13 = v17;
      }

      while (!v18);
    }

    v13 = v17;
    if (v17 == v14)
    {
      goto LABEL_34;
    }
  }

  if (v13 == v14)
  {
LABEL_34:
    v32 = *(a1 + 8);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 67109632;
    *&buf[4] = v47;
    *&buf[8] = 1024;
    *&buf[10] = HIDWORD(v47);
    *&buf[14] = 1024;
    LODWORD(v53) = v48;
    v20 = "metric.buffer:#E Could not find profile info for Trigger(cid=0x%x, trid=0x%x, sid=%u)in timer function.";
    v21 = v32;
    v22 = 20;
LABEL_18:
    _os_log_impl(&dword_2742E7000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    goto LABEL_19;
  }

  v26 = v13[7];
  v24 = v13 + 7;
  v25 = v26;
  if (!v26)
  {
    goto LABEL_31;
  }

  v27 = v24;
  do
  {
    v28 = *(v25 + 32);
    v29 = v28 >= a5;
    v30 = v28 < a5;
    if (v29)
    {
      v27 = v25;
    }

    v25 = *(v25 + 8 * v30);
  }

  while (v25);
  if (v27 == v24 || *(v27 + 8) > a5)
  {
LABEL_31:
    v31 = *(a1 + 8);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 67109120;
    *&buf[4] = a5;
    v20 = "metric.buffer:#E Could not find buffering info for metric 0x%x in timer function";
    goto LABEL_33;
  }

  v33 = *(a1 + 88);
  if (v33)
  {
    v34 = *(v27 + 11);
    v35 = a1 + 88;
    do
    {
      v36 = *(v33 + 32);
      v29 = v36 >= a5;
      v37 = v36 < a5;
      if (v29)
      {
        v35 = v33;
      }

      v33 = *(v33 + 8 * v37);
    }

    while (v33);
    if (v35 != a1 + 88 && *(v35 + 32) <= a5)
    {
      awd::MetricBuffer::end(v35 + 40, buf);
      if (v34 > 2)
      {
        if (v34 == 3)
        {
          awd::MetricBuffer::lastTimeInSeconds((v35 + 40), a6 - 1000 * v27[7], v49);
          *buf = *v49;
          v53 = v50;
          v54 = v51;
          v38 = *(a1 + 8);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            goto LABEL_63;
          }

          *v49 = 67109120;
          *&v49[4] = a5;
          v39 = "metric.buffer:#I Found buffering info for metric 0x%x: time before trigger";
          goto LABEL_61;
        }

        if (v34 == 4)
        {
          v38 = *(a1 + 8);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            goto LABEL_63;
          }

          *v49 = 67109120;
          *&v49[4] = a5;
          v39 = "metric.buffer:#I Found buffering info for metric 0x%x: callback";
          goto LABEL_61;
        }
      }

      else
      {
        if (v34 == 1)
        {
          awd::MetricBuffer::lastCount((v35 + 40), 1, v49);
          *buf = *v49;
          v53 = v50;
          v54 = v51;
          v38 = *(a1 + 8);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            goto LABEL_63;
          }

          *v49 = 67109120;
          *&v49[4] = a5;
          v39 = "metric.buffer:#I Found buffering info for metric 0x%x: most recent";
          goto LABEL_61;
        }

        if (v34 == 2)
        {
          awd::MetricBuffer::lastCount((v35 + 40), *(v27 + 12), v49);
          *buf = *v49;
          v53 = v50;
          v54 = v51;
          v38 = *(a1 + 8);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            goto LABEL_63;
          }

          *v49 = 67109120;
          *&v49[4] = a5;
          v39 = "metric.buffer:#I Found buffering info for metric 0x%x: num before trigger";
LABEL_61:
          v41 = v38;
          v42 = 8;
LABEL_62:
          _os_log_impl(&dword_2742E7000, v41, OS_LOG_TYPE_INFO, v39, v49, v42);
LABEL_63:
          while (1)
          {
            awd::MetricBuffer::end(v35 + 40, v49);
            if (!awd::MetricBuffer::iterator::operator!=(buf, v49))
            {
              break;
            }

            v43 = v47;
            v44 = v48;
            v45 = *(a1 + 16);
            v46 = awd::MetricBuffer::iterator::operator*(buf);
            a5 = a5 & 0xFFFFFFFF00000000 | v44;
            awd::AWDMetricSubmitter::addMetric(v12, v43, a5, a4, v45, v46);
            awd::MetricBuffer::iterator::operator++(buf, v49);
          }

          goto LABEL_19;
        }
      }

      v40 = *(a1 + 8);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_63;
      }

      *v49 = 67109888;
      *&v49[4] = a5;
      *&v49[8] = 1024;
      *&v49[10] = v47;
      *&v49[14] = 1024;
      LODWORD(v50) = HIDWORD(v47);
      WORD2(v50) = 1024;
      *(&v50 + 6) = v48;
      v39 = "metric.buffer:#I Got unknown buffering info for metric 0x%x, Trigger(cid=0x%x, trid=0x%x, sid=%u)";
      v41 = v40;
      v42 = 26;
      goto LABEL_62;
    }
  }

  v31 = *(a1 + 8);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a5;
    v20 = "metric.buffer:#E Could not find buffer for metric 0x%x";
LABEL_33:
    v21 = v31;
    v22 = 8;
    goto LABEL_18;
  }

LABEL_19:
  if (v11)
  {
LABEL_20:
    sub_2742E8DB8(v11);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void awd::AWDMetricBuffer::pushMetricToDaemon(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 48);
  if (v7)
  {
    v12 = std::__shared_weak_count::lock(v7);
    if (v12)
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        awd::AWDMetricSubmitter::addMetric(v13, a2, a3, a4, *(a1 + 16), a6);
LABEL_9:
        sub_2742E8DB8(v12);
        return;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *(a1 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_2742E7000, v14, OS_LOG_TYPE_DEFAULT, "metric.buffer:#E pushMetricToDaemon: MetricSubmitter Null.", v15, 2u);
  }

  if (v12)
  {
    goto LABEL_9;
  }
}

void awd::AWDMetricBuffer::pushTriggerToDaemon(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[5];
      if (v10)
      {
        awd::AWDMetricSubmitter::generateTrigger(v10, a2, a3, a4);
LABEL_9:
        sub_2742E8DB8(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = a1[1];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2742E7000, v11, OS_LOG_TYPE_DEFAULT, "metric.buffer:#E pushTriggerToDaemon: fMetricSubmitter Null.", v12, 2u);
  }

  if (v9)
  {
    goto LABEL_9;
  }
}

uint64_t *awd::AWDMetricBuffer::finishSubmissionToDaemon(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  if (a4 != 12 && a4 != 60)
  {
    v6 = result[5];
    v5 = result[6];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = *a5;
    v8 = *result;
    operator new();
  }

  return result;
}

void sub_2742F0224(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void awd::AWDMetricBuffer::_trigger(uint64_t a1, uint64_t a2, int a3, dispatch_object_t *a4)
{
  v4 = HIDWORD(a2);
  v54 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v43 = a3;
  v6 = *(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v45 = v4;
    _os_log_impl(&dword_2742E7000, v6, OS_LOG_TYPE_INFO, "metric.buffer:#I In _trigger with trigger 0x%x", buf, 8u);
  }

  v7 = sub_2742F2F08(a1 + 56, &v42 + 1);
  v27 = v8;
  v9 = v7;
  if (v7 == v8)
  {
    v10 = *(a1 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v45 = HIDWORD(v42);
      _os_log_impl(&dword_2742E7000, v10, OS_LOG_TYPE_INFO, "metric.buffer:#I Could not find buffering info for trigger 0x%x", buf, 8u);
    }
  }

  else
  {
    AWDTimestamp = awd::getAWDTimestamp(v7);
    do
    {
      v11 = v9[6];
      v28 = v9;
      v31 = v9 + 7;
      if (v11 != v9 + 7)
      {
        v32 = *(v9 + 10);
        do
        {
          v12 = *(v11 + 8);
          v13 = v11[8];
          v14 = *a4;
          if (*a4)
          {
            dispatch_retain(*a4);
            dispatch_group_enter(v14);
          }

          v15 = *(a1 + 24);
          v16 = *(a1 + 32);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v17 = dispatch_time(0, 1000000000 * v13);
          v18 = *(a1 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 67110144;
            v45 = HIDWORD(v42);
            v46 = 1024;
            v47 = v32;
            v48 = 1024;
            v49 = v12;
            v50 = 2048;
            v51 = v13;
            v52 = 2048;
            v53 = 1000000000 * v13;
            _os_log_impl(&dword_2742E7000, v18, OS_LOG_TYPE_INFO, "metric.buffer:#I Dispatching trigger 0x%x for profile 0x%x to metric 0x%x after %llu seconds (%llu ns).", buf, 0x28u);
          }

          v19 = *a1;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 1174405120;
          block[2] = sub_2742F0610;
          block[3] = &unk_288351A18;
          block[4] = a1;
          group = v14;
          if (v14)
          {
            dispatch_retain(v14);
            if (group)
            {
              dispatch_group_enter(group);
            }
          }

          v35 = v15;
          v36 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v38 = v42;
          v39 = v43;
          v40 = v32;
          v41 = v12;
          v37 = AWDTimestamp;
          dispatch_after(v17, v19, block);
          if (v36)
          {
            std::__shared_weak_count::__release_weak(v36);
          }

          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_weak(v16);
          }

          if (v14)
          {
            dispatch_group_leave(v14);
            dispatch_release(v14);
          }

          v20 = v11[1];
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
              v21 = v11[2];
              v22 = *v21 == v11;
              v11 = v21;
            }

            while (!v22);
          }

          v11 = v21;
        }

        while (v21 != v31);
      }

      v23 = v28;
      v24 = v28[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v23[2];
          v22 = *v25 == v23;
          v23 = v25;
        }

        while (!v22);
      }

      v9 = v25;
    }

    while (v25 != v27);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2742F0610(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 48))
      {
        awd::AWDMetricBuffer::_triggerOneMetric(v3, *(a1 + 72), *(a1 + 80), *(a1 + 84), *(a1 + 88), *(a1 + 64));
      }

      sub_2742E8DB8(v5);
    }
  }
}

void sub_2742F06A4(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_2742F06FC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void awd::AWDMetricBuffer::trigger(NSObject **a1, uint64_t a2, int a3, uint64_t a4)
{
  v5[2] = a4;
  v6 = a2;
  v7 = a3;
  v5[0] = a1;
  v5[1] = &v6;
  v4 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_2742F3070;
  block[3] = &unk_279ED6C20;
  block[4] = v5;
  dispatch_sync(v4, block);
}

uint64_t awd::AWDMetricBuffer::BufferInfo::BufferInfo(uint64_t result, int a2, int a3, uint64_t a4)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a4;
  return result;
}

{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a4;
  return result;
}

void awd::AWDMetricBuffer::BufferInfo::debugLog(awd::AWDMetricBuffer::BufferInfo *this, os_log_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  v4 = *a2;
  v5 = os_log_type_enabled(*a2, OS_LOG_TYPE_INFO);
  if (v3 != 3)
  {
    if (v3 == 2)
    {
      if (!v5)
      {
        goto LABEL_14;
      }

      v10 = *this;
      v11 = *(this + 2);
      v17 = 67109376;
      v18 = v10;
      v19 = 1024;
      LODWORD(v20) = v11;
      v7 = "metric.buffer:#I \t\t- METRIC 0x%x: Buffer most recent %u metrics.";
    }

    else
    {
      if (v3 == 1)
      {
        if (v5)
        {
          v6 = *this;
          v17 = 67109120;
          v18 = v6;
          v7 = "metric.buffer:#I \t\t- METRIC 0x%x: Buffer most recent metric.";
          v8 = v4;
          v9 = 8;
LABEL_13:
          _os_log_impl(&dword_2742E7000, v8, OS_LOG_TYPE_INFO, v7, &v17, v9);
          goto LABEL_14;
        }

        goto LABEL_14;
      }

      if (!v5)
      {
        goto LABEL_14;
      }

      v15 = *this;
      v17 = 67109376;
      v18 = v15;
      v19 = 1024;
      LODWORD(v20) = v3;
      v7 = "metric.buffer:#I \t\t- METRIC 0x%x: UNKNOWN BUFFERING TYPE (%d)";
    }

    v8 = v4;
    v9 = 14;
    goto LABEL_13;
  }

  if (v5)
  {
    v12 = *this;
    v13 = *(this + 2);
    v14 = *(this + 3);
    v17 = 67109632;
    v18 = v12;
    v19 = 2048;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    v7 = "metric.buffer:#I \t\t- METRIC 0x%x: Buffer last %llu+%llu seconds";
    v8 = v4;
    v9 = 28;
    goto LABEL_13;
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
}

void awd::AWDMetricBuffer::_debugLog(awd::AWDMetricBuffer *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (this + 8);
  v3 = *(this + 1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2742E7000, v3, OS_LOG_TYPE_INFO, "metric.buffer:#I The following are how much to buffer each metric for a given trigger:", buf, 2u);
  }

  v4 = *(this + 7);
  if (v4 != (this + 64))
  {
    do
    {
      v5 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
      {
        v6 = *(v4 + 8);
        v7 = *(v4 + 10);
        *buf = 67109376;
        v16 = v6;
        v17 = 1024;
        v18 = v7;
        _os_log_impl(&dword_2742E7000, v5, OS_LOG_TYPE_INFO, "metric.buffer:#I \t- TRIGGER: 0x%x PROFILE: 0x%x", buf, 0xEu);
      }

      v8 = *(v4 + 6);
      if (v8 != (v4 + 56))
      {
        do
        {
          awd::AWDMetricBuffer::BufferInfo::debugLog((v8 + 5), v2);
          v9 = v8[1];
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
              v10 = v8[2];
              v11 = *v10 == v8;
              v8 = v10;
            }

            while (!v11);
          }

          v8 = v10;
        }

        while (v10 != (v4 + 56));
      }

      v12 = *(v4 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v4 + 2);
          v11 = *v13 == v4;
          v4 = v13;
        }

        while (!v11);
      }

      v4 = v13;
    }

    while (v13 != (this + 64));
  }

  v14 = *MEMORY[0x277D85DE8];
}

void awd::AWDMetricBuffer::debugLog(NSObject **this)
{
  v2 = this;
  v1 = *this;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_2742F3088;
  block[3] = &unk_279ED6C40;
  block[4] = &v2;
  dispatch_sync(v1, block);
}

void sub_2742F0BE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288351A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

void sub_2742F0C40(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2742F0C40(a1, *a2);
    sub_2742F0C40(a1, a2[1]);
    sub_2742F0CA0((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void sub_2742F0CA0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2742F0CA0(a1, *a2);
    sub_2742F0CA0(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_2742F0CF4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2742F0CF4(a1, *a2);
    sub_2742F0CF4(a1, a2[1]);
    awd::MetricBuffer::~MetricBuffer((a2 + 5));

    operator delete(a2);
  }
}

uint64_t sub_2742F0D54(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(*v1 + 11);
  if (v2)
  {
    v3 = *v1[1];
    v4 = 1;
    do
    {
      v5 = *(v2 + 8);
      if (v3 >= v5)
      {
        if (v5 >= v3)
        {
          goto LABEL_8;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  v4 = 0;
LABEL_8:
  **(result + 32) = v4;
  return result;
}

void sub_2742F0DA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*v1 + 88);
  v3 = *v2;
  if (*v2)
  {
    v4 = v1[1];
    v5 = *v4;
    v6 = **v4;
    v7 = v2;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != v2 && v6 >= *(v7 + 8))
    {
      *v4 = 0;
      v12 = v5;
      awd::MetricBuffer::buffer((v7 + 5), &v12);
      v11 = v12;
      v12 = 0;
      if (v11)
      {
        sub_2742F0E58(&v12, v11);
      }
    }
  }
}

void sub_2742F0E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    sub_2742F0E58(&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F0E58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(a2 + 24) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x2743E9A90);
  }
}

uint64_t *sub_2742F0F68(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2742F0FC0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2742F0FC0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *sub_2742F115C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_2742F1224();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_2742F12A4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      awd::MetricBuffer::~MetricBuffer((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_2742F12F0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_2742F13CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2742ECF1C();
}

unsigned int *sub_2742F1414(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = v10[3];
      }

      v111 = v10[1];
      v10[3] = v111;
      *v10 = v91;
      v10[1] = v110;
      v10[2] = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return sub_2742F1F4C(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_2742F2154(v10, a2);
      }

      else
      {

        return sub_2742F2228(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return sub_2742F2A34(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (*v14 >= *v10 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (*v39 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (*v55 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = (v15 + 1);
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = (v39 + 1);
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v82;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = (v39 + 1);
                      *v55 = v71;
                      v74 = (v55 + 1);
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = (v55 + 1);
                  v73 = (v15 + 1);
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = v10[5];
              v10[4] = v56;
              v10[5] = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = v10[3];
          v10[2] = v40;
          v10[3] = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = v10[1];
      *v10 = v16;
      v10[1] = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = sub_2742F22C0(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = sub_2742F23F4(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = sub_2742F2530(v10, v85);
    v10 = v85 + 2;
    result = sub_2742F2530(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = sub_2742F1414(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = sub_2742F1F4C(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

unsigned int *sub_2742F1F4C(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned int *sub_2742F2154(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        v7 = *v5;
        if (v6 < *v5 || v7 >= v6 && v5[3] < v5[1])
        {
          v9 = v5[2];
          v8 = v5[3];
          v10 = v5[1];
          v5[2] = v7;
          v4[1] = v10;
          v11 = result;
          if (v5 != result)
          {
            v12 = v3;
            do
            {
              v13 = *(result + v12 - 8);
              if (v13 <= v9)
              {
                if (v13 < v9)
                {
                  v11 = v5;
                  goto LABEL_17;
                }

                v11 = (result + v12);
                v14 = *(result + v12 - 4);
                if (v14 <= v8)
                {
                  goto LABEL_17;
                }
              }

              else
              {
                v14 = *(result + v12 - 4);
              }

              v5 -= 2;
              v15 = (result + v12);
              *v15 = v13;
              v15[1] = v14;
              v12 -= 8;
            }

            while (v12);
            v11 = result;
          }

LABEL_17:
          *v11 = v9;
          v11[1] = v8;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned int *sub_2742F2228(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = result[1];
          for (i = v3; ; i -= 2)
          {
            v10 = *i;
            i[1] = v6;
            i[2] = v10;
            v6 = *(i - 3);
            if (v6 <= v7 && (v6 < v7 || *(i - 2) <= v8))
            {
              break;
            }
          }

          *(i - 1) = v7;
          *i = v8;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unsigned int *sub_2742F22C0(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v3;
        }

        while (v13 > v3);
      }

      while (v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

unsigned int *sub_2742F23F4(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL sub_2742F2530(unsigned int *a1, unsigned int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        sub_2742F1F4C(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      sub_2742F1F4C(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v55 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 > v50)
      {
        goto LABEL_74;
      }
    }

    v55 = (a1 + v51 + 16);
LABEL_80:
    *v55 = v49;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

unsigned int *sub_2742F2A34(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_2742F2BA8(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          sub_2742F2BA8(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = sub_2742F2CEC(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          sub_2742F2D78(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 3);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_2742F2BA8(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *sub_2742F2CEC(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_2742F2D78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 < v8 || v8 >= v7 && v6[1] < *(a2 - 4))
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      *(a2 - 8) = v7;
      *(a2 - 4) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 8 * v5);
          v13 = *v11;
          if (*v11 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            v14 = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 8 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

uint64_t *sub_2742F2E1C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      sub_2742E8DB8(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x2743E9A90](v2, 0xA0C4079E112F9);
  }

  return a1;
}

uint64_t *sub_2742F2E7C(uint64_t *a1)
{
  v7 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        awd::AWDMetricBuffer::setConfiguration_sync(v3, (a1 + 3));
      }

      sub_2742E8DB8(v5);
    }
  }

  return sub_2742F2E1C(&v7);
}

void sub_2742F2EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2742E8DB8(v2);
  sub_2742F2E1C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2742F2F08(uint64_t a1, unsigned int *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 8);
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v8 = *(v7 + 8);
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        result = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
  }

  for (i = v3[1]; i; i = *(i + 8 * (v4 >= *(i + 32))))
  {
    *(i + 32);
  }

  return result;
}

uint64_t *sub_2742F2F98(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x2743E9A90](v2, 0x1020C406C4767B9);
  }

  return a1;
}

uint64_t *sub_2742F2FEC(uint64_t a1)
{
  v6 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*a1)
      {
        awd::AWDMetricSubmitter::doneWithMetrics(*a1, *(a1 + 16), *(a1 + 20), *(a1 + 28));
      }

      sub_2742E8DB8(v4);
    }
  }

  return sub_2742F2F98(&v6);
}

void sub_2742F3054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2742E8DB8(v2);
  sub_2742F2F98(va);
  _Unwind_Resume(a1);
}

void awd::AWDServerFacade::initConnection_sync(awd::AWDServerFacade *this)
{
  v2 = xpc_null_create();
  mach_service = xpc_connection_create_mach_service("com.apple.awdd", *(this + 2), 2uLL);
  if (!mach_service)
  {
    mach_service = xpc_null_create();
  }

  v4 = xpc_null_create();
  xpc_release(v2);
  xpc_release(v4);
  if (MEMORY[0x2743EA150](mach_service) == MEMORY[0x277D86450])
  {
    v11 = mach_service;
    if (mach_service)
    {
      xpc_retain(mach_service);
    }

    else
    {
      v11 = xpc_null_create();
    }

    v6 = *(this + 2);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    sub_2742E8D20(buf, this);
    v7 = v13;
    v8 = *buf;
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_2742E8DB8(v7);
    }

    sub_2742F3E20(this + 5, &v11, &object, &v8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v11);
    v11 = 0;
  }

  else
  {
    v5 = *(this + 4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2742E7000, v5, OS_LOG_TYPE_DEFAULT, "client:#E Failed to xpc create connection.", buf, 2u);
    }
  }

  xpc_release(mach_service);
}

void sub_2742F33C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, dispatch_object_t object, xpc_object_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a12);
  xpc_release(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_2742F343C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2742F3458(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void *awd::AWDServerFacade::AWDServerFacade(void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7)
{
  sub_2742F3588(a1, "AWDServerFacade", QOS_CLASS_DEFAULT, "server");
  a1[5] = xpc_null_create();
  if (a2)
  {
    v14 = _Block_copy(a2);
  }

  else
  {
    v14 = 0;
  }

  a1[6] = v14;
  if (a3)
  {
    v15 = _Block_copy(a3);
  }

  else
  {
    v15 = 0;
  }

  a1[7] = v15;
  if (a4)
  {
    v16 = _Block_copy(a4);
  }

  else
  {
    v16 = 0;
  }

  a1[8] = v16;
  if (a5)
  {
    v17 = _Block_copy(a5);
  }

  else
  {
    v17 = 0;
  }

  a1[9] = v17;
  if (a6)
  {
    v18 = _Block_copy(a6);
  }

  else
  {
    v18 = 0;
  }

  a1[10] = v18;
  if (a7)
  {
    v19 = _Block_copy(a7);
  }

  else
  {
    v19 = 0;
  }

  a1[11] = v19;
  return a1;
}

void *sub_2742F3588(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.awd.framework", a4);
  return a1;
}

void awd::AWDServerFacade::~AWDServerFacade(awd::AWDServerFacade *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    _Block_release(v7);
  }

  MEMORY[0x2743E9770](this + 40);
  MEMORY[0x2743E9730](this + 32);

  sub_2742ECDA8(this);
}

uint64_t awd::AWDServerFacade::handleServerError(uint64_t result, void *a2)
{
  if (MEMORY[0x277D863F0] != MEMORY[0x277D863F8] && *a2 == MEMORY[0x277D863F8])
  {
    v7 = v2;
    v8 = v3;
    v5 = *(result + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2742E7000, v5, OS_LOG_TYPE_DEFAULT, "client:#E XPC Connection invalidated; possibly a sandbox block?", v6, 2u);
    }

    return ctu::XpcClientHelper::setServer();
  }

  return result;
}

void awd::AWDServerFacade::handleMessage(void *a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = a2;
    v33 = "AWDMessageType";
    sub_2742ED5E8(buf, &v23);
    v22 = xpc::dyn_cast_or_default();
    LODWORD(object) = 67109120;
    HIDWORD(object) = v22;
    _os_log_debug_impl(&dword_2742E7000, v4, OS_LOG_TYPE_DEBUG, "client:#D libawd got message of type %d", &object, 8u);
    xpc_release(v23);
  }

  fflush(*MEMORY[0x277D85E08]);
  *buf = a2;
  v33 = "AWDMessageType";
  sub_2742ED5E8(buf, &object);
  v5 = xpc::dyn_cast_or_default();
  xpc_release(object);
  sub_2742E8B80(&v23);
  if (v5 > 6)
  {
    switch(v5)
    {
      case 7:
        awd::AWDControlMessage::AWDControlMessage(buf, a2);
        ControlMessageType = awd::AWDControlMessage::getControlMessageType(buf);
        v15 = a1[4];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LODWORD(object) = 67109120;
          HIDWORD(object) = ControlMessageType;
          _os_log_impl(&dword_2742E7000, v15, OS_LOG_TYPE_INFO, "client:#I Got control message of type %d", &object, 8u);
        }

        if (ControlMessageType == 4)
        {
          (*(a1[8] + 16))();
        }

        break;
      case 8:
        awd::AWDPIILocationMessage::AWDPIILocationMessage(&object, a2);
        ComponentId = awd::AWDPIILocationMessage::getComponentId(&object);
        CollectPII = awd::AWDPIILocationMessage::getCollectPII(&object);
        CollectLocation = awd::AWDPIILocationMessage::getCollectLocation(&object);
        AnalyticsShimMode = awd::AWDPIILocationMessage::getAnalyticsShimMode(&object);
        v20 = a1[4];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 67109888;
          *&buf[4] = ComponentId;
          LOWORD(v33) = 1024;
          *(&v33 + 2) = CollectPII;
          HIWORD(v33) = 1024;
          v34 = CollectLocation;
          v35 = 1024;
          v36 = AnalyticsShimMode;
          _os_log_impl(&dword_2742E7000, v20, OS_LOG_TYPE_INFO, "client:#I In switch branch for pii/location message msg. cid=0x%x collectPII is %d, collectLocation is %d, shim is %d", buf, 0x1Au);
        }

        (*(a1[9] + 16))();
        break;
      case 13:
        awd::AWDTimerMessage::AWDTimerMessage(buf, a2);
        v11 = a1[4];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          TimerId = awd::AWDTimerMessage::getTimerId(buf);
          LODWORD(object) = 67109120;
          HIDWORD(object) = TimerId;
          _os_log_impl(&dword_2742E7000, v11, OS_LOG_TYPE_INFO, "client:#I Received Timer(tid=0x%x) notification message", &object, 8u);
        }

        awd::AWDTimerMessage::getTimerId(buf);
        (*(a1[11] + 16))();
        break;
    }
  }

  else if (v5)
  {
    if (v5 == 4)
    {
      awd::AWDSetComponentConfigurationMessage::AWDSetComponentConfigurationMessage(buf, a2);
      awd::AWDSetComponentConfigurationMessage::getComponentId(buf);
      awd::AWDSetComponentConfigurationMessage::getDeviceConfigurationId(buf);
      awd::AWDSetComponentConfigurationMessage::getComponentConfiguration(buf, &object);
      operator new();
    }

    if (v5 == 6)
    {
      awd::AWDTriggerMessage::AWDTriggerMessage(buf, a2);
      v6 = awd::AWDTriggerMessage::getComponentId(buf);
      Trigger = awd::AWDTriggerMessage::getTrigger(buf);
      v9 = v8;
      v10 = a1[4];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        object = __PAIR64__(Trigger, 67109888);
        v26 = 1024;
        v27 = HIDWORD(Trigger);
        v28 = 1024;
        v29 = v9;
        v30 = 1024;
        v31 = v6;
        _os_log_impl(&dword_2742E7000, v10, OS_LOG_TYPE_INFO, "client:#I Sending Trigger(cid=0x%x, trid=0x%x, sid=%u) to component: 0x%x", &object, 0x1Au);
      }

      (*(a1[7] + 16))();
    }
  }

  else
  {
    v13 = a1[4];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2742E7000, v13, OS_LOG_TYPE_DEFAULT, "client:#E Got an unkown message from AWDD!", buf, 2u);
    }
  }

  if (v24)
  {
    sub_2742E8DB8(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2742F3CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_2742EAB54(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F3DA4(uint64_t *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v4 + 16))(v4, v5, v6, &v8);
  if (v9)
  {
    sub_2742E8DB8(v9);
  }
}

void sub_2742F3E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F3E20(_xpc_connection_s **a1, xpc_object_t *a2, dispatch_queue_t *a3, uint64_t *a4)
{
  v13 = *a2;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v13 = xpc_null_create();
  }

  ctu::XpcClientHelper::setServer_internal();
  xpc_release(v13);
  v13 = 0;
  if (MEMORY[0x2743EA150](*a1) == MEMORY[0x277D86450])
  {
    v7 = *a1;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 1174405120;
    handler[2] = sub_2742F4FD4;
    handler[3] = &unk_288351C38;
    v9 = *a4;
    v8 = a4[1];
    handler[4] = a1;
    handler[5] = v9;
    v11 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v7;
    xpc_connection_set_event_handler(v7, handler);
    xpc_connection_set_target_queue(v7, *a3);
    xpc_connection_resume(v7);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_2742F3F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL awd::AWDServerFacade::register_sync(awd::AWDServerFacade *this, int a2, int a3, int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x2743EA150](*(this + 5)) == MEMORY[0x277D86450])
  {
    v10 = getpid();
    awd::AWDRegistrationMessage::AWDRegistrationMessage(buf, a2, a3, v10, a4);
    awd::AWDRegistrationMessage::createXpcMessage(buf, &message);
    v11 = MEMORY[0x2743EA150](message);
    v9 = v11 == MEMORY[0x277D86468];
    if (v11 == MEMORY[0x277D86468])
    {
      v12 = *(this + 4);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v16 = 67109632;
        v17 = a2;
        v18 = 1024;
        v19 = a3;
        v20 = 1024;
        v21 = a4;
        _os_log_impl(&dword_2742E7000, v12, OS_LOG_TYPE_INFO, "client:#I Sending message to register with dcid %d, component 0x%x, needsconfig: %d", v16, 0x14u);
      }

      xpc_connection_send_message(*(this + 5), message);
    }

    xpc_release(message);
  }

  else
  {
    v8 = *(this + 4);
    v9 = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v23 = a3;
      _os_log_impl(&dword_2742E7000, v8, OS_LOG_TYPE_DEFAULT, "client:#E xpc conenction NULL while registering as component 0x%x", buf, 8u);
      v9 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_2742F4104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (a2)
  {
    sub_2742EAB54(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t awd::AWDServerFacade::registerAs(awd::AWDServerFacade *this, int a2, int a3, char a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = sub_2742F4248;
  v7[3] = &unk_279ED6C88;
  v7[4] = this;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  sub_2742E8D20(&v13, this);
  v5 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = sub_2742F4E20;
  block[3] = &unk_288351B90;
  block[5] = v13;
  v12 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v5, block);
  if (v12)
  {
    sub_2742E8DB8(v12);
  }

  if (v14)
  {
    sub_2742E8DB8(v14);
  }

  return 1;
}

void awd::AWDServerFacade::sendMessage(void *a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  sub_2742E8D20(&v3, a1);
  operator new();
}

void awd::AWDServerFacade::flush(void *a1, NSObject **a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1174405120;
  v5[2] = sub_2742F4584;
  v5[3] = &unk_288351AF8;
  v3 = *a2;
  v5[4] = a1;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(group);
  }

  sub_2742E8D20(&v9, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = sub_2742F4E20;
  block[3] = &unk_288351B90;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_2742E8DB8(v8);
  }

  if (v10)
  {
    sub_2742E8DB8(v10);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_2742F4584(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (MEMORY[0x2743EA150](*(v2 + 40)) == MEMORY[0x277D86450])
  {
    v3 = *(v2 + 40);
    barrier[0] = MEMORY[0x277D85DD0];
    barrier[1] = 1174405120;
    barrier[2] = nullsub_5;
    barrier[3] = &unk_288351AC8;
    v4 = *(a1 + 40);
    group = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(group);
    }

    xpc_connection_send_barrier(v3, barrier);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }
}

void sub_2742F4654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F467C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_2742F46D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void sub_2742F4720(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_2742F4774(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void awd::AWDServerFacade::getMetadata(awd::AWDServerFacade *this, unsigned int a2, BOOL a3)
{
  if (MEMORY[0x2743EA150](*(this + 5)) != MEMORY[0x277D86450])
  {
    v6 = *(this + 4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2742E7000, v6, OS_LOG_TYPE_DEFAULT, "client:#E CoreAnalytics shim: Error! getMetadataBase: XpcConnection is NULL", buf, 2u);
    }

    return;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v22 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v22 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x2743EA150](v8) != MEMORY[0x277D86468])
  {
    v9 = xpc_null_create();
LABEL_11:
    v22 = v9;
    goto LABEL_12;
  }

  xpc_retain(v8);
LABEL_12:
  xpc_release(v8);
  v20 = xpc_int64_create(12);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  *buf = &v22;
  v19 = "AWDMessageType";
  sub_2742ED8B0(buf, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  v16 = xpc_BOOL_create(a3);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  *buf = &v22;
  v19 = "needs_base";
  sub_2742ED8B0(buf, &v16, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_int64_create(a2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  *buf = &v22;
  v19 = "cid";
  sub_2742ED8B0(buf, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v10 = *(this + 5);
  v11 = *(this + 2);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = sub_2742F4A84;
  v12[3] = &unk_279ED6CA8;
  v12[4] = this;
  v13 = a2;
  xpc_connection_send_message_with_reply(v10, v22, v11, v12);
  xpc_release(v22);
}

void sub_2742F4A84(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  objecta = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    objecta = xpc_null_create();
  }

  sub_2742F4B04((v3 + 80), &objecta, (a1 + 40));
  xpc_release(objecta);
}

void sub_2742F4B04(uint64_t *a1, void **a2, unsigned int *a3)
{
  v4 = *a1;
  v5 = *a2;
  object = v5;
  if (v5 && MEMORY[0x2743EA150](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v4 + 16))(v4, &object, *a3);
  xpc_release(object);
}

void sub_2742F4C30(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_2742F4DE0);
  __cxa_rethrow();
}

void sub_2742F4C6C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_2742E8DB8(v5);
      }
    }
  }
}

void sub_2742F4CF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

uint64_t sub_2742F4D4C(uint64_t a1, uint64_t a2)
{
  if (sub_2742F4D8C(a2, &unk_288351B78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2742F4D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

awd::AWDServerFacade *sub_2742F4DE0(awd::AWDServerFacade *result)
{
  if (result)
  {
    awd::AWDServerFacade::~AWDServerFacade(result);

    JUMPOUT(0x2743E9A90);
  }

  return result;
}

uint64_t sub_2742F4E30(uint64_t result, uint64_t a2)
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

void sub_2742F4E4C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void sub_2742F4E5C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

void sub_2742F4F10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_27431C66C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F4F2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

uint64_t sub_2742F4F64(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2742F4F94(uint64_t a1, uint64_t a2)
{
  if (sub_2742F4D8C(a2, &unk_288351C20))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2742F4FD4(void *a1, xpc_object_t a2)
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
      if (!v8)
      {
LABEL_18:
        sub_2742E8DB8(v7);
        return;
      }

      v9 = MEMORY[0x2743EA150](a2);
      v10 = MEMORY[0x277D86468];
      if (v9 != MEMORY[0x277D86468])
      {
        if (v9 == MEMORY[0x277D86480] && *v5 == a1[7])
        {
          v12 = a2;
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            a2 = xpc_null_create();
            v12 = a2;
          }

          awd::AWDServerFacade::handleServerError(v8, &v12);
          xpc_release(a2);
        }

        goto LABEL_18;
      }

      if (a2)
      {
        xpc_retain(a2);
        object = a2;
      }

      else
      {
        a2 = xpc_null_create();
        object = a2;
        if (!a2)
        {
          v11 = xpc_null_create();
          a2 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x2743EA150](a2) == v10)
      {
        xpc_retain(a2);
LABEL_17:
        awd::AWDServerFacade::handleMessage(v8, &object);
        xpc_release(object);
        object = 0;
        xpc_release(a2);
        goto LABEL_18;
      }

      v11 = xpc_null_create();
LABEL_16:
      object = v11;
      goto LABEL_17;
    }
  }
}

void sub_2742F5120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(v11);
  sub_2742E8DB8(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_2742F5180(uint64_t result, uint64_t a2)
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

void sub_2742F519C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t *sub_2742F51AC(awd::AWDServerFacade ***a1)
{
  v3 = a1;
  v1 = *a1;
  awd::AWDServerFacade::initConnection_sync(**a1);
  MEMORY[0x2743E9A90](v1, 0x20C4093837F09);
  return sub_2742E8D64(&v3);
}

void sub_2742F520C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2743E9A90](v3, v2);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2742F522C(xpc_object_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (MEMORY[0x2743EA150](*(*v1 + 5)) == MEMORY[0x277D86450])
  {
    xpc_connection_send_message(*(v2 + 5), v1[1]);
  }

  else
  {
    v3 = *(v2 + 4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2742E7000, v3, OS_LOG_TYPE_DEFAULT, "client:#E Error! sendMessage: XpcConnection is NULL", buf, 2u);
    }
  }

  sub_2742F52EC(&v6);
  return sub_2742E8D64(&v5);
}

void sub_2742F52D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2742F52EC(&a10);
  sub_2742E8D64(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2742F52EC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x2743E9A90](v2, 0xE0C402B90B96ALL);
  }

  return a1;
}

__n128 awd::AWDSetComponentConfigurationMessage::AWDSetComponentConfigurationMessage(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4)
{
  a1->n128_u64[0] = &unk_288351C78;
  a1->n128_u32[2] = a2;
  a1->n128_u32[3] = a3;
  result = *a4;
  a1[1] = *a4;
  a4->n128_u64[0] = 0;
  a4->n128_u64[1] = 0;
  return result;
}

{
  a1->n128_u64[0] = &unk_288351C78;
  a1->n128_u32[2] = a2;
  a1->n128_u32[3] = a3;
  result = *a4;
  a1[1] = *a4;
  a4->n128_u64[0] = 0;
  a4->n128_u64[1] = 0;
  return result;
}

void awd::AWDSetComponentConfigurationMessage::AWDSetComponentConfigurationMessage(void *a1)
{
  *a1 = &unk_288351C78;
  a1[1] = 0;
  operator new();
}

void sub_2742F54CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  v14 = *(v12 + 24);
  if (v14)
  {
    sub_2742E8DB8(v14);
  }

  _Unwind_Resume(a1);
}

void awd::AWDSetComponentConfigurationMessage::~AWDSetComponentConfigurationMessage(awd::AWDSetComponentConfigurationMessage *this)
{
  *this = &unk_288351C78;
  v1 = *(this + 3);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

{
  *this = &unk_288351C78;
  v1 = *(this + 3);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

{
  *this = &unk_288351C78;
  v1 = *(this + 3);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::AWDSetComponentConfigurationMessage::getComponentConfiguration@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void awd::AWDSetComponentConfigurationMessage::createXpcMessage(awd::AWDSetComponentConfigurationMessage *this@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
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

  if (MEMORY[0x2743EA150](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v16 = xpc_int64_create(4);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v14 = a2;
  v15 = "AWDMessageType";
  sub_2742ED8B0(&v14, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v12 = xpc_int64_create(*(this + 3));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v14 = a2;
  v15 = "AWDMessageComponentId";
  sub_2742ED8B0(&v14, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(*(this + 2));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v14 = a2;
  v15 = "AWDMessageDeviceConfigurationId";
  sub_2742ED8B0(&v14, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v7 = *(this + 2);
  if (v7)
  {
    v8 = xpc_data_create(*v7, *(v7 + 8) - *v7);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    v14 = a2;
    v15 = "AWDMessageComponentConfigurationBuffer";
    sub_2742ED8B0(&v14, &v8, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(v8);
  }
}

void sub_2742F58D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_2742F5974(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F58F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

uint64_t sub_2742F5934(uint64_t a1, uint64_t a2)
{
  if (sub_2742F4D8C(a2, &unk_288351D08))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2742F5974(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x2743E9A90);
  }
}

uint64_t awd::MetricBuffer::MetricBuffer(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::MetricBuffer::MetricBuffer(uint64_t result, int a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = a2;
  *(result + 8) = a3;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

void awd::MetricBuffer::~MetricBuffer(awd::MetricBuffer *this)
{
  v1 = (this + 24);
  sub_2742F628C(&v1);
}

{
  v1 = (this + 24);
  sub_2742F628C(&v1);
}

unsigned int *awd::MetricBuffer::addCount(unsigned int *this, unsigned int a2)
{
  v2 = *this;
  if (*this <= a2)
  {
    v2 = a2;
  }

  *this = v2;
  return this;
}

uint64_t awd::MetricBuffer::addTimeInSeconds(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (a2 > v2)
  {
    v2 = a2;
  }

  *(result + 8) = v2 & ~(v2 >> 63);
  return result;
}

uint64_t awd::MetricBuffer::getLastSubmitted(awd::MetricBuffer *this)
{
  v1 = *(this + 3);
  if (v1 == *(this + 4))
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void awd::MetricBuffer::buffer(uint64_t a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  sub_2742F5D5C((a1 + 24), *(a1 + 24), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    sub_27431C73C();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    v6 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = **v4;
        v8 = *(*v4 + 1);
        v9 = *(*v4 + 3) - *(*v4 + 2);
        v17 = 67109888;
        v18 = v7;
        v19 = 2048;
        v20 = v9;
        v21 = 2048;
        v22 = v8 / 0x3E8;
        v23 = 1024;
        v24 = v8 % 0x3E8;
        _os_log_debug_impl(&dword_2742E7000, v6, OS_LOG_TYPE_DEBUG, "metric.buffer:#D   - Metric: 0x%x %zd bytes (%llu.%03u seconds since epoch)", &v17, 0x22u);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  awd::MetricBuffer::_deleteOldMetrics(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    sub_27431C784();
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (v10 != v11)
  {
    v12 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = **v10;
        v14 = *(*v10 + 1);
        v15 = *(*v10 + 3) - *(*v10 + 2);
        v17 = 67109888;
        v18 = v13;
        v19 = 2048;
        v20 = v15;
        v21 = 2048;
        v22 = v14 / 0x3E8;
        v23 = 1024;
        v24 = v14 % 0x3E8;
        _os_log_debug_impl(&dword_2742E7000, v12, OS_LOG_TYPE_DEBUG, "metric.buffer:#D   - Metric: 0x%x %zd bytes (%llu.%03u seconds since epoch)", &v17, 0x22u);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t *sub_2742F5D5C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 3) + 1;
    if (v11 >> 61)
    {
      sub_2742EAB3C();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 2;
    if (v13 >> 2 <= v11)
    {
      v14 = ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 3;
    v29 = a1;
    if (v15)
    {
      sub_2742F652C(a1, v15);
    }

    v26 = 0;
    v27 = 8 * v16;
    v28 = (8 * v16);
    sub_2742F63A8(&v26, a3);
    v18 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = v23;
    v27 = v23;
    sub_2742E9C88(&v26);
    return v18;
  }

  else if (a2 == v6)
  {
    v17 = *a3;
    *a3 = 0;
    *v6 = v17;
    a1[1] = v6 + 1;
  }

  else
  {
    v27 = a1;
    v8 = *a3;
    *a3 = 0;
    sub_2742F6344(a1, a2, v6, (a2 + 1));
    v9 = *v4;
    *v4 = v8;
    if (v9)
    {
      sub_2742F0E58(v4, v9);
    }
  }

  return v4;
}

void sub_2742F5ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_2742F0E58(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t awd::MetricBuffer::_deleteOldMetrics(uint64_t **this)
{
  v24 = *MEMORY[0x277D85DE8];
  AWDTimestamp = awd::getAWDTimestamp(this);
  v3 = this[3];
  v4 = this[4];
  if (v3 == v4 || (v5 = v4 - v3, v6 = *this, v5 <= v6))
  {
    v8 = 0;
  }

  else
  {
    v7 = AWDTimestamp;
    v8 = 0;
    v9 = AWDTimestamp - 1000 * this[1];
    v10 = this[4];
    v11 = v10;
    do
    {
      if (v11 == v3)
      {
        break;
      }

      v12 = *--v11;
      v13 = *(v12 + 8);
      if (v13 < v9 || v13 > v7)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218496;
          v19 = v13;
          v20 = 2048;
          v21 = v5;
          v22 = 1024;
          v23 = v6;
          _os_log_debug_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "metric.buffer:#D About to erase metric with time %llums. Size is %zd; fMaxCount is %u", buf, 0x1Cu);
          v10 = this[4];
        }

        sub_2742F6574(buf, v4, v10, v4 - 1);
        v8 = (v8 + 1);
        sub_2742F62E0((this + 3), v15);
        v3 = this[3];
        v10 = this[4];
        v6 = *this;
      }

      v5 = v10 - v3;
      --v4;
    }

    while (v5 > v6);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t awd::MetricBuffer::lastCount@<X0>(awd::MetricBuffer *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 3);
  result = this + 24;
  *(a3 + 32) = 0;
  *a3 = v4;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  return result;
}

void *awd::MetricBuffer::iterator::metricBufferIteratorByCount@<X0>(void *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = *result;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  return result;
}

uint64_t awd::MetricBuffer::lastTimeInSeconds@<X0>(awd::MetricBuffer *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  v5 = *(this + 3);
  result = this + 24;
  v4 = v5;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 32) = a2;
  while (v4 != *(result + 8) && *(*v4 + 8) < a2)
  {
    v4 += 8;
  }

  *a3 = v4;
  return result;
}

uint64_t *awd::MetricBuffer::iterator::metricBufferIteratorSinceTime@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 32) = a2;
    ;
  }

  *a3 = i;
  return result;
}

uint64_t awd::MetricBuffer::end@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 2;
  *a2 = *(this + 32);
  *(a2 + 8) = this + 24;
  return this;
}

uint64_t awd::MetricBuffer::iterator::metricBufferIteratorAtEnd@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 2;
  *a2 = *(result + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t awd::MetricBuffer::iterator::iterator(uint64_t this)
{
  *this = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

__n128 awd::MetricBuffer::iterator::operator++@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  switch(v2)
  {
    case 2:
      v5 = *(*(a1 + 8) + 8);
LABEL_12:
      *a1 = v5;
      break;
    case 1:
      v6 = *(*(a1 + 8) + 8);
      if (*a1 != v6)
      {
        v7 = *a1 + 8;
        do
        {
          v8 = v7;
          if (v7 == v6)
          {
            break;
          }

          v7 += 8;
        }

        while (*(*v8 + 8) < *(a1 + 32));
        *a1 = v8;
      }

      break;
    case 0:
      v3 = *(a1 + 24);
      v4 = *(a1 + 20) + 1;
      *(a1 + 20) = v4;
      if (v4 >= v3)
      {
        *a1 = *(*(a1 + 8) + 8);
        *(a1 + 20) = v3;
        break;
      }

      v5 = *a1 + 8;
      goto LABEL_12;
  }

  result = *a1;
  v10 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v10;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

void sub_2742F628C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2742F62E0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2742F62E0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_2742F0E58(v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void *sub_2742F6344(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *v9++ = 0;
      *v8++ = v10;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_2742F64BC(&v12, a2, v7, v6);
}

uint64_t *sub_2742F63A8(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 2;
      }

      v9 = result[4];
      v11[4] = v3[4];
      sub_2742F652C(v9, v8);
    }

    v6 = (((v5 - *result) >> 3) + 1 + ((((v5 - *result) >> 3) + 1) >> 63)) >> 1;
    result = sub_2742F6574(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    v3[1] -= 8 * v6;
  }

  v10 = *a2;
  *a2 = 0;
  *v4 = v10;
  v3[2] = (v4 + 1);
  return result;
}

void *sub_2742F64BC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 8);
    v7 = a3;
    do
    {
      v8 = *--v7;
      *v7 = 0;
      v9 = *v6;
      *v6 = v8;
      if (v9)
      {
        sub_2742F0E58(v6, v9);
      }

      --v6;
    }

    while (v7 != a2);
  }

  return a3;
}

void sub_2742F652C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2742ECF1C();
}

uint64_t *sub_2742F6574(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;
      if (v8)
      {
        sub_2742F0E58(a4, v8);
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

awd::MetricContainer *awd::MetricContainer::MetricContainer(awd::MetricContainer *this, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "metric:#I Creating a metric container for metric id: 0x%x", v6, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return this;
}

void awd::MetricContainer::~MetricContainer(awd::MetricContainer *this)
{
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    sub_2742F0E58(v1, v2);
  }
}

{
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    sub_2742F0E58(v1, v2);
  }
}

uint64_t awd::MetricContainer::takeMetric@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
  *(this + 8) = 0;
  *a2 = v2;
  return this;
}

uint64_t awd::MetricContainer::getMetricBytes@<X0>(awd::MetricContainer *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_2742F680C(a2, *(v2 + 16), *(v2 + 24), *(v2 + 24) - *(v2 + 16));
}

uint64_t sub_2742F680C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2742EF028(result, a4);
  }

  return result;
}

void sub_2742F686C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}