awd::metrics::LocationGPSSessionStatistics_ChecksumData *awd::metrics::LocationGPSSessionStatistics_ChecksumData::LocationGPSSessionStatistics_ChecksumData(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, const awd::metrics::LocationGPSSessionStatistics_ChecksumData *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D50100;
  *(this + 1) = v3;
  *(this + 2) = 0;
  awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, const awd::metrics::LocationGPSSessionStatistics_ChecksumData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_296447754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_ChecksumData::~LocationGPSSessionStatistics_ChecksumData(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this)
{
  *this = &unk_2A1D50100;
  awd::metrics::LocationGPSSessionStatistics_ChecksumData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50100;
  awd::metrics::LocationGPSSessionStatistics_ChecksumData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50100;
  awd::metrics::LocationGPSSessionStatistics_ChecksumData::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::default_instance(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_ChecksumData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_ChecksumData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_ChecksumData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::Clear(uint64_t this)
{
  if (*(this + 20))
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

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
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

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    v2 = *(this + 8);
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::ByteSize(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 8);
      v8 = v9 + 1;
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 2;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    result = (v8 + v4);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::LocationGPSSessionStatistics_ChecksumData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_ChecksumData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_ChecksumData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_ChecksumData *this, const awd::metrics::LocationGPSSessionStatistics_ChecksumData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_ChecksumData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::LocationGPSSessionStatistics_DeviceOrientationData(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, const awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50178;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, const awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 7)
      {
        awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_296447E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::~LocationGPSSessionStatistics_DeviceOrientationData(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this)
{
  *this = &unk_2A1D50178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::default_instance(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        *(this + 6) |= 1u;
        *(this + 4) = v7;
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::ByteSize(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *this, const awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::LocationGPSSessionStatistics_PowerMeasurementData(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, const awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D501F0;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, const awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 0x20)
      {
        awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644849C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::~LocationGPSSessionStatistics_PowerMeasurementData(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this)
{
  *this = &unk_2A1D501F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D501F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D501F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::default_instance(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 <= 0x1F)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v7;
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::ByteSize(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *this, const awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::LocationGPSSessionStatistics_ChargerTypeData(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, const awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50268;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, const awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_296448B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::~LocationGPSSessionStatistics_ChargerTypeData(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this)
{
  *this = &unk_2A1D50268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::default_instance(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v8 = v14;
        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 4) = v8;
      *(this + 6) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::ByteSize(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *this, const awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_ChargerTypeData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::LocationGPSSessionStatistics_ThermalLevelData(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, const awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D502E0;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, const awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644918C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::~LocationGPSSessionStatistics_ThermalLevelData(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this)
{
  *this = &unk_2A1D502E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D502E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D502E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::default_instance(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v8 = v14;
        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 4) = v8;
      *(this + 6) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::ByteSize(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *this, const awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_ThermalLevelData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

double awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::SharedCtor(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this)
{
  *(this + 18) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, const awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *a2)
{
  *this = &unk_2A1D50358;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, const awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 18);
  if (!v4)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    if (v5 >= 3)
    {
      awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom();
    }

    *(this + 18) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 18);
  }

  if ((v4 & 2) != 0)
  {
    v10 = *(a2 + 3);
    *(this + 18) |= 2u;
    *(this + 3) = v10;
    v4 = *(a2 + 18);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(a2 + 4);
  *(this + 18) |= 4u;
  *(this + 4) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 5);
  *(this + 18) |= 8u;
  *(this + 5) = v12;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v14 = *(a2 + 7);
    *(this + 18) |= 0x20u;
    *(this + 7) = v14;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_29:
  v13 = *(a2 + 6);
  *(this + 18) |= 0x10u;
  *(this + 6) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_31:
  v15 = *(a2 + 4);
  *(this + 18) |= 0x40u;
  *(this + 4) = v15;
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 5);
    *(this + 18) |= 0x80u;
    *(this + 5) = v6;
    v4 = *(a2 + 18);
  }

LABEL_15:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v7 = *(a2 + 12);
    *(this + 18) |= 0x100u;
    *(this + 12) = v7;
    v4 = *(a2 + 18);
  }

  if ((v4 & 0x200) != 0)
  {
    v8 = *(a2 + 13);
    if (v8 >= 5)
    {
      awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom();
    }

    *(this + 18) |= 0x200u;
    *(this + 13) = v8;
    v4 = *(a2 + 18);
  }

  if ((v4 & 0x400) != 0)
  {
    v16 = *(a2 + 14);
    *(this + 18) |= 0x400u;
    *(this + 14) = v16;
    v4 = *(a2 + 18);
    if ((v4 & 0x800) == 0)
    {
LABEL_23:
      if ((v4 & 0x1000) == 0)
      {
        return;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_23;
  }

  v17 = *(a2 + 15);
  *(this + 18) |= 0x800u;
  *(this + 15) = v17;
  if ((*(a2 + 18) & 0x1000) != 0)
  {
LABEL_24:
    v9 = *(a2 + 16);
    *(this + 18) |= 0x1000u;
    *(this + 16) = v9;
  }
}

void sub_2964499C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::~LocationGPSSessionStatistics_LocationGpsPersistentStatistics(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this)
{
  *this = &unk_2A1D50358;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50358;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50358;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::default_instance(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v48[0] = 0;
        v6 = *(a2 + 1);
        if (v6 < *(a2 + 2))
        {
          v7 = *v6;
          if ((v7 & 0x80000000) == 0)
          {
            *(a2 + 1) = v6 + 1;
            goto LABEL_40;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
        if (result)
        {
          v7 = v48[0];
LABEL_40:
          if (v7 <= 2)
          {
            *(this + 18) |= 1u;
            *(this + 2) = v7;
          }

          v22 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v22 < v10 && *v22 == 16)
          {
            v17 = v22 + 1;
            *(a2 + 1) = v17;
            goto LABEL_45;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_45:
        v48[0] = 0;
        if (v17 >= v10 || (v23 = *v17, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v23 = v48[0];
          v24 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v24 = v17 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 3) = v23;
        *(this + 18) |= 2u;
        if (v24 >= v10 || *v24 != 24)
        {
          continue;
        }

        v14 = v24 + 1;
        *(a2 + 1) = v14;
LABEL_53:
        v48[0] = 0;
        if (v14 >= v10 || (v25 = *v14, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v25 = v48[0];
          v26 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v26 = v14 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 4) = v25;
        *(this + 18) |= 4u;
        if (v26 >= v10 || *v26 != 32)
        {
          continue;
        }

        v15 = v26 + 1;
        *(a2 + 1) = v15;
LABEL_61:
        v48[0] = 0;
        if (v15 >= v10 || (v27 = *v15, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v27 = v48[0];
          v28 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v28 = v15 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 5) = v27;
        *(this + 18) |= 8u;
        if (v28 >= v10 || *v28 != 40)
        {
          continue;
        }

        v11 = v28 + 1;
        *(a2 + 1) = v11;
LABEL_69:
        v48[0] = 0;
        if (v11 >= v10 || (v29 = *v11, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v29 = v48[0];
          v30 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v30 = v11 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 6) = v29;
        *(this + 18) |= 0x10u;
        if (v30 >= v10 || *v30 != 48)
        {
          continue;
        }

        v18 = v30 + 1;
        *(a2 + 1) = v18;
LABEL_77:
        v48[0] = 0;
        if (v18 >= v10 || (v31 = *v18, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v31 = v48[0];
          v32 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v32 = v18 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 7) = v31;
        *(this + 18) |= 0x20u;
        if (v32 >= v10 || *v32 != 56)
        {
          continue;
        }

        v19 = v32 + 1;
        *(a2 + 1) = v19;
LABEL_85:
        *v48 = 0;
        if (v19 >= v10 || (v33 = *v19, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v33 = *v48;
          v34 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v34 = v19 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 4) = v33;
        *(this + 18) |= 0x40u;
        if (v34 >= v10 || *v34 != 64)
        {
          continue;
        }

        v16 = v34 + 1;
        *(a2 + 1) = v16;
LABEL_93:
        *v48 = 0;
        if (v16 >= v10 || (v35 = *v16, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v35 = *v48;
          v36 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v36 = v16 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 5) = v35;
        *(this + 18) |= 0x80u;
        if (v36 >= v10 || *v36 != 72)
        {
          continue;
        }

        v21 = v36 + 1;
        *(a2 + 1) = v21;
LABEL_101:
        v48[0] = 0;
        if (v21 >= v10 || (v37 = *v21, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v37 = v48[0];
          v38 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v38 = v21 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 12) = v37;
        *(this + 18) |= 0x100u;
        if (v38 >= v10 || *v38 != 80)
        {
          continue;
        }

        v13 = v38 + 1;
        *(a2 + 1) = v13;
LABEL_109:
        v48[0] = 0;
        if (v13 >= v10 || (v39 = *v13, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v39 = v48[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v39 <= 4)
        {
          *(this + 18) |= 0x200u;
          *(this + 13) = v39;
        }

        v40 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v40 >= v8 || *v40 != 88)
        {
          continue;
        }

        v20 = v40 + 1;
        *(a2 + 1) = v20;
LABEL_119:
        v48[0] = 0;
        if (v20 >= v8 || (v41 = *v20, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v41 = v48[0];
          v42 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v42 = v20 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 15) = v41;
        *(this + 18) |= 0x800u;
        if (v42 >= v8 || *v42 != 96)
        {
          continue;
        }

        v9 = v42 + 1;
        *(a2 + 1) = v9;
LABEL_127:
        v48[0] = 0;
        if (v9 >= v8 || (v43 = *v9, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v43 = v48[0];
          v44 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v44 = v9 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 16) = v43;
        *(this + 18) |= 0x1000u;
        if (v44 >= v8 || *v44 != 104)
        {
          continue;
        }

        v12 = v44 + 1;
        *(a2 + 1) = v12;
LABEL_135:
        v48[0] = 0;
        if (v12 >= v8 || (v45 = *v12, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v48);
          if (!result)
          {
            return result;
          }

          v45 = v48[0];
          v46 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v46 = v12 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 14) = v45;
        *(this + 18) |= 0x400u;
        if (v46 != v8 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_53;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_61;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_69;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_77;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_85;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_93;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v21 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_101;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_109;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_119;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_127;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_135;
      default:
LABEL_34:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 64), a2, a4);
    if ((*(v5 + 72) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_27:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, v7, a2, a4);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::ByteSize(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if (v2)
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 18);
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(this + 3);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 4);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_21:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_55;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(this + 5);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_55:
  v15 = *(this + 6);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_79;
  }

LABEL_67:
  v19 = *(this + 7);
  if ((v19 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v20 = 2;
  }

  v3 = (v20 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_79:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v2 = *(this + 18);
  if ((v2 & 0x80) != 0)
  {
LABEL_25:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    v2 = *(this + 18);
  }

LABEL_26:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_89;
  }

  if ((v2 & 0x100) != 0)
  {
    v9 = *(this + 12);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v10 = 2;
    }

    v3 = (v10 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_29:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_61;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_29;
  }

  v13 = *(this + 13);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_30:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

LABEL_61:
  v17 = *(this + 14);
  if ((v17 & 0x80000000) != 0)
  {
    v18 = 11;
  }

  else if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v18 = 2;
  }

  v3 = (v18 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_31:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

LABEL_73:
  v21 = *(this + 15);
  if ((v21 & 0x80000000) != 0)
  {
    v22 = 11;
  }

  else if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v22 = 2;
  }

  v3 = (v22 + v3);
  if ((v2 & 0x1000) != 0)
  {
LABEL_83:
    v23 = *(this + 16);
    if ((v23 & 0x80000000) != 0)
    {
      v24 = 11;
    }

    else if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    }

    else
    {
      v24 = 2;
    }

    v3 = (v24 + v3);
  }

LABEL_89:
  *(this + 17) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::CopyFrom(awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *this, const awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    LODWORD(v9) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v9;
    LODWORD(v9) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v9;
    LODWORD(v9) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v9;
    LODWORD(v9) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v9;
    LODWORD(v9) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v9;
    LODWORD(v9) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v9;
    LODWORD(v9) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v9;
  }

  return this;
}

void *awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, const awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *a2)
{
  *this = &unk_2A1D503D0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, const awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 7);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 4);
    *(this + 7) |= 4u;
    *(this + 4) = v8;
    if ((*(a2 + 7) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 5);
    *(this + 7) |= 8u;
    *(this + 5) = v5;
  }
}

void sub_29644AA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::~LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this)
{
  *this = &unk_2A1D503D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D503D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D503D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::default_instance(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v21 = 0;
      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 2) = v11;
      *(this + 7) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        if (v8 >= v7 || (v14 = *v8, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v14;
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 7) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          if (v13 >= v7 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 7) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            if (v9 >= v7 || (v18 = *v9, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v18;
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 7) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

unsigned int *awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[7];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
    v6 = v5[7];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
      if ((v5[7] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[7];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::ByteSize(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_28;
  }

  if (*(this + 28))
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
      v2 = *(this + 7);
      if ((v2 & 2) == 0)
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
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_17:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v7 = *(this + 4);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v8 = 2;
  }

  v3 = (v8 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_24:
    v9 = *(this + 5);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v3 = (v10 + v3);
  }

LABEL_28:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::CopyFrom(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, const awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(this, a2);
  }
}

awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::Swap(awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *this, awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::LocationGPSSessionStatistics_NSForceOffReason(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, const awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50448;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergeFrom(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, const awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644B238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::~LocationGPSSessionStatistics_NSForceOffReason(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this)
{
  *this = &unk_2A1D50448;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50448;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50448;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::default_instance(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v8 = v14;
        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 4) = v8;
      *(this + 6) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::ByteSize(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::CopyFrom(awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *this, const awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_NSForceOffReason *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_NSOnOffState *awd::metrics::LocationGPSSessionStatistics_NSOnOffState::LocationGPSSessionStatistics_NSOnOffState(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, const awd::metrics::LocationGPSSessionStatistics_NSOnOffState *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D504C0;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergeFrom(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, const awd::metrics::LocationGPSSessionStatistics_NSOnOffState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644B8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_NSOnOffState::~LocationGPSSessionStatistics_NSOnOffState(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this)
{
  *this = &unk_2A1D504C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D504C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D504C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::default_instance(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_NSOnOffState::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_NSOnOffState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_NSOnOffState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v8 = v14;
        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 4) = v8;
      *(this + 6) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::ByteSize(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_NSOnOffState::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_NSOnOffState::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_NSOnOffState::CopyFrom(awd::metrics::LocationGPSSessionStatistics_NSOnOffState *this, const awd::metrics::LocationGPSSessionStatistics_NSOnOffState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_NSOnOffState::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_NSOnOffState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::LocationGPSSessionStatistics_JammingMetricBucket(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50538;
  awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergeFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *a2)
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

void sub_29644BF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::~LocationGPSSessionStatistics_JammingMetricBucket(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this)
{
  *this = &unk_2A1D50538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50538;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::default_instance(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v15 = 0;
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 2) = v8;
      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        v14 = 0;
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
          if (!result)
          {
            return result;
          }

          v11 = v14;
          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 3) = v11;
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

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::ByteSize(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this)
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
          goto LABEL_19;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v5 = *(this + 3);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
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

LABEL_19:
  *(this + 4) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::CopyFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergeFrom(this, a2);
  }
}

awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::Swap(awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *this, awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket *a2)
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

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::LocationGPSSessionStatistics_JammingMetricDataPerSignal(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *a2)
{
  *(this + 1) = 0;
  *this = &unk_2A1D505B0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(this, a2);
  return this;
}

void sub_29644C504(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>((this + 8), a2 + 8);
  if (*(a2 + 40))
  {
    v4 = *(a2 + 8);
    *(this + 10) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_29644C5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::~LocationGPSSessionStatistics_JammingMetricDataPerSignal(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this)
{
  *this = &unk_2A1D505B0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::~LocationGPSSessionStatistics_JammingMetricDataPerSignal(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::default_instance(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::Clear(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket>::TypeHandler>(this + 8);
  *(this + 10) = 0;
  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v23 = 0;
      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v7 >= v8 || (v9 = *v7, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
        if (!result)
        {
          return result;
        }

        v9 = v23;
        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v10 = v7 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) = v9;
      *(this + 10) |= 1u;
      if (v10 < v8 && *v10 == 18)
      {
        do
        {
          *(a2 + 1) = v10 + 1;
LABEL_21:
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
          v24 = 0;
          v16 = *(a2 + 1);
          if (v16 >= *(a2 + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
            {
              return 0;
            }
          }

          else
          {
            v24 = *v16;
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
          if (!awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
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

          v10 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        while (v10 < v22 && *v10 == 18);
        if (v10 == v22 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 2)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 32), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::ByteSize(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this)
{
  if (*(this + 40))
  {
    v3 = *(this + 8);
    if ((v3 & 0x80000000) != 0)
    {
      v2 = 11;
    }

    else if (v3 >= 0x80)
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 4);
  v5 = (v4 + v2);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = awd::metrics::LocationGPSSessionStatistics_JammingMetricBucket::ByteSize(*(*(this + 1) + 8 * v6));
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v8 + v5 + v9);
      ++v6;
    }

    while (v6 < *(this + 4));
  }

  *(this + 9) = v5;
  return v5;
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::CopyFrom(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, const awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(this, a2);
  }
}

awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::Swap(awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *this, awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    v6 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v6;
  }

  return this;
}

double awd::metrics::LocationGPSSessionStatistics::LocationGPSSessionStatistics(awd::metrics::LocationGPSSessionStatistics *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 48) = 0;
  *(this + 11) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 0;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 66) = 0;
  *(this + 248) = 0u;
  *(this + 72) = 0;
  *(this + 17) = 0u;
  *(this + 78) = 0;
  *(this + 296) = 0u;
  *(this + 84) = 0;
  *(this + 20) = 0u;
  *(this + 90) = 0;
  *(this + 344) = 0u;
  *(this + 96) = 0;
  *(this + 23) = 0u;
  *(this + 156) = 0;
  *(this + 38) = 0u;
  *(this + 164) = 0;
  *(this + 40) = 0u;
  *(this + 176) = 0;
  *(this + 43) = 0u;
  *(this + 182) = 0;
  *(this + 712) = 0u;
  *(this + 218) = 0;
  *(this + 856) = 0u;
  *(this + 246) = 0;
  *(this + 968) = 0u;
  *(this + 252) = 0;
  *(this + 62) = 0u;
  *(this + 258) = 0;
  *(this + 1016) = 0u;
  *(this + 266) = 0;
  *(this + 1048) = 0u;
  *(this + 274) = 0;
  *(this + 1080) = 0u;
  *(this + 280) = 0;
  *(this + 69) = 0u;
  *(this + 286) = 0;
  *(this + 1128) = 0u;
  *(this + 292) = 0;
  *(this + 72) = 0u;
  *(this + 298) = 0;
  *(this + 1176) = 0u;
  *(this + 304) = 0;
  *(this + 75) = 0u;
  *(this + 310) = 0;
  *(this + 1224) = 0u;
  *(this + 316) = 0;
  *(this + 78) = 0u;
  *(this + 322) = 0;
  *(this + 1272) = 0u;
  *(this + 328) = 0;
  *(this + 81) = 0u;
  *(this + 334) = 0;
  *(this + 1320) = 0u;
  *(this + 339) = 0;
  *this = &unk_2A1D50628;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 79) = 0;
  *(this + 134) = 0;
  *(this + 168) = 0;
  *(this + 338) = 0;
  *(this + 85) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 75) = 0;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = 0u;
  *(this + 85) = 0;
  *(this + 664) = 0u;
  *(this + 106) = 0;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 46) = 0u;
  *(this + 120) = 0;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 55) = 0u;
  *(this + 1043) = 0;
  *(this + 260) = 0;
  return result;
}

double awd::metrics::LocationGPSSessionStatistics::SharedCtor(awd::metrics::LocationGPSSessionStatistics *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 79) = 0;
  *(this + 134) = 0;
  result = 0.0;
  *(this + 84) = 0u;
  *(this + 85) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 75) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 85) = 0;
  *(this + 664) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 106) = 0;
  *(this + 120) = 0;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 55) = 0u;
  *(this + 1043) = 0;
  *(this + 260) = 0;
  return result;
}

awd::metrics::LocationGPSSessionStatistics *awd::metrics::LocationGPSSessionStatistics::LocationGPSSessionStatistics(awd::metrics::LocationGPSSessionStatistics *this, const awd::metrics::LocationGPSSessionStatistics *a2)
{
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 200) = 0u;
  *(this + 54) = 0;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 248) = 0u;
  *(this + 66) = 0;
  *(this + 72) = 0;
  *(this + 17) = 0u;
  *(this + 78) = 0;
  *(this + 296) = 0u;
  *(this + 84) = 0;
  *(this + 20) = 0u;
  *(this + 90) = 0;
  *(this + 344) = 0u;
  *(this + 96) = 0;
  *(this + 23) = 0u;
  *(this + 156) = 0;
  *(this + 38) = 0u;
  *(this + 164) = 0;
  *(this + 40) = 0u;
  *(this + 176) = 0;
  *(this + 43) = 0u;
  *(this + 182) = 0;
  *(this + 712) = 0u;
  *(this + 218) = 0;
  *(this + 856) = 0u;
  *(this + 246) = 0;
  *(this + 968) = 0u;
  *(this + 252) = 0;
  *(this + 62) = 0u;
  *(this + 258) = 0;
  *(this + 1016) = 0u;
  *(this + 266) = 0;
  *(this + 1048) = 0u;
  *(this + 274) = 0;
  *(this + 1080) = 0u;
  *(this + 280) = 0;
  *(this + 69) = 0u;
  *(this + 286) = 0;
  *(this + 1128) = 0u;
  *(this + 292) = 0;
  *(this + 72) = 0u;
  *(this + 298) = 0;
  *(this + 1176) = 0u;
  *(this + 304) = 0;
  *(this + 75) = 0u;
  *(this + 310) = 0;
  *(this + 1224) = 0u;
  *(this + 316) = 0;
  *(this + 78) = 0u;
  *(this + 322) = 0;
  *(this + 1272) = 0u;
  *(this + 328) = 0;
  *(this + 81) = 0u;
  *(this + 334) = 0;
  *(this + 1320) = 0u;
  *(this + 339) = 0;
  *this = &unk_2A1D50628;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 79) = 0;
  *(this + 134) = 0;
  *(this + 168) = 0;
  *(this + 338) = 0;
  *(this + 85) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 75) = 0;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = 0u;
  *(this + 85) = 0;
  *(this + 664) = 0u;
  *(this + 106) = 0;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 46) = 0u;
  *(this + 120) = 0;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 55) = 0u;
  *(this + 1043) = 0;
  *(this + 260) = 0;
  awd::metrics::LocationGPSSessionStatistics::MergeFrom(this, a2);
  return this;
}

void sub_29644D1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t *a18, uint64_t *a19, uint64_t *a20, uint64_t *a21, uint64_t *a22, uint64_t *a23, uint64_t *a24, uint64_t *a25)
{
  v37 = v26;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal>::TypeHandler>(v28);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v25 + 162);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v33);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v25 + 156);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v37);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v25 + 150);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v31);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v25 + 144);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v30);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(v25 + 138);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(a17);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(a18);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(a19);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v25 + 124);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(a20);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(a21);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(a22);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(v25 + 86);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(v25 + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(v25 + 76);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(v25 + 46);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(a23);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(v25 + 40);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(a24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v25 + 34);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v29);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(v34);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v27);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(v32);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(a25);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(*(v35 - 120));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(*(v35 - 112));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(*(v35 - 104));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(*(v35 - 96));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v25);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics::MergeFrom(awd::metrics::LocationGPSSessionStatistics *this, const awd::metrics::LocationGPSSessionStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v108);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>((this + 56), a2 + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>((this + 80), a2 + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>((this + 104), a2 + 104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 128), a2 + 128);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 152), a2 + 152);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 176), a2 + 176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 200), a2 + 200);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 224), a2 + 224);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 248), a2 + 248);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 272), a2 + 272);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 296), a2 + 296);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>((this + 320), a2 + 320);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>((this + 344), a2 + 344);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>((this + 368), a2 + 368);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>((this + 608), a2 + 608);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>((this + 640), a2 + 640);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>((this + 688), a2 + 688);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>((this + 712), a2 + 712);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>((this + 856), a2 + 856);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 968), a2 + 968);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 992), a2 + 992);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>((this + 1016), a2 + 1016);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>((this + 1048), a2 + 1048);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>((this + 1080), a2 + 1080);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>((this + 1104), a2 + 1104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 1128), a2 + 1128);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 1152), a2 + 1152);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 1176), a2 + 1176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>((this + 1200), a2 + 1200);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 1224), a2 + 1224);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 1248), a2 + 1248);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 1272), a2 + 1272);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>((this + 1296), a2 + 1296);
  v4 = *(this + 332);
  v5 = *(a2 + 332);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1320));
  LODWORD(v6) = *(a2 + 332);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v108);
      }

      v8 = *(*(a2 + 165) + 8 * v7);
      v9 = *(this + 332);
      v10 = *(this + 333);
      if (v9 >= v10)
      {
        if (v10 == *(this + 334))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1320));
          v10 = *(this + 333);
        }

        *(this + 333) = v10 + 1;
        operator new();
      }

      v11 = *(this + 165);
      *(this + 332) = v9 + 1;
      awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergeFrom(*(v11 + 8 * v9), v8);
      ++v7;
      v6 = *(a2 + 332);
    }

    while (v7 < v6);
  }

  v12 = *(a2 + 340);
  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12)
  {
    v20 = *(a2 + 1);
    *(this + 340) |= 1u;
    *(this + 1) = v20;
    v12 = *(a2 + 340);
    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_77;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

  v21 = *(a2 + 2);
  *(this + 340) |= 2u;
  v22 = *(this + 2);
  if (v22 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v22, v21);
  v12 = *(a2 + 340);
  if ((v12 & 4) == 0)
  {
LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_77:
  v23 = *(a2 + 3);
  *(this + 340) |= 4u;
  *(this + 3) = v23;
  v12 = *(a2 + 340);
  if ((v12 & 8) == 0)
  {
LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_78:
  v24 = *(a2 + 10);
  *(this + 340) |= 8u;
  *(this + 10) = v24;
  v12 = *(a2 + 340);
  if ((v12 & 0x10) == 0)
  {
LABEL_19:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_80:
    v26 = *(a2 + 11);
    *(this + 340) |= 0x20u;
    *(this + 11) = v26;
    v12 = *(a2 + 340);
    if ((v12 & 0x40) == 0)
    {
LABEL_21:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_81;
  }

LABEL_79:
  v25 = *(a2 + 4);
  *(this + 340) |= 0x10u;
  *(this + 4) = v25;
  v12 = *(a2 + 340);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_80;
  }

LABEL_20:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_81:
  v27 = *(a2 + 12);
  *(this + 340) |= 0x40u;
  *(this + 12) = v27;
  v12 = *(a2 + 340);
  if ((v12 & 0x80) != 0)
  {
LABEL_22:
    v13 = *(a2 + 13);
    *(this + 340) |= 0x80u;
    *(this + 13) = v13;
    v12 = *(a2 + 340);
  }

LABEL_23:
  if ((v12 & 0x400) != 0)
  {
    v14 = *(a2 + 108);
    *(this + 340) |= 0x400u;
    *(this + 108) = v14;
    v12 = *(a2 + 340);
  }

  if ((v12 & 0x800000) != 0)
  {
    v15 = *(a2 + 49);
    *(this + 340) |= 0x800000u;
    *(this + 49) = v15;
    v12 = *(a2 + 340);
  }

  if (HIBYTE(v12))
  {
    if ((v12 & 0x1000000) != 0)
    {
      v49 = *(a2 + 50);
      *(this + 340) |= 0x1000000u;
      *(this + 50) = v49;
      v12 = *(a2 + 340);
      if ((v12 & 0x2000000) == 0)
      {
LABEL_30:
        if ((v12 & 0x4000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_110;
      }
    }

    else if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    v50 = *(a2 + 51);
    *(this + 340) |= 0x2000000u;
    *(this + 51) = v50;
    v12 = *(a2 + 340);
    if ((v12 & 0x4000000) == 0)
    {
LABEL_31:
      if ((v12 & 0x8000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_111;
    }

LABEL_110:
    v51 = *(a2 + 52);
    *(this + 340) |= 0x4000000u;
    *(this + 52) = v51;
    v12 = *(a2 + 340);
    if ((v12 & 0x8000000) == 0)
    {
LABEL_32:
      if ((v12 & 0x10000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_112;
    }

LABEL_111:
    v52 = *(a2 + 53);
    *(this + 340) |= 0x8000000u;
    *(this + 53) = v52;
    v12 = *(a2 + 340);
    if ((v12 & 0x10000000) == 0)
    {
LABEL_33:
      if ((v12 & 0x20000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_113;
    }

LABEL_112:
    v53 = *(a2 + 576);
    *(this + 340) |= 0x10000000u;
    *(this + 576) = v53;
    v12 = *(a2 + 340);
    if ((v12 & 0x20000000) == 0)
    {
LABEL_34:
      if ((v12 & 0x40000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_114;
    }

LABEL_113:
    v54 = *(a2 + 577);
    *(this + 340) |= 0x20000000u;
    *(this + 577) = v54;
    v12 = *(a2 + 340);
    if ((v12 & 0x40000000) == 0)
    {
LABEL_35:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_115:
      v56 = *(a2 + 56);
      *(this + 340) |= 0x80000000;
      *(this + 56) = v56;
      goto LABEL_36;
    }

LABEL_114:
    v55 = *(a2 + 55);
    *(this + 340) |= 0x40000000u;
    *(this + 55) = v55;
    if ((*(a2 + 340) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_115;
  }

LABEL_36:
  v16 = *(a2 + 341);
  if (!v16)
  {
    goto LABEL_46;
  }

  if (v16)
  {
    v28 = *(a2 + 57);
    *(this + 341) |= 1u;
    *(this + 57) = v28;
    v16 = *(a2 + 341);
    if ((v16 & 2) == 0)
    {
LABEL_39:
      if ((v16 & 4) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_85;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_39;
  }

  v29 = *(a2 + 58);
  *(this + 341) |= 2u;
  *(this + 58) = v29;
  v16 = *(a2 + 341);
  if ((v16 & 4) == 0)
  {
LABEL_40:
    if ((v16 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  v30 = *(a2 + 59);
  *(this + 341) |= 4u;
  *(this + 59) = v30;
  v16 = *(a2 + 341);
  if ((v16 & 8) == 0)
  {
LABEL_41:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  v31 = *(a2 + 60);
  *(this + 341) |= 8u;
  *(this + 60) = v31;
  v16 = *(a2 + 341);
  if ((v16 & 0x10) == 0)
  {
LABEL_42:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  v32 = *(a2 + 61);
  *(this + 341) |= 0x10u;
  *(this + 61) = v32;
  v16 = *(a2 + 341);
  if ((v16 & 0x20) == 0)
  {
LABEL_43:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_89;
  }

LABEL_88:
  v33 = *(a2 + 62);
  *(this + 341) |= 0x20u;
  *(this + 62) = v33;
  v16 = *(a2 + 341);
  if ((v16 & 0x40) == 0)
  {
LABEL_44:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_89:
  v34 = *(a2 + 63);
  *(this + 341) |= 0x40u;
  *(this + 63) = v34;
  v16 = *(a2 + 341);
  if ((v16 & 0x80) != 0)
  {
LABEL_45:
    v17 = *(a2 + 64);
    *(this + 341) |= 0x80u;
    *(this + 64) = v17;
    v16 = *(a2 + 341);
  }

LABEL_46:
  if ((v16 & 0xFF00) == 0)
  {
    goto LABEL_56;
  }

  if ((v16 & 0x100) != 0)
  {
    v35 = *(a2 + 65);
    *(this + 341) |= 0x100u;
    *(this + 65) = v35;
    v16 = *(a2 + 341);
    if ((v16 & 0x200) == 0)
    {
LABEL_49:
      if ((v16 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_93;
    }
  }

  else if ((v16 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  v36 = *(a2 + 66);
  *(this + 341) |= 0x200u;
  *(this + 66) = v36;
  v16 = *(a2 + 341);
  if ((v16 & 0x400) == 0)
  {
LABEL_50:
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_94;
  }

LABEL_93:
  v37 = *(a2 + 67);
  *(this + 341) |= 0x400u;
  *(this + 67) = v37;
  v16 = *(a2 + 341);
  if ((v16 & 0x800) == 0)
  {
LABEL_51:
    if ((v16 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_95;
  }

LABEL_94:
  v38 = *(a2 + 68);
  *(this + 341) |= 0x800u;
  *(this + 68) = v38;
  v16 = *(a2 + 341);
  if ((v16 & 0x1000) == 0)
  {
LABEL_52:
    if ((v16 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_96;
  }

LABEL_95:
  v39 = *(a2 + 69);
  *(this + 341) |= 0x1000u;
  *(this + 69) = v39;
  v16 = *(a2 + 341);
  if ((v16 & 0x2000) == 0)
  {
LABEL_53:
    if ((v16 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_97;
  }

LABEL_96:
  v40 = *(a2 + 70);
  *(this + 341) |= 0x2000u;
  *(this + 70) = v40;
  v16 = *(a2 + 341);
  if ((v16 & 0x4000) == 0)
  {
LABEL_54:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_97:
  v41 = *(a2 + 71);
  *(this + 341) |= 0x4000u;
  *(this + 71) = v41;
  v16 = *(a2 + 341);
  if ((v16 & 0x8000) != 0)
  {
LABEL_55:
    v18 = *(a2 + 109);
    *(this + 341) |= 0x8000u;
    *(this + 109) = v18;
    v16 = *(a2 + 341);
  }

LABEL_56:
  if ((v16 & 0xFF0000) == 0)
  {
    goto LABEL_66;
  }

  if ((v16 & 0x10000) != 0)
  {
    v42 = *(a2 + 145);
    *(this + 341) |= 0x10000u;
    *(this + 145) = v42;
    v16 = *(a2 + 341);
    if ((v16 & 0x20000) == 0)
    {
LABEL_59:
      if ((v16 & 0x40000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }
  }

  else if ((v16 & 0x20000) == 0)
  {
    goto LABEL_59;
  }

  v43 = *(a2 + 146);
  *(this + 341) |= 0x20000u;
  *(this + 146) = v43;
  v16 = *(a2 + 341);
  if ((v16 & 0x40000) == 0)
  {
LABEL_60:
    if ((v16 & 0x80000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_102;
  }

LABEL_101:
  v44 = *(a2 + 147);
  *(this + 341) |= 0x40000u;
  *(this + 147) = v44;
  v16 = *(a2 + 341);
  if ((v16 & 0x80000) == 0)
  {
LABEL_61:
    if ((v16 & 0x100000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_104;
  }

LABEL_102:
  v45 = *(a2 + 148);
  if (v45 >= 0xD)
  {
    awd::metrics::LocationGPSSessionStatistics::MergeFrom();
  }

  *(this + 341) |= 0x80000u;
  *(this + 148) = v45;
  v16 = *(a2 + 341);
  if ((v16 & 0x100000) == 0)
  {
LABEL_62:
    if ((v16 & 0x200000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_105;
  }

LABEL_104:
  v46 = *(a2 + 149);
  *(this + 341) |= 0x100000u;
  *(this + 149) = v46;
  v16 = *(a2 + 341);
  if ((v16 & 0x200000) == 0)
  {
LABEL_63:
    if ((v16 & 0x400000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_106;
  }

LABEL_105:
  v47 = *(a2 + 150);
  *(this + 341) |= 0x200000u;
  *(this + 150) = v47;
  v16 = *(a2 + 341);
  if ((v16 & 0x400000) == 0)
  {
LABEL_64:
    if ((v16 & 0x800000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_106:
  v48 = *(a2 + 151);
  *(this + 341) |= 0x400000u;
  *(this + 151) = v48;
  v16 = *(a2 + 341);
  if ((v16 & 0x800000) != 0)
  {
LABEL_65:
    v19 = *(a2 + 578);
    *(this + 341) |= 0x800000u;
    *(this + 578) = v19;
    v16 = *(a2 + 341);
  }

LABEL_66:
  if (!(v16 >> 25))
  {
    goto LABEL_122;
  }

  if ((v16 & 0x2000000) != 0)
  {
    v57 = *(a2 + 79);
    *(this + 341) |= 0x2000000u;
    *(this + 79) = v57;
    v16 = *(a2 + 341);
    if ((v16 & 0x8000000) == 0)
    {
LABEL_69:
      if ((v16 & 0x10000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_118;
    }
  }

  else if ((v16 & 0x8000000) == 0)
  {
    goto LABEL_69;
  }

  v58 = *(a2 + 83);
  *(this + 341) |= 0x8000000u;
  *(this + 83) = v58;
  v16 = *(a2 + 341);
  if ((v16 & 0x10000000) == 0)
  {
LABEL_70:
    if ((v16 & 0x20000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_119:
    v60 = *(a2 + 85);
    *(this + 341) |= 0x20000000u;
    *(this + 85) = v60;
    if ((*(a2 + 341) & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_120;
  }

LABEL_118:
  v59 = *(a2 + 84);
  *(this + 341) |= 0x10000000u;
  *(this + 84) = v59;
  v16 = *(a2 + 341);
  if ((v16 & 0x20000000) != 0)
  {
    goto LABEL_119;
  }

LABEL_71:
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_122;
  }

LABEL_120:
  v61 = *(a2 + 202);
  if (v61 >= 0xE)
  {
    awd::metrics::LocationGPSSessionStatistics::MergeFrom();
  }

  *(this + 341) |= 0x80000000;
  *(this + 202) = v61;
LABEL_122:
  v62 = *(a2 + 342);
  if ((v62 & 0x1FE) == 0)
  {
    goto LABEL_131;
  }

  if ((v62 & 2) != 0)
  {
    v73 = *(a2 + 92);
    *(this + 342) |= 2u;
    *(this + 92) = v73;
    v62 = *(a2 + 342);
    if ((v62 & 4) == 0)
    {
LABEL_125:
      if ((v62 & 8) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_186;
    }
  }

  else if ((v62 & 4) == 0)
  {
    goto LABEL_125;
  }

  v74 = *(a2 + 93);
  *(this + 342) |= 4u;
  *(this + 93) = v74;
  v62 = *(a2 + 342);
  if ((v62 & 8) == 0)
  {
LABEL_126:
    if ((v62 & 0x10) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_187;
  }

LABEL_186:
  v75 = *(a2 + 94);
  *(this + 342) |= 8u;
  *(this + 94) = v75;
  v62 = *(a2 + 342);
  if ((v62 & 0x10) == 0)
  {
LABEL_127:
    if ((v62 & 0x20) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_188;
  }

LABEL_187:
  v76 = *(a2 + 95);
  *(this + 342) |= 0x10u;
  *(this + 95) = v76;
  v62 = *(a2 + 342);
  if ((v62 & 0x20) == 0)
  {
LABEL_128:
    if ((v62 & 0x40) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_189;
  }

LABEL_188:
  v77 = *(a2 + 96);
  *(this + 342) |= 0x20u;
  *(this + 96) = v77;
  v62 = *(a2 + 342);
  if ((v62 & 0x40) == 0)
  {
LABEL_129:
    if ((v62 & 0x80) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

LABEL_189:
  v78 = *(a2 + 97);
  *(this + 342) |= 0x40u;
  *(this + 97) = v78;
  v62 = *(a2 + 342);
  if ((v62 & 0x80) != 0)
  {
LABEL_130:
    v63 = *(a2 + 98);
    *(this + 342) |= 0x80u;
    *(this + 98) = v63;
    v62 = *(a2 + 342);
  }

LABEL_131:
  if ((v62 & 0xFF00) == 0)
  {
    goto LABEL_141;
  }

  if ((v62 & 0x100) != 0)
  {
    v79 = *(a2 + 99);
    *(this + 342) |= 0x100u;
    *(this + 99) = v79;
    v62 = *(a2 + 342);
    if ((v62 & 0x200) == 0)
    {
LABEL_134:
      if ((v62 & 0x400) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_193;
    }
  }

  else if ((v62 & 0x200) == 0)
  {
    goto LABEL_134;
  }

  v80 = *(a2 + 100);
  *(this + 342) |= 0x200u;
  *(this + 100) = v80;
  v62 = *(a2 + 342);
  if ((v62 & 0x400) == 0)
  {
LABEL_135:
    if ((v62 & 0x800) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_194;
  }

LABEL_193:
  v81 = *(a2 + 102);
  *(this + 342) |= 0x400u;
  *(this + 102) = v81;
  v62 = *(a2 + 342);
  if ((v62 & 0x800) == 0)
  {
LABEL_136:
    if ((v62 & 0x1000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_195;
  }

LABEL_194:
  v82 = *(a2 + 103);
  *(this + 342) |= 0x800u;
  *(this + 103) = v82;
  v62 = *(a2 + 342);
  if ((v62 & 0x1000) == 0)
  {
LABEL_137:
    if ((v62 & 0x2000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_196;
  }

LABEL_195:
  v83 = *(a2 + 104);
  *(this + 342) |= 0x1000u;
  *(this + 104) = v83;
  v62 = *(a2 + 342);
  if ((v62 & 0x2000) == 0)
  {
LABEL_138:
    if ((v62 & 0x4000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_197;
  }

LABEL_196:
  v84 = *(a2 + 105);
  *(this + 342) |= 0x2000u;
  *(this + 105) = v84;
  v62 = *(a2 + 342);
  if ((v62 & 0x4000) == 0)
  {
LABEL_139:
    if ((v62 & 0x8000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

LABEL_197:
  v85 = *(a2 + 106);
  *(this + 342) |= 0x4000u;
  *(this + 106) = v85;
  v62 = *(a2 + 342);
  if ((v62 & 0x8000) != 0)
  {
LABEL_140:
    v64 = *(a2 + 579);
    *(this + 342) |= 0x8000u;
    *(this + 579) = v64;
    v62 = *(a2 + 342);
  }

LABEL_141:
  if ((v62 & 0x1FE0000) == 0)
  {
    goto LABEL_150;
  }

  if ((v62 & 0x20000) != 0)
  {
    v86 = *(a2 + 110);
    *(this + 342) |= 0x20000u;
    *(this + 110) = v86;
    v62 = *(a2 + 342);
    if ((v62 & 0x40000) == 0)
    {
LABEL_144:
      if ((v62 & 0x80000) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_201;
    }
  }

  else if ((v62 & 0x40000) == 0)
  {
    goto LABEL_144;
  }

  v87 = *(a2 + 111);
  *(this + 342) |= 0x40000u;
  *(this + 111) = v87;
  v62 = *(a2 + 342);
  if ((v62 & 0x80000) == 0)
  {
LABEL_145:
    if ((v62 & 0x100000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_202;
  }

LABEL_201:
  v88 = *(a2 + 1044);
  *(this + 342) |= 0x80000u;
  *(this + 1044) = v88;
  v62 = *(a2 + 342);
  if ((v62 & 0x100000) == 0)
  {
LABEL_146:
    if ((v62 & 0x200000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_203;
  }

LABEL_202:
  v89 = *(a2 + 203);
  *(this + 342) |= 0x100000u;
  *(this + 203) = v89;
  v62 = *(a2 + 342);
  if ((v62 & 0x200000) == 0)
  {
LABEL_147:
    if ((v62 & 0x400000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_204;
  }

LABEL_203:
  v90 = *(a2 + 224);
  *(this + 342) |= 0x200000u;
  *(this + 224) = v90;
  v62 = *(a2 + 342);
  if ((v62 & 0x400000) == 0)
  {
LABEL_148:
    if ((v62 & 0x800000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_204:
  v91 = *(a2 + 225);
  *(this + 342) |= 0x400000u;
  *(this + 225) = v91;
  v62 = *(a2 + 342);
  if ((v62 & 0x800000) != 0)
  {
LABEL_149:
    v65 = *(a2 + 113);
    *(this + 342) |= 0x800000u;
    *(this + 113) = v65;
    v62 = *(a2 + 342);
  }

LABEL_150:
  if (!HIBYTE(v62))
  {
    goto LABEL_159;
  }

  if ((v62 & 0x1000000) != 0)
  {
    *(this + 342) |= 0x1000000u;
    v97 = *(this + 114);
    if (!v97)
    {
      operator new();
    }

    v98 = *(a2 + 114);
    if (!v98)
    {
      v98 = *(awd::metrics::LocationGPSSessionStatistics::default_instance_ + 912);
    }

    awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom(v97, v98);
    v62 = *(a2 + 342);
    if ((v62 & 0x2000000) == 0)
    {
LABEL_153:
      if ((v62 & 0x4000000) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_218;
    }
  }

  else if ((v62 & 0x2000000) == 0)
  {
    goto LABEL_153;
  }

  v99 = *(a2 + 230);
  *(this + 342) |= 0x2000000u;
  *(this + 230) = v99;
  v62 = *(a2 + 342);
  if ((v62 & 0x4000000) == 0)
  {
LABEL_154:
    if ((v62 & 0x8000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_219;
  }

LABEL_218:
  v100 = *(a2 + 231);
  *(this + 342) |= 0x4000000u;
  *(this + 231) = v100;
  v62 = *(a2 + 342);
  if ((v62 & 0x8000000) == 0)
  {
LABEL_155:
    if ((v62 & 0x10000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_220;
  }

LABEL_219:
  v101 = *(a2 + 232);
  *(this + 342) |= 0x8000000u;
  *(this + 232) = v101;
  v62 = *(a2 + 342);
  if ((v62 & 0x10000000) == 0)
  {
LABEL_156:
    if ((v62 & 0x20000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_221;
  }

LABEL_220:
  v102 = *(a2 + 233);
  *(this + 342) |= 0x10000000u;
  *(this + 233) = v102;
  v62 = *(a2 + 342);
  if ((v62 & 0x20000000) == 0)
  {
LABEL_157:
    if ((v62 & 0x40000000) == 0)
    {
      goto LABEL_158;
    }

LABEL_222:
    v104 = *(a2 + 235);
    *(this + 342) |= 0x40000000u;
    *(this + 235) = v104;
    if ((*(a2 + 342) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_223;
  }

LABEL_221:
  v103 = *(a2 + 234);
  *(this + 342) |= 0x20000000u;
  *(this + 234) = v103;
  v62 = *(a2 + 342);
  if ((v62 & 0x40000000) != 0)
  {
    goto LABEL_222;
  }

LABEL_158:
  if ((v62 & 0x80000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_223:
  v105 = *(a2 + 236);
  *(this + 342) |= 0x80000000;
  *(this + 236) = v105;
LABEL_159:
  v66 = *(a2 + 343);
  if (!v66)
  {
    goto LABEL_167;
  }

  if (v66)
  {
    v92 = *(a2 + 237);
    *(this + 343) |= 1u;
    *(this + 237) = v92;
    v66 = *(a2 + 343);
    if ((v66 & 2) == 0)
    {
LABEL_162:
      if ((v66 & 4) == 0)
      {
        goto LABEL_163;
      }

      goto LABEL_208;
    }
  }

  else if ((v66 & 2) == 0)
  {
    goto LABEL_162;
  }

  v93 = *(a2 + 238);
  *(this + 343) |= 2u;
  *(this + 238) = v93;
  v66 = *(a2 + 343);
  if ((v66 & 4) == 0)
  {
LABEL_163:
    if ((v66 & 8) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_209;
  }

LABEL_208:
  v94 = *(a2 + 239);
  *(this + 343) |= 4u;
  *(this + 239) = v94;
  v66 = *(a2 + 343);
  if ((v66 & 8) == 0)
  {
LABEL_164:
    if ((v66 & 0x10) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_210;
  }

LABEL_209:
  v95 = *(a2 + 240);
  *(this + 343) |= 8u;
  *(this + 240) = v95;
  v66 = *(a2 + 343);
  if ((v66 & 0x10) == 0)
  {
LABEL_165:
    if ((v66 & 0x20) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

LABEL_210:
  v96 = *(a2 + 241);
  *(this + 343) |= 0x10u;
  *(this + 241) = v96;
  v66 = *(a2 + 343);
  if ((v66 & 0x20) != 0)
  {
LABEL_166:
    v67 = *(a2 + 260);
    *(this + 343) |= 0x20u;
    *(this + 260) = v67;
    v66 = *(a2 + 343);
  }

LABEL_167:
  if ((v66 & 0x400) != 0)
  {
    *(this + 343) |= 0x400u;
    v68 = *(this + 134);
    if (!v68)
    {
      operator new();
    }

    v69 = *(a2 + 134);
    if (!v69)
    {
      v69 = *(awd::metrics::LocationGPSSessionStatistics::default_instance_ + 1072);
    }

    awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergeFrom(v68, v69);
    v66 = *(a2 + 343);
  }

  if ((v66 & 0x1FE00000) != 0)
  {
    if ((v66 & 0x200000) != 0)
    {
      v70 = *(a2 + 1045);
      *(this + 343) |= 0x200000u;
      *(this + 1045) = v70;
      v66 = *(a2 + 343);
    }

    if ((v66 & 0x400000) != 0)
    {
      v71 = *(a2 + 1046);
      *(this + 343) |= 0x400000u;
      *(this + 1046) = v71;
      v66 = *(a2 + 343);
    }
  }

  if (HIBYTE(v66))
  {
    if ((v66 & 0x1000000) != 0)
    {
      v106 = *(a2 + 336);
      *(this + 343) |= 0x1000000u;
      *(this + 336) = v106;
      v66 = *(a2 + 343);
      if ((v66 & 0x2000000) == 0)
      {
LABEL_181:
        if ((v66 & 0x4000000) == 0)
        {
          return;
        }

        goto LABEL_182;
      }
    }

    else if ((v66 & 0x2000000) == 0)
    {
      goto LABEL_181;
    }

    v107 = *(a2 + 337);
    *(this + 343) |= 0x2000000u;
    *(this + 337) = v107;
    if ((*(a2 + 343) & 0x4000000) != 0)
    {
LABEL_182:
      v72 = *(a2 + 338);
      *(this + 343) |= 0x4000000u;
      *(this + 338) = v72;
    }
  }
}

void sub_29644E33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics::~LocationGPSSessionStatistics(awd::metrics::LocationGPSSessionStatistics *this)
{
  *this = &unk_2A1D50628;
  awd::metrics::LocationGPSSessionStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal>::TypeHandler>(this + 165);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 162);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 159);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 156);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 153);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 150);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 147);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 144);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 141);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(this + 138);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(this + 135);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(this + 131);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(this + 127);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 124);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 121);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(this + 107);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(this + 89);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(this + 86);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(this + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(this + 76);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(this + 46);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(this + 43);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(this + 40);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 37);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 34);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 31);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 28);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 25);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 22);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 19);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(this + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(this + 7);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationGPSSessionStatistics::~LocationGPSSessionStatistics(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationGPSSessionStatistics::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  if (awd::metrics::LocationGPSSessionStatistics::default_instance_ != v1)
  {
    v4 = v1[114];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[134];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics::default_instance(awd::metrics::LocationGPSSessionStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics::Clear(awd::metrics::LocationGPSSessionStatistics *this)
{
  v2 = *(this + 340);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
      if (v3 != MEMORY[0x29EDC9758])
      {
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
      }
    }

    *(this + 40) = 0u;
    *(this + 24) = 0u;
    v2 = *(this + 340);
  }

  if ((v2 & 0x3FC00) != 0)
  {
    *(this + 108) = 0;
  }

  if ((v2 & 0x7F800000) != 0)
  {
    *(this + 49) = 0;
  }

  if (HIBYTE(v2))
  {
    *(this + 288) = 0;
    *(this + 25) = 0u;
    *(this + 26) = 0u;
    *(this + 55) = 0;
    *(this + 56) = 0;
  }

  v4 = *(this + 341);
  if (v4)
  {
    *(this + 488) = 0u;
    *(this + 504) = 0u;
    *(this + 456) = 0u;
    *(this + 472) = 0u;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(this + 109) = 0;
    *(this + 71) = 0;
    *(this + 520) = 0u;
    *(this + 536) = 0u;
    *(this + 552) = 0u;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(this + 578) = 0;
    *(this + 151) = 0;
    *(this + 588) = 0;
    *(this + 596) = 0;
    *(this + 580) = 0;
  }

  if (v4 >> 25)
  {
    *(this + 79) = 0;
    *(this + 202) = 0;
    *(this + 83) = 0;
    *(this + 85) = 0;
    *(this + 84) = 0;
  }

  v5 = *(this + 342);
  if ((v5 & 0x1FE) != 0)
  {
    *(this + 98) = 0;
    *(this + 47) = 0u;
    *(this + 48) = 0u;
    *(this + 46) = 0u;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(this + 579) = 0;
    *(this + 792) = 0u;
    *(this + 51) = 0u;
    *(this + 52) = 0u;
    *(this + 106) = 0;
  }

  if ((v5 & 0x1FE0000) != 0)
  {
    *(this + 1044) = 0;
    *(this + 203) = 0;
    *(this + 55) = 0u;
    *(this + 56) = 0u;
  }

  if (HIBYTE(v5))
  {
    if ((v5 & 0x1000000) != 0)
    {
      v6 = *(this + 114);
      if (v6)
      {
        v7 = *(v6 + 72);
        if (v7)
        {
          *(v6 + 40) = 0;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        if ((v7 & 0xFF00) != 0)
        {
          *(v6 + 48) = 0;
          *(v6 + 56) = 0;
          *(v6 + 64) = 0;
        }

        *(v6 + 72) = 0;
      }
    }

    *(this + 236) = 0;
    *(this + 117) = 0;
    *(this + 920) = 0u;
  }

  v8 = *(this + 343);
  if (v8)
  {
    *(this + 260) = 0;
    *(this + 241) = 0;
    *(this + 948) = 0u;
  }

  if ((v8 & 0x400) != 0)
  {
    v9 = *(this + 134);
    if (v9)
    {
      if (*(v9 + 28))
      {
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
      }

      *(v9 + 28) = 0;
      v8 = *(this + 343);
    }
  }

  if ((v8 & 0x1FE00000) != 0)
  {
    *(this + 1045) = 0;
  }

  v10 = (this + 1360);
  if (HIBYTE(v8))
  {
    *(this + 168) = 0;
    *(this + 338) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(this + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData>::TypeHandler>(this + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData>::TypeHandler>(this + 104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 128);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 152);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 200);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 224);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 248);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 272);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 296);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MotionActivityData>::TypeHandler>(this + 320);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MovingStateData>::TypeHandler>(this + 344);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_MountedStateData>::TypeHandler>(this + 368);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(this + 608);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerStateData>::TypeHandler>(this + 640);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData>::TypeHandler>(this + 688);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData>::TypeHandler>(this + 712);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChecksumData>::TypeHandler>(this + 856);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 968);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 992);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ChargerTypeData>::TypeHandler>(this + 1016);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_ThermalLevelData>::TypeHandler>(this + 1048);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSForceOffReason>::TypeHandler>(this + 1080);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_NSOnOffState>::TypeHandler>(this + 1104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 1128);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 1152);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 1176);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData>::TypeHandler>(this + 1200);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 1224);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 1248);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 1272);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData>::TypeHandler>(this + 1296);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal>::TypeHandler>(this + 1320);
  *v10 = 0;
  *(this + 171) = 0;
  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v666 = (this + 520);
  v667 = (this + 512);
  v664 = (this + 536);
  v665 = (this + 528);
  v662 = (this + 552);
  v663 = (this + 544);
  v660 = (this + 568);
  v661 = (this + 560);
  v638 = (this + 604);
  v631 = (this + 664);
  v632 = (this + 632);
  v630 = (this + 736);
  v635 = (this + 744);
  v636 = (this + 672);
  v640 = (this + 752);
  v641 = (this + 680);
  v643 = (this + 760);
  v645 = (this + 768);
  v647 = (this + 776);
  v651 = (this + 784);
  v652 = (this + 792);
  v658 = (this + 816);
  v659 = (this + 800);
  v656 = (this + 832);
  v657 = (this + 824);
  v654 = (this + 848);
  v655 = (this + 840);
  v637 = (this + 888);
  v633 = (this + 880);
  v634 = (this + 920);
  v639 = (this + 924);
  v642 = (this + 928);
  v644 = (this + 932);
  v646 = (this + 936);
  v648 = (this + 940);
  v649 = (this + 944);
  v650 = (this + 904);
  v653 = (this + 948);
  v4 = (this + 952);
  v5 = (this + 956);
  v6 = (this + 960);
  v7 = (this + 964);
  v8 = (this + 1040);
LABEL_2:
  while (2)
  {
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || (TagFallback = *v9, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v9 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v11 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64(a2, this + 1);
        if (result)
        {
          v13 = *(this + 340) | 1;
          *(this + 340) = v13;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 18)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_137;
          }

          continue;
        }

        return result;
      case 2u:
        if (v11 != 2)
        {
          goto LABEL_265;
        }

        v13 = *(this + 340);
LABEL_137:
        *(this + 340) = v13 | 2;
        if (*(this + 2) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (result)
        {
          v65 = *(a2 + 1);
          v54 = *(a2 + 2);
          if (v65 < v54 && *v65 == 24)
          {
            v61 = v65 + 1;
            *(a2 + 1) = v61;
            goto LABEL_143;
          }

          continue;
        }

        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v61 = *(a2 + 1);
        v54 = *(a2 + 2);
LABEL_143:
        if (v61 >= v54 || (v66 = *v61, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v66;
          v67 = v61 + 1;
          *(a2 + 1) = v67;
        }

        *(this + 340) |= 4u;
        if (v67 < v54 && *v67 == 32)
        {
          v64 = v67 + 1;
          *(a2 + 1) = v64;
          goto LABEL_274;
        }

        continue;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v64 = *(a2 + 1);
        v54 = *(a2 + 2);
LABEL_274:
        if (v64 >= v54 || (v112 = *v64, v112 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v113 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v112;
          v113 = v64 + 1;
          *(a2 + 1) = v113;
        }

        *(this + 340) |= 8u;
        if (v113 >= v54 || *v113 != 40)
        {
          continue;
        }

        v55 = v113 + 1;
        *(a2 + 1) = v55;
LABEL_282:
        if (v55 >= v54 || (v114 = *v55, v114 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v115 = *(a2 + 1);
          v54 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v114;
          v115 = v55 + 1;
          *(a2 + 1) = v115;
        }

        *(this + 340) |= 0x10u;
        if (v115 >= v54 || *v115 != 53)
        {
          continue;
        }

        *(a2 + 1) = v115 + 1;
LABEL_290:
        v668[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v668) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = v668[0];
        *(this + 340) |= 0x20u;
        v116 = *(a2 + 1);
        if (v116 >= *(a2 + 2) || *v116 != 61)
        {
          continue;
        }

        *(a2 + 1) = v116 + 1;
LABEL_294:
        v668[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v668) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = v668[0];
        *(this + 340) |= 0x40u;
        v117 = *(a2 + 1);
        if (v117 >= *(a2 + 2) || *v117 != 69)
        {
          continue;
        }

        *(a2 + 1) = v117 + 1;
LABEL_298:
        v668[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v668) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = v668[0];
        *(this + 340) |= 0x80u;
        v118 = *(a2 + 1);
        if (v118 >= *(a2 + 2) || *v118 != 74)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v118 + 1;
LABEL_302:
          v119 = *(this + 17);
          v120 = *(this + 16);
          if (v120 >= v119)
          {
            if (v119 == *(this + 18))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
              v119 = *(this + 17);
            }

            *(this + 17) = v119 + 1;
            operator new();
          }

          v121 = *(this + 7);
          *(this + 16) = v120 + 1;
          v122 = *(v121 + 8 * v120);
          v668[0] = 0;
          v123 = *(a2 + 1);
          if (v123 >= *(a2 + 2) || *v123 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v123;
            *(a2 + 1) = v123 + 1;
          }

          v124 = *(a2 + 14);
          v125 = *(a2 + 15);
          *(a2 + 14) = v124 + 1;
          if (v124 >= v125)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergePartialFromCodedStream(v122, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v126 = *(a2 + 14);
          v127 = __OFSUB__(v126, 1);
          v128 = v126 - 1;
          if (v128 < 0 == v127)
          {
            *(a2 + 14) = v128;
          }

          v118 = *(a2 + 1);
          if (v118 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v129 = *v118;
        }

        while (v129 == 74);
        if (v129 != 82)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v118 + 1;
LABEL_320:
          v130 = *(this + 23);
          v131 = *(this + 22);
          if (v131 >= v130)
          {
            if (v130 == *(this + 24))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 80));
              v130 = *(this + 23);
            }

            *(this + 23) = v130 + 1;
            operator new();
          }

          v132 = *(this + 10);
          *(this + 22) = v131 + 1;
          v133 = *(v132 + 8 * v131);
          v668[0] = 0;
          v134 = *(a2 + 1);
          if (v134 >= *(a2 + 2) || *v134 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v134;
            *(a2 + 1) = v134 + 1;
          }

          v135 = *(a2 + 14);
          v136 = *(a2 + 15);
          *(a2 + 14) = v135 + 1;
          if (v135 >= v136)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergePartialFromCodedStream(v133, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v137 = *(a2 + 14);
          v127 = __OFSUB__(v137, 1);
          v138 = v137 - 1;
          if (v138 < 0 == v127)
          {
            *(a2 + 14) = v138;
          }

          v118 = *(a2 + 1);
          v76 = *(a2 + 2);
          if (v118 >= v76)
          {
            goto LABEL_2;
          }

          v139 = *v118;
        }

        while (v139 == 82);
        if (v139 != 88)
        {
          continue;
        }

        v77 = v118 + 1;
        *(a2 + 1) = v77;
LABEL_338:
        v668[0] = 0;
        if (v77 >= v76 || (v140 = *v77, (v140 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v140 = v668[0];
          v141 = *(a2 + 1);
          v76 = *(a2 + 2);
        }

        else
        {
          v141 = (v77 + 1);
          *(a2 + 1) = v141;
        }

        *(this + 108) = v140;
        *(this + 340) |= 0x400u;
        if (v141 >= v76 || *v141 != 98)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v141 + 1;
LABEL_346:
          v142 = *(this + 29);
          v143 = *(this + 28);
          if (v143 >= v142)
          {
            if (v142 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v142 = *(this + 29);
            }

            *(this + 29) = v142 + 1;
            operator new();
          }

          v144 = *(this + 13);
          *(this + 28) = v143 + 1;
          v145 = *(v144 + 8 * v143);
          v668[0] = 0;
          v146 = *(a2 + 1);
          if (v146 >= *(a2 + 2) || *v146 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v146;
            *(a2 + 1) = v146 + 1;
          }

          v147 = *(a2 + 14);
          v148 = *(a2 + 15);
          *(a2 + 14) = v147 + 1;
          if (v147 >= v148)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::MergePartialFromCodedStream(v145, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v149 = *(a2 + 14);
          v127 = __OFSUB__(v149, 1);
          v150 = v149 - 1;
          if (v150 < 0 == v127)
          {
            *(a2 + 14) = v150;
          }

          v141 = *(a2 + 1);
          if (v141 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v151 = *v141;
        }

        while (v151 == 98);
        if (v151 != 106)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v141 + 1;
LABEL_364:
          v152 = *(this + 35);
          v153 = *(this + 34);
          if (v153 >= v152)
          {
            if (v152 == *(this + 36))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 128));
              v152 = *(this + 35);
            }

            *(this + 35) = v152 + 1;
            operator new();
          }

          v154 = *(this + 16);
          *(this + 34) = v153 + 1;
          v155 = *(v154 + 8 * v153);
          v668[0] = 0;
          v156 = *(a2 + 1);
          if (v156 >= *(a2 + 2) || *v156 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v156;
            *(a2 + 1) = v156 + 1;
          }

          v157 = *(a2 + 14);
          v158 = *(a2 + 15);
          *(a2 + 14) = v157 + 1;
          if (v157 >= v158)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v155, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v159 = *(a2 + 14);
          v127 = __OFSUB__(v159, 1);
          v160 = v159 - 1;
          if (v160 < 0 == v127)
          {
            *(a2 + 14) = v160;
          }

          v141 = *(a2 + 1);
          if (v141 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v161 = *v141;
        }

        while (v161 == 106);
        if (v161 != 114)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v141 + 1;
LABEL_382:
          v162 = *(this + 41);
          v163 = *(this + 40);
          if (v163 >= v162)
          {
            if (v162 == *(this + 42))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152));
              v162 = *(this + 41);
            }

            *(this + 41) = v162 + 1;
            operator new();
          }

          v164 = *(this + 19);
          *(this + 40) = v163 + 1;
          v165 = *(v164 + 8 * v163);
          v668[0] = 0;
          v166 = *(a2 + 1);
          if (v166 >= *(a2 + 2) || *v166 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v166;
            *(a2 + 1) = v166 + 1;
          }

          v167 = *(a2 + 14);
          v168 = *(a2 + 15);
          *(a2 + 14) = v167 + 1;
          if (v167 >= v168)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v165, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v169 = *(a2 + 14);
          v127 = __OFSUB__(v169, 1);
          v170 = v169 - 1;
          if (v170 < 0 == v127)
          {
            *(a2 + 14) = v170;
          }

          v141 = *(a2 + 1);
          if (v141 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v171 = *v141;
        }

        while (v171 == 114);
        if (v171 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v141 + 1;
LABEL_400:
          v172 = *(this + 47);
          v173 = *(this + 46);
          if (v173 >= v172)
          {
            if (v172 == *(this + 48))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
              v172 = *(this + 47);
            }

            *(this + 47) = v172 + 1;
            operator new();
          }

          v174 = *(this + 22);
          *(this + 46) = v173 + 1;
          v175 = *(v174 + 8 * v173);
          v668[0] = 0;
          v176 = *(a2 + 1);
          if (v176 >= *(a2 + 2) || *v176 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v176;
            *(a2 + 1) = v176 + 1;
          }

          v177 = *(a2 + 14);
          v178 = *(a2 + 15);
          *(a2 + 14) = v177 + 1;
          if (v177 >= v178)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v175, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v179 = *(a2 + 14);
          v127 = __OFSUB__(v179, 1);
          v180 = v179 - 1;
          if (v180 < 0 == v127)
          {
            *(a2 + 14) = v180;
          }

          v141 = *(a2 + 1);
          v181 = *(a2 + 2);
        }

        while (v141 < v181 && *v141 == 122);
        if (v181 - v141 < 2 || *v141 != 130 || v141[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v141 + 2;
LABEL_420:
          v182 = *(this + 53);
          v183 = *(this + 52);
          if (v183 >= v182)
          {
            if (v182 == *(this + 54))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 200));
              v182 = *(this + 53);
            }

            *(this + 53) = v182 + 1;
            operator new();
          }

          v184 = *(this + 25);
          *(this + 52) = v183 + 1;
          v185 = *(v184 + 8 * v183);
          v668[0] = 0;
          v186 = *(a2 + 1);
          if (v186 >= *(a2 + 2) || *v186 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v186;
            *(a2 + 1) = v186 + 1;
          }

          v187 = *(a2 + 14);
          v188 = *(a2 + 15);
          *(a2 + 14) = v187 + 1;
          if (v187 >= v188)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v185, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v189 = *(a2 + 14);
          v127 = __OFSUB__(v189, 1);
          v190 = v189 - 1;
          if (v190 < 0 == v127)
          {
            *(a2 + 14) = v190;
          }

          v141 = *(a2 + 1);
          if (*(a2 + 4) - v141 <= 1)
          {
            goto LABEL_2;
          }

          v191 = *v141;
          if (v191 == 138)
          {
            break;
          }

          if (v191 != 130 || v141[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v141[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v141 + 2;
LABEL_441:
          v192 = *(this + 59);
          v193 = *(this + 58);
          if (v193 >= v192)
          {
            if (v192 == *(this + 60))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 224));
              v192 = *(this + 59);
            }

            *(this + 59) = v192 + 1;
            operator new();
          }

          v194 = *(this + 28);
          *(this + 58) = v193 + 1;
          v195 = *(v194 + 8 * v193);
          v668[0] = 0;
          v196 = *(a2 + 1);
          if (v196 >= *(a2 + 2) || *v196 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v196;
            *(a2 + 1) = v196 + 1;
          }

          v197 = *(a2 + 14);
          v198 = *(a2 + 15);
          *(a2 + 14) = v197 + 1;
          if (v197 >= v198)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v195, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v199 = *(a2 + 14);
          v127 = __OFSUB__(v199, 1);
          v200 = v199 - 1;
          if (v200 < 0 == v127)
          {
            *(a2 + 14) = v200;
          }

          v141 = *(a2 + 1);
          if (*(a2 + 4) - v141 <= 1)
          {
            goto LABEL_2;
          }

          v201 = *v141;
          if (v201 == 146)
          {
            break;
          }

          if (v201 != 138 || v141[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v141[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v141 + 2;
LABEL_462:
          v202 = *(this + 64);
          v203 = *(this + 65);
          if (v202 >= v203)
          {
            if (v203 == *(this + 66))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 248));
              v203 = *(this + 65);
            }

            *(this + 65) = v203 + 1;
            operator new();
          }

          v204 = *(this + 31);
          *(this + 64) = v202 + 1;
          v205 = *(v204 + 8 * v202);
          v668[0] = 0;
          v206 = *(a2 + 1);
          if (v206 >= *(a2 + 2) || *v206 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v206;
            *(a2 + 1) = v206 + 1;
          }

          v207 = *(a2 + 14);
          v208 = *(a2 + 15);
          *(a2 + 14) = v207 + 1;
          if (v207 >= v208)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v205, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v209 = *(a2 + 14);
          v127 = __OFSUB__(v209, 1);
          v210 = v209 - 1;
          if (v210 < 0 == v127)
          {
            *(a2 + 14) = v210;
          }

          v141 = *(a2 + 1);
          if (*(a2 + 4) - v141 <= 1)
          {
            goto LABEL_2;
          }

          v211 = *v141;
          if (v211 == 154)
          {
            break;
          }

          if (v211 != 146 || v141[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v141[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v141 + 2;
LABEL_483:
          v212 = *(this + 70);
          v213 = *(this + 71);
          if (v212 >= v213)
          {
            if (v213 == *(this + 72))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 272));
              v213 = *(this + 71);
            }

            *(this + 71) = v213 + 1;
            operator new();
          }

          v214 = *(this + 34);
          *(this + 70) = v212 + 1;
          v215 = *(v214 + 8 * v212);
          v668[0] = 0;
          v216 = *(a2 + 1);
          if (v216 >= *(a2 + 2) || *v216 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v216;
            *(a2 + 1) = v216 + 1;
          }

          v217 = *(a2 + 14);
          v218 = *(a2 + 15);
          *(a2 + 14) = v217 + 1;
          if (v217 >= v218)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v215, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v219 = *(a2 + 14);
          v127 = __OFSUB__(v219, 1);
          v220 = v219 - 1;
          if (v220 < 0 == v127)
          {
            *(a2 + 14) = v220;
          }

          v141 = *(a2 + 1);
          if (*(a2 + 4) - v141 <= 1)
          {
            goto LABEL_2;
          }

          v221 = *v141;
          if (v221 == 162)
          {
            break;
          }

          if (v221 != 154 || v141[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v141[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v141 + 2;
LABEL_504:
          v222 = *(this + 76);
          v223 = *(this + 77);
          if (v222 >= v223)
          {
            if (v223 == *(this + 78))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 296));
              v223 = *(this + 77);
            }

            *(this + 77) = v223 + 1;
            operator new();
          }

          v224 = *(this + 37);
          *(this + 76) = v222 + 1;
          v225 = *(v224 + 8 * v222);
          v668[0] = 0;
          v226 = *(a2 + 1);
          if (v226 >= *(a2 + 2) || *v226 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v226;
            *(a2 + 1) = v226 + 1;
          }

          v227 = *(a2 + 14);
          v228 = *(a2 + 15);
          *(a2 + 14) = v227 + 1;
          if (v227 >= v228)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v225, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v229 = *(a2 + 14);
          v127 = __OFSUB__(v229, 1);
          v230 = v229 - 1;
          if (v230 < 0 == v127)
          {
            *(a2 + 14) = v230;
          }

          v141 = *(a2 + 1);
          if (*(a2 + 4) - v141 <= 1)
          {
            goto LABEL_2;
          }

          v231 = *v141;
          if (v231 == 170)
          {
            break;
          }

          if (v231 != 162 || v141[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v141[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v141 + 2;
LABEL_525:
          v232 = *(this + 82);
          v233 = *(this + 83);
          if (v232 >= v233)
          {
            if (v233 == *(this + 84))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 320));
              v233 = *(this + 83);
            }

            *(this + 83) = v233 + 1;
            operator new();
          }

          v234 = *(this + 40);
          *(this + 82) = v232 + 1;
          v235 = *(v234 + 8 * v232);
          v668[0] = 0;
          v236 = *(a2 + 1);
          if (v236 >= *(a2 + 2) || *v236 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v236;
            *(a2 + 1) = v236 + 1;
          }

          v237 = *(a2 + 14);
          v238 = *(a2 + 15);
          *(a2 + 14) = v237 + 1;
          if (v237 >= v238)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_MotionActivityData::MergePartialFromCodedStream(v235, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v239 = *(a2 + 14);
          v127 = __OFSUB__(v239, 1);
          v240 = v239 - 1;
          if (v240 < 0 == v127)
          {
            *(a2 + 14) = v240;
          }

          v141 = *(a2 + 1);
          if (*(a2 + 4) - v141 <= 1)
          {
            goto LABEL_2;
          }

          v241 = *v141;
          if (v241 == 178)
          {
            break;
          }

          if (v241 != 170 || v141[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v141[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v141 + 2;
LABEL_546:
          v242 = *(this + 88);
          v243 = *(this + 89);
          if (v242 >= v243)
          {
            if (v243 == *(this + 90))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 344));
              v243 = *(this + 89);
            }

            *(this + 89) = v243 + 1;
            operator new();
          }

          v244 = *(this + 43);
          *(this + 88) = v242 + 1;
          v245 = *(v244 + 8 * v242);
          v668[0] = 0;
          v246 = *(a2 + 1);
          if (v246 >= *(a2 + 2) || *v246 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v246;
            *(a2 + 1) = v246 + 1;
          }

          v247 = *(a2 + 14);
          v248 = *(a2 + 15);
          *(a2 + 14) = v247 + 1;
          if (v247 >= v248)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_MovingStateData::MergePartialFromCodedStream(v245, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v249 = *(a2 + 14);
          v127 = __OFSUB__(v249, 1);
          v250 = v249 - 1;
          if (v250 < 0 == v127)
          {
            *(a2 + 14) = v250;
          }

          v141 = *(a2 + 1);
          if (*(a2 + 4) - v141 <= 1)
          {
            goto LABEL_2;
          }

          v251 = *v141;
          if (v251 == 186)
          {
            break;
          }

          if (v251 != 178 || v141[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v141[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v141 + 2;
LABEL_567:
          v252 = *(this + 94);
          v253 = *(this + 95);
          if (v252 >= v253)
          {
            if (v253 == *(this + 96))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 368));
              v253 = *(this + 95);
            }

            *(this + 95) = v253 + 1;
            operator new();
          }

          v254 = *(this + 46);
          *(this + 94) = v252 + 1;
          v255 = *(v254 + 8 * v252);
          v668[0] = 0;
          v256 = *(a2 + 1);
          if (v256 >= *(a2 + 2) || *v256 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v256;
            *(a2 + 1) = v256 + 1;
          }

          v257 = *(a2 + 14);
          v258 = *(a2 + 15);
          *(a2 + 14) = v257 + 1;
          if (v257 >= v258)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_MountedStateData::MergePartialFromCodedStream(v255, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v259 = *(a2 + 14);
          v127 = __OFSUB__(v259, 1);
          v260 = v259 - 1;
          if (v260 < 0 == v127)
          {
            *(a2 + 14) = v260;
          }

          v141 = *(a2 + 1);
          v32 = *(a2 + 2);
          if (v32 - v141 <= 1)
          {
            goto LABEL_2;
          }

          v261 = *v141;
          if (v261 == 192)
          {
            break;
          }

          if (v261 != 186 || v141[1] != 1)
          {
            goto LABEL_2;
          }
        }

        if (v141[1] != 1)
        {
          continue;
        }

        v89 = (v141 + 2);
        *(a2 + 1) = v89;
LABEL_588:
        if (v89 >= v32 || (v262 = *v89, v262 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 49);
          if (!result)
          {
            return result;
          }

          v263 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 49) = v262;
          v263 = (v89 + 1);
          *(a2 + 1) = v263;
        }

        *(this + 340) |= 0x800000u;
        if (v32 - v263 < 2 || *v263 != 200 || v263[1] != 1)
        {
          continue;
        }

        v60 = (v263 + 2);
        *(a2 + 1) = v60;
LABEL_597:
        if (v60 >= v32 || (v264 = *v60, v264 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 50);
          if (!result)
          {
            return result;
          }

          v265 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 50) = v264;
          v265 = (v60 + 1);
          *(a2 + 1) = v265;
        }

        *(this + 340) |= 0x1000000u;
        if (v32 - v265 < 2 || *v265 != 208 || v265[1] != 1)
        {
          continue;
        }

        v59 = (v265 + 2);
        *(a2 + 1) = v59;
LABEL_606:
        if (v59 >= v32 || (v266 = *v59, v266 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 51);
          if (!result)
          {
            return result;
          }

          v267 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 51) = v266;
          v267 = (v59 + 1);
          *(a2 + 1) = v267;
        }

        *(this + 340) |= 0x2000000u;
        if (v32 - v267 < 2 || *v267 != 216 || v267[1] != 1)
        {
          continue;
        }

        v93 = (v267 + 2);
        *(a2 + 1) = v93;
LABEL_615:
        if (v93 >= v32 || (v268 = *v93, v268 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v269 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v268;
          v269 = (v93 + 1);
          *(a2 + 1) = v269;
        }

        *(this + 340) |= 0x4000000u;
        if (v32 - v269 < 2 || *v269 != 224 || v269[1] != 1)
        {
          continue;
        }

        v42 = (v269 + 2);
        *(a2 + 1) = v42;
LABEL_624:
        if (v42 >= v32 || (v270 = *v42, v270 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 53);
          if (!result)
          {
            return result;
          }

          v271 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 53) = v270;
          v271 = (v42 + 1);
          *(a2 + 1) = v271;
        }

        *(this + 340) |= 0x8000000u;
        if (v32 - v271 < 2 || *v271 != 232 || v271[1] != 1)
        {
          continue;
        }

        v90 = (v271 + 2);
        *(a2 + 1) = v90;
LABEL_633:
        v668[0] = 0;
        if (v90 >= v32 || (v272 = *v90, (v272 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v272 = v668[0];
          v273 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          v273 = (v90 + 1);
          *(a2 + 1) = v273;
        }

        *(this + 576) = v272 != 0;
        *(this + 340) |= 0x10000000u;
        if (v32 - v273 < 2 || *v273 != 240 || v273[1] != 1)
        {
          continue;
        }

        v91 = (v273 + 2);
        *(a2 + 1) = v91;
LABEL_642:
        v668[0] = 0;
        if (v91 >= v32 || (v274 = *v91, (v274 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v274 = v668[0];
          v275 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          v275 = (v91 + 1);
          *(a2 + 1) = v275;
        }

        *(this + 577) = v274 != 0;
        *(this + 340) |= 0x20000000u;
        if (v32 - v275 < 2 || *v275 != 248 || v275[1] != 1)
        {
          continue;
        }

        v78 = (v275 + 2);
        *(a2 + 1) = v78;
LABEL_651:
        if (v78 >= v32 || (v276 = *v78, v276 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 55);
          if (!result)
          {
            return result;
          }

          v277 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 55) = v276;
          v277 = (v78 + 1);
          *(a2 + 1) = v277;
        }

        *(this + 340) |= 0x40000000u;
        if (v32 - v277 < 2 || *v277 != 128 || v277[1] != 2)
        {
          continue;
        }

        v70 = (v277 + 2);
        *(a2 + 1) = v70;
LABEL_660:
        if (v70 >= v32 || (v278 = *v70, v278 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 56);
          if (!result)
          {
            return result;
          }

          v279 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 56) = v278;
          v279 = (v70 + 1);
          *(a2 + 1) = v279;
        }

        *(this + 340) |= 0x80000000;
        if (v32 - v279 < 2 || *v279 != 136 || v279[1] != 2)
        {
          continue;
        }

        v79 = (v279 + 2);
        *(a2 + 1) = v79;
LABEL_669:
        if (v79 >= v32 || (v280 = *v79, v280 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 57);
          if (!result)
          {
            return result;
          }

          v281 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 57) = v280;
          v281 = (v79 + 1);
          *(a2 + 1) = v281;
        }

        *(this + 341) |= 1u;
        if (v32 - v281 < 2 || *v281 != 144 || v281[1] != 2)
        {
          continue;
        }

        v46 = (v281 + 2);
        *(a2 + 1) = v46;
LABEL_678:
        if (v46 >= v32 || (v282 = *v46, v282 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 58);
          if (!result)
          {
            return result;
          }

          v283 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 58) = v282;
          v283 = (v46 + 1);
          *(a2 + 1) = v283;
        }

        *(this + 341) |= 2u;
        if (v32 - v283 < 2 || *v283 != 152 || v283[1] != 2)
        {
          continue;
        }

        v43 = (v283 + 2);
        *(a2 + 1) = v43;
LABEL_687:
        if (v43 >= v32 || (v284 = *v43, v284 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 59);
          if (!result)
          {
            return result;
          }

          v285 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 59) = v284;
          v285 = (v43 + 1);
          *(a2 + 1) = v285;
        }

        *(this + 341) |= 4u;
        if (v32 - v285 < 2 || *v285 != 160 || v285[1] != 2)
        {
          continue;
        }

        v39 = (v285 + 2);
        *(a2 + 1) = v39;
LABEL_696:
        if (v39 >= v32 || (v286 = *v39, v286 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 60);
          if (!result)
          {
            return result;
          }

          v287 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 60) = v286;
          v287 = (v39 + 1);
          *(a2 + 1) = v287;
        }

        *(this + 341) |= 8u;
        if (v32 - v287 < 2 || *v287 != 168 || v287[1] != 2)
        {
          continue;
        }

        v40 = (v287 + 2);
        *(a2 + 1) = v40;
LABEL_705:
        if (v40 >= v32 || (v288 = *v40, v288 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 61);
          if (!result)
          {
            return result;
          }

          v289 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 61) = v288;
          v289 = (v40 + 1);
          *(a2 + 1) = v289;
        }

        *(this + 341) |= 0x10u;
        if (v32 - v289 < 2 || *v289 != 176 || v289[1] != 2)
        {
          continue;
        }

        v36 = (v289 + 2);
        *(a2 + 1) = v36;
LABEL_714:
        if (v36 >= v32 || (v290 = *v36, v290 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 62);
          if (!result)
          {
            return result;
          }

          v291 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 62) = v290;
          v291 = (v36 + 1);
          *(a2 + 1) = v291;
        }

        *(this + 341) |= 0x20u;
        if (v32 - v291 < 2 || *v291 != 184 || v291[1] != 2)
        {
          continue;
        }

        v92 = (v291 + 2);
        *(a2 + 1) = v92;
LABEL_723:
        if (v92 >= v32 || (v292 = *v92, v292 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 63);
          if (!result)
          {
            return result;
          }

          v293 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *(this + 63) = v292;
          v293 = (v92 + 1);
          *(a2 + 1) = v293;
        }

        *(this + 341) |= 0x40u;
        if (v32 - v293 < 2 || *v293 != 192 || v293[1] != 2)
        {
          continue;
        }

        v84 = (v293 + 2);
        *(a2 + 1) = v84;
LABEL_732:
        if (v84 >= v32 || (v294 = *v84, (v294 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v667);
          if (!result)
          {
            return result;
          }

          v295 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *v667 = v294;
          v295 = (v84 + 1);
          *(a2 + 1) = v295;
        }

        *(this + 341) |= 0x80u;
        if (v32 - v295 < 2 || *v295 != 200 || v295[1] != 2)
        {
          continue;
        }

        v56 = (v295 + 2);
        *(a2 + 1) = v56;
LABEL_741:
        if (v56 >= v32 || (v296 = *v56, (v296 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v666);
          if (!result)
          {
            return result;
          }

          v297 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *v666 = v296;
          v297 = (v56 + 1);
          *(a2 + 1) = v297;
        }

        *(this + 341) |= 0x100u;
        if (v32 - v297 < 2 || *v297 != 208 || v297[1] != 2)
        {
          continue;
        }

        v72 = (v297 + 2);
        *(a2 + 1) = v72;
LABEL_750:
        if (v72 >= v32 || (v298 = *v72, (v298 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v665);
          if (!result)
          {
            return result;
          }

          v299 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *v665 = v298;
          v299 = (v72 + 1);
          *(a2 + 1) = v299;
        }

        *(this + 341) |= 0x200u;
        if (v32 - v299 < 2 || *v299 != 216 || v299[1] != 2)
        {
          continue;
        }

        v87 = (v299 + 2);
        *(a2 + 1) = v87;
LABEL_759:
        if (v87 >= v32 || (v300 = *v87, (v300 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v664);
          if (!result)
          {
            return result;
          }

          v301 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *v664 = v300;
          v301 = (v87 + 1);
          *(a2 + 1) = v301;
        }

        *(this + 341) |= 0x400u;
        if (v32 - v301 < 2 || *v301 != 224 || v301[1] != 2)
        {
          continue;
        }

        v33 = (v301 + 2);
        *(a2 + 1) = v33;
LABEL_768:
        if (v33 >= v32 || (v302 = *v33, (v302 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v663);
          if (!result)
          {
            return result;
          }

          v303 = *(a2 + 1);
          v32 = *(a2 + 2);
        }

        else
        {
          *v663 = v302;
          v303 = (v33 + 1);
          *(a2 + 1) = v303;
        }

        *(this + 341) |= 0x800u;
        if (v32 - v303 < 2 || *v303 != 232 || v303[1] != 2)
        {
          continue;
        }

        v45 = (v303 + 2);
        *(a2 + 1) = v45;
LABEL_777:
        if (v45 >= v32 || (v304 = *v45, (v304 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v662);
          if (!result)
          {
            return result;
          }

          v305 = *(a2 + 1);
        }

        else
        {
          *v662 = v304;
          v305 = (v45 + 1);
          *(a2 + 1) = v305;
        }

        *(this + 341) |= 0x1000u;
        v29 = *(a2 + 2);
        if (v29 - v305 < 2 || *v305 != 240 || v305[1] != 2)
        {
          continue;
        }

        v80 = (v305 + 2);
        *(a2 + 1) = v80;
LABEL_786:
        if (v80 >= v29 || (v306 = *v80, (v306 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v661);
          if (!result)
          {
            return result;
          }

          v307 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          *v661 = v306;
          v307 = (v80 + 1);
          *(a2 + 1) = v307;
        }

        *(this + 341) |= 0x2000u;
        if (v29 - v307 < 2 || *v307 != 248 || v307[1] != 2)
        {
          continue;
        }

        v98 = (v307 + 2);
        *(a2 + 1) = v98;
LABEL_795:
        if (v98 >= v29 || (v308 = *v98, (v308 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v660);
          if (!result)
          {
            return result;
          }

          v309 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          *v660 = v308;
          v309 = (v98 + 1);
          *(a2 + 1) = v309;
        }

        *(this + 341) |= 0x4000u;
        if (v29 - v309 < 2 || *v309 != 128 || v309[1] != 3)
        {
          continue;
        }

        v37 = (v309 + 2);
        *(a2 + 1) = v37;
LABEL_804:
        v668[0] = 0;
        if (v37 >= v29 || (v310 = *v37, (v310 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v310 = v668[0];
          v311 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v311 = (v37 + 1);
          *(a2 + 1) = v311;
        }

        *(this + 109) = v310;
        *(this + 341) |= 0x8000u;
        if (v29 - v311 < 2 || *v311 != 136 || v311[1] != 3)
        {
          continue;
        }

        v47 = (v311 + 2);
        *(a2 + 1) = v47;
LABEL_813:
        v668[0] = 0;
        if (v47 >= v29 || (v312 = *v47, (v312 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v312 = v668[0];
          v313 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v313 = (v47 + 1);
          *(a2 + 1) = v313;
        }

        *(this + 145) = v312;
        *(this + 341) |= 0x10000u;
        if (v29 - v313 < 2 || *v313 != 144 || v313[1] != 3)
        {
          continue;
        }

        v53 = (v313 + 2);
        *(a2 + 1) = v53;
LABEL_822:
        v668[0] = 0;
        if (v53 >= v29 || (v314 = *v53, (v314 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v314 = v668[0];
          v315 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v315 = (v53 + 1);
          *(a2 + 1) = v315;
        }

        *(this + 146) = v314;
        *(this + 341) |= 0x20000u;
        if (v29 - v315 < 2 || *v315 != 152 || v315[1] != 3)
        {
          continue;
        }

        v30 = (v315 + 2);
        *(a2 + 1) = v30;
LABEL_831:
        v668[0] = 0;
        if (v30 >= v29 || (v316 = *v30, (v316 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v316 = v668[0];
          v317 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        else
        {
          v317 = (v30 + 1);
          *(a2 + 1) = v317;
        }

        *(this + 147) = v316;
        *(this + 341) |= 0x40000u;
        if (v29 - v317 < 2 || *v317 != 160 || v317[1] != 3)
        {
          continue;
        }

        v102 = (v317 + 2);
        *(a2 + 1) = v102;
LABEL_840:
        v668[0] = 0;
        if (v102 >= v29 || (v318 = *v102, (v318 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v318 = v668[0];
        }

        else
        {
          *(a2 + 1) = v102 + 1;
        }

        if (v318 <= 0xC)
        {
          *(this + 341) |= 0x80000u;
          *(this + 148) = v318;
        }

        v319 = *(a2 + 1);
        if (*(a2 + 4) - v319 < 2 || *v319 != 173 || v319[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v319 + 2;
LABEL_851:
        v668[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v668) & 1) == 0)
        {
          return 0;
        }

        *(this + 149) = v668[0];
        *(this + 341) |= 0x100000u;
        v320 = *(a2 + 1);
        if (*(a2 + 4) - v320 < 2 || *v320 != 181 || v320[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v320 + 2;
LABEL_856:
        v668[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v668) & 1) == 0)
        {
          return 0;
        }

        *(this + 150) = v668[0];
        *(this + 341) |= 0x200000u;
        v321 = *(a2 + 1);
        v94 = *(a2 + 2);
        if (v94 - v321 < 2 || *v321 != 184 || v321[1] != 3)
        {
          continue;
        }

        v95 = (v321 + 2);
        *(a2 + 1) = v95;
LABEL_861:
        if (v95 >= v94 || (v322 = *v95, (v322 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v638);
          if (!result)
          {
            return result;
          }

          v323 = *(a2 + 1);
          v94 = *(a2 + 2);
        }

        else
        {
          *v638 = v322;
          v323 = (v95 + 1);
          *(a2 + 1) = v323;
        }

        *(this + 341) |= 0x400000u;
        if (v94 - v323 < 2 || *v323 != 192 || v323[1] != 3)
        {
          continue;
        }

        v97 = (v323 + 2);
        *(a2 + 1) = v97;
LABEL_870:
        v668[0] = 0;
        if (v97 >= v94 || (v324 = *v97, (v324 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v324 = v668[0];
          v325 = *(a2 + 1);
          v94 = *(a2 + 2);
        }

        else
        {
          v325 = (v97 + 1);
          *(a2 + 1) = v325;
        }

        *(this + 578) = v324 != 0;
        *(this + 341) |= 0x800000u;
        if (v94 - v325 < 2 || *v325 != 202 || v325[1] != 3)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v325 + 2;
LABEL_879:
          v326 = *(this + 154);
          v327 = *(this + 155);
          if (v326 >= v327)
          {
            if (v327 == *(this + 156))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 608));
              v327 = *(this + 155);
            }

            *(this + 155) = v327 + 1;
            operator new();
          }

          v328 = *(this + 76);
          *(this + 154) = v326 + 1;
          v329 = *(v328 + 8 * v326);
          v668[0] = 0;
          v330 = *(a2 + 1);
          if (v330 >= *(a2 + 2) || *v330 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v330;
            *(a2 + 1) = v330 + 1;
          }

          v331 = *(a2 + 14);
          v332 = *(a2 + 15);
          *(a2 + 14) = v331 + 1;
          if (v331 >= v332)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergePartialFromCodedStream(v329, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v333 = *(a2 + 14);
          v127 = __OFSUB__(v333, 1);
          v334 = v333 - 1;
          if (v334 < 0 == v127)
          {
            *(a2 + 14) = v334;
          }

          v325 = *(a2 + 1);
          v85 = *(a2 + 2);
          if (v85 - v325 <= 1)
          {
            goto LABEL_2;
          }

          v335 = *v325;
          if (v335 == 208)
          {
            break;
          }

          if (v335 != 202 || v325[1] != 3)
          {
            goto LABEL_2;
          }
        }

        if (v325[1] != 3)
        {
          continue;
        }

        v86 = (v325 + 2);
        *(a2 + 1) = v86;
LABEL_900:
        if (v86 >= v85 || (v336 = *v86, (v336 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v632);
          if (!result)
          {
            return result;
          }

          v337 = *(a2 + 1);
          v85 = *(a2 + 2);
        }

        else
        {
          *v632 = v336;
          v337 = (v86 + 1);
          *(a2 + 1) = v337;
        }

        *(this + 341) |= 0x2000000u;
        if (v85 - v337 < 2 || *v337 != 218 || v337[1] != 3)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v337 + 2;
LABEL_909:
          v338 = *(this + 162);
          v339 = *(this + 163);
          if (v338 >= v339)
          {
            if (v339 == *(this + 164))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 640));
              v339 = *(this + 163);
            }

            *(this + 163) = v339 + 1;
            operator new();
          }

          v340 = *(this + 80);
          *(this + 162) = v338 + 1;
          v341 = *(v340 + 8 * v338);
          v668[0] = 0;
          v342 = *(a2 + 1);
          if (v342 >= *(a2 + 2) || *v342 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v342;
            *(a2 + 1) = v342 + 1;
          }

          v343 = *(a2 + 14);
          v344 = *(a2 + 15);
          *(a2 + 14) = v343 + 1;
          if (v343 >= v344)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_PowerStateData::MergePartialFromCodedStream(v341, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v345 = *(a2 + 14);
          v127 = __OFSUB__(v345, 1);
          v346 = v345 - 1;
          if (v346 < 0 == v127)
          {
            *(a2 + 14) = v346;
          }

          v337 = *(a2 + 1);
          v57 = *(a2 + 2);
          if (v57 - v337 <= 1)
          {
            goto LABEL_2;
          }

          v347 = *v337;
          if (v347 == 224)
          {
            break;
          }

          if (v347 != 218 || v337[1] != 3)
          {
            goto LABEL_2;
          }
        }

        if (v337[1] != 3)
        {
          continue;
        }

        v88 = (v337 + 2);
        *(a2 + 1) = v88;
LABEL_930:
        if (v88 >= v57 || (v348 = *v88, (v348 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v349 = *(a2 + 1);
          v57 = *(a2 + 2);
        }

        else
        {
          *v631 = v348;
          v349 = (v88 + 1);
          *(a2 + 1) = v349;
        }

        *(this + 341) |= 0x8000000u;
        if (v57 - v349 < 2 || *v349 != 232 || v349[1] != 3)
        {
          continue;
        }

        v58 = (v349 + 2);
        *(a2 + 1) = v58;
LABEL_939:
        if (v58 >= v57 || (v350 = *v58, (v350 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v636);
          if (!result)
          {
            return result;
          }

          v351 = *(a2 + 1);
          v57 = *(a2 + 2);
        }

        else
        {
          *v636 = v350;
          v351 = (v58 + 1);
          *(a2 + 1) = v351;
        }

        *(this + 341) |= 0x10000000u;
        if (v57 - v351 < 2 || *v351 != 240 || v351[1] != 3)
        {
          continue;
        }

        v74 = (v351 + 2);
        *(a2 + 1) = v74;
LABEL_948:
        if (v74 >= v57 || (v352 = *v74, (v352 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v641);
          if (!result)
          {
            return result;
          }

          v353 = *(a2 + 1);
          v57 = *(a2 + 2);
        }

        else
        {
          *v641 = v352;
          v353 = (v74 + 1);
          *(a2 + 1) = v353;
        }

        *(this + 341) |= 0x20000000u;
        if (v57 - v353 < 2 || *v353 != 250 || v353[1] != 3)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v353 + 2;
LABEL_957:
          v354 = *(this + 174);
          v355 = *(this + 175);
          if (v354 >= v355)
          {
            if (v355 == *(this + 176))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 688));
              v355 = *(this + 175);
            }

            *(this + 175) = v355 + 1;
            operator new();
          }

          v356 = *(this + 86);
          *(this + 174) = v354 + 1;
          v357 = *(v356 + 8 * v354);
          v668[0] = 0;
          v358 = *(a2 + 1);
          if (v358 >= *(a2 + 2) || *v358 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v358;
            *(a2 + 1) = v358 + 1;
          }

          v359 = *(a2 + 14);
          v360 = *(a2 + 15);
          *(a2 + 14) = v359 + 1;
          if (v359 >= v360)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::MergePartialFromCodedStream(v357, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v361 = *(a2 + 14);
          v127 = __OFSUB__(v361, 1);
          v362 = v361 - 1;
          if (v362 < 0 == v127)
          {
            *(a2 + 14) = v362;
          }

          v353 = *(a2 + 1);
          v62 = *(a2 + 2);
          if (v62 - v353 <= 1)
          {
            goto LABEL_2;
          }

          v363 = *v353;
          if (v363 == 128)
          {
            break;
          }

          if (v363 != 250 || v353[1] != 3)
          {
            goto LABEL_2;
          }
        }

        if (v353[1] != 4)
        {
          continue;
        }

        v63 = (v353 + 2);
        *(a2 + 1) = v63;
LABEL_978:
        v668[0] = 0;
        if (v63 >= v62 || (v364 = *v63, (v364 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v364 = v668[0];
        }

        else
        {
          *(a2 + 1) = v63 + 1;
        }

        if (v364 <= 0xD)
        {
          *(this + 341) |= 0x80000000;
          *(this + 202) = v364;
        }

        v365 = *(a2 + 1);
        if (*(a2 + 4) - v365 < 2 || *v365 != 138 || v365[1] != 4)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v365 + 2;
LABEL_989:
          v366 = *(this + 180);
          v367 = *(this + 181);
          if (v366 >= v367)
          {
            if (v367 == *(this + 182))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 712));
              v367 = *(this + 181);
            }

            *(this + 181) = v367 + 1;
            operator new();
          }

          v368 = *(this + 89);
          *(this + 180) = v366 + 1;
          v369 = *(v368 + 8 * v366);
          v668[0] = 0;
          v370 = *(a2 + 1);
          if (v370 >= *(a2 + 2) || *v370 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v370;
            *(a2 + 1) = v370 + 1;
          }

          v371 = *(a2 + 14);
          v372 = *(a2 + 15);
          *(a2 + 14) = v371 + 1;
          if (v371 >= v372)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::MergePartialFromCodedStream(v369, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v373 = *(a2 + 14);
          v127 = __OFSUB__(v373, 1);
          v374 = v373 - 1;
          if (v374 < 0 == v127)
          {
            *(a2 + 14) = v374;
          }

          v365 = *(a2 + 1);
          v22 = *(a2 + 2);
          if (v22 - v365 <= 1)
          {
            goto LABEL_2;
          }

          v375 = *v365;
          if (v375 == 144)
          {
            break;
          }

          if (v375 != 138 || v365[1] != 4)
          {
            goto LABEL_2;
          }
        }

        if (v365[1] != 4)
        {
          continue;
        }

        v75 = (v365 + 2);
        *(a2 + 1) = v75;
LABEL_1010:
        if (v75 >= v22 || (v376 = *v75, (v376 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v630);
          if (!result)
          {
            return result;
          }

          v377 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v630 = v376;
          v377 = (v75 + 1);
          *(a2 + 1) = v377;
        }

        *(this + 342) |= 2u;
        if (v22 - v377 < 2 || *v377 != 152 || v377[1] != 4)
        {
          continue;
        }

        v34 = (v377 + 2);
        *(a2 + 1) = v34;
LABEL_1019:
        if (v34 >= v22 || (v378 = *v34, (v378 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v635);
          if (!result)
          {
            return result;
          }

          v379 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v635 = v378;
          v379 = (v34 + 1);
          *(a2 + 1) = v379;
        }

        *(this + 342) |= 4u;
        if (v22 - v379 < 2 || *v379 != 160 || v379[1] != 4)
        {
          continue;
        }

        v44 = (v379 + 2);
        *(a2 + 1) = v44;
LABEL_1028:
        if (v44 >= v22 || (v380 = *v44, (v380 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v640);
          if (!result)
          {
            return result;
          }

          v381 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v640 = v380;
          v381 = (v44 + 1);
          *(a2 + 1) = v381;
        }

        *(this + 342) |= 8u;
        if (v22 - v381 < 2 || *v381 != 168 || v381[1] != 4)
        {
          continue;
        }

        v105 = (v381 + 2);
        *(a2 + 1) = v105;
LABEL_1037:
        if (v105 >= v22 || (v382 = *v105, (v382 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v643);
          if (!result)
          {
            return result;
          }

          v383 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v643 = v382;
          v383 = (v105 + 1);
          *(a2 + 1) = v383;
        }

        *(this + 342) |= 0x10u;
        if (v22 - v383 < 2 || *v383 != 176 || v383[1] != 4)
        {
          continue;
        }

        v41 = (v383 + 2);
        *(a2 + 1) = v41;
LABEL_1046:
        if (v41 >= v22 || (v384 = *v41, (v384 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v645);
          if (!result)
          {
            return result;
          }

          v385 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v645 = v384;
          v385 = (v41 + 1);
          *(a2 + 1) = v385;
        }

        *(this + 342) |= 0x20u;
        if (v22 - v385 < 2 || *v385 != 184 || v385[1] != 4)
        {
          continue;
        }

        v26 = (v385 + 2);
        *(a2 + 1) = v26;
LABEL_1055:
        if (v26 >= v22 || (v386 = *v26, (v386 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v647);
          if (!result)
          {
            return result;
          }

          v387 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v647 = v386;
          v387 = (v26 + 1);
          *(a2 + 1) = v387;
        }

        *(this + 342) |= 0x40u;
        if (v22 - v387 < 2 || *v387 != 192 || v387[1] != 4)
        {
          continue;
        }

        v35 = (v387 + 2);
        *(a2 + 1) = v35;
LABEL_1064:
        if (v35 >= v22 || (v388 = *v35, (v388 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v651);
          if (!result)
          {
            return result;
          }

          v389 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v651 = v388;
          v389 = (v35 + 1);
          *(a2 + 1) = v389;
        }

        *(this + 342) |= 0x80u;
        if (v22 - v389 < 2 || *v389 != 200 || v389[1] != 4)
        {
          continue;
        }

        v96 = (v389 + 2);
        *(a2 + 1) = v96;
LABEL_1073:
        if (v96 >= v22 || (v390 = *v96, (v390 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v652);
          if (!result)
          {
            return result;
          }

          v391 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v652 = v390;
          v391 = (v96 + 1);
          *(a2 + 1) = v391;
        }

        *(this + 342) |= 0x100u;
        if (v22 - v391 < 2 || *v391 != 208 || v391[1] != 4)
        {
          continue;
        }

        v99 = (v391 + 2);
        *(a2 + 1) = v99;
LABEL_1082:
        if (v99 >= v22 || (v392 = *v99, (v392 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v659);
          if (!result)
          {
            return result;
          }

          v393 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v659 = v392;
          v393 = (v99 + 1);
          *(a2 + 1) = v393;
        }

        *(this + 342) |= 0x200u;
        if (v22 - v393 < 2 || *v393 != 216 || v393[1] != 4)
        {
          continue;
        }

        v101 = (v393 + 2);
        *(a2 + 1) = v101;
LABEL_1091:
        if (v101 >= v22 || (v394 = *v101, (v394 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v658);
          if (!result)
          {
            return result;
          }

          v395 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v658 = v394;
          v395 = (v101 + 1);
          *(a2 + 1) = v395;
        }

        *(this + 342) |= 0x400u;
        if (v22 - v395 < 2 || *v395 != 224 || v395[1] != 4)
        {
          continue;
        }

        v38 = (v395 + 2);
        *(a2 + 1) = v38;
LABEL_1100:
        if (v38 >= v22 || (v396 = *v38, (v396 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v657);
          if (!result)
          {
            return result;
          }

          v397 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v657 = v396;
          v397 = (v38 + 1);
          *(a2 + 1) = v397;
        }

        *(this + 342) |= 0x800u;
        if (v22 - v397 < 2 || *v397 != 232 || v397[1] != 4)
        {
          continue;
        }

        v73 = (v397 + 2);
        *(a2 + 1) = v73;
LABEL_1109:
        if (v73 >= v22 || (v398 = *v73, (v398 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v656);
          if (!result)
          {
            return result;
          }

          v399 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v656 = v398;
          v399 = (v73 + 1);
          *(a2 + 1) = v399;
        }

        *(this + 342) |= 0x1000u;
        if (v22 - v399 < 2 || *v399 != 240 || v399[1] != 4)
        {
          continue;
        }

        v27 = (v399 + 2);
        *(a2 + 1) = v27;
LABEL_1118:
        if (v27 >= v22 || (v400 = *v27, (v400 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v655);
          if (!result)
          {
            return result;
          }

          v401 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v655 = v400;
          v401 = (v27 + 1);
          *(a2 + 1) = v401;
        }

        *(this + 342) |= 0x2000u;
        if (v22 - v401 < 2 || *v401 != 248 || v401[1] != 4)
        {
          continue;
        }

        v103 = (v401 + 2);
        *(a2 + 1) = v103;
LABEL_1127:
        if (v103 >= v22 || (v402 = *v103, (v402 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v654);
          if (!result)
          {
            return result;
          }

          v403 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v654 = v402;
          v403 = (v103 + 1);
          *(a2 + 1) = v403;
        }

        *(this + 342) |= 0x4000u;
        if (v22 - v403 < 2 || *v403 != 128 || v403[1] != 5)
        {
          continue;
        }

        v23 = (v403 + 2);
        *(a2 + 1) = v23;
LABEL_1136:
        v668[0] = 0;
        if (v23 >= v22 || (v404 = *v23, (v404 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v404 = v668[0];
          v405 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v405 = (v23 + 1);
          *(a2 + 1) = v405;
        }

        *(this + 579) = v404 != 0;
        *(this + 342) |= 0x8000u;
        if (v22 - v405 < 2 || *v405 != 138 || v405[1] != 5)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v405 + 2;
LABEL_1145:
          v406 = *(this + 216);
          v407 = *(this + 217);
          if (v406 >= v407)
          {
            if (v407 == *(this + 218))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 856));
              v407 = *(this + 217);
            }

            *(this + 217) = v407 + 1;
            operator new();
          }

          v408 = *(this + 107);
          *(this + 216) = v406 + 1;
          v409 = *(v408 + 8 * v406);
          v668[0] = 0;
          v410 = *(a2 + 1);
          if (v410 >= *(a2 + 2) || *v410 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v410;
            *(a2 + 1) = v410 + 1;
          }

          v411 = *(a2 + 14);
          v412 = *(a2 + 15);
          *(a2 + 14) = v411 + 1;
          if (v411 >= v412)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_ChecksumData::MergePartialFromCodedStream(v409, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v413 = *(a2 + 14);
          v127 = __OFSUB__(v413, 1);
          v414 = v413 - 1;
          if (v414 < 0 == v127)
          {
            *(a2 + 14) = v414;
          }

          v405 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v17 - v405 <= 1)
          {
            goto LABEL_2;
          }

          v415 = *v405;
          if (v415 == 144)
          {
            break;
          }

          if (v415 != 138 || v405[1] != 5)
          {
            goto LABEL_2;
          }
        }

        if (v405[1] != 5)
        {
          continue;
        }

        v52 = (v405 + 2);
        *(a2 + 1) = v52;
LABEL_1166:
        if (v52 >= v17 || (v416 = *v52, (v416 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v633);
          if (!result)
          {
            return result;
          }

          v417 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *v633 = v416;
          v417 = (v52 + 1);
          *(a2 + 1) = v417;
        }

        *(this + 342) |= 0x20000u;
        if (v17 - v417 < 2 || *v417 != 152 || v417[1] != 5)
        {
          continue;
        }

        v50 = (v417 + 2);
        *(a2 + 1) = v50;
LABEL_1175:
        if (v50 >= v17 || (v418 = *v50, (v418 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v637);
          if (!result)
          {
            return result;
          }

          v419 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *v637 = v418;
          v419 = (v50 + 1);
          *(a2 + 1) = v419;
        }

        *(this + 342) |= 0x40000u;
        if (v17 - v419 < 2 || *v419 != 160 || v419[1] != 5)
        {
          continue;
        }

        v19 = (v419 + 2);
        *(a2 + 1) = v19;
LABEL_1184:
        v668[0] = 0;
        if (v19 >= v17 || (v420 = *v19, (v420 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v420 = v668[0];
          v421 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v421 = (v19 + 1);
          *(a2 + 1) = v421;
        }

        *(this + 1044) = v420 != 0;
        *(this + 342) |= 0x80000u;
        if (v17 - v421 < 2 || *v421 != 168 || v421[1] != 5)
        {
          continue;
        }

        v18 = (v421 + 2);
        *(a2 + 1) = v18;
LABEL_1193:
        v668[0] = 0;
        if (v18 >= v17 || (v422 = *v18, (v422 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v422 = v668[0];
          v423 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v423 = (v18 + 1);
          *(a2 + 1) = v423;
        }

        *(this + 203) = v422;
        *(this + 342) |= 0x100000u;
        if (v17 - v423 < 2 || *v423 != 176 || v423[1] != 5)
        {
          continue;
        }

        v81 = (v423 + 2);
        *(a2 + 1) = v81;
LABEL_1202:
        v668[0] = 0;
        if (v81 >= v17 || (v424 = *v81, (v424 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v424 = v668[0];
          v425 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v425 = (v81 + 1);
          *(a2 + 1) = v425;
        }

        *(this + 224) = v424;
        *(this + 342) |= 0x200000u;
        if (v17 - v425 < 2 || *v425 != 184 || v425[1] != 5)
        {
          continue;
        }

        v82 = (v425 + 2);
        *(a2 + 1) = v82;
LABEL_1211:
        v668[0] = 0;
        if (v82 >= v17 || (v426 = *v82, (v426 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
          if (!result)
          {
            return result;
          }

          v426 = v668[0];
          v427 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v427 = (v82 + 1);
          *(a2 + 1) = v427;
        }

        *(this + 225) = v426;
        *(this + 342) |= 0x400000u;
        if (v17 - v427 < 2 || *v427 != 192 || v427[1] != 5)
        {
          continue;
        }

        v100 = (v427 + 2);
        *(a2 + 1) = v100;
LABEL_1220:
        if (v100 >= v17 || (v428 = *v100, (v428 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v650);
          if (!result)
          {
            return result;
          }

          v429 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *v650 = v428;
          v429 = (v100 + 1);
          *(a2 + 1) = v429;
        }

        v31 = *(this + 342) | 0x800000;
        *(this + 342) = v31;
        if (v17 - v429 < 2 || *v429 != 202 || v429[1] != 5)
        {
          continue;
        }

        *(a2 + 1) = v429 + 2;
LABEL_1229:
        *(this + 342) = v31 | 0x1000000;
        v430 = *(this + 114);
        if (!v430)
        {
          operator new();
        }

        v668[0] = 0;
        v431 = *(a2 + 1);
        if (v431 >= *(a2 + 2) || *v431 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
          {
            return 0;
          }
        }

        else
        {
          v668[0] = *v431;
          *(a2 + 1) = v431 + 1;
        }

        v432 = *(a2 + 14);
        v433 = *(a2 + 15);
        *(a2 + 14) = v432 + 1;
        if (v432 >= v433)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergePartialFromCodedStream(v430, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v434 = *(a2 + 14);
        v127 = __OFSUB__(v434, 1);
        v435 = v434 - 1;
        if (v435 < 0 == v127)
        {
          *(a2 + 14) = v435;
        }

        v436 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v436 <= 1 || *v436 != 208 || v436[1] != 5)
        {
          continue;
        }

        v109 = (v436 + 2);
        *(a2 + 1) = v109;
LABEL_1244:
        if (v109 >= v20 || (v437 = *v109, (v437 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v634);
          if (!result)
          {
            return result;
          }

          v438 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v634 = v437;
          v438 = (v109 + 1);
          *(a2 + 1) = v438;
        }

        *(this + 342) |= 0x2000000u;
        if (v20 - v438 < 2 || *v438 != 216 || v438[1] != 5)
        {
          continue;
        }

        v108 = (v438 + 2);
        *(a2 + 1) = v108;
LABEL_1253:
        if (v108 >= v20 || (v439 = *v108, (v439 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v639);
          if (!result)
          {
            return result;
          }

          v440 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v639 = v439;
          v440 = (v108 + 1);
          *(a2 + 1) = v440;
        }

        *(this + 342) |= 0x4000000u;
        if (v20 - v440 < 2 || *v440 != 224 || v440[1] != 5)
        {
          continue;
        }

        v21 = (v440 + 2);
        *(a2 + 1) = v21;
LABEL_1262:
        if (v21 >= v20 || (v441 = *v21, (v441 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v642);
          if (!result)
          {
            return result;
          }

          v442 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v642 = v441;
          v442 = (v21 + 1);
          *(a2 + 1) = v442;
        }

        *(this + 342) |= 0x8000000u;
        if (v20 - v442 < 2 || *v442 != 232 || v442[1] != 5)
        {
          continue;
        }

        v68 = (v442 + 2);
        *(a2 + 1) = v68;
LABEL_1271:
        if (v68 >= v20 || (v443 = *v68, (v443 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v644);
          if (!result)
          {
            return result;
          }

          v444 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v644 = v443;
          v444 = (v68 + 1);
          *(a2 + 1) = v444;
        }

        *(this + 342) |= 0x10000000u;
        if (v20 - v444 < 2 || *v444 != 240 || v444[1] != 5)
        {
          continue;
        }

        v28 = (v444 + 2);
        *(a2 + 1) = v28;
LABEL_1280:
        if (v28 >= v20 || (v445 = *v28, (v445 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v646);
          if (!result)
          {
            return result;
          }

          v446 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v646 = v445;
          v446 = (v28 + 1);
          *(a2 + 1) = v446;
        }

        *(this + 342) |= 0x20000000u;
        if (v20 - v446 < 2 || *v446 != 248 || v446[1] != 5)
        {
          continue;
        }

        v71 = (v446 + 2);
        *(a2 + 1) = v71;
LABEL_1289:
        if (v71 >= v20 || (v447 = *v71, (v447 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v648);
          if (!result)
          {
            return result;
          }

          v448 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v648 = v447;
          v448 = (v71 + 1);
          *(a2 + 1) = v448;
        }

        *(this + 342) |= 0x40000000u;
        if (v20 - v448 < 2 || *v448 != 128 || v448[1] != 6)
        {
          continue;
        }

        v106 = (v448 + 2);
        *(a2 + 1) = v106;
LABEL_1298:
        if (v106 >= v20 || (v449 = *v106, (v449 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v649);
          if (!result)
          {
            return result;
          }

          v450 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v649 = v449;
          v450 = (v106 + 1);
          *(a2 + 1) = v450;
        }

        *(this + 342) |= 0x80000000;
        if (v20 - v450 < 2 || *v450 != 136 || v450[1] != 6)
        {
          continue;
        }

        v25 = (v450 + 2);
        *(a2 + 1) = v25;
LABEL_1307:
        if (v25 >= v20 || (v451 = *v25, (v451 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v653);
          if (!result)
          {
            return result;
          }

          v452 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v653 = v451;
          v452 = (v25 + 1);
          *(a2 + 1) = v452;
        }

        *(this + 343) |= 1u;
        if (v20 - v452 < 2 || *v452 != 144 || v452[1] != 6)
        {
          continue;
        }

        v110 = (v452 + 2);
        *(a2 + 1) = v110;
LABEL_1316:
        if (v110 >= v20 || (v453 = *v110, (v453 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
          if (!result)
          {
            return result;
          }

          v454 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v4 = v453;
          v454 = (v110 + 1);
          *(a2 + 1) = v454;
        }

        *(this + 343) |= 2u;
        if (v20 - v454 < 2 || *v454 != 152 || v454[1] != 6)
        {
          continue;
        }

        v69 = (v454 + 2);
        *(a2 + 1) = v69;
LABEL_1325:
        if (v69 >= v20 || (v455 = *v69, (v455 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
          if (!result)
          {
            return result;
          }

          v456 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v5 = v455;
          v456 = (v69 + 1);
          *(a2 + 1) = v456;
        }

        *(this + 343) |= 4u;
        if (v20 - v456 < 2 || *v456 != 160 || v456[1] != 6)
        {
          continue;
        }

        v111 = (v456 + 2);
        *(a2 + 1) = v111;
LABEL_1334:
        if (v111 >= v20 || (v457 = *v111, (v457 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
          if (!result)
          {
            return result;
          }

          v458 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v6 = v457;
          v458 = (v111 + 1);
          *(a2 + 1) = v458;
        }

        *(this + 343) |= 8u;
        if (v20 - v458 < 2 || *v458 != 168 || v458[1] != 6)
        {
          continue;
        }

        v107 = (v458 + 2);
        *(a2 + 1) = v107;
LABEL_1343:
        if (v107 >= v20 || (v459 = *v107, (v459 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
          if (!result)
          {
            return result;
          }

          v460 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v7 = v459;
          v460 = (v107 + 1);
          *(a2 + 1) = v460;
        }

        *(this + 343) |= 0x10u;
        if (v20 - v460 < 2 || *v460 != 176 || v460[1] != 6)
        {
          continue;
        }

        v104 = (v460 + 2);
        *(a2 + 1) = v104;
LABEL_1352:
        if (v104 >= v20 || (v461 = *v104, (v461 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
          if (!result)
          {
            return result;
          }

          v462 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *v8 = v461;
          v462 = (v104 + 1);
          *(a2 + 1) = v462;
        }

        *(this + 343) |= 0x20u;
        if (v20 - v462 < 2 || *v462 != 186 || v462[1] != 6)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v462 + 2;
LABEL_1361:
          v463 = *(this + 244);
          v464 = *(this + 245);
          if (v463 >= v464)
          {
            if (v464 == *(this + 246))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 968));
              v464 = *(this + 245);
            }

            *(this + 245) = v464 + 1;
            operator new();
          }

          v465 = *(this + 121);
          *(this + 244) = v463 + 1;
          v466 = *(v465 + 8 * v463);
          v668[0] = 0;
          v467 = *(a2 + 1);
          if (v467 >= *(a2 + 2) || *v467 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v467;
            *(a2 + 1) = v467 + 1;
          }

          v468 = *(a2 + 14);
          v469 = *(a2 + 15);
          *(a2 + 14) = v468 + 1;
          if (v468 >= v469)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v466, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v470 = *(a2 + 14);
          v127 = __OFSUB__(v470, 1);
          v471 = v470 - 1;
          if (v471 < 0 == v127)
          {
            *(a2 + 14) = v471;
          }

          v462 = *(a2 + 1);
          if (*(a2 + 4) - v462 <= 1)
          {
            goto LABEL_2;
          }

          v472 = *v462;
          if (v472 == 194)
          {
            break;
          }

          if (v472 != 186 || v462[1] != 6)
          {
            goto LABEL_2;
          }
        }

        if (v462[1] != 6)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v462 + 2;
LABEL_1382:
          v473 = *(this + 250);
          v474 = *(this + 251);
          if (v473 >= v474)
          {
            if (v474 == *(this + 252))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 992));
              v474 = *(this + 251);
            }

            *(this + 251) = v474 + 1;
            operator new();
          }

          v475 = *(this + 124);
          *(this + 250) = v473 + 1;
          v476 = *(v475 + 8 * v473);
          v668[0] = 0;
          v477 = *(a2 + 1);
          if (v477 >= *(a2 + 2) || *v477 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v477;
            *(a2 + 1) = v477 + 1;
          }

          v478 = *(a2 + 14);
          v479 = *(a2 + 15);
          *(a2 + 14) = v478 + 1;
          if (v478 >= v479)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v476, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v480 = *(a2 + 14);
          v127 = __OFSUB__(v480, 1);
          v481 = v480 - 1;
          if (v481 < 0 == v127)
          {
            *(a2 + 14) = v481;
          }

          v462 = *(a2 + 1);
          if (*(a2 + 4) - v462 <= 1)
          {
            goto LABEL_2;
          }

          v482 = *v462;
          if (v482 == 202)
          {
            break;
          }

          if (v482 != 194 || v462[1] != 6)
          {
            goto LABEL_2;
          }
        }

        if (v462[1] != 6)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v462 + 2;
LABEL_1403:
          v483 = *(this + 256);
          v484 = *(this + 257);
          if (v483 >= v484)
          {
            if (v484 == *(this + 258))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1016));
              v484 = *(this + 257);
            }

            *(this + 257) = v484 + 1;
            operator new();
          }

          v485 = *(this + 127);
          *(this + 256) = v483 + 1;
          v486 = *(v485 + 8 * v483);
          v668[0] = 0;
          v487 = *(a2 + 1);
          if (v487 >= *(a2 + 2) || *v487 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v487;
            *(a2 + 1) = v487 + 1;
          }

          v488 = *(a2 + 14);
          v489 = *(a2 + 15);
          *(a2 + 14) = v488 + 1;
          if (v488 >= v489)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::MergePartialFromCodedStream(v486, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v490 = *(a2 + 14);
          v127 = __OFSUB__(v490, 1);
          v491 = v490 - 1;
          if (v491 < 0 == v127)
          {
            *(a2 + 14) = v491;
          }

          v462 = *(a2 + 1);
          if (*(a2 + 4) - v462 <= 1)
          {
            goto LABEL_2;
          }

          v492 = *v462;
          if (v492 == 210)
          {
            break;
          }

          if (v492 != 202 || v462[1] != 6)
          {
            goto LABEL_2;
          }
        }

        if (v462[1] != 6)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v462 + 2;
LABEL_1424:
          v493 = *(this + 264);
          v494 = *(this + 265);
          if (v493 >= v494)
          {
            if (v494 == *(this + 266))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1048));
              v494 = *(this + 265);
            }

            *(this + 265) = v494 + 1;
            operator new();
          }

          v495 = *(this + 131);
          *(this + 264) = v493 + 1;
          v496 = *(v495 + 8 * v493);
          v668[0] = 0;
          v497 = *(a2 + 1);
          if (v497 >= *(a2 + 2) || *v497 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
            {
              return 0;
            }
          }

          else
          {
            v668[0] = *v497;
            *(a2 + 1) = v497 + 1;
          }

          v498 = *(a2 + 14);
          v499 = *(a2 + 15);
          *(a2 + 14) = v498 + 1;
          if (v498 >= v499)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::MergePartialFromCodedStream(v496, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v500 = *(a2 + 14);
          v127 = __OFSUB__(v500, 1);
          v501 = v500 - 1;
          if (v501 < 0 == v127)
          {
            *(a2 + 14) = v501;
          }

          v462 = *(a2 + 1);
          if (*(a2 + 4) - v462 <= 1)
          {
            goto LABEL_2;
          }

          v502 = *v462;
          if (v502 == 218)
          {
            break;
          }

          if (v502 != 210 || v462[1] != 6)
          {
            goto LABEL_2;
          }
        }

        if (v462[1] != 6)
        {
          continue;
        }

        *(a2 + 1) = v462 + 2;
LABEL_1445:
        *(this + 343) |= 0x400u;
        v503 = *(this + 134);
        if (!v503)
        {
          operator new();
        }

        v668[0] = 0;
        v504 = *(a2 + 1);
        if (v504 >= *(a2 + 2) || *v504 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
          {
            return 0;
          }
        }

        else
        {
          v668[0] = *v504;
          *(a2 + 1) = v504 + 1;
        }

        v505 = *(a2 + 14);
        v506 = *(a2 + 15);
        *(a2 + 14) = v505 + 1;
        if (v505 < v506)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::MergePartialFromCodedStream(v503, a2))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v507 = *(a2 + 14);
              v127 = __OFSUB__(v507, 1);
              v508 = v507 - 1;
              if (v508 < 0 == v127)
              {
                *(a2 + 14) = v508;
              }

              v509 = *(a2 + 1);
              if (*(a2 + 4) - v509 > 1 && *v509 == 226 && v509[1] == 6)
              {
                while (1)
                {
                  *(a2 + 1) = v509 + 2;
LABEL_1460:
                  v510 = *(this + 272);
                  v511 = *(this + 273);
                  if (v510 >= v511)
                  {
                    if (v511 == *(this + 274))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1080));
                      v511 = *(this + 273);
                    }

                    *(this + 273) = v511 + 1;
                    operator new();
                  }

                  v512 = *(this + 135);
                  *(this + 272) = v510 + 1;
                  v513 = *(v512 + 8 * v510);
                  v668[0] = 0;
                  v514 = *(a2 + 1);
                  if (v514 >= *(a2 + 2) || *v514 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v668[0] = *v514;
                    *(a2 + 1) = v514 + 1;
                  }

                  v515 = *(a2 + 14);
                  v516 = *(a2 + 15);
                  *(a2 + 14) = v515 + 1;
                  if (v515 >= v516)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::MergePartialFromCodedStream(v513, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v517 = *(a2 + 14);
                  v127 = __OFSUB__(v517, 1);
                  v518 = v517 - 1;
                  if (v518 < 0 == v127)
                  {
                    *(a2 + 14) = v518;
                  }

                  v509 = *(a2 + 1);
                  if (*(a2 + 4) - v509 <= 1)
                  {
                    goto LABEL_2;
                  }

                  v519 = *v509;
                  if (v519 == 234)
                  {
                    break;
                  }

                  if (v519 != 226 || v509[1] != 6)
                  {
                    goto LABEL_2;
                  }
                }

                if (v509[1] == 6)
                {
                  while (1)
                  {
                    *(a2 + 1) = v509 + 2;
LABEL_1481:
                    v520 = *(this + 278);
                    v521 = *(this + 279);
                    if (v520 >= v521)
                    {
                      if (v521 == *(this + 280))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1104));
                        v521 = *(this + 279);
                      }

                      *(this + 279) = v521 + 1;
                      operator new();
                    }

                    v522 = *(this + 138);
                    *(this + 278) = v520 + 1;
                    v523 = *(v522 + 8 * v520);
                    v668[0] = 0;
                    v524 = *(a2 + 1);
                    if (v524 >= *(a2 + 2) || *v524 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v668[0] = *v524;
                      *(a2 + 1) = v524 + 1;
                    }

                    v525 = *(a2 + 14);
                    v526 = *(a2 + 15);
                    *(a2 + 14) = v525 + 1;
                    if (v525 >= v526)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!awd::metrics::LocationGPSSessionStatistics_NSOnOffState::MergePartialFromCodedStream(v523, a2) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v527 = *(a2 + 14);
                    v127 = __OFSUB__(v527, 1);
                    v528 = v527 - 1;
                    if (v528 < 0 == v127)
                    {
                      *(a2 + 14) = v528;
                    }

                    v509 = *(a2 + 1);
                    if (*(a2 + 4) - v509 <= 1)
                    {
                      goto LABEL_2;
                    }

                    v529 = *v509;
                    if (v529 == 242)
                    {
                      break;
                    }

                    if (v529 != 234 || v509[1] != 6)
                    {
                      goto LABEL_2;
                    }
                  }

                  if (v509[1] == 6)
                  {
                    while (1)
                    {
                      *(a2 + 1) = v509 + 2;
LABEL_1502:
                      v530 = *(this + 284);
                      v531 = *(this + 285);
                      if (v530 >= v531)
                      {
                        if (v531 == *(this + 286))
                        {
                          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1128));
                          v531 = *(this + 285);
                        }

                        *(this + 285) = v531 + 1;
                        operator new();
                      }

                      v532 = *(this + 141);
                      *(this + 284) = v530 + 1;
                      v533 = *(v532 + 8 * v530);
                      v668[0] = 0;
                      v534 = *(a2 + 1);
                      if (v534 >= *(a2 + 2) || *v534 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v668[0] = *v534;
                        *(a2 + 1) = v534 + 1;
                      }

                      v535 = *(a2 + 14);
                      v536 = *(a2 + 15);
                      *(a2 + 14) = v535 + 1;
                      if (v535 >= v536)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                      if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v533, a2) || *(a2 + 36) != 1)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                      v537 = *(a2 + 14);
                      v127 = __OFSUB__(v537, 1);
                      v538 = v537 - 1;
                      if (v538 < 0 == v127)
                      {
                        *(a2 + 14) = v538;
                      }

                      v509 = *(a2 + 1);
                      if (*(a2 + 4) - v509 <= 1)
                      {
                        goto LABEL_2;
                      }

                      v539 = *v509;
                      if (v539 == 250)
                      {
                        break;
                      }

                      if (v539 != 242 || v509[1] != 6)
                      {
                        goto LABEL_2;
                      }
                    }

                    if (v509[1] == 6)
                    {
                      while (1)
                      {
                        *(a2 + 1) = v509 + 2;
LABEL_1523:
                        v540 = *(this + 290);
                        v541 = *(this + 291);
                        if (v540 >= v541)
                        {
                          if (v541 == *(this + 292))
                          {
                            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1152));
                            v541 = *(this + 291);
                          }

                          *(this + 291) = v541 + 1;
                          operator new();
                        }

                        v542 = *(this + 144);
                        *(this + 290) = v540 + 1;
                        v543 = *(v542 + 8 * v540);
                        v668[0] = 0;
                        v544 = *(a2 + 1);
                        if (v544 >= *(a2 + 2) || *v544 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v668[0] = *v544;
                          *(a2 + 1) = v544 + 1;
                        }

                        v545 = *(a2 + 14);
                        v546 = *(a2 + 15);
                        *(a2 + 14) = v545 + 1;
                        if (v545 >= v546)
                        {
                          return 0;
                        }

                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                        if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v543, a2) || *(a2 + 36) != 1)
                        {
                          return 0;
                        }

                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                        v547 = *(a2 + 14);
                        v127 = __OFSUB__(v547, 1);
                        v548 = v547 - 1;
                        if (v548 < 0 == v127)
                        {
                          *(a2 + 14) = v548;
                        }

                        v509 = *(a2 + 1);
                        if (*(a2 + 4) - v509 <= 1)
                        {
                          goto LABEL_2;
                        }

                        v549 = *v509;
                        if (v549 == 130)
                        {
                          break;
                        }

                        if (v549 != 250 || v509[1] != 6)
                        {
                          goto LABEL_2;
                        }
                      }

                      if (v509[1] == 7)
                      {
                        while (1)
                        {
                          *(a2 + 1) = v509 + 2;
LABEL_1544:
                          v550 = *(this + 296);
                          v551 = *(this + 297);
                          if (v550 >= v551)
                          {
                            if (v551 == *(this + 298))
                            {
                              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1176));
                              v551 = *(this + 297);
                            }

                            *(this + 297) = v551 + 1;
                            operator new();
                          }

                          v552 = *(this + 147);
                          *(this + 296) = v550 + 1;
                          v553 = *(v552 + 8 * v550);
                          v668[0] = 0;
                          v554 = *(a2 + 1);
                          if (v554 >= *(a2 + 2) || *v554 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v668[0] = *v554;
                            *(a2 + 1) = v554 + 1;
                          }

                          v555 = *(a2 + 14);
                          v556 = *(a2 + 15);
                          *(a2 + 14) = v555 + 1;
                          if (v555 >= v556)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                          if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v553, a2) || *(a2 + 36) != 1)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                          v557 = *(a2 + 14);
                          v127 = __OFSUB__(v557, 1);
                          v558 = v557 - 1;
                          if (v558 < 0 == v127)
                          {
                            *(a2 + 14) = v558;
                          }

                          v509 = *(a2 + 1);
                          if (*(a2 + 4) - v509 <= 1)
                          {
                            goto LABEL_2;
                          }

                          v559 = *v509;
                          if (v559 == 138)
                          {
                            break;
                          }

                          if (v559 != 130 || v509[1] != 7)
                          {
                            goto LABEL_2;
                          }
                        }

                        if (v509[1] == 7)
                        {
                          while (1)
                          {
                            *(a2 + 1) = v509 + 2;
LABEL_1565:
                            v560 = *(this + 302);
                            v561 = *(this + 303);
                            if (v560 >= v561)
                            {
                              if (v561 == *(this + 304))
                              {
                                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1200));
                                v561 = *(this + 303);
                              }

                              *(this + 303) = v561 + 1;
                              operator new();
                            }

                            v562 = *(this + 150);
                            *(this + 302) = v560 + 1;
                            v563 = *(v562 + 8 * v560);
                            v668[0] = 0;
                            v564 = *(a2 + 1);
                            if (v564 >= *(a2 + 2) || *v564 < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v668[0] = *v564;
                              *(a2 + 1) = v564 + 1;
                            }

                            v565 = *(a2 + 14);
                            v566 = *(a2 + 15);
                            *(a2 + 14) = v565 + 1;
                            if (v565 >= v566)
                            {
                              return 0;
                            }

                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                            if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(v563, a2) || *(a2 + 36) != 1)
                            {
                              return 0;
                            }

                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                            v567 = *(a2 + 14);
                            v127 = __OFSUB__(v567, 1);
                            v568 = v567 - 1;
                            if (v568 < 0 == v127)
                            {
                              *(a2 + 14) = v568;
                            }

                            v509 = *(a2 + 1);
                            if (*(a2 + 4) - v509 <= 1)
                            {
                              goto LABEL_2;
                            }

                            v569 = *v509;
                            if (v569 == 146)
                            {
                              break;
                            }

                            if (v569 != 138 || v509[1] != 7)
                            {
                              goto LABEL_2;
                            }
                          }

                          if (v509[1] == 7)
                          {
                            while (1)
                            {
                              *(a2 + 1) = v509 + 2;
LABEL_1586:
                              v570 = *(this + 308);
                              v571 = *(this + 309);
                              if (v570 >= v571)
                              {
                                if (v571 == *(this + 310))
                                {
                                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1224));
                                  v571 = *(this + 309);
                                }

                                *(this + 309) = v571 + 1;
                                operator new();
                              }

                              v572 = *(this + 153);
                              *(this + 308) = v570 + 1;
                              v573 = *(v572 + 8 * v570);
                              v668[0] = 0;
                              v574 = *(a2 + 1);
                              if (v574 >= *(a2 + 2) || *v574 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v668[0] = *v574;
                                *(a2 + 1) = v574 + 1;
                              }

                              v575 = *(a2 + 14);
                              v576 = *(a2 + 15);
                              *(a2 + 14) = v575 + 1;
                              if (v575 >= v576)
                              {
                                return 0;
                              }

                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                              if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v573, a2) || *(a2 + 36) != 1)
                              {
                                return 0;
                              }

                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                              v577 = *(a2 + 14);
                              v127 = __OFSUB__(v577, 1);
                              v578 = v577 - 1;
                              if (v578 < 0 == v127)
                              {
                                *(a2 + 14) = v578;
                              }

                              v509 = *(a2 + 1);
                              if (*(a2 + 4) - v509 <= 1)
                              {
                                goto LABEL_2;
                              }

                              v579 = *v509;
                              if (v579 == 154)
                              {
                                break;
                              }

                              if (v579 != 146 || v509[1] != 7)
                              {
                                goto LABEL_2;
                              }
                            }

                            if (v509[1] == 7)
                            {
                              while (1)
                              {
                                *(a2 + 1) = v509 + 2;
LABEL_1607:
                                v580 = *(this + 314);
                                v581 = *(this + 315);
                                if (v580 >= v581)
                                {
                                  if (v581 == *(this + 316))
                                  {
                                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1248));
                                    v581 = *(this + 315);
                                  }

                                  *(this + 315) = v581 + 1;
                                  operator new();
                                }

                                v582 = *(this + 156);
                                *(this + 314) = v580 + 1;
                                v583 = *(v582 + 8 * v580);
                                v668[0] = 0;
                                v584 = *(a2 + 1);
                                if (v584 >= *(a2 + 2) || *v584 < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v668[0] = *v584;
                                  *(a2 + 1) = v584 + 1;
                                }

                                v585 = *(a2 + 14);
                                v586 = *(a2 + 15);
                                *(a2 + 14) = v585 + 1;
                                if (v585 >= v586)
                                {
                                  return 0;
                                }

                                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                                if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v583, a2) || *(a2 + 36) != 1)
                                {
                                  return 0;
                                }

                                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                                v587 = *(a2 + 14);
                                v127 = __OFSUB__(v587, 1);
                                v588 = v587 - 1;
                                if (v588 < 0 == v127)
                                {
                                  *(a2 + 14) = v588;
                                }

                                v509 = *(a2 + 1);
                                if (*(a2 + 4) - v509 <= 1)
                                {
                                  goto LABEL_2;
                                }

                                v589 = *v509;
                                if (v589 == 162)
                                {
                                  break;
                                }

                                if (v589 != 154 || v509[1] != 7)
                                {
                                  goto LABEL_2;
                                }
                              }

                              if (v509[1] == 7)
                              {
                                while (1)
                                {
                                  *(a2 + 1) = v509 + 2;
LABEL_1628:
                                  v590 = *(this + 320);
                                  v591 = *(this + 321);
                                  if (v590 >= v591)
                                  {
                                    if (v591 == *(this + 322))
                                    {
                                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1272));
                                      v591 = *(this + 321);
                                    }

                                    *(this + 321) = v591 + 1;
                                    operator new();
                                  }

                                  v592 = *(this + 159);
                                  *(this + 320) = v590 + 1;
                                  v593 = *(v592 + 8 * v590);
                                  v668[0] = 0;
                                  v594 = *(a2 + 1);
                                  if (v594 >= *(a2 + 2) || *v594 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v668[0] = *v594;
                                    *(a2 + 1) = v594 + 1;
                                  }

                                  v595 = *(a2 + 14);
                                  v596 = *(a2 + 15);
                                  *(a2 + 14) = v595 + 1;
                                  if (v595 >= v596)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                                  if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v593, a2) || *(a2 + 36) != 1)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                                  v597 = *(a2 + 14);
                                  v127 = __OFSUB__(v597, 1);
                                  v598 = v597 - 1;
                                  if (v598 < 0 == v127)
                                  {
                                    *(a2 + 14) = v598;
                                  }

                                  v509 = *(a2 + 1);
                                  if (*(a2 + 4) - v509 <= 1)
                                  {
                                    goto LABEL_2;
                                  }

                                  v599 = *v509;
                                  if (v599 == 170)
                                  {
                                    break;
                                  }

                                  if (v599 != 162 || v509[1] != 7)
                                  {
                                    goto LABEL_2;
                                  }
                                }

                                if (v509[1] == 7)
                                {
                                  while (1)
                                  {
                                    *(a2 + 1) = v509 + 2;
LABEL_1649:
                                    v600 = *(this + 326);
                                    v601 = *(this + 327);
                                    if (v600 >= v601)
                                    {
                                      if (v601 == *(this + 328))
                                      {
                                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1296));
                                        v601 = *(this + 327);
                                      }

                                      *(this + 327) = v601 + 1;
                                      operator new();
                                    }

                                    v602 = *(this + 162);
                                    *(this + 326) = v600 + 1;
                                    v603 = *(v602 + 8 * v600);
                                    v668[0] = 0;
                                    v604 = *(a2 + 1);
                                    if (v604 >= *(a2 + 2) || *v604 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v668[0] = *v604;
                                      *(a2 + 1) = v604 + 1;
                                    }

                                    v605 = *(a2 + 14);
                                    v606 = *(a2 + 15);
                                    *(a2 + 14) = v605 + 1;
                                    if (v605 >= v606)
                                    {
                                      return 0;
                                    }

                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                                    if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(v603, a2) || *(a2 + 36) != 1)
                                    {
                                      return 0;
                                    }

                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                                    v607 = *(a2 + 14);
                                    v127 = __OFSUB__(v607, 1);
                                    v608 = v607 - 1;
                                    if (v608 < 0 == v127)
                                    {
                                      *(a2 + 14) = v608;
                                    }

                                    v509 = *(a2 + 1);
                                    v49 = *(a2 + 2);
                                    if (v49 - v509 <= 1)
                                    {
                                      goto LABEL_2;
                                    }

                                    v609 = *v509;
                                    if (v609 == 176)
                                    {
                                      break;
                                    }

                                    if (v609 != 170 || v509[1] != 7)
                                    {
                                      goto LABEL_2;
                                    }
                                  }

                                  if (v509[1] == 7)
                                  {
                                    v48 = (v509 + 2);
                                    *(a2 + 1) = v48;
LABEL_1670:
                                    v668[0] = 0;
                                    if (v48 >= v49 || (v610 = *v48, (v610 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v610 = v668[0];
                                      v611 = *(a2 + 1);
                                      v49 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      v611 = (v48 + 1);
                                      *(a2 + 1) = v611;
                                    }

                                    *(this + 1045) = v610 != 0;
                                    *(this + 343) |= 0x200000u;
                                    if (v49 - v611 >= 2 && *v611 == 184 && v611[1] == 7)
                                    {
                                      v83 = (v611 + 2);
                                      *(a2 + 1) = v83;
LABEL_1679:
                                      v668[0] = 0;
                                      if (v83 >= v49 || (v612 = *v83, (v612 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v612 = v668[0];
                                        v613 = *(a2 + 1);
                                        v49 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        v613 = (v83 + 1);
                                        *(a2 + 1) = v83 + 1;
                                      }

                                      *(this + 1046) = v612 != 0;
                                      *(this + 343) |= 0x400000u;
                                      if (v49 - v613 >= 2 && *v613 == 194 && v613[1] == 7)
                                      {
                                        while (1)
                                        {
                                          *(a2 + 1) = v613 + 2;
LABEL_1688:
                                          v614 = *(this + 332);
                                          v615 = *(this + 333);
                                          if (v614 >= v615)
                                          {
                                            if (v615 == *(this + 334))
                                            {
                                              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 1320));
                                              v615 = *(this + 333);
                                            }

                                            *(this + 333) = v615 + 1;
                                            operator new();
                                          }

                                          v616 = *(this + 165);
                                          *(this + 332) = v614 + 1;
                                          v617 = *(v616 + 8 * v614);
                                          v668[0] = 0;
                                          v618 = *(a2 + 1);
                                          if (v618 >= *(a2 + 2) || *v618 < 0)
                                          {
                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668))
                                            {
                                              return 0;
                                            }
                                          }

                                          else
                                          {
                                            v668[0] = *v618;
                                            *(a2 + 1) = v618 + 1;
                                          }

                                          v619 = *(a2 + 14);
                                          v620 = *(a2 + 15);
                                          *(a2 + 14) = v619 + 1;
                                          if (v619 >= v620)
                                          {
                                            return 0;
                                          }

                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                                          if (!awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::MergePartialFromCodedStream(v617, a2) || *(a2 + 36) != 1)
                                          {
                                            return 0;
                                          }

                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                                          v621 = *(a2 + 14);
                                          v127 = __OFSUB__(v621, 1);
                                          v622 = v621 - 1;
                                          if (v622 < 0 == v127)
                                          {
                                            *(a2 + 14) = v622;
                                          }

                                          v613 = *(a2 + 1);
                                          v15 = *(a2 + 2);
                                          if (v15 - v613 <= 1)
                                          {
                                            goto LABEL_2;
                                          }

                                          v623 = *v613;
                                          if (v623 == 200)
                                          {
                                            break;
                                          }

                                          if (v623 != 194 || v613[1] != 7)
                                          {
                                            goto LABEL_2;
                                          }
                                        }

                                        if (v613[1] == 7)
                                        {
                                          v24 = (v613 + 2);
                                          *(a2 + 1) = v613 + 2;
LABEL_1709:
                                          v668[0] = 0;
                                          if (v24 >= v15 || (v624 = *v24, (v624 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v624 = v668[0];
                                            v625 = *(a2 + 1);
                                            v15 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v625 = (v24 + 1);
                                            *(a2 + 1) = v625;
                                          }

                                          *(this + 336) = v624;
                                          *(this + 343) |= 0x1000000u;
                                          if (v15 - v625 >= 2 && *v625 == 208 && v625[1] == 7)
                                          {
                                            v51 = (v625 + 2);
                                            *(a2 + 1) = v51;
LABEL_1718:
                                            v668[0] = 0;
                                            if (v51 >= v15 || (v626 = *v51, (v626 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v626 = v668[0];
                                              v627 = *(a2 + 1);
                                              v15 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v627 = (v51 + 1);
                                              *(a2 + 1) = v627;
                                            }

                                            *(this + 337) = v626;
                                            *(this + 343) |= 0x2000000u;
                                            if (v15 - v627 >= 2 && *v627 == 216 && v627[1] == 7)
                                            {
                                              v16 = (v627 + 2);
                                              *(a2 + 1) = v16;
LABEL_1727:
                                              v668[0] = 0;
                                              if (v16 >= v15 || (v628 = *v16, (v628 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v668);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v628 = v668[0];
                                                v629 = *(a2 + 1);
                                                v15 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                v629 = v16 + 1;
                                                *(a2 + 1) = v629;
                                              }

                                              *(this + 338) = v628;
                                              *(this + 343) |= 0x4000000u;
                                              if (v629 == v15 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
                                  }
                                }
                              }
                            }
                          }
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
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v55 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_282;
      case 6u:
        if (v11 == 5)
        {
          goto LABEL_290;
        }

        goto LABEL_265;
      case 7u:
        if (v11 == 5)
        {
          goto LABEL_294;
        }

        goto LABEL_265;
      case 8u:
        if (v11 == 5)
        {
          goto LABEL_298;
        }

        goto LABEL_265;
      case 9u:
        if (v11 == 2)
        {
          goto LABEL_302;
        }

        goto LABEL_265;
      case 0xAu:
        if (v11 == 2)
        {
          goto LABEL_320;
        }

        goto LABEL_265;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v77 = *(a2 + 1);
        v76 = *(a2 + 2);
        goto LABEL_338;
      case 0xCu:
        if (v11 == 2)
        {
          goto LABEL_346;
        }

        goto LABEL_265;
      case 0xDu:
        if (v11 == 2)
        {
          goto LABEL_364;
        }

        goto LABEL_265;
      case 0xEu:
        if (v11 == 2)
        {
          goto LABEL_382;
        }

        goto LABEL_265;
      case 0xFu:
        if (v11 == 2)
        {
          goto LABEL_400;
        }

        goto LABEL_265;
      case 0x10u:
        if (v11 == 2)
        {
          goto LABEL_420;
        }

        goto LABEL_265;
      case 0x11u:
        if (v11 == 2)
        {
          goto LABEL_441;
        }

        goto LABEL_265;
      case 0x12u:
        if (v11 == 2)
        {
          goto LABEL_462;
        }

        goto LABEL_265;
      case 0x13u:
        if (v11 == 2)
        {
          goto LABEL_483;
        }

        goto LABEL_265;
      case 0x14u:
        if (v11 == 2)
        {
          goto LABEL_504;
        }

        goto LABEL_265;
      case 0x15u:
        if (v11 == 2)
        {
          goto LABEL_525;
        }

        goto LABEL_265;
      case 0x16u:
        if (v11 == 2)
        {
          goto LABEL_546;
        }

        goto LABEL_265;
      case 0x17u:
        if (v11 == 2)
        {
          goto LABEL_567;
        }

        goto LABEL_265;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v89 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_588;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v60 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_597;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v59 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_606;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v93 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_615;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v42 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_624;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v90 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_633;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v91 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_642;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v78 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_651;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v70 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_660;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v79 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_669;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v46 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_678;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v43 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_687;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v39 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_696;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v40 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_705;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v36 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_714;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v92 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_723;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v84 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_732;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v56 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_741;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v72 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_750;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v87 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_759;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_768;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v45 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_777;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v80 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_786;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v98 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_795;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v37 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_804;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v47 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_813;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v53 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_822;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_831;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v102 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_840;
      case 0x35u:
        if (v11 == 5)
        {
          goto LABEL_851;
        }

        goto LABEL_265;
      case 0x36u:
        if (v11 == 5)
        {
          goto LABEL_856;
        }

        goto LABEL_265;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v95 = *(a2 + 1);
        v94 = *(a2 + 2);
        goto LABEL_861;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v97 = *(a2 + 1);
        v94 = *(a2 + 2);
        goto LABEL_870;
      case 0x39u:
        if (v11 == 2)
        {
          goto LABEL_879;
        }

        goto LABEL_265;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v86 = *(a2 + 1);
        v85 = *(a2 + 2);
        goto LABEL_900;
      case 0x3Bu:
        if (v11 == 2)
        {
          goto LABEL_909;
        }

        goto LABEL_265;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v88 = *(a2 + 1);
        v57 = *(a2 + 2);
        goto LABEL_930;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v58 = *(a2 + 1);
        v57 = *(a2 + 2);
        goto LABEL_939;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v74 = *(a2 + 1);
        v57 = *(a2 + 2);
        goto LABEL_948;
      case 0x3Fu:
        if (v11 == 2)
        {
          goto LABEL_957;
        }

        goto LABEL_265;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v63 = *(a2 + 1);
        v62 = *(a2 + 2);
        goto LABEL_978;
      case 0x41u:
        if (v11 == 2)
        {
          goto LABEL_989;
        }

        goto LABEL_265;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v75 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1010;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v34 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1019;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v44 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1028;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v105 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1037;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v41 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1046;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v26 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1055;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v35 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1064;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v96 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1073;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v99 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1082;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v101 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1091;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v38 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1100;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v73 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1109;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v27 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1118;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v103 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1127;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1136;
      case 0x51u:
        if (v11 == 2)
        {
          goto LABEL_1145;
        }

        goto LABEL_265;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v52 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1166;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v50 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1175;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v19 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1184;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1193;
      case 0x56u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v81 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1202;
      case 0x57u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v82 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1211;
      case 0x58u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v100 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_1220;
      case 0x59u:
        if (v11 != 2)
        {
          goto LABEL_265;
        }

        v31 = *(this + 342);
        goto LABEL_1229;
      case 0x5Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v109 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1244;
      case 0x5Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v108 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1253;
      case 0x5Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1262;
      case 0x5Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v68 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1271;
      case 0x5Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v28 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1280;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v71 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1289;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v106 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1298;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v25 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1307;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v110 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1316;
      case 0x63u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v69 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1325;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v111 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1334;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v107 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1343;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v104 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1352;
      case 0x67u:
        if (v11 == 2)
        {
          goto LABEL_1361;
        }

        goto LABEL_265;
      case 0x68u:
        if (v11 == 2)
        {
          goto LABEL_1382;
        }

        goto LABEL_265;
      case 0x69u:
        if (v11 == 2)
        {
          goto LABEL_1403;
        }

        goto LABEL_265;
      case 0x6Au:
        if (v11 == 2)
        {
          goto LABEL_1424;
        }

        goto LABEL_265;
      case 0x6Bu:
        if (v11 == 2)
        {
          goto LABEL_1445;
        }

        goto LABEL_265;
      case 0x6Cu:
        if (v11 == 2)
        {
          goto LABEL_1460;
        }

        goto LABEL_265;
      case 0x6Du:
        if (v11 == 2)
        {
          goto LABEL_1481;
        }

        goto LABEL_265;
      case 0x6Eu:
        if (v11 == 2)
        {
          goto LABEL_1502;
        }

        goto LABEL_265;
      case 0x6Fu:
        if (v11 == 2)
        {
          goto LABEL_1523;
        }

        goto LABEL_265;
      case 0x70u:
        if (v11 == 2)
        {
          goto LABEL_1544;
        }

        goto LABEL_265;
      case 0x71u:
        if (v11 == 2)
        {
          goto LABEL_1565;
        }

        goto LABEL_265;
      case 0x72u:
        if (v11 == 2)
        {
          goto LABEL_1586;
        }

        goto LABEL_265;
      case 0x73u:
        if (v11 == 2)
        {
          goto LABEL_1607;
        }

        goto LABEL_265;
      case 0x74u:
        if (v11 == 2)
        {
          goto LABEL_1628;
        }

        goto LABEL_265;
      case 0x75u:
        if (v11 == 2)
        {
          goto LABEL_1649;
        }

        goto LABEL_265;
      case 0x76u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v48 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_1670;
      case 0x77u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v83 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_1679;
      case 0x78u:
        if (v11 == 2)
        {
          goto LABEL_1688;
        }

        goto LABEL_265;
      case 0x79u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v24 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1709;
      case 0x7Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v51 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1718;
      case 0x7Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_265;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_1727;
      default:
LABEL_265:
        if (v11 == 4)
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