awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::Swap(awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *this, awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationAccessory_LocationAppRunningTime *awd::metrics::LocationAccessory_LocationAppRunningTime::LocationAccessory_LocationAppRunningTime(awd::metrics::LocationAccessory_LocationAppRunningTime *this, const awd::metrics::LocationAccessory_LocationAppRunningTime *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D51078;
  *(this + 1) = v3;
  *(this + 2) = 0;
  *(this + 6) = 0;
  awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(awd::metrics::LocationAccessory_LocationAppRunningTime *this, const awd::metrics::LocationAccessory_LocationAppRunningTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      v6 = *(this + 1);
      if (v6 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v7;
    }
  }
}

void sub_296467DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_LocationAppRunningTime::~LocationAccessory_LocationAppRunningTime(awd::metrics::LocationAccessory_LocationAppRunningTime *this)
{
  *this = &unk_2A1D51078;
  awd::metrics::LocationAccessory_LocationAppRunningTime::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51078;
  awd::metrics::LocationAccessory_LocationAppRunningTime::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51078;
  awd::metrics::LocationAccessory_LocationAppRunningTime::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::default_instance(awd::metrics::LocationAccessory_LocationAppRunningTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_LocationAppRunningTime::default_instance_;
  if (!awd::metrics::LocationAccessory_LocationAppRunningTime::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_LocationAppRunningTime::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    if (*(this + 24))
    {
      v1 = *(this + 8);
      if (v1 != MEMORY[0x29EDC9758])
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::MergePartialFromCodedStream(awd::metrics::LocationAccessory_LocationAppRunningTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_21:
        if (v11 >= v9 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 6) |= 2u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        break;
      }

      *(this + 6) |= 1u;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 < v9 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
        goto LABEL_21;
      }
    }

LABEL_17:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v8, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::ByteSize(awd::metrics::LocationAccessory_LocationAppRunningTime *this)
{
  LOBYTE(v2) = *(this + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
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
    v2 = *(this + 6);
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

  v3 = (v9 + v5);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 4);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_19:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationAccessory_LocationAppRunningTime::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_LocationAppRunningTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_LocationAppRunningTime::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_LocationAppRunningTime::CopyFrom(awd::metrics::LocationAccessory_LocationAppRunningTime *this, const awd::metrics::LocationAccessory_LocationAppRunningTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationAccessory_LocationAppRunningTime::Swap(uint64_t this, awd::metrics::LocationAccessory_LocationAppRunningTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_NavDynamicsHistogram *awd::metrics::LocationAccessory_NavDynamicsHistogram::LocationAccessory_NavDynamicsHistogram(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, const awd::metrics::LocationAccessory_NavDynamicsHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D510F0;
  awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, const awd::metrics::LocationAccessory_NavDynamicsHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      if (v5 >= 7)
      {
        awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom();
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_2964685D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_NavDynamicsHistogram::~LocationAccessory_NavDynamicsHistogram(awd::metrics::LocationAccessory_NavDynamicsHistogram *this)
{
  *this = &unk_2A1D510F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D510F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D510F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::default_instance(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_NavDynamicsHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_NavDynamicsHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_NavDynamicsHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 6)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v11;
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 5) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_NavDynamicsHistogram::ByteSize(awd::metrics::LocationAccessory_NavDynamicsHistogram *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_17:
  *(this + 4) = v3;
  return v3;
}

void awd::metrics::LocationAccessory_NavDynamicsHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_NavDynamicsHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_NavDynamicsHistogram::CopyFrom(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, const awd::metrics::LocationAccessory_NavDynamicsHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_NavDynamicsHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_NavDynamicsHistogram *awd::metrics::LocationAccessory_NavDynamicsHistogram::Swap(awd::metrics::LocationAccessory_NavDynamicsHistogram *this, awd::metrics::LocationAccessory_NavDynamicsHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 72) = 0;
  return this;
}

awd::metrics::LocationAccessory_PASCDRavenUsageStats *awd::metrics::LocationAccessory_PASCDRavenUsageStats::LocationAccessory_PASCDRavenUsageStats(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, const awd::metrics::LocationAccessory_PASCDRavenUsageStats *a2)
{
  *(this + 1) = 0;
  *this = &unk_2A1D51168;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 20) = 0;
  awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(this, a2);
  return this;
}

void sub_296468BDC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, const awd::metrics::LocationAccessory_PASCDRavenUsageStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>((this + 32), a2 + 32);
  v4 = *(a2 + 20);
  if ((v4 & 0x3FC) != 0)
  {
    if ((v4 & 4) != 0)
    {
      v6 = *(a2 + 14);
      *(this + 20) |= 4u;
      *(this + 14) = v6;
      v4 = *(a2 + 20);
      if ((v4 & 8) == 0)
      {
LABEL_6:
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 15);
    *(this + 20) |= 8u;
    *(this + 15) = v7;
    v4 = *(a2 + 20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 16);
    *(this + 20) |= 0x10u;
    *(this + 16) = v8;
    v4 = *(a2 + 20);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 17);
    *(this + 20) |= 0x20u;
    *(this + 17) = v9;
    if ((*(a2 + 20) & 0x40) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 18);
    *(this + 20) |= 0x40u;
    *(this + 18) = v5;
  }
}

void sub_296468D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDRavenUsageStats::~LocationAccessory_PASCDRavenUsageStats(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this)
{
  *this = &unk_2A1D51168;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory_PASCDRavenUsageStats::~LocationAccessory_PASCDRavenUsageStats(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::default_instance(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PASCDRavenUsageStats::default_instance_;
  if (!awd::metrics::LocationAccessory_PASCDRavenUsageStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PASCDRavenUsageStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::Clear(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this)
{
  if ((*(this + 40) & 0x3FC) != 0)
  {
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 18) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 8);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 32);
  *(this + 20) = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v6 == 1)
        {
          if (v7 != 2)
          {
            goto LABEL_47;
          }

          while (1)
          {
            v12 = *(this + 5);
            v13 = *(this + 4);
            if (v13 >= v12)
            {
              if (v12 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                v12 = *(this + 5);
              }

              *(this + 5) = v12 + 1;
              operator new();
            }

            v14 = *(this + 1);
            *(this + 4) = v13 + 1;
            v15 = *(v14 + 8 * v13);
            v47 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(a2 + 14);
            v18 = *(a2 + 15);
            *(a2 + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationAccessory_PerfRangeHistogram::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v19 = *(a2 + 14);
            v20 = __OFSUB__(v19, 1);
            v21 = v19 - 1;
            if (v21 < 0 == v20)
            {
              *(a2 + 14) = v21;
            }

            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2))
            {
              break;
            }

            v23 = *v22;
            if (v23 != 10)
            {
              if (v23 != 18)
              {
                goto LABEL_1;
              }

              goto LABEL_50;
            }

            *(a2 + 1) = v22 + 1;
          }
        }

        else if (v6 == 2)
        {
          if (v7 != 2)
          {
            goto LABEL_47;
          }

          while (1)
          {
            v26 = *(this + 11);
            v27 = *(this + 10);
            if (v27 >= v26)
            {
              if (v26 == *(this + 12))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
                v26 = *(this + 11);
              }

              *(this + 11) = v26 + 1;
              operator new();
            }

            v28 = *(this + 4);
            *(this + 10) = v27 + 1;
            v29 = *(v28 + 8 * v27);
            v48 = 0;
            v30 = *(a2 + 1);
            if (v30 >= *(a2 + 2) || *v30 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
              {
                return 0;
              }
            }

            else
            {
              v48 = *v30;
              *(a2 + 1) = v30 + 1;
            }

            v31 = *(a2 + 14);
            v32 = *(a2 + 15);
            *(a2 + 14) = v31 + 1;
            if (v31 >= v32)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationAccessory_PerfRangeHistogram::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v33 = *(a2 + 14);
            v20 = __OFSUB__(v33, 1);
            v34 = v33 - 1;
            if (v34 < 0 == v20)
            {
              *(a2 + 14) = v34;
            }

            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v22 >= v8)
            {
              break;
            }

            v35 = *v22;
            if (v35 != 18)
            {
              if (v35 != 24)
              {
                goto LABEL_1;
              }

              v10 = (v22 + 1);
              *(a2 + 1) = v10;
              goto LABEL_69;
            }

LABEL_50:
            *(a2 + 1) = v22 + 1;
          }
        }

        else
        {
          if (v6 != 3 || (TagFallback & 7) != 0)
          {
            goto LABEL_47;
          }

          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_69:
          if (v10 >= v8 || (v36 = *v10, v36 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
            if (!result)
            {
              return result;
            }

            v37 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 14) = v36;
            v37 = v10 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 20) |= 4u;
          if (v37 < v8 && *v37 == 32)
          {
            v24 = v37 + 1;
            *(a2 + 1) = v24;
            goto LABEL_77;
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v6 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v25 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_93;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_101;
        }

        goto LABEL_47;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_47;
      }

      v24 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_77:
      if (v24 >= v8 || (v39 = *v24, v39 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
        if (!result)
        {
          return result;
        }

        v40 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 15) = v39;
        v40 = v24 + 1;
        *(a2 + 1) = v40;
      }

      *(this + 20) |= 8u;
      if (v40 < v8 && *v40 == 40)
      {
        v9 = v40 + 1;
        *(a2 + 1) = v9;
LABEL_85:
        if (v9 >= v8 || (v41 = *v9, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v41;
          v42 = v9 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 20) |= 0x10u;
        if (v42 < v8 && *v42 == 48)
        {
          v25 = v42 + 1;
          *(a2 + 1) = v25;
LABEL_93:
          if (v25 >= v8 || (v43 = *v25, v43 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
            if (!result)
            {
              return result;
            }

            v44 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 17) = v43;
            v44 = v25 + 1;
            *(a2 + 1) = v44;
          }

          *(this + 20) |= 0x20u;
          if (v44 < v8 && *v44 == 56)
          {
            v11 = v44 + 1;
            *(a2 + 1) = v11;
LABEL_101:
            if (v11 >= v8 || (v45 = *v11, v45 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
              if (!result)
              {
                return result;
              }

              v46 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 18) = v45;
              v46 = v11 + 1;
              *(a2 + 1) = v46;
            }

            *(this + 20) |= 0x40u;
            if (v46 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_85;
    }

LABEL_47:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  v8 = *(v5 + 80);
  if ((v8 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 56), a2, a4);
    v8 = *(v5 + 80);
    if ((v8 & 8) == 0)
    {
LABEL_9:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_9;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 60), a2, a4);
  v8 = *(v5 + 80);
  if ((v8 & 0x10) == 0)
  {
LABEL_10:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 68), a2, a4);
    if ((*(v5 + 80) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 64), a2, a4);
  v8 = *(v5 + 80);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v8 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v9 = *(v5 + 72);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v9, a2, a4);
}

uint64_t awd::metrics::LocationAccessory_PASCDRavenUsageStats::ByteSize(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this)
{
  v2 = *(this + 20);
  if ((v2 & 0x3FC) == 0)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if ((v2 & 4) != 0)
  {
    v4 = *(this + 14);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 20);
      if ((v2 & 8) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 8) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 15);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 0x10) != 0)
  {
    v7 = *(this + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 20);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 0x20) == 0)
    {
LABEL_16:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(this + 17);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x40) != 0)
  {
LABEL_26:
    v11 = *(this + 18);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

LABEL_30:
  v13 = *(this + 4);
  v14 = v13 + v3;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = awd::metrics::LocationAccessory_PerfRangeHistogram::ByteSize(*(*(this + 1) + 8 * v15));
      v17 = v16;
      if (v16 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      }

      else
      {
        v18 = 1;
      }

      v14 += v17 + v18;
      ++v15;
    }

    while (v15 < *(this + 4));
  }

  v19 = *(this + 10);
  v20 = (v19 + v14);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = awd::metrics::LocationAccessory_PerfRangeHistogram::ByteSize(*(*(this + 4) + 8 * v21));
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(this + 10));
  }

  *(this + 19) = v20;
  return v20;
}

void awd::metrics::LocationAccessory_PASCDRavenUsageStats::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_PASCDRavenUsageStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PASCDRavenUsageStats::CopyFrom(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, const awd::metrics::LocationAccessory_PASCDRavenUsageStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PASCDRavenUsageStats *awd::metrics::LocationAccessory_PASCDRavenUsageStats::Swap(awd::metrics::LocationAccessory_PASCDRavenUsageStats *this, awd::metrics::LocationAccessory_PASCDRavenUsageStats *a2)
{
  if (a2 != this)
  {
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 14);
    *(v3 + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    v5 = *(v3 + 15);
    *(v3 + 15) = *(a2 + 15);
    *(a2 + 15) = v5;
    v6 = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
    v7 = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v7;
    v8 = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v8;
    v9 = *(v3 + 20);
    *(v3 + 20) = *(a2 + 20);
    *(a2 + 20) = v9;
    v10 = *(v3 + 19);
    *(v3 + 19) = *(a2 + 19);
    *(a2 + 19) = v10;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_PASCDTransmissionHistogram *awd::metrics::LocationAccessory_PASCDTransmissionHistogram::LocationAccessory_PASCDTransmissionHistogram(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, const awd::metrics::LocationAccessory_PASCDTransmissionHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D511E0;
  awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, const awd::metrics::LocationAccessory_PASCDTransmissionHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      if (v5 >= 5)
      {
        awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom();
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_296469AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDTransmissionHistogram::~LocationAccessory_PASCDTransmissionHistogram(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this)
{
  *this = &unk_2A1D511E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D511E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D511E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::default_instance(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PASCDTransmissionHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_PASCDTransmissionHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PASCDTransmissionHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 4)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v11;
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 5) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDTransmissionHistogram::ByteSize(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_17:
  *(this + 4) = v3;
  return v3;
}

void awd::metrics::LocationAccessory_PASCDTransmissionHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_PASCDTransmissionHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PASCDTransmissionHistogram::CopyFrom(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, const awd::metrics::LocationAccessory_PASCDTransmissionHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PASCDTransmissionHistogram *awd::metrics::LocationAccessory_PASCDTransmissionHistogram::Swap(awd::metrics::LocationAccessory_PASCDTransmissionHistogram *this, awd::metrics::LocationAccessory_PASCDTransmissionHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::LocationAccessory_PASCDSampleSizeHistogram(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, const awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D51258;
  awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergeFrom(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, const awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_29646A120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::~LocationAccessory_PASCDSampleSizeHistogram(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this)
{
  *this = &unk_2A1D51258;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51258;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51258;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::default_instance(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 5) |= 2u;
        if (v12 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::ByteSize(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_14:
  *(this + 4) = v3;
  return v3;
}

void awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::CopyFrom(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, const awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::Swap(awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *this, awd::metrics::LocationAccessory_PASCDSampleSizeHistogram *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

awd::metrics::LocationAccessory_PASCDStats *awd::metrics::LocationAccessory_PASCDStats::LocationAccessory_PASCDStats(awd::metrics::LocationAccessory_PASCDStats *this, const awd::metrics::LocationAccessory_PASCDStats *a2)
{
  *this = &unk_2A1D512D0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  awd::metrics::LocationAccessory_PASCDStats::MergeFrom(this, a2);
  return this;
}

void sub_29646A6F4(_Unwind_Exception *a1)
{
  v4 = v3;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(v4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDStats::MergeFrom(awd::metrics::LocationAccessory_PASCDStats *this, const awd::metrics::LocationAccessory_PASCDStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>((this + 32), a2 + 32);
  v4 = *(a2 + 18);
  if ((v4 & 0x3FC) != 0)
  {
    if ((v4 & 4) != 0)
    {
      *(this + 18) |= 4u;
      v5 = *(this + 7);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 7);
      if (!v6)
      {
        v6 = *(awd::metrics::LocationAccessory_PASCDStats::default_instance_ + 56);
      }

      awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergeFrom(v5, v6);
      v4 = *(a2 + 18);
    }

    if ((v4 & 8) != 0)
    {
      v7 = *(a2 + 16);
      *(this + 18) |= 8u;
      *(this + 16) = v7;
    }
  }
}

void sub_29646A858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PASCDStats::~LocationAccessory_PASCDStats(awd::metrics::LocationAccessory_PASCDStats *this)
{
  *this = &unk_2A1D512D0;
  if (awd::metrics::LocationAccessory_PASCDStats::default_instance_ != this)
  {
    v2 = *(this + 7);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory_PASCDStats::~LocationAccessory_PASCDStats(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationAccessory_PASCDStats::SharedDtor(void *this)
{
  if (awd::metrics::LocationAccessory_PASCDStats::default_instance_ != this)
  {
    this = this[7];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::default_instance(awd::metrics::LocationAccessory_PASCDStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PASCDStats::default_instance_;
  if (!awd::metrics::LocationAccessory_PASCDStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PASCDStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::Clear(awd::metrics::LocationAccessory_PASCDStats *this)
{
  v2 = *(this + 18);
  if ((v2 & 0x3FC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 7);
      if (v3)
      {
        awd::metrics::LocationAccessory_PASCDRavenUsageStats::Clear(v3);
      }
    }

    *(this + 16) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDTransmissionHistogram>::TypeHandler>(this + 8);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PASCDSampleSizeHistogram>::TypeHandler>(this + 32);
  *(this + 18) = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PASCDStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          if (v7 != 2)
          {
            goto LABEL_37;
          }

          while (1)
          {
            v10 = *(this + 5);
            v11 = *(this + 4);
            if (v11 >= v10)
            {
              if (v10 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                v10 = *(this + 5);
              }

              *(this + 5) = v10 + 1;
              operator new();
            }

            v12 = *(this + 1);
            *(this + 4) = v11 + 1;
            v13 = *(v12 + 8 * v11);
            v42 = 0;
            v14 = *(a2 + 1);
            if (v14 >= *(a2 + 2) || *v14 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v14;
              *(a2 + 1) = v14 + 1;
            }

            v15 = *(a2 + 14);
            v16 = *(a2 + 15);
            *(a2 + 14) = v15 + 1;
            if (v15 >= v16)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationAccessory_PASCDTransmissionHistogram::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v17 = *(a2 + 14);
            v18 = __OFSUB__(v17, 1);
            v19 = v17 - 1;
            if (v19 < 0 == v18)
            {
              *(a2 + 14) = v19;
            }

            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2))
            {
              break;
            }

            v21 = *v20;
            if (v21 != 10)
            {
              if (v21 != 18)
              {
                goto LABEL_1;
              }

              goto LABEL_40;
            }

            *(a2 + 1) = v20 + 1;
          }
        }

        else
        {
          if (v6 != 2 || v7 != 2)
          {
            goto LABEL_37;
          }

          while (1)
          {
            v22 = *(this + 11);
            v23 = *(this + 10);
            if (v23 >= v22)
            {
              if (v22 == *(this + 12))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
                v22 = *(this + 11);
              }

              *(this + 11) = v22 + 1;
              operator new();
            }

            v24 = *(this + 4);
            *(this + 10) = v23 + 1;
            v25 = *(v24 + 8 * v23);
            v43 = 0;
            v26 = *(a2 + 1);
            if (v26 >= *(a2 + 2) || *v26 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43))
              {
                return 0;
              }
            }

            else
            {
              v43 = *v26;
              *(a2 + 1) = v26 + 1;
            }

            v27 = *(a2 + 14);
            v28 = *(a2 + 15);
            *(a2 + 14) = v27 + 1;
            if (v27 >= v28)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v29 = *(a2 + 14);
            v18 = __OFSUB__(v29, 1);
            v30 = v29 - 1;
            if (v30 < 0 == v18)
            {
              *(a2 + 14) = v30;
            }

            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2))
            {
              break;
            }

            v31 = *v20;
            if (v31 != 18)
            {
              if (v31 != 26)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v20 + 1;
              goto LABEL_59;
            }

LABEL_40:
            *(a2 + 1) = v20 + 1;
          }
        }
      }

      if (v6 != 3)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_37;
      }

LABEL_59:
      *(this + 18) |= 4u;
      v32 = *(this + 7);
      if (!v32)
      {
        operator new();
      }

      v44 = 0;
      v33 = *(a2 + 1);
      if (v33 >= *(a2 + 2) || *v33 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v33;
        *(a2 + 1) = v33 + 1;
      }

      v34 = *(a2 + 14);
      v35 = *(a2 + 15);
      *(a2 + 14) = v34 + 1;
      if (v34 >= v35)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!awd::metrics::LocationAccessory_PASCDRavenUsageStats::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v36 = *(a2 + 14);
      v18 = __OFSUB__(v36, 1);
      v37 = v36 - 1;
      if (v37 < 0 == v18)
      {
        *(a2 + 14) = v37;
      }

      v38 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v38 < v8 && *v38 == 32)
      {
        v9 = v38 + 1;
        *(a2 + 1) = v9;
LABEL_73:
        if (v9 >= v8 || (v39 = *v9, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v39;
          v40 = v9 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 18) |= 8u;
        if (v40 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 4 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_73;
    }

LABEL_37:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  v8 = *(v5 + 72);
  if ((v8 & 4) != 0)
  {
    v9 = *(v5 + 56);
    if (!v9)
    {
      v9 = *(awd::metrics::LocationAccessory_PASCDStats::default_instance_ + 56);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
    v8 = *(v5 + 72);
  }

  if ((v8 & 8) != 0)
  {
    v10 = *(v5 + 64);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v10, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PASCDStats::ByteSize(awd::metrics::LocationAccessory_PASCDStats *this)
{
  v2 = *(this + 18);
  if ((v2 & 0x3FC) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((v2 & 4) == 0)
  {
    v3 = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(this + 7);
  if (!v4)
  {
    v4 = *(awd::metrics::LocationAccessory_PASCDStats::default_instance_ + 56);
  }

  v5 = awd::metrics::LocationAccessory_PASCDRavenUsageStats::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  if ((*(this + 18) & 8) != 0)
  {
LABEL_12:
    v8 = *(this + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
  }

LABEL_16:
  v10 = *(this + 4);
  v11 = v10 + v3;
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = awd::metrics::LocationAccessory_PASCDTransmissionHistogram::ByteSize(*(*(this + 1) + 8 * v12));
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      }

      else
      {
        v15 = 1;
      }

      v11 += v14 + v15;
      ++v12;
    }

    while (v12 < *(this + 4));
  }

  v16 = *(this + 10);
  v17 = (v16 + v11);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = awd::metrics::LocationAccessory_PASCDSampleSizeHistogram::ByteSize(*(*(this + 4) + 8 * v18));
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v17 = (v20 + v17 + v21);
      ++v18;
    }

    while (v18 < *(this + 10));
  }

  *(this + 17) = v17;
  return v17;
}

void awd::metrics::LocationAccessory_PASCDStats::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PASCDStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_PASCDStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PASCDStats::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PASCDStats::CopyFrom(awd::metrics::LocationAccessory_PASCDStats *this, const awd::metrics::LocationAccessory_PASCDStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PASCDStats::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PASCDStats *awd::metrics::LocationAccessory_PASCDStats::Swap(awd::metrics::LocationAccessory_PASCDStats *this, awd::metrics::LocationAccessory_PASCDStats *a2)
{
  if (a2 != this)
  {
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 7);
    *(v3 + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v4;
    LODWORD(v4) = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v4;
    LODWORD(v4) = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v4;
  }

  return this;
}

void *awd::metrics::LocationAccessory_Coordinate::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::LocationAccessory_Coordinate *awd::metrics::LocationAccessory_Coordinate::LocationAccessory_Coordinate(awd::metrics::LocationAccessory_Coordinate *this, const awd::metrics::LocationAccessory_Coordinate *a2)
{
  *this = &unk_2A1D51348;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::LocationAccessory_Coordinate::MergeFrom(this, a2);
  return this;
}

double awd::metrics::LocationAccessory_Coordinate::MergeFrom(awd::metrics::LocationAccessory_Coordinate *this, const awd::metrics::LocationAccessory_Coordinate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_29646B4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_Coordinate::~LocationAccessory_Coordinate(awd::metrics::LocationAccessory_Coordinate *this)
{
  *this = &unk_2A1D51348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_Coordinate::default_instance(awd::metrics::LocationAccessory_Coordinate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_Coordinate::default_instance_;
  if (!awd::metrics::LocationAccessory_Coordinate::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_Coordinate::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_Coordinate::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_Coordinate::MergePartialFromCodedStream(awd::metrics::LocationAccessory_Coordinate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v9 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v9;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v6 != 1)
      {
        break;
      }

      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v9;
      *(this + 7) |= 1u;
      v7 = *(a2 + 1);
      if (v7 < *(a2 + 2) && *v7 == 17)
      {
        *(a2 + 1) = v7 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::LocationAccessory_Coordinate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_Coordinate::ByteSize(awd::metrics::LocationAccessory_Coordinate *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double awd::metrics::LocationAccessory_Coordinate::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_Coordinate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_Coordinate::CheckTypeAndMergeFrom();
  }

  return awd::metrics::LocationAccessory_Coordinate::MergeFrom(this, lpsrc);
}

double awd::metrics::LocationAccessory_Coordinate::CopyFrom(awd::metrics::LocationAccessory_Coordinate *this, const awd::metrics::LocationAccessory_Coordinate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::LocationAccessory_Coordinate::MergeFrom(this, a2);
  }

  return result;
}

double awd::metrics::LocationAccessory_Coordinate::Swap(awd::metrics::LocationAccessory_Coordinate *this, awd::metrics::LocationAccessory_Coordinate *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

double awd::metrics::LocationAccessory::LocationAccessory(awd::metrics::LocationAccessory *this)
{
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 86) = 0;
  *this = &unk_2A1D513C0;
  *(this + 1) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v1;
  *(this + 4) = v1;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 14) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 200) = 0u;
  *(this + 232) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 41) = v1;
  *(this + 42) = v1;
  *(this + 348) = 0;
  return result;
}

double awd::metrics::LocationAccessory::SharedCtor(awd::metrics::LocationAccessory *this)
{
  *(this + 86) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 3) = v1;
  *(this + 4) = v1;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 14) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 25) = 0;
  *(this + 29) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 37) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 41) = v1;
  *(this + 42) = v1;
  *(this + 348) = 0;
  return result;
}

awd::metrics::LocationAccessory *awd::metrics::LocationAccessory::LocationAccessory(awd::metrics::LocationAccessory *this, const awd::metrics::LocationAccessory *a2)
{
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 86) = 0;
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D513C0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 14) = 0;
  *(this + 60) = 0;
  *(this + 200) = 0u;
  *(this + 232) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 41) = v3;
  *(this + 42) = v3;
  *(this + 348) = 0;
  awd::metrics::LocationAccessory::MergeFrom(this, a2);
  return this;
}

void sub_29646BB30(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_MessageHistogram>::TypeHandler>(v1 + 38);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(v1 + 30);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(v1 + 26);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LocationAppRunningTime>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory::MergeFrom(awd::metrics::LocationAccessory *this, const awd::metrics::LocationAccessory *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v82);
  }

  v4 = *(this + 46);
  v5 = *(a2 + 46);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
  LODWORD(v6) = *(a2 + 46);
  v7 = MEMORY[0x29EDC9758];
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v82);
      }

      v9 = *(*(a2 + 22) + 8 * v8);
      v10 = *(this + 47);
      v11 = *(this + 46);
      if (v11 >= v10)
      {
        if (v10 == *(this + 48))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
          v10 = *(this + 47);
        }

        *(this + 47) = v10 + 1;
        operator new();
      }

      v12 = *(this + 22);
      *(this + 46) = v11 + 1;
      awd::metrics::LocationAccessory_LocationAppRunningTime::MergeFrom(*(v12 + 8 * v11), v9);
      ++v8;
      v6 = *(a2 + 46);
    }

    while (v8 < v6);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>((this + 208), a2 + 208);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>((this + 240), a2 + 240);
  v13 = *(this + 78);
  v14 = *(a2 + 78);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 304));
  LODWORD(v15) = *(a2 + 78);
  if (v15 >= 1)
  {
    v16 = 0;
    do
    {
      if (v16 >= v15)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v82);
      }

      v17 = *(*(a2 + 38) + 8 * v16);
      v18 = *(this + 78);
      v19 = *(this + 79);
      if (v18 >= v19)
      {
        if (v19 == *(this + 80))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 304));
          v19 = *(this + 79);
        }

        *(this + 79) = v19 + 1;
        operator new();
      }

      v20 = *(this + 38);
      *(this + 78) = v18 + 1;
      awd::metrics::LocationAccessory_MessageHistogram::MergeFrom(*(v20 + 8 * v18), v17);
      ++v16;
      v15 = *(a2 + 78);
    }

    while (v16 < v15);
  }

  v21 = *(a2 + 87);
  if (!v21)
  {
    goto LABEL_33;
  }

  if (v21)
  {
    v23 = *(a2 + 1);
    *(this + 87) |= 1u;
    *(this + 1) = v23;
    v21 = *(a2 + 87);
    if ((v21 & 2) == 0)
    {
LABEL_26:
      if ((v21 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_47;
    }
  }

  else if ((v21 & 2) == 0)
  {
    goto LABEL_26;
  }

  v24 = *(a2 + 2);
  *(this + 87) |= 2u;
  v25 = *(this + 2);
  if (v25 == v7)
  {
    operator new();
  }

  std::string::operator=(v25, v24);
  v21 = *(a2 + 87);
  if ((v21 & 4) == 0)
  {
LABEL_27:
    if ((v21 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_50;
  }

LABEL_47:
  v26 = *(a2 + 3);
  *(this + 87) |= 4u;
  v27 = *(this + 3);
  if (v27 == v7)
  {
    operator new();
  }

  std::string::operator=(v27, v26);
  v21 = *(a2 + 87);
  if ((v21 & 8) == 0)
  {
LABEL_28:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_50:
  v28 = *(a2 + 4);
  *(this + 87) |= 8u;
  v29 = *(this + 4);
  if (v29 == v7)
  {
    operator new();
  }

  std::string::operator=(v29, v28);
  v21 = *(a2 + 87);
  if ((v21 & 0x10) == 0)
  {
LABEL_29:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_30;
    }

LABEL_56:
    v32 = *(a2 + 6);
    *(this + 87) |= 0x20u;
    v33 = *(this + 6);
    if (v33 == v7)
    {
      operator new();
    }

    std::string::operator=(v33, v32);
    v21 = *(a2 + 87);
    if ((v21 & 0x40) == 0)
    {
LABEL_31:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_53:
  v30 = *(a2 + 5);
  *(this + 87) |= 0x10u;
  v31 = *(this + 5);
  if (v31 == v7)
  {
    operator new();
  }

  std::string::operator=(v31, v30);
  v21 = *(a2 + 87);
  if ((v21 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_30:
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_59:
  v34 = *(a2 + 14);
  *(this + 87) |= 0x40u;
  *(this + 14) = v34;
  v21 = *(a2 + 87);
  if ((v21 & 0x80) != 0)
  {
LABEL_32:
    v22 = *(a2 + 60);
    *(this + 87) |= 0x80u;
    *(this + 60) = v22;
    v21 = *(a2 + 87);
  }

LABEL_33:
  if ((v21 & 0xFF00) == 0)
  {
    goto LABEL_81;
  }

  if ((v21 & 0x100) != 0)
  {
    v35 = *(a2 + 16);
    *(this + 87) |= 0x100u;
    *(this + 16) = v35;
    v21 = *(a2 + 87);
    if ((v21 & 0x200) == 0)
    {
LABEL_36:
      if ((v21 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }
  }

  else if ((v21 & 0x200) == 0)
  {
    goto LABEL_36;
  }

  v36 = *(a2 + 17);
  *(this + 87) |= 0x200u;
  *(this + 17) = v36;
  v21 = *(a2 + 87);
  if ((v21 & 0x400) == 0)
  {
LABEL_37:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_64;
  }

LABEL_63:
  v37 = *(a2 + 18);
  *(this + 87) |= 0x400u;
  *(this + 18) = v37;
  v21 = *(a2 + 87);
  if ((v21 & 0x800) == 0)
  {
LABEL_38:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_65;
  }

LABEL_64:
  v38 = *(a2 + 19);
  *(this + 87) |= 0x800u;
  *(this + 19) = v38;
  v21 = *(a2 + 87);
  if ((v21 & 0x1000) == 0)
  {
LABEL_39:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_66;
  }

LABEL_65:
  v39 = *(a2 + 30);
  *(this + 87) |= 0x1000u;
  *(this + 30) = v39;
  v21 = *(a2 + 87);
  if ((v21 & 0x2000) == 0)
  {
LABEL_40:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(this + 87) |= 0x2000u;
  v40 = *(this + 10);
  if (!v40)
  {
    operator new();
  }

  v41 = *(a2 + 10);
  if (!v41)
  {
    v41 = *(awd::metrics::LocationAccessory::default_instance_ + 80);
  }

  awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(v40, v41);
  v21 = *(a2 + 87);
  if ((v21 & 0x4000) == 0)
  {
LABEL_41:
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(this + 87) |= 0x4000u;
  v42 = *(this + 11);
  if (!v42)
  {
    operator new();
  }

  v43 = *(a2 + 11);
  if (!v43)
  {
    v43 = *(awd::metrics::LocationAccessory::default_instance_ + 88);
  }

  awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(v42, v43);
  v21 = *(a2 + 87);
  if ((v21 & 0x8000) != 0)
  {
LABEL_76:
    *(this + 87) |= 0x8000u;
    v44 = *(this + 12);
    if (!v44)
    {
      operator new();
    }

    v45 = *(a2 + 12);
    if (!v45)
    {
      v45 = *(awd::metrics::LocationAccessory::default_instance_ + 96);
    }

    awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(v44, v45);
    v21 = *(a2 + 87);
  }

LABEL_81:
  if ((v21 & 0xFF0000) == 0)
  {
    goto LABEL_91;
  }

  if ((v21 & 0x10000) != 0)
  {
    *(this + 87) |= 0x10000u;
    v53 = *(this + 13);
    if (!v53)
    {
      operator new();
    }

    v54 = *(a2 + 13);
    if (!v54)
    {
      v54 = *(awd::metrics::LocationAccessory::default_instance_ + 104);
    }

    awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(v53, v54);
    v21 = *(a2 + 87);
    if ((v21 & 0x20000) == 0)
    {
LABEL_84:
      if ((v21 & 0x40000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_127;
    }
  }

  else if ((v21 & 0x20000) == 0)
  {
    goto LABEL_84;
  }

  *(this + 87) |= 0x20000u;
  v55 = *(this + 14);
  if (!v55)
  {
    operator new();
  }

  v56 = *(a2 + 14);
  if (!v56)
  {
    v56 = *(awd::metrics::LocationAccessory::default_instance_ + 112);
  }

  awd::metrics::LocationAccessory_SpeedPerformanceStats::MergeFrom(v55, v56);
  v21 = *(a2 + 87);
  if ((v21 & 0x40000) == 0)
  {
LABEL_85:
    if ((v21 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_132;
  }

LABEL_127:
  *(this + 87) |= 0x40000u;
  v57 = *(this + 16);
  if (!v57)
  {
    operator new();
  }

  v58 = *(a2 + 16);
  if (!v58)
  {
    v58 = *(awd::metrics::LocationAccessory::default_instance_ + 128);
  }

  awd::metrics::LocationAccessory_MessageStats::MergeFrom(v57, v58);
  v21 = *(a2 + 87);
  if ((v21 & 0x80000) == 0)
  {
LABEL_86:
    if ((v21 & 0x100000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_137;
  }

LABEL_132:
  *(this + 87) |= 0x80000u;
  v59 = *(this + 17);
  if (!v59)
  {
    operator new();
  }

  v60 = *(a2 + 17);
  if (!v60)
  {
    v60 = *(awd::metrics::LocationAccessory::default_instance_ + 136);
  }

  awd::metrics::LocationAccessory_MessageStats::MergeFrom(v59, v60);
  v21 = *(a2 + 87);
  if ((v21 & 0x100000) == 0)
  {
LABEL_87:
    if ((v21 & 0x200000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_142;
  }

LABEL_137:
  *(this + 87) |= 0x100000u;
  v61 = *(this + 18);
  if (!v61)
  {
    operator new();
  }

  v62 = *(a2 + 18);
  if (!v62)
  {
    v62 = *(awd::metrics::LocationAccessory::default_instance_ + 144);
  }

  awd::metrics::LocationAccessory_MessageStats::MergeFrom(v61, v62);
  v21 = *(a2 + 87);
  if ((v21 & 0x200000) == 0)
  {
LABEL_88:
    if ((v21 & 0x400000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_147;
  }

LABEL_142:
  *(this + 87) |= 0x200000u;
  v63 = *(this + 19);
  if (!v63)
  {
    operator new();
  }

  v64 = *(a2 + 19);
  if (!v64)
  {
    v64 = *(awd::metrics::LocationAccessory::default_instance_ + 152);
  }

  awd::metrics::LocationAccessory_PASCDStats::MergeFrom(v63, v64);
  v21 = *(a2 + 87);
  if ((v21 & 0x400000) == 0)
  {
LABEL_89:
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_147:
  *(this + 87) |= 0x400000u;
  v65 = *(this + 20);
  if (!v65)
  {
    operator new();
  }

  v66 = *(a2 + 20);
  if (!v66)
  {
    v66 = *(awd::metrics::LocationAccessory::default_instance_ + 160);
  }

  awd::metrics::LocationAccessory_Coordinate::MergeFrom(v65, v66);
  v21 = *(a2 + 87);
  if ((v21 & 0x800000) != 0)
  {
LABEL_90:
    v46 = *(a2 + 31);
    *(this + 87) |= 0x800000u;
    *(this + 31) = v46;
    v21 = *(a2 + 87);
  }

LABEL_91:
  if (!HIBYTE(v21))
  {
    goto LABEL_98;
  }

  if ((v21 & 0x1000000) != 0)
  {
    v76 = *(a2 + 42);
    *(this + 87) |= 0x1000000u;
    *(this + 42) = v76;
    v21 = *(a2 + 87);
    if ((v21 & 0x4000000) == 0)
    {
LABEL_94:
      if ((v21 & 0x8000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_174;
    }
  }

  else if ((v21 & 0x4000000) == 0)
  {
    goto LABEL_94;
  }

  v77 = *(a2 + 43);
  *(this + 87) |= 0x4000000u;
  *(this + 43) = v77;
  v21 = *(a2 + 87);
  if ((v21 & 0x8000000) == 0)
  {
LABEL_95:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_175;
  }

LABEL_174:
  v78 = *(a2 + 50);
  *(this + 87) |= 0x8000000u;
  *(this + 50) = v78;
  v21 = *(a2 + 87);
  if ((v21 & 0x10000000) == 0)
  {
LABEL_96:
    if ((v21 & 0x40000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_176:
    v80 = *(a2 + 58);
    *(this + 87) |= 0x40000000u;
    *(this + 58) = v80;
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_177;
  }

LABEL_175:
  v79 = *(a2 + 51);
  *(this + 87) |= 0x10000000u;
  *(this + 51) = v79;
  v21 = *(a2 + 87);
  if ((v21 & 0x40000000) != 0)
  {
    goto LABEL_176;
  }

LABEL_97:
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_98;
  }

LABEL_177:
  v81 = *(a2 + 59);
  *(this + 87) |= 0x80000000;
  *(this + 59) = v81;
LABEL_98:
  v47 = *(a2 + 88);
  if (!v47)
  {
    goto LABEL_107;
  }

  if (v47)
  {
    v67 = *(a2 + 66);
    *(this + 88) |= 1u;
    *(this + 66) = v67;
    v47 = *(a2 + 88);
    if ((v47 & 4) == 0)
    {
LABEL_101:
      if ((v47 & 8) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_155;
    }
  }

  else if ((v47 & 4) == 0)
  {
    goto LABEL_101;
  }

  v68 = *(a2 + 67);
  *(this + 88) |= 4u;
  *(this + 67) = v68;
  v47 = *(a2 + 88);
  if ((v47 & 8) == 0)
  {
LABEL_102:
    if ((v47 & 0x10) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_160;
  }

LABEL_155:
  *(this + 88) |= 8u;
  v69 = *(this + 34);
  if (!v69)
  {
    operator new();
  }

  v70 = *(a2 + 34);
  if (!v70)
  {
    v70 = *(awd::metrics::LocationAccessory::default_instance_ + 272);
  }

  awd::metrics::LocationAccessory_DeviceChargingStats::MergeFrom(v69, v70);
  v47 = *(a2 + 88);
  if ((v47 & 0x10) == 0)
  {
LABEL_103:
    if ((v47 & 0x20) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_165;
  }

LABEL_160:
  *(this + 88) |= 0x10u;
  v71 = *(this + 35);
  if (!v71)
  {
    operator new();
  }

  v72 = *(a2 + 35);
  if (!v72)
  {
    v72 = *(awd::metrics::LocationAccessory::default_instance_ + 280);
  }

  awd::metrics::LocationAccessory_Statistics::MergeFrom(v71, v72);
  v47 = *(a2 + 88);
  if ((v47 & 0x20) == 0)
  {
LABEL_104:
    if ((v47 & 0x40) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_170;
  }

LABEL_165:
  *(this + 88) |= 0x20u;
  v73 = *(this + 36);
  if (!v73)
  {
    operator new();
  }

  v74 = *(a2 + 36);
  if (!v74)
  {
    v74 = *(awd::metrics::LocationAccessory::default_instance_ + 288);
  }

  awd::metrics::LocationAccessory_Statistics::MergeFrom(v73, v74);
  v47 = *(a2 + 88);
  if ((v47 & 0x40) == 0)
  {
LABEL_105:
    if ((v47 & 0x80) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_170:
  v75 = *(a2 + 74);
  *(this + 88) |= 0x40u;
  *(this + 74) = v75;
  v47 = *(a2 + 88);
  if ((v47 & 0x80) != 0)
  {
LABEL_106:
    v48 = *(a2 + 75);
    *(this + 88) |= 0x80u;
    *(this + 75) = v48;
    v47 = *(a2 + 88);
  }

LABEL_107:
  if ((v47 & 0x1FE00) != 0)
  {
    if ((v47 & 0x200) != 0)
    {
      v49 = *(a2 + 41);
      *(this + 88) |= 0x200u;
      v50 = *(this + 41);
      if (v50 == v7)
      {
        operator new();
      }

      std::string::operator=(v50, v49);
      v47 = *(a2 + 88);
    }

    if ((v47 & 0x400) != 0)
    {
      v51 = *(a2 + 42);
      *(this + 88) |= 0x400u;
      v52 = *(this + 42);
      if (v52 == v7)
      {
        operator new();
      }

      std::string::operator=(v52, v51);
    }
  }
}

void sub_29646CA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory::~LocationAccessory(awd::metrics::LocationAccessory *this)
{
  *this = &unk_2A1D513C0;
  awd::metrics::LocationAccessory::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_MessageHistogram>::TypeHandler>(this + 38);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(this + 30);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(this + 26);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LocationAppRunningTime>::TypeHandler>(this + 22);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory::~LocationAccessory(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationAccessory::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C25A730](v5, 0x1012C40EC159624);
  }

  v7 = v1[4];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C25A730](v7, 0x1012C40EC159624);
  }

  v9 = v1[5];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C25A730](v9, 0x1012C40EC159624);
  }

  v11 = v1[6];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x29C25A730](v11, 0x1012C40EC159624);
  }

  v12 = v1[41];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x29C25A730](v12, 0x1012C40EC159624);
  }

  v13 = v1[42];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x29C25A730](v13, 0x1012C40EC159624);
  }

  if (awd::metrics::LocationAccessory::default_instance_ != v1)
  {
    v14 = v1[10];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[11];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[12];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[13];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[14];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[16];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[17];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[18];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[19];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[20];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[34];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[35];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    this = v1[36];
    if (this)
    {
      v26 = *(*this + 8);

      return v26();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory::default_instance(awd::metrics::LocationAccessory *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory::default_instance_;
  if (!awd::metrics::LocationAccessory::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory::Clear(awd::metrics::LocationAccessory *this)
{
  v2 = this + 348;
  v3 = *(this + 87);
  if (v3)
  {
    *(this + 1) = 0;
    v4 = MEMORY[0x29EDC9758];
    if ((v3 & 2) != 0)
    {
      v5 = *(this + 2);
      if (v5 != MEMORY[0x29EDC9758])
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*v2 & 4) != 0)
    {
      v6 = *(this + 3);
      if (v6 != v4)
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

    if ((*v2 & 8) != 0)
    {
      v7 = *(this + 4);
      if (v7 != v4)
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*v2 & 0x10) != 0)
    {
      v8 = *(this + 5);
      if (v8 != v4)
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    if ((*v2 & 0x20) != 0)
    {
      v9 = *(this + 6);
      if (v9 != v4)
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    *(this + 14) = 0;
    *(this + 60) = 0;
    v3 = *(this + 87);
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 30) = 0;
    *(this + 8) = 0;
    *(this + 9) = 0;
    if ((v3 & 0x2000) != 0)
    {
      v10 = *(this + 10);
      if (v10)
      {
        awd::metrics::LocationAccessory_PerformanceStats::Clear(v10);
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v11 = *(this + 11);
      if (v11)
      {
        awd::metrics::LocationAccessory_PerformanceStats::Clear(v11);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      v12 = *(this + 12);
      if (v12)
      {
        awd::metrics::LocationAccessory_PerformanceStats::Clear(v12);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v13 = *(this + 13);
      if (v13)
      {
        awd::metrics::LocationAccessory_PerformanceStats::Clear(v13);
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      v14 = *(this + 14);
      if (v14)
      {
        awd::metrics::LocationAccessory_SpeedPerformanceStats::Clear(v14);
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      v15 = *(this + 16);
      if (v15)
      {
        awd::metrics::LocationAccessory_MessageStats::Clear(v15);
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      v16 = *(this + 17);
      if (v16)
      {
        awd::metrics::LocationAccessory_MessageStats::Clear(v16);
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      v17 = *(this + 18);
      if (v17)
      {
        awd::metrics::LocationAccessory_MessageStats::Clear(v17);
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      v18 = *(this + 19);
      if (v18)
      {
        awd::metrics::LocationAccessory_PASCDStats::Clear(v18);
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      v19 = *(this + 20);
      if (v19)
      {
        if (*(v19 + 28))
        {
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
        }

        *(v19 + 28) = 0;
        v3 = *v2;
      }
    }

    *(this + 31) = 0;
  }

  if (HIBYTE(v3))
  {
    *(this + 21) = 0;
    *(this + 25) = 0;
    *(this + 29) = 0;
  }

  v20 = *(this + 88);
  if (v20)
  {
    *(this + 33) = 0;
    if ((v20 & 8) != 0)
    {
      v21 = *(this + 34);
      if (v21)
      {
        if (*(v21 + 40))
        {
          *(v21 + 32) = 0;
        }

        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(v21 + 8);
        *(v21 + 40) = 0;
        v20 = *(this + 88);
      }
    }

    if ((v20 & 0x10) != 0)
    {
      v22 = *(this + 35);
      if (v22)
      {
        if (*(v22 + 36))
        {
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          *(v22 + 24) = 0;
        }

        *(v22 + 36) = 0;
        v20 = *(this + 88);
      }
    }

    if ((v20 & 0x20) != 0)
    {
      v23 = *(this + 36);
      if (v23)
      {
        if (*(v23 + 36))
        {
          *(v23 + 8) = 0;
          *(v23 + 16) = 0;
          *(v23 + 24) = 0;
        }

        *(v23 + 36) = 0;
        v20 = *(this + 88);
      }
    }

    *(this + 37) = 0;
  }

  if ((v20 & 0x1FE00) != 0)
  {
    if ((v20 & 0x200) != 0)
    {
      v24 = *(this + 41);
      if (v24 != MEMORY[0x29EDC9758])
      {
        if (*(v24 + 23) < 0)
        {
          **v24 = 0;
          *(v24 + 8) = 0;
        }

        else
        {
          *v24 = 0;
          *(v24 + 23) = 0;
        }
      }
    }

    if ((*(this + 353) & 4) != 0)
    {
      v25 = *(this + 42);
      if (v25 != MEMORY[0x29EDC9758])
      {
        if (*(v25 + 23) < 0)
        {
          **v25 = 0;
          *(v25 + 8) = 0;
        }

        else
        {
          *v25 = 0;
          *(v25 + 23) = 0;
        }
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LocationAppRunningTime>::TypeHandler>(this + 176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NavDynamicsHistogram>::TypeHandler>(this + 208);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram>::TypeHandler>(this + 240);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_MessageHistogram>::TypeHandler>(this + 304);
  *v2 = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory::MergePartialFromCodedStream(awd::metrics::LocationAccessory *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = (this + 264);
  v5 = (this + 268);
  v6 = (this + 296);
  v7 = (this + 300);
LABEL_2:
  while (2)
  {
    v8 = *(a2 + 1);
    if (v8 >= *(a2 + 2) || (TagFallback = *v8, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v8 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v10 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        v27 = *(this + 87) | 1;
        *(this + 87) = v27;
        if (v14 < v11 && *v14 == 18)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_104;
        }

        continue;
      case 2u:
        if (v10 != 2)
        {
          goto LABEL_95;
        }

        v27 = *(this + 87);
LABEL_104:
        *(this + 87) = v27 | 2;
        if (*(this + 2) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 != 26)
        {
          continue;
        }

        *(a2 + 1) = v43 + 1;
LABEL_110:
        *(this + 87) |= 4u;
        if (*(this + 3) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 != 34)
        {
          continue;
        }

        *(a2 + 1) = v44 + 1;
LABEL_116:
        *(this + 87) |= 8u;
        if (*(this + 4) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 != 42)
        {
          continue;
        }

        *(a2 + 1) = v45 + 1;
LABEL_122:
        *(this + 87) |= 0x10u;
        if (*(this + 5) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v46 = *(a2 + 1);
        if (v46 >= *(a2 + 2) || *v46 != 50)
        {
          continue;
        }

        *(a2 + 1) = v46 + 1;
LABEL_128:
        *(this + 87) |= 0x20u;
        if (*(this + 6) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v47 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v47 >= v20 || *v47 != 56)
        {
          continue;
        }

        v31 = v47 + 1;
        *(a2 + 1) = v31;
LABEL_134:
        v217 = 0;
        if (v31 >= v20 || (v48 = *v31, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217);
          if (!result)
          {
            return result;
          }

          v48 = v217;
          v49 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v49 = v31 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 14) = v48;
        *(this + 87) |= 0x40u;
        if (v49 >= v20 || *v49 != 64)
        {
          continue;
        }

        v26 = v49 + 1;
        *(a2 + 1) = v26;
LABEL_142:
        v217 = 0;
        if (v26 >= v20 || (v50 = *v26, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217);
          if (!result)
          {
            return result;
          }

          v50 = v217;
          v51 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v51 = v26 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 60) = v50 != 0;
        *(this + 87) |= 0x80u;
        if (v51 >= v20 || *v51 != 72)
        {
          continue;
        }

        v33 = v51 + 1;
        *(a2 + 1) = v33;
LABEL_150:
        if (v33 >= v20 || (v52 = *v33, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v52;
          v53 = v33 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 87) |= 0x100u;
        if (v53 >= v20 || *v53 != 80)
        {
          continue;
        }

        v23 = v53 + 1;
        *(a2 + 1) = v23;
LABEL_158:
        if (v23 >= v20 || (v54 = *v23, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v54;
          v55 = v23 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 87) |= 0x200u;
        if (v55 >= v20 || *v55 != 88)
        {
          continue;
        }

        v32 = v55 + 1;
        *(a2 + 1) = v32;
LABEL_166:
        if (v32 >= v20 || (v56 = *v32, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v56;
          v57 = v32 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 87) |= 0x400u;
        if (v57 >= v20 || *v57 != 96)
        {
          continue;
        }

        v21 = v57 + 1;
        *(a2 + 1) = v21;
LABEL_174:
        if (v21 >= v20 || (v58 = *v21, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v58;
          v59 = v21 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 87) |= 0x800u;
        if (v59 >= v20 || *v59 != 104)
        {
          continue;
        }

        v22 = v59 + 1;
        *(a2 + 1) = v22;
LABEL_182:
        if (v22 >= v20 || (v60 = *v22, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v60;
          v61 = v22 + 1;
          *(a2 + 1) = v61;
        }

        v30 = *(this + 87) | 0x1000;
        *(this + 87) = v30;
        if (v61 >= v20 || *v61 != 114)
        {
          continue;
        }

        *(a2 + 1) = v61 + 1;
LABEL_190:
        *(this + 87) = v30 | 0x2000;
        v62 = *(this + 10);
        if (!v62)
        {
          operator new();
        }

        v217 = 0;
        v63 = *(a2 + 1);
        if (v63 >= *(a2 + 2) || *v63 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v63;
          *(a2 + 1) = v63 + 1;
        }

        v64 = *(a2 + 14);
        v65 = *(a2 + 15);
        *(a2 + 14) = v64 + 1;
        if (v64 >= v65)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PerformanceStats::MergePartialFromCodedStream(v62, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v66 = *(a2 + 14);
        v67 = __OFSUB__(v66, 1);
        v68 = v66 - 1;
        if (v68 < 0 == v67)
        {
          *(a2 + 14) = v68;
        }

        v69 = *(a2 + 1);
        if (v69 >= *(a2 + 2) || *v69 != 122)
        {
          continue;
        }

        *(a2 + 1) = v69 + 1;
LABEL_204:
        *(this + 87) |= 0x4000u;
        v70 = *(this + 11);
        if (!v70)
        {
          operator new();
        }

        v217 = 0;
        v71 = *(a2 + 1);
        if (v71 >= *(a2 + 2) || *v71 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v71;
          *(a2 + 1) = v71 + 1;
        }

        v72 = *(a2 + 14);
        v73 = *(a2 + 15);
        *(a2 + 14) = v72 + 1;
        if (v72 >= v73)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PerformanceStats::MergePartialFromCodedStream(v70, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v74 = *(a2 + 14);
        v67 = __OFSUB__(v74, 1);
        v75 = v74 - 1;
        if (v75 < 0 == v67)
        {
          *(a2 + 14) = v75;
        }

        v76 = *(a2 + 1);
        if (*(a2 + 4) - v76 <= 1 || *v76 != 130 || v76[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v76 + 2;
LABEL_219:
        *(this + 87) |= 0x8000u;
        v77 = *(this + 12);
        if (!v77)
        {
          operator new();
        }

        v217 = 0;
        v78 = *(a2 + 1);
        if (v78 >= *(a2 + 2) || *v78 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v78;
          *(a2 + 1) = v78 + 1;
        }

        v79 = *(a2 + 14);
        v80 = *(a2 + 15);
        *(a2 + 14) = v79 + 1;
        if (v79 >= v80)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PerformanceStats::MergePartialFromCodedStream(v77, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v81 = *(a2 + 14);
        v67 = __OFSUB__(v81, 1);
        v82 = v81 - 1;
        if (v82 < 0 == v67)
        {
          *(a2 + 14) = v82;
        }

        v83 = *(a2 + 1);
        if (*(a2 + 4) - v83 <= 1 || *v83 != 138 || v83[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v83 + 2;
LABEL_234:
        *(this + 87) |= 0x10000u;
        v84 = *(this + 13);
        if (!v84)
        {
          operator new();
        }

        v217 = 0;
        v85 = *(a2 + 1);
        if (v85 >= *(a2 + 2) || *v85 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v85;
          *(a2 + 1) = v85 + 1;
        }

        v86 = *(a2 + 14);
        v87 = *(a2 + 15);
        *(a2 + 14) = v86 + 1;
        if (v86 >= v87)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PerformanceStats::MergePartialFromCodedStream(v84, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v88 = *(a2 + 14);
        v67 = __OFSUB__(v88, 1);
        v89 = v88 - 1;
        if (v89 < 0 == v67)
        {
          *(a2 + 14) = v89;
        }

        v90 = *(a2 + 1);
        if (*(a2 + 4) - v90 <= 1 || *v90 != 146 || v90[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v90 + 2;
LABEL_249:
        *(this + 87) |= 0x20000u;
        v91 = *(this + 14);
        if (!v91)
        {
          operator new();
        }

        v217 = 0;
        v92 = *(a2 + 1);
        if (v92 >= *(a2 + 2) || *v92 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v92;
          *(a2 + 1) = v92 + 1;
        }

        v93 = *(a2 + 14);
        v94 = *(a2 + 15);
        *(a2 + 14) = v93 + 1;
        if (v93 >= v94)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_SpeedPerformanceStats::MergePartialFromCodedStream(v91, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v95 = *(a2 + 14);
        v67 = __OFSUB__(v95, 1);
        v96 = v95 - 1;
        if (v96 < 0 == v67)
        {
          *(a2 + 14) = v96;
        }

        v97 = *(a2 + 1);
        if (*(a2 + 4) - v97 <= 1 || *v97 != 154 || v97[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v97 + 2;
LABEL_264:
        *(this + 87) |= 0x40000u;
        v98 = *(this + 16);
        if (!v98)
        {
          operator new();
        }

        v217 = 0;
        v99 = *(a2 + 1);
        if (v99 >= *(a2 + 2) || *v99 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v99;
          *(a2 + 1) = v99 + 1;
        }

        v100 = *(a2 + 14);
        v101 = *(a2 + 15);
        *(a2 + 14) = v100 + 1;
        if (v100 >= v101)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_MessageStats::MergePartialFromCodedStream(v98, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v102 = *(a2 + 14);
        v67 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v67)
        {
          *(a2 + 14) = v103;
        }

        v104 = *(a2 + 1);
        if (*(a2 + 4) - v104 <= 1 || *v104 != 162 || v104[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v104 + 2;
LABEL_279:
        *(this + 87) |= 0x80000u;
        v105 = *(this + 17);
        if (!v105)
        {
          operator new();
        }

        v217 = 0;
        v106 = *(a2 + 1);
        if (v106 >= *(a2 + 2) || *v106 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v106;
          *(a2 + 1) = v106 + 1;
        }

        v107 = *(a2 + 14);
        v108 = *(a2 + 15);
        *(a2 + 14) = v107 + 1;
        if (v107 >= v108)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_MessageStats::MergePartialFromCodedStream(v105, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v109 = *(a2 + 14);
        v67 = __OFSUB__(v109, 1);
        v110 = v109 - 1;
        if (v110 < 0 == v67)
        {
          *(a2 + 14) = v110;
        }

        v111 = *(a2 + 1);
        if (*(a2 + 4) - v111 <= 1 || *v111 != 170 || v111[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v111 + 2;
LABEL_294:
        *(this + 87) |= 0x100000u;
        v112 = *(this + 18);
        if (!v112)
        {
          operator new();
        }

        v217 = 0;
        v113 = *(a2 + 1);
        if (v113 >= *(a2 + 2) || *v113 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v113;
          *(a2 + 1) = v113 + 1;
        }

        v114 = *(a2 + 14);
        v115 = *(a2 + 15);
        *(a2 + 14) = v114 + 1;
        if (v114 >= v115)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_MessageStats::MergePartialFromCodedStream(v112, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v116 = *(a2 + 14);
        v67 = __OFSUB__(v116, 1);
        v117 = v116 - 1;
        if (v117 < 0 == v67)
        {
          *(a2 + 14) = v117;
        }

        v118 = *(a2 + 1);
        if (*(a2 + 4) - v118 <= 1 || *v118 != 178 || v118[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v118 + 2;
LABEL_309:
        *(this + 87) |= 0x200000u;
        v119 = *(this + 19);
        if (!v119)
        {
          operator new();
        }

        v217 = 0;
        v120 = *(a2 + 1);
        if (v120 >= *(a2 + 2) || *v120 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v120;
          *(a2 + 1) = v120 + 1;
        }

        v121 = *(a2 + 14);
        v122 = *(a2 + 15);
        *(a2 + 14) = v121 + 1;
        if (v121 >= v122)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_PASCDStats::MergePartialFromCodedStream(v119, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v123 = *(a2 + 14);
        v67 = __OFSUB__(v123, 1);
        v124 = v123 - 1;
        if (v124 < 0 == v67)
        {
          *(a2 + 14) = v124;
        }

        v125 = *(a2 + 1);
        if (*(a2 + 4) - v125 <= 1 || *v125 != 186 || v125[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v125 + 2;
LABEL_324:
        *(this + 87) |= 0x400000u;
        v126 = *(this + 20);
        if (!v126)
        {
          operator new();
        }

        v217 = 0;
        v127 = *(a2 + 1);
        if (v127 >= *(a2 + 2) || *v127 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v127;
          *(a2 + 1) = v127 + 1;
        }

        v128 = *(a2 + 14);
        v129 = *(a2 + 15);
        *(a2 + 14) = v128 + 1;
        if (v128 >= v129)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_Coordinate::MergePartialFromCodedStream(v126, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v130 = *(a2 + 14);
        v67 = __OFSUB__(v130, 1);
        v131 = v130 - 1;
        if (v131 < 0 == v67)
        {
          *(a2 + 14) = v131;
        }

        v132 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v24 - v132 <= 1 || *v132 != 192 || v132[1] != 1)
        {
          continue;
        }

        v38 = (v132 + 2);
        *(a2 + 1) = v38;
LABEL_339:
        if (v38 >= v24 || (v133 = *v38, v133 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
          if (!result)
          {
            return result;
          }

          v134 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v133;
          v134 = (v38 + 1);
          *(a2 + 1) = v134;
        }

        *(this + 87) |= 0x800000u;
        if (v24 - v134 < 2 || *v134 != 200 || v134[1] != 1)
        {
          continue;
        }

        v25 = (v134 + 2);
        *(a2 + 1) = v25;
LABEL_348:
        if (v25 >= v24 || (v135 = *v25, v135 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v136 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v135;
          v136 = (v25 + 1);
          *(a2 + 1) = v136;
        }

        *(this + 87) |= 0x1000000u;
        if (v24 - v136 < 2 || *v136 != 210 || v136[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v136 + 2;
LABEL_357:
          v137 = *(this + 47);
          v138 = *(this + 46);
          if (v138 >= v137)
          {
            if (v137 == *(this + 48))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
              v137 = *(this + 47);
            }

            *(this + 47) = v137 + 1;
            operator new();
          }

          v139 = *(this + 22);
          *(this + 46) = v138 + 1;
          v140 = *(v139 + 8 * v138);
          v217 = 0;
          v141 = *(a2 + 1);
          if (v141 >= *(a2 + 2) || *v141 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
            {
              return 0;
            }
          }

          else
          {
            v217 = *v141;
            *(a2 + 1) = v141 + 1;
          }

          v142 = *(a2 + 14);
          v143 = *(a2 + 15);
          *(a2 + 14) = v142 + 1;
          if (v142 >= v143)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationAccessory_LocationAppRunningTime::MergePartialFromCodedStream(v140, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v144 = *(a2 + 14);
          v67 = __OFSUB__(v144, 1);
          v145 = v144 - 1;
          if (v145 < 0 == v67)
          {
            *(a2 + 14) = v145;
          }

          v136 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v16 - v136 <= 1)
          {
            goto LABEL_2;
          }

          v146 = *v136;
          if (v146 == 216)
          {
            break;
          }

          if (v146 != 210 || v136[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v136[1] != 1)
        {
          continue;
        }

        v41 = (v136 + 2);
        *(a2 + 1) = v41;
LABEL_378:
        if (v41 >= v16 || (v147 = *v41, v147 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
          if (!result)
          {
            return result;
          }

          v148 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 43) = v147;
          v148 = (v41 + 1);
          *(a2 + 1) = v148;
        }

        *(this + 87) |= 0x4000000u;
        if (v16 - v148 < 2 || *v148 != 224 || v148[1] != 1)
        {
          continue;
        }

        v17 = (v148 + 2);
        *(a2 + 1) = v17;
LABEL_387:
        if (v17 >= v16 || (v149 = *v17, v149 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
          if (!result)
          {
            return result;
          }

          v150 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 50) = v149;
          v150 = (v17 + 1);
          *(a2 + 1) = v150;
        }

        *(this + 87) |= 0x8000000u;
        if (v16 - v150 < 2 || *v150 != 232 || v150[1] != 1)
        {
          continue;
        }

        v39 = (v150 + 2);
        *(a2 + 1) = v39;
LABEL_396:
        if (v39 >= v16 || (v151 = *v39, v151 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
          if (!result)
          {
            return result;
          }

          v152 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 51) = v151;
          v152 = (v39 + 1);
          *(a2 + 1) = v152;
        }

        *(this + 87) |= 0x10000000u;
        if (v16 - v152 < 2 || *v152 != 242 || v152[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v152 + 2;
LABEL_405:
          v153 = *(this + 55);
          v154 = *(this + 54);
          if (v154 >= v153)
          {
            if (v153 == *(this + 56))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 208));
              v153 = *(this + 55);
            }

            *(this + 55) = v153 + 1;
            operator new();
          }

          v155 = *(this + 26);
          *(this + 54) = v154 + 1;
          v156 = *(v155 + 8 * v154);
          v217 = 0;
          v157 = *(a2 + 1);
          if (v157 >= *(a2 + 2) || *v157 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
            {
              return 0;
            }
          }

          else
          {
            v217 = *v157;
            *(a2 + 1) = v157 + 1;
          }

          v158 = *(a2 + 14);
          v159 = *(a2 + 15);
          *(a2 + 14) = v158 + 1;
          if (v158 >= v159)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationAccessory_NavDynamicsHistogram::MergePartialFromCodedStream(v156, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v160 = *(a2 + 14);
          v67 = __OFSUB__(v160, 1);
          v161 = v160 - 1;
          if (v161 < 0 == v67)
          {
            *(a2 + 14) = v161;
          }

          v152 = *(a2 + 1);
          v28 = *(a2 + 2);
          if (v28 - v152 <= 1)
          {
            goto LABEL_2;
          }

          v162 = *v152;
          if (v162 == 248)
          {
            break;
          }

          if (v162 != 242 || v152[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v152[1] != 1)
        {
          continue;
        }

        v34 = (v152 + 2);
        *(a2 + 1) = v34;
LABEL_426:
        if (v34 >= v28 || (v163 = *v34, v163 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 58);
          if (!result)
          {
            return result;
          }

          v164 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          *(this + 58) = v163;
          v164 = (v34 + 1);
          *(a2 + 1) = v164;
        }

        *(this + 87) |= 0x40000000u;
        if (v28 - v164 < 2 || *v164 != 128 || v164[1] != 2)
        {
          continue;
        }

        v29 = (v164 + 2);
        *(a2 + 1) = v29;
LABEL_435:
        if (v29 >= v28 || (v165 = *v29, v165 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 59);
          if (!result)
          {
            return result;
          }

          v166 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          *(this + 59) = v165;
          v166 = (v29 + 1);
          *(a2 + 1) = v166;
        }

        *(this + 87) |= 0x80000000;
        if (v28 - v166 < 2 || *v166 != 136 || v166[1] != 2)
        {
          continue;
        }

        v35 = (v166 + 2);
        *(a2 + 1) = v35;
LABEL_444:
        if (v35 >= v28 || (v167 = *v35, (v167 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
          if (!result)
          {
            return result;
          }

          v168 = *(a2 + 1);
          v28 = *(a2 + 2);
        }

        else
        {
          *v4 = v167;
          v168 = (v35 + 1);
          *(a2 + 1) = v168;
        }

        *(this + 88) |= 1u;
        if (v28 - v168 < 2 || *v168 != 146 || v168[1] != 2)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v168 + 2;
LABEL_453:
          v169 = *(this + 63);
          v170 = *(this + 62);
          if (v170 >= v169)
          {
            if (v169 == *(this + 64))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 240));
              v169 = *(this + 63);
            }

            *(this + 63) = v169 + 1;
            operator new();
          }

          v171 = *(this + 30);
          *(this + 62) = v170 + 1;
          v172 = *(v171 + 8 * v170);
          v217 = 0;
          v173 = *(a2 + 1);
          if (v173 >= *(a2 + 2) || *v173 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
            {
              return 0;
            }
          }

          else
          {
            v217 = *v173;
            *(a2 + 1) = v173 + 1;
          }

          v174 = *(a2 + 14);
          v175 = *(a2 + 15);
          *(a2 + 14) = v174 + 1;
          if (v174 >= v175)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::MergePartialFromCodedStream(v172, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v176 = *(a2 + 14);
          v67 = __OFSUB__(v176, 1);
          v177 = v176 - 1;
          if (v177 < 0 == v67)
          {
            *(a2 + 14) = v177;
          }

          v168 = *(a2 + 1);
          v18 = *(a2 + 2);
          if (v18 - v168 <= 1)
          {
            goto LABEL_2;
          }

          v178 = *v168;
          if (v178 == 152)
          {
            break;
          }

          if (v178 != 146 || v168[1] != 2)
          {
            goto LABEL_2;
          }
        }

        if (v168[1] != 2)
        {
          continue;
        }

        v19 = (v168 + 2);
        *(a2 + 1) = v19;
LABEL_474:
        if (v19 >= v18 || (v179 = *v19, (v179 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
          if (!result)
          {
            return result;
          }

          v180 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *v5 = v179;
          v180 = (v19 + 1);
          *(a2 + 1) = v180;
        }

        v15 = *(this + 88) | 4;
        *(this + 88) = v15;
        if (v18 - v180 < 2 || *v180 != 162 || v180[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v180 + 2;
LABEL_483:
        *(this + 88) = v15 | 8;
        v181 = *(this + 34);
        if (!v181)
        {
          operator new();
        }

        v217 = 0;
        v182 = *(a2 + 1);
        if (v182 >= *(a2 + 2) || *v182 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v182;
          *(a2 + 1) = v182 + 1;
        }

        v183 = *(a2 + 14);
        v184 = *(a2 + 15);
        *(a2 + 14) = v183 + 1;
        if (v183 >= v184)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_DeviceChargingStats::MergePartialFromCodedStream(v181, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v185 = *(a2 + 14);
        v67 = __OFSUB__(v185, 1);
        v186 = v185 - 1;
        if (v186 < 0 == v67)
        {
          *(a2 + 14) = v186;
        }

        v187 = *(a2 + 1);
        if (*(a2 + 4) - v187 <= 1 || *v187 != 170 || v187[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v187 + 2;
LABEL_498:
        *(this + 88) |= 0x10u;
        v188 = *(this + 35);
        if (!v188)
        {
          operator new();
        }

        v217 = 0;
        v189 = *(a2 + 1);
        if (v189 >= *(a2 + 2) || *v189 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v189;
          *(a2 + 1) = v189 + 1;
        }

        v190 = *(a2 + 14);
        v191 = *(a2 + 15);
        *(a2 + 14) = v190 + 1;
        if (v190 >= v191)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationAccessory_Statistics::MergePartialFromCodedStream(v188, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v192 = *(a2 + 14);
        v67 = __OFSUB__(v192, 1);
        v193 = v192 - 1;
        if (v193 < 0 == v67)
        {
          *(a2 + 14) = v193;
        }

        v194 = *(a2 + 1);
        if (*(a2 + 4) - v194 <= 1 || *v194 != 178 || v194[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v194 + 2;
LABEL_513:
        *(this + 88) |= 0x20u;
        v195 = *(this + 36);
        if (!v195)
        {
          operator new();
        }

        v217 = 0;
        v196 = *(a2 + 1);
        if (v196 >= *(a2 + 2) || *v196 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
          {
            return 0;
          }
        }

        else
        {
          v217 = *v196;
          *(a2 + 1) = v196 + 1;
        }

        v197 = *(a2 + 14);
        v198 = *(a2 + 15);
        *(a2 + 14) = v197 + 1;
        if (v197 < v198)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (awd::metrics::LocationAccessory_Statistics::MergePartialFromCodedStream(v195, a2))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v199 = *(a2 + 14);
              v67 = __OFSUB__(v199, 1);
              v200 = v199 - 1;
              if (v200 < 0 == v67)
              {
                *(a2 + 14) = v200;
              }

              v201 = *(a2 + 1);
              v36 = *(a2 + 2);
              if (v36 - v201 > 1 && *v201 == 184 && v201[1] == 2)
              {
                v40 = (v201 + 2);
                *(a2 + 1) = v40;
LABEL_528:
                if (v40 >= v36 || (v202 = *v40, (v202 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                  if (!result)
                  {
                    return result;
                  }

                  v203 = *(a2 + 1);
                  v36 = *(a2 + 2);
                }

                else
                {
                  *v6 = v202;
                  v203 = (v40 + 1);
                  *(a2 + 1) = v203;
                }

                *(this + 88) |= 0x40u;
                if (v36 - v203 >= 2 && *v203 == 192 && v203[1] == 2)
                {
                  v37 = (v203 + 2);
                  *(a2 + 1) = v37;
LABEL_537:
                  if (v37 >= v36 || (v204 = *v37, (v204 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                    if (!result)
                    {
                      return result;
                    }

                    v205 = *(a2 + 1);
                    v36 = *(a2 + 2);
                  }

                  else
                  {
                    *v7 = v204;
                    v205 = (v37 + 1);
                    *(a2 + 1) = v205;
                  }

                  *(this + 88) |= 0x80u;
                  if (v36 - v205 >= 2 && *v205 == 202 && v205[1] == 2)
                  {
                    while (1)
                    {
                      *(a2 + 1) = v205 + 2;
LABEL_546:
                      v206 = *(this + 78);
                      v207 = *(this + 79);
                      if (v206 >= v207)
                      {
                        if (v207 == *(this + 80))
                        {
                          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 304));
                          v207 = *(this + 79);
                        }

                        *(this + 79) = v207 + 1;
                        operator new();
                      }

                      v208 = *(this + 38);
                      *(this + 78) = v206 + 1;
                      v209 = *(v208 + 8 * v206);
                      v217 = 0;
                      v210 = *(a2 + 1);
                      if (v210 >= *(a2 + 2) || *v210 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v217))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v217 = *v210;
                        *(a2 + 1) = v210 + 1;
                      }

                      v211 = *(a2 + 14);
                      v212 = *(a2 + 15);
                      *(a2 + 14) = v211 + 1;
                      if (v211 >= v212)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                      if (!awd::metrics::LocationAccessory_MessageHistogram::MergePartialFromCodedStream(v209, a2) || *(a2 + 36) != 1)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                      v213 = *(a2 + 14);
                      v67 = __OFSUB__(v213, 1);
                      v214 = v213 - 1;
                      if (v214 < 0 == v67)
                      {
                        *(a2 + 14) = v214;
                      }

                      v205 = *(a2 + 1);
                      if (*(a2 + 4) - v205 <= 1)
                      {
                        goto LABEL_2;
                      }

                      v215 = *v205;
                      if (v215 == 210)
                      {
                        break;
                      }

                      if (v215 != 202 || v205[1] != 2)
                      {
                        goto LABEL_2;
                      }
                    }

                    if (v205[1] == 2)
                    {
                      *(a2 + 1) = v205 + 2;
LABEL_567:
                      *(this + 88) |= 0x200u;
                      if (*(this + 41) == MEMORY[0x29EDC9758])
                      {
                        operator new();
                      }

                      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                      if (!result)
                      {
                        return result;
                      }

                      v216 = *(a2 + 1);
                      if (*(a2 + 4) - v216 >= 2 && *v216 == 218 && v216[1] == 2)
                      {
                        *(a2 + 1) = v216 + 2;
LABEL_574:
                        *(this + 88) |= 0x400u;
                        if (*(this + 42) == MEMORY[0x29EDC9758])
                        {
                          operator new();
                        }

                        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                        if (!result)
                        {
                          return result;
                        }

                        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                        {
                          *(a2 + 8) = 0;
                          result = 1;
                          *(a2 + 36) = 1;
                          return result;
                        }
                      }
                    }
                  }
                }
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if (v10 == 2)
        {
          goto LABEL_110;
        }

        goto LABEL_95;
      case 4u:
        if (v10 == 2)
        {
          goto LABEL_116;
        }

        goto LABEL_95;
      case 5u:
        if (v10 == 2)
        {
          goto LABEL_122;
        }

        goto LABEL_95;
      case 6u:
        if (v10 == 2)
        {
          goto LABEL_128;
        }

        goto LABEL_95;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v31 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_134;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v26 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_142;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v33 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_150;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v23 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_158;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v32 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_166;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_174;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v22 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_182;
      case 0xEu:
        if (v10 != 2)
        {
          goto LABEL_95;
        }

        v30 = *(this + 87);
        goto LABEL_190;
      case 0xFu:
        if (v10 == 2)
        {
          goto LABEL_204;
        }

        goto LABEL_95;
      case 0x10u:
        if (v10 == 2)
        {
          goto LABEL_219;
        }

        goto LABEL_95;
      case 0x11u:
        if (v10 == 2)
        {
          goto LABEL_234;
        }

        goto LABEL_95;
      case 0x12u:
        if (v10 == 2)
        {
          goto LABEL_249;
        }

        goto LABEL_95;
      case 0x13u:
        if (v10 == 2)
        {
          goto LABEL_264;
        }

        goto LABEL_95;
      case 0x14u:
        if (v10 == 2)
        {
          goto LABEL_279;
        }

        goto LABEL_95;
      case 0x15u:
        if (v10 == 2)
        {
          goto LABEL_294;
        }

        goto LABEL_95;
      case 0x16u:
        if (v10 == 2)
        {
          goto LABEL_309;
        }

        goto LABEL_95;
      case 0x17u:
        if (v10 == 2)
        {
          goto LABEL_324;
        }

        goto LABEL_95;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v38 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_339;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_348;
      case 0x1Au:
        if (v10 == 2)
        {
          goto LABEL_357;
        }

        goto LABEL_95;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v41 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_378;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_387;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v39 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_396;
      case 0x1Eu:
        if (v10 == 2)
        {
          goto LABEL_405;
        }

        goto LABEL_95;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v34 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_426;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_435;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v35 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_444;
      case 0x22u:
        if (v10 == 2)
        {
          goto LABEL_453;
        }

        goto LABEL_95;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_474;
      case 0x24u:
        if (v10 != 2)
        {
          goto LABEL_95;
        }

        v15 = *(this + 88);
        goto LABEL_483;
      case 0x25u:
        if (v10 == 2)
        {
          goto LABEL_498;
        }

        goto LABEL_95;
      case 0x26u:
        if (v10 == 2)
        {
          goto LABEL_513;
        }

        goto LABEL_95;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v40 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_528;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_95;
        }

        v37 = *(a2 + 1);
        v36 = *(a2 + 2);
        goto LABEL_537;
      case 0x29u:
        if (v10 == 2)
        {
          goto LABEL_546;
        }

        goto LABEL_95;
      case 0x2Au:
        if (v10 == 2)
        {
          goto LABEL_567;
        }

        goto LABEL_95;
      case 0x2Bu:
        if (v10 == 2)
        {
          goto LABEL_574;
        }

        goto LABEL_95;
      default:
LABEL_95:
        if (v10 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t awd::metrics::LocationAccessory::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 348);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 348);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_62;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v16 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

LABEL_62:
  v17 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_64;
  }

LABEL_63:
  v18 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_65;
  }

LABEL_64:
  v19 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_66;
  }

LABEL_65:
  v20 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 348);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 60), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 64), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 68), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 72), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 76), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 120), a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_73:
  v21 = *(v5 + 80);
  if (!v21)
  {
    v21 = *(awd::metrics::LocationAccessory::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v21, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_76:
  v22 = *(v5 + 88);
  if (!v22)
  {
    v22 = *(awd::metrics::LocationAccessory::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v22, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_79:
  v23 = *(v5 + 96);
  if (!v23)
  {
    v23 = *(awd::metrics::LocationAccessory::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v23, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_82:
  v24 = *(v5 + 104);
  if (!v24)
  {
    v24 = *(awd::metrics::LocationAccessory::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v24, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

LABEL_85:
  v25 = *(v5 + 112);
  if (!v25)
  {
    v25 = *(awd::metrics::LocationAccessory::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v25, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_91;
  }

LABEL_88:
  v26 = *(v5 + 128);
  if (!v26)
  {
    v26 = *(awd::metrics::LocationAccessory::default_instance_ + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v26, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_94;
  }

LABEL_91:
  v27 = *(v5 + 136);
  if (!v27)
  {
    v27 = *(awd::metrics::LocationAccessory::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v27, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_94:
  v28 = *(v5 + 144);
  if (!v28)
  {
    v28 = *(awd::metrics::LocationAccessory::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v28, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_97:
  v29 = *(v5 + 152);
  if (!v29)
  {
    v29 = *(awd::metrics::LocationAccessory::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v29, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_100:
  v30 = *(v5 + 160);
  if (!v30)
  {
    v30 = *(awd::metrics::LocationAccessory::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v30, a2, a4);
  v6 = *(v5 + 348);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 124), a2, a4);
  if ((*(v5 + 348) & 0x1000000) != 0)
  {
LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 168), a2, a4);
  }

LABEL_27:
  if (*(v5 + 184) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, *(*(v5 + 176) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 184));
  }

  v8 = *(v5 + 348);
  if ((v8 & 0x4000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 172), a2, a4);
    v8 = *(v5 + 348);
    if ((v8 & 0x8000000) == 0)
    {
LABEL_32:
      if ((v8 & 0x10000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((v8 & 0x8000000) == 0)
  {
    goto LABEL_32;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 200), a2, a4);
  if ((*(v5 + 348) & 0x10000000) != 0)
  {
LABEL_33:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 204), a2, a4);
  }

LABEL_34:
  if (*(v5 + 216) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, *(*(v5 + 208) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 216));
  }

  v10 = *(v5 + 348);
  if ((v10 & 0x40000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 232), a2, a4);
    v10 = *(v5 + 348);
  }

  if (v10 < 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 236), a2, a4);
  }

  if (*(v5 + 352))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 264), a2, a4);
  }

  if (*(v5 + 248) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x22, *(*(v5 + 240) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 248));
  }

  v12 = *(v5 + 352);
  if ((v12 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 268), a2, a4);
    v12 = *(v5 + 352);
    if ((v12 & 8) == 0)
    {
LABEL_48:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_112;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_48;
  }

  v31 = *(v5 + 272);
  if (!v31)
  {
    v31 = *(awd::metrics::LocationAccessory::default_instance_ + 272);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x24, v31, a2, a4);
  v12 = *(v5 + 352);
  if ((v12 & 0x10) == 0)
  {
LABEL_49:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_115;
  }

LABEL_112:
  v32 = *(v5 + 280);
  if (!v32)
  {
    v32 = *(awd::metrics::LocationAccessory::default_instance_ + 280);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x25, v32, a2, a4);
  v12 = *(v5 + 352);
  if ((v12 & 0x20) == 0)
  {
LABEL_50:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_118;
  }

LABEL_115:
  v33 = *(v5 + 288);
  if (!v33)
  {
    v33 = *(awd::metrics::LocationAccessory::default_instance_ + 288);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x26, v33, a2, a4);
  v12 = *(v5 + 352);
  if ((v12 & 0x40) == 0)
  {
LABEL_51:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_118:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 296), a2, a4);
  if ((*(v5 + 352) & 0x80) != 0)
  {
LABEL_52:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 300), a2, a4);
  }

LABEL_53:
  if (*(v5 + 312) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x29, *(*(v5 + 304) + 8 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 312));
  }

  v14 = *(v5 + 352);
  if ((v14 & 0x200) != 0)
  {
    v15 = *(v5 + 328);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v14 = *(v5 + 352);
  }

  if ((v14 & 0x400) != 0)
  {
    v34 = *(v5 + 336);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory::ByteSize(awd::metrics::LocationAccessory *this)
{
  v2 = *(this + 87);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_65;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 87);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v2 = *(this + 87);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 += v10 + v6 + 1;
LABEL_16:
  if ((v2 & 4) != 0)
  {
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
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v2 = *(this + 87);
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

    v3 += v16 + v12 + 1;
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_40;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v17 = *(this + 4);
  v18 = *(v17 + 23);
  v19 = v18;
  v20 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    v18 = *(v17 + 23);
    v20 = *(v17 + 8);
    v2 = *(this + 87);
    v19 = *(v17 + 23);
  }

  else
  {
    v22 = 1;
  }

  if (v19 < 0)
  {
    v18 = v20;
  }

  v3 += v22 + v18 + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_49:
    v29 = *(this + 6);
    v30 = *(v29 + 23);
    v31 = v30;
    v32 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v33 = *(v29 + 23);
    }

    else
    {
      v33 = v32;
    }

    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      v30 = *(v29 + 23);
      v32 = *(v29 + 8);
      v2 = *(this + 87);
      v31 = *(v29 + 23);
    }

    else
    {
      v34 = 1;
    }

    if (v31 < 0)
    {
      v30 = v32;
    }

    v3 += v34 + v30 + 1;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }

LABEL_40:
  v23 = *(this + 5);
  v24 = *(v23 + 23);
  v25 = v24;
  v26 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v27 = *(v23 + 23);
  }

  else
  {
    v27 = v26;
  }

  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    v24 = *(v23 + 23);
    v26 = *(v23 + 8);
    v2 = *(this + 87);
    v25 = *(v23 + 23);
  }

  else
  {
    v28 = 1;
  }

  if (v25 < 0)
  {
    v24 = v26;
  }

  v3 += v28 + v24 + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_20:
  if ((v2 & 0x40) != 0)
  {
LABEL_58:
    v35 = *(this + 14);
    if ((v35 & 0x80000000) != 0)
    {
      v36 = 11;
    }

    else if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 1;
      v2 = *(this + 87);
    }

    else
    {
      v36 = 2;
    }

    v3 += v36;
  }

LABEL_64:
  v4 = ((v2 >> 6) & 2) + v3;
LABEL_65:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_113;
  }

  if ((v2 & 0x100) != 0)
  {
    v37 = *(this + 16);
    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 1;
      v2 = *(this + 87);
    }

    else
    {
      v38 = 2;
    }

    v4 += v38;
    if ((v2 & 0x200) == 0)
    {
LABEL_68:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_83;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_68;
  }

  v39 = *(this + 17);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 1;
    v2 = *(this + 87);
  }

  else
  {
    v40 = 2;
  }

  v4 += v40;
  if ((v2 & 0x400) == 0)
  {
LABEL_69:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_87;
  }

LABEL_83:
  v41 = *(this + 18);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 1;
    v2 = *(this + 87);
  }

  else
  {
    v42 = 2;
  }

  v4 += v42;
  if ((v2 & 0x800) == 0)
  {
LABEL_70:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_91;
  }

LABEL_87:
  v43 = *(this + 19);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 1;
    v2 = *(this + 87);
  }

  else
  {
    v44 = 2;
  }

  v4 += v44;
  if ((v2 & 0x1000) == 0)
  {
LABEL_71:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_95;
  }

LABEL_91:
  v45 = *(this + 30);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 1;
    v2 = *(this + 87);
  }

  else
  {
    v46 = 2;
  }

  v4 += v46;
  if ((v2 & 0x2000) == 0)
  {
LABEL_72:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_101;
  }

LABEL_95:
  v47 = *(this + 10);
  if (!v47)
  {
    v47 = *(awd::metrics::LocationAccessory::default_instance_ + 80);
  }

  v48 = awd::metrics::LocationAccessory_PerformanceStats::ByteSize(v47);
  v49 = v48;
  if (v48 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
  }

  else
  {
    v50 = 1;
  }

  v4 += v49 + v50 + 1;
  v2 = *(this + 87);
  if ((v2 & 0x4000) == 0)
  {
LABEL_73:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

LABEL_101:
  v51 = *(this + 11);
  if (!v51)
  {
    v51 = *(awd::metrics::LocationAccessory::default_instance_ + 88);
  }

  v52 = awd::metrics::LocationAccessory_PerformanceStats::ByteSize(v51);
  v53 = v52;
  if (v52 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
  }

  else
  {
    v54 = 1;
  }

  v4 += v53 + v54 + 1;
  v2 = *(this + 87);
  if ((v2 & 0x8000) != 0)
  {
LABEL_107:
    v55 = *(this + 12);
    if (!v55)
    {
      v55 = *(awd::metrics::LocationAccessory::default_instance_ + 96);
    }

    v56 = awd::metrics::LocationAccessory_PerformanceStats::ByteSize(v55);
    v57 = v56;
    if (v56 >= 0x80)
    {
      v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
    }

    else
    {
      v58 = 1;
    }

    v4 += v57 + v58 + 2;
    v2 = *(this + 87);
  }

LABEL_113:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_171;
  }

  if ((v2 & 0x10000) != 0)
  {
    v59 = *(this + 13);
    if (!v59)
    {
      v59 = *(awd::metrics::LocationAccessory::default_instance_ + 104);
    }

    v60 = awd::metrics::LocationAccessory_PerformanceStats::ByteSize(v59);
    v61 = v60;
    if (v60 >= 0x80)
    {
      v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
    }

    else
    {
      v62 = 1;
    }

    v4 += v61 + v62 + 2;
    v2 = *(this + 87);
    if ((v2 & 0x20000) == 0)
    {
LABEL_116:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_135;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_116;
  }

  v63 = *(this + 14);
  if (!v63)
  {
    v63 = *(awd::metrics::LocationAccessory::default_instance_ + 112);
  }

  v64 = awd::metrics::LocationAccessory_SpeedPerformanceStats::ByteSize(v63);
  v65 = v64;
  if (v64 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64);
  }

  else
  {
    v66 = 1;
  }

  v4 += v65 + v66 + 2;
  v2 = *(this + 87);
  if ((v2 & 0x40000) == 0)
  {
LABEL_117:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_141;
  }

LABEL_135:
  v67 = *(this + 16);
  if (!v67)
  {
    v67 = *(awd::metrics::LocationAccessory::default_instance_ + 128);
  }

  v68 = awd::metrics::LocationAccessory_MessageStats::ByteSize(v67);
  v69 = v68;
  if (v68 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68);
  }

  else
  {
    v70 = 1;
  }

  v4 += v69 + v70 + 2;
  v2 = *(this + 87);
  if ((v2 & 0x80000) == 0)
  {
LABEL_118:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_147;
  }

LABEL_141:
  v71 = *(this + 17);
  if (!v71)
  {
    v71 = *(awd::metrics::LocationAccessory::default_instance_ + 136);
  }

  v72 = awd::metrics::LocationAccessory_MessageStats::ByteSize(v71);
  v73 = v72;
  if (v72 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72);
  }

  else
  {
    v74 = 1;
  }

  v4 += v73 + v74 + 2;
  v2 = *(this + 87);
  if ((v2 & 0x100000) == 0)
  {
LABEL_119:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_153;
  }

LABEL_147:
  v75 = *(this + 18);
  if (!v75)
  {
    v75 = *(awd::metrics::LocationAccessory::default_instance_ + 144);
  }

  v76 = awd::metrics::LocationAccessory_MessageStats::ByteSize(v75);
  v77 = v76;
  if (v76 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76);
  }

  else
  {
    v78 = 1;
  }

  v4 += v77 + v78 + 2;
  v2 = *(this + 87);
  if ((v2 & 0x200000) == 0)
  {
LABEL_120:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_159;
  }

LABEL_153:
  v79 = *(this + 19);
  if (!v79)
  {
    v79 = *(awd::metrics::LocationAccessory::default_instance_ + 152);
  }

  v80 = awd::metrics::LocationAccessory_PASCDStats::ByteSize(v79);
  v81 = v80;
  if (v80 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80);
  }

  else
  {
    v82 = 1;
  }

  v4 += v81 + v82 + 2;
  v2 = *(this + 87);
  if ((v2 & 0x400000) == 0)
  {
LABEL_121:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_167;
  }

LABEL_159:
  v83 = *(this + 20);
  if (!v83)
  {
    v83 = *(awd::metrics::LocationAccessory::default_instance_ + 160);
  }

  v84 = *(v83 + 28);
  v85 = (v84 << 31 >> 31) & 9;
  if ((v84 & 2) != 0)
  {
    v85 += 9;
  }

  if (*(v83 + 28))
  {
    v86 = v85;
  }

  else
  {
    v86 = 0;
  }

  *(v83 + 24) = v86;
  v4 += v86 + 3;
  v2 = *(this + 87);
  if ((v2 & 0x800000) != 0)
  {
LABEL_167:
    v87 = *(this + 31);
    if (v87 >= 0x80)
    {
      v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87) + 2;
      v2 = *(this + 87);
    }

    else
    {
      v88 = 3;
    }

    v4 += v88;
  }

LABEL_171:
  if (!HIBYTE(v2))
  {
    goto LABEL_203;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v89 = *(this + 42);
    if (v89 >= 0x80)
    {
      v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89) + 2;
      v2 = *(this + 87);
    }

    else
    {
      v90 = 3;
    }

    v4 += v90;
    if ((v2 & 0x4000000) == 0)
    {
LABEL_174:
      if ((v2 & 0x8000000) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_187;
    }
  }

  else if ((v2 & 0x4000000) == 0)
  {
    goto LABEL_174;
  }

  v91 = *(this + 43);
  if (v91 >= 0x80)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91) + 2;
    v2 = *(this + 87);
  }

  else
  {
    v92 = 3;
  }

  v4 += v92;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_175:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_191;
  }

LABEL_187:
  v93 = *(this + 50);
  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
    v2 = *(this + 87);
  }

  else
  {
    v94 = 3;
  }

  v4 += v94;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_176:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_195;
  }

LABEL_191:
  v95 = *(this + 51);
  if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
    v2 = *(this + 87);
  }

  else
  {
    v96 = 3;
  }

  v4 += v96;
  if ((v2 & 0x40000000) == 0)
  {
LABEL_177:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_199;
  }

LABEL_195:
  v97 = *(this + 58);
  if (v97 >= 0x80)
  {
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
    v2 = *(this + 87);
  }

  else
  {
    v98 = 3;
  }

  v4 += v98;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_199:
    v99 = *(this + 59);
    if (v99 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99) + 2;
    }

    else
    {
      v100 = 3;
    }

    v4 += v100;
  }

LABEL_203:
  v101 = *(this + 88);
  if (!v101)
  {
    goto LABEL_246;
  }

  if (v101)
  {
    v102 = *(this + 66);
    if (v102 >= 0x80)
    {
      v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102) + 2;
      v101 = *(this + 88);
    }

    else
    {
      v103 = 3;
    }

    v4 += v103;
    if ((v101 & 4) == 0)
    {
LABEL_206:
      if ((v101 & 8) == 0)
      {
        goto LABEL_207;
      }

      goto LABEL_220;
    }
  }

  else if ((v101 & 4) == 0)
  {
    goto LABEL_206;
  }

  v104 = *(this + 67);
  if (v104 >= 0x80)
  {
    v105 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104) + 2;
    v101 = *(this + 88);
  }

  else
  {
    v105 = 3;
  }

  v4 += v105;
  if ((v101 & 8) == 0)
  {
LABEL_207:
    if ((v101 & 0x10) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_226;
  }

LABEL_220:
  v106 = *(this + 34);
  if (!v106)
  {
    v106 = *(awd::metrics::LocationAccessory::default_instance_ + 272);
  }

  v107 = awd::metrics::LocationAccessory_DeviceChargingStats::ByteSize(v106);
  v108 = v107;
  if (v107 >= 0x80)
  {
    v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v107);
  }

  else
  {
    v109 = 1;
  }

  v4 += v108 + v109 + 2;
  v101 = *(this + 88);
  if ((v101 & 0x10) == 0)
  {
LABEL_208:
    if ((v101 & 0x20) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_232;
  }

LABEL_226:
  v110 = *(this + 35);
  if (!v110)
  {
    v110 = *(awd::metrics::LocationAccessory::default_instance_ + 280);
  }

  v111 = awd::metrics::LocationAccessory_Statistics::ByteSize(v110);
  v112 = v111;
  if (v111 >= 0x80)
  {
    v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111);
  }

  else
  {
    v113 = 1;
  }

  v4 += v112 + v113 + 2;
  v101 = *(this + 88);
  if ((v101 & 0x20) == 0)
  {
LABEL_209:
    if ((v101 & 0x40) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_238;
  }

LABEL_232:
  v114 = *(this + 36);
  if (!v114)
  {
    v114 = *(awd::metrics::LocationAccessory::default_instance_ + 288);
  }

  v115 = awd::metrics::LocationAccessory_Statistics::ByteSize(v114);
  v116 = v115;
  if (v115 >= 0x80)
  {
    v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115);
  }

  else
  {
    v117 = 1;
  }

  v4 += v116 + v117 + 2;
  v101 = *(this + 88);
  if ((v101 & 0x40) == 0)
  {
LABEL_210:
    if ((v101 & 0x80) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_242;
  }

LABEL_238:
  v118 = *(this + 74);
  if (v118 >= 0x80)
  {
    v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
    v101 = *(this + 88);
  }

  else
  {
    v119 = 3;
  }

  v4 += v119;
  if ((v101 & 0x80) != 0)
  {
LABEL_242:
    v120 = *(this + 75);
    if (v120 >= 0x80)
    {
      v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
      v101 = *(this + 88);
    }

    else
    {
      v121 = 3;
    }

    v4 += v121;
  }

LABEL_246:
  if ((v101 & 0x1FE00) != 0)
  {
    if ((v101 & 0x200) != 0)
    {
      v122 = *(this + 41);
      v123 = *(v122 + 23);
      v124 = v123;
      v125 = *(v122 + 8);
      if ((v123 & 0x80u) == 0)
      {
        v126 = *(v122 + 23);
      }

      else
      {
        v126 = v125;
      }

      if (v126 >= 0x80)
      {
        v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126);
        v123 = *(v122 + 23);
        v125 = *(v122 + 8);
        v101 = *(this + 88);
        v124 = *(v122 + 23);
      }

      else
      {
        v127 = 1;
      }

      if (v124 < 0)
      {
        v123 = v125;
      }

      v4 += v127 + v123 + 2;
    }

    if ((v101 & 0x400) != 0)
    {
      v128 = *(this + 42);
      v129 = *(v128 + 23);
      v130 = v129;
      v131 = *(v128 + 8);
      if ((v129 & 0x80u) == 0)
      {
        v132 = *(v128 + 23);
      }

      else
      {
        v132 = v131;
      }

      if (v132 >= 0x80)
      {
        v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132);
        v129 = *(v128 + 23);
        v131 = *(v128 + 8);
        v130 = *(v128 + 23);
      }

      else
      {
        v133 = 1;
      }

      if (v130 < 0)
      {
        v129 = v131;
      }

      v4 += v133 + v129 + 2;
    }
  }

  v134 = *(this + 46);
  v135 = v4 + 2 * v134;
  if (v134 >= 1)
  {
    v136 = 0;
    do
    {
      v137 = awd::metrics::LocationAccessory_LocationAppRunningTime::ByteSize(*(*(this + 22) + 8 * v136));
      v138 = v137;
      if (v137 >= 0x80)
      {
        v139 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v137);
      }

      else
      {
        v139 = 1;
      }

      v135 += v138 + v139;
      ++v136;
    }

    while (v136 < *(this + 46));
  }

  v140 = *(this + 54);
  v141 = v135 + 2 * v140;
  if (v140 >= 1)
  {
    v142 = 0;
    do
    {
      v143 = awd::metrics::LocationAccessory_NavDynamicsHistogram::ByteSize(*(*(this + 26) + 8 * v142));
      v144 = v143;
      if (v143 >= 0x80)
      {
        v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143);
      }

      else
      {
        v145 = 1;
      }

      v141 += v144 + v145;
      ++v142;
    }

    while (v142 < *(this + 54));
  }

  v146 = *(this + 62);
  v147 = v141 + 2 * v146;
  if (v146 >= 1)
  {
    v148 = 0;
    do
    {
      v149 = awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::ByteSize(*(*(this + 30) + 8 * v148));
      v150 = v149;
      if (v149 >= 0x80)
      {
        v151 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v149);
      }

      else
      {
        v151 = 1;
      }

      v147 += v150 + v151;
      ++v148;
    }

    while (v148 < *(this + 62));
  }

  v152 = *(this + 78);
  v153 = (v147 + 2 * v152);
  if (v152 >= 1)
  {
    v154 = 0;
    do
    {
      v155 = awd::metrics::LocationAccessory_MessageHistogram::ByteSize(*(*(this + 38) + 8 * v154));
      v156 = v155;
      if (v155 >= 0x80)
      {
        v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155);
      }

      else
      {
        v157 = 1;
      }

      v153 = (v156 + v153 + v157);
      ++v154;
    }

    while (v154 < *(this + 78));
  }

  *(this + 86) = v153;
  return v153;
}

void awd::metrics::LocationAccessory::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory::CopyFrom(awd::metrics::LocationAccessory *this, const awd::metrics::LocationAccessory *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationAccessory::Swap(uint64_t this, awd::metrics::LocationAccessory *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    v5 = *(this + 16);
    v6 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v6;
    *(a2 + 1) = v4;
    *(a2 + 2) = v5;
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    v10 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v10;
    LODWORD(v10) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v10;
    LOBYTE(v10) = *(this + 60);
    *(this + 60) = *(a2 + 60);
    *(a2 + 60) = v10;
    LODWORD(v10) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v10;
    LODWORD(v10) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v10;
    LODWORD(v10) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v10;
    LODWORD(v10) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v10;
    LODWORD(v10) = *(this + 120);
    *(this + 120) = *(a2 + 30);
    *(a2 + 30) = v10;
    v11 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v11;
    v12 = *(this + 88);
    *(this + 88) = *(a2 + 11);
    *(a2 + 11) = v12;
    v13 = *(this + 96);
    *(this + 96) = *(a2 + 12);
    *(a2 + 12) = v13;
    v14 = *(this + 104);
    *(this + 104) = *(a2 + 13);
    *(a2 + 13) = v14;
    v15 = *(this + 112);
    *(this + 112) = *(a2 + 14);
    *(a2 + 14) = v15;
    v16 = *(this + 128);
    *(this + 128) = *(a2 + 16);
    *(a2 + 16) = v16;
    v17 = *(this + 136);
    *(this + 136) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 144);
    *(this + 144) = *(a2 + 18);
    *(a2 + 18) = v18;
    v19 = *(this + 152);
    *(this + 152) = *(a2 + 19);
    *(a2 + 19) = v19;
    v20 = *(this + 160);
    *(this + 160) = *(a2 + 20);
    *(a2 + 20) = v20;
    LODWORD(v20) = *(this + 124);
    *(this + 124) = *(a2 + 31);
    *(a2 + 31) = v20;
    LODWORD(v20) = *(this + 168);
    *(this + 168) = *(a2 + 42);
    *(a2 + 42) = v20;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v21 = *(v3 + 172);
    *(v3 + 172) = *(a2 + 43);
    *(a2 + 43) = v21;
    v22 = *(v3 + 200);
    *(v3 + 200) = *(a2 + 50);
    *(a2 + 50) = v22;
    v23 = *(v3 + 204);
    *(v3 + 204) = *(a2 + 51);
    *(a2 + 51) = v23;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v24 = *(v3 + 232);
    *(v3 + 232) = *(a2 + 58);
    *(a2 + 58) = v24;
    v25 = *(v3 + 236);
    *(v3 + 236) = *(a2 + 59);
    *(a2 + 59) = v25;
    v26 = *(v3 + 264);
    *(v3 + 264) = *(a2 + 66);
    *(a2 + 66) = v26;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v27 = *(v3 + 268);
    *(v3 + 268) = *(a2 + 67);
    *(a2 + 67) = v27;
    v28 = *(v3 + 272);
    *(v3 + 272) = *(a2 + 34);
    *(a2 + 34) = v28;
    v29 = *(v3 + 280);
    *(v3 + 280) = *(a2 + 35);
    *(a2 + 35) = v29;
    v30 = *(v3 + 288);
    *(v3 + 288) = *(a2 + 36);
    *(a2 + 36) = v30;
    LODWORD(v30) = *(v3 + 296);
    *(v3 + 296) = *(a2 + 74);
    *(a2 + 74) = v30;
    LODWORD(v30) = *(v3 + 300);
    *(v3 + 300) = *(a2 + 75);
    *(a2 + 75) = v30;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v31 = *(v3 + 328);
    *(v3 + 328) = *(a2 + 41);
    *(a2 + 41) = v31;
    v32 = *(v3 + 336);
    *(v3 + 336) = *(a2 + 42);
    *(a2 + 42) = v32;
    LODWORD(v32) = *(v3 + 348);
    *(v3 + 348) = *(a2 + 87);
    *(a2 + 87) = v32;
    LODWORD(v32) = *(v3 + 352);
    *(v3 + 352) = *(a2 + 88);
    *(a2 + 88) = v32;
    LODWORD(v32) = *(v3 + 344);
    *(v3 + 344) = *(a2 + 86);
    *(a2 + 86) = v32;
  }

  return this;
}

double awd::metrics::BaroAltitudeCalibrationInfo::SharedCtor(awd::metrics::BaroAltitudeCalibrationInfo *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 7) = 0;
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

awd::metrics::BaroAltitudeCalibrationInfo *awd::metrics::BaroAltitudeCalibrationInfo::BaroAltitudeCalibrationInfo(awd::metrics::BaroAltitudeCalibrationInfo *this, const awd::metrics::BaroAltitudeCalibrationInfo *a2)
{
  *(this + 7) = 0;
  *this = &unk_2A1D51438;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::BaroAltitudeCalibrationInfo::MergeFrom(this, a2);
  return this;
}

float awd::metrics::BaroAltitudeCalibrationInfo::MergeFrom(awd::metrics::BaroAltitudeCalibrationInfo *this, const awd::metrics::BaroAltitudeCalibrationInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v5 = *(a2 + 15);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v7 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v7;
    v5 = *(a2 + 15);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 15) |= 2u;
  v9 = *(this + 2);
  if (v9 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v5 = *(a2 + 15);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 6);
  *(this + 15) |= 4u;
  *(this + 6) = v10;
  v5 = *(a2 + 15);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 15) |= 8u;
  *(this + 7) = v11;
  v5 = *(a2 + 15);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v13 = *(a2 + 9);
    *(this + 15) |= 0x20u;
    *(this + 9) = v13;
    v5 = *(a2 + 15);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 8);
  *(this + 15) |= 0x10u;
  *(this + 8) = v12;
  v5 = *(a2 + 15);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v14 = *(a2 + 10);
  *(this + 15) |= 0x40u;
  *(this + 10) = v14;
  v5 = *(a2 + 15);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    v6 = *(a2 + 11);
    *(this + 15) |= 0x80u;
    *(this + 11) = v6;
    v5 = *(a2 + 15);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 12);
      *(this + 15) |= 0x100u;
      *(this + 12) = result;
      v5 = *(a2 + 15);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 13);
      *(this + 15) |= 0x200u;
      *(this + 13) = result;
    }
  }

  return result;
}

void sub_296470E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BaroAltitudeCalibrationInfo::~BaroAltitudeCalibrationInfo(awd::metrics::BaroAltitudeCalibrationInfo *this)
{
  *this = &unk_2A1D51438;
  awd::metrics::BaroAltitudeCalibrationInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51438;
  awd::metrics::BaroAltitudeCalibrationInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51438;
  awd::metrics::BaroAltitudeCalibrationInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::default_instance(awd::metrics::BaroAltitudeCalibrationInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BaroAltitudeCalibrationInfo::default_instance_;
  if (!awd::metrics::BaroAltitudeCalibrationInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::BaroAltitudeCalibrationInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2 != MEMORY[0x29EDC9758])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
    v1 = *(this + 60);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::MergePartialFromCodedStream(awd::metrics::BaroAltitudeCalibrationInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_79;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_87;
            }

            goto LABEL_41;
          }

          if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_95;
            }

            goto LABEL_41;
          }

          if (v7 == 9)
          {
            if (v8 != 5)
            {
              goto LABEL_41;
            }

LABEL_103:
            v37 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v37) & 1) == 0)
            {
              return 0;
            }

            *(this + 12) = v37;
            *(this + 15) |= 0x100u;
            v35 = *(a2 + 1);
            if (v35 < *(a2 + 2) && *v35 == 85)
            {
              *(a2 + 1) = v35 + 1;
              goto LABEL_107;
            }
          }

          else
          {
            if (v7 != 10 || v8 != 5)
            {
              goto LABEL_41;
            }

LABEL_107:
            v36 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v36) & 1) == 0)
            {
              return 0;
            }

            *(this + 13) = v36;
            *(this + 15) |= 0x200u;
            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_41;
          }

          v11 = *(this + 15);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v14 >= v13 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v15;
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        v11 = *(this + 15) | 1;
        *(this + 15) = v11;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
LABEL_49:
          *(this + 15) = v11 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v22 < v9 && *v22 == 24)
          {
            v18 = v22 + 1;
            *(a2 + 1) = v18;
LABEL_55:
            if (v18 >= v9 || (v23 = *v18, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v23;
              v24 = v18 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 15) |= 4u;
            if (v24 < v9 && *v24 == 32)
            {
              v20 = v24 + 1;
              *(a2 + 1) = v20;
              goto LABEL_63;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_55;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_41;
      }

      v20 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_63:
      if (v20 >= v9 || (v25 = *v20, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
        if (!result)
        {
          return result;
        }

        v26 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 7) = v25;
        v26 = v20 + 1;
        *(a2 + 1) = v26;
      }

      *(this + 15) |= 8u;
      if (v26 < v9 && *v26 == 40)
      {
        v10 = v26 + 1;
        *(a2 + 1) = v10;
LABEL_71:
        if (v10 >= v9 || (v27 = *v10, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v27;
          v28 = v10 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 15) |= 0x10u;
        if (v28 < v9 && *v28 == 48)
        {
          v17 = v28 + 1;
          *(a2 + 1) = v17;
LABEL_79:
          if (v17 >= v9 || (v29 = *v17, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v30 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v29;
            v30 = v17 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 15) |= 0x20u;
          if (v30 < v9 && *v30 == 56)
          {
            v12 = v30 + 1;
            *(a2 + 1) = v12;
LABEL_87:
            if (v12 >= v9 || (v31 = *v12, v31 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v32 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v31;
              v32 = v12 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 15) |= 0x40u;
            if (v32 < v9 && *v32 == 64)
            {
              v19 = v32 + 1;
              *(a2 + 1) = v19;
LABEL_95:
              if (v19 >= v9 || (v33 = *v19, v33 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                if (!result)
                {
                  return result;
                }

                v34 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 11) = v33;
                v34 = v19 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 15) |= 0x80u;
              if (v34 < v9 && *v34 == 77)
              {
                *(a2 + 1) = v34 + 1;
                goto LABEL_103;
              }
            }
          }
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_71;
    }

LABEL_41:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
    if ((*(v5 + 60) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_21:
  v8 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, v8, a3);
}

uint64_t awd::metrics::BaroAltitudeCalibrationInfo::ByteSize(awd::metrics::BaroAltitudeCalibrationInfo *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 15);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
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
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v2 = *(this + 15);
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

  v3 += v9 + v5 + 1;
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v11 = 2;
    }

    v3 += v11;
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 7);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_31:
  v14 = *(this + 8);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v15 = 2;
  }

  v3 += v15;
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_35:
  v16 = *(this + 9);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v17 = 2;
  }

  v3 += v17;
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v18 = *(this + 10);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v19 = 2;
  }

  v3 += v19;
  if ((v2 & 0x80) != 0)
  {
LABEL_43:
    v20 = *(this + 11);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v21 = 2;
    }

    v3 += v21;
  }

LABEL_47:
  v22 = v3 + 5;
  if ((v2 & 0x100) == 0)
  {
    v22 = v3;
  }

  if ((v2 & 0x200) != 0)
  {
    v22 += 5;
  }

  if ((v2 & 0xFF00) != 0)
  {
    result = v22;
  }

  else
  {
    result = v3;
  }

  *(this + 14) = result;
  return result;
}