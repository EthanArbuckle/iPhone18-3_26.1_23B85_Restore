uint64_t awd::metrics::FaceTimeDTXStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::FaceTimeDTXStatus::ByteSize(awd::metrics::FaceTimeDTXStatus *this)
{
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 4) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
      v2 = *(this + 9);
    }

    if ((v2 & 8) != 0)
    {
      v5 = *(this + 7);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 8) = v4;
  return v4;
}

void awd::metrics::FaceTimeDTXStatus::CheckTypeAndMergeFrom(awd::metrics::FaceTimeDTXStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeDTXStatus::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeDTXStatus::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeDTXStatus::CopyFrom(awd::metrics::FaceTimeDTXStatus *this, const awd::metrics::FaceTimeDTXStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeDTXStatus::MergeFrom(this, a2);
  }
}

float awd::metrics::FaceTimeDTXStatus::Swap(awd::metrics::FaceTimeDTXStatus *this, awd::metrics::FaceTimeDTXStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return result;
}

double awd::metrics::FaceTimeModeRoleTransport::SharedCtor(awd::metrics::FaceTimeModeRoleTransport *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::FaceTimeModeRoleTransport *awd::metrics::FaceTimeModeRoleTransport::FaceTimeModeRoleTransport(awd::metrics::FaceTimeModeRoleTransport *this, const awd::metrics::FaceTimeModeRoleTransport *a2)
{
  *this = &unk_2A1D4E128;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::FaceTimeModeRoleTransport::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeModeRoleTransport::MergeFrom(awd::metrics::FaceTimeModeRoleTransport *this, const awd::metrics::FaceTimeModeRoleTransport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
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

    v7 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v7;
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
    v8 = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 6);
    *(this + 9) |= 8u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 7);
    *(this + 9) |= 0x10u;
    *(this + 7) = v5;
  }
}

void sub_2963E9CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeModeRoleTransport::~FaceTimeModeRoleTransport(awd::metrics::FaceTimeModeRoleTransport *this)
{
  *this = &unk_2A1D4E128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4E128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4E128;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeModeRoleTransport::default_instance(awd::metrics::FaceTimeModeRoleTransport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeModeRoleTransport::default_instance_;
  if (!awd::metrics::FaceTimeModeRoleTransport::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeModeRoleTransport::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeModeRoleTransport::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeModeRoleTransport::MergePartialFromCodedStream(awd::metrics::FaceTimeModeRoleTransport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
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
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 9) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v15;
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 9) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v17;
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 9) |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_48:
      if (v11 >= v7 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 9) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v21;
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

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
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t awd::metrics::FaceTimeModeRoleTransport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[9];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
    if ((v5[9] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[9];
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
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t awd::metrics::FaceTimeModeRoleTransport::ByteSize(awd::metrics::FaceTimeModeRoleTransport *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_27;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_23:
    v10 = *(this + 7);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v3 = (v11 + v3);
  }

LABEL_27:
  *(this + 8) = v3;
  return v3;
}

void awd::metrics::FaceTimeModeRoleTransport::CheckTypeAndMergeFrom(awd::metrics::FaceTimeModeRoleTransport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeModeRoleTransport::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeModeRoleTransport::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeModeRoleTransport::CopyFrom(awd::metrics::FaceTimeModeRoleTransport *this, const awd::metrics::FaceTimeModeRoleTransport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeModeRoleTransport::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeModeRoleTransport::Swap(uint64_t this, awd::metrics::FaceTimeModeRoleTransport *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

double awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::SharedCtor(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 44) = MEMORY[0x29EDC9758];
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  return result;
}

awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::FaceTimeCallAggregatedReport_SegmentStats(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, const awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *a2)
{
  *this = &unk_2A1D4E1A0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  v3 = MEMORY[0x29EDC9758];
  *(this + 43) = 0;
  *(this + 44) = v3;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(this, a2);
  return this;
}

void sub_2963EA5A8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 42);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 38);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 36);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 34);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 30);
  if (v9)
  {
    MEMORY[0x29C25A1D0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 28);
  if (v10)
  {
    MEMORY[0x29C25A1D0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 26);
  if (v11)
  {
    MEMORY[0x29C25A1D0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 24);
  if (v12)
  {
    MEMORY[0x29C25A1D0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 22);
  if (v13)
  {
    MEMORY[0x29C25A1D0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 20);
  if (v14)
  {
    MEMORY[0x29C25A1D0](v14, 0x1000C8052888210);
  }

  v15 = *(v1 + 18);
  if (v15)
  {
    MEMORY[0x29C25A1D0](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 16);
  if (v16)
  {
    MEMORY[0x29C25A1D0](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 14);
  if (v17)
  {
    MEMORY[0x29C25A1D0](v17, 0x1000C8052888210);
  }

  v18 = *(v1 + 12);
  if (v18)
  {
    MEMORY[0x29C25A1D0](v18, 0x1000C8052888210);
  }

  v19 = *(v1 + 10);
  if (v19)
  {
    MEMORY[0x29C25A1D0](v19, 0x1000C8052888210);
  }

  v20 = *(v1 + 8);
  if (v20)
  {
    MEMORY[0x29C25A1D0](v20, 0x1000C8052888210);
  }

  v21 = *(v1 + 6);
  if (v21)
  {
    MEMORY[0x29C25A1D0](v21, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, const awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
  }

  v4 = *(a2 + 14);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v4);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v5 = *(a2 + 18);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v5);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v6 = *(a2 + 22);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v6);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v7 = *(a2 + 26);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v7);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v8 = *(a2 + 30);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, *(this + 30) + v8);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v9 = *(a2 + 34);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 34) + v9);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v10 = *(a2 + 38);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 38) + v10);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
  }

  v11 = *(a2 + 42);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 42) + v11);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v12 = *(a2 + 46);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 46) + v12);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v13 = *(a2 + 50);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 50) + v13);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  v14 = *(a2 + 54);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, *(this + 54) + v14);
    memcpy((*(this + 26) + 4 * *(this + 54)), *(a2 + 26), 4 * *(a2 + 54));
    *(this + 54) += *(a2 + 54);
  }

  v15 = *(a2 + 58);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, *(this + 58) + v15);
    memcpy((*(this + 28) + 4 * *(this + 58)), *(a2 + 28), 4 * *(a2 + 58));
    *(this + 58) += *(a2 + 58);
  }

  v16 = *(a2 + 62);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, *(this + 62) + v16);
    memcpy((*(this + 30) + 4 * *(this + 62)), *(a2 + 30), 4 * *(a2 + 62));
    *(this + 62) += *(a2 + 62);
  }

  v17 = *(a2 + 66);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, *(this + 66) + v17);
    memcpy((*(this + 32) + 4 * *(this + 66)), *(a2 + 32), 4 * *(a2 + 66));
    *(this + 66) += *(a2 + 66);
  }

  v18 = *(a2 + 70);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, *(this + 70) + v18);
    memcpy((*(this + 34) + 4 * *(this + 70)), *(a2 + 34), 4 * *(a2 + 70));
    *(this + 70) += *(a2 + 70);
  }

  v19 = *(a2 + 74);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, *(this + 74) + v19);
    memcpy((*(this + 36) + 4 * *(this + 74)), *(a2 + 36), 4 * *(a2 + 74));
    *(this + 74) += *(a2 + 74);
  }

  v20 = *(a2 + 78);
  if (v20)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, *(this + 78) + v20);
    memcpy((*(this + 38) + 4 * *(this + 78)), *(a2 + 38), 4 * *(a2 + 78));
    *(this + 78) += *(a2 + 78);
  }

  v21 = *(a2 + 82);
  if (v21)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, *(this + 82) + v21);
    memcpy((*(this + 40) + 4 * *(this + 82)), *(a2 + 40), 4 * *(a2 + 82));
    *(this + 82) += *(a2 + 82);
  }

  v22 = *(a2 + 86);
  if (v22)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, *(this + 86) + v22);
    memcpy((*(this + 42) + 4 * *(this + 86)), *(a2 + 42), 4 * *(a2 + 86));
    *(this + 86) += *(a2 + 86);
  }

  v23 = *(a2 + 94);
  if (!v23)
  {
    goto LABEL_51;
  }

  if (v23)
  {
    v28 = *(a2 + 2);
    *(this + 94) |= 1u;
    *(this + 2) = v28;
    v23 = *(a2 + 94);
    if ((v23 & 2) == 0)
    {
LABEL_44:
      if ((v23 & 4) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_65;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_44;
  }

  v29 = *(a2 + 3);
  *(this + 94) |= 2u;
  *(this + 3) = v29;
  v23 = *(a2 + 94);
  if ((v23 & 4) == 0)
  {
LABEL_45:
    if ((v23 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_66;
  }

LABEL_65:
  v30 = *(a2 + 4);
  *(this + 94) |= 4u;
  *(this + 4) = v30;
  v23 = *(a2 + 94);
  if ((v23 & 8) == 0)
  {
LABEL_46:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_67;
  }

LABEL_66:
  v31 = *(a2 + 5);
  *(this + 94) |= 8u;
  *(this + 5) = v31;
  v23 = *(a2 + 94);
  if ((v23 & 0x10) == 0)
  {
LABEL_47:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_48;
    }

LABEL_68:
    v33 = *(a2 + 7);
    *(this + 94) |= 0x20u;
    *(this + 7) = v33;
    v23 = *(a2 + 94);
    if ((v23 & 0x40) == 0)
    {
LABEL_49:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    goto LABEL_69;
  }

LABEL_67:
  v32 = *(a2 + 6);
  *(this + 94) |= 0x10u;
  *(this + 6) = v32;
  v23 = *(a2 + 94);
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_68;
  }

LABEL_48:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_69:
  v34 = *(a2 + 8);
  *(this + 94) |= 0x40u;
  *(this + 8) = v34;
  v23 = *(a2 + 94);
  if ((v23 & 0x80) != 0)
  {
LABEL_50:
    v24 = *(a2 + 9);
    *(this + 94) |= 0x80u;
    *(this + 9) = v24;
    v23 = *(a2 + 94);
  }

LABEL_51:
  if ((v23 & 0xFF00) != 0)
  {
    if ((v23 & 0x100) != 0)
    {
      v25 = *(a2 + 10);
      *(this + 94) |= 0x100u;
      *(this + 10) = v25;
      v23 = *(a2 + 94);
    }

    if ((v23 & 0x200) != 0)
    {
      v26 = *(a2 + 11);
      *(this + 94) |= 0x200u;
      *(this + 11) = v26;
      v23 = *(a2 + 94);
    }
  }

  if (v23 >> 29)
  {
    if ((v23 & 0x20000000) != 0)
    {
      v35 = *(a2 + 90);
      *(this + 94) |= 0x20000000u;
      *(this + 90) = v35;
      v23 = *(a2 + 94);
      if ((v23 & 0x40000000) == 0)
      {
LABEL_59:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_75;
      }
    }

    else if ((v23 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    v36 = *(a2 + 44);
    *(this + 94) |= 0x40000000u;
    v37 = *(this + 44);
    if (v37 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v37, v36);
    if ((*(a2 + 94) & 0x80000000) != 0)
    {
LABEL_75:
      v38 = *(a2 + 91);
      *(this + 94) |= 0x80000000;
      *(this + 91) = v38;
    }
  }

LABEL_60:
  if (*(a2 + 380))
  {
    v27 = *(a2 + 92);
    *(this + 95) |= 1u;
    *(this + 92) = v27;
  }
}

void sub_2963EAE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::~FaceTimeCallAggregatedReport_SegmentStats(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this)
{
  *this = &unk_2A1D4E1A0;
  awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::SharedDtor(this);
  v2 = *(this + 42);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 40);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 38);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 36);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 34);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 32);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 30);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 28);
  if (v9)
  {
    MEMORY[0x29C25A1D0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 26);
  if (v10)
  {
    MEMORY[0x29C25A1D0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 24);
  if (v11)
  {
    MEMORY[0x29C25A1D0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 22);
  if (v12)
  {
    MEMORY[0x29C25A1D0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 20);
  if (v13)
  {
    MEMORY[0x29C25A1D0](v13, 0x1000C8052888210);
  }

  v14 = *(this + 18);
  if (v14)
  {
    MEMORY[0x29C25A1D0](v14, 0x1000C8052888210);
  }

  v15 = *(this + 16);
  if (v15)
  {
    MEMORY[0x29C25A1D0](v15, 0x1000C8052888210);
  }

  v16 = *(this + 14);
  if (v16)
  {
    MEMORY[0x29C25A1D0](v16, 0x1000C8052888210);
  }

  v17 = *(this + 12);
  if (v17)
  {
    MEMORY[0x29C25A1D0](v17, 0x1000C8052888210);
  }

  v18 = *(this + 10);
  if (v18)
  {
    MEMORY[0x29C25A1D0](v18, 0x1000C8052888210);
  }

  v19 = *(this + 8);
  if (v19)
  {
    MEMORY[0x29C25A1D0](v19, 0x1000C8052888210);
  }

  v20 = *(this + 6);
  if (v20)
  {
    MEMORY[0x29C25A1D0](v20, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::~FaceTimeCallAggregatedReport_SegmentStats(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::SharedDtor(uint64_t this)
{
  v1 = *(this + 352);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance_;
  if (!awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::Clear(uint64_t this)
{
  v1 = *(this + 376);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
  }

  if (v1 >> 29)
  {
    *(this + 360) = 0;
    if ((v1 & 0x40000000) != 0)
    {
      v2 = *(this + 352);
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

    *(this + 364) = 0;
  }

  if (*(this + 380))
  {
    *(this + 368) = 0;
  }

  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 200) = 0;
  *(this + 216) = 0;
  *(this + 232) = 0;
  *(this + 248) = 0;
  *(this + 264) = 0;
  *(this + 280) = 0;
  *(this + 296) = 0;
  *(this + 312) = 0;
  *(this + 328) = 0;
  *(this + 344) = 0;
  *(this + 376) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergePartialFromCodedStream(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = (this + 360);
  v5 = (this + 364);
  v6 = (this + 368);
LABEL_2:
  while (2)
  {
    v7 = *(a2 + 1);
    if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v7 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v9 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 94) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v20 = v13 + 1;
          *(a2 + 1) = v20;
          goto LABEL_141;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_141:
        if (v20 >= v10 || (v48 = *v20, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v48;
          v49 = v20 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 94) |= 2u;
        if (v49 >= v10 || *v49 != 24)
        {
          continue;
        }

        v17 = v49 + 1;
        *(a2 + 1) = v17;
LABEL_149:
        if (v17 >= v10 || (v50 = *v17, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v50;
          v51 = v17 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 94) |= 4u;
        if (v51 >= v10 || *v51 != 32)
        {
          continue;
        }

        v18 = v51 + 1;
        *(a2 + 1) = v18;
LABEL_157:
        if (v18 >= v10 || (v52 = *v18, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v52;
          v53 = v18 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 94) |= 8u;
        if (v53 >= v10 || *v53 != 40)
        {
          continue;
        }

        v15 = v53 + 1;
        *(a2 + 1) = v15;
LABEL_165:
        if (v15 >= v10 || (v54 = *v15, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v54;
          v55 = v15 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 94) |= 0x10u;
        if (v55 >= v10 || *v55 != 48)
        {
          continue;
        }

        v23 = v55 + 1;
        *(a2 + 1) = v23;
LABEL_173:
        if (v23 >= v10 || (v56 = *v23, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v56;
          v57 = v23 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 94) |= 0x20u;
        if (v57 >= v10 || *v57 != 56)
        {
          continue;
        }

        v24 = v57 + 1;
        *(a2 + 1) = v24;
LABEL_181:
        if (v24 >= v10 || (v58 = *v24, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v58;
          v59 = v24 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 94) |= 0x40u;
        if (v59 >= v10 || *v59 != 64)
        {
          continue;
        }

        v19 = v59 + 1;
        *(a2 + 1) = v19;
LABEL_189:
        if (v19 >= v10 || (v60 = *v19, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v60;
          v61 = v19 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 94) |= 0x80u;
        if (v61 >= v10 || *v61 != 72)
        {
          continue;
        }

        v25 = v61 + 1;
        *(a2 + 1) = v25;
LABEL_197:
        if (v25 >= v10 || (v62 = *v25, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v62;
          v63 = v25 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 94) |= 0x100u;
        if (v63 >= v10 || *v63 != 80)
        {
          continue;
        }

        v16 = v63 + 1;
        *(a2 + 1) = v16;
LABEL_205:
        if (v16 >= v10 || (v64 = *v16, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v64;
          v65 = (v16 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 94) |= 0x200u;
        if (v65 >= v10)
        {
          continue;
        }

        v66 = *v65;
        goto LABEL_212;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_149;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_157;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_165;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_173;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v24 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_181;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_189;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v25 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_197;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_205;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
            if (!result)
            {
              return result;
            }

            goto LABEL_231;
          }

          goto LABEL_112;
        }

        v42 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v42 >= v10 || *v42 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v42;
            *(a2 + 1) = v42 + 1;
          }

          v67 = *(this + 14);
          if (v67 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v67 + 1);
            v67 = *(this + 14);
          }

          v68 = v281;
          v69 = *(this + 6);
          *(this + 14) = v67 + 1;
          *(v69 + 4 * v67) = v68;
          v70 = *(this + 15) - *(this + 14);
          if (v70 >= 1)
          {
            v71 = v70 + 1;
            do
            {
              v72 = *(a2 + 1);
              v73 = *(a2 + 2);
              if (v72 >= v73 || *v72 != 88)
              {
                break;
              }

              *(a2 + 1) = v72 + 1;
              if ((v72 + 1) >= v73 || v72[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v72[1];
                *(a2 + 1) = v72 + 2;
              }

              v74 = *(this + 14);
              if (v74 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v74 = *(this + 14);
              }

              v75 = v281;
              v76 = *(this + 6);
              *(this + 14) = v74 + 1;
              *(v76 + 4 * v74) = v75;
              --v71;
            }

            while (v71 > 1);
          }

LABEL_231:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v65 >= v10)
          {
            goto LABEL_2;
          }

          v66 = *v65;
          if (v66 == 96)
          {
            goto LABEL_233;
          }

LABEL_212:
          if (v66 != 88)
          {
            goto LABEL_2;
          }

          v42 = (v65 + 1);
          *(a2 + 1) = v42;
        }

      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
            if (!result)
            {
              return result;
            }

            goto LABEL_251;
          }

          goto LABEL_112;
        }

        v32 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v32 >= v10 || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v32;
            *(a2 + 1) = v32 + 1;
          }

          v77 = *(this + 18);
          if (v77 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v77 + 1);
            v77 = *(this + 18);
          }

          v78 = v281;
          v79 = *(this + 8);
          *(this + 18) = v77 + 1;
          *(v79 + 4 * v77) = v78;
          v80 = *(this + 19) - *(this + 18);
          if (v80 >= 1)
          {
            v81 = v80 + 1;
            do
            {
              v82 = *(a2 + 1);
              v83 = *(a2 + 2);
              if (v82 >= v83 || *v82 != 96)
              {
                break;
              }

              *(a2 + 1) = v82 + 1;
              if ((v82 + 1) >= v83 || v82[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v82[1];
                *(a2 + 1) = v82 + 2;
              }

              v84 = *(this + 18);
              if (v84 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v84 = *(this + 18);
              }

              v85 = v281;
              v86 = *(this + 8);
              *(this + 18) = v84 + 1;
              *(v86 + 4 * v84) = v85;
              --v81;
            }

            while (v81 > 1);
          }

LABEL_251:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v65 >= v10)
          {
            goto LABEL_2;
          }

          v87 = *v65;
          if (v87 == 104)
          {
            goto LABEL_255;
          }

          if (v87 != 96)
          {
            goto LABEL_2;
          }

LABEL_233:
          v32 = (v65 + 1);
          *(a2 + 1) = v32;
        }

      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_273;
          }

          goto LABEL_112;
        }

        v33 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v33 >= v10 || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v33;
            *(a2 + 1) = v33 + 1;
          }

          v88 = *(this + 22);
          if (v88 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v88 + 1);
            v88 = *(this + 22);
          }

          v89 = v281;
          v90 = *(this + 10);
          *(this + 22) = v88 + 1;
          *(v90 + 4 * v88) = v89;
          v91 = *(this + 23) - *(this + 22);
          if (v91 >= 1)
          {
            v92 = v91 + 1;
            do
            {
              v93 = *(a2 + 1);
              v94 = *(a2 + 2);
              if (v93 >= v94 || *v93 != 104)
              {
                break;
              }

              *(a2 + 1) = v93 + 1;
              if ((v93 + 1) >= v94 || v93[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v93[1];
                *(a2 + 1) = v93 + 2;
              }

              v95 = *(this + 22);
              if (v95 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v95 = *(this + 22);
              }

              v96 = v281;
              v97 = *(this + 10);
              *(this + 22) = v95 + 1;
              *(v97 + 4 * v95) = v96;
              --v92;
            }

            while (v92 > 1);
          }

LABEL_273:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v65 >= v10)
          {
            goto LABEL_2;
          }

          v98 = *v65;
          if (v98 == 112)
          {
            goto LABEL_277;
          }

          if (v98 != 104)
          {
            goto LABEL_2;
          }

LABEL_255:
          v33 = (v65 + 1);
          *(a2 + 1) = v33;
        }

      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
            if (!result)
            {
              return result;
            }

            goto LABEL_295;
          }

          goto LABEL_112;
        }

        v40 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v40 >= v10 || *v40 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v40;
            *(a2 + 1) = v40 + 1;
          }

          v99 = *(this + 26);
          if (v99 == *(this + 27))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v99 + 1);
            v99 = *(this + 26);
          }

          v100 = v281;
          v101 = *(this + 12);
          *(this + 26) = v99 + 1;
          *(v101 + 4 * v99) = v100;
          v102 = *(this + 27) - *(this + 26);
          if (v102 >= 1)
          {
            v103 = v102 + 1;
            do
            {
              v104 = *(a2 + 1);
              v105 = *(a2 + 2);
              if (v104 >= v105 || *v104 != 112)
              {
                break;
              }

              *(a2 + 1) = v104 + 1;
              if ((v104 + 1) >= v105 || v104[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v104[1];
                *(a2 + 1) = v104 + 2;
              }

              v106 = *(this + 26);
              if (v106 >= *(this + 27))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v106 = *(this + 26);
              }

              v107 = v281;
              v108 = *(this + 12);
              *(this + 26) = v106 + 1;
              *(v108 + 4 * v106) = v107;
              --v103;
            }

            while (v103 > 1);
          }

LABEL_295:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v65 >= v10)
          {
            goto LABEL_2;
          }

          v109 = *v65;
          if (v109 == 120)
          {
            goto LABEL_299;
          }

          if (v109 != 112)
          {
            goto LABEL_2;
          }

LABEL_277:
          v40 = (v65 + 1);
          *(a2 + 1) = v40;
        }

      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 112);
            if (!result)
            {
              return result;
            }

            goto LABEL_317;
          }

          goto LABEL_112;
        }

        v31 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v31 >= v10 || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v110 = *(this + 30);
          if (v110 == *(this + 31))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, v110 + 1);
            v110 = *(this + 30);
          }

          v111 = v281;
          v112 = *(this + 14);
          *(this + 30) = v110 + 1;
          *(v112 + 4 * v110) = v111;
          v113 = *(this + 31) - *(this + 30);
          if (v113 >= 1)
          {
            v114 = v113 + 1;
            do
            {
              v115 = *(a2 + 1);
              v116 = *(a2 + 2);
              if (v115 >= v116 || *v115 != 120)
              {
                break;
              }

              *(a2 + 1) = v115 + 1;
              if ((v115 + 1) >= v116 || v115[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v115[1];
                *(a2 + 1) = v115 + 2;
              }

              v117 = *(this + 30);
              if (v117 >= *(this + 31))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v117 = *(this + 30);
              }

              v118 = v281;
              v119 = *(this + 14);
              *(this + 30) = v117 + 1;
              *(v119 + 4 * v117) = v118;
              --v114;
            }

            while (v114 > 1);
          }

LABEL_317:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v65 >= v10 || *v65 != 120)
          {
            break;
          }

LABEL_299:
          v31 = (v65 + 1);
          *(a2 + 1) = v31;
        }

        if (v10 - v65 >= 2 && *v65 == 128 && v65[1] == 1)
        {
          while (1)
          {
            v36 = (v65 + 2);
            *(a2 + 1) = v36;
LABEL_323:
            v281 = 0;
            if (v36 >= v10 || *v36 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
              {
                return 0;
              }
            }

            else
            {
              v281 = *v36;
              *(a2 + 1) = v36 + 1;
            }

            v120 = *(this + 34);
            if (v120 == *(this + 35))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v120 + 1);
              v120 = *(this + 34);
            }

            v121 = v281;
            v122 = *(this + 16);
            *(this + 34) = v120 + 1;
            *(v122 + 4 * v120) = v121;
            v123 = *(this + 35) - *(this + 34);
            if (v123 >= 1)
            {
              v124 = v123 + 1;
              do
              {
                v125 = *(a2 + 1);
                v126 = *(a2 + 2);
                if (v126 - v125 < 2 || *v125 != 128 || v125[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v125 + 2;
                if ((v125 + 2) >= v126 || v125[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                  {
                    return 0;
                  }
                }

                else
                {
                  v281 = v125[2];
                  *(a2 + 1) = v125 + 3;
                }

                v127 = *(this + 34);
                if (v127 >= *(this + 35))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                  v127 = *(this + 34);
                }

                v128 = v281;
                v129 = *(this + 16);
                *(this + 34) = v127 + 1;
                *(v129 + 4 * v127) = v128;
                --v124;
              }

              while (v124 > 1);
            }

LABEL_341:
            v65 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v10 - v65 < 2)
            {
              break;
            }

            v130 = *v65;
            if (v130 == 136)
            {
              if (v65[1] == 1)
              {
                while (1)
                {
                  v30 = (v65 + 2);
                  *(a2 + 1) = v30;
LABEL_348:
                  v281 = 0;
                  if (v30 >= v10 || *v30 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v281 = *v30;
                    *(a2 + 1) = v30 + 1;
                  }

                  v131 = *(this + 38);
                  if (v131 == *(this + 39))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v131 + 1);
                    v131 = *(this + 38);
                  }

                  v132 = v281;
                  v133 = *(this + 18);
                  *(this + 38) = v131 + 1;
                  *(v133 + 4 * v131) = v132;
                  v134 = *(this + 39) - *(this + 38);
                  if (v134 >= 1)
                  {
                    v135 = v134 + 1;
                    do
                    {
                      v136 = *(a2 + 1);
                      v137 = *(a2 + 2);
                      if (v137 - v136 < 2 || *v136 != 136 || v136[1] != 1)
                      {
                        break;
                      }

                      *(a2 + 1) = v136 + 2;
                      if ((v136 + 2) >= v137 || v136[2] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v281 = v136[2];
                        *(a2 + 1) = v136 + 3;
                      }

                      v138 = *(this + 38);
                      if (v138 >= *(this + 39))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                        v138 = *(this + 38);
                      }

                      v139 = v281;
                      v140 = *(this + 18);
                      *(this + 38) = v138 + 1;
                      *(v140 + 4 * v138) = v139;
                      --v135;
                    }

                    while (v135 > 1);
                  }

LABEL_366:
                  v65 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  if (v10 - v65 < 2)
                  {
                    break;
                  }

                  v141 = *v65;
                  if (v141 == 144)
                  {
                    if (v65[1] != 1)
                    {
                      goto LABEL_2;
                    }

                    goto LABEL_372;
                  }

                  if (v141 != 136 || v65[1] != 1)
                  {
                    goto LABEL_2;
                  }
                }
              }

              goto LABEL_2;
            }

            if (v130 != 128 || v65[1] != 1)
            {
              goto LABEL_2;
            }
          }
        }

        continue;
      case 0x10u:
        if ((TagFallback & 7) == 0)
        {
          v36 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_323;
        }

        if (v9 != 2)
        {
          goto LABEL_112;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 128);
        if (!result)
        {
          return result;
        }

        goto LABEL_341;
      case 0x11u:
        if ((TagFallback & 7) == 0)
        {
          v30 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_348;
        }

        if (v9 != 2)
        {
          goto LABEL_112;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 144);
        if (!result)
        {
          return result;
        }

        goto LABEL_366;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 160);
            if (!result)
            {
              return result;
            }

            goto LABEL_391;
          }

          goto LABEL_112;
        }

        v37 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v37 >= v10 || *v37 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v37;
            *(a2 + 1) = v37 + 1;
          }

          v142 = *(this + 42);
          if (v142 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v142 + 1);
            v142 = *(this + 42);
          }

          v143 = v281;
          v144 = *(this + 20);
          *(this + 42) = v142 + 1;
          *(v144 + 4 * v142) = v143;
          v145 = *(this + 43) - *(this + 42);
          if (v145 >= 1)
          {
            v146 = v145 + 1;
            do
            {
              v147 = *(a2 + 1);
              v148 = *(a2 + 2);
              if (v148 - v147 < 2 || *v147 != 144 || v147[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v147 + 2;
              if ((v147 + 2) >= v148 || v147[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v147[2];
                *(a2 + 1) = v147 + 3;
              }

              v149 = *(this + 42);
              if (v149 >= *(this + 43))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v149 = *(this + 42);
              }

              v150 = v281;
              v151 = *(this + 20);
              *(this + 42) = v149 + 1;
              *(v151 + 4 * v149) = v150;
              --v146;
            }

            while (v146 > 1);
          }

LABEL_391:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v10 - v65 < 2)
          {
            goto LABEL_2;
          }

          v152 = *v65;
          if (v152 == 152)
          {
            if (v65[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_397;
          }

          if (v152 != 144 || v65[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_372:
          v37 = (v65 + 2);
          *(a2 + 1) = v37;
        }

      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 176);
            if (!result)
            {
              return result;
            }

            goto LABEL_416;
          }

          goto LABEL_112;
        }

        v41 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v41 >= v10 || *v41 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v41;
            *(a2 + 1) = v41 + 1;
          }

          v153 = *(this + 46);
          if (v153 == *(this + 47))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v153 + 1);
            v153 = *(this + 46);
          }

          v154 = v281;
          v155 = *(this + 22);
          *(this + 46) = v153 + 1;
          *(v155 + 4 * v153) = v154;
          v156 = *(this + 47) - *(this + 46);
          if (v156 >= 1)
          {
            v157 = v156 + 1;
            do
            {
              v158 = *(a2 + 1);
              v159 = *(a2 + 2);
              if (v159 - v158 < 2 || *v158 != 152 || v158[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v158 + 2;
              if ((v158 + 2) >= v159 || v158[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v158[2];
                *(a2 + 1) = v158 + 3;
              }

              v160 = *(this + 46);
              if (v160 >= *(this + 47))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v160 = *(this + 46);
              }

              v161 = v281;
              v162 = *(this + 22);
              *(this + 46) = v160 + 1;
              *(v162 + 4 * v160) = v161;
              --v157;
            }

            while (v157 > 1);
          }

LABEL_416:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v10 - v65 < 2)
          {
            goto LABEL_2;
          }

          v163 = *v65;
          if (v163 == 160)
          {
            if (v65[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_422;
          }

          if (v163 != 152 || v65[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_397:
          v41 = (v65 + 2);
          *(a2 + 1) = v41;
        }

      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 192);
            if (!result)
            {
              return result;
            }

            goto LABEL_441;
          }

          goto LABEL_112;
        }

        v44 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v44 >= v10 || *v44 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v44;
            *(a2 + 1) = v44 + 1;
          }

          v164 = *(this + 50);
          if (v164 == *(this + 51))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v164 + 1);
            v164 = *(this + 50);
          }

          v165 = v281;
          v166 = *(this + 24);
          *(this + 50) = v164 + 1;
          *(v166 + 4 * v164) = v165;
          v167 = *(this + 51) - *(this + 50);
          if (v167 >= 1)
          {
            v168 = v167 + 1;
            do
            {
              v169 = *(a2 + 1);
              v170 = *(a2 + 2);
              if (v170 - v169 < 2 || *v169 != 160 || v169[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v169 + 2;
              if ((v169 + 2) >= v170 || v169[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v169[2];
                *(a2 + 1) = v169 + 3;
              }

              v171 = *(this + 50);
              if (v171 >= *(this + 51))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v171 = *(this + 50);
              }

              v172 = v281;
              v173 = *(this + 24);
              *(this + 50) = v171 + 1;
              *(v173 + 4 * v171) = v172;
              --v168;
            }

            while (v168 > 1);
          }

LABEL_441:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v10 - v65 < 2)
          {
            goto LABEL_2;
          }

          v174 = *v65;
          if (v174 == 168)
          {
            if (v65[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_447;
          }

          if (v174 != 160 || v65[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_422:
          v44 = (v65 + 2);
          *(a2 + 1) = v44;
        }

      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 208);
            if (!result)
            {
              return result;
            }

            goto LABEL_466;
          }

          goto LABEL_112;
        }

        v38 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v38 >= v10 || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v38;
            *(a2 + 1) = v38 + 1;
          }

          v175 = *(this + 54);
          if (v175 == *(this + 55))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, v175 + 1);
            v175 = *(this + 54);
          }

          v176 = v281;
          v177 = *(this + 26);
          *(this + 54) = v175 + 1;
          *(v177 + 4 * v175) = v176;
          v178 = *(this + 55) - *(this + 54);
          if (v178 >= 1)
          {
            v179 = v178 + 1;
            do
            {
              v180 = *(a2 + 1);
              v181 = *(a2 + 2);
              if (v181 - v180 < 2 || *v180 != 168 || v180[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v180 + 2;
              if ((v180 + 2) >= v181 || v180[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v180[2];
                *(a2 + 1) = v180 + 3;
              }

              v182 = *(this + 54);
              if (v182 >= *(this + 55))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v182 = *(this + 54);
              }

              v183 = v281;
              v184 = *(this + 26);
              *(this + 54) = v182 + 1;
              *(v184 + 4 * v182) = v183;
              --v179;
            }

            while (v179 > 1);
          }

LABEL_466:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v10 - v65 < 2)
          {
            goto LABEL_2;
          }

          v185 = *v65;
          if (v185 == 176)
          {
            if (v65[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_472;
          }

          if (v185 != 168 || v65[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_447:
          v38 = (v65 + 2);
          *(a2 + 1) = v38;
        }

      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 336);
            if (!result)
            {
              return result;
            }

            goto LABEL_491;
          }

          goto LABEL_112;
        }

        v39 = *(a2 + 1);
        v10 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v39 >= v10 || *v39 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v39;
            *(a2 + 1) = v39 + 1;
          }

          v186 = *(this + 86);
          if (v186 == *(this + 87))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, v186 + 1);
            v186 = *(this + 86);
          }

          v187 = v281;
          v188 = *(this + 42);
          *(this + 86) = v186 + 1;
          *(v188 + 4 * v186) = v187;
          v189 = *(this + 87) - *(this + 86);
          if (v189 >= 1)
          {
            v190 = v189 + 1;
            do
            {
              v191 = *(a2 + 1);
              v192 = *(a2 + 2);
              if (v192 - v191 < 2 || *v191 != 176 || v191[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v191 + 2;
              if ((v191 + 2) >= v192 || v191[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v191[2];
                *(a2 + 1) = v191 + 3;
              }

              v193 = *(this + 86);
              if (v193 >= *(this + 87))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v193 = *(this + 86);
              }

              v194 = v281;
              v195 = *(this + 42);
              *(this + 86) = v193 + 1;
              *(v195 + 4 * v193) = v194;
              --v190;
            }

            while (v190 > 1);
          }

LABEL_491:
          v65 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v10 - v65 < 2)
          {
            goto LABEL_2;
          }

          v196 = *v65;
          if (v196 == 184)
          {
            if (v65[1] != 1)
            {
              goto LABEL_2;
            }

            v27 = (v65 + 2);
            *(a2 + 1) = v27;
LABEL_498:
            if (v27 >= v10 || (v197 = *v27, (v197 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
              if (!result)
              {
                return result;
              }

              v198 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *v4 = v197;
              v198 = (v27 + 1);
              *(a2 + 1) = v198;
            }

            v28 = *(this + 94) | 0x20000000;
            *(this + 94) = v28;
            if (v10 - v198 < 2 || *v198 != 194 || v198[1] != 1)
            {
              goto LABEL_2;
            }

            *(a2 + 1) = v198 + 2;
LABEL_507:
            *(this + 94) = v28 | 0x40000000;
            if (*(this + 44) == MEMORY[0x29EDC9758])
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v199 = *(a2 + 1);
            v21 = *(a2 + 2);
            if (v21 - v199 < 2 || *v199 != 200 || v199[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_513;
          }

          if (v196 != 176 || v65[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_472:
          v39 = (v65 + 2);
          *(a2 + 1) = v39;
        }

      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v27 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_498;
      case 0x18u:
        if (v9 != 2)
        {
          goto LABEL_112;
        }

        v28 = *(this + 94);
        goto LABEL_507;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 224);
            if (!result)
            {
              return result;
            }

            goto LABEL_532;
          }

          goto LABEL_112;
        }

        v35 = *(a2 + 1);
        v21 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v35 >= v21 || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v35;
            *(a2 + 1) = v35 + 1;
          }

          v200 = *(this + 58);
          if (v200 == *(this + 59))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, v200 + 1);
            v200 = *(this + 58);
          }

          v201 = v281;
          v202 = *(this + 28);
          *(this + 58) = v200 + 1;
          *(v202 + 4 * v200) = v201;
          v203 = *(this + 59) - *(this + 58);
          if (v203 >= 1)
          {
            v204 = v203 + 1;
            do
            {
              v205 = *(a2 + 1);
              v206 = *(a2 + 2);
              if (v206 - v205 < 2 || *v205 != 200 || v205[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v205 + 2;
              if ((v205 + 2) >= v206 || v205[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v205[2];
                *(a2 + 1) = v205 + 3;
              }

              v207 = *(this + 58);
              if (v207 >= *(this + 59))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v207 = *(this + 58);
              }

              v208 = v281;
              v209 = *(this + 28);
              *(this + 58) = v207 + 1;
              *(v209 + 4 * v207) = v208;
              --v204;
            }

            while (v204 > 1);
          }

LABEL_532:
          v199 = *(a2 + 1);
          v21 = *(a2 + 2);
          if (v21 - v199 < 2)
          {
            goto LABEL_2;
          }

          v210 = *v199;
          if (v210 == 208)
          {
            if (v199[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_538;
          }

          if (v210 != 200 || v199[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_513:
          v35 = (v199 + 2);
          *(a2 + 1) = v35;
        }

      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 240);
            if (!result)
            {
              return result;
            }

            goto LABEL_557;
          }

          goto LABEL_112;
        }

        v34 = *(a2 + 1);
        v21 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v34 >= v21 || *v34 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v34;
            *(a2 + 1) = v34 + 1;
          }

          v211 = *(this + 62);
          if (v211 == *(this + 63))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, v211 + 1);
            v211 = *(this + 62);
          }

          v212 = v281;
          v213 = *(this + 30);
          *(this + 62) = v211 + 1;
          *(v213 + 4 * v211) = v212;
          v214 = *(this + 63) - *(this + 62);
          if (v214 >= 1)
          {
            v215 = v214 + 1;
            do
            {
              v216 = *(a2 + 1);
              v217 = *(a2 + 2);
              if (v217 - v216 < 2 || *v216 != 208 || v216[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v216 + 2;
              if ((v216 + 2) >= v217 || v216[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v216[2];
                *(a2 + 1) = v216 + 3;
              }

              v218 = *(this + 62);
              if (v218 >= *(this + 63))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v218 = *(this + 62);
              }

              v219 = v281;
              v220 = *(this + 30);
              *(this + 62) = v218 + 1;
              *(v220 + 4 * v218) = v219;
              --v215;
            }

            while (v215 > 1);
          }

LABEL_557:
          v199 = *(a2 + 1);
          v21 = *(a2 + 2);
          if (v21 - v199 < 2)
          {
            goto LABEL_2;
          }

          v221 = *v199;
          if (v221 == 216)
          {
            if (v199[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_563;
          }

          if (v221 != 208 || v199[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_538:
          v34 = (v199 + 2);
          *(a2 + 1) = v34;
        }

      case 0x1Bu:
        if ((TagFallback & 7) == 0)
        {
          v47 = *(a2 + 1);
          v21 = *(a2 + 2);
          while (1)
          {
            v281 = 0;
            if (v47 >= v21 || *v47 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
              {
                return 0;
              }
            }

            else
            {
              v281 = *v47;
              *(a2 + 1) = v47 + 1;
            }

            v222 = *(this + 66);
            if (v222 == *(this + 67))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, v222 + 1);
              v222 = *(this + 66);
            }

            v223 = v281;
            v224 = *(this + 32);
            *(this + 66) = v222 + 1;
            *(v224 + 4 * v222) = v223;
            v225 = *(this + 67) - *(this + 66);
            if (v225 >= 1)
            {
              v226 = v225 + 1;
              do
              {
                v227 = *(a2 + 1);
                v228 = *(a2 + 2);
                if (v228 - v227 < 2 || *v227 != 216 || v227[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v227 + 2;
                if ((v227 + 2) >= v228 || v227[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                  {
                    return 0;
                  }
                }

                else
                {
                  v281 = v227[2];
                  *(a2 + 1) = v227 + 3;
                }

                v229 = *(this + 66);
                if (v229 >= *(this + 67))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                  v229 = *(this + 66);
                }

                v230 = v281;
                v231 = *(this + 32);
                *(this + 66) = v229 + 1;
                *(v231 + 4 * v229) = v230;
                --v226;
              }

              while (v226 > 1);
            }

LABEL_582:
            v199 = *(a2 + 1);
            v21 = *(a2 + 2);
            if (v21 - v199 < 2)
            {
              goto LABEL_2;
            }

            v232 = *v199;
            if (v232 == 224)
            {
              if (v199[1] == 1)
              {
                while (1)
                {
                  v29 = (v199 + 2);
                  *(a2 + 1) = v29;
LABEL_589:
                  v281 = 0;
                  if (v29 >= v21 || *v29 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v281 = *v29;
                    *(a2 + 1) = v29 + 1;
                  }

                  v233 = *(this + 70);
                  if (v233 == *(this + 71))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, v233 + 1);
                    v233 = *(this + 70);
                  }

                  v234 = v281;
                  v235 = *(this + 34);
                  *(this + 70) = v233 + 1;
                  *(v235 + 4 * v233) = v234;
                  v236 = *(this + 71) - *(this + 70);
                  if (v236 >= 1)
                  {
                    v237 = v236 + 1;
                    do
                    {
                      v238 = *(a2 + 1);
                      v239 = *(a2 + 2);
                      if (v239 - v238 < 2 || *v238 != 224 || v238[1] != 1)
                      {
                        break;
                      }

                      *(a2 + 1) = v238 + 2;
                      if ((v238 + 2) >= v239 || v238[2] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v281 = v238[2];
                        *(a2 + 1) = v238 + 3;
                      }

                      v240 = *(this + 70);
                      if (v240 >= *(this + 71))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                        v240 = *(this + 70);
                      }

                      v241 = v281;
                      v242 = *(this + 34);
                      *(this + 70) = v240 + 1;
                      *(v242 + 4 * v240) = v241;
                      --v237;
                    }

                    while (v237 > 1);
                  }

LABEL_607:
                  v199 = *(a2 + 1);
                  v21 = *(a2 + 2);
                  if (v21 - v199 < 2)
                  {
                    break;
                  }

                  v243 = *v199;
                  if (v243 == 232)
                  {
                    if (v199[1] != 1)
                    {
                      goto LABEL_2;
                    }

                    goto LABEL_613;
                  }

                  if (v243 != 224 || v199[1] != 1)
                  {
                    goto LABEL_2;
                  }
                }
              }

              goto LABEL_2;
            }

            if (v232 != 216 || v199[1] != 1)
            {
              goto LABEL_2;
            }

LABEL_563:
            v47 = (v199 + 2);
            *(a2 + 1) = v47;
          }
        }

        if (v9 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 256);
          if (!result)
          {
            return result;
          }

          goto LABEL_582;
        }

LABEL_112:
        if (v9 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0x1Cu:
        if ((TagFallback & 7) == 0)
        {
          v29 = *(a2 + 1);
          v21 = *(a2 + 2);
          goto LABEL_589;
        }

        if (v9 != 2)
        {
          goto LABEL_112;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 272);
        if (!result)
        {
          return result;
        }

        goto LABEL_607;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 288);
            if (!result)
            {
              return result;
            }

            goto LABEL_632;
          }

          goto LABEL_112;
        }

        v45 = *(a2 + 1);
        v21 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v45 >= v21 || *v45 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v45;
            *(a2 + 1) = v45 + 1;
          }

          v244 = *(this + 74);
          if (v244 == *(this + 75))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 36, v244 + 1);
            v244 = *(this + 74);
          }

          v245 = v281;
          v246 = *(this + 36);
          *(this + 74) = v244 + 1;
          *(v246 + 4 * v244) = v245;
          v247 = *(this + 75) - *(this + 74);
          if (v247 >= 1)
          {
            v248 = v247 + 1;
            do
            {
              v249 = *(a2 + 1);
              v250 = *(a2 + 2);
              if (v250 - v249 < 2 || *v249 != 232 || v249[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v249 + 2;
              if ((v249 + 2) >= v250 || v249[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v249[2];
                *(a2 + 1) = v249 + 3;
              }

              v251 = *(this + 74);
              if (v251 >= *(this + 75))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v251 = *(this + 74);
              }

              v252 = v281;
              v253 = *(this + 36);
              *(this + 74) = v251 + 1;
              *(v253 + 4 * v251) = v252;
              --v248;
            }

            while (v248 > 1);
          }

LABEL_632:
          v199 = *(a2 + 1);
          v21 = *(a2 + 2);
          if (v21 - v199 < 2)
          {
            goto LABEL_2;
          }

          v254 = *v199;
          if (v254 == 240)
          {
            if (v199[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_638;
          }

          if (v254 != 232 || v199[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_613:
          v45 = (v199 + 2);
          *(a2 + 1) = v45;
        }

      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 304);
            if (!result)
            {
              return result;
            }

            goto LABEL_657;
          }

          goto LABEL_112;
        }

        v46 = *(a2 + 1);
        v21 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v46 >= v21 || *v46 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v46;
            *(a2 + 1) = v46 + 1;
          }

          v255 = *(this + 78);
          if (v255 == *(this + 79))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, v255 + 1);
            v255 = *(this + 78);
          }

          v256 = v281;
          v257 = *(this + 38);
          *(this + 78) = v255 + 1;
          *(v257 + 4 * v255) = v256;
          v258 = *(this + 79) - *(this + 78);
          if (v258 >= 1)
          {
            v259 = v258 + 1;
            do
            {
              v260 = *(a2 + 1);
              v261 = *(a2 + 2);
              if (v261 - v260 < 2 || *v260 != 240 || v260[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v260 + 2;
              if ((v260 + 2) >= v261 || v260[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v260[2];
                *(a2 + 1) = v260 + 3;
              }

              v262 = *(this + 78);
              if (v262 >= *(this + 79))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v262 = *(this + 78);
              }

              v263 = v281;
              v264 = *(this + 38);
              *(this + 78) = v262 + 1;
              *(v264 + 4 * v262) = v263;
              --v259;
            }

            while (v259 > 1);
          }

LABEL_657:
          v199 = *(a2 + 1);
          v21 = *(a2 + 2);
          if (v21 - v199 < 2)
          {
            goto LABEL_2;
          }

          v265 = *v199;
          if (v265 == 248)
          {
            if (v199[1] != 1)
            {
              goto LABEL_2;
            }

            goto LABEL_663;
          }

          if (v265 != 240 || v199[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_638:
          v46 = (v199 + 2);
          *(a2 + 1) = v46;
        }

      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 320);
            if (!result)
            {
              return result;
            }

            goto LABEL_682;
          }

          goto LABEL_112;
        }

        v43 = *(a2 + 1);
        v21 = *(a2 + 2);
        while (1)
        {
          v281 = 0;
          if (v43 >= v21 || *v43 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
            {
              return 0;
            }
          }

          else
          {
            v281 = *v43;
            *(a2 + 1) = v43 + 1;
          }

          v266 = *(this + 82);
          if (v266 == *(this + 83))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, v266 + 1);
            v266 = *(this + 82);
          }

          v267 = v281;
          v268 = *(this + 40);
          *(this + 82) = v266 + 1;
          *(v268 + 4 * v266) = v267;
          v269 = *(this + 83) - *(this + 82);
          if (v269 >= 1)
          {
            v270 = v269 + 1;
            do
            {
              v271 = *(a2 + 1);
              v272 = *(a2 + 2);
              if (v272 - v271 < 2 || *v271 != 248 || v271[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v271 + 2;
              if ((v271 + 2) >= v272 || v271[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v281))
                {
                  return 0;
                }
              }

              else
              {
                v281 = v271[2];
                *(a2 + 1) = v271 + 3;
              }

              v273 = *(this + 82);
              if (v273 >= *(this + 83))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v282);
                v273 = *(this + 82);
              }

              v274 = v281;
              v275 = *(this + 40);
              *(this + 82) = v273 + 1;
              *(v275 + 4 * v273) = v274;
              --v270;
            }

            while (v270 > 1);
          }

LABEL_682:
          v199 = *(a2 + 1);
          v21 = *(a2 + 2);
          if (v21 - v199 < 2)
          {
            goto LABEL_2;
          }

          v276 = *v199;
          if (v276 == 128)
          {
            if (v199[1] == 2)
            {
              v22 = (v199 + 2);
              *(a2 + 1) = v22;
LABEL_689:
              if (v22 >= v21 || (v277 = *v22, (v277 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                if (!result)
                {
                  return result;
                }

                v278 = *(a2 + 1);
                v21 = *(a2 + 2);
              }

              else
              {
                *v5 = v277;
                v278 = (v22 + 1);
                *(a2 + 1) = v278;
              }

              *(this + 94) |= 0x80000000;
              if (v21 - v278 >= 2 && *v278 == 136 && v278[1] == 2)
              {
                v26 = (v278 + 2);
                *(a2 + 1) = v26;
LABEL_698:
                if (v26 >= v21 || (v279 = *v26, (v279 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                  if (!result)
                  {
                    return result;
                  }

                  v280 = *(a2 + 1);
                  v21 = *(a2 + 2);
                }

                else
                {
                  *v6 = v279;
                  v280 = v26 + 1;
                  *(a2 + 1) = v280;
                }

                *(this + 95) |= 1u;
                if (v280 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }

            goto LABEL_2;
          }

          if (v276 != 248 || v199[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_663:
          v43 = (v199 + 2);
          *(a2 + 1) = v43;
        }

      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_689;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_112;
        }

        v26 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_698;
      default:
        goto LABEL_112;
    }
  }
}

void sub_2963ED998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v10 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || *v6 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v10 = *v6;
        *(this + 1) = v6 + 1;
      }

      v7 = *(a2 + 8);
      if (v7 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 8);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 8) = v7 + 1;
      *(v9 + 4 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 376);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 376);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_79;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 376);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  if ((*(v5 + 376) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  }

LABEL_12:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 48) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 64) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(*(v5 + 80) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(*(v5 + 96) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(*(v5 + 112) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(*(v5 + 128) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(*(v5 + 144) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 152));
  }

  if (*(v5 + 168) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(*(v5 + 160) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(*(v5 + 176) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 184));
  }

  if (*(v5 + 200) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(*(v5 + 192) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 200));
  }

  if (*(v5 + 216) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 208) + 4 * v17++), a2, a4);
    }

    while (v17 < *(v5 + 216));
  }

  if (*(v5 + 344) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(*(v5 + 336) + 4 * v18++), a2, a4);
    }

    while (v18 < *(v5 + 344));
  }

  v19 = *(v5 + 376);
  if ((v19 & 0x20000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 360), a2, a4);
    v19 = *(v5 + 376);
  }

  if ((v19 & 0x40000000) != 0)
  {
    v20 = *(v5 + 352);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 232) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(*(v5 + 224) + 4 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 232));
  }

  if (*(v5 + 248) >= 1)
  {
    v22 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(*(v5 + 240) + 4 * v22++), a2, a4);
    }

    while (v22 < *(v5 + 248));
  }

  if (*(v5 + 264) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(*(v5 + 256) + 4 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 264));
  }

  if (*(v5 + 280) >= 1)
  {
    v24 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(*(v5 + 272) + 4 * v24++), a2, a4);
    }

    while (v24 < *(v5 + 280));
  }

  if (*(v5 + 296) >= 1)
  {
    v25 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 288) + 4 * v25++), a2, a4);
    }

    while (v25 < *(v5 + 296));
  }

  if (*(v5 + 312) >= 1)
  {
    v26 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 304) + 4 * v26++), a2, a4);
    }

    while (v26 < *(v5 + 312));
  }

  if (*(v5 + 328) >= 1)
  {
    v27 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(*(v5 + 320) + 4 * v27++), a2, a4);
    }

    while (v27 < *(v5 + 328));
  }

  if ((*(v5 + 376) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 364), a2, a4);
  }

  if (*(v5 + 380))
  {
    v28 = *(v5 + 368);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, v28, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::ByteSize(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this)
{
  v2 = *(this + 94);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_45;
  }

  if (v2)
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 94);
      if ((v2 & 2) == 0)
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 94);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 94);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 94);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 94);
  }

  else
  {
    v12 = 2;
  }

  v3 += v12;
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 94);
  }

  else
  {
    v14 = 2;
  }

  v3 += v14;
  if ((v2 & 0x40) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 94);
  }

  else
  {
    v16 = 2;
  }

  v3 += v16;
  if ((v2 & 0x80) != 0)
  {
LABEL_41:
    v17 = *(this + 9);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(this + 94);
    }

    else
    {
      v18 = 2;
    }

    v3 += v18;
  }

LABEL_45:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v19 = *(this + 10);
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
        v2 = *(this + 94);
      }

      else
      {
        v20 = 2;
      }

      v3 += v20;
    }

    if ((v2 & 0x200) != 0)
    {
      v21 = *(this + 11);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
        v2 = *(this + 94);
      }

      else
      {
        v22 = 2;
      }

      v3 += v22;
    }
  }

  if (v2 >> 29)
  {
    if ((v2 & 0x20000000) != 0)
    {
      v23 = *(this + 90);
      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 2;
        v2 = *(this + 94);
      }

      else
      {
        v24 = 3;
      }

      v3 += v24;
      if ((v2 & 0x40000000) == 0)
      {
LABEL_59:
        if ((v2 & 0x80000000) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_74;
      }
    }

    else if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    v25 = *(this + 44);
    v26 = *(v25 + 23);
    v27 = v26;
    v28 = *(v25 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v29 = *(v25 + 23);
    }

    else
    {
      v29 = v28;
    }

    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
      v26 = *(v25 + 23);
      v28 = *(v25 + 8);
      v2 = *(this + 94);
      v27 = *(v25 + 23);
    }

    else
    {
      v30 = 1;
    }

    if (v27 < 0)
    {
      v26 = v28;
    }

    v3 += v30 + v26 + 2;
    if ((v2 & 0x80000000) != 0)
    {
LABEL_74:
      v31 = *(this + 91);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
      }

      else
      {
        v32 = 3;
      }

      v3 += v32;
    }
  }

LABEL_78:
  if (*(this + 380))
  {
    v33 = *(this + 92);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
    }

    else
    {
      v34 = 3;
    }

    v3 += v34;
  }

  v35 = *(this + 14);
  if (v35 < 1)
  {
    v37 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *(*(this + 6) + 4 * v36);
      if (v38 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
        v35 = *(this + 14);
      }

      else
      {
        v39 = 1;
      }

      v37 += v39;
      ++v36;
    }

    while (v36 < v35);
  }

  v40 = *(this + 18);
  if (v40 < 1)
  {
    v42 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = *(*(this + 8) + 4 * v41);
      if (v43 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
        v40 = *(this + 18);
      }

      else
      {
        v44 = 1;
      }

      v42 += v44;
      ++v41;
    }

    while (v41 < v40);
  }

  v45 = *(this + 22);
  if (v45 < 1)
  {
    v47 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = *(*(this + 10) + 4 * v46);
      if (v48 >= 0x80)
      {
        v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
        v45 = *(this + 22);
      }

      else
      {
        v49 = 1;
      }

      v47 += v49;
      ++v46;
    }

    while (v46 < v45);
  }

  v50 = *(this + 26);
  if (v50 < 1)
  {
    v158 = 0;
  }

  else
  {
    v51 = 0;
    v158 = 0;
    do
    {
      v52 = *(*(this + 12) + 4 * v51);
      if (v52 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
        v50 = *(this + 26);
      }

      else
      {
        v53 = 1;
      }

      v158 += v53;
      ++v51;
    }

    while (v51 < v50);
  }

  v54 = *(this + 30);
  if (v54 < 1)
  {
    v157 = 0;
  }

  else
  {
    v55 = 0;
    v157 = 0;
    do
    {
      v56 = *(*(this + 14) + 4 * v55);
      if (v56 >= 0x80)
      {
        v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
        v54 = *(this + 30);
      }

      else
      {
        v57 = 1;
      }

      v157 += v57;
      ++v55;
    }

    while (v55 < v54);
  }

  v142 = v54;
  v58 = *(this + 34);
  if (v58 < 1)
  {
    v156 = 0;
  }

  else
  {
    v59 = 0;
    v156 = 0;
    do
    {
      v60 = v58;
      v61 = *(*(this + 16) + 4 * v59);
      if (v61 >= 0x80)
      {
        v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
        v60 = *(this + 34);
      }

      else
      {
        v62 = 1;
      }

      v156 += v62;
      ++v59;
      v58 = v60;
    }

    while (v59 < v60);
  }

  v141 = v58;
  v63 = *(this + 38);
  if (v63 < 1)
  {
    v155 = 0;
  }

  else
  {
    v64 = 0;
    v155 = 0;
    do
    {
      v65 = v63;
      v66 = *(*(this + 18) + 4 * v64);
      if (v66 >= 0x80)
      {
        v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
        v65 = *(this + 38);
      }

      else
      {
        v67 = 1;
      }

      v155 += v67;
      ++v64;
      v63 = v65;
    }

    while (v64 < v65);
  }

  v140 = v63;
  v68 = *(this + 42);
  if (v68 < 1)
  {
    v154 = 0;
  }

  else
  {
    v69 = 0;
    v154 = 0;
    do
    {
      v70 = v68;
      v71 = *(*(this + 20) + 4 * v69);
      if (v71 >= 0x80)
      {
        v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71);
        v70 = *(this + 42);
      }

      else
      {
        v72 = 1;
      }

      v154 += v72;
      ++v69;
      v68 = v70;
    }

    while (v69 < v70);
  }

  v139 = v68;
  v73 = *(this + 46);
  if (v73 < 1)
  {
    v153 = 0;
  }

  else
  {
    v74 = 0;
    v153 = 0;
    do
    {
      v75 = v73;
      v76 = *(*(this + 22) + 4 * v74);
      if (v76 >= 0x80)
      {
        v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76);
        v75 = *(this + 46);
      }

      else
      {
        v77 = 1;
      }

      v153 += v77;
      ++v74;
      v73 = v75;
    }

    while (v74 < v75);
  }

  v138 = v73;
  v78 = *(this + 50);
  if (v78 < 1)
  {
    v152 = 0;
  }

  else
  {
    v79 = 0;
    v152 = 0;
    do
    {
      v80 = v78;
      v81 = *(*(this + 24) + 4 * v79);
      if (v81 >= 0x80)
      {
        v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81);
        v80 = *(this + 50);
      }

      else
      {
        v82 = 1;
      }

      v152 += v82;
      ++v79;
      v78 = v80;
    }

    while (v79 < v80);
  }

  v137 = v78;
  v83 = *(this + 54);
  if (v83 < 1)
  {
    v151 = 0;
  }

  else
  {
    v84 = 0;
    v151 = 0;
    do
    {
      v85 = v83;
      v86 = *(*(this + 26) + 4 * v84);
      if (v86 >= 0x80)
      {
        v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86);
        v85 = *(this + 54);
      }

      else
      {
        v87 = 1;
      }

      v151 += v87;
      ++v84;
      v83 = v85;
    }

    while (v84 < v85);
  }

  v136 = v83;
  v145 = v45;
  v88 = *(this + 58);
  if (v88 < 1)
  {
    v90 = 0;
  }

  else
  {
    v89 = 0;
    v90 = 0;
    do
    {
      v91 = *(*(this + 28) + 4 * v89);
      if (v91 >= 0x80)
      {
        v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
        v88 = *(this + 58);
      }

      else
      {
        v92 = 1;
      }

      v90 += v92;
      ++v89;
    }

    while (v89 < v88);
  }

  v135 = v88;
  v143 = v50;
  v93 = *(this + 62);
  if (v93 < 1)
  {
    v95 = 0;
  }

  else
  {
    v94 = 0;
    v95 = 0;
    do
    {
      v96 = *(*(this + 30) + 4 * v94);
      if (v96 >= 0x80)
      {
        v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96);
        v93 = *(this + 62);
      }

      else
      {
        v97 = 1;
      }

      v95 += v97;
      ++v94;
    }

    while (v94 < v93);
  }

  v134 = v93;
  v150 = v3;
  v98 = *(this + 66);
  if (v98 < 1)
  {
    v100 = 0;
  }

  else
  {
    v99 = 0;
    v100 = 0;
    do
    {
      v101 = *(*(this + 32) + 4 * v99);
      if (v101 >= 0x80)
      {
        v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101);
        v98 = *(this + 66);
      }

      else
      {
        v102 = 1;
      }

      v100 += v102;
      ++v99;
    }

    while (v99 < v98);
  }

  v133 = v98;
  v148 = v37;
  v103 = *(this + 70);
  if (v103 < 1)
  {
    v105 = 0;
  }

  else
  {
    v104 = 0;
    v105 = 0;
    do
    {
      v106 = *(*(this + 34) + 4 * v104);
      if (v106 >= 0x80)
      {
        v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106);
        v103 = *(this + 70);
      }

      else
      {
        v107 = 1;
      }

      v105 += v107;
      ++v104;
    }

    while (v104 < v103);
  }

  v132 = v103;
  v144 = v47;
  v108 = *(this + 74);
  if (v108 < 1)
  {
    v110 = 0;
  }

  else
  {
    v109 = 0;
    v110 = 0;
    do
    {
      v111 = *(*(this + 36) + 4 * v109);
      if (v111 >= 0x80)
      {
        v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111);
        v108 = *(this + 74);
      }

      else
      {
        v112 = 1;
      }

      v110 += v112;
      ++v109;
    }

    while (v109 < v108);
  }

  v131 = v108;
  v146 = v42;
  v113 = *(this + 78);
  if (v113 < 1)
  {
    v115 = 0;
  }

  else
  {
    v114 = 0;
    v115 = 0;
    do
    {
      v116 = *(*(this + 38) + 4 * v114);
      if (v116 >= 0x80)
      {
        v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116);
        v113 = *(this + 78);
      }

      else
      {
        v117 = 1;
      }

      v115 += v117;
      ++v114;
    }

    while (v114 < v113);
  }

  v130 = v113;
  v147 = v40;
  v118 = *(this + 82);
  if (v118 < 1)
  {
    v120 = 0;
  }

  else
  {
    v119 = 0;
    v120 = 0;
    do
    {
      v121 = *(*(this + 40) + 4 * v119);
      if (v121 >= 0x80)
      {
        v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121);
        v118 = *(this + 82);
      }

      else
      {
        v122 = 1;
      }

      v120 += v122;
      ++v119;
    }

    while (v119 < v118);
  }

  v149 = v35;
  v123 = *(this + 86);
  v129 = v118;
  if (v123 < 1)
  {
    v125 = 0;
  }

  else
  {
    v124 = 0;
    v125 = 0;
    do
    {
      v126 = *(*(this + 42) + 4 * v124);
      if (v126 >= 0x80)
      {
        v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126);
        v123 = *(this + 86);
      }

      else
      {
        v127 = 1;
      }

      v125 += v127;
      ++v124;
    }

    while (v124 < v123);
  }

  result = (v148 + v150 + v149 + v146 + v147 + v144 + v145 + v158 + v143 + v157 + v142 + v156 + v155 + v154 + v153 + v152 + v151 + v90 + v95 + v100 + v105 + v110 + v115 + v120 + v125 + 2 * (v140 + v141 + v139 + v138 + v137 + v136 + v135 + v134 + v133 + v132 + v131 + v130 + v129 + v123));
  *(this + 93) = result;
  return result;
}

void awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::CheckTypeAndMergeFrom(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::CopyFrom(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, const awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(this, a2);
  }
}

double awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::Swap(awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *this, awd::metrics::FaceTimeCallAggregatedReport_SegmentStats *a2)
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
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v13 = *(a2 + 7);
    *(a2 + 6) = v12;
    v14 = *(this + 7);
    *(this + 7) = v13;
    *(a2 + 7) = v14;
    v15 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v16 = *(a2 + 9);
    *(a2 + 8) = v15;
    v17 = *(this + 9);
    *(this + 9) = v16;
    *(a2 + 9) = v17;
    v18 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v19 = *(a2 + 11);
    *(a2 + 10) = v18;
    v20 = *(this + 11);
    *(this + 11) = v19;
    *(a2 + 11) = v20;
    v21 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v22 = *(a2 + 13);
    *(a2 + 12) = v21;
    v23 = *(this + 13);
    *(this + 13) = v22;
    *(a2 + 13) = v23;
    v24 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v25 = *(a2 + 15);
    *(a2 + 14) = v24;
    v26 = *(this + 15);
    *(this + 15) = v25;
    *(a2 + 15) = v26;
    v27 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v28 = *(a2 + 17);
    *(a2 + 16) = v27;
    v29 = *(this + 17);
    *(this + 17) = v28;
    *(a2 + 17) = v29;
    v30 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v31 = *(a2 + 19);
    *(a2 + 18) = v30;
    v32 = *(this + 19);
    *(this + 19) = v31;
    *(a2 + 19) = v32;
    v33 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v34 = *(a2 + 21);
    *(a2 + 20) = v33;
    v35 = *(this + 21);
    *(this + 21) = v34;
    *(a2 + 21) = v35;
    v36 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    v37 = *(a2 + 23);
    *(a2 + 22) = v36;
    v38 = *(this + 23);
    *(this + 23) = v37;
    *(a2 + 23) = v38;
    v39 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v40 = *(a2 + 25);
    *(a2 + 24) = v39;
    v41 = *(this + 25);
    *(this + 25) = v40;
    *(a2 + 25) = v41;
    v42 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    v43 = *(a2 + 27);
    *(a2 + 26) = v42;
    v44 = *(this + 27);
    *(this + 27) = v43;
    *(a2 + 27) = v44;
    v45 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    v46 = *(a2 + 29);
    *(a2 + 28) = v45;
    v47 = *(this + 29);
    *(this + 29) = v46;
    *(a2 + 29) = v47;
    v48 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    v49 = *(a2 + 31);
    *(a2 + 30) = v48;
    v50 = *(this + 31);
    *(this + 31) = v49;
    *(a2 + 31) = v50;
    v51 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    v52 = *(a2 + 33);
    *(a2 + 32) = v51;
    v53 = *(this + 33);
    *(this + 33) = v52;
    *(a2 + 33) = v53;
    v54 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    v55 = *(a2 + 35);
    *(a2 + 34) = v54;
    v56 = *(this + 35);
    *(this + 35) = v55;
    *(a2 + 35) = v56;
    v57 = *(this + 36);
    *(this + 36) = *(a2 + 36);
    v58 = *(a2 + 37);
    *(a2 + 36) = v57;
    v59 = *(this + 37);
    *(this + 37) = v58;
    *(a2 + 37) = v59;
    v60 = *(this + 38);
    *(this + 38) = *(a2 + 38);
    v61 = *(a2 + 39);
    *(a2 + 38) = v60;
    v62 = *(this + 39);
    *(this + 39) = v61;
    *(a2 + 39) = v62;
    v63 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    v64 = *(a2 + 41);
    *(a2 + 40) = v63;
    v65 = *(this + 41);
    *(this + 41) = v64;
    *(a2 + 41) = v65;
    v66 = *(this + 42);
    *(this + 42) = *(a2 + 42);
    result = *(a2 + 43);
    *(a2 + 42) = v66;
    v68 = *(this + 43);
    *(this + 43) = result;
    *(a2 + 43) = v68;
    LODWORD(v66) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v66;
    v69 = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v69;
    LODWORD(v69) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v69;
    LODWORD(v69) = *(this + 92);
    *(this + 92) = *(a2 + 92);
    *(a2 + 92) = v69;
    LODWORD(v69) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v69;
    LODWORD(v69) = *(this + 95);
    *(this + 95) = *(a2 + 95);
    *(a2 + 95) = v69;
    LODWORD(v69) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v69;
  }

  return result;
}

double awd::metrics::FaceTimeCallAggregatedReport::SharedCtor(awd::metrics::FaceTimeCallAggregatedReport *this)
{
  *(this + 17) = 0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

awd::metrics::FaceTimeCallAggregatedReport *awd::metrics::FaceTimeCallAggregatedReport::FaceTimeCallAggregatedReport(awd::metrics::FaceTimeCallAggregatedReport *this, const awd::metrics::FaceTimeCallAggregatedReport *a2)
{
  *this = &unk_2A1D4E218;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  awd::metrics::FaceTimeCallAggregatedReport::MergeFrom(this, a2);
  return this;
}

void sub_2963EF160(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(v1 + 14);
  awd::metrics::FaceTimeCallAggregatedReport::FaceTimeCallAggregatedReport((v1 + 12), v1 + 10, v1 + 8, v1 + 6);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallAggregatedReport::MergeFrom(awd::metrics::FaceTimeCallAggregatedReport *this, const awd::metrics::FaceTimeCallAggregatedReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 14);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v4);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v5 = *(a2 + 18);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v5);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v6 = *(a2 + 22);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v6);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v7 = *(a2 + 26);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v7);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v8 = *(this + 30);
  v9 = *(a2 + 30);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
  LODWORD(v10) = *(a2 + 30);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
      }

      v12 = *(*(a2 + 14) + 8 * v11);
      v13 = *(this + 31);
      v14 = *(this + 30);
      if (v14 >= v13)
      {
        if (v13 == *(this + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
          v13 = *(this + 31);
        }

        *(this + 31) = v13 + 1;
        operator new();
      }

      v15 = *(this + 14);
      *(this + 30) = v14 + 1;
      awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergeFrom(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 30);
    }

    while (v11 < v10);
  }

  v16 = *(a2 + 36);
  if (!v16)
  {
    goto LABEL_31;
  }

  if (v16)
  {
    v20 = *(a2 + 1);
    *(this + 36) |= 1u;
    *(this + 1) = v20;
    v16 = *(a2 + 36);
    if ((v16 & 2) == 0)
    {
LABEL_24:
      if ((v16 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_39;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_24;
  }

  v21 = *(a2 + 4);
  *(this + 36) |= 2u;
  *(this + 4) = v21;
  v16 = *(a2 + 36);
  if ((v16 & 4) == 0)
  {
LABEL_25:
    if ((v16 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = *(a2 + 5);
  *(this + 36) |= 4u;
  *(this + 5) = v22;
  v16 = *(a2 + 36);
  if ((v16 & 8) == 0)
  {
LABEL_26:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  v23 = *(a2 + 6);
  *(this + 36) |= 8u;
  *(this + 6) = v23;
  v16 = *(a2 + 36);
  if ((v16 & 0x10) == 0)
  {
LABEL_27:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_42:
    v25 = *(a2 + 8);
    *(this + 36) |= 0x20u;
    *(this + 8) = v25;
    v16 = *(a2 + 36);
    if ((v16 & 0x40) == 0)
    {
LABEL_29:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_43;
  }

LABEL_41:
  v24 = *(a2 + 7);
  *(this + 36) |= 0x10u;
  *(this + 7) = v24;
  v16 = *(a2 + 36);
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_28:
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_43:
  v26 = *(a2 + 9);
  *(this + 36) |= 0x40u;
  *(this + 9) = v26;
  v16 = *(a2 + 36);
  if ((v16 & 0x80) != 0)
  {
LABEL_30:
    v17 = *(a2 + 10);
    *(this + 36) |= 0x80u;
    *(this + 10) = v17;
    v16 = *(a2 + 36);
  }

LABEL_31:
  if ((v16 & 0x1FE00) != 0)
  {
    if ((v16 & 0x200) != 0)
    {
      v18 = *(a2 + 11);
      *(this + 36) |= 0x200u;
      *(this + 11) = v18;
      v16 = *(a2 + 36);
    }

    if ((v16 & 0x400) != 0)
    {
      v19 = *(a2 + 34);
      *(this + 36) |= 0x400u;
      *(this + 34) = v19;
    }
  }
}

void sub_2963EF600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallAggregatedReport::~FaceTimeCallAggregatedReport(awd::metrics::FaceTimeCallAggregatedReport *this)
{
  *this = &unk_2A1D4E218;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(this + 14);
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::FaceTimeCallAggregatedReport::~FaceTimeCallAggregatedReport(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::default_instance(awd::metrics::FaceTimeCallAggregatedReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeCallAggregatedReport::default_instance_;
  if (!awd::metrics::FaceTimeCallAggregatedReport::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeCallAggregatedReport::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::Clear(awd::metrics::FaceTimeCallAggregatedReport *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 10) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v2 & 0x1FE00) != 0)
  {
    *(this + 11) = 0;
    *(this + 34) = 0;
  }

  *(this + 14) = 0;
  *(this + 18) = 0;
  *(this + 22) = 0;
  *(this + 26) = 0;
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(this + 112);
  *(this + 36) = 0;
  return result;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::MergePartialFromCodedStream(awd::metrics::FaceTimeCallAggregatedReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
LABEL_1:
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
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
        }

        else
        {
          *(this + 1) = v9;
          v10 = v8 + 1;
          *(a2 + 1) = v10;
        }

        *(this + 36) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v17 = v10 + 1;
          *(a2 + 1) = v17;
          goto LABEL_59;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_59:
        if (v17 >= v7 || (v26 = *v17, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v26;
          v27 = v17 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 36) |= 2u;
        if (v27 >= v7 || *v27 != 24)
        {
          continue;
        }

        v14 = v27 + 1;
        *(a2 + 1) = v14;
LABEL_67:
        if (v14 >= v7 || (v28 = *v14, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v28;
          v29 = v14 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 36) |= 4u;
        if (v29 >= v7 || *v29 != 32)
        {
          continue;
        }

        v15 = v29 + 1;
        *(a2 + 1) = v15;
LABEL_75:
        if (v15 >= v7 || (v30 = *v15, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v30;
          v31 = v15 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 36) |= 8u;
        if (v31 >= v7 || *v31 != 42)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v31 + 1;
LABEL_83:
          v32 = *(this + 31);
          v33 = *(this + 30);
          if (v33 >= v32)
          {
            if (v32 == *(this + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
              v32 = *(this + 31);
            }

            *(this + 31) = v32 + 1;
            operator new();
          }

          v34 = *(this + 14);
          *(this + 30) = v33 + 1;
          v35 = *(v34 + 8 * v33);
          v99[0] = 0;
          v36 = *(a2 + 1);
          if (v36 >= *(a2 + 2) || *v36 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v99))
            {
              return 0;
            }
          }

          else
          {
            v99[0] = *v36;
            *(a2 + 1) = v36 + 1;
          }

          v37 = *(a2 + 14);
          v38 = *(a2 + 15);
          *(a2 + 14) = v37 + 1;
          if (v37 >= v38)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::MergePartialFromCodedStream(v35, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v39 = *(a2 + 14);
          v40 = __OFSUB__(v39, 1);
          v41 = v39 - 1;
          if (v41 < 0 == v40)
          {
            *(a2 + 14) = v41;
          }

          v31 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v31 >= v12)
          {
            goto LABEL_1;
          }

          v42 = *v31;
          if (v42 != 42)
          {
            if (v42 == 48)
            {
              v18 = v31 + 1;
              *(a2 + 1) = v18;
LABEL_101:
              if (v18 >= v12 || (v43 = *v18, v43 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v44 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v43;
                v44 = v18 + 1;
                *(a2 + 1) = v44;
              }

              *(this + 36) |= 0x10u;
              if (v44 < v12 && *v44 == 56)
              {
                v19 = v44 + 1;
                *(a2 + 1) = v19;
LABEL_109:
                if (v19 >= v12 || (v45 = *v19, v45 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                  if (!result)
                  {
                    return result;
                  }

                  v46 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  *(this + 8) = v45;
                  v46 = v19 + 1;
                  *(a2 + 1) = v46;
                }

                *(this + 36) |= 0x20u;
                if (v46 < v12 && *v46 == 64)
                {
                  v16 = v46 + 1;
                  *(a2 + 1) = v16;
LABEL_117:
                  if (v16 >= v12 || (v47 = *v16, v47 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                    if (!result)
                    {
                      return result;
                    }

                    v48 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 9) = v47;
                    v48 = v16 + 1;
                    *(a2 + 1) = v48;
                  }

                  *(this + 36) |= 0x40u;
                  if (v48 < v12 && *v48 == 72)
                  {
                    v21 = v48 + 1;
                    *(a2 + 1) = v21;
LABEL_125:
                    if (v21 >= v12 || (v49 = *v21, v49 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                      if (!result)
                      {
                        return result;
                      }

                      v50 = *(a2 + 1);
                      v12 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 10) = v49;
                      v50 = (v21 + 1);
                      *(a2 + 1) = v50;
                    }

                    *(this + 36) |= 0x80u;
                    if (v50 < v12)
                    {
                      v51 = *v50;
                      goto LABEL_132;
                    }
                  }
                }
              }
            }

            goto LABEL_1;
          }
        }

      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_67;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_75;
      case 5u:
        if (v6 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_46;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_101;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v19 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_109;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_117;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v21 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_125;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
            if (!result)
            {
              return result;
            }

            goto LABEL_151;
          }

          goto LABEL_46;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        while (1)
        {
          v98 = 0;
          if (v24 >= v12 || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v98))
            {
              return 0;
            }
          }

          else
          {
            v98 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v52 = *(this + 14);
          if (v52 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v52 + 1);
            v52 = *(this + 14);
          }

          v53 = v98;
          v54 = *(this + 6);
          *(this + 14) = v52 + 1;
          *(v54 + 4 * v52) = v53;
          v55 = *(this + 15) - *(this + 14);
          if (v55 >= 1)
          {
            v56 = v55 + 1;
            do
            {
              v57 = *(a2 + 1);
              v58 = *(a2 + 2);
              if (v57 >= v58 || *v57 != 80)
              {
                break;
              }

              *(a2 + 1) = v57 + 1;
              if ((v57 + 1) >= v58 || v57[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v98))
                {
                  return 0;
                }
              }

              else
              {
                v98 = v57[1];
                *(a2 + 1) = v57 + 2;
              }

              v59 = *(this + 14);
              if (v59 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v99);
                v59 = *(this + 14);
              }

              v60 = v98;
              v61 = *(this + 6);
              *(this + 14) = v59 + 1;
              *(v61 + 4 * v59) = v60;
              --v56;
            }

            while (v56 > 1);
          }

LABEL_151:
          v50 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v50 >= v12)
          {
            goto LABEL_1;
          }

          v51 = *v50;
          if (v51 == 88)
          {
            v20 = (v50 + 1);
            *(a2 + 1) = v20;
LABEL_154:
            if (v20 >= v12 || (v62 = *v20, v62 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
              if (!result)
              {
                return result;
              }

              v63 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              *(this + 11) = v62;
              v63 = v20 + 1;
              *(a2 + 1) = v63;
            }

            *(this + 36) |= 0x200u;
            if (v63 < v12 && *v63 == 96)
            {
              v13 = v63 + 1;
              *(a2 + 1) = v13;
LABEL_162:
              if (v13 >= v12 || (v64 = *v13, v64 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
                if (!result)
                {
                  return result;
                }

                v65 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 34) = v64;
                v65 = v13 + 1;
                *(a2 + 1) = v65;
              }

              *(this + 36) |= 0x400u;
              if (v65 < v12)
              {
                v66 = *v65;
                goto LABEL_169;
              }
            }

            goto LABEL_1;
          }

LABEL_132:
          if (v51 != 80)
          {
            goto LABEL_1;
          }

          v24 = (v50 + 1);
          *(a2 + 1) = v24;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_154;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_162;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
            if (!result)
            {
              return result;
            }

            goto LABEL_188;
          }

          goto LABEL_46;
        }

        v23 = *(a2 + 1);
        v12 = *(a2 + 2);
        while (1)
        {
          v98 = 0;
          if (v23 >= v12 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v98))
            {
              return 0;
            }
          }

          else
          {
            v98 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v67 = *(this + 18);
          if (v67 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v67 + 1);
            v67 = *(this + 18);
          }

          v68 = v98;
          v69 = *(this + 8);
          *(this + 18) = v67 + 1;
          *(v69 + 4 * v67) = v68;
          v70 = *(this + 19) - *(this + 18);
          if (v70 >= 1)
          {
            v71 = v70 + 1;
            do
            {
              v72 = *(a2 + 1);
              v73 = *(a2 + 2);
              if (v72 >= v73 || *v72 != 104)
              {
                break;
              }

              *(a2 + 1) = v72 + 1;
              if ((v72 + 1) >= v73 || v72[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v98))
                {
                  return 0;
                }
              }

              else
              {
                v98 = v72[1];
                *(a2 + 1) = v72 + 2;
              }

              v74 = *(this + 18);
              if (v74 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v99);
                v74 = *(this + 18);
              }

              v75 = v98;
              v76 = *(this + 8);
              *(this + 18) = v74 + 1;
              *(v76 + 4 * v74) = v75;
              --v71;
            }

            while (v71 > 1);
          }

LABEL_188:
          v65 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v65 >= v12)
          {
            goto LABEL_1;
          }

          v66 = *v65;
          if (v66 == 112)
          {
            goto LABEL_190;
          }

LABEL_169:
          if (v66 != 104)
          {
            goto LABEL_1;
          }

          v23 = v65 + 1;
          *(a2 + 1) = v23;
        }

      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_208;
          }

          goto LABEL_46;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        while (1)
        {
          v98 = 0;
          if (v25 >= v12 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v98))
            {
              return 0;
            }
          }

          else
          {
            v98 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v77 = *(this + 22);
          if (v77 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v77 + 1);
            v77 = *(this + 22);
          }

          v78 = v98;
          v79 = *(this + 10);
          *(this + 22) = v77 + 1;
          *(v79 + 4 * v77) = v78;
          v80 = *(this + 23) - *(this + 22);
          if (v80 >= 1)
          {
            v81 = v80 + 1;
            do
            {
              v82 = *(a2 + 1);
              v83 = *(a2 + 2);
              if (v82 >= v83 || *v82 != 112)
              {
                break;
              }

              *(a2 + 1) = v82 + 1;
              if ((v82 + 1) >= v83 || v82[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v98))
                {
                  return 0;
                }
              }

              else
              {
                v98 = v82[1];
                *(a2 + 1) = v82 + 2;
              }

              v84 = *(this + 22);
              if (v84 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v99);
                v84 = *(this + 22);
              }

              v85 = v98;
              v86 = *(this + 10);
              *(this + 22) = v84 + 1;
              *(v86 + 4 * v84) = v85;
              --v81;
            }

            while (v81 > 1);
          }

LABEL_208:
          v65 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v65 >= v12)
          {
            goto LABEL_1;
          }

          v87 = *v65;
          if (v87 == 120)
          {
            goto LABEL_212;
          }

          if (v87 != 112)
          {
            goto LABEL_1;
          }

LABEL_190:
          v25 = v65 + 1;
          *(a2 + 1) = v25;
        }

      case 0xFu:
        if ((TagFallback & 7) == 0)
        {
          v22 = *(a2 + 1);
          v12 = *(a2 + 2);
          while (1)
          {
            v98 = 0;
            if (v22 >= v12 || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v98))
              {
                return 0;
              }
            }

            else
            {
              v98 = *v22;
              *(a2 + 1) = v22 + 1;
            }

            v88 = *(this + 26);
            if (v88 == *(this + 27))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v88 + 1);
              v88 = *(this + 26);
            }

            v89 = v98;
            v90 = *(this + 12);
            *(this + 26) = v88 + 1;
            *(v90 + 4 * v88) = v89;
            v91 = *(this + 27) - *(this + 26);
            if (v91 >= 1)
            {
              v92 = v91 + 1;
              do
              {
                v93 = *(a2 + 1);
                v94 = *(a2 + 2);
                if (v93 >= v94 || *v93 != 120)
                {
                  break;
                }

                *(a2 + 1) = v93 + 1;
                if ((v93 + 1) >= v94 || v93[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v98))
                  {
                    return 0;
                  }
                }

                else
                {
                  v98 = v93[1];
                  *(a2 + 1) = v93 + 2;
                }

                v95 = *(this + 26);
                if (v95 >= *(this + 27))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v99);
                  v95 = *(this + 26);
                }

                v96 = v98;
                v97 = *(this + 12);
                *(this + 26) = v95 + 1;
                *(v97 + 4 * v95) = v96;
                --v92;
              }

              while (v92 > 1);
            }

LABEL_230:
            v65 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v65 >= v12 || *v65 != 120)
            {
              break;
            }

LABEL_212:
            v22 = v65 + 1;
            *(a2 + 1) = v22;
          }

          if (v65 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
          if (!result)
          {
            return result;
          }

          goto LABEL_230;
        }

LABEL_46:
        if (v6 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      default:
        goto LABEL_46;
    }
  }
}

void sub_2963F04E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 144);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 144);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  if ((*(v5 + 144) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  }

LABEL_6:
  if (*(v5 + 120) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 112) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 120));
  }

  v8 = *(v5 + 144);
  if ((v8 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
    v8 = *(v5 + 144);
    if ((v8 & 0x20) == 0)
    {
LABEL_11:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_11;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 32), a2, a4);
  v8 = *(v5 + 144);
  if ((v8 & 0x40) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 36), a2, a4);
  if ((*(v5 + 144) & 0x80) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 40), a2, a4);
  }

LABEL_14:
  if (*(v5 + 56) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 48) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 56));
  }

  v10 = *(v5 + 144);
  if ((v10 & 0x200) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 44), a2, a4);
    v10 = *(v5 + 144);
  }

  if ((v10 & 0x400) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 136), a2, a4);
  }

  if (*(v5 + 72) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(*(v5 + 64) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(*(v5 + 80) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(*(v5 + 96) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 104));
  }

  return this;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::ByteSize(awd::metrics::FaceTimeCallAggregatedReport *this)
{
  v2 = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 36);
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

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 36);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 36);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 36);
  }

  else
  {
    v9 = 2;
  }

  v3 += v9;
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 36);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 36);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v14 = *(this + 9);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 36);
  }

  else
  {
    v15 = 2;
  }

  v3 += v15;
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 36);
    }

    else
    {
      v17 = 2;
    }

    v3 += v17;
  }

LABEL_42:
  if ((v2 & 0x1FE00) != 0)
  {
    if ((v2 & 0x200) != 0)
    {
      v18 = *(this + 11);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
        v2 = *(this + 36);
      }

      else
      {
        v19 = 2;
      }

      v3 += v19;
    }

    if ((v2 & 0x400) != 0)
    {
      v20 = *(this + 34);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      }

      else
      {
        v21 = 2;
      }

      v3 += v21;
    }
  }

  v22 = *(this + 14);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(*(this + 6) + 4 * v23);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 14);
      }

      else
      {
        v26 = 1;
      }

      v24 += v26;
      ++v23;
    }

    while (v23 < v22);
  }

  v27 = *(this + 18);
  if (v27 < 1)
  {
    v29 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(*(this + 8) + 4 * v28);
      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(this + 18);
      }

      else
      {
        v31 = 1;
      }

      v29 += v31;
      ++v28;
    }

    while (v28 < v27);
  }

  v32 = *(this + 22);
  if (v32 < 1)
  {
    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(this + 10) + 4 * v33);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
        v32 = *(this + 22);
      }

      else
      {
        v36 = 1;
      }

      v34 += v36;
      ++v33;
    }

    while (v33 < v32);
  }

  v37 = *(this + 26);
  if (v37 < 1)
  {
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = *(*(this + 12) + 4 * v38);
      if (v40 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
        v37 = *(this + 26);
      }

      else
      {
        v41 = 1;
      }

      v39 += v41;
      ++v38;
    }

    while (v38 < v37);
  }

  v42 = *(this + 30);
  v43 = (v24 + v3 + v22 + v29 + v27 + v34 + v32 + v39 + v37 + v42);
  if (v42 >= 1)
  {
    v44 = 0;
    do
    {
      v45 = awd::metrics::FaceTimeCallAggregatedReport_SegmentStats::ByteSize(*(*(this + 14) + 8 * v44));
      v46 = v45;
      if (v45 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
      }

      else
      {
        v47 = 1;
      }

      v43 = (v46 + v43 + v47);
      ++v44;
    }

    while (v44 < *(this + 30));
  }

  *(this + 35) = v43;
  return v43;
}

void awd::metrics::FaceTimeCallAggregatedReport::CheckTypeAndMergeFrom(awd::metrics::FaceTimeCallAggregatedReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeCallAggregatedReport::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeCallAggregatedReport::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeCallAggregatedReport::CopyFrom(awd::metrics::FaceTimeCallAggregatedReport *this, const awd::metrics::FaceTimeCallAggregatedReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeCallAggregatedReport::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::Swap(uint64_t this, awd::metrics::FaceTimeCallAggregatedReport *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    v5 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    v6 = *(a2 + 7);
    *(a2 + 6) = v5;
    v7 = *(this + 56);
    *(this + 56) = v6;
    *(a2 + 7) = v7;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 136);
    *(this + 136) = *(a2 + 34);
    *(a2 + 34) = v5;
    v8 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    v9 = *(a2 + 9);
    *(a2 + 8) = v8;
    v10 = *(this + 72);
    *(this + 72) = v9;
    *(a2 + 9) = v10;
    v11 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    v12 = *(a2 + 11);
    *(a2 + 10) = v11;
    v13 = *(this + 88);
    *(this + 88) = v12;
    *(a2 + 11) = v13;
    v14 = *(this + 96);
    *(this + 96) = *(a2 + 12);
    v15 = *(a2 + 13);
    *(a2 + 12) = v14;
    v16 = *(this + 104);
    *(this + 104) = v15;
    *(a2 + 13) = v16;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v17 = *(v3 + 144);
    *(v3 + 144) = *(a2 + 36);
    *(a2 + 36) = v17;
    v18 = *(v3 + 140);
    *(v3 + 140) = *(a2 + 35);
    *(a2 + 35) = v18;
  }

  return this;
}

double awd::metrics::AvcSidecarVideoStream::SharedCtor(awd::metrics::AvcSidecarVideoStream *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v2;
  *(this + 25) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 21) = 0;
  *(this + 22) = 0;
  return result;
}

awd::metrics::AvcSidecarVideoStream *awd::metrics::AvcSidecarVideoStream::AvcSidecarVideoStream(awd::metrics::AvcSidecarVideoStream *this, const awd::metrics::AvcSidecarVideoStream *a2)
{
  *this = &unk_2A1D4E290;
  *(this + 88) = 0u;
  *(this + 23) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 24) = 0;
  *(this + 25) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v3;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 21) = 0;
  *(this + 22) = 0;
  awd::metrics::AvcSidecarVideoStream::MergeFrom(this, a2);
  return this;
}

void sub_2963F0ED8(_Unwind_Exception *a1)
{
  if (*v3)
  {
    MEMORY[0x29C25A1D0](*v3, 0x1000C8000313F17);
  }

  v5 = *(v1 + 19);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8000313F17);
  }

  v6 = *(v1 + 17);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8000313F17);
  }

  v7 = *(v1 + 15);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8000313F17);
  }

  v8 = *(v1 + 13);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, 0x1000C8000313F17);
  }

  if (*v2)
  {
    MEMORY[0x29C25A1D0](*v2, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::AvcSidecarVideoStream::MergeFrom(awd::metrics::AvcSidecarVideoStream *this, const awd::metrics::AvcSidecarVideoStream *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 11, *(this + 24) + v4);
    memcpy((*(this + 11) + 8 * *(this + 24)), *(a2 + 11), 8 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v5 = *(a2 + 28);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 13, *(this + 28) + v5);
    memcpy((*(this + 13) + 8 * *(this + 28)), *(a2 + 13), 8 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 15, *(this + 32) + v6);
    memcpy((*(this + 15) + 8 * *(this + 32)), *(a2 + 15), 8 * *(a2 + 32));
    *(this + 32) += *(a2 + 32);
  }

  v7 = *(a2 + 36);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 17, *(this + 36) + v7);
    memcpy((*(this + 17) + 8 * *(this + 36)), *(a2 + 17), 8 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 19, *(this + 40) + v8);
    memcpy((*(this + 19) + 8 * *(this + 40)), *(a2 + 19), 8 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 23, *(this + 48) + v9);
    memcpy((*(this + 23) + 8 * *(this + 48)), *(a2 + 23), 8 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v10 = *(a2 + 51);
  if (!v10)
  {
    goto LABEL_25;
  }

  if (v10)
  {
    v14 = *(a2 + 1);
    *(this + 51) |= 1u;
    *(this + 1) = v14;
    v10 = *(a2 + 51);
    if ((v10 & 2) == 0)
    {
LABEL_18:
      if ((v10 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(a2 + 2);
  *(this + 51) |= 2u;
  *(this + 2) = v15;
  v10 = *(a2 + 51);
  if ((v10 & 4) == 0)
  {
LABEL_19:
    if ((v10 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = *(a2 + 3);
  *(this + 51) |= 4u;
  *(this + 3) = v16;
  v10 = *(a2 + 51);
  if ((v10 & 8) == 0)
  {
LABEL_20:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = *(a2 + 4);
  *(this + 51) |= 8u;
  *(this + 4) = v17;
  v10 = *(a2 + 51);
  if ((v10 & 0x10) == 0)
  {
LABEL_21:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_38:
    v19 = *(a2 + 6);
    *(this + 51) |= 0x20u;
    v20 = *(this + 6);
    if (v20 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v20, v19);
    v10 = *(a2 + 51);
    if ((v10 & 0x40) == 0)
    {
LABEL_23:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_41;
  }

LABEL_37:
  v18 = *(a2 + 5);
  *(this + 51) |= 0x10u;
  *(this + 5) = v18;
  v10 = *(a2 + 51);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_41:
  v21 = *(a2 + 7);
  *(this + 51) |= 0x40u;
  *(this + 7) = v21;
  v10 = *(a2 + 51);
  if ((v10 & 0x80) != 0)
  {
LABEL_24:
    v11 = *(a2 + 8);
    *(this + 51) |= 0x80u;
    *(this + 8) = v11;
    v10 = *(a2 + 51);
  }

LABEL_25:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_30;
  }

  if ((v10 & 0x100) != 0)
  {
    v22 = *(a2 + 9);
    *(this + 51) |= 0x100u;
    *(this + 9) = v22;
    v10 = *(a2 + 51);
    if ((v10 & 0x200) == 0)
    {
LABEL_28:
      if ((v10 & 0x8000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_28;
  }

  v23 = *(a2 + 10);
  *(this + 51) |= 0x200u;
  *(this + 10) = v23;
  v10 = *(a2 + 51);
  if ((v10 & 0x8000) != 0)
  {
LABEL_29:
    v12 = *(a2 + 21);
    *(this + 51) |= 0x8000u;
    *(this + 21) = v12;
    v10 = *(a2 + 51);
  }

LABEL_30:
  if ((v10 & 0x10000) != 0)
  {
    v13 = *(a2 + 22);
    *(this + 51) |= 0x10000u;
    *(this + 22) = v13;
  }
}

void sub_2963F1340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::AvcSidecarVideoStream::~AvcSidecarVideoStream(awd::metrics::AvcSidecarVideoStream *this)
{
  *this = &unk_2A1D4E290;
  awd::metrics::AvcSidecarVideoStream::SharedDtor(this);
  v2 = *(this + 23);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 19);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 17);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 15);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8000313F17);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8000313F17);
  }

  v7 = *(this + 11);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::AvcSidecarVideoStream::~AvcSidecarVideoStream(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::AvcSidecarVideoStream::SharedDtor(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::AvcSidecarVideoStream::default_instance(awd::metrics::AvcSidecarVideoStream *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::AvcSidecarVideoStream::default_instance_;
  if (!awd::metrics::AvcSidecarVideoStream::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::AvcSidecarVideoStream::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::AvcSidecarVideoStream::Clear(uint64_t this)
{
  v1 = *(this + 204);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    if ((v1 & 0x20) != 0)
    {
      v2 = *(this + 48);
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

    *(this + 56) = 0;
    *(this + 64) = 0;
    v1 = *(this + 204);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 168) = 0;
    *(this + 72) = 0;
    *(this + 80) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 176) = 0;
  }

  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 128) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 192) = 0;
  *(this + 204) = 0;
  return this;
}

uint64_t awd::metrics::AvcSidecarVideoStream::MergePartialFromCodedStream(awd::metrics::AvcSidecarVideoStream *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
LABEL_2:
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 51) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v21 = v11 + 1;
          *(a2 + 1) = v21;
          goto LABEL_72;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_72:
        if (v21 >= v8 || (v31 = *v21, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v31;
          v32 = v21 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 51) |= 2u;
        if (v32 >= v8 || *v32 != 24)
        {
          continue;
        }

        v17 = v32 + 1;
        *(a2 + 1) = v17;
LABEL_80:
        if (v17 >= v8 || (v33 = *v17, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v33;
          v34 = v17 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 51) |= 4u;
        if (v34 >= v8 || *v34 != 32)
        {
          continue;
        }

        v19 = v34 + 1;
        *(a2 + 1) = v19;
LABEL_88:
        if (v19 >= v8 || (v35 = *v19, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v35;
          v36 = v19 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 51) |= 8u;
        if (v36 >= v8 || *v36 != 40)
        {
          continue;
        }

        v15 = v36 + 1;
        *(a2 + 1) = v15;
LABEL_96:
        if (v15 >= v8 || (v37 = *v15, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v37;
          v38 = v15 + 1;
          *(a2 + 1) = v38;
        }

        v22 = *(this + 51) | 0x10;
        *(this + 51) = v22;
        if (v38 >= v8 || *v38 != 50)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_104:
        *(this + 51) = v22 | 0x20;
        if (*(this + 6) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v39 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v39 >= v12 || *v39 != 56)
        {
          continue;
        }

        v23 = (v39 + 1);
        *(a2 + 1) = v23;
LABEL_110:
        if (v23 >= v12 || (v40 = *v23, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v40;
          v41 = (v23 + 1);
          *(a2 + 1) = v41;
        }

        *(this + 51) |= 0x40u;
        if (v41 >= v12 || *v41 != 64)
        {
          continue;
        }

        v20 = (v41 + 1);
        *(a2 + 1) = v20;
LABEL_118:
        if (v20 >= v12 || (v42 = *v20, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v42;
          v43 = (v20 + 1);
          *(a2 + 1) = v43;
        }

        *(this + 51) |= 0x80u;
        if (v43 >= v12 || *v43 != 72)
        {
          continue;
        }

        v24 = (v43 + 1);
        *(a2 + 1) = v24;
LABEL_126:
        if (v24 >= v12 || (v44 = *v24, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v44;
          v45 = (v24 + 1);
          *(a2 + 1) = v45;
        }

        *(this + 51) |= 0x100u;
        if (v45 >= v12 || *v45 != 80)
        {
          continue;
        }

        v16 = (v45 + 1);
        *(a2 + 1) = v16;
LABEL_134:
        if (v16 >= v12 || (v46 = *v16, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v46;
          v47 = (v16 + 1);
          *(a2 + 1) = v47;
        }

        *(this + 51) |= 0x200u;
        if (v47 >= v12)
        {
          continue;
        }

        v48 = *v47;
        goto LABEL_141;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_80;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_88;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_96;
      case 6u:
        if (v7 != 2)
        {
          goto LABEL_57;
        }

        v22 = *(this + 51);
        goto LABEL_104;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v23 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_110;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_118;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_126;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_134;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 88);
            if (!result)
            {
              return result;
            }

            goto LABEL_161;
          }

          goto LABEL_57;
        }

        v30 = *(a2 + 1);
        v12 = *(a2 + 2);
        while (1)
        {
          v116 = 0;
          if (v30 >= v12 || (*v30 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
            {
              return 0;
            }
          }

          else
          {
            v116 = *v30;
            *(a2 + 1) = v30 + 1;
          }

          v49 = *(this + 24);
          v50 = *(this + 25);
          if (v49 == v50)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 11, v49 + 1);
            v49 = *(this + 24);
            v50 = *(this + 25);
          }

          v51 = v116;
          v52 = *(this + 11);
          v53 = v49 + 1;
          *(this + 24) = v49 + 1;
          *(v52 + 8 * v49) = v51;
          if (v50 - (v49 + 1) >= 1)
          {
            v54 = v50 - v49;
            do
            {
              v55 = *(a2 + 1);
              v56 = *(a2 + 2);
              if (v55 >= v56 || *v55 != 88)
              {
                break;
              }

              *(a2 + 1) = v55 + 1;
              if ((v55 + 1) >= v56 || (v55[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
                {
                  return 0;
                }

                v53 = *(this + 24);
              }

              else
              {
                v116 = v55[1];
                *(a2 + 1) = v55 + 2;
              }

              if (v53 >= *(this + 25))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v117);
                v53 = *(this + 24);
              }

              v57 = v116;
              v58 = *(this + 11);
              *(this + 24) = v53 + 1;
              *(v58 + 8 * v53) = v57;
              --v54;
              ++v53;
            }

            while (v54 > 1);
          }

LABEL_161:
          v47 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v47 >= v12)
          {
            goto LABEL_2;
          }

          v48 = *v47;
          if (v48 == 96)
          {
            goto LABEL_163;
          }

LABEL_141:
          if (v48 != 88)
          {
            goto LABEL_2;
          }

          v30 = (v47 + 1);
          *(a2 + 1) = v30;
        }

      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 104);
            if (!result)
            {
              return result;
            }

            goto LABEL_182;
          }

          goto LABEL_57;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        while (1)
        {
          v116 = 0;
          if (v26 >= v12 || (*v26 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
            {
              return 0;
            }
          }

          else
          {
            v116 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v59 = *(this + 28);
          v60 = *(this + 29);
          if (v59 == v60)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 13, v59 + 1);
            v59 = *(this + 28);
            v60 = *(this + 29);
          }

          v61 = v116;
          v62 = *(this + 13);
          v63 = v59 + 1;
          *(this + 28) = v59 + 1;
          *(v62 + 8 * v59) = v61;
          if (v60 - (v59 + 1) >= 1)
          {
            v64 = v60 - v59;
            do
            {
              v65 = *(a2 + 1);
              v66 = *(a2 + 2);
              if (v65 >= v66 || *v65 != 96)
              {
                break;
              }

              *(a2 + 1) = v65 + 1;
              if ((v65 + 1) >= v66 || (v65[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
                {
                  return 0;
                }

                v63 = *(this + 28);
              }

              else
              {
                v116 = v65[1];
                *(a2 + 1) = v65 + 2;
              }

              if (v63 >= *(this + 29))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v117);
                v63 = *(this + 28);
              }

              v67 = v116;
              v68 = *(this + 13);
              *(this + 28) = v63 + 1;
              *(v68 + 8 * v63) = v67;
              --v64;
              ++v63;
            }

            while (v64 > 1);
          }

LABEL_182:
          v47 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v47 >= v12)
          {
            goto LABEL_2;
          }

          v69 = *v47;
          if (v69 == 104)
          {
            goto LABEL_186;
          }

          if (v69 != 96)
          {
            goto LABEL_2;
          }

LABEL_163:
          v26 = (v47 + 1);
          *(a2 + 1) = v26;
        }

      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 120);
            if (!result)
            {
              return result;
            }

            goto LABEL_205;
          }

          goto LABEL_57;
        }

        v27 = *(a2 + 1);
        v12 = *(a2 + 2);
        while (1)
        {
          v116 = 0;
          if (v27 >= v12 || (*v27 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
            {
              return 0;
            }
          }

          else
          {
            v116 = *v27;
            *(a2 + 1) = v27 + 1;
          }

          v70 = *(this + 32);
          v71 = *(this + 33);
          if (v70 == v71)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 15, v70 + 1);
            v70 = *(this + 32);
            v71 = *(this + 33);
          }

          v72 = v116;
          v73 = *(this + 15);
          v74 = v70 + 1;
          *(this + 32) = v70 + 1;
          *(v73 + 8 * v70) = v72;
          if (v71 - (v70 + 1) >= 1)
          {
            v75 = v71 - v70;
            do
            {
              v76 = *(a2 + 1);
              v77 = *(a2 + 2);
              if (v76 >= v77 || *v76 != 104)
              {
                break;
              }

              *(a2 + 1) = v76 + 1;
              if ((v76 + 1) >= v77 || (v76[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
                {
                  return 0;
                }

                v74 = *(this + 32);
              }

              else
              {
                v116 = v76[1];
                *(a2 + 1) = v76 + 2;
              }

              if (v74 >= *(this + 33))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v117);
                v74 = *(this + 32);
              }

              v78 = v116;
              v79 = *(this + 15);
              *(this + 32) = v74 + 1;
              *(v79 + 8 * v74) = v78;
              --v75;
              ++v74;
            }

            while (v75 > 1);
          }

LABEL_205:
          v47 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v47 >= v12)
          {
            goto LABEL_2;
          }

          v80 = *v47;
          if (v80 == 112)
          {
            goto LABEL_209;
          }

          if (v80 != 104)
          {
            goto LABEL_2;
          }

LABEL_186:
          v27 = (v47 + 1);
          *(a2 + 1) = v27;
        }

      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 136);
            if (!result)
            {
              return result;
            }

            goto LABEL_228;
          }

          goto LABEL_57;
        }

        v29 = *(a2 + 1);
        v12 = *(a2 + 2);
        while (1)
        {
          v116 = 0;
          if (v29 >= v12 || (*v29 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
            {
              return 0;
            }
          }

          else
          {
            v116 = *v29;
            *(a2 + 1) = v29 + 1;
          }

          v81 = *(this + 36);
          v82 = *(this + 37);
          if (v81 == v82)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 17, v81 + 1);
            v81 = *(this + 36);
            v82 = *(this + 37);
          }

          v83 = v116;
          v84 = *(this + 17);
          v85 = v81 + 1;
          *(this + 36) = v81 + 1;
          *(v84 + 8 * v81) = v83;
          if (v82 - (v81 + 1) >= 1)
          {
            v86 = v82 - v81;
            do
            {
              v87 = *(a2 + 1);
              v88 = *(a2 + 2);
              if (v87 >= v88 || *v87 != 112)
              {
                break;
              }

              *(a2 + 1) = v87 + 1;
              if ((v87 + 1) >= v88 || (v87[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
                {
                  return 0;
                }

                v85 = *(this + 36);
              }

              else
              {
                v116 = v87[1];
                *(a2 + 1) = v87 + 2;
              }

              if (v85 >= *(this + 37))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v117);
                v85 = *(this + 36);
              }

              v89 = v116;
              v90 = *(this + 17);
              *(this + 36) = v85 + 1;
              *(v90 + 8 * v85) = v89;
              --v86;
              ++v85;
            }

            while (v86 > 1);
          }

LABEL_228:
          v47 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v47 >= v12)
          {
            goto LABEL_2;
          }

          v91 = *v47;
          if (v91 == 120)
          {
            goto LABEL_232;
          }

          if (v91 != 112)
          {
            goto LABEL_2;
          }

LABEL_209:
          v29 = (v47 + 1);
          *(a2 + 1) = v29;
        }

      case 0xFu:
        if ((TagFallback & 7) == 0)
        {
          v25 = *(a2 + 1);
          v12 = *(a2 + 2);
          while (1)
          {
            v116 = 0;
            if (v25 >= v12 || (*v25 & 0x8000000000000000) != 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
              {
                return 0;
              }
            }

            else
            {
              v116 = *v25;
              *(a2 + 1) = v25 + 1;
            }

            v92 = *(this + 40);
            v93 = *(this + 41);
            if (v92 == v93)
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 19, v92 + 1);
              v92 = *(this + 40);
              v93 = *(this + 41);
            }

            v94 = v116;
            v95 = *(this + 19);
            v96 = v92 + 1;
            *(this + 40) = v92 + 1;
            *(v95 + 8 * v92) = v94;
            if (v93 - (v92 + 1) >= 1)
            {
              v97 = v93 - v92;
              do
              {
                v98 = *(a2 + 1);
                v99 = *(a2 + 2);
                if (v98 >= v99 || *v98 != 120)
                {
                  break;
                }

                *(a2 + 1) = v98 + 1;
                if ((v98 + 1) >= v99 || (v98[1] & 0x8000000000000000) != 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
                  {
                    return 0;
                  }

                  v96 = *(this + 40);
                }

                else
                {
                  v116 = v98[1];
                  *(a2 + 1) = v98 + 2;
                }

                if (v96 >= *(this + 41))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v117);
                  v96 = *(this + 40);
                }

                v100 = v116;
                v101 = *(this + 19);
                *(this + 40) = v96 + 1;
                *(v101 + 8 * v96) = v100;
                --v97;
                ++v96;
              }

              while (v97 > 1);
            }

LABEL_251:
            v47 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v47 >= v12 || *v47 != 120)
            {
              break;
            }

LABEL_232:
            v25 = (v47 + 1);
            *(a2 + 1) = v25;
          }

          if (v12 - v47 >= 2 && *v47 == 128 && v47[1] == 1)
          {
            v18 = (v47 + 2);
            *(a2 + 1) = v18;
LABEL_257:
            if (v18 >= v12 || (v102 = *v18, v102 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 21);
              if (!result)
              {
                return result;
              }

              v103 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              *(this + 21) = v102;
              v103 = (v18 + 1);
              *(a2 + 1) = v103;
            }

            *(this + 51) |= 0x8000u;
            if (v12 - v103 >= 2 && *v103 == 136 && v103[1] == 1)
            {
              v13 = (v103 + 2);
              *(a2 + 1) = v13;
LABEL_266:
              if (v13 >= v12 || (v104 = *v13, v104 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 22);
                if (!result)
                {
                  return result;
                }

                v105 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 22) = v104;
                v105 = (v13 + 1);
                *(a2 + 1) = v105;
              }

              *(this + 51) |= 0x10000u;
              if (v12 - v105 >= 2 && *v105 == 144 && v105[1] == 1)
              {
                do
                {
                  v28 = (v105 + 2);
                  *(a2 + 1) = v28;
LABEL_275:
                  v116 = 0;
                  if (v28 >= v12 || (*v28 & 0x8000000000000000) != 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v116 = *v28;
                    *(a2 + 1) = v28 + 1;
                  }

                  v106 = *(this + 48);
                  v107 = *(this + 49);
                  if (v106 == v107)
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 23, v106 + 1);
                    v106 = *(this + 48);
                    v107 = *(this + 49);
                  }

                  v108 = v116;
                  v109 = *(this + 23);
                  v110 = v106 + 1;
                  *(this + 48) = v106 + 1;
                  *(v109 + 8 * v106) = v108;
                  if (v107 - (v106 + 1) >= 1)
                  {
                    v111 = v107 - v106;
                    do
                    {
                      v112 = *(a2 + 1);
                      v113 = *(a2 + 2);
                      if (v113 - v112 < 2 || *v112 != 144 || v112[1] != 1)
                      {
                        break;
                      }

                      *(a2 + 1) = v112 + 2;
                      if ((v112 + 2) >= v113 || (v112[2] & 0x8000000000000000) != 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v116))
                        {
                          return 0;
                        }

                        v110 = *(this + 48);
                      }

                      else
                      {
                        v116 = v112[2];
                        *(a2 + 1) = v112 + 3;
                      }

                      if (v110 >= *(this + 49))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v117);
                        v110 = *(this + 48);
                      }

                      v114 = v116;
                      v115 = *(this + 23);
                      *(this + 48) = v110 + 1;
                      *(v115 + 8 * v110) = v114;
                      --v111;
                      ++v110;
                    }

                    while (v111 > 1);
                  }

LABEL_294:
                  v105 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                while (v12 - v105 >= 2 && *v105 == 144 && v105[1] == 1);
                if (v105 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }

          continue;
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 152);
          if (!result)
          {
            return result;
          }

          goto LABEL_251;
        }

LABEL_57:
        if (v7 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_257;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_266;
      case 0x12u:
        if ((TagFallback & 7) == 0)
        {
          v28 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_275;
        }

        if (v7 != 2)
        {
          goto LABEL_57;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 184);
        if (!result)
        {
          return result;
        }

        goto LABEL_294;
      default:
        goto LABEL_57;
    }
  }
}

void sub_2963F2588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v10 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (*v6 & 0x8000000000000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v10 = *v6;
        *(this + 1) = v6 + 1;
      }

      v7 = *(a2 + 8);
      if (v7 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 8);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 8) = v7 + 1;
      *(v9 + 8 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::AvcSidecarVideoStream::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 204);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 204);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 204);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 64), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 72), a2, a4);
  if ((*(v5 + 204) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, *(v5 + 80), a2, a4);
  }

LABEL_12:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(*(v5 + 88) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  if (*(v5 + 112) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xC, *(*(v5 + 104) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 112));
  }

  if (*(v5 + 128) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xD, *(*(v5 + 120) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 128));
  }

  if (*(v5 + 144) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xE, *(*(v5 + 136) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xF, *(*(v5 + 152) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 160));
  }

  v12 = *(v5 + 204);
  if ((v12 & 0x8000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x10, *(v5 + 168), a2, a4);
    v12 = *(v5 + 204);
  }

  if ((v12 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, *(v5 + 176), a2, a4);
  }

  if (*(v5 + 192) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x12, *(*(v5 + 184) + 8 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 192));
  }

  return this;
}