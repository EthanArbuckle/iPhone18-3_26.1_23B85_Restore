void sub_297300230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297300244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CrashReasonType::~CrashReasonType(awd::metrics::CrashReasonType *this)
{
  *this = &unk_2A1E37B08;
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 2);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 2);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E37B08;
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 2);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 2);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E37B08;
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v7);
}

void awd::metrics::CrashReasonType::SharedDtor(awd::metrics::CrashReasonType *this)
{
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
      v7 = v5;
    }

    else
    {
      v7 = v5;
    }

    operator delete(v7);
  }
}

uint64_t awd::metrics::CrashReasonType::default_instance(awd::metrics::CrashReasonType *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CrashReasonType::default_instance_;
  if (!awd::metrics::CrashReasonType::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CrashReasonType::default_instance_;
  }

  return result;
}

void *awd::metrics::CrashReasonType::New(awd::metrics::CrashReasonType *this)
{
  result = operator new(0x28uLL);
  v2 = MEMORY[0x29EDC9758];
  *result = &unk_2A1E37B08;
  result[1] = v2;
  result[2] = v2;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t awd::metrics::CrashReasonType::Clear(uint64_t this)
{
  if (!*(this + 32))
  {
    goto LABEL_12;
  }

  v1 = MEMORY[0x29EDC9758];
  if (*(this + 32))
  {
    v2 = *(this + 8);
    if (v2 != MEMORY[0x29EDC9758])
    {
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        *(this + 24) = 0;
        if ((*(this + 32) & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  *(this + 24) = 0;
  if ((*(this + 32) & 4) == 0)
  {
LABEL_12:
    *(this + 32) = 0;
    return this;
  }

LABEL_7:
  v3 = *(this + 16);
  if (v3 == v1)
  {
    goto LABEL_12;
  }

  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CrashReasonType::MergePartialFromCodedStream(awd::metrics::CrashReasonType *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 == 2)
          {
            *(this + 8) |= 4u;
            if (*(this + 2) != v4)
            {
              goto LABEL_29;
            }

LABEL_28:
            v17 = operator new(0x18uLL);
            v17[1] = 0;
            v17[2] = 0;
            *v17 = 0;
            *(this + 2) = v17;
            goto LABEL_29;
          }

LABEL_24:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_24;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v13 < v11)
        {
          goto LABEL_20;
        }

LABEL_34:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        v18 = *(a2 + 2);
        v16 = *(this + 8) | 2;
        *(this + 8) = v16;
        if (v15 < v18)
        {
          goto LABEL_36;
        }
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_24;
      }

      *(this + 8) |= 1u;
      if (*(this + 1) == v4)
      {
        v9 = operator new(0x18uLL);
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        *(this + 1) = v9;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v12 < v11 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(a2 + 1) = v13;
        if (v13 >= v11)
        {
          goto LABEL_34;
        }

LABEL_20:
        v14 = *v13;
        if (v14 < 0)
        {
          goto LABEL_34;
        }

        *(this + 6) = v14;
        v15 = v13 + 1;
        *(a2 + 1) = v15;
        v16 = *(this + 8) | 2;
        *(this + 8) = v16;
        if (v15 < v11)
        {
          break;
        }
      }
    }

LABEL_36:
    if (*v15 == 26)
    {
      *(a2 + 1) = v15 + 1;
      *(this + 8) = v16 | 4;
      if (*(this + 2) == v4)
      {
        goto LABEL_28;
      }

LABEL_29:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CrashReasonType::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v7 = *(this + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v8 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CrashReasonType::ByteSize(awd::metrics::CrashReasonType *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    result = 0;
LABEL_6:
    *(this + 7) = result;
    return result;
  }

  if ((*(this + 32) & 1) == 0)
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v4 = *(this + 1);
  v5 = *(v4 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = *(v4 + 23);
  }

  else
  {
    v6 = *(v4 + 8);
  }

  if (v6 < 0x80)
  {
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v4 + 8);
    }

    result = (v5 + 2);
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (*(this + 6) >= 0x80u)
    {
      v10 = result;
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 6));
      LODWORD(result) = v10;
      v9 = v11 + 1;
      v2 = *(this + 8);
    }

    else
    {
      v9 = 2;
    }

    result = (v9 + result);
    goto LABEL_22;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  v8 = *(v4 + 23);
  v2 = *(this + 8);
  if (*(v4 + 23) < 0)
  {
    v8 = *(v4 + 8);
  }

  result = (v7 + 1 + v8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  if ((v2 & 4) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(this + 2);
  v13 = *(v12 + 23);
  v14 = v13;
  v15 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= 0x80)
  {
    v18 = result;
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    LODWORD(result) = v18;
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v14 = *(v12 + 23);
  }

  else
  {
    v17 = 1;
  }

  if (v14 < 0)
  {
    v13 = v15;
  }

  result = (result + v17 + v13 + 1);
  *(this + 7) = result;
  return result;
}

void awd::metrics::CrashReasonType::CopyFrom(awd::metrics::CrashReasonType *this, const awd::metrics::CrashReasonType *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CrashReasonType::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::CrashReasonType::Swap(uint64_t this, awd::metrics::CrashReasonType *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

double awd::metrics::CrashReasonType::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v3 = operator new(0x20uLL);
  *a1 = v3;
  *(a1 + 8) = xmmword_297431AE0;
  strcpy(v3, "awd.metrics.CrashReasonType");
  return *".CrashReasonType";
}

uint64_t awd::metrics::CommCenterBasebanCrash::SharedCtor(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::CommCenterBasebanCrash *awd::metrics::CommCenterBasebanCrash::CommCenterBasebanCrash(awd::metrics::CommCenterBasebanCrash *this, const awd::metrics::CommCenterBasebanCrash *a2)
{
  *(this + 5) = 0;
  *this = &unk_2A1E37B80;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  return this;
}

{
  *(this + 5) = 0;
  *this = &unk_2A1E37B80;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  return this;
}

void sub_297300D10(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebanCrash::MergeFrom(awd::metrics::CommCenterBasebanCrash *this, const awd::metrics::CommCenterBasebanCrash *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  if (*(a2 + 6) >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x29EDC9758];
    do
    {
      while (1)
      {
        v11 = *(*(a2 + 2) + 8 * v6);
        v12 = *(this + 7);
        v13 = *(this + 6);
        if (v13 >= v12)
        {
          break;
        }

        v14 = *(this + 2);
        *(this + 6) = v13 + 1;
        awd::metrics::CrashReasonType::MergeFrom(*(v14 + 8 * v13), v11);
        if (++v6 >= *(a2 + 6))
        {
          goto LABEL_11;
        }
      }

      if (v12 == *(this + 8))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
        v12 = *(this + 7);
      }

      *(this + 7) = v12 + 1;
      v8 = operator new(0x28uLL);
      *v8 = &unk_2A1E37B08;
      v8[1] = v7;
      v8[2] = v7;
      v8[3] = 0;
      *(v8 + 8) = 0;
      v9 = *(this + 2);
      v10 = *(this + 6);
      *(this + 6) = v10 + 1;
      *(v9 + 8 * v10) = v8;
      awd::metrics::CrashReasonType::MergeFrom(v8, v11);
      ++v6;
    }

    while (v6 < *(a2 + 6));
  }

LABEL_11:
  if (*(a2 + 44))
  {
    v15 = *(a2 + 1);
    *(this + 11) |= 1u;
    *(this + 1) = v15;
  }
}

void sub_297300EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297300ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297300F34(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebanCrash::~CommCenterBasebanCrash(awd::metrics::CommCenterBasebanCrash *this)
{
  *this = &unk_2A1E37B80;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37B80;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37B80;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v6);
}

uint64_t awd::metrics::CommCenterBasebanCrash::default_instance(awd::metrics::CommCenterBasebanCrash *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterBasebanCrash::default_instance_;
  if (!awd::metrics::CommCenterBasebanCrash::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterBasebanCrash::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterBasebanCrash::New(awd::metrics::CommCenterBasebanCrash *this)
{
  result = operator new(0x30uLL);
  result[5] = 0;
  *result = &unk_2A1E37B80;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBasebanCrash::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 44))
  {
    *(this + 8) = 0;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebanCrash::MergePartialFromCodedStream(awd::metrics::CommCenterBasebanCrash *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback & 7;
          if (TagFallback >> 3 != 2)
          {
            break;
          }

          if (v7 == 2)
          {
            goto LABEL_22;
          }

LABEL_15:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_15;
        }

        v8 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v8 < v9)
        {
          v10 = *v8;
          if ((v10 & 0x8000000000000000) == 0)
          {
            break;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v13 = *(a2 + 2);
        *(this + 11) |= 1u;
        if (v11 < v13)
        {
          goto LABEL_20;
        }
      }

      *(this + 1) = v10;
      v11 = v8 + 1;
      *(a2 + 1) = v11;
      *(this + 11) |= 1u;
    }

    while (v11 >= v9);
LABEL_20:
    if (*v11 == 18)
    {
      do
      {
        *(a2 + 1) = v11 + 1;
LABEL_22:
        v14 = *(this + 7);
        v15 = *(this + 6);
        if (v15 >= v14)
        {
          if (v14 == *(this + 8))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
            v14 = *(this + 7);
          }

          *(this + 7) = v14 + 1;
          v17 = operator new(0x28uLL);
          *v17 = &unk_2A1E37B08;
          v17[1] = v4;
          v17[2] = v4;
          v17[3] = 0;
          *(v17 + 8) = 0;
          v18 = *(this + 2);
          v19 = *(this + 6);
          *(this + 6) = v19 + 1;
          *(v18 + 8 * v19) = v17;
        }

        else
        {
          v16 = *(this + 2);
          *(this + 6) = v15 + 1;
          v17 = *(v16 + 8 * v15);
        }

        v27 = -1431655766;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            return 0;
          }
        }

        else
        {
          v27 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CrashReasonType::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 == v24)
        {
          *(a2 + 14) = v25;
        }

        v11 = *(a2 + 1);
        v26 = *(a2 + 2);
      }

      while (v11 < v26 && *v11 == 18);
      if (v11 == v26 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterBasebanCrash::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::CommCenterBasebanCrash::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 44))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]);
    v5 = *(this + 6);
    v3 = (v5 + v4 + 1);
    if (v5 < 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *(this + 6);
    v3 = v2;
    if (v2 < 1)
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
  do
  {
    while (1)
    {
      v7 = awd::metrics::CrashReasonType::ByteSize(*(this[2] + v6));
      if (v7 >= 0x80)
      {
        break;
      }

      v3 = (v7 + v3 + 1);
      if (++v6 >= *(this + 6))
      {
        goto LABEL_9;
      }
    }

    v3 = v7 + v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    ++v6;
  }

  while (v6 < *(this + 6));
LABEL_9:
  *(this + 10) = v3;
  return v3;
}

void awd::metrics::CommCenterBasebanCrash::CopyFrom(awd::metrics::CommCenterBasebanCrash *this, const awd::metrics::CommCenterBasebanCrash *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  }
}

awd::metrics::CommCenterBasebanCrash *awd::metrics::CommCenterBasebanCrash::Swap(awd::metrics::CommCenterBasebanCrash *this, awd::metrics::CommCenterBasebanCrash *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

char *awd::metrics::CommCenterBasebanCrash::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_29742F120;
  strcpy(result, "awd.metrics.CommCenterBasebanCrash");
  return result;
}

void *awd::metrics::CommCenterBasebandTrace::SharedCtor(void *this)
{
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = v1;
  this[4] = 0;
  return this;
}

awd::metrics::CommCenterBasebandTrace *awd::metrics::CommCenterBasebandTrace::CommCenterBasebandTrace(awd::metrics::CommCenterBasebandTrace *this, const awd::metrics::CommCenterBasebandTrace *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A1E37BF8;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *this = &unk_2A1E37BF8;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  return this;
}

void awd::metrics::CommCenterBasebandTrace::MergeFrom(awd::metrics::CommCenterBasebandTrace *this, const awd::metrics::CommCenterBasebandTrace *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
    }

    v6 = MEMORY[0x29EDC9758];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 9) |= 2u;
      v8 = *(this + 2);
      if (v8 == v6)
      {
        v8 = operator new(0x18uLL);
        v8[1] = 0;
        v8[2] = 0;
        *v8 = 0;
        *(this + 2) = v8;
      }

      if (v8 != v7)
      {
        v9 = *(v7 + 23);
        if ((*(v8 + 23) & 0x80000000) == 0)
        {
          if ((*(v7 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v8, *v7, v7[1]);
            if ((*(a2 + 36) & 4) == 0)
            {
              return;
            }
          }

          else
          {
            v10 = *v7;
            v8[2] = v7[2];
            *v8 = v10;
            if ((*(a2 + 36) & 4) == 0)
            {
              return;
            }
          }

          goto LABEL_22;
        }

        if (v9 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = *v7;
        }

        if (v9 >= 0)
        {
          v12 = *(v7 + 23);
        }

        else
        {
          v12 = v7[1];
        }

        std::string::__assign_no_alias<false>(v8, v11, v12);
      }
    }

    if ((*(a2 + 36) & 4) == 0)
    {
      return;
    }

LABEL_22:
    v13 = *(a2 + 3);
    *(this + 9) |= 4u;
    v14 = *(this + 3);
    if (v14 == v6)
    {
      v14 = operator new(0x18uLL);
      v14[1] = 0;
      v14[2] = 0;
      *v14 = 0;
      *(this + 3) = v14;
    }

    if (v14 != v13)
    {
      v15 = *(v13 + 23);
      if (*(v14 + 23) < 0)
      {
        if (v15 >= 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = *v13;
        }

        if (v15 >= 0)
        {
          v18 = *(v13 + 23);
        }

        else
        {
          v18 = v13[1];
        }

        std::string::__assign_no_alias<false>(v14, v17, v18);
      }

      else if ((*(v13 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v14, *v13, v13[1]);
      }

      else
      {
        v16 = *v13;
        v14[2] = v13[2];
        *v14 = v16;
      }
    }
  }
}

void sub_297301A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297301A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebandTrace::~CommCenterBasebandTrace(awd::metrics::CommCenterBasebandTrace *this)
{
  *this = &unk_2A1E37BF8;
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 3);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E37BF8;
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 3);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E37BF8;
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v7);
}

void awd::metrics::CommCenterBasebandTrace::SharedDtor(awd::metrics::CommCenterBasebandTrace *this)
{
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
      v7 = v5;
    }

    else
    {
      v7 = v5;
    }

    operator delete(v7);
  }
}

uint64_t awd::metrics::CommCenterBasebandTrace::default_instance(awd::metrics::CommCenterBasebandTrace *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterBasebandTrace::default_instance_;
  if (!awd::metrics::CommCenterBasebandTrace::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterBasebandTrace::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterBasebandTrace::New(awd::metrics::CommCenterBasebandTrace *this)
{
  result = operator new(0x28uLL);
  result[4] = 0;
  *result = &unk_2A1E37BF8;
  result[1] = 0;
  v2 = MEMORY[0x29EDC9758];
  result[2] = MEMORY[0x29EDC9758];
  result[3] = v2;
  return result;
}

uint64_t awd::metrics::CommCenterBasebandTrace::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (!v1)
  {
    goto LABEL_12;
  }

  *(this + 8) = 0;
  v2 = MEMORY[0x29EDC9758];
  if ((v1 & 2) != 0)
  {
    v3 = *(this + 16);
    if (v3 != MEMORY[0x29EDC9758])
    {
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((*(this + 36) & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  if ((*(this + 36) & 4) == 0)
  {
LABEL_12:
    *(this + 36) = 0;
    return this;
  }

LABEL_7:
  v4 = *(this + 24);
  if (v4 == v2)
  {
    goto LABEL_12;
  }

  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebandTrace::MergePartialFromCodedStream(awd::metrics::CommCenterBasebandTrace *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_23;
        }

        *(this + 9) |= 2u;
        if (*(this + 2) == v4)
        {
          goto LABEL_17;
        }

LABEL_18:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 26)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_26;
        }
      }

      else if (v7 != 1 || (TagFallback & 7) != 0)
      {
LABEL_23:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v18 = *(a2 + 2);
          v13 = *(this + 9) | 1;
          *(this + 9) = v13;
          if (v12 < v18)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
          v13 = *(this + 9) | 1;
          *(this + 9) = v13;
          if (v12 < v9)
          {
LABEL_35:
            if (*v12 == 18)
            {
              *(a2 + 1) = v12 + 1;
              *(this + 9) = v13 | 2;
              if (*(this + 2) != v4)
              {
                goto LABEL_18;
              }

LABEL_17:
              v14 = operator new(0x18uLL);
              v14[1] = 0;
              v14[2] = 0;
              *v14 = 0;
              *(this + 2) = v14;
              goto LABEL_18;
            }
          }
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(this + 9) |= 4u;
    if (*(this + 3) == v4)
    {
      v17 = operator new(0x18uLL);
      v17[1] = 0;
      v17[2] = 0;
      *v17 = 0;
      *(this + 3) = v17;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
    if (!result)
    {
      return result;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterBasebandTrace::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v4 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterBasebandTrace::ByteSize(awd::metrics::CommCenterBasebandTrace *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    result = 0;
LABEL_6:
    *(this + 8) = result;
    return result;
  }

  if (*(this + 36))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v4 = *(this + 2);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = result;
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    LODWORD(result) = v10;
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v2 = *(this + 9);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 1;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  result = (result + v9 + v5 + 1);
LABEL_17:
  if ((v2 & 4) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(this + 3);
  v12 = *(v11 + 23);
  v13 = v12;
  v14 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 0x80)
  {
    v17 = result;
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    LODWORD(result) = v17;
    v12 = *(v11 + 23);
    v14 = *(v11 + 8);
    v13 = *(v11 + 23);
  }

  else
  {
    v16 = 1;
  }

  if (v13 < 0)
  {
    v12 = v14;
  }

  result = (result + v16 + v12 + 1);
  *(this + 8) = result;
  return result;
}

void awd::metrics::CommCenterBasebandTrace::CopyFrom(awd::metrics::CommCenterBasebandTrace *this, const awd::metrics::CommCenterBasebandTrace *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::CommCenterBasebandTrace::Swap(uint64_t this, awd::metrics::CommCenterBasebandTrace *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

char *awd::metrics::CommCenterBasebandTrace::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_297431600;
  strcpy(result, "awd.metrics.CommCenterBasebandTrace");
  return result;
}

void *awd::metrics::CommCenterNVMSync::SharedCtor(void *this)
{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *(this + 22) = 0;
  return this;
}

awd::metrics::CommCenterNVMSync *awd::metrics::CommCenterNVMSync::CommCenterNVMSync(awd::metrics::CommCenterNVMSync *this, const awd::metrics::CommCenterNVMSync *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E37C70;
  *(this + 22) = 0;
  awd::metrics::CommCenterNVMSync::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E37C70;
  *(this + 22) = 0;
  awd::metrics::CommCenterNVMSync::MergeFrom(this, a2);
  return this;
}

uint64_t awd::metrics::CommCenterNVMSync::MergeFrom(uint64_t this, const awd::metrics::CommCenterNVMSync *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 36) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 36) |= 2u;
    *(this + 24) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 2);
    *(this + 36) |= 4u;
    *(this + 16) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 28);
    *(this + 36) |= 8u;
    *(this + 28) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return this;
    }

LABEL_9:
    v5 = *(a2 + 29);
    *(this + 36) |= 0x10u;
    *(this + 29) = v5;
  }

  return this;
}

void sub_297302630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297302644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterNVMSync::~CommCenterNVMSync(awd::metrics::CommCenterNVMSync *this)
{
  *this = &unk_2A1E37C70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37C70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37C70;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterNVMSync::default_instance(awd::metrics::CommCenterNVMSync *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterNVMSync::default_instance_;
  if (!awd::metrics::CommCenterNVMSync::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterNVMSync::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterNVMSync::New(awd::metrics::CommCenterNVMSync *this)
{
  result = operator new(0x28uLL);
  result[4] = 0;
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E37C70;
  *(result + 22) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterNVMSync::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 22) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterNVMSync::MergePartialFromCodedStream(awd::metrics::CommCenterNVMSync *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v6 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v12 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v12 >= v7 || (v13 = *v12, v13 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v14 = *(a2 + 1);
              v7 = *(a2 + 2);
              *(this + 9) |= 1u;
              if (v14 < v7)
              {
                goto LABEL_34;
              }
            }

            else
            {
              *(this + 1) = v13;
              v14 = v12 + 1;
              *(a2 + 1) = v14;
              *(this + 9) |= 1u;
              if (v14 < v7)
              {
LABEL_34:
                if (*v14 == 16)
                {
                  v9 = v14 + 1;
                  *(a2 + 1) = v9;
                  if (v9 < v7)
                  {
                    goto LABEL_36;
                  }

LABEL_39:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                  if (!result)
                  {
                    return result;
                  }

                  v16 = *(a2 + 1);
                  v7 = *(a2 + 2);
                  *(this + 9) |= 2u;
                  if (v16 < v7)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }
          }

          else
          {
            if (v6 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v9 >= v7)
            {
              goto LABEL_39;
            }

LABEL_36:
            v15 = *v9;
            if (v15 < 0)
            {
              goto LABEL_39;
            }

            *(this + 6) = v15;
            v16 = v9 + 1;
            *(a2 + 1) = v16;
            *(this + 9) |= 2u;
            if (v16 < v7)
            {
LABEL_41:
              if (*v16 == 24)
              {
                v10 = v16 + 1;
                *(a2 + 1) = v10;
                if (v10 < v7)
                {
                  goto LABEL_43;
                }

LABEL_46:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
                if (!result)
                {
                  return result;
                }

                v18 = *(a2 + 1);
                v7 = *(a2 + 2);
                *(this + 9) |= 4u;
                if (v18 < v7)
                {
                  goto LABEL_48;
                }
              }
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v10 >= v7)
        {
          goto LABEL_46;
        }

LABEL_43:
        v17 = *v10;
        if (v17 < 0)
        {
          goto LABEL_46;
        }

        *(this + 2) = v17;
        v18 = v10 + 1;
        *(a2 + 1) = v18;
        *(this + 9) |= 4u;
        if (v18 < v7)
        {
LABEL_48:
          if (*v18 == 32)
          {
            v11 = v18 + 1;
            *(a2 + 1) = v11;
            v25 = -1431655766;
            if (v11 >= v7)
            {
              goto LABEL_52;
            }

            goto LABEL_50;
          }
        }
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_25;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      v25 = -1431655766;
      if (v11 >= v7)
      {
LABEL_52:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v19 = v25;
        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_54;
      }

LABEL_50:
      v19 = *v11;
      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_52;
      }

      v20 = v11 + 1;
      *(a2 + 1) = v20;
LABEL_54:
      *(this + 28) = v19 != 0;
      *(this + 9) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v20 + 1;
        v24 = -1431655766;
        if ((v20 + 1) >= v7)
        {
          goto LABEL_59;
        }

LABEL_57:
        v21 = *v8;
        if ((v21 & 0x80000000) != 0)
        {
LABEL_59:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v21 = v24;
          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_61;
        }

        v22 = v8 + 1;
        *(a2 + 1) = v22;
LABEL_61:
        *(this + 29) = v21 != 0;
        *(this + 9) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      v24 = -1431655766;
      if (v8 >= v7)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

LABEL_25:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterNVMSync::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 29);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterNVMSync::ByteSize(awd::metrics::CommCenterNVMSync *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    result = 0;
    *(this + 8) = 0;
    return result;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(this + 6);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_11;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 9);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 9);
  }

  result = ((v2 >> 2) & 2) + v3 + ((v2 >> 3) & 2);
  *(this + 8) = result;
  return result;
}

const awd::metrics::CommCenterNVMSync *awd::metrics::CommCenterNVMSync::CopyFrom(const awd::metrics::CommCenterNVMSync *this, const awd::metrics::CommCenterNVMSync *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterNVMSync::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterNVMSync::Swap(uint64_t this, awd::metrics::CommCenterNVMSync *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LOBYTE(v3) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

double awd::metrics::CommCenterNVMSync::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v3 = operator new(0x20uLL);
  *a1 = v3;
  *(a1 + 8) = xmmword_297431AF0;
  strcpy(v3, "awd.metrics.CommCenterNVMSync");
  return *"ommCenterNVMSync";
}

void *awd::metrics::CommCenterAccessoryInformation::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::CommCenterAccessoryInformation *awd::metrics::CommCenterAccessoryInformation::CommCenterAccessoryInformation(awd::metrics::CommCenterAccessoryInformation *this, const awd::metrics::CommCenterAccessoryInformation *a2)
{
  *this = &unk_2A1E37CE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::CommCenterAccessoryInformation::MergeFrom(this, a2);
  return this;
}

{
  *this = &unk_2A1E37CE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::CommCenterAccessoryInformation::MergeFrom(this, a2);
  return this;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::MergeFrom(uint64_t this, const awd::metrics::CommCenterAccessoryInformation *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 28) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return this;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 28) |= 2u;
    *(this + 16) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return this;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 28) |= 4u;
    *(this + 20) = v5;
  }

  return this;
}

void sub_297302FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297302FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterAccessoryInformation::~CommCenterAccessoryInformation(awd::metrics::CommCenterAccessoryInformation *this)
{
  *this = &unk_2A1E37CE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37CE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37CE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterAccessoryInformation::default_instance(awd::metrics::CommCenterAccessoryInformation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterAccessoryInformation::default_instance_;
  if (!awd::metrics::CommCenterAccessoryInformation::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterAccessoryInformation::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterAccessoryInformation::New(awd::metrics::CommCenterAccessoryInformation *this)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E37CE8;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::MergePartialFromCodedStream(awd::metrics::CommCenterAccessoryInformation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_18;
          }

          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v12 >= v7)
          {
            goto LABEL_37;
          }

LABEL_34:
          v15 = *v12;
          if (v15 < 0)
          {
            goto LABEL_37;
          }

          *(this + 5) = v15;
          v16 = v12 + 1;
          *(a2 + 1) = v16;
          *(this + 7) |= 4u;
          if (v16 == v7)
          {
LABEL_39:
            if (*(a2 + 11) || *(a2 + 6) == *(a2 + 10))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (v6 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v11 >= v7)
        {
          goto LABEL_30;
        }

LABEL_27:
        v13 = *v11;
        if (v13 < 0)
        {
          goto LABEL_30;
        }

        *(this + 4) = v13;
        v14 = v11 + 1;
        *(a2 + 1) = v14;
        *(this + 7) |= 2u;
        if (v14 < v7)
        {
LABEL_32:
          if (*v14 == 24)
          {
            v12 = v14 + 1;
            *(a2 + 1) = v12;
            if (v12 < v7)
            {
              goto LABEL_34;
            }

LABEL_37:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v17 = *(a2 + 2);
            *(this + 7) |= 4u;
            if (v18 == v17)
            {
              goto LABEL_39;
            }
          }
        }
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        *(this + 7) |= 1u;
        if (v10 < v7)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
        *(this + 7) |= 1u;
        if (v10 < v7)
        {
LABEL_25:
          if (*v10 == 16)
          {
            v11 = v10 + 1;
            *(a2 + 1) = v11;
            if (v11 < v7)
            {
              goto LABEL_27;
            }

LABEL_30:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v7 = *(a2 + 2);
            *(this + 7) |= 2u;
            if (v14 < v7)
            {
              goto LABEL_32;
            }
          }
        }
      }
    }

LABEL_18:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterAccessoryInformation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterAccessoryInformation::ByteSize(awd::metrics::CommCenterAccessoryInformation *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    result = 0;
LABEL_6:
    *(this + 6) = result;
    return result;
  }

  if (*(this + 28))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 7);
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  if (*(this + 4) >= 0x80u)
  {
    v5 = result;
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 4));
    LODWORD(result) = v5;
    v4 = v6 + 1;
    v2 = *(this + 7);
  }

  else
  {
    v4 = 2;
  }

  result = (v4 + result);
LABEL_12:
  if ((v2 & 4) == 0)
  {
    goto LABEL_6;
  }

  if (*(this + 5) >= 0x80u)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 5)) + 1 + result;
  }

  else
  {
    result = (result + 2);
  }

  *(this + 6) = result;
  return result;
}

const awd::metrics::CommCenterAccessoryInformation *awd::metrics::CommCenterAccessoryInformation::CopyFrom(const awd::metrics::CommCenterAccessoryInformation *this, const awd::metrics::CommCenterAccessoryInformation *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterAccessoryInformation::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::Swap(uint64_t this, awd::metrics::CommCenterAccessoryInformation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

double awd::metrics::CommCenterAccessoryInformation::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v3 = operator new(0x30uLL);
  *a1 = v3;
  *(a1 + 8) = xmmword_297431B00;
  strcpy(v3, "awd.metrics.CommCenterAccessoryInformation");
  return *"ssoryInformation";
}

uint64_t awd::metrics::MetricsCCBasebandReset::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 44) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 48) = v1;
  return this;
}

awd::metrics::MetricsCCBasebandReset *awd::metrics::MetricsCCBasebandReset::MetricsCCBasebandReset(awd::metrics::MetricsCCBasebandReset *this, const awd::metrics::MetricsCCBasebandReset *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37D60;
  *(this + 1) = v3;
  *(this + 20) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v3;
  awd::metrics::MetricsCCBasebandReset::MergeFrom(this, a2);
  return this;
}

{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E37D60;
  *(this + 1) = v3;
  *(this + 20) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v3;
  awd::metrics::MetricsCCBasebandReset::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MetricsCCBasebandReset::MergeFrom(awd::metrics::MetricsCCBasebandReset *this, const awd::metrics::MetricsCCBasebandReset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v37);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_76;
  }

  v5 = MEMORY[0x29EDC9758];
  if ((v4 & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = *(a2 + 1);
  *(this + 17) |= 1u;
  v7 = *(this + 1);
  if (v7 == v5)
  {
    v7 = operator new(0x18uLL);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    *(this + 1) = v7;
  }

  if (v7 == v6)
  {
LABEL_19:
    v10 = *(a2 + 17);
    if ((v10 & 2) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v8 = *(v6 + 23);
  if (*(v7 + 23) < 0)
  {
    if (v8 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v8 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = v6[1];
    }

    std::string::__assign_no_alias<false>(v7, v11, v12);
    goto LABEL_19;
  }

  if ((*(v6 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v7, *v6, v6[1]);
    v10 = *(a2 + 17);
    if ((v10 & 2) != 0)
    {
      goto LABEL_25;
    }

LABEL_20:
    if ((v10 & 4) != 0)
    {
      goto LABEL_26;
    }

LABEL_21:
    if ((v10 & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v9 = *v6;
  v7[2] = v6[2];
  *v7 = v9;
  v10 = *(a2 + 17);
  if ((v10 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_25:
  v13 = *(a2 + 40);
  *(this + 17) |= 2u;
  *(this + 40) = v13;
  v10 = *(a2 + 17);
  if ((v10 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_26:
  v14 = *(a2 + 4);
  *(this + 17) |= 4u;
  *(this + 4) = v14;
  v10 = *(a2 + 17);
  if ((v10 & 8) != 0)
  {
LABEL_27:
    v15 = *(a2 + 5);
    *(this + 17) |= 8u;
    *(this + 5) = v15;
    if ((*(a2 + 17) & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_28;
  }

LABEL_22:
  if ((v10 & 0x10) == 0)
  {
    goto LABEL_42;
  }

LABEL_28:
  v16 = *(a2 + 3);
  *(this + 17) |= 0x10u;
  v17 = *(this + 3);
  if (v17 == v5)
  {
    v17 = operator new(0x18uLL);
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 0;
    *(this + 3) = v17;
  }

  if (v17 == v16)
  {
LABEL_42:
    if ((*(a2 + 68) & 0x20) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_43;
  }

  v18 = *(v16 + 23);
  if (*(v17 + 23) < 0)
  {
    if (v18 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *v16;
    }

    if (v18 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = v16[1];
    }

    std::string::__assign_no_alias<false>(v17, v20, v21);
    goto LABEL_42;
  }

  if ((*(v16 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v17, *v16, v16[1]);
    if ((*(a2 + 68) & 0x20) == 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v19 = *v16;
    v17[2] = v16[2];
    *v17 = v19;
    if ((*(a2 + 68) & 0x20) == 0)
    {
      goto LABEL_59;
    }
  }

LABEL_43:
  v22 = *(a2 + 4);
  *(this + 17) |= 0x20u;
  v23 = *(this + 4);
  if (v23 == v5)
  {
    v23 = operator new(0x18uLL);
    v23[1] = 0;
    v23[2] = 0;
    *v23 = 0;
    *(this + 4) = v23;
  }

  if (v23 != v22)
  {
    v24 = *(v22 + 23);
    if (*(v23 + 23) < 0)
    {
      if (v24 >= 0)
      {
        v26 = v22;
      }

      else
      {
        v26 = *v22;
      }

      if (v24 >= 0)
      {
        v27 = *(v22 + 23);
      }

      else
      {
        v27 = v22[1];
      }

      std::string::__assign_no_alias<false>(v23, v26, v27);
    }

    else if ((*(v22 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v23, *v22, v22[1]);
    }

    else
    {
      v25 = *v22;
      v23[2] = v22[2];
      *v23 = v25;
    }
  }

LABEL_59:
  if ((*(a2 + 68) & 0x40) == 0)
  {
    goto LABEL_74;
  }

  v28 = *(a2 + 6);
  *(this + 17) |= 0x40u;
  v29 = *(this + 6);
  if (v29 == v5)
  {
    v29 = operator new(0x18uLL);
    v29[1] = 0;
    v29[2] = 0;
    *v29 = 0;
    *(this + 6) = v29;
  }

  if (v29 == v28)
  {
LABEL_74:
    v4 = *(a2 + 17);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v30 = *(v28 + 23);
  if (*(v29 + 23) < 0)
  {
    if (v30 >= 0)
    {
      v32 = v28;
    }

    else
    {
      v32 = *v28;
    }

    if (v30 >= 0)
    {
      v33 = *(v28 + 23);
    }

    else
    {
      v33 = v28[1];
    }

    std::string::__assign_no_alias<false>(v29, v32, v33);
    goto LABEL_74;
  }

  if ((*(v28 + 23) & 0x80) == 0)
  {
    v31 = *v28;
    v29[2] = v28[2];
    *v29 = v31;
    v4 = *(a2 + 17);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_76;
    }

LABEL_75:
    v34 = *(a2 + 11);
    *(this + 17) |= 0x80u;
    *(this + 11) = v34;
    v4 = *(a2 + 17);
    goto LABEL_76;
  }

  std::string::__assign_no_alias<true>(v29, *v28, v28[1]);
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_75;
  }

LABEL_76:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v35 = *(a2 + 7);
      *(this + 17) |= 0x100u;
      *(this + 7) = v35;
      v4 = *(a2 + 17);
    }

    if ((v4 & 0x200) != 0)
    {
      v36 = *(a2 + 41);
      *(this + 17) |= 0x200u;
      *(this + 41) = v36;
    }
  }
}

void sub_297303A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297303A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricsCCBasebandReset::~MetricsCCBasebandReset(awd::metrics::MetricsCCBasebandReset *this)
{
  *this = &unk_2A1E37D60;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37D60;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37D60;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v2);
}

void awd::metrics::MetricsCCBasebandReset::SharedDtor(awd::metrics::MetricsCCBasebandReset *this)
{
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
      goto LABEL_28;
    }

LABEL_11:
    v7 = *(this + 4);
    if (v7 != v3 && v7 != 0)
    {
      goto LABEL_34;
    }

LABEL_16:
    v9 = *(this + 6);
    if (v9 == v3 || v9 == 0)
    {
      return;
    }

    goto LABEL_40;
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  operator delete(v2);
  v5 = *(this + 3);
  if (v5 == v3 || v5 == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  operator delete(v5);
  v7 = *(this + 4);
  if (v7 == v3 || v7 == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  operator delete(v7);
  v9 = *(this + 6);
  if (v9 != v3 && v9 != 0)
  {
LABEL_40:
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
      v14 = v9;
    }

    else
    {
      v14 = v9;
    }

    operator delete(v14);
  }
}

uint64_t awd::metrics::MetricsCCBasebandReset::default_instance(awd::metrics::MetricsCCBasebandReset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MetricsCCBasebandReset::default_instance_;
  if (!awd::metrics::MetricsCCBasebandReset::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::MetricsCCBasebandReset::default_instance_;
  }

  return result;
}

void *awd::metrics::MetricsCCBasebandReset::New(awd::metrics::MetricsCCBasebandReset *this)
{
  result = operator new(0x48uLL);
  v2 = MEMORY[0x29EDC9758];
  *result = &unk_2A1E37D60;
  result[1] = v2;
  *(result + 20) = 0;
  result[2] = 0;
  result[3] = v2;
  result[4] = v2;
  *(result + 11) = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = v2;
  return result;
}

uint64_t awd::metrics::MetricsCCBasebandReset::Clear(uint64_t this)
{
  v1 = *(this + 68);
  if (v1)
  {
    v2 = MEMORY[0x29EDC9758];
    if (v1)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x29EDC9758])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
          *(this + 40) = 0;
          *(this + 16) = 0;
          if ((*(this + 68) & 0x10) == 0)
          {
            goto LABEL_13;
          }

LABEL_7:
          v4 = *(this + 24);
          if (v4 != v2)
          {
            if (*(v4 + 23) < 0)
            {
              **v4 = 0;
              *(v4 + 8) = 0;
            }

            else
            {
              *v4 = 0;
              *(v4 + 23) = 0;
            }
          }

LABEL_13:
          if ((*(this + 68) & 0x20) != 0)
          {
            v5 = *(this + 32);
            if (v5 != v2)
            {
              if (*(v5 + 23) < 0)
              {
                **v5 = 0;
                *(v5 + 8) = 0;
                if ((*(this + 68) & 0x40) != 0)
                {
LABEL_18:
                  v6 = *(this + 48);
                  if (v6 != v2)
                  {
                    if (*(v6 + 23) < 0)
                    {
                      **v6 = 0;
                      *(v6 + 8) = 0;
                    }

                    else
                    {
                      *v6 = 0;
                      *(v6 + 23) = 0;
                    }
                  }
                }

LABEL_24:
                *(this + 44) = 0;
                v1 = *(this + 68);
                goto LABEL_25;
              }

              *v5 = 0;
              *(v5 + 23) = 0;
            }
          }

          if ((*(this + 68) & 0x40) != 0)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }

        *v3 = 0;
        *(v3 + 23) = 0;
      }
    }

    *(this + 40) = 0;
    *(this + 16) = 0;
    if ((*(this + 68) & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

LABEL_25:
  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 41) = 0;
  }

  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::MetricsCCBasebandReset::MergePartialFromCodedStream(awd::metrics::MetricsCCBasebandReset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  do
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v5 = *(a2 + 1);
            if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
            {
              TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
              *(a2 + 8) = TagFallback;
              if (!TagFallback)
              {
                return 1;
              }
            }

            else
            {
              *(a2 + 8) = TagFallback;
              *(a2 + 1) = v5 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v7 = TagFallback >> 3;
            v8 = TagFallback & 7;
            if (TagFallback >> 3 > 5)
            {
              break;
            }

            if (TagFallback >> 3 <= 2)
            {
              if (v7 == 1)
              {
                if (v8 != 2)
                {
                  goto LABEL_69;
                }

                *(this + 17) |= 1u;
                if (*(this + 1) == v4)
                {
                  v18 = operator new(0x18uLL);
                  v18[1] = 0;
                  v18[2] = 0;
                  *v18 = 0;
                  *(this + 1) = v18;
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v19 = *(a2 + 1);
                v13 = *(a2 + 2);
                if (v19 < v13 && *v19 == 16)
                {
                  v14 = v19 + 1;
                  *(a2 + 1) = v14;
                  v45 = -1431655766;
                  if (v14 >= v13)
                  {
                    goto LABEL_101;
                  }

LABEL_43:
                  v20 = *v14;
                  if ((v20 & 0x80000000) != 0)
                  {
LABEL_101:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
                    if (!result)
                    {
                      return result;
                    }

                    v20 = v45;
                    v21 = *(a2 + 1);
                    v13 = *(a2 + 2);
                    goto LABEL_103;
                  }

                  v21 = v14 + 1;
                  *(a2 + 1) = v21;
LABEL_103:
                  *(this + 40) = v20 != 0;
                  *(this + 17) |= 2u;
                  if (v21 < v13 && *v21 == 24)
                  {
                    v23 = v21 + 1;
                    *(a2 + 1) = v23;
                    if (v23 < v13)
                    {
                      goto LABEL_106;
                    }

LABEL_109:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                    if (!result)
                    {
                      return result;
                    }

                    v41 = *(a2 + 1);
                    v43 = *(a2 + 2);
                    v42 = *(this + 17) | 4;
                    *(this + 17) = v42;
                    if (v41 < v43)
                    {
                      goto LABEL_111;
                    }
                  }
                }
              }

              else
              {
                if (v7 == 2 && (TagFallback & 7) == 0)
                {
                  v14 = *(a2 + 1);
                  v13 = *(a2 + 2);
                  v45 = -1431655766;
                  if (v14 >= v13)
                  {
                    goto LABEL_101;
                  }

                  goto LABEL_43;
                }

LABEL_69:
                if (v8 == 4)
                {
                  return 1;
                }

                if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
                {
                  return 0;
                }
              }
            }

            else if (v7 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_69;
              }

              v23 = *(a2 + 1);
              v13 = *(a2 + 2);
              if (v23 >= v13)
              {
                goto LABEL_109;
              }

LABEL_106:
              v40 = *v23;
              if (v40 < 0)
              {
                goto LABEL_109;
              }

              *(this + 4) = v40;
              v41 = v23 + 1;
              *(a2 + 1) = v41;
              v42 = *(this + 17) | 4;
              *(this + 17) = v42;
              if (v41 < v13)
              {
LABEL_111:
                if (*v41 == 34)
                {
                  *(a2 + 1) = v41 + 1;
                  *(this + 17) = v42 | 0x10;
                  if (*(this + 3) != v4)
                  {
                    goto LABEL_61;
                  }

LABEL_60:
                  v27 = operator new(0x18uLL);
                  v27[1] = 0;
                  v27[2] = 0;
                  *v27 = 0;
                  *(this + 3) = v27;
                  goto LABEL_61;
                }
              }
            }

            else if (v7 == 4)
            {
              if (v8 != 2)
              {
                goto LABEL_69;
              }

              *(this + 17) |= 0x10u;
              if (*(this + 3) == v4)
              {
                goto LABEL_60;
              }

LABEL_61:
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v28 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v28 < v9 && *v28 == 40)
              {
                v10 = v28 + 1;
                *(a2 + 1) = v10;
                if (v10 < v9)
                {
                  goto LABEL_65;
                }

LABEL_89:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v30 = *(a2 + 1);
                v9 = *(a2 + 2);
                *(this + 17) |= 0x100u;
                if (v30 < v9)
                {
                  goto LABEL_91;
                }
              }
            }

            else
            {
              if (v7 != 5 || (TagFallback & 7) != 0)
              {
                goto LABEL_69;
              }

              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v10 >= v9)
              {
                goto LABEL_89;
              }

LABEL_65:
              v29 = *v10;
              if (v29 < 0)
              {
                goto LABEL_89;
              }

              *(this + 7) = v29;
              v30 = v10 + 1;
              *(a2 + 1) = v30;
              *(this + 17) |= 0x100u;
              if (v30 < v9)
              {
LABEL_91:
                if (*v30 == 48)
                {
                  v22 = v30 + 1;
                  *(a2 + 1) = v22;
                  v44 = -1431655766;
                  if (v22 >= v9)
                  {
                    goto LABEL_95;
                  }

LABEL_93:
                  v37 = *v22;
                  if ((v37 & 0x80000000) != 0)
                  {
LABEL_95:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v44;
                    v38 = *(a2 + 1);
                    v9 = *(a2 + 2);
                    goto LABEL_97;
                  }

                  v38 = v22 + 1;
                  *(a2 + 1) = v38;
LABEL_97:
                  *(this + 41) = v37 != 0;
                  v39 = *(this + 17) | 0x200;
                  *(this + 17) = v39;
                  if (v38 < v9 && *v38 == 58)
                  {
                    *(a2 + 1) = v38 + 1;
                    *(this + 17) = v39 | 0x20;
                    if (*(this + 4) != v4)
                    {
                      goto LABEL_32;
                    }

LABEL_31:
                    v15 = operator new(0x18uLL);
                    v15[1] = 0;
                    v15[2] = 0;
                    *v15 = 0;
                    *(this + 4) = v15;
                    goto LABEL_32;
                  }
                }
              }
            }
          }

          if (TagFallback >> 3 > 7)
          {
            break;
          }

          if (v7 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(a2 + 1);
              v9 = *(a2 + 2);
              v44 = -1431655766;
              if (v22 >= v9)
              {
                goto LABEL_95;
              }

              goto LABEL_93;
            }

            goto LABEL_69;
          }

          if (v7 != 7 || v8 != 2)
          {
            goto LABEL_69;
          }

          *(this + 17) |= 0x20u;
          if (*(this + 4) == v4)
          {
            goto LABEL_31;
          }

LABEL_32:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 66)
          {
            *(a2 + 1) = v17 + 1;
LABEL_52:
            *(this + 17) |= 0x40u;
            if (*(this + 6) == v4)
            {
              v24 = operator new(0x18uLL);
              v24[1] = 0;
              v24[2] = 0;
              *v24 = 0;
              *(this + 6) = v24;
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v25 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v25 < v11 && *v25 == 72)
            {
              v26 = v25 + 1;
              *(a2 + 1) = v26;
              goto LABEL_73;
            }
          }
        }

        if (v7 == 8)
        {
          if (v8 == 2)
          {
            goto LABEL_52;
          }

          goto LABEL_69;
        }

        if (v7 != 9)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v26 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_73:
        if (v26 >= v11 || (v31 = *v26, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v11 = *(a2 + 2);
          *(this + 17) |= 0x80u;
          if (v32 < v11)
          {
            goto LABEL_79;
          }
        }

        else
        {
          *(this + 11) = v31;
          v32 = v26 + 1;
          *(a2 + 1) = v32;
          *(this + 17) |= 0x80u;
          if (v32 < v11)
          {
LABEL_79:
            if (*v32 == 80)
            {
              v12 = v32 + 1;
              *(a2 + 1) = v12;
              if (v12 >= v11)
              {
                goto LABEL_84;
              }

LABEL_81:
              v33 = *v12;
              if (v33 < 0)
              {
                goto LABEL_84;
              }

              *(this + 5) = v33;
              v34 = v12 + 1;
              *(a2 + 1) = v34;
              *(this + 17) |= 8u;
              if (v34 == v11)
              {
                goto LABEL_86;
              }
            }
          }
        }
      }

      if (v7 != 10 || (TagFallback & 7) != 0)
      {
        goto LABEL_69;
      }

      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v12 < v11)
      {
        goto LABEL_81;
      }

LABEL_84:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
      if (!result)
      {
        return result;
      }

      v36 = *(a2 + 1);
      v35 = *(a2 + 2);
      *(this + 17) |= 8u;
    }

    while (v36 != v35);
LABEL_86:
    ;
  }

  while (!*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::MetricsCCBasebandReset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x100) == 0)
  {
LABEL_6:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 56), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 41), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
    if ((*(v5 + 68) & 8) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  v10 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_21:
  v11 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v11, a2, a4);
}

uint64_t awd::metrics::MetricsCCBasebandReset::ByteSize(awd::metrics::MetricsCCBasebandReset *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0xFF00) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

  if ((v2 & 1) == 0)
  {
    v3 = v2 & 2;
    if ((v2 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v4 = *(this + 1);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 17);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = (v2 & 2) + v9 + v5;
  if ((v2 & 4) != 0)
  {
LABEL_16:
    v11 = *(this + 4);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 17);
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_20:
  if ((v2 & 8) != 0)
  {
    v14 = *(this + 5);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      v2 = *(this + 17);
      v3 = (v15 + 1 + v3);
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v3 = (v3 + 2);
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_22:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_31:
  v16 = *(this + 3);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v2 = *(this + 17);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v3 = (v3 + v21 + v17 + 1);
  if ((v2 & 0x20) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_40:
  v22 = *(this + 4);
  v23 = *(v22 + 23);
  v24 = v23;
  v25 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v26 = *(v22 + 23);
  }

  else
  {
    v26 = v25;
  }

  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    v23 = *(v22 + 23);
    v25 = *(v22 + 8);
    v2 = *(this + 17);
    v24 = *(v22 + 23);
  }

  else
  {
    v27 = 1;
  }

  if (v24 < 0)
  {
    v23 = v25;
  }

  v3 = (v3 + v27 + v23 + 1);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }

LABEL_58:
    v34 = *(this + 11);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
      v2 = *(this + 17);
      v3 = (v35 + 1 + v3);
      if ((v2 & 0xFF00) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v3 = (v3 + 2);
      if ((v2 & 0xFF00) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_62;
  }

LABEL_49:
  v28 = *(this + 6);
  v29 = *(v28 + 23);
  v30 = v29;
  v31 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = v31;
  }

  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
    v29 = *(v28 + 23);
    v31 = *(v28 + 8);
    v2 = *(this + 17);
    v30 = *(v28 + 23);
  }

  else
  {
    v33 = 1;
  }

  if (v30 < 0)
  {
    v29 = v31;
  }

  v3 = (v3 + v33 + v29 + 1);
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_58;
  }

LABEL_25:
  if ((v2 & 0xFF00) == 0)
  {
LABEL_26:
    *(this + 16) = v3;
    return v3;
  }

LABEL_62:
  if ((v2 & 0x100) != 0)
  {
    LODWORD(v3) = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    v2 = *(this + 17);
  }

  v36 = ((v2 >> 8) & 2) + v3;
  *(this + 16) = v36;
  return v36;
}

void awd::metrics::MetricsCCBasebandReset::CopyFrom(awd::metrics::MetricsCCBasebandReset *this, const awd::metrics::MetricsCCBasebandReset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::MetricsCCBasebandReset::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MetricsCCBasebandReset::Swap(uint64_t this, awd::metrics::MetricsCCBasebandReset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    v5 = *(this + 48);
    v6 = *(this + 56);
    v7 = *(a2 + 7);
    *(this + 48) = *(a2 + 6);
    *(this + 56) = v7;
    *(a2 + 6) = v5;
    *(a2 + 7) = v6;
    LOBYTE(v5) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v5;
    LODWORD(v5) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v5;
    LODWORD(v5) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v5;
  }

  return this;
}

char *awd::metrics::MetricsCCBasebandReset::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_29742F120;
  strcpy(result, "awd.metrics.MetricsCCBasebandReset");
  return result;
}

void util::strip_non_printable(std::string *this)
{
  v1 = this;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (size)
  {
    v5 = size - 1;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = v3->__r_.__value_.__s.__data_[0];
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      v8 = *(v6 + 4 * v7 + 60);
      if ((v8 & 0x40000) == 0 || (v8 & 0x4000) != 0)
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = (v3 + 1);
      --v5;
      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    if (__maskrune(v3->__r_.__value_.__s.__data_[0], 0x40000uLL) && !__maskrune(v7, 0x4000uLL))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
    {
      v9 = 1;
      v4 = v3;
      while (1)
      {
        v10 = v3->__r_.__value_.__s.__data_[v9];
        if ((v10 & 0x80000000) != 0)
        {
          if (!__maskrune(v3->__r_.__value_.__s.__data_[v9], 0x40000uLL) || __maskrune(v10, 0x4000uLL))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *(v6 + 4 * v10 + 60);
          if ((v11 & 0x40000) == 0 || (v11 & 0x4000) != 0)
          {
            goto LABEL_19;
          }
        }

        v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v9];
        v4 = (v4 + 1);
LABEL_19:
        ++v9;
        if (!--v5)
        {
          goto LABEL_28;
        }
      }
    }

    v4 = v3;
  }

LABEL_28:
  v12 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = v1->__r_.__value_.__r.__words[0];
  v15 = (v1->__r_.__value_.__r.__words[0] + v1->__r_.__value_.__l.__size_);
  if ((v12 & 0x80u) != 0)
  {
    v16 = v1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = v1 + v12;
    v16 = v1;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = v1->__r_.__value_.__l.__size_;
  }

  v17 = v4 - v16;
  if (v12 < v4 - v16)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 - v4 == -1)
  {
    if (v13 < 0)
    {
      v1->__r_.__value_.__l.__size_ = v17;
      v1 = v14;
    }

    else
    {
      *(&v1->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v1->__r_.__value_.__s.__data_[v17] = 0;
  }

  else
  {

    std::string::__erase_external_with_move(v1, v17, v15 - v4);
  }
}

uint64_t util::convert_garbage(uint64_t result)
{
  v1 = *(result + 23);
  if (v1 >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = *result;
  }

  if (v1 >= 0)
  {
    v3 = *(result + 23);
  }

  else
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = MEMORY[0x29EDCA600];
    do
    {
      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        result = __maskrune(*v2, 0x40000uLL);
        if (result)
        {
          goto LABEL_10;
        }

        result = __maskrune(v5, 0x4000uLL);
        if (result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v4 + 4 * v5 + 60);
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_10;
        }

        result = v6 & 0x4000;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_10;
        }
      }

      *v2 = 32;
LABEL_10:
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void util::strip_pattern(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v5 = a1[23];
  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v7 = a3->__r_.__value_.__r.__words[0];
  if ((v6 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  size = a3->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a3->__r_.__value_.__l.__size_;
  }

  if (v5 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v5 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (!v10)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (v9 >= v10)
  {
    v25 = v8 + v9;
    v26 = *v11;
    v27 = v8;
    do
    {
      v28 = v9 - v10;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      if (!memcmp(v29, v11, v10))
      {
        if (v30 != v25)
        {
          v12 = v30 - v8;
          if (v30 - v8 != -1)
          {
            if (v10 == -1)
            {
              while (1)
              {
                v31 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v31 = v6;
                }

                if (v31 < v12)
                {
                  break;
                }

                if (v6 < 0)
                {
                  a3->__r_.__value_.__l.__size_ = v12;
                }

                else
                {
                  *(&a3->__r_.__value_.__s + 23) = v12 & 0x7F;
                  v7 = a3;
                }

                v7->__r_.__value_.__s.__data_[v12] = 0;
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                v7 = a3->__r_.__value_.__r.__words[0];
                if ((v6 & 0x80u) == 0)
                {
                  v32 = a3;
                }

                else
                {
                  v32 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v33 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v33 = a3->__r_.__value_.__l.__size_;
                }

                v34 = a1[23];
                if (v34 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                if (v34 >= 0)
                {
                  v36 = a1[23];
                }

                else
                {
                  v36 = *(a1 + 1);
                }

                if (v36)
                {
                  if (v33 < v36)
                  {
                    return;
                  }

                  v37 = v32 + v33;
                  v38 = *v35;
                  v39 = v32;
                  while (1)
                  {
                    v40 = v33 - v36;
                    if (v40 == -1)
                    {
                      return;
                    }

                    v41 = memchr(v39, v38, v40 + 1);
                    if (!v41)
                    {
                      return;
                    }

                    v42 = v41;
                    if (!memcmp(v41, v35, v36))
                    {
                      break;
                    }

                    v39 = (v42 + 1);
                    v33 = v37 - (v42 + 1);
                    if (v33 < v36)
                    {
                      return;
                    }
                  }

                  if (v42 == v37)
                  {
                    return;
                  }

                  v12 = v42 - v32;
                  if (v42 - v32 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_20:
                v13 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v13 = v6;
                }

                if (v13 < v12)
                {
                  break;
                }

                std::string::__erase_external_with_move(a3, v12, v10);
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                if ((v6 & 0x80u) == 0)
                {
                  v14 = a3;
                }

                else
                {
                  v14 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v15 = a3->__r_.__value_.__l.__size_;
                }

                v16 = a1[23];
                if (v16 >= 0)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = *a1;
                }

                if (v16 >= 0)
                {
                  v18 = a1[23];
                }

                else
                {
                  v18 = *(a1 + 1);
                }

                if (v18)
                {
                  if (v15 < v18)
                  {
                    return;
                  }

                  v19 = v14 + v15;
                  v20 = *v17;
                  v21 = v14;
                  while (1)
                  {
                    v22 = v15 - v18;
                    if (v22 == -1)
                    {
                      return;
                    }

                    v23 = memchr(v21, v20, v22 + 1);
                    if (!v23)
                    {
                      return;
                    }

                    v24 = v23;
                    if (!memcmp(v23, v17, v18))
                    {
                      break;
                    }

                    v21 = (v24 + 1);
                    v15 = v19 - (v24 + 1);
                    if (v15 < v18)
                    {
                      return;
                    }
                  }

                  if (v24 == v19)
                  {
                    return;
                  }

                  v12 = v24 - v14;
                  if (v24 - v14 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        return;
      }

      v27 = (v30 + 1);
      v9 = v25 - (v30 + 1);
    }

    while (v9 >= v10);
  }
}

void sub_29730507C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *util::strip_leading_trailing@<X0>(char *result@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = result[23];
  v5 = *(result + 1);
  v20 = *result;
  if ((v4 & 0x80u) == 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
  }

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
    v10 = a2[1];
  }

  if (!v7)
  {
    goto LABEL_26;
  }

  v11 = result;
  v12 = &v6[v7];
  v13 = 0;
  if (!v10)
  {
    v14 = v7 - 1;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  while (1)
  {
    result = memchr(v9, v6[v13], v10);
    if (!result)
    {
      break;
    }

    if (v7 == ++v13)
    {
      goto LABEL_26;
    }
  }

  if (v13 == -1)
  {
LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  while (v7)
  {
    v15 = *--v12;
    result = memchr(v9, v15, v10);
    --v7;
    if (!result)
    {
      v14 = v12 - v6;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      if (v5 >= v13)
      {
        v4 = v5;
        v11 = v20;
        goto LABEL_30;
      }

LABEL_43:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v14 = -1;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v13 > v4)
  {
    goto LABEL_43;
  }

LABEL_30:
  v16 = v14 - v13 + 1;
  if (v4 - v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v4 - v13;
  }

  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    a3[1] = v17;
    a3[2] = v18 | 0x8000000000000000;
    *a3 = v19;
    a3 = v19;
  }

  else
  {
    *(a3 + 23) = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  result = memmove(a3, v11 + v13, v17);
LABEL_42:
  *(a3 + v17) = 0;
  return result;
}

double util::strip_trailing@<D0>(__int128 *a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a1 + 23) < 0)
  {
    v5 = a2;
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 1));
    a2 = v5;
  }

  else
  {
    v4 = *a1;
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 2);
  }

  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

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
    v10 = a2[1];
  }

  if (v10)
  {
    if (v6 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v12 = size;
    do
    {
      if (!v12)
      {
        return *&v4;
      }
    }

    while (!memchr(v9, v7->__r_.__value_.__s.__data_[--v12], v10));
    if (v12 == -1)
    {
      return *&v4;
    }

    if (size >= size - v10)
    {
      v14 = size - v10;
    }

    else
    {
      v14 = size;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v19 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v19) = v14;
      p_dst = &__dst;
      if (!v14)
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          *&v4 = __dst;
          *&a3->__r_.__value_.__l.__data_ = __dst;
          a3->__r_.__value_.__r.__words[2] = v19;
          return *&v4;
        }

LABEL_35:
        operator delete(a3->__r_.__value_.__l.__data_);
        goto LABEL_28;
      }
    }

    memmove(p_dst, v7, v14);
    *(p_dst + v14) = 0;
    if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  return *&v4;
}

void sub_2973053B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::to_upper(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __toupper(*v5);
    *v5 = result;
  }

  return result;
}

BOOL util::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

void util::strip_non_alpha(std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (!size)
  {
    goto LABEL_22;
  }

  v5 = size - 1;
  v6 = MEMORY[0x29EDCA600];
  while (1)
  {
    v7 = v3->__r_.__value_.__s.__data_[0];
    if ((v7 & 0x80000000) != 0)
    {
      if (!__maskrune(v7, 0x100uLL))
      {
        break;
      }

      goto LABEL_9;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x100) == 0)
    {
      break;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v5;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
  {
    v8 = 1;
    v4 = v3;
    while (1)
    {
      v9 = v3->__r_.__value_.__s.__data_[v8];
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v9, 0x100uLL))
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v8;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    if ((*(v6 + 4 * v9 + 60) & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v8];
    v4 = (v4 + 1);
    goto LABEL_17;
  }

  v4 = v3;
LABEL_22:
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this->__r_.__value_.__r.__words[0];
  v13 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  if ((v10 & 0x80u) != 0)
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = this + v10;
    v14 = this;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  v15 = v4 - v14;
  if (v10 < v4 - v14)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 - v4 == -1)
  {
    if (v11 < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
      *(v12 + v15) = 0;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      this->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {

    std::string::__erase_external_with_move(this, v15, v13 - v4);
  }
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  v22 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v19 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v2, 0x8000100u);
  v5 = CFURLCreateWithFileSystemPath(v4, v19, kCFURLPOSIXPathStyle, 0);
  cf = v5;
  *a2 = 0;
  if (v5)
  {
    v6 = CFReadStreamCreateWithFile(v4, v5);
    v7 = v6;
    v17 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v6);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(v4, v7, 0, 1uLL, 0, &error);
    CFReadStreamClose(v7);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v15 = *&buf[16];
    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
    {
      qword_2A1399DD8 = 0;
      qword_2A1399DE0 = 0;
      __cxa_guard_release(&qword_2A1399DD0);
    }

    if (_MergedGlobals_4 == -1)
    {
      v8 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
      v8 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v11 = cf;
    Code = CFErrorGetCode(error);
    v13 = __p;
    if (v15 < 0)
    {
      v13 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v21 = v13;
    _os_log_error_impl(&dword_297288000, v8, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
      v7 = v17;
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v17;
      if (!v17)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v7);
    goto LABEL_16;
  }

LABEL_18:
  if (v19)
  {
    CFRelease(v19);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_297305870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void util::moveDirContent(std::string::size_type a1, const std::string::value_type **a2, unsigned int a3, int a4, uint64_t a5)
{
  v158 = *MEMORY[0x29EDCA608];
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v8 = *(a1 + 23);
  if (v8 < 0)
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  std::locale::locale(&v143, a5);
  v144 = *(a5 + 8);
  v145 = *(a5 + 24);
  v11 = *(a5 + 48);
  v146 = *(a5 + 40);
  v147 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v148 = *(a5 + 56);
  filtered_files = ctu::fs::get_filtered_files();
  v13 = v147;
  if (v147 && !atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    std::locale::~locale(&v143);
    if (filtered_files)
    {
LABEL_11:
      v14 = v149;
      v131 = v150;
      if (v149 != v150)
      {
        if (a4)
        {
          while (1)
          {
            memset(&v157, 170, sizeof(v157));
            if (*(v14 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
            }

            else
            {
              v15 = *v14;
              v157.__r_.__value_.__r.__words[2] = v14[2];
              *&v157.__r_.__value_.__l.__data_ = v15;
            }

            v16 = *(a1 + 23);
            if (v16 >= 0)
            {
              v17 = *(a1 + 23);
            }

            else
            {
              v17 = *(a1 + 8);
            }

            v18 = v17 + 1;
            if (v17 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v18 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v20 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v17 + 1;
              if (!v17)
              {
                goto LABEL_32;
              }
            }

            else
            {
              if ((v18 | 7) == 0x17)
              {
                v19 = 25;
              }

              else
              {
                v19 = (v18 | 7) + 1;
              }

              v20 = operator new(v19);
              v141.__r_.__value_.__l.__size_ = v17 + 1;
              v141.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v20;
            }

            v21 = *a1;
            if (v16 >= 0)
            {
              v22 = a1;
            }

            else
            {
              v22 = *a1;
            }

            memmove(v20, v22, v17);
LABEL_32:
            *&v20[v17] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v157;
            }

            else
            {
              v23 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v157.__r_.__value_.__l.__size_;
            }

            v25 = std::string::append(&v141, v23, size);
            v26 = *&v25->__r_.__value_.__l.__data_;
            __p[2] = v25->__r_.__value_.__r.__words[2];
            *__p = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            is_directory = ctu::fs::is_directory();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_40:
                if (is_directory)
                {
                  goto LABEL_41;
                }

                goto LABEL_52;
              }
            }

            else if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            operator delete(v141.__r_.__value_.__l.__data_);
            if (is_directory)
            {
LABEL_41:
              v28 = *(a1 + 23);
              if (v28 >= 0)
              {
                v29 = *(a1 + 23);
              }

              else
              {
                v29 = *(a1 + 8);
              }

              v30 = v29 + 1;
              if (v29 + 1 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v30 < 0x17)
              {
                memset(&v141, 0, sizeof(v141));
                v32 = &v141;
                *(&v141.__r_.__value_.__s + 23) = v29 + 1;
                if (v29)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                if ((v30 | 7) == 0x17)
                {
                  v31 = 25;
                }

                else
                {
                  v31 = (v30 | 7) + 1;
                }

                v32 = operator new(v31);
                v141.__r_.__value_.__l.__size_ = v29 + 1;
                v141.__r_.__value_.__r.__words[2] = v31 | 0x8000000000000000;
                v141.__r_.__value_.__r.__words[0] = v32;
LABEL_65:
                v39 = *a1;
                if (v28 >= 0)
                {
                  v40 = a1;
                }

                else
                {
                  v40 = *a1;
                }

                memmove(v32, v40, v29);
              }

              *&v32[v29] = 47;
              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v41 = &v157;
              }

              else
              {
                v41 = v157.__r_.__value_.__r.__words[0];
              }

              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v42 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v42 = v157.__r_.__value_.__l.__size_;
              }

              v43 = std::string::append(&v141, v41, v42);
              v44 = *&v43->__r_.__value_.__l.__data_;
              __p[2] = v43->__r_.__value_.__r.__words[2];
              *__p = v44;
              v43->__r_.__value_.__l.__size_ = 0;
              v43->__r_.__value_.__r.__words[2] = 0;
              v43->__r_.__value_.__r.__words[0] = 0;
              v45 = SHIBYTE(__p[2]);
              if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
              {
                v45 = __p[1];
                v47 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
                v48 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v48 != __p[1])
                {
                  v46 = __p[0];
                  goto LABEL_96;
                }

                if (v47 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v46 = __p[0];
                if (v48 > 0x3FFFFFFFFFFFFFF2)
                {
                  v52 = 0;
                  v51 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_81:
                  v49 = 2 * v48;
                  if (v47 > 2 * v48)
                  {
                    v49 = v47;
                  }

                  if ((v49 | 7) == 0x17)
                  {
                    v50 = 25;
                  }

                  else
                  {
                    v50 = (v49 | 7) + 1;
                  }

                  if (v49 >= 0x17)
                  {
                    v51 = v50;
                  }

                  else
                  {
                    v51 = 23;
                  }

                  v52 = v48 == 22;
                }

                v53 = operator new(v51);
                v54 = v53;
                if (v48)
                {
                  memmove(v53, v46, v48);
                }

                v54[v48] = 47;
                if (!v52)
                {
                  operator delete(v46);
                }

                __p[1] = v47;
                __p[2] = (v51 | 0x8000000000000000);
                __p[0] = v54;
                v55 = &v54[v47];
              }

              else
              {
                v46 = __p;
                if (SHIBYTE(__p[2]) == 22)
                {
                  v47 = 23;
                  v48 = 22;
                  goto LABEL_81;
                }

LABEL_96:
                *(v45 + v46) = 47;
                v56 = v45 + 1;
                if (SHIBYTE(__p[2]) < 0)
                {
                  __p[1] = v56;
                }

                else
                {
                  HIBYTE(__p[2]) = v56 & 0x7F;
                }

                v55 = &v56[v46];
              }

              *v55 = 0;
              *v139 = *__p;
              v140 = __p[2];
              memset(__p, 0, sizeof(__p));
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v138, *a2, a2[1]);
              }

              else
              {
                v138 = *a2;
              }

              std::locale::locale(&v132, a5);
              v133 = *(a5 + 8);
              v134 = *(a5 + 24);
              v57 = *(a5 + 48);
              v135 = *(a5 + 40);
              v136 = v57;
              if (v57)
              {
                atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v137 = *(a5 + 56);
              util::moveDirContent(v139, &v138, a3, (a4 - 1), &v132);
              v58 = v136;
              if (v136 && !atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v58->__on_zero_shared)(v58);
                std::__shared_weak_count::__release_weak(v58);
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_108:
                  if ((SHIBYTE(v140) & 0x80000000) == 0)
                  {
                    goto LABEL_109;
                  }

LABEL_114:
                  operator delete(v139[0]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_115;
                }
              }

              operator delete(v138.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v140) & 0x80000000) == 0)
              {
LABEL_109:
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_110;
                }

                goto LABEL_115;
              }

              goto LABEL_114;
            }

LABEL_52:
            if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
            {
              qword_2A1399DD8 = 0;
              qword_2A1399DE0 = 0;
              __cxa_guard_release(&qword_2A1399DD0);
            }

            if (_MergedGlobals_4 == -1)
            {
              v33 = qword_2A1399DE0;
              if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
              v33 = qword_2A1399DE0;
              if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            v34 = *(a1 + 23);
            if (v34 >= 0)
            {
              v35 = *(a1 + 23);
            }

            else
            {
              v35 = *(a1 + 8);
            }

            v36 = v35 + 1;
            if (v35 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v36 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v38 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v35 + 1;
              if (!v35)
              {
                goto LABEL_125;
              }
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
              v141.__r_.__value_.__l.__size_ = v35 + 1;
              v141.__r_.__value_.__r.__words[2] = v37 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v38;
            }

            v59 = *a1;
            if (v34 >= 0)
            {
              v60 = a1;
            }

            else
            {
              v60 = *a1;
            }

            memmove(v38, v60, v35);
LABEL_125:
            *&v38[v35] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v157;
            }

            else
            {
              v61 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v62 = v157.__r_.__value_.__l.__size_;
            }

            v63 = std::string::append(&v141, v61, v62);
            v64 = *&v63->__r_.__value_.__l.__data_;
            __p[2] = v63->__r_.__value_.__r.__words[2];
            *__p = v64;
            v63->__r_.__value_.__l.__size_ = 0;
            v63->__r_.__value_.__r.__words[2] = 0;
            v63->__r_.__value_.__r.__words[0] = 0;
            v65 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v65 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v65;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
            _os_log_error_impl(&dword_297288000, v33, OS_LOG_TYPE_ERROR, "%s is not a directory, so not moving it at depth %d", &buf, 0x12u);
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
LABEL_110:
              if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_116;
              }

              goto LABEL_117;
            }

LABEL_115:
            operator delete(__p[0]);
            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_116:
              operator delete(v141.__r_.__value_.__l.__data_);
            }

LABEL_117:
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v157.__r_.__value_.__l.__data_);
            }

            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }

        while (1)
        {
          memset(&v157, 170, sizeof(v157));
          if (*(v14 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
          }

          else
          {
            v75 = *v14;
            v157.__r_.__value_.__r.__words[2] = v14[2];
            *&v157.__r_.__value_.__l.__data_ = v75;
          }

          memset(__p, 170, sizeof(__p));
          v76 = *(a2 + 23);
          if (v76 >= 0)
          {
            v77 = *(a2 + 23);
          }

          else
          {
            v77 = a2[1];
          }

          v78 = v77 + 1;
          if (v77 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v78 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            p_buf = &buf;
            *(&buf.__r_.__value_.__s + 23) = v77 + 1;
            if (!v77)
            {
              goto LABEL_179;
            }
          }

          else
          {
            if ((v78 | 7) == 0x17)
            {
              v79 = 25;
            }

            else
            {
              v79 = (v78 | 7) + 1;
            }

            p_buf = operator new(v79);
            buf.__r_.__value_.__l.__size_ = v77 + 1;
            buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = p_buf;
          }

          v81 = *a2;
          if (v76 >= 0)
          {
            v82 = a2;
          }

          else
          {
            v82 = *a2;
          }

          memmove(p_buf, v82, v77);
LABEL_179:
          *(&p_buf->__r_.__value_.__l.__data_ + v77) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = &v157;
          }

          else
          {
            v83 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v84 = v157.__r_.__value_.__l.__size_;
          }

          v85 = std::string::append(&buf, v83, v84);
          v86 = *&v85->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v86;
          v85->__r_.__value_.__l.__size_ = 0;
          v85->__r_.__value_.__r.__words[2] = 0;
          v85->__r_.__value_.__r.__words[0] = 0;
          ctu::fs::get_unique_filename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_187;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_187;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
LABEL_187:
          v87 = *(a1 + 23);
          if (v87 >= 0)
          {
            v88 = *(a1 + 23);
          }

          else
          {
            v88 = *(a1 + 8);
          }

          v89 = v88 + 1;
          if (v88 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v89 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v91 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v88 + 1;
            if (!v88)
            {
              goto LABEL_201;
            }
          }

          else
          {
            if ((v89 | 7) == 0x17)
            {
              v90 = 25;
            }

            else
            {
              v90 = (v89 | 7) + 1;
            }

            v91 = operator new(v90);
            buf.__r_.__value_.__l.__size_ = v88 + 1;
            buf.__r_.__value_.__r.__words[2] = v90 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v91;
          }

          v92 = *a1;
          if (v87 >= 0)
          {
            v93 = a1;
          }

          else
          {
            v93 = *a1;
          }

          memmove(v91, v93, v88);
LABEL_201:
          *(&v91->__r_.__value_.__l.__data_ + v88) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v94 = &v157;
          }

          else
          {
            v94 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v95 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v95 = v157.__r_.__value_.__l.__size_;
          }

          v96 = std::string::append(&buf, v94, v95);
          v97 = *&v96->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v97;
          v96->__r_.__value_.__l.__size_ = 0;
          v96->__r_.__value_.__r.__words[2] = 0;
          v96->__r_.__value_.__r.__words[0] = 0;
          v98 = ctu::fs::rename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_209:
              explicit = atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire);
              if (v98)
              {
                goto LABEL_210;
              }

              goto LABEL_226;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_209;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
          explicit = atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire);
          if (v98)
          {
LABEL_210:
            if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
            {
              qword_2A1399DD8 = 0;
              qword_2A1399DE0 = 0;
              __cxa_guard_release(&qword_2A1399DD0);
            }

            if (_MergedGlobals_4 == -1)
            {
              v100 = qword_2A1399DE0;
              if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
              v100 = qword_2A1399DE0;
              if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            v101 = *(a1 + 23);
            if (v101 >= 0)
            {
              v102 = *(a1 + 23);
            }

            else
            {
              v102 = *(a1 + 8);
            }

            v103 = v102 + 1;
            if (v102 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v103 < 0x17)
            {
              memset(&buf, 0, sizeof(buf));
              v105 = &buf;
              *(&buf.__r_.__value_.__s + 23) = v102 + 1;
              if (v102)
              {
                goto LABEL_239;
              }
            }

            else
            {
              if ((v103 | 7) == 0x17)
              {
                v104 = 25;
              }

              else
              {
                v104 = (v103 | 7) + 1;
              }

              v105 = operator new(v104);
              buf.__r_.__value_.__l.__size_ = v102 + 1;
              buf.__r_.__value_.__r.__words[2] = v104 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v105;
LABEL_239:
              v112 = *a1;
              if (v101 >= 0)
              {
                v113 = a1;
              }

              else
              {
                v113 = *a1;
              }

              memmove(v105, v113, v102);
            }

            *(&v105->__r_.__value_.__l.__data_ + v102) = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v114 = &v157;
            }

            else
            {
              v114 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v115 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v115 = v157.__r_.__value_.__l.__size_;
            }

            v116 = std::string::append(&buf, v114, v115);
            v117 = *&v116->__r_.__value_.__l.__data_;
            v141.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
            *&v141.__r_.__value_.__l.__data_ = v117;
            v116->__r_.__value_.__l.__size_ = 0;
            v116->__r_.__value_.__r.__words[2] = 0;
            v116->__r_.__value_.__r.__words[0] = 0;
            v118 = &v141;
            if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v118 = v141.__r_.__value_.__r.__words[0];
            }

            v119 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v119 = __p[0];
            }

            *v152 = 136315394;
            v153 = v118;
            v154 = 2080;
            v155 = v119;
            _os_log_impl(&dword_297288000, v100, OS_LOG_TYPE_DEFAULT, "Moved %s -> %s", v152, 0x16u);
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_254;
            }

            goto LABEL_272;
          }

LABEL_226:
          if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
          {
            qword_2A1399DD8 = 0;
            qword_2A1399DE0 = 0;
            __cxa_guard_release(&qword_2A1399DD0);
          }

          if (_MergedGlobals_4 == -1)
          {
            v106 = qword_2A1399DE0;
            if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
            v106 = qword_2A1399DE0;
            if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          v107 = *(a1 + 23);
          if (v107 >= 0)
          {
            v108 = *(a1 + 23);
          }

          else
          {
            v108 = *(a1 + 8);
          }

          v109 = v108 + 1;
          if (v108 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v109 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v111 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v108 + 1;
            if (!v108)
            {
              goto LABEL_261;
            }
          }

          else
          {
            if ((v109 | 7) == 0x17)
            {
              v110 = 25;
            }

            else
            {
              v110 = (v109 | 7) + 1;
            }

            v111 = operator new(v110);
            buf.__r_.__value_.__l.__size_ = v108 + 1;
            buf.__r_.__value_.__r.__words[2] = v110 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v111;
          }

          v120 = *a1;
          if (v107 >= 0)
          {
            v121 = a1;
          }

          else
          {
            v121 = *a1;
          }

          memmove(v111, v121, v108);
LABEL_261:
          *(&v111->__r_.__value_.__l.__data_ + v108) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v122 = &v157;
          }

          else
          {
            v122 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v123 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v123 = v157.__r_.__value_.__l.__size_;
          }

          v124 = std::string::append(&buf, v122, v123);
          v125 = *&v124->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v125;
          v124->__r_.__value_.__l.__size_ = 0;
          v124->__r_.__value_.__r.__words[2] = 0;
          v124->__r_.__value_.__r.__words[0] = 0;
          v126 = &v141;
          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v126 = v141.__r_.__value_.__r.__words[0];
          }

          v127 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v127 = __p[0];
          }

          *v152 = 136315394;
          v153 = v126;
          v154 = 2080;
          v155 = v127;
          _os_log_error_impl(&dword_297288000, v106, OS_LOG_TYPE_ERROR, "Failed to move %s -> %s", v152, 0x16u);
          if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_254:
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_273;
            }

            goto LABEL_274;
          }

LABEL_272:
          operator delete(v141.__r_.__value_.__l.__data_);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_273:
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_274:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_161;
            }

LABEL_276:
            operator delete(v157.__r_.__value_.__l.__data_);
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }

          else
          {
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_276;
            }

LABEL_161:
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }
      }

      goto LABEL_143;
    }
  }

  else
  {
    std::locale::~locale(&v143);
    if (filtered_files)
    {
      goto LABEL_11;
    }
  }

  if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
  {
    qword_2A1399DD8 = 0;
    qword_2A1399DE0 = 0;
    __cxa_guard_release(&qword_2A1399DD0);
  }

  if (_MergedGlobals_4 == -1)
  {
    v66 = qword_2A1399DE0;
    if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
    v66 = qword_2A1399DE0;
    if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  v128 = a1;
  if (*(a1 + 23) < 0)
  {
    v128 = *a1;
  }

  LODWORD(v157.__r_.__value_.__l.__data_) = 136315138;
  *(v157.__r_.__value_.__r.__words + 4) = v128;
  _os_log_error_impl(&dword_297288000, v66, OS_LOG_TYPE_ERROR, "Did not find any matching content in source directory %s", &v157, 0xCu);
LABEL_143:
  if (a3)
  {
    v67 = *(a1 + 23);
    if (v67 < 0)
    {
      v68 = *a1;
    }

    if (v67 >= 0)
    {
      v69 = *(a1 + 23);
    }

    else
    {
      v69 = *(a1 + 8);
    }

    ctu::fs::remove_dir();
  }

  v70 = v149;
  if (v149)
  {
    v71 = v150;
    v72 = v149;
    if (v150 != v149)
    {
      do
      {
        v73 = *(v71 - 1);
        v71 -= 3;
        if (v73 < 0)
        {
          operator delete(*v71);
        }
      }

      while (v71 != v70);
      v72 = v149;
    }

    v150 = v70;
    operator delete(v72);
  }

  v74 = *MEMORY[0x29EDCA608];
}

void sub_2973069A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  std::vector<std::string>::~vector[abi:ne200100]((v52 - 216));
  _Unwind_Resume(a1);
}

void util::generateSHA256(const char *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v42 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x20uLL);
  *(a4 + 8) = v8 + 2;
  *(a4 + 16) = v8 + 2;
  *v8 = 0u;
  v8[1] = 0u;
  *a4 = v8;
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
    {
      qword_2A1399DD8 = 0;
      qword_2A1399DE0 = 0;
      __cxa_guard_release(&qword_2A1399DD0);
    }

    if (_MergedGlobals_4 == -1)
    {
      v17 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
      v17 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    LOWORD(c.count[0]) = 0;
    v18 = "dataIn buffer is NULL";
    p_c = &c;
    v20 = v17;
    v21 = 2;
LABEL_25:
    _os_log_error_impl(&dword_297288000, v20, OS_LOG_TYPE_ERROR, v18, p_c, v21);
    goto LABEL_30;
  }

  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v9;
  *&c.wbuf[10] = v9;
  *&c.hash[6] = v9;
  *&c.wbuf[2] = v9;
  *c.count = v9;
  *&c.hash[2] = v9;
  v10 = a1[23];
  if (v10 < 0)
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = a1[23];
  }

  else
  {
    v12 = *(a1 + 1);
  }

  if (ctu::fs::get_file_size())
  {
    CC_SHA256_Init(&c);
    v13 = a1;
    if (a1[23] < 0)
    {
      v13 = *a1;
    }

    v14 = open(v13, 0);
    if (v14 >= 1)
    {
      v15 = 0;
      while (1)
      {
        v16 = read(v14, a2, a3);
        if (v16 == -1)
        {
          break;
        }

        CC_SHA256_Update(&c, a2, v16);
        v15 += v16;
        if (v15 >= 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_29;
        }
      }

      if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
      {
        qword_2A1399DD8 = 0;
        qword_2A1399DE0 = 0;
        __cxa_guard_release(&qword_2A1399DD0);
      }

      if (_MergedGlobals_4 == -1)
      {
        v27 = qword_2A1399DE0;
        if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
        {
LABEL_29:
          CC_SHA256_Final(*a4, &c);
          close(v14);
          goto LABEL_30;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
        v27 = qword_2A1399DE0;
        if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }

      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v29 = __error();
      v30 = strerror(*v29);
      v31 = *__error();
      v32 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v30;
      v38 = 1024;
      v39 = v31;
      v40 = 1024;
      v41 = v32;
      _os_log_error_impl(&dword_297288000, v27, OS_LOG_TYPE_ERROR, "Failed to read %s : %s (%d, 0x%x)", buf, 0x22u);
      goto LABEL_29;
    }

    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
    {
      qword_2A1399DD8 = 0;
      qword_2A1399DE0 = 0;
      __cxa_guard_release(&qword_2A1399DD0);
    }

    if (_MergedGlobals_4 != -1)
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
      v22 = qword_2A1399DE0;
      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    v22 = qword_2A1399DE0;
    if (os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
    {
LABEL_22:
      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v23 = __error();
      v24 = strerror(*v23);
      v25 = *__error();
      v26 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = v26;
      v18 = "Failed to open %s : %s (%d, 0x%x)";
      p_c = buf;
      v20 = v22;
      v21 = 34;
      goto LABEL_25;
    }
  }

LABEL_30:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_297306FC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL util::markPurgeableFile(uint64_t *a1)
{
  v1 = a1;
  v27 = *MEMORY[0x29EDCA608];
  v16 = 65541;
  if (*(a1 + 23) < 0)
  {
    v2 = open(*a1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
    {
      qword_2A1399DD8 = 0;
      qword_2A1399DE0 = 0;
      __cxa_guard_release(&qword_2A1399DD0);
    }

    if (_MergedGlobals_4 == -1)
    {
      v12 = qword_2A1399DE0;
      result = os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
      v12 = qword_2A1399DE0;
      result = os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315394;
    v18 = v1;
    v19 = 2080;
    v20 = v14;
    v9 = "Failed to open %s : %s";
    v10 = v12;
    v11 = 22;
    goto LABEL_17;
  }

  v2 = open(a1, 0);
  if (v2 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = v2;
  v4 = ffsctl(v2, 0xC0084A44uLL, &v16, 0);
  close(v3);
  if (!v4)
  {
    result = 1;
    goto LABEL_19;
  }

  if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
  {
    qword_2A1399DD8 = 0;
    qword_2A1399DE0 = 0;
    __cxa_guard_release(&qword_2A1399DD0);
  }

  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
    v5 = qword_2A1399DE0;
    result = os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v5 = qword_2A1399DE0;
  result = os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_7:
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136316162;
    v18 = v1;
    v19 = 2080;
    v20 = v8;
    v21 = 1024;
    v22 = v4;
    v23 = 1024;
    v24 = v4;
    v25 = 2048;
    v26 = v16;
    v9 = "Failed to mark %s as purgeable: %s (%d, 0x%x) (flags 0x%llx)";
    v10 = v5;
    v11 = 44;
LABEL_17:
    _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    result = 0;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL util::checkLogFileAge(uint64_t a1, int64_t a2, uint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAA00;
  v50 = v4;
  v47 = 0;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51 = 0;
  memset(v45, 0, sizeof(v45));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v54 = 0xAAAAAAAAAAAAAA00;
  __p.tm_gmtoff = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  __p.tm_zone = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  BYTE8(v57) = 0;
  v58 = 0;
  memset(&__p, 0, 41);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a3, v6, (v6 + v7), &__p, 4160);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v45, v6, (v6 + v7), &__p.tm_sec, 0);
  if (*&__p.tm_sec)
  {
    *&__p.tm_hour = *&__p.tm_sec;
    operator delete(*&__p.tm_sec);
  }

  if (v8 && (v50 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v12 = *v45;
    if (*(*v45 + 40) != 1)
    {
      memset(&__dst, 0, sizeof(__dst));
LABEL_21:
      util::convert<int>(&__dst, &__p.tm_year, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
LABEL_23:
          v17 = *(v12 + 48);
          v18 = *(v12 + 56);
          v19 = v18 - v17;
          if ((v18 - v17) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 > 0x16)
          {
            if ((v19 | 7) == 0x17)
            {
              v39 = 25;
            }

            else
            {
              v39 = (v19 | 7) + 1;
            }

            p_dst = operator new(v39);
            __dst.__r_.__value_.__l.__size_ = v18 - v17;
            __dst.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
            if (v18 == v17)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v18 - v17;
            p_dst = &__dst;
            if (v18 == v17)
            {
LABEL_27:
              p_dst->__r_.__value_.__s.__data_[v19] = 0;
              goto LABEL_30;
            }
          }

          memmove(p_dst, v17, v18 - v17);
          goto LABEL_27;
        }
      }

      else
      {
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
          goto LABEL_23;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_30:
      util::convert<int>(&__dst, &__p.tm_mon, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
LABEL_32:
          v21 = *(v12 + 72);
          v22 = *(v12 + 80);
          v23 = v22 - v21;
          if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v23 > 0x16)
          {
            if ((v23 | 7) == 0x17)
            {
              v40 = 25;
            }

            else
            {
              v40 = (v23 | 7) + 1;
            }

            v24 = operator new(v40);
            __dst.__r_.__value_.__l.__size_ = v22 - v21;
            __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v24;
            if (v22 == v21)
            {
              goto LABEL_36;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v22 - v21;
            v24 = &__dst;
            if (v22 == v21)
            {
LABEL_36:
              v24->__r_.__value_.__s.__data_[v23] = 0;
              goto LABEL_39;
            }
          }

          memmove(v24, v21, v22 - v21);
          goto LABEL_36;
        }
      }

      else
      {
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
          goto LABEL_32;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_39:
      util::convert<int>(&__dst, (&__p | 0xC), 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 112) == 1)
        {
LABEL_41:
          v25 = *(v12 + 96);
          v26 = *(v12 + 104);
          v27 = v26 - v25;
          if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v27 > 0x16)
          {
            if ((v27 | 7) == 0x17)
            {
              v41 = 25;
            }

            else
            {
              v41 = (v27 | 7) + 1;
            }

            v28 = operator new(v41);
            __dst.__r_.__value_.__l.__size_ = v26 - v25;
            __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v28;
            if (v26 == v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v26 - v25;
            v28 = &__dst;
            if (v26 == v25)
            {
LABEL_45:
              v28->__r_.__value_.__s.__data_[v27] = 0;
              goto LABEL_48;
            }
          }

          memmove(v28, v25, v26 - v25);
          goto LABEL_45;
        }
      }

      else if (*(v12 + 112) == 1)
      {
        goto LABEL_41;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_48:
      util::convert<int>(&__dst, &__p.tm_hour, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 136) == 1)
        {
LABEL_50:
          v29 = *(v12 + 120);
          v30 = *(v12 + 128);
          v31 = v30 - v29;
          if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v31 > 0x16)
          {
            if ((v31 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v31 | 7) + 1;
            }

            v32 = operator new(v42);
            __dst.__r_.__value_.__l.__size_ = v30 - v29;
            __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v32;
            if (v30 == v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v30 - v29;
            v32 = &__dst;
            if (v30 == v29)
            {
LABEL_54:
              v32->__r_.__value_.__s.__data_[v31] = 0;
              goto LABEL_57;
            }
          }

          memmove(v32, v29, v30 - v29);
          goto LABEL_54;
        }
      }

      else if (*(v12 + 136) == 1)
      {
        goto LABEL_50;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_57:
      util::convert<int>(&__dst, &__p.tm_min, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 160) == 1)
        {
LABEL_59:
          v33 = *(v12 + 144);
          v34 = *(v12 + 152);
          v35 = v34 - v33;
          if ((v34 - v33) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v35 > 0x16)
          {
            if ((v35 | 7) == 0x17)
            {
              v43 = 25;
            }

            else
            {
              v43 = (v35 | 7) + 1;
            }

            v36 = operator new(v43);
            __dst.__r_.__value_.__l.__size_ = v34 - v33;
            __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v36;
            if (v34 == v33)
            {
              goto LABEL_63;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v34 - v33;
            v36 = &__dst;
            if (v34 == v33)
            {
LABEL_63:
              v36->__r_.__value_.__s.__data_[v35] = 0;
              goto LABEL_66;
            }
          }

          memmove(v36, v33, v34 - v33);
          goto LABEL_63;
        }
      }

      else if (*(v12 + 160) == 1)
      {
        goto LABEL_59;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_66:
      util::convert<int>(&__dst, &__p, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.tm_isdst = -1;
      v37 = mktime(&__p);
      __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&__dst, 0);
      v9 = (__dst.__r_.__value_.__r.__words[0] - v37) > a2;
      v10 = *v45;
      if (*v45)
      {
        goto LABEL_12;
      }

      return v9;
    }

    v13 = *(*v45 + 24);
    v14 = *(*v45 + 32);
    v15 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 > 0x16)
    {
      if ((v15 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v15 | 7) + 1;
      }

      v16 = operator new(v38);
      __dst.__r_.__value_.__l.__size_ = v14 - v13;
      __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v16;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v14 - v13;
      v16 = &__dst;
      if (v14 == v13)
      {
LABEL_19:
        v16->__r_.__value_.__s.__data_[v15] = 0;
        goto LABEL_21;
      }
    }

    memmove(v16, v13, v14 - v13);
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v45;
  if (*v45)
  {
LABEL_12:
    *&v45[8] = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_2973078D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2, int a3)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v6) = strcasecmp(a1, "false");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "off");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "no");
    if (!v6)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v7 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v6) = 1;
    goto LABEL_29;
  }

  v7 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v6) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "off");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "no");
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v7, "true") || !strcasecmp(v7, "on") || !strcasecmp(v7, "yes") || !strcasecmp(v7, "full") || !strcasecmp(v7, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v7, "lite"))
  {
LABEL_30:
    LODWORD(v6) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v7, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::stol(a1, &__idx, a3);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || v6 < 0xFFFFFFFF80000000 || v6 > 0x7FFFFFFF)
  {
    return 0;
  }

LABEL_29:
  *a2 = v6;
  return 1;
}

uint64_t sub_297307B8C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void util::findBasebandLogInfoFile(const void **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v50 = a2[1];
  if (v3 == v50)
  {
    return;
  }

  v49 = &v50 + 3;
  while (1)
  {
    memset(&v52, 170, sizeof(v52));
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, *v3, *(v3 + 1));
    }

    else
    {
      v5 = *v3;
      v52.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&v52.__r_.__value_.__l.__data_ = v5;
    }

    memset(__p, 170, sizeof(__p));
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v10 = size + v7;
    if (size + v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 <= 0x16)
    {
      memset(__p, 0, sizeof(__p));
      v12 = __p;
      HIBYTE(__p[2]) = size + v7;
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_21:
      v13 = *a1;
      if (v6 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      memmove(v12, v14, v7);
      goto LABEL_25;
    }

    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    __p[1] = (size + v7);
    __p[2] = (v11 | 0x8000000000000000);
    __p[0] = v12;
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_25:
    v15 = &v12[v7];
    if (size)
    {
      if (v8 >= 0)
      {
        v16 = &v52;
      }

      else
      {
        v16 = v52.__r_.__value_.__r.__words[0];
      }

      memmove(v15, v16, size);
    }

    v15[size] = 0;
    v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v53.st_blksize = v17;
    *v53.st_qspare = v17;
    v53.st_birthtimespec = v17;
    *&v53.st_size = v17;
    v53.st_mtimespec = v17;
    v53.st_ctimespec = v17;
    *&v53.st_uid = v17;
    v53.st_atimespec = v17;
    *&v53.st_dev = v17;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (stat(v18, &v53) || (SHIBYTE(__p[2]) >= 0 ? (v20 = __p) : (v20 = __p[0]), v21 = opendir(v20), (v22 = v21) == 0))
    {
      v19 = HIBYTE(__p[2]);
      goto LABEL_35;
    }

    v23 = readdir(v21);
    closedir(v22);
    v19 = HIBYTE(__p[2]);
    if (v23)
    {
      break;
    }

LABEL_35:
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_60:
        operator delete(v52.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_60;
    }

    v3 = (v3 + 24);
    if (v3 == v50)
    {
      return;
    }
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    if (HIBYTE(__p[2]) <= 4u)
    {
      goto LABEL_100;
    }

    v24 = &v49[HIBYTE(__p[2])];
    if (*v24 == 1885626669 && v49[HIBYTE(__p[2]) + 4] == 108)
    {
      goto LABEL_80;
    }

    if (*v24 == 1935962413 && v24[4] == 115)
    {
      goto LABEL_80;
    }

    v27 = *v24;
    v28 = v24[4];
    if (v27 == 1634296877 && v28 == 103)
    {
      goto LABEL_80;
    }

    if (HIBYTE(__p[2]) < 9u)
    {
      goto LABEL_100;
    }

    v30 = __p;
    v31 = HIBYTE(__p[2]);
    goto LABEL_75;
  }

  v31 = __p[1];
  if (__p[1] < 5)
  {
    goto LABEL_100;
  }

  v30 = __p[0];
  v32 = __p[0] + __p[1];
  if ((*(__p[0] + __p[1] - 5) != 1885626669 || *(__p[0] + __p[1] - 1) != 108) && (*(v32 - 5) != 1935962413 || *(v32 - 1) != 115))
  {
    v35 = *(v32 - 5);
    v36 = *(v32 - 1);
    if (v35 != 1634296877 || v36 != 103)
    {
      if (__p[1] < 9)
      {
LABEL_100:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

LABEL_75:
      v38 = v30 + v31;
      v39 = *(v38 - 9);
      v40 = *(v38 - 1);
      if (v39 == 0x636172742D62622DLL && v40 == 101)
      {
        goto LABEL_80;
      }

      goto LABEL_35;
    }
  }

LABEL_80:
  v42 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = v52.__r_.__value_.__l.__size_;
  }

  v44 = v43 + 9;
  if (v43 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v44 < 0x17)
  {
    memset(&v53, 0, 24);
    v46 = &v53;
    HIBYTE(v53.st_gid) = v43 + 9;
    if (v43)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v44 | 7) == 0x17)
    {
      v45 = 25;
    }

    else
    {
      v45 = (v44 | 7) + 1;
    }

    v46 = operator new(v45);
    v53.st_ino = v43 + 9;
    *&v53.st_uid = v45 | 0x8000000000000000;
    *&v53.st_dev = v46;
LABEL_90:
    if (v42 >= 0)
    {
      v47 = &v52;
    }

    else
    {
      v47 = v52.__r_.__value_.__r.__words[0];
    }

    memmove(v46, v47, v43);
  }

  strcpy(v46 + v43, "/info.txt");
  *a3 = *&v53.st_dev;
  a3[2] = *&v53.st_uid;
  if ((v19 & 0x80) == 0)
  {
    if ((v42 & 0x80) == 0)
    {
      return;
    }

LABEL_98:
    operator delete(v52.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if ((*(&v52.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_98;
  }
}

void sub_29730800C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t util::isDumpForSysdiagnose(uint64_t *a1, char *a2)
{
  __p[73] = *MEMORY[0x29EDCA608];
  v78 = 0;
  v79 = 0;
  v80 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v76[32] = v2;
  v77 = v2;
  *v76 = v2;
  *&v76[16] = v2;
  v3 = a2[23];
  if (v3 >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  v5 = v4 + 2;
  if (v4 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = a2;
  if (v5 < 0x17)
  {
    v75[1] = 0;
    v75[2] = 0;
    HIBYTE(v75[2]) = v4 + 2;
    v10 = v75 + 2;
    v75[0] = 10798;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v9 = operator new(v8);
    v75[1] = (v4 + 2);
    v75[2] = (v8 | 0x8000000000000000);
    v75[0] = v9;
    *v9 = 10798;
    v10 = v9 + 2;
  }

  v11 = *v6;
  if (v3 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *v6;
  }

  memmove(v10, v12, v4);
LABEL_15:
  v10[v4] = 0;
  v13 = SHIBYTE(v75[2]);
  if ((SHIBYTE(v75[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v75[2]) - 21) < 2)
    {
      v14 = (SHIBYTE(v75[2]) + 2);
      v15 = v75;
      v16 = 22;
LABEL_21:
      v17 = 2 * v16;
      if (v14 > 2 * v16)
      {
        v17 = v14;
      }

      if ((v17 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v17 | 7) + 1;
      }

      if (v17 >= 0x17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 23;
      }

      v20 = v16 == 22;
      goto LABEL_30;
    }

    v24 = v75;
    *(v75 + SHIBYTE(v75[2])) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v75[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v13 = v75[1];
  v16 = (v75[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v16 - v75[1] >= 2)
  {
    v24 = v75[0];
    *(v75[0] + v75[1]) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v75[2]) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v75[2]) = v25 & 0x7F;
LABEL_39:
      v23 = &v25[v24];
      goto LABEL_40;
    }

LABEL_38:
    v75[1] = v25;
    goto LABEL_39;
  }

  v14 = v75[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v75[2] & 0x7FFFFFFFFFFFFFFFLL)) < v75[1] - v16 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v75[0];
  if (v16 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v20 = 0;
  v19 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v21 = operator new(v19);
  v22 = v21;
  if (v13)
  {
    memmove(v21, v15, v13);
  }

  *(v22 + v13) = 10798;
  if (!v20)
  {
    operator delete(v15);
  }

  v75[1] = v14;
  v75[2] = (v19 | 0x8000000000000000);
  v75[0] = v22;
  v23 = &v14[v22];
LABEL_40:
  *v23 = 0;
  *__p = *v75;
  __p[2] = v75[2];
  memset(v75, 0, sizeof(v75));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v76, __p, 0);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v75[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    operator delete(v75[0]);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v75[2]) < 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_43:
    v74 = *a1;
    goto LABEL_47;
  }

LABEL_46:
  std::string::__init_copy_ctor_external(&v74, *a1, a1[1]);
LABEL_47:
  std::locale::locale(&v68, v76);
  v69 = *&v76[8];
  v70 = *&v76[24];
  v71 = *&v76[40];
  v72 = v77;
  if (v77)
  {
    atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
  }

  v73 = *(&v77 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v74, &v68, &v78, 0);
  v27 = v72;
  if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    std::locale::~locale(&v68);
    if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if (FilteredFiles)
      {
        goto LABEL_53;
      }

LABEL_57:
      v28 = 0;
      v29 = v77;
      if (!v77)
      {
        goto LABEL_145;
      }

      goto LABEL_97;
    }
  }

  else
  {
    std::locale::~locale(&v68);
    if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  operator delete(v74.__r_.__value_.__l.__data_);
  if (!FilteredFiles)
  {
    goto LABEL_57;
  }

LABEL_53:
  memset(v75, 170, sizeof(v75));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, *a1, a1[1]);
  }

  else
  {
    v67 = *a1;
  }

  std::vector<std::string>::vector[abi:ne200100](&v65, &v78);
  util::findBasebandLogInfoFile(&v67.__r_.__value_.__l.__data_, &v65, v75);
  v30 = v65;
  if (v65)
  {
    v31 = v66;
    v32 = v65;
    if (v66 != v65)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v65;
    }

    v66 = v30;
    operator delete(v32);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    v34 = SHIBYTE(v75[2]);
    if (SHIBYTE(v75[2]) >= 0)
    {
      v35 = HIBYTE(v75[2]);
    }

    else
    {
      v35 = v75[1];
    }

    if (v35)
    {
LABEL_73:
      memset(__p, 170, 0x240uLL);
      v36 = *(a1 + 23);
      if (v36 >= 0)
      {
        v37 = *(a1 + 23);
      }

      else
      {
        v37 = a1[1];
      }

      v38 = v37 + v35;
      if (v37 + v35 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 <= 0x16)
      {
        memset(buf, 0, 24);
        v40 = buf;
        buf[23] = v37 + v35;
        if (!v37)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if ((v38 | 7) == 0x17)
        {
          v39 = 25;
        }

        else
        {
          v39 = (v38 | 7) + 1;
        }

        v40 = operator new(v39);
        *&buf[8] = v37 + v35;
        *&buf[16] = v39 | 0x8000000000000000;
        *buf = v40;
        if (!v37)
        {
LABEL_104:
          v44 = &v40[v37];
          if (v34 >= 0)
          {
            v45 = v75;
          }

          else
          {
            v45 = v75[0];
          }

          memmove(v44, v45, v35);
          v44[v35] = 0;
          std::ifstream::basic_ifstream(__p, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__p[17])
            {
              goto LABEL_109;
            }
          }

          else if (__p[17])
          {
LABEL_109:
            std::istream::seekg();
            memset(buf, 170, 24);
            v46 = buf;
            support::fs::readCurrentLine(__p, buf);
            v47 = buf[23];
            v49 = *buf;
            v48 = *&buf[8];
            if ((buf[23] & 0x80u) != 0)
            {
              v46 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v48 = buf[23];
            }

            if (v48 >= 35)
            {
              v50 = &v46[v48];
              v51 = v46;
              do
              {
                v52 = memchr(v51, 98, v48 - 34);
                if (!v52)
                {
                  break;
                }

                if (*v52 == 0x6320676F6C206262 && *(v52 + 1) == 0x6F697463656C6C6FLL && *(v52 + 2) == 0x20726F66202D206ELL && *(v52 + 3) == 0x6E67616964737973 && *(v52 + 27) == 0x65736F6E67616964)
                {
                  if (v52 != v50 && v52 - v46 != -1)
                  {
                    v28 = 1;
                    goto LABEL_141;
                  }

                  break;
                }

                v51 = v52 + 1;
                v48 = v50 - v51;
              }

              while (v50 - v51 >= 35);
            }

            v28 = 0;
LABEL_141:
            if (v47 < 0)
            {
              operator delete(v49);
            }

LABEL_143:
            __p[0] = *MEMORY[0x29EDC9518];
            *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9518] + 24);
            MEMORY[0x29C26E950](&__p[2]);
            std::istream::~istream();
            MEMORY[0x29C26EC90](&__p[53]);
            if (SHIBYTE(v75[2]) < 0)
            {
              goto LABEL_144;
            }

            goto LABEL_96;
          }

          if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
          {
            qword_2A1399DD8 = 0;
            qword_2A1399DE0 = 0;
            __cxa_guard_release(&qword_2A1399DD0);
          }

          if (_MergedGlobals_4 == -1)
          {
            v57 = qword_2A1399DE0;
            if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
            {
LABEL_135:
              v28 = 0;
              goto LABEL_143;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
            v57 = qword_2A1399DE0;
            if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_135;
            }
          }

          v64 = v75;
          if (SHIBYTE(v75[2]) < 0)
          {
            v64 = v75[0];
          }

          *buf = 136315138;
          *&buf[4] = v64;
          _os_log_error_impl(&dword_297288000, v57, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_135;
        }
      }

      v42 = *a1;
      if (v36 >= 0)
      {
        v43 = a1;
      }

      else
      {
        v43 = *a1;
      }

      memmove(v40, v43, v37);
      goto LABEL_104;
    }
  }

  else
  {
    v34 = SHIBYTE(v75[2]);
    if (SHIBYTE(v75[2]) >= 0)
    {
      v35 = HIBYTE(v75[2]);
    }

    else
    {
      v35 = v75[1];
    }

    if (v35)
    {
      goto LABEL_73;
    }
  }

  if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
  {
    qword_2A1399DD8 = 0;
    qword_2A1399DE0 = 0;
    __cxa_guard_release(&qword_2A1399DD0);
  }

  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
  }

  v41 = qword_2A1399DE0;
  v28 = 0;
  if (os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
  {
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v6;
    _os_log_impl(&dword_297288000, v41, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __p, 0xCu);
    v28 = 0;
    if (SHIBYTE(v75[2]) < 0)
    {
LABEL_144:
      operator delete(v75[0]);
      v29 = v77;
      if (!v77)
      {
        goto LABEL_145;
      }

      goto LABEL_97;
    }
  }

  else if (SHIBYTE(v75[2]) < 0)
  {
    goto LABEL_144;
  }

LABEL_96:
  v29 = v77;
  if (!v77)
  {
    goto LABEL_145;
  }

LABEL_97:
  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_145:
  std::locale::~locale(v76);
  v58 = v78;
  if (v78)
  {
    v59 = v79;
    v60 = v78;
    if (v79 != v78)
    {
      do
      {
        v61 = *(v59 - 1);
        v59 -= 3;
        if (v61 < 0)
        {
          operator delete(*v59);
        }
      }

      while (v59 != v58);
      v60 = v78;
    }

    v79 = v58;
    operator delete(v60);
  }

  v62 = *MEMORY[0x29EDCA608];
  return v28;
}

void sub_297308A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  std::vector<std::string>::~vector[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_297308AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a34);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_297308AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  if ((a33 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a43);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_297308AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (a30 < 0)
  {
    JUMPOUT(0x297308AFCLL);
  }

  JUMPOUT(0x297308B00);
}

void sub_297308B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
    if (a33 < 0)
    {
LABEL_5:
      operator delete(a28);
      std::vector<std::string>::~vector[abi:ne200100](&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (a33 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x297308AD4);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x29EDC9558] + 64;
  a1[53] = MEMORY[0x29EDC9558] + 64;
  v5 = *(MEMORY[0x29EDC9518] + 16);
  v6 = *(MEMORY[0x29EDC9518] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x29EDC9558] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x29C26E940](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_297308D04(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C26EC90](v1);
  _Unwind_Resume(a1);
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, std::string *a6@<X8>)
{
  v8 = a3;
  v10 = a6;
  v154 = *MEMORY[0x29EDCA608];
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  memset(v141, 170, sizeof(v141));
  v11 = strlen(__s);
  v106 = v10;
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v11 | 7) + 1;
    }

    p_dst = operator new(v19);
    *(&__dst + 1) = v12;
    *v146 = v19 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    v146[7] = v11;
    p_dst = &__dst;
    if (!v11)
    {
      LOBYTE(__dst) = 0;
      v14 = v146[7];
      if ((v146[7] & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v12);
  *(p_dst + v12) = 0;
  v14 = v146[7];
  if ((v146[7] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v14 - 21 < 2)
    {
      v15 = v8;
      v16 = v14 + 2;
      v17 = &__dst;
      v18 = 22;
LABEL_15:
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
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v18 == 22;
      goto LABEL_24;
    }

    v27 = &__dst;
    *&v146[v14 - 16] = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  v14 = *(&__dst + 1);
  v18 = (*v146 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 - *(&__dst + 1) >= 2)
  {
    v27 = __dst;
    *(__dst + *(&__dst + 1)) = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
LABEL_30:
      v146[7] = v28 & 0x7F;
LABEL_33:
      v26 = v27 + v28;
      goto LABEL_34;
    }

LABEL_32:
    *(&__dst + 1) = v28;
    goto LABEL_33;
  }

  v16 = *(&__dst + 1) + 2;
  if (0x7FFFFFFFFFFFFFF7 - (*v146 & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst + 1) + 2 - v18)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = __dst;
  v15 = v8;
  if (v18 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v24 = operator new(v22);
  v25 = v24;
  if (v14)
  {
    memmove(v24, v17, v14);
  }

  *&v25[v14] = 10798;
  if (!v23)
  {
    operator delete(v17);
  }

  *(&__dst + 1) = v16;
  *v146 = v22 | 0x8000000000000000;
  *&__dst = v25;
  v26 = &v25[v16];
  v8 = v15;
LABEL_34:
  *v26 = 0;
  v141[2] = *v146;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v140 = v29;
  *v141 = __dst;
  *&v139[16] = v29;
  *&v139[32] = v29;
  *v139 = v29;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v139, v141, 0);
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v137[32] = v30;
  v138 = v30;
  *v137 = v30;
  *&v137[16] = v30;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v137, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v31 = strlen(this);
  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  v108 = a5 == 0;
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

    v33 = operator new(v34);
    __p[1] = v32;
    v136 = v34 | 0x8000000000000000;
    __p[0] = v33;
    goto LABEL_42;
  }

  HIBYTE(v136) = v31;
  v33 = __p;
  if (v31)
  {
LABEL_42:
    memcpy(v33, this, v32);
  }

  *(v32 + v33) = 0;
  std::locale::locale(&v129, v139);
  v130 = *&v139[8];
  v131 = *&v139[24];
  v132 = *&v139[40];
  v133 = v140;
  if (v140)
  {
    atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
  }

  v134 = *(&v140 + 1);
  FilteredFiles = support::fs::getFilteredFiles(__p, &v129, &v142, 0);
  v36 = v133;
  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
LABEL_48:
      if (!FilteredFiles)
      {
        goto LABEL_192;
      }

      goto LABEL_52;
    }
  }

  else
  {
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__p[0]);
  if (!FilteredFiles)
  {
    goto LABEL_192;
  }

LABEL_52:
  v38 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v143 - v142));
  if (v143 == v142)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(v142, v143, v39, 1, v37);
  memset(&v128, 0, sizeof(v128));
  v40 = v142;
  v105 = v143;
  if (v142 == v143)
  {
LABEL_192:
    if (!v8)
    {
      goto LABEL_209;
    }

LABEL_193:
    if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v115, v10->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
    }

    else
    {
      v115 = *v10;
    }

    std::locale::locale(&v109, v137);
    v110 = *&v137[8];
    v111 = *&v137[24];
    v112 = *&v137[40];
    v113 = v138;
    if (v138)
    {
      atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
    }

    v114 = *(&v138 + 1);
    v92 = util::checkLogFileAge(&v115, v8, &v109);
    v93 = v113;
    if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v93->__on_zero_shared)(v93);
      std::__shared_weak_count::__release_weak(v93);
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_201:
        if (!v92)
        {
          goto LABEL_209;
        }

LABEL_205:
        if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
        {
          *v10->__r_.__value_.__l.__data_ = 0;
          v10->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v10->__r_.__value_.__s.__data_[0] = 0;
          *(&v10->__r_.__value_.__s + 23) = 0;
        }

        goto LABEL_209;
      }
    }

    else
    {
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }
    }

    operator delete(v115.__r_.__value_.__l.__data_);
    if (!v92)
    {
      goto LABEL_209;
    }

    goto LABEL_205;
  }

  v101 = v8;
  v103 = a5;
  while (1)
  {
    memset(&v127, 170, sizeof(v127));
    v107 = v40;
    v41 = &v127;
    if (*(v40 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v127, *v40, v40[1]);
    }

    else
    {
      v42 = *v40;
      v127.__r_.__value_.__r.__words[2] = v40[2];
      *&v127.__r_.__value_.__l.__data_ = v42;
    }

    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v128.__r_.__value_.__l.__size_;
    }

    v44 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
    v45 = SHIBYTE(v127.__r_.__value_.__r.__words[2]);
    v46 = *&v127.__r_.__value_.__l.__data_;
    if (size)
    {
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v127.__r_.__value_.__l.__size_;
        v41 = v127.__r_.__value_.__r.__words[0];
      }

      v48 = (v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v128 : v128.__r_.__value_.__r.__words[0];
      if (v47 >= size)
      {
        v69 = v41 + v47;
        v70 = v48->__r_.__value_.__s.__data_[0];
        v71 = v41;
        do
        {
          v72 = v47 - size;
          if (v72 == -1)
          {
            break;
          }

          v73 = memchr(v71, v70, v72 + 1);
          if (!v73)
          {
            break;
          }

          v74 = v73;
          if (!memcmp(v73, v48, size))
          {
            if (v74 == v69 || v74 - v41 == -1)
            {
              break;
            }

            v67 = 3;
            v10 = v106;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            goto LABEL_133;
          }

          v71 = (v74 + 1);
          v47 = v69 - (v74 + 1);
        }

        while (v47 >= size);
      }
    }

    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v125 = v49;
    v122 = 0xAAAAAAAAAAAAAA00;
    v119[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v120 = 0;
    v121 = 0;
    v123 = 0;
    v124 = 0;
    LOBYTE(v125) = 0;
    BYTE8(v125) = 0;
    v126 = 0;
    memset(v119, 0, 41);
    if (v108)
    {
      v152 = v49;
      v149 = 0xAAAAAAAAAAAAAA00;
      *&v146[24] = v49;
      v147 = 0;
      v148 = 0;
      v150 = 0;
      v151 = 0;
      LOBYTE(v152) = 0;
      BYTE8(v152) = 0;
      v153 = 0;
      __dst = 0uLL;
      *v146 = 0uLL;
      if (v45 >= 0)
      {
        v50 = &v127;
      }

      else
      {
        v50 = v46;
      }

      if (v45 >= 0)
      {
        v51 = v44;
      }

      else
      {
        v51 = *(&v46 + 1);
      }

      *&v146[9] = 0uLL;
      v52 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v137, v50, (v50 + v51), &__dst, 0);
      v53 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v127;
      }

      else
      {
        v54 = v127.__r_.__value_.__r.__words[0];
      }

      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = v127.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v119, v54, (v54 + v53), &__dst, 0);
      v10 = v106;
      if (__dst)
      {
        *(&__dst + 1) = __dst;
        operator delete(__dst);
      }

      if (v52)
      {
        p_matched = &v119[0].__begin_->matched;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_matched = &v119[1].__end_cap_;
        }

        if (*p_matched != 1)
        {
          __dst = 0uLL;
          *v146 = 0;
          if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_99:
            operator delete(v106->__r_.__value_.__l.__data_);
            *&v106->__r_.__value_.__l.__data_ = __dst;
            v106->__r_.__value_.__r.__words[2] = *v146;
            if (!a4)
            {
              goto LABEL_162;
            }

            goto LABEL_125;
          }

LABEL_124:
          *&v106->__r_.__value_.__l.__data_ = __dst;
          v106->__r_.__value_.__r.__words[2] = *v146;
          if (!a4)
          {
            goto LABEL_162;
          }

LABEL_125:
          v80 = strlen(this);
          if (v80 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v81 = v80;
          if (v80 >= 0x17)
          {
            if ((v80 | 7) == 0x17)
            {
              v84 = 25;
            }

            else
            {
              v84 = (v80 | 7) + 1;
            }

            v82 = operator new(v84);
            v117[1] = v81;
            v118 = v84 | 0x8000000000000000;
            v117[0] = v82;
          }

          else
          {
            HIBYTE(v118) = v80;
            v82 = v117;
            if (!v80)
            {
              LOBYTE(v117[0]) = 0;
              if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_129:
                v116 = *v106;
                goto LABEL_146;
              }

LABEL_145:
              std::string::__init_copy_ctor_external(&v116, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
LABEL_146:
              isDumpForSysdiagnose = util::isDumpForSysdiagnose(v117, &v116);
              if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v116.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v118) & 0x80000000) == 0)
                {
LABEL_148:
                  if (isDumpForSysdiagnose)
                  {
LABEL_149:
                    if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
                    {
                      qword_2A1399DD8 = 0;
                      qword_2A1399DE0 = 0;
                      __cxa_guard_release(&qword_2A1399DD0);
                    }

                    if (_MergedGlobals_4 == -1)
                    {
                      v86 = qword_2A1399DE0;
                      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                      dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
                      v86 = qword_2A1399DE0;
                      if (!os_log_type_enabled(qword_2A1399DE0, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    if ((v106->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v87 = v106;
                    }

                    else
                    {
                      v87 = v106->__r_.__value_.__r.__words[0];
                    }

                    LODWORD(__dst) = 136315138;
                    *(&__dst + 4) = v87;
                    _os_log_impl(&dword_297288000, v86, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", &__dst, 0xCu);
LABEL_156:
                    if (&v128 != v106)
                    {
                      v88 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (v88 >= 0)
                        {
                          v90 = v106;
                        }

                        else
                        {
                          v90 = v106->__r_.__value_.__r.__words[0];
                        }

                        if (v88 >= 0)
                        {
                          v91 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v91 = v106->__r_.__value_.__l.__size_;
                        }

                        std::string::__assign_no_alias<false>(&v128.__r_.__value_.__l.__data_, v90, v91);
                      }

                      else
                      {
                        if ((*(&v106->__r_.__value_.__s + 23) & 0x80) == 0)
                        {
                          v128 = *v106;
LABEL_185:
                          v67 = 0;
                          v106->__r_.__value_.__s.__data_[0] = 0;
                          *(&v106->__r_.__value_.__s + 23) = 0;
                          goto LABEL_167;
                        }

                        std::string::__assign_no_alias<true>(&v128, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
                      }
                    }

                    if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v67 = 0;
                      *v106->__r_.__value_.__l.__data_ = 0;
                      v106->__r_.__value_.__l.__size_ = 0;
                      goto LABEL_167;
                    }

                    goto LABEL_185;
                  }

LABEL_162:
                  v67 = 2;
LABEL_167:
                  v89 = 1;
LABEL_168:
                  v108 = v89;
                  begin = v119[0].__begin_;
                  if (v119[0].__begin_)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_170;
                }
              }

              else if ((SHIBYTE(v118) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              operator delete(v117[0]);
              if (isDumpForSysdiagnose)
              {
                goto LABEL_149;
              }

              goto LABEL_162;
            }
          }

          memcpy(v82, this, v81);
          *(v81 + v82) = 0;
          if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_145;
        }

        v56 = &v119[1];
        if (v119[0].__end_ != v119[0].__begin_)
        {
          v56 = v119[0].__begin_;
        }

        i = v56->first.__i_;
        p_i = &v119[0].__begin_->second.__i_;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_i = &v119[1].__end_;
        }

        v59 = *p_i;
        v60 = *p_i - i;
        if (v60 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v60 > 0x16)
        {
          if ((v60 | 7) == 0x17)
          {
            v83 = 25;
          }

          else
          {
            v83 = (v60 | 7) + 1;
          }

          v61 = operator new(v83);
          *(&__dst + 1) = v60;
          *v146 = v83 | 0x8000000000000000;
          *&__dst = v61;
          if (v59 == i)
          {
LABEL_98:
            *(v61 + v60) = 0;
            if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_99;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v146[7] = *p_i - i;
          v61 = &__dst;
          if (v59 == i)
          {
            goto LABEL_98;
          }
        }

        memmove(v61, i, v60);
        goto LABEL_98;
      }

LABEL_166:
      v67 = 0;
      goto LABEL_167;
    }

    v62 = v45 < 0;
    if (v45 >= 0)
    {
      v63 = &v127;
    }

    else
    {
      v63 = v46;
    }

    if (v62)
    {
      v64 = *(&v46 + 1);
    }

    else
    {
      v64 = v44;
    }

    v65 = strlen(v103);
    v10 = v106;
    if (!v65)
    {
LABEL_165:
      std::string::__assign_external(&v128, v103);
      goto LABEL_166;
    }

    v66 = v65;
    if (v64 >= v65)
    {
      v75 = v63 + v64;
      v76 = *v103;
      v77 = v63;
      do
      {
        if (v64 - v66 == -1)
        {
          break;
        }

        v78 = memchr(v77, v76, v64 - v66 + 1);
        if (!v78)
        {
          break;
        }

        v79 = v78;
        if (!memcmp(v78, v103, v66))
        {
          v89 = 0;
          if (v79 != v75)
          {
            v67 = 0;
            if (v79 - v63 == -1)
            {
              goto LABEL_168;
            }

            goto LABEL_165;
          }

          v67 = 0;
          v108 = 0;
          begin = v119[0].__begin_;
          if (v119[0].__begin_)
          {
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        v77 = (v79 + 1);
        v64 = v75 - (v79 + 1);
      }

      while (v64 >= v66);
    }

    v67 = 0;
    v108 = 0;
    begin = v119[0].__begin_;
    if (v119[0].__begin_)
    {
LABEL_169:
      v119[0].__end_ = begin;
      operator delete(begin);
    }

LABEL_170:
    v40 = v107;
    if ((*(&v127.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      break;
    }

LABEL_171:
    if (v67 != 3)
    {
      goto LABEL_172;
    }

LABEL_57:
    v40 += 3;
    if (v40 == v105)
    {
      goto LABEL_191;
    }
  }

LABEL_133:
  operator delete(v127.__r_.__value_.__l.__data_);
  if (v67 == 3)
  {
    goto LABEL_57;
  }

LABEL_172:
  if (!v67)
  {
    goto LABEL_57;
  }

LABEL_191:
  v8 = v101;
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_192;
  }

  operator delete(v128.__r_.__value_.__l.__data_);
  if (v101)
  {
    goto LABEL_193;
  }

LABEL_209:
  v94 = v138;
  if (v138 && !atomic_fetch_add((v138 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
    std::locale::~locale(v137);
    v95 = v140;
    if (!v140)
    {
      goto LABEL_213;
    }

LABEL_212:
    if (atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_213;
    }

    (v95->__on_zero_shared)(v95);
    std::__shared_weak_count::__release_weak(v95);
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
LABEL_214:
      operator delete(v141[0]);
    }
  }

  else
  {
    std::locale::~locale(v137);
    v95 = v140;
    if (v140)
    {
      goto LABEL_212;
    }

LABEL_213:
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
      goto LABEL_214;
    }
  }

  v96 = v142;
  if (v142)
  {
    v97 = v143;
    v98 = v142;
    if (v143 != v142)
    {
      do
      {
        v99 = *(v97 - 1);
        v97 -= 3;
        if (v99 < 0)
        {
          operator delete(*v97);
        }
      }

      while (v97 != v96);
      v98 = v142;
    }

    v143 = v96;
    operator delete(v98);
  }

  v100 = *MEMORY[0x29EDCA608];
}