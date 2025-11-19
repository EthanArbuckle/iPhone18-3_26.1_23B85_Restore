uint64_t awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v8, a2, a4);
}

uint64_t awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::ByteSize(awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
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
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
        v6 = *(v5 + 23);
        v8 = *(v5 + 8);
        v10 = v11 + 1;
        v2 = *(this + 10);
        v7 = *(v5 + 23);
      }

      else
      {
        v10 = 2;
      }

      if (v7 < 0)
      {
        v6 = v8;
      }

      v3 = v10 + v6;
      if ((v2 & 2) == 0)
      {
LABEL_21:
        if ((v2 & 4) != 0)
        {
          v14 = *(this + 5);
          if ((v14 & 0x80000000) != 0)
          {
            v15 = 11;
          }

          else if (v14 >= 0x80)
          {
            v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
            v2 = *(this + 10);
          }

          else
          {
            v15 = 2;
          }

          v3 += v15;
          if ((v2 & 8) == 0)
          {
LABEL_23:
            if ((v2 & 0x10) == 0)
            {
LABEL_43:
              result = ((v2 >> 4) & 2) + v3;
              goto LABEL_44;
            }

LABEL_37:
            v18 = *(this + 7);
            if ((v18 & 0x80000000) != 0)
            {
              v19 = 11;
            }

            else if (v18 >= 0x80)
            {
              v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
              v2 = *(this + 10);
            }

            else
            {
              v19 = 2;
            }

            v3 += v19;
            goto LABEL_43;
          }
        }

        else if ((v2 & 8) == 0)
        {
          goto LABEL_23;
        }

        v16 = *(this + 6);
        if ((v16 & 0x80000000) != 0)
        {
          v17 = 11;
        }

        else if (v16 >= 0x80)
        {
          v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
          v2 = *(this + 10);
        }

        else
        {
          v17 = 2;
        }

        v3 += v17;
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_21;
      }
    }

    v12 = *(this + 4);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v13 = 2;
    }

    v3 += v13;
    goto LABEL_21;
  }

  result = 0;
LABEL_44:
  *(this + 9) = result;
  return result;
}

void awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::CheckTypeAndMergeFrom(awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::CopyFrom(awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *this, const awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::Swap(uint64_t this, awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *a2)
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
    LOBYTE(v2) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return this;
}

double awd::metrics::LocationMobileAssetStatistics::SharedCtor(awd::metrics::LocationMobileAssetStatistics *this)
{
  *(this + 13) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

awd::metrics::LocationMobileAssetStatistics *awd::metrics::LocationMobileAssetStatistics::LocationMobileAssetStatistics(awd::metrics::LocationMobileAssetStatistics *this, const awd::metrics::LocationMobileAssetStatistics *a2)
{
  *(this + 13) = 0;
  *this = &unk_2A1D50A60;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  awd::metrics::LocationMobileAssetStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMobileAssetStatistics::MergeFrom(awd::metrics::LocationMobileAssetStatistics *this, const awd::metrics::LocationMobileAssetStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
  }

  v4 = *(a2 + 27);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v6 = *(a2 + 1);
    *(this + 27) |= 1u;
    *(this + 1) = v6;
    v4 = *(a2 + 27);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 2);
  *(this + 27) |= 2u;
  v8 = *(this + 2);
  if (v8 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 27);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_27:
  v9 = *(a2 + 6);
  if (v9 >= 7)
  {
    awd::metrics::LocationMobileAssetStatistics::MergeFrom();
  }

  *(this + 27) |= 4u;
  *(this + 6) = v9;
  v4 = *(a2 + 27);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_29:
  v10 = *(a2 + 7);
  if (v10 >= 2)
  {
    awd::metrics::LocationMobileAssetStatistics::MergeFrom();
  }

  *(this + 27) |= 8u;
  *(this + 7) = v10;
  v4 = *(a2 + 27);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_33:
    v12 = *(a2 + 9);
    *(this + 27) |= 0x20u;
    *(this + 9) = v12;
    v4 = *(a2 + 27);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(a2 + 8);
  if (v11 >= 6)
  {
    awd::metrics::LocationMobileAssetStatistics::MergeFrom();
  }

  *(this + 27) |= 0x10u;
  *(this + 8) = v11;
  v4 = *(a2 + 27);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_34:
  v13 = *(a2 + 10);
  *(this + 27) |= 0x40u;
  *(this + 10) = v13;
  v4 = *(a2 + 27);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 11);
    *(this + 27) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(a2 + 27);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 12);
    *(this + 27) |= 0x100u;
    *(this + 12) = v14;
    v4 = *(a2 + 27);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 13);
  *(this + 27) |= 0x200u;
  *(this + 13) = v15;
  v4 = *(a2 + 27);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = *(a2 + 14);
  *(this + 27) |= 0x400u;
  *(this + 14) = v16;
  v4 = *(a2 + 27);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = *(a2 + 15);
  *(this + 27) |= 0x800u;
  *(this + 15) = v17;
  v4 = *(a2 + 27);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = *(a2 + 16);
  *(this + 27) |= 0x1000u;
  *(this + 16) = v18;
  v4 = *(a2 + 27);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = *(a2 + 68);
  *(this + 27) |= 0x2000u;
  *(this + 68) = v19;
  v4 = *(a2 + 27);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = *(a2 + 69);
  *(this + 27) |= 0x4000u;
  *(this + 69) = v20;
  v4 = *(a2 + 27);
  if ((v4 & 0x8000) == 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  *(this + 27) |= 0x8000u;
  v21 = *(this + 9);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 9);
  if (!v22)
  {
    v22 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 72);
  }

  awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergeFrom(v21, v22);
  v4 = *(a2 + 27);
LABEL_48:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(this + 27) |= 0x10000u;
    v23 = *(this + 10);
    if (!v23)
    {
      operator new();
    }

    v24 = *(a2 + 10);
    if (!v24)
    {
      v24 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 80);
    }

    awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergeFrom(v23, v24);
    v4 = *(a2 + 27);
    if ((v4 & 0x20000) == 0)
    {
LABEL_51:
      if ((v4 & 0x40000) == 0)
      {
        return;
      }

      goto LABEL_63;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_51;
  }

  *(this + 27) |= 0x20000u;
  v25 = *(this + 11);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 11);
  if (!v26)
  {
    v26 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 88);
  }

  awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergeFrom(v25, v26);
  if ((*(a2 + 27) & 0x40000) != 0)
  {
LABEL_63:
    *(this + 27) |= 0x40000u;
    v27 = *(this + 12);
    if (!v27)
    {
      operator new();
    }

    v28 = *(a2 + 12);
    if (!v28)
    {
      v28 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 96);
    }

    awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergeFrom(v27, v28);
  }
}

void sub_29645E51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMobileAssetStatistics::~LocationMobileAssetStatistics(awd::metrics::LocationMobileAssetStatistics *this)
{
  *this = &unk_2A1D50A60;
  awd::metrics::LocationMobileAssetStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50A60;
  awd::metrics::LocationMobileAssetStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50A60;
  awd::metrics::LocationMobileAssetStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationMobileAssetStatistics::SharedDtor(void *this)
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

  if (awd::metrics::LocationMobileAssetStatistics::default_instance_ != v1)
  {
    v4 = v1[9];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[10];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[11];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    this = v1[12];
    if (this)
    {
      v7 = *(*this + 8);

      return v7();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationMobileAssetStatistics::default_instance(awd::metrics::LocationMobileAssetStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMobileAssetStatistics::default_instance_;
  if (!awd::metrics::LocationMobileAssetStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMobileAssetStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMobileAssetStatistics::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 108);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 16);
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

    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
    v2 = *(this + 108);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 62) = 0;
    if ((v2 & 0x8000) != 0)
    {
      this = *(this + 72);
      if (this)
      {
        this = awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::Clear(this);
        v2 = *(v1 + 108);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::Clear(this);
        v2 = *(v1 + 108);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      this = *(v1 + 88);
      if (this)
      {
        this = awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::Clear(this);
        v2 = *(v1 + 108);
      }
    }

    if ((v2 & 0x40000) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::Clear(this);
      }
    }
  }

  *(v1 + 108) = 0;
  return this;
}

uint64_t awd::metrics::LocationMobileAssetStatistics::MergePartialFromCodedStream(awd::metrics::LocationMobileAssetStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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
          goto LABEL_47;
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

        v25 = *(this + 27) | 1;
        *(this + 27) = v25;
        if (v11 < v8 && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_56;
        }

        continue;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_47;
        }

        v25 = *(this + 27);
LABEL_56:
        *(this + 27) = v25 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v32 >= v19 || *v32 != 24)
        {
          continue;
        }

        v20 = v32 + 1;
        *(a2 + 1) = v20;
LABEL_62:
        v87 = 0;
        if (v20 >= v19 || (v33 = *v20, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v33 = v87;
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v33 <= 6)
        {
          *(this + 27) |= 4u;
          *(this + 6) = v33;
        }

        v34 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v34 >= v22 || *v34 != 32)
        {
          continue;
        }

        v23 = v34 + 1;
        *(a2 + 1) = v23;
LABEL_72:
        v87 = 0;
        if (v23 >= v22 || (v35 = *v23, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v35 = v87;
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v35 <= 1)
        {
          *(this + 27) |= 8u;
          *(this + 7) = v35;
        }

        v36 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v36 >= v15 || *v36 != 40)
        {
          continue;
        }

        v16 = v36 + 1;
        *(a2 + 1) = v16;
LABEL_82:
        v87 = 0;
        if (v16 >= v15 || (v37 = *v16, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v37 = v87;
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v37 <= 5)
        {
          *(this + 27) |= 0x10u;
          *(this + 8) = v37;
        }

        v38 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v38 >= v12 || *v38 != 48)
        {
          continue;
        }

        v26 = v38 + 1;
        *(a2 + 1) = v26;
LABEL_92:
        v87 = 0;
        if (v26 >= v12 || (v39 = *v26, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v39 = v87;
          v40 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v40 = v26 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 9) = v39;
        *(this + 27) |= 0x20u;
        if (v40 >= v12 || *v40 != 56)
        {
          continue;
        }

        v28 = v40 + 1;
        *(a2 + 1) = v28;
LABEL_100:
        v87 = 0;
        if (v28 >= v12 || (v41 = *v28, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v41 = v87;
          v42 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v42 = v28 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 10) = v41;
        *(this + 27) |= 0x40u;
        if (v42 >= v12 || *v42 != 64)
        {
          continue;
        }

        v24 = v42 + 1;
        *(a2 + 1) = v24;
LABEL_108:
        v87 = 0;
        if (v24 >= v12 || (v43 = *v24, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v43 = v87;
          v44 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v44 = v24 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 11) = v43;
        *(this + 27) |= 0x80u;
        if (v44 >= v12 || *v44 != 72)
        {
          continue;
        }

        v30 = v44 + 1;
        *(a2 + 1) = v30;
LABEL_116:
        v87 = 0;
        if (v30 >= v12 || (v45 = *v30, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v45 = v87;
          v46 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v46 = v30 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 12) = v45;
        *(this + 27) |= 0x100u;
        if (v46 >= v12 || *v46 != 80)
        {
          continue;
        }

        v18 = v46 + 1;
        *(a2 + 1) = v18;
LABEL_124:
        v87 = 0;
        if (v18 >= v12 || (v47 = *v18, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v47 = v87;
          v48 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v48 = v18 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 13) = v47;
        *(this + 27) |= 0x200u;
        if (v48 >= v12 || *v48 != 88)
        {
          continue;
        }

        v29 = v48 + 1;
        *(a2 + 1) = v29;
LABEL_132:
        v87 = 0;
        if (v29 >= v12 || (v49 = *v29, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v49 = v87;
          v50 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v50 = v29 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 14) = v49;
        *(this + 27) |= 0x400u;
        if (v50 >= v12 || *v50 != 96)
        {
          continue;
        }

        v14 = v50 + 1;
        *(a2 + 1) = v14;
LABEL_140:
        v87 = 0;
        if (v14 >= v12 || (v51 = *v14, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v51 = v87;
          v52 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v52 = v14 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 15) = v51;
        *(this + 27) |= 0x800u;
        if (v52 >= v12 || *v52 != 104)
        {
          continue;
        }

        v17 = v52 + 1;
        *(a2 + 1) = v17;
LABEL_148:
        v87 = 0;
        if (v17 >= v12 || (v53 = *v17, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v53 = v87;
          v54 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v54 = v17 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 16) = v53;
        *(this + 27) |= 0x1000u;
        if (v54 >= v12 || *v54 != 112)
        {
          continue;
        }

        v27 = v54 + 1;
        *(a2 + 1) = v27;
LABEL_156:
        v87 = 0;
        if (v27 >= v12 || (v55 = *v27, (v55 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v55 = v87;
          v56 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v56 = v27 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 68) = v55 != 0;
        *(this + 27) |= 0x2000u;
        if (v56 >= v12 || *v56 != 120)
        {
          continue;
        }

        v13 = v56 + 1;
        *(a2 + 1) = v13;
LABEL_164:
        v87 = 0;
        if (v13 >= v12 || (v57 = *v13, (v57 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v57 = v87;
          v58 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v58 = (v13 + 1);
          *(a2 + 1) = v58;
        }

        *(this + 69) = v57 != 0;
        v21 = *(this + 27) | 0x4000;
        *(this + 27) = v21;
        if (v12 - v58 < 2 || *v58 != 130 || v58[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v58 + 2;
LABEL_173:
        *(this + 27) = v21 | 0x8000;
        v59 = *(this + 9);
        if (!v59)
        {
          operator new();
        }

        v87 = 0;
        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v60;
          *(a2 + 1) = v60 + 1;
        }

        v61 = *(a2 + 14);
        v62 = *(a2 + 15);
        *(a2 + 14) = v61 + 1;
        if (v61 >= v62)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergePartialFromCodedStream(v59, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v63 = *(a2 + 14);
        v64 = __OFSUB__(v63, 1);
        v65 = v63 - 1;
        if (v65 < 0 == v64)
        {
          *(a2 + 14) = v65;
        }

        v66 = *(a2 + 1);
        if (*(a2 + 4) - v66 <= 1 || *v66 != 138 || v66[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v66 + 2;
LABEL_188:
        *(this + 27) |= 0x10000u;
        v67 = *(this + 10);
        if (!v67)
        {
          operator new();
        }

        v87 = 0;
        v68 = *(a2 + 1);
        if (v68 >= *(a2 + 2) || *v68 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v68;
          *(a2 + 1) = v68 + 1;
        }

        v69 = *(a2 + 14);
        v70 = *(a2 + 15);
        *(a2 + 14) = v69 + 1;
        if (v69 >= v70)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergePartialFromCodedStream(v67, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v71 = *(a2 + 14);
        v64 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v64)
        {
          *(a2 + 14) = v72;
        }

        v73 = *(a2 + 1);
        if (*(a2 + 4) - v73 <= 1 || *v73 != 146 || v73[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v73 + 2;
LABEL_203:
        *(this + 27) |= 0x20000u;
        v74 = *(this + 11);
        if (!v74)
        {
          operator new();
        }

        v87 = 0;
        v75 = *(a2 + 1);
        if (v75 >= *(a2 + 2) || *v75 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v75;
          *(a2 + 1) = v75 + 1;
        }

        v76 = *(a2 + 14);
        v77 = *(a2 + 15);
        *(a2 + 14) = v76 + 1;
        if (v76 >= v77)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergePartialFromCodedStream(v74, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v78 = *(a2 + 14);
        v64 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v64)
        {
          *(a2 + 14) = v79;
        }

        v80 = *(a2 + 1);
        if (*(a2 + 4) - v80 <= 1 || *v80 != 154 || v80[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v80 + 2;
LABEL_218:
        *(this + 27) |= 0x40000u;
        v81 = *(this + 12);
        if (!v81)
        {
          operator new();
        }

        v87 = 0;
        v82 = *(a2 + 1);
        if (v82 >= *(a2 + 2) || *v82 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v82;
          *(a2 + 1) = v82 + 1;
        }

        v83 = *(a2 + 14);
        v84 = *(a2 + 15);
        *(a2 + 14) = v83 + 1;
        if (v83 < v84)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergePartialFromCodedStream(v81, a2))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v85 = *(a2 + 14);
              v64 = __OFSUB__(v85, 1);
              v86 = v85 - 1;
              if (v86 < 0 == v64)
              {
                *(a2 + 14) = v86;
              }

              if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_62;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_72;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_82;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_92;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v28 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_100;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_108;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v30 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_116;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_124;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v29 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_132;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_140;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_148;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v27 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_156;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_164;
      case 0x10u:
        if (v7 != 2)
        {
          goto LABEL_47;
        }

        v21 = *(this + 27);
        goto LABEL_173;
      case 0x11u:
        if (v7 == 2)
        {
          goto LABEL_188;
        }

        goto LABEL_47;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_203;
        }

        goto LABEL_47;
      case 0x13u:
        if (v7 == 2)
        {
          goto LABEL_218;
        }

        goto LABEL_47;
      default:
LABEL_47:
        if (v7 == 4)
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

uint64_t awd::metrics::LocationMobileAssetStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 108);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 108);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 108);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 56), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 60), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 64), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 68), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 69), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_36:
  v8 = *(v5 + 72);
  if (!v8)
  {
    v8 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v8, a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_39:
  v9 = *(v5 + 80);
  if (!v9)
  {
    v9 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v9, a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_45;
  }

LABEL_42:
  v10 = *(v5 + 88);
  if (!v10)
  {
    v10 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v10, a2, a4);
  if ((*(v5 + 108) & 0x40000) != 0)
  {
LABEL_45:
    v11 = *(v5 + 96);
    if (!v11)
    {
      v11 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 96);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v11, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationMobileAssetStatistics::ByteSize(awd::metrics::LocationMobileAssetStatistics *this)
{
  v2 = *(this + 27);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_59;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 27);
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
    v2 = *(this + 27);
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

  v3 = (v3 + v9 + v5 + 1);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 27);
    }

    else
    {
      v11 = 2;
    }

    v3 = (v11 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 7);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 27);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_35:
  v14 = *(this + 8);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 27);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_41:
  v16 = *(this + 9);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 27);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

LABEL_47:
  v18 = *(this + 10);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = 11;
  }

  else if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 27);
  }

  else
  {
    v19 = 2;
  }

  v3 = (v19 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_53:
    v20 = *(this + 11);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 27);
    }

    else
    {
      v21 = 2;
    }

    v3 = (v21 + v3);
  }

LABEL_59:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v2 & 0x100) != 0)
  {
    v22 = *(this + 12);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v2 = *(this + 27);
    }

    else
    {
      v23 = 2;
    }

    LODWORD(v3) = v23 + v3;
    if ((v2 & 0x200) == 0)
    {
LABEL_62:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_78;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_62;
  }

  v24 = *(this + 13);
  if ((v24 & 0x80000000) != 0)
  {
    v25 = 11;
  }

  else if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 27);
  }

  else
  {
    v25 = 2;
  }

  LODWORD(v3) = v25 + v3;
  if ((v2 & 0x400) == 0)
  {
LABEL_63:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_84;
  }

LABEL_78:
  v26 = *(this + 14);
  if ((v26 & 0x80000000) != 0)
  {
    v27 = 11;
  }

  else if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 27);
  }

  else
  {
    v27 = 2;
  }

  LODWORD(v3) = v27 + v3;
  if ((v2 & 0x800) == 0)
  {
LABEL_64:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_90;
  }

LABEL_84:
  v28 = *(this + 15);
  if ((v28 & 0x80000000) != 0)
  {
    v29 = 11;
  }

  else if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 27);
  }

  else
  {
    v29 = 2;
  }

  LODWORD(v3) = v29 + v3;
  if ((v2 & 0x1000) != 0)
  {
LABEL_90:
    v30 = *(this + 16);
    if ((v30 & 0x80000000) != 0)
    {
      v31 = 11;
    }

    else if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
      v2 = *(this + 27);
    }

    else
    {
      v31 = 2;
    }

    LODWORD(v3) = v31 + v3;
  }

LABEL_96:
  v3 = ((v2 >> 12) & 2) + v3 + ((v2 >> 13) & 2);
  if ((v2 & 0x8000) != 0)
  {
    v32 = *(this + 9);
    if (!v32)
    {
      v32 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 72);
    }

    v33 = awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::ByteSize(v32);
    v34 = v33;
    if (v33 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    }

    else
    {
      v35 = 1;
    }

    v3 = (v3 + v34 + v35 + 2);
    v2 = *(this + 27);
  }

LABEL_103:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_126;
  }

  if ((v2 & 0x10000) != 0)
  {
    v36 = *(this + 10);
    if (!v36)
    {
      v36 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 80);
    }

    v37 = awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::ByteSize(v36);
    v38 = v37;
    if (v37 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
    }

    else
    {
      v39 = 1;
    }

    v3 = (v3 + v38 + v39 + 2);
    v2 = *(this + 27);
    if ((v2 & 0x20000) == 0)
    {
LABEL_106:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_120;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  v40 = *(this + 11);
  if (!v40)
  {
    v40 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 88);
  }

  v41 = awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::ByteSize(v40);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
  }

  else
  {
    v43 = 1;
  }

  v3 = (v3 + v42 + v43 + 2);
  if ((*(this + 27) & 0x40000) != 0)
  {
LABEL_120:
    v44 = *(this + 12);
    if (!v44)
    {
      v44 = *(awd::metrics::LocationMobileAssetStatistics::default_instance_ + 96);
    }

    v45 = awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::ByteSize(v44);
    v46 = v45;
    if (v45 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
    }

    else
    {
      v47 = 1;
    }

    v3 = (v3 + v46 + v47 + 2);
  }

LABEL_126:
  *(this + 26) = v3;
  return v3;
}

void awd::metrics::LocationMobileAssetStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationMobileAssetStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMobileAssetStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMobileAssetStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMobileAssetStatistics::CopyFrom(awd::metrics::LocationMobileAssetStatistics *this, const awd::metrics::LocationMobileAssetStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMobileAssetStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMobileAssetStatistics::Swap(uint64_t this, awd::metrics::LocationMobileAssetStatistics *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LOBYTE(v2) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v2;
    LOBYTE(v2) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v2;
    v5 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(this + 88);
    *(this + 88) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(this + 96);
    *(this + 96) = *(a2 + 12);
    *(a2 + 12) = v8;
    LODWORD(v8) = *(this + 108);
    *(this + 108) = *(a2 + 27);
    *(a2 + 27) = v8;
    LODWORD(v8) = *(this + 104);
    *(this + 104) = *(a2 + 26);
    *(a2 + 26) = v8;
  }

  return this;
}

double awd::metrics::LocationEmergencyPOIStatistics::SharedCtor(awd::metrics::LocationEmergencyPOIStatistics *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 28) = 0;
  *(this + 13) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

awd::metrics::LocationEmergencyPOIStatistics *awd::metrics::LocationEmergencyPOIStatistics::LocationEmergencyPOIStatistics(awd::metrics::LocationEmergencyPOIStatistics *this, const awd::metrics::LocationEmergencyPOIStatistics *a2)
{
  *this = &unk_2A1D50AD8;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 28) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  awd::metrics::LocationEmergencyPOIStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationEmergencyPOIStatistics::MergeFrom(awd::metrics::LocationEmergencyPOIStatistics *this, const awd::metrics::LocationEmergencyPOIStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 28);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 1);
      *(this + 28) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 28);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 28) |= 2u;
    v7 = *(this + 2);
    if (v7 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v8 = *(a2 + 6);
    *(this + 28) |= 4u;
    *(this + 6) = v8;
    v4 = *(a2 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_18:
    v9 = *(a2 + 7);
    if (v9 >= 7)
    {
      awd::metrics::LocationEmergencyPOIStatistics::MergeFrom();
    }

    *(this + 28) |= 8u;
    *(this + 7) = v9;
    v4 = *(a2 + 28);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_20:
    v10 = *(a2 + 10);
    if (v10 >= 5)
    {
      awd::metrics::LocationEmergencyPOIStatistics::MergeFrom();
    }

    *(this + 28) |= 0x10u;
    *(this + 10) = v10;
    v4 = *(a2 + 28);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_22:
    v11 = *(a2 + 4);
    *(this + 28) |= 0x20u;
    *(this + 4) = v11;
    v4 = *(a2 + 28);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

LABEL_23:
    v12 = *(a2 + 6);
    *(this + 28) |= 0x40u;
    *(this + 6) = v12;
    v4 = *(a2 + 28);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    v13 = *(a2 + 11);
    if (v13 >= 4)
    {
      awd::metrics::LocationEmergencyPOIStatistics::MergeFrom();
    }

    *(this + 28) |= 0x80u;
    *(this + 11) = v13;
    v4 = *(a2 + 28);
  }

LABEL_26:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_40;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 14);
    if (v14 >= 3)
    {
      awd::metrics::LocationEmergencyPOIStatistics::MergeFrom();
    }

    *(this + 28) |= 0x100u;
    *(this + 14) = v14;
    v4 = *(a2 + 28);
  }

  if ((v4 & 0x200) != 0)
  {
    v15 = *(a2 + 15);
    if (v15 >= 9)
    {
      awd::metrics::LocationEmergencyPOIStatistics::MergeFrom();
    }

    *(this + 28) |= 0x200u;
    *(this + 15) = v15;
    v4 = *(a2 + 28);
  }

  if ((v4 & 0x400) != 0)
  {
    v19 = *(a2 + 16);
    *(this + 28) |= 0x400u;
    *(this + 16) = v19;
    v4 = *(a2 + 28);
    if ((v4 & 0x800) == 0)
    {
LABEL_35:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_48;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_35;
  }

  v20 = *(a2 + 17);
  *(this + 28) |= 0x800u;
  *(this + 17) = v20;
  v4 = *(a2 + 28);
  if ((v4 & 0x1000) == 0)
  {
LABEL_36:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = *(a2 + 9);
  *(this + 28) |= 0x1000u;
  *(this + 9) = v21;
  v4 = *(a2 + 28);
  if ((v4 & 0x2000) == 0)
  {
LABEL_37:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = *(a2 + 20);
  *(this + 28) |= 0x2000u;
  *(this + 20) = v22;
  v4 = *(a2 + 28);
  if ((v4 & 0x4000) == 0)
  {
LABEL_38:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_50:
  v23 = *(a2 + 21);
  *(this + 28) |= 0x4000u;
  *(this + 21) = v23;
  v4 = *(a2 + 28);
  if ((v4 & 0x8000) != 0)
  {
LABEL_39:
    v16 = *(a2 + 11);
    *(this + 28) |= 0x8000u;
    *(this + 11) = v16;
    v4 = *(a2 + 28);
  }

LABEL_40:
  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      v17 = *(a2 + 12);
      *(this + 28) |= 0x10000u;
      *(this + 12) = v17;
      v4 = *(a2 + 28);
    }

    if ((v4 & 0x20000) != 0)
    {
      v18 = *(a2 + 26);
      *(this + 28) |= 0x20000u;
      *(this + 26) = v18;
    }
  }
}

void sub_296460364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationEmergencyPOIStatistics::~LocationEmergencyPOIStatistics(awd::metrics::LocationEmergencyPOIStatistics *this)
{
  *this = &unk_2A1D50AD8;
  awd::metrics::LocationEmergencyPOIStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50AD8;
  awd::metrics::LocationEmergencyPOIStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50AD8;
  awd::metrics::LocationEmergencyPOIStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationEmergencyPOIStatistics::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationEmergencyPOIStatistics::default_instance(awd::metrics::LocationEmergencyPOIStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationEmergencyPOIStatistics::default_instance_;
  if (!awd::metrics::LocationEmergencyPOIStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationEmergencyPOIStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationEmergencyPOIStatistics::Clear(uint64_t this)
{
  v1 = *(this + 112);
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

    *(this + 40) = 0u;
    *(this + 24) = 0u;
    v1 = *(this + 112);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 88) = 0;
    *(this + 72) = 0u;
    *(this + 56) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 96) = 0;
    *(this + 104) = 0;
  }

  *(this + 112) = 0;
  return this;
}

uint64_t awd::metrics::LocationEmergencyPOIStatistics::MergePartialFromCodedStream(awd::metrics::LocationEmergencyPOIStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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
          goto LABEL_45;
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

        v25 = *(this + 28) | 1;
        *(this + 28) = v25;
        if (v11 < v8 && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_54;
        }

        continue;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_45;
        }

        v25 = *(this + 28);
LABEL_54:
        *(this + 28) = v25 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v33 >= v20 || *v33 != 24)
        {
          continue;
        }

        v21 = v33 + 1;
        *(a2 + 1) = v21;
LABEL_60:
        v61[0] = 0;
        if (v21 >= v20 || (v34 = *v21, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v34 = v61[0];
          v35 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v35 = v21 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 6) = v34;
        *(this + 28) |= 4u;
        if (v35 >= v20 || *v35 != 32)
        {
          continue;
        }

        v22 = v35 + 1;
        *(a2 + 1) = v22;
LABEL_68:
        v61[0] = 0;
        if (v22 >= v20 || (v36 = *v22, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v36 = v61[0];
        }

        else
        {
          *(a2 + 1) = v22 + 1;
        }

        if (v36 <= 6)
        {
          *(this + 28) |= 8u;
          *(this + 7) = v36;
        }

        v37 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v37 >= v16 || *v37 != 40)
        {
          continue;
        }

        v17 = v37 + 1;
        *(a2 + 1) = v17;
LABEL_78:
        v61[0] = 0;
        if (v17 >= v16 || (v38 = *v17, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v38 = v61[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v38 <= 4)
        {
          *(this + 28) |= 0x10u;
          *(this + 10) = v38;
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 49)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_88:
        *v61 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v61) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v61;
        *(this + 28) |= 0x20u;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 57)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_92:
        *v61 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v61) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v61;
        *(this + 28) |= 0x40u;
        v41 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v41 >= v23 || *v41 != 64)
        {
          continue;
        }

        v24 = v41 + 1;
        *(a2 + 1) = v24;
LABEL_96:
        v61[0] = 0;
        if (v24 >= v23 || (v42 = *v24, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v42 = v61[0];
        }

        else
        {
          *(a2 + 1) = v24 + 1;
        }

        if (v42 <= 3)
        {
          *(this + 28) |= 0x80u;
          *(this + 11) = v42;
        }

        v43 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v43 >= v30 || *v43 != 72)
        {
          continue;
        }

        v31 = v43 + 1;
        *(a2 + 1) = v31;
LABEL_106:
        v61[0] = 0;
        if (v31 >= v30 || (v44 = *v31, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v44 = v61[0];
        }

        else
        {
          *(a2 + 1) = v31 + 1;
        }

        if (v44 <= 2)
        {
          *(this + 28) |= 0x100u;
          *(this + 14) = v44;
        }

        v45 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v45 >= v18 || *v45 != 80)
        {
          continue;
        }

        v19 = v45 + 1;
        *(a2 + 1) = v19;
LABEL_116:
        v61[0] = 0;
        if (v19 >= v18 || (v46 = *v19, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v46 = v61[0];
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v46 <= 8)
        {
          *(this + 28) |= 0x200u;
          *(this + 15) = v46;
        }

        v47 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v47 >= v14 || *v47 != 88)
        {
          continue;
        }

        v29 = v47 + 1;
        *(a2 + 1) = v29;
LABEL_126:
        v61[0] = 0;
        if (v29 >= v14 || (v48 = *v29, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v48 = v61[0];
          v49 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v49 = v29 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 16) = v48;
        *(this + 28) |= 0x400u;
        if (v49 >= v14 || *v49 != 96)
        {
          continue;
        }

        v15 = v49 + 1;
        *(a2 + 1) = v15;
LABEL_134:
        v61[0] = 0;
        if (v15 >= v14 || (v50 = *v15, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v50 = v61[0];
          v51 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v51 = v15 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 17) = v50;
        *(this + 28) |= 0x800u;
        if (v51 >= v14 || *v51 != 105)
        {
          continue;
        }

        *(a2 + 1) = v51 + 1;
LABEL_142:
        *v61 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v61) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v61;
        *(this + 28) |= 0x1000u;
        v52 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v52 >= v12 || *v52 != 112)
        {
          continue;
        }

        v28 = v52 + 1;
        *(a2 + 1) = v28;
LABEL_146:
        v61[0] = 0;
        if (v28 >= v12 || (v53 = *v28, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v53 = v61[0];
          v54 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v54 = v28 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 20) = v53;
        *(this + 28) |= 0x2000u;
        if (v54 >= v12 || *v54 != 120)
        {
          continue;
        }

        v13 = v54 + 1;
        *(a2 + 1) = v13;
LABEL_154:
        v61[0] = 0;
        if (v13 >= v12 || (v55 = *v13, (v55 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v61);
          if (!result)
          {
            return result;
          }

          v55 = v61[0];
          v56 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v56 = (v13 + 1);
          *(a2 + 1) = v56;
        }

        *(this + 21) = v55;
        *(this + 28) |= 0x4000u;
        if (v12 - v56 < 2 || *v56 != 129 || v56[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v56 + 2;
LABEL_163:
        *v61 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v61) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v61;
        *(this + 28) |= 0x8000u;
        v57 = *(a2 + 1);
        if (*(a2 + 4) - v57 < 2 || *v57 != 137 || v57[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v57 + 2;
LABEL_168:
        *v61 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v61))
        {
          *(this + 12) = *v61;
          *(this + 28) |= 0x10000u;
          v58 = *(a2 + 1);
          v26 = *(a2 + 2);
          if (v26 - v58 >= 2 && *v58 == 144 && v58[1] == 1)
          {
            v27 = (v58 + 2);
            *(a2 + 1) = v27;
LABEL_173:
            if (v27 >= v26 || (v59 = *v27, v59 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
              if (!result)
              {
                return result;
              }

              v60 = *(a2 + 1);
              v26 = *(a2 + 2);
            }

            else
            {
              *(this + 26) = v59;
              v60 = v27 + 1;
              *(a2 + 1) = v60;
            }

            *(this + 28) |= 0x20000u;
            if (v60 == v26 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_60;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v22 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_68;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_78;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_88;
        }

        goto LABEL_45;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_92;
        }

        goto LABEL_45;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_96;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_106;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_116;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v29 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_126;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_134;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_142;
        }

        goto LABEL_45;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v28 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_146;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_154;
      case 0x10u:
        if (v7 == 1)
        {
          goto LABEL_163;
        }

        goto LABEL_45;
      case 0x11u:
        if (v7 == 1)
        {
          goto LABEL_168;
        }

        goto LABEL_45;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_173;
      default:
LABEL_45:
        if (v7 == 4)
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

uint64_t awd::metrics::LocationEmergencyPOIStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 112);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 112);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 112);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 64), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 68), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 72), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 80), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, *(v5 + 84), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 96), a3);
    if ((*(v5 + 112) & 0x20000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 88), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v6 & 0x20000) == 0)
  {
    return this;
  }

LABEL_37:
  v8 = *(v5 + 104);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, v8, a2, a4);
}

uint64_t awd::metrics::LocationEmergencyPOIStatistics::ByteSize(awd::metrics::LocationEmergencyPOIStatistics *this)
{
  v2 = *(this + 28);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 28);
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
    v2 = *(this + 28);
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v13 = *(this + 7);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 28);
    }

    else
    {
      v14 = 2;
    }

    v3 += v14;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v11 = *(this + 6);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 28);
  }

  else
  {
    v12 = 2;
  }

  v3 += v12;
  if ((v2 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if ((v2 & 0x10) != 0)
  {
LABEL_32:
    v15 = *(this + 10);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 28);
    }

    else
    {
      v16 = 2;
    }

    v3 += v16;
  }

LABEL_38:
  v17 = v3 + 9;
  if ((v2 & 0x20) == 0)
  {
    v17 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v4 = v17 + 9;
  }

  else
  {
    v4 = v17;
  }

  if ((v2 & 0x80) != 0)
  {
    v18 = *(this + 11);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 28);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_50:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_99;
  }

  if ((v2 & 0x100) != 0)
  {
    v20 = *(this + 14);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 28);
    }

    else
    {
      v21 = 2;
    }

    LODWORD(v4) = v21 + v4;
    if ((v2 & 0x200) == 0)
    {
LABEL_53:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_54;
      }

LABEL_68:
      v24 = *(this + 16);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 11;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
        v2 = *(this + 28);
      }

      else
      {
        v25 = 2;
      }

      LODWORD(v4) = v25 + v4;
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_74;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  v22 = *(this + 15);
  if ((v22 & 0x80000000) != 0)
  {
    v23 = 11;
  }

  else if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 28);
  }

  else
  {
    v23 = 2;
  }

  LODWORD(v4) = v23 + v4;
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_68;
  }

LABEL_54:
  if ((v2 & 0x800) != 0)
  {
LABEL_74:
    v26 = *(this + 17);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = 11;
    }

    else if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
      v2 = *(this + 28);
    }

    else
    {
      v27 = 2;
    }

    LODWORD(v4) = v27 + v4;
  }

LABEL_80:
  if ((v2 & 0x1000) != 0)
  {
    LODWORD(v4) = v4 + 9;
  }

  if ((v2 & 0x2000) != 0)
  {
    v28 = *(this + 20);
    if ((v28 & 0x80000000) != 0)
    {
      v29 = 11;
    }

    else if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
      v2 = *(this + 28);
    }

    else
    {
      v29 = 2;
    }

    LODWORD(v4) = v29 + v4;
  }

  if ((v2 & 0x4000) != 0)
  {
    v30 = *(this + 21);
    if ((v30 & 0x80000000) != 0)
    {
      v31 = 11;
    }

    else if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
      v2 = *(this + 28);
    }

    else
    {
      v31 = 2;
    }

    LODWORD(v4) = v31 + v4;
  }

  if ((v2 & 0x8000) != 0)
  {
    v4 = (v4 + 10);
  }

  else
  {
    v4 = v4;
  }

LABEL_99:
  if ((v2 & 0xFF0000) != 0)
  {
    v4 = (v2 & 0x10000) != 0 ? (v4 + 10) : v4;
    if ((v2 & 0x20000) != 0)
    {
      v32 = *(this + 26);
      if (v32 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      }

      else
      {
        v33 = 3;
      }

      v4 = (v33 + v4);
    }
  }

  *(this + 27) = v4;
  return v4;
}

void awd::metrics::LocationEmergencyPOIStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationEmergencyPOIStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationEmergencyPOIStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationEmergencyPOIStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationEmergencyPOIStatistics::CopyFrom(awd::metrics::LocationEmergencyPOIStatistics *this, const awd::metrics::LocationEmergencyPOIStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationEmergencyPOIStatistics::MergeFrom(this, a2);
  }
}

double awd::metrics::LocationEmergencyPOIStatistics::Swap(awd::metrics::LocationEmergencyPOIStatistics *this, awd::metrics::LocationEmergencyPOIStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
    v7 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v7;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    v8 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
    result = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = result;
    LODWORD(v2) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v2;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_ChargingTypeHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_ChargingTypeHistogram *awd::metrics::LocationAccessory_ChargingTypeHistogram::LocationAccessory_ChargingTypeHistogram(awd::metrics::LocationAccessory_ChargingTypeHistogram *this, const awd::metrics::LocationAccessory_ChargingTypeHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50B50;
  awd::metrics::LocationAccessory_ChargingTypeHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_ChargingTypeHistogram::MergeFrom(awd::metrics::LocationAccessory_ChargingTypeHistogram *this, const awd::metrics::LocationAccessory_ChargingTypeHistogram *a2)
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
        awd::metrics::LocationAccessory_ChargingTypeHistogram::MergeFrom();
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

void sub_296461868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_ChargingTypeHistogram::~LocationAccessory_ChargingTypeHistogram(awd::metrics::LocationAccessory_ChargingTypeHistogram *this)
{
  *this = &unk_2A1D50B50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50B50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50B50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_ChargingTypeHistogram::default_instance(awd::metrics::LocationAccessory_ChargingTypeHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_ChargingTypeHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_ChargingTypeHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_ChargingTypeHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_ChargingTypeHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_ChargingTypeHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_ChargingTypeHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::LocationAccessory_ChargingTypeHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::LocationAccessory_ChargingTypeHistogram::ByteSize(awd::metrics::LocationAccessory_ChargingTypeHistogram *this)
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

void awd::metrics::LocationAccessory_ChargingTypeHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_ChargingTypeHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_ChargingTypeHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_ChargingTypeHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_ChargingTypeHistogram::CopyFrom(awd::metrics::LocationAccessory_ChargingTypeHistogram *this, const awd::metrics::LocationAccessory_ChargingTypeHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_ChargingTypeHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_ChargingTypeHistogram *awd::metrics::LocationAccessory_ChargingTypeHistogram::Swap(awd::metrics::LocationAccessory_ChargingTypeHistogram *this, awd::metrics::LocationAccessory_ChargingTypeHistogram *a2)
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

uint64_t awd::metrics::LocationAccessory_DeviceChargingStats::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

awd::metrics::LocationAccessory_DeviceChargingStats *awd::metrics::LocationAccessory_DeviceChargingStats::LocationAccessory_DeviceChargingStats(awd::metrics::LocationAccessory_DeviceChargingStats *this, const awd::metrics::LocationAccessory_DeviceChargingStats *a2)
{
  *(this + 1) = 0;
  *this = &unk_2A1D50BC8;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  awd::metrics::LocationAccessory_DeviceChargingStats::MergeFrom(this, a2);
  return this;
}

void sub_296461E4C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_DeviceChargingStats::MergeFrom(awd::metrics::LocationAccessory_DeviceChargingStats *this, const awd::metrics::LocationAccessory_DeviceChargingStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>((this + 8), a2 + 8);
  if (*(a2 + 40))
  {
    v4 = *(a2 + 8);
    *(this + 10) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_296461F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_DeviceChargingStats::~LocationAccessory_DeviceChargingStats(awd::metrics::LocationAccessory_DeviceChargingStats *this)
{
  *this = &unk_2A1D50BC8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory_DeviceChargingStats::~LocationAccessory_DeviceChargingStats(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_DeviceChargingStats::default_instance(awd::metrics::LocationAccessory_DeviceChargingStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_DeviceChargingStats::default_instance_;
  if (!awd::metrics::LocationAccessory_DeviceChargingStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_DeviceChargingStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_DeviceChargingStats::Clear(awd::metrics::LocationAccessory_DeviceChargingStats *this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_ChargingTypeHistogram>::TypeHandler>(this + 8);
  *(this + 10) = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory_DeviceChargingStats::MergePartialFromCodedStream(awd::metrics::LocationAccessory_DeviceChargingStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v7 >= v8 || (v9 = *v7, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 8) = v9;
        v10 = v7 + 1;
        *(a2 + 1) = v10;
      }

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
          v23 = 0;
          v16 = *(a2 + 1);
          if (v16 >= *(a2 + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
            {
              return 0;
            }
          }

          else
          {
            v23 = *v16;
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
          if (!awd::metrics::LocationAccessory_ChargingTypeHistogram::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
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

uint64_t awd::metrics::LocationAccessory_DeviceChargingStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 32), a2, a4);
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

uint64_t awd::metrics::LocationAccessory_DeviceChargingStats::ByteSize(awd::metrics::LocationAccessory_DeviceChargingStats *this)
{
  if (*(this + 40))
  {
    v3 = *(this + 8);
    if (v3 >= 0x80)
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
      v7 = awd::metrics::LocationAccessory_ChargingTypeHistogram::ByteSize(*(*(this + 1) + 8 * v6));
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

void awd::metrics::LocationAccessory_DeviceChargingStats::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_DeviceChargingStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_DeviceChargingStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_DeviceChargingStats::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_DeviceChargingStats::CopyFrom(awd::metrics::LocationAccessory_DeviceChargingStats *this, const awd::metrics::LocationAccessory_DeviceChargingStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_DeviceChargingStats::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_DeviceChargingStats *awd::metrics::LocationAccessory_DeviceChargingStats::Swap(awd::metrics::LocationAccessory_DeviceChargingStats *this, awd::metrics::LocationAccessory_DeviceChargingStats *a2)
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

double awd::metrics::LocationAccessory_Statistics::SharedCtor(awd::metrics::LocationAccessory_Statistics *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationAccessory_Statistics *awd::metrics::LocationAccessory_Statistics::LocationAccessory_Statistics(awd::metrics::LocationAccessory_Statistics *this, const awd::metrics::LocationAccessory_Statistics *a2)
{
  *this = &unk_2A1D50C40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::LocationAccessory_Statistics::MergeFrom(this, a2);
  return this;
}

float awd::metrics::LocationAccessory_Statistics::MergeFrom(awd::metrics::LocationAccessory_Statistics *this, const awd::metrics::LocationAccessory_Statistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 2);
      *(this + 9) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 9) |= 2u;
    *(this + 3) = result;
    v5 = *(a2 + 9);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = *(a2 + 4);
    *(this + 9) |= 4u;
    *(this + 4) = result;
    v5 = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 5);
    *(this + 9) |= 8u;
    *(this + 5) = result;
    v5 = *(a2 + 9);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_16:
    result = *(a2 + 6);
    *(this + 9) |= 0x10u;
    *(this + 6) = result;
    if ((*(a2 + 9) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    v6 = *(a2 + 7);
    *(this + 9) |= 0x20u;
    *(this + 7) = v6;
  }

  return result;
}

void sub_296462794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_Statistics::~LocationAccessory_Statistics(awd::metrics::LocationAccessory_Statistics *this)
{
  *this = &unk_2A1D50C40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50C40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50C40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_Statistics::default_instance(awd::metrics::LocationAccessory_Statistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_Statistics::default_instance_;
  if (!awd::metrics::LocationAccessory_Statistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_Statistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_Statistics::Clear(uint64_t this)
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

uint64_t awd::metrics::LocationAccessory_Statistics::MergePartialFromCodedStream(awd::metrics::LocationAccessory_Statistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if (v7 == 5)
            {
              goto LABEL_33;
            }
          }

          else if (v6 == 5)
          {
            if (v7 == 5)
            {
              goto LABEL_41;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_45;
          }

          goto LABEL_38;
        }

        if (v6 != 1)
        {
          break;
        }

        if (v7 != 5)
        {
          goto LABEL_38;
        }

        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v18;
        *(this + 9) |= 1u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 21)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_25;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 5)
      {
        goto LABEL_38;
      }

LABEL_25:
      v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
      {
        return 0;
      }

      *(this + 3) = v18;
      *(this + 9) |= 2u;
      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 29)
      {
        *(a2 + 1) = v11 + 1;
LABEL_29:
        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v18;
        *(this + 9) |= 4u;
        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 37)
        {
          *(a2 + 1) = v12 + 1;
LABEL_33:
          v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v18;
          *(this + 9) |= 8u;
          v13 = *(a2 + 1);
          if (v13 < *(a2 + 2) && *v13 == 45)
          {
            *(a2 + 1) = v13 + 1;
LABEL_41:
            v18 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = v18;
            *(this + 9) |= 0x10u;
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v14 < v8 && *v14 == 48)
            {
              v9 = v14 + 1;
              *(a2 + 1) = v9;
LABEL_45:
              if (v9 >= v8 || (v15 = *v9, v15 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v16 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v15;
                v16 = v9 + 1;
                *(a2 + 1) = v16;
              }

              *(this + 9) |= 0x20u;
              if (v16 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 3 && v7 == 5)
    {
      goto LABEL_29;
    }

LABEL_38:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::LocationAccessory_Statistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 36);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 24), a3);
    if ((*(v5 + 36) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
  v6 = *(v5 + 36);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t awd::metrics::LocationAccessory_Statistics::ByteSize(awd::metrics::LocationAccessory_Statistics *this)
{
  v2 = *(this + 36);
  if (*(this + 36))
  {
    v3 = (v2 << 31 >> 31) & 5;
    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x20) != 0)
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

float awd::metrics::LocationAccessory_Statistics::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_Statistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_Statistics::CheckTypeAndMergeFrom();
  }

  return awd::metrics::LocationAccessory_Statistics::MergeFrom(this, lpsrc);
}

float awd::metrics::LocationAccessory_Statistics::CopyFrom(awd::metrics::LocationAccessory_Statistics *this, const awd::metrics::LocationAccessory_Statistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::LocationAccessory_Statistics::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::LocationAccessory_Statistics::Swap(awd::metrics::LocationAccessory_Statistics *this, awd::metrics::LocationAccessory_Statistics *a2)
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
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PerfRangeHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_PerfRangeHistogram *awd::metrics::LocationAccessory_PerfRangeHistogram::LocationAccessory_PerfRangeHistogram(awd::metrics::LocationAccessory_PerfRangeHistogram *this, const awd::metrics::LocationAccessory_PerfRangeHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50CB8;
  awd::metrics::LocationAccessory_PerfRangeHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_PerfRangeHistogram::MergeFrom(awd::metrics::LocationAccessory_PerfRangeHistogram *this, const awd::metrics::LocationAccessory_PerfRangeHistogram *a2)
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
      if (v5 >= 0xD)
      {
        awd::metrics::LocationAccessory_PerfRangeHistogram::MergeFrom();
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

void sub_296463024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PerfRangeHistogram::~LocationAccessory_PerfRangeHistogram(awd::metrics::LocationAccessory_PerfRangeHistogram *this)
{
  *this = &unk_2A1D50CB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50CB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50CB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_PerfRangeHistogram::default_instance(awd::metrics::LocationAccessory_PerfRangeHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PerfRangeHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_PerfRangeHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PerfRangeHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PerfRangeHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_PerfRangeHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PerfRangeHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 <= 0xC)
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

uint64_t awd::metrics::LocationAccessory_PerfRangeHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::LocationAccessory_PerfRangeHistogram::ByteSize(awd::metrics::LocationAccessory_PerfRangeHistogram *this)
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

void awd::metrics::LocationAccessory_PerfRangeHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PerfRangeHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_PerfRangeHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PerfRangeHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PerfRangeHistogram::CopyFrom(awd::metrics::LocationAccessory_PerfRangeHistogram *this, const awd::metrics::LocationAccessory_PerfRangeHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PerfRangeHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PerfRangeHistogram *awd::metrics::LocationAccessory_PerfRangeHistogram::Swap(awd::metrics::LocationAccessory_PerfRangeHistogram *this, awd::metrics::LocationAccessory_PerfRangeHistogram *a2)
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

uint64_t awd::metrics::LocationAccessory_PerformanceStats::SharedCtor(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  return this;
}

awd::metrics::LocationAccessory_PerformanceStats *awd::metrics::LocationAccessory_PerformanceStats::LocationAccessory_PerformanceStats(awd::metrics::LocationAccessory_PerformanceStats *this, const awd::metrics::LocationAccessory_PerformanceStats *a2)
{
  *this = &unk_2A1D50D30;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(this, a2);
  return this;
}

void sub_296463638(_Unwind_Exception *a1)
{
  v5 = v4;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(v5);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(awd::metrics::LocationAccessory_PerformanceStats *this, const awd::metrics::LocationAccessory_PerformanceStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>((this + 32), a2 + 32);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>((this + 56), a2 + 56);
  v4 = *(a2 + 24);
  if ((v4 & 0x7F8) != 0)
  {
    if ((v4 & 8) != 0)
    {
      *(this + 24) |= 8u;
      v5 = *(this + 10);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 10);
      if (!v6)
      {
        v6 = *(awd::metrics::LocationAccessory_PerformanceStats::default_instance_ + 80);
      }

      awd::metrics::LocationAccessory_Statistics::MergeFrom(v5, v6);
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x10) != 0)
    {
      v7 = *(a2 + 22);
      *(this + 24) |= 0x10u;
      *(this + 22) = v7;
    }
  }
}

void sub_2964637A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_PerformanceStats::~LocationAccessory_PerformanceStats(awd::metrics::LocationAccessory_PerformanceStats *this)
{
  *this = &unk_2A1D50D30;
  if (awd::metrics::LocationAccessory_PerformanceStats::default_instance_ != this)
  {
    v2 = *(this + 10);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 7);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory_PerformanceStats::~LocationAccessory_PerformanceStats(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationAccessory_PerformanceStats::SharedDtor(void *this)
{
  if (awd::metrics::LocationAccessory_PerformanceStats::default_instance_ != this)
  {
    this = this[10];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PerformanceStats::default_instance(awd::metrics::LocationAccessory_PerformanceStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_PerformanceStats::default_instance_;
  if (!awd::metrics::LocationAccessory_PerformanceStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_PerformanceStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_PerformanceStats::Clear(awd::metrics::LocationAccessory_PerformanceStats *this)
{
  v2 = *(this + 24);
  if ((v2 & 0x7F8) != 0)
  {
    if ((v2 & 8) != 0)
    {
      v3 = *(this + 10);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }

    *(this + 22) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 32);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_PerfRangeHistogram>::TypeHandler>(this + 56);
  *(this + 24) = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory_PerformanceStats::MergePartialFromCodedStream(awd::metrics::LocationAccessory_PerformanceStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
              goto LABEL_21;
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
              v52 = 0;
              v14 = *(a2 + 1);
              if (v14 >= *(a2 + 2) || *v14 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
                {
                  return 0;
                }
              }

              else
              {
                v52 = *v14;
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
              if (!awd::metrics::LocationAccessory_PerfRangeHistogram::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
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

                goto LABEL_42;
              }

              *(a2 + 1) = v20 + 1;
            }
          }

          else
          {
            if (v6 != 2 || v7 != 2)
            {
              goto LABEL_21;
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
              v52 = 0;
              v26 = *(a2 + 1);
              if (v26 >= *(a2 + 2) || *v26 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
                {
                  return 0;
                }
              }

              else
              {
                v52 = *v26;
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
              if (!awd::metrics::LocationAccessory_PerfRangeHistogram::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
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

                goto LABEL_60;
              }

LABEL_42:
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
          goto LABEL_21;
        }

        while (1)
        {
          v32 = *(this + 17);
          v33 = *(this + 16);
          if (v33 >= v32)
          {
            if (v32 == *(this + 18))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
              v32 = *(this + 17);
            }

            *(this + 17) = v32 + 1;
            operator new();
          }

          v34 = *(this + 7);
          *(this + 16) = v33 + 1;
          v35 = *(v34 + 8 * v33);
          v52 = 0;
          v36 = *(a2 + 1);
          if (v36 >= *(a2 + 2) || *v36 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
            {
              return 0;
            }
          }

          else
          {
            v52 = *v36;
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
          if (!awd::metrics::LocationAccessory_PerfRangeHistogram::MergePartialFromCodedStream(v35, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v39 = *(a2 + 14);
          v18 = __OFSUB__(v39, 1);
          v40 = v39 - 1;
          if (v40 < 0 == v18)
          {
            *(a2 + 14) = v40;
          }

          v20 = *(a2 + 1);
          if (v20 >= *(a2 + 2))
          {
            break;
          }

          v41 = *v20;
          if (v41 != 26)
          {
            if (v41 != 34)
            {
              goto LABEL_1;
            }

            *(a2 + 1) = v20 + 1;
            goto LABEL_79;
          }

LABEL_60:
          *(a2 + 1) = v20 + 1;
        }
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_21;
      }

LABEL_79:
      *(this + 24) |= 8u;
      v42 = *(this + 10);
      if (!v42)
      {
        operator new();
      }

      v52 = 0;
      v43 = *(a2 + 1);
      if (v43 >= *(a2 + 2) || *v43 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
        {
          return 0;
        }
      }

      else
      {
        v52 = *v43;
        *(a2 + 1) = v43 + 1;
      }

      v44 = *(a2 + 14);
      v45 = *(a2 + 15);
      *(a2 + 14) = v44 + 1;
      if (v44 >= v45)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!awd::metrics::LocationAccessory_Statistics::MergePartialFromCodedStream(v42, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v46 = *(a2 + 14);
      v18 = __OFSUB__(v46, 1);
      v47 = v46 - 1;
      if (v47 < 0 == v18)
      {
        *(a2 + 14) = v47;
      }

      v48 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v48 < v8 && *v48 == 40)
      {
        v9 = v48 + 1;
        *(a2 + 1) = v9;
LABEL_93:
        if (v9 >= v8 || (v49 = *v9, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v49;
          v50 = v9 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 24) |= 0x10u;
        if (v50 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_93;
    }

LABEL_21:
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

uint64_t awd::metrics::LocationAccessory_PerformanceStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 56) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  v9 = *(v5 + 96);
  if ((v9 & 8) != 0)
  {
    v10 = *(v5 + 80);
    if (!v10)
    {
      v10 = *(awd::metrics::LocationAccessory_PerformanceStats::default_instance_ + 80);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
    v9 = *(v5 + 96);
  }

  if ((v9 & 0x10) != 0)
  {
    v11 = *(v5 + 88);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v11, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_PerformanceStats::ByteSize(awd::metrics::LocationAccessory_PerformanceStats *this)
{
  v2 = *(this + 24);
  if ((v2 & 0x7F8) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((v2 & 8) == 0)
  {
    v3 = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(this + 10);
  if (!v4)
  {
    v4 = *(awd::metrics::LocationAccessory_PerformanceStats::default_instance_ + 80);
  }

  v5 = awd::metrics::LocationAccessory_Statistics::ByteSize(v4);
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
  if ((*(this + 24) & 0x10) != 0)
  {
LABEL_12:
    v8 = *(this + 22);
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
      v13 = awd::metrics::LocationAccessory_PerfRangeHistogram::ByteSize(*(*(this + 1) + 8 * v12));
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
  v17 = v16 + v11;
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = awd::metrics::LocationAccessory_PerfRangeHistogram::ByteSize(*(*(this + 4) + 8 * v18));
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v17 += v20 + v21;
      ++v18;
    }

    while (v18 < *(this + 10));
  }

  v22 = *(this + 16);
  v23 = (v22 + v17);
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = awd::metrics::LocationAccessory_PerfRangeHistogram::ByteSize(*(*(this + 7) + 8 * v24));
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      }

      else
      {
        v27 = 1;
      }

      v23 = (v26 + v23 + v27);
      ++v24;
    }

    while (v24 < *(this + 16));
  }

  *(this + 23) = v23;
  return v23;
}

void awd::metrics::LocationAccessory_PerformanceStats::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_PerformanceStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_PerformanceStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_PerformanceStats::CopyFrom(awd::metrics::LocationAccessory_PerformanceStats *this, const awd::metrics::LocationAccessory_PerformanceStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_PerformanceStats::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_PerformanceStats *awd::metrics::LocationAccessory_PerformanceStats::Swap(awd::metrics::LocationAccessory_PerformanceStats *this, awd::metrics::LocationAccessory_PerformanceStats *a2)
{
  if (a2 != this)
  {
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(v3 + 22);
    *(v3 + 22) = *(a2 + 22);
    *(a2 + 22) = v4;
    LODWORD(v4) = *(v3 + 24);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 24) = v4;
    LODWORD(v4) = *(v3 + 23);
    *(v3 + 23) = *(a2 + 23);
    *(a2 + 23) = v4;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::LocationAccessory_SpeedPerfRangeHistogram(awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *this, const awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50DA8;
  awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::MergeFrom(awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *this, const awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *a2)
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
      if (v5 >= 0xF)
      {
        awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::MergeFrom();
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

void sub_296464630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::~LocationAccessory_SpeedPerfRangeHistogram(awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *this)
{
  *this = &unk_2A1D50DA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50DA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50DA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::default_instance(awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 <= 0xE)
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

uint64_t awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::ByteSize(awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *this)
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

void awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::CopyFrom(awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *this, const awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::Swap(awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *this, awd::metrics::LocationAccessory_SpeedPerfRangeHistogram *a2)
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

uint64_t awd::metrics::LocationAccessory_SpeedPerformanceStats::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

awd::metrics::LocationAccessory_SpeedPerformanceStats *awd::metrics::LocationAccessory_SpeedPerformanceStats::LocationAccessory_SpeedPerformanceStats(awd::metrics::LocationAccessory_SpeedPerformanceStats *this, const awd::metrics::LocationAccessory_SpeedPerformanceStats *a2)
{
  *this = &unk_2A1D50E20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  awd::metrics::LocationAccessory_SpeedPerformanceStats::MergeFrom(this, a2);
  return this;
}

void sub_296464C2C(_Unwind_Exception *a1)
{
  v4 = v3;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(v4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_SpeedPerformanceStats::MergeFrom(awd::metrics::LocationAccessory_SpeedPerformanceStats *this, const awd::metrics::LocationAccessory_SpeedPerformanceStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>((this + 8), a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>((this + 32), a2 + 32);
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
        v6 = *(awd::metrics::LocationAccessory_SpeedPerformanceStats::default_instance_ + 56);
      }

      awd::metrics::LocationAccessory_Statistics::MergeFrom(v5, v6);
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

void sub_296464D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_SpeedPerformanceStats::~LocationAccessory_SpeedPerformanceStats(awd::metrics::LocationAccessory_SpeedPerformanceStats *this)
{
  *this = &unk_2A1D50E20;
  if (awd::metrics::LocationAccessory_SpeedPerformanceStats::default_instance_ != this)
  {
    v2 = *(this + 7);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory_SpeedPerformanceStats::~LocationAccessory_SpeedPerformanceStats(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationAccessory_SpeedPerformanceStats::SharedDtor(void *this)
{
  if (awd::metrics::LocationAccessory_SpeedPerformanceStats::default_instance_ != this)
  {
    this = this[7];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_SpeedPerformanceStats::default_instance(awd::metrics::LocationAccessory_SpeedPerformanceStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_SpeedPerformanceStats::default_instance_;
  if (!awd::metrics::LocationAccessory_SpeedPerformanceStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_SpeedPerformanceStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_SpeedPerformanceStats::Clear(awd::metrics::LocationAccessory_SpeedPerformanceStats *this)
{
  v2 = *(this + 18);
  if ((v2 & 0x3FC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 7);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }

    *(this + 16) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(this + 8);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_SpeedPerfRangeHistogram>::TypeHandler>(this + 32);
  *(this + 18) = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory_SpeedPerformanceStats::MergePartialFromCodedStream(awd::metrics::LocationAccessory_SpeedPerformanceStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            if (!awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
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
            if (!awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
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
      if (!awd::metrics::LocationAccessory_Statistics::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
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

uint64_t awd::metrics::LocationAccessory_SpeedPerformanceStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v9 = *(awd::metrics::LocationAccessory_SpeedPerformanceStats::default_instance_ + 56);
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

uint64_t awd::metrics::LocationAccessory_SpeedPerformanceStats::ByteSize(awd::metrics::LocationAccessory_SpeedPerformanceStats *this)
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
    v4 = *(awd::metrics::LocationAccessory_SpeedPerformanceStats::default_instance_ + 56);
  }

  v5 = awd::metrics::LocationAccessory_Statistics::ByteSize(v4);
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
      v13 = awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::ByteSize(*(*(this + 1) + 8 * v12));
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
      v19 = awd::metrics::LocationAccessory_SpeedPerfRangeHistogram::ByteSize(*(*(this + 4) + 8 * v18));
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

void awd::metrics::LocationAccessory_SpeedPerformanceStats::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_SpeedPerformanceStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_SpeedPerformanceStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_SpeedPerformanceStats::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_SpeedPerformanceStats::CopyFrom(awd::metrics::LocationAccessory_SpeedPerformanceStats *this, const awd::metrics::LocationAccessory_SpeedPerformanceStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_SpeedPerformanceStats::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_SpeedPerformanceStats *awd::metrics::LocationAccessory_SpeedPerformanceStats::Swap(awd::metrics::LocationAccessory_SpeedPerformanceStats *this, awd::metrics::LocationAccessory_SpeedPerformanceStats *a2)
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

uint64_t awd::metrics::LocationAccessory_LatencyRangeHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_LatencyRangeHistogram *awd::metrics::LocationAccessory_LatencyRangeHistogram::LocationAccessory_LatencyRangeHistogram(awd::metrics::LocationAccessory_LatencyRangeHistogram *this, const awd::metrics::LocationAccessory_LatencyRangeHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50E98;
  awd::metrics::LocationAccessory_LatencyRangeHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_LatencyRangeHistogram::MergeFrom(awd::metrics::LocationAccessory_LatencyRangeHistogram *this, const awd::metrics::LocationAccessory_LatencyRangeHistogram *a2)
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
      if (v5 >= 6)
      {
        awd::metrics::LocationAccessory_LatencyRangeHistogram::MergeFrom();
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

void sub_296465A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_LatencyRangeHistogram::~LocationAccessory_LatencyRangeHistogram(awd::metrics::LocationAccessory_LatencyRangeHistogram *this)
{
  *this = &unk_2A1D50E98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50E98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50E98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_LatencyRangeHistogram::default_instance(awd::metrics::LocationAccessory_LatencyRangeHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_LatencyRangeHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_LatencyRangeHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_LatencyRangeHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_LatencyRangeHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_LatencyRangeHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_LatencyRangeHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 <= 5)
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

uint64_t awd::metrics::LocationAccessory_LatencyRangeHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::LocationAccessory_LatencyRangeHistogram::ByteSize(awd::metrics::LocationAccessory_LatencyRangeHistogram *this)
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

void awd::metrics::LocationAccessory_LatencyRangeHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_LatencyRangeHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_LatencyRangeHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_LatencyRangeHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_LatencyRangeHistogram::CopyFrom(awd::metrics::LocationAccessory_LatencyRangeHistogram *this, const awd::metrics::LocationAccessory_LatencyRangeHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_LatencyRangeHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationAccessory_LatencyRangeHistogram *awd::metrics::LocationAccessory_LatencyRangeHistogram::Swap(awd::metrics::LocationAccessory_LatencyRangeHistogram *this, awd::metrics::LocationAccessory_LatencyRangeHistogram *a2)
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

uint64_t awd::metrics::LocationAccessory_MessageHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationAccessory_MessageHistogram *awd::metrics::LocationAccessory_MessageHistogram::LocationAccessory_MessageHistogram(awd::metrics::LocationAccessory_MessageHistogram *this, const awd::metrics::LocationAccessory_MessageHistogram *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D50F10;
  *(this + 1) = v3;
  *(this + 2) = 0;
  *(this + 6) = 0;
  awd::metrics::LocationAccessory_MessageHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_MessageHistogram::MergeFrom(awd::metrics::LocationAccessory_MessageHistogram *this, const awd::metrics::LocationAccessory_MessageHistogram *a2)
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

void sub_2964660E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_MessageHistogram::~LocationAccessory_MessageHistogram(awd::metrics::LocationAccessory_MessageHistogram *this)
{
  *this = &unk_2A1D50F10;
  awd::metrics::LocationAccessory_MessageHistogram::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50F10;
  awd::metrics::LocationAccessory_MessageHistogram::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50F10;
  awd::metrics::LocationAccessory_MessageHistogram::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_MessageHistogram::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationAccessory_MessageHistogram::default_instance(awd::metrics::LocationAccessory_MessageHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_MessageHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_MessageHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_MessageHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_MessageHistogram::Clear(uint64_t this)
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

uint64_t awd::metrics::LocationAccessory_MessageHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_MessageHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::LocationAccessory_MessageHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::LocationAccessory_MessageHistogram::ByteSize(awd::metrics::LocationAccessory_MessageHistogram *this)
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

void awd::metrics::LocationAccessory_MessageHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_MessageHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_MessageHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_MessageHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_MessageHistogram::CopyFrom(awd::metrics::LocationAccessory_MessageHistogram *this, const awd::metrics::LocationAccessory_MessageHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_MessageHistogram::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationAccessory_MessageHistogram::Swap(uint64_t this, awd::metrics::LocationAccessory_MessageHistogram *a2)
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

void *awd::metrics::LocationAccessory_MessageStats::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[6] = 0;
  this[7] = 0;
  return this;
}

awd::metrics::LocationAccessory_MessageStats *awd::metrics::LocationAccessory_MessageStats::LocationAccessory_MessageStats(awd::metrics::LocationAccessory_MessageStats *this, const awd::metrics::LocationAccessory_MessageStats *a2)
{
  *this = &unk_2A1D50F88;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::LocationAccessory_MessageStats::MergeFrom(this, a2);
  return this;
}

void sub_296466818(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LatencyRangeHistogram>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float awd::metrics::LocationAccessory_MessageStats::MergeFrom(awd::metrics::LocationAccessory_MessageStats *this, const awd::metrics::LocationAccessory_MessageStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LatencyRangeHistogram>::TypeHandler>((this + 24), a2 + 24);
  LOBYTE(v5) = *(a2 + 60);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 60) & 1) == 0)
  {
    if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v7 = *(a2 + 3);
    *(this + 15) |= 2u;
    *(this + 3) = v7;
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v6 = *(a2 + 2);
  *(this + 15) |= 1u;
  *(this + 2) = v6;
  v5 = *(a2 + 15);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  *(this + 15) |= 4u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(awd::metrics::LocationAccessory_MessageStats::default_instance_ + 16);
  }

  result = awd::metrics::LocationAccessory_Statistics::MergeFrom(v8, v9);
  if ((*(a2 + 15) & 0x10) != 0)
  {
LABEL_16:
    *(this + 15) |= 0x10u;
    v10 = *(this + 6);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 6);
    if (!v11)
    {
      v11 = *(awd::metrics::LocationAccessory_MessageStats::default_instance_ + 48);
    }

    return awd::metrics::LocationAccessory_Statistics::MergeFrom(v10, v11);
  }

  return result;
}

void sub_2964669F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_MessageStats::~LocationAccessory_MessageStats(awd::metrics::LocationAccessory_MessageStats *this)
{
  *this = &unk_2A1D50F88;
  v2 = (this + 24);
  awd::metrics::LocationAccessory_MessageStats::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LatencyRangeHistogram>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationAccessory_MessageStats::~LocationAccessory_MessageStats(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationAccessory_MessageStats::SharedDtor(void *this)
{
  if (awd::metrics::LocationAccessory_MessageStats::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[6];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_MessageStats::default_instance(awd::metrics::LocationAccessory_MessageStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_MessageStats::default_instance_;
  if (!awd::metrics::LocationAccessory_MessageStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_MessageStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_MessageStats::Clear(awd::metrics::LocationAccessory_MessageStats *this)
{
  LOBYTE(v2) = *(this + 60);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 2);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 15);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(this + 6);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
      }
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationAccessory_LatencyRangeHistogram>::TypeHandler>(this + 24);
  *(this + 15) = 0;
  return result;
}

uint64_t awd::metrics::LocationAccessory_MessageStats::MergePartialFromCodedStream(awd::metrics::LocationAccessory_MessageStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v6 != 1)
      {
        if (v6 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_32;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 15) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_32:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v15;
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        v10 = *(this + 15) | 2;
        *(this + 15) = v10;
        if (v16 < v8 && *v16 == 26)
        {
          *(a2 + 1) = v16 + 1;
LABEL_40:
          *(this + 15) = v10 | 4;
          v17 = *(this + 2);
          if (!v17)
          {
            operator new();
          }

          v41 = 0;
          v18 = *(a2 + 1);
          if (v18 >= *(a2 + 2) || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
            {
              return 0;
            }
          }

          else
          {
            v41 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v19 = *(a2 + 14);
          v20 = *(a2 + 15);
          *(a2 + 14) = v19 + 1;
          if (v19 >= v20)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationAccessory_Statistics::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v21 = *(a2 + 14);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v23 < 0 == v22)
          {
            *(a2 + 14) = v23;
          }

          v24 = *(a2 + 1);
          if (v24 < *(a2 + 2) && *v24 == 34)
          {
            while (1)
            {
              *(a2 + 1) = v24 + 1;
LABEL_54:
              v25 = *(this + 9);
              v26 = *(this + 8);
              if (v26 >= v25)
              {
                if (v25 == *(this + 10))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                  v25 = *(this + 9);
                }

                *(this + 9) = v25 + 1;
                operator new();
              }

              v27 = *(this + 3);
              *(this + 8) = v26 + 1;
              v28 = *(v27 + 8 * v26);
              v42 = 0;
              v29 = *(a2 + 1);
              if (v29 >= *(a2 + 2) || *v29 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
                {
                  return 0;
                }
              }

              else
              {
                v42 = *v29;
                *(a2 + 1) = v29 + 1;
              }

              v30 = *(a2 + 14);
              v31 = *(a2 + 15);
              *(a2 + 14) = v30 + 1;
              if (v30 >= v31)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::metrics::LocationAccessory_LatencyRangeHistogram::MergePartialFromCodedStream(v28, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v32 = *(a2 + 14);
              v22 = __OFSUB__(v32, 1);
              v33 = v32 - 1;
              if (v33 < 0 == v22)
              {
                *(a2 + 14) = v33;
              }

              v24 = *(a2 + 1);
              if (v24 >= *(a2 + 2))
              {
                break;
              }

              v34 = *v24;
              if (v34 != 34)
              {
                if (v34 == 42)
                {
                  *(a2 + 1) = v24 + 1;
LABEL_72:
                  *(this + 15) |= 0x10u;
                  v35 = *(this + 6);
                  if (!v35)
                  {
                    operator new();
                  }

                  v43 = 0;
                  v36 = *(a2 + 1);
                  if (v36 >= *(a2 + 2) || *v36 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v43 = *v36;
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
                  if (!awd::metrics::LocationAccessory_Statistics::MergePartialFromCodedStream(v35, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v39 = *(a2 + 14);
                  v22 = __OFSUB__(v39, 1);
                  v40 = v39 - 1;
                  if (v40 < 0 == v22)
                  {
                    *(a2 + 14) = v40;
                  }

                  if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
                  }
                }

                goto LABEL_1;
              }
            }
          }
        }
      }
    }

    if (v6 == 3)
    {
      if (v7 != 2)
      {
        goto LABEL_21;
      }

      v10 = *(this + 15);
      goto LABEL_40;
    }

    if (v6 == 4)
    {
      if (v7 != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_54;
    }

    if (v6 == 5 && v7 == 2)
    {
      goto LABEL_72;
    }

LABEL_21:
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

uint64_t awd::metrics::LocationAccessory_MessageStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 60) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(awd::metrics::LocationAccessory_MessageStats::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
LABEL_10:
  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  if ((*(v5 + 60) & 0x10) != 0)
  {
    v9 = *(v5 + 48);
    if (!v9)
    {
      v9 = *(awd::metrics::LocationAccessory_MessageStats::default_instance_ + 48);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_MessageStats::ByteSize(awd::metrics::LocationAccessory_MessageStats *this)
{
  LOBYTE(v2) = *(this + 60);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_29;
  }

  if (*(this + 60))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 15);
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
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  v7 = *(this + 2);
  if (!v7)
  {
    v7 = *(awd::metrics::LocationAccessory_MessageStats::default_instance_ + 16);
  }

  v8 = awd::metrics::LocationAccessory_Statistics::ByteSize(v7);
  v9 = v8;
  if (v8 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
  }

  else
  {
    v10 = 1;
  }

  v3 += v9 + v10 + 1;
  if ((*(this + 15) & 0x10) != 0)
  {
LABEL_23:
    v11 = *(this + 6);
    if (!v11)
    {
      v11 = *(awd::metrics::LocationAccessory_MessageStats::default_instance_ + 48);
    }

    v12 = awd::metrics::LocationAccessory_Statistics::ByteSize(v11);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v3 += v13 + v14 + 1;
  }

LABEL_29:
  v15 = *(this + 8);
  v16 = (v15 + v3);
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = awd::metrics::LocationAccessory_LatencyRangeHistogram::ByteSize(*(*(this + 3) + 8 * v17));
      v19 = v18;
      if (v18 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
      }

      else
      {
        v20 = 1;
      }

      v16 = (v19 + v16 + v20);
      ++v17;
    }

    while (v17 < *(this + 8));
  }

  *(this + 14) = v16;
  return v16;
}

float awd::metrics::LocationAccessory_MessageStats::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_MessageStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_MessageStats::CheckTypeAndMergeFrom();
  }

  return awd::metrics::LocationAccessory_MessageStats::MergeFrom(this, lpsrc);
}

float awd::metrics::LocationAccessory_MessageStats::CopyFrom(awd::metrics::LocationAccessory_MessageStats *this, const awd::metrics::LocationAccessory_MessageStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::LocationAccessory_MessageStats::MergeFrom(this, a2);
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_MessageStats::Swap(uint64_t this, awd::metrics::LocationAccessory_MessageStats *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v7 = *(v3 + 48);
    *(v3 + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    LODWORD(v7) = *(v3 + 60);
    *(v3 + 60) = *(a2 + 15);
    *(a2 + 15) = v7;
    LODWORD(v7) = *(v3 + 56);
    *(v3 + 56) = *(a2 + 14);
    *(a2 + 14) = v7;
  }

  return this;
}

uint64_t awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::LocationAccessory_NMEAScreeningLocTypeHistogram(awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *this, const awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D51000;
  awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::MergeFrom(awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *this, const awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *a2)
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
        awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::MergeFrom();
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

void sub_296467718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::~LocationAccessory_NMEAScreeningLocTypeHistogram(awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *this)
{
  *this = &unk_2A1D51000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D51000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::default_instance(awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::default_instance_;
  if (!awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::MergePartialFromCodedStream(awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::ByteSize(awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *this)
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

void awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::CopyFrom(awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *this, const awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationAccessory_NMEAScreeningLocTypeHistogram::MergeFrom(this, a2);
  }
}