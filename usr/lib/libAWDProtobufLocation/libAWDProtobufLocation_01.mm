uint64_t awd::metrics::LocationMonitorTrigger::ByteSize(awd::metrics::LocationMonitorTrigger *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 16);
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
    v2 = *(this + 16);
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
      v2 = *(this + 16);
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
    v2 = *(this + 16);
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
    v15 = *(this + 8);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v16 = 2;
    }

    v3 += v16;
  }

LABEL_38:
  v4 = ((v2 >> 4) & 2) + v3 + ((v2 >> 5) & 2) + ((v2 >> 6) & 2);
LABEL_39:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v2 & 0x100) != 0)
  {
    v17 = *(this + 10);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
    if ((v2 & 0x200) == 0)
    {
LABEL_42:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_58;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  v19 = *(this + 11);
  if ((v19 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v20 = 2;
  }

  v4 = (v20 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_43:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_64;
  }

LABEL_58:
  v21 = *(this + 12);
  if ((v21 & 0x80000000) != 0)
  {
    v22 = 11;
  }

  else if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v22 = 2;
  }

  v4 = (v22 + v4);
  if ((v2 & 0x800) == 0)
  {
LABEL_44:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

LABEL_64:
  v23 = *(this + 13);
  if ((v23 & 0x80000000) != 0)
  {
    v24 = 11;
  }

  else if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v24 = 2;
  }

  v4 = (v24 + v4);
  if ((v2 & 0x1000) != 0)
  {
LABEL_70:
    v25 = *(this + 14);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    }

    else
    {
      v26 = 2;
    }

    v4 = (v26 + v4);
  }

LABEL_74:
  *(this + 15) = v4;
  return v4;
}

void awd::metrics::LocationMonitorTrigger::CheckTypeAndMergeFrom(awd::metrics::LocationMonitorTrigger *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMonitorTrigger::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMonitorTrigger::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMonitorTrigger::CopyFrom(awd::metrics::LocationMonitorTrigger *this, const awd::metrics::LocationMonitorTrigger *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMonitorTrigger::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMonitorTrigger::Swap(uint64_t this, awd::metrics::LocationMonitorTrigger *a2)
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
    LOBYTE(v2) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v2;
    LOBYTE(v2) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v2;
    LOBYTE(v2) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v2;
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
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
  }

  return this;
}

double awd::metrics::LocationNetworkQueries::SharedCtor(awd::metrics::LocationNetworkQueries *this)
{
  *(this + 9) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

awd::metrics::LocationNetworkQueries *awd::metrics::LocationNetworkQueries::LocationNetworkQueries(awd::metrics::LocationNetworkQueries *this, const awd::metrics::LocationNetworkQueries *a2)
{
  *(this + 9) = 0;
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4EB70;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  awd::metrics::LocationNetworkQueries::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationNetworkQueries::MergeFrom(awd::metrics::LocationNetworkQueries *this, const awd::metrics::LocationNetworkQueries *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 19);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 19) |= 2u;
  v9 = *(this + 2);
  if (v9 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 19);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 6);
  *(this + 19) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 7);
  *(this + 19) |= 8u;
  *(this + 7) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    v13 = *(a2 + 9);
    *(this + 19) |= 0x20u;
    *(this + 9) = v13;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_28:
  v12 = *(a2 + 8);
  *(this + 19) |= 0x10u;
  *(this + 8) = v12;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_30:
  v14 = *(a2 + 10);
  *(this + 19) |= 0x40u;
  *(this + 10) = v14;
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 11);
    *(this + 19) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(a2 + 19);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 12);
    *(this + 19) |= 0x100u;
    *(this + 12) = v15;
    v4 = *(a2 + 19);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 13);
  *(this + 19) |= 0x200u;
  *(this + 13) = v16;
  v4 = *(a2 + 19);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 14);
  *(this + 19) |= 0x400u;
  *(this + 14) = v17;
  v4 = *(a2 + 19);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 15);
  *(this + 19) |= 0x800u;
  *(this + 15) = v18;
  v4 = *(a2 + 19);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_36:
  v19 = *(a2 + 16);
  *(this + 19) |= 0x1000u;
  *(this + 16) = v19;
  if ((*(a2 + 19) & 0x2000) == 0)
  {
    return;
  }

LABEL_20:
  v6 = *(a2 + 17);
  *(this + 19) |= 0x2000u;
  *(this + 17) = v6;
}

void sub_2964068D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationNetworkQueries::~LocationNetworkQueries(awd::metrics::LocationNetworkQueries *this)
{
  *this = &unk_2A1D4EB70;
  awd::metrics::LocationNetworkQueries::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EB70;
  awd::metrics::LocationNetworkQueries::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EB70;
  awd::metrics::LocationNetworkQueries::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationNetworkQueries::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationNetworkQueries::default_instance(awd::metrics::LocationNetworkQueries *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationNetworkQueries::default_instance_;
  if (!awd::metrics::LocationNetworkQueries::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationNetworkQueries::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationNetworkQueries::Clear(uint64_t this)
{
  v1 = *(this + 76);
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
    v1 = *(this + 76);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::LocationNetworkQueries::MergePartialFromCodedStream(awd::metrics::LocationNetworkQueries *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_37;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 < v8)
        {
          v10 = *v9;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
LABEL_43:
            v20 = *(this + 19) | 1;
            *(this + 19) = v20;
            if (v11 < v8 && *v11 == 18)
            {
              *(a2 + 1) = v11 + 1;
              goto LABEL_46;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_43;
        }

        break;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_37;
        }

        v20 = *(this + 19);
LABEL_46:
        *(this + 19) = v20 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v26 >= v12 || *v26 != 24)
        {
          continue;
        }

        v17 = v26 + 1;
        *(a2 + 1) = v17;
LABEL_52:
        v52 = 0;
        if (v17 >= v12 || (v27 = *v17, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v27 = v52;
          v28 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v28 = v17 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 6) = v27;
        *(this + 19) |= 4u;
        if (v28 >= v12 || *v28 != 32)
        {
          continue;
        }

        v18 = v28 + 1;
        *(a2 + 1) = v18;
LABEL_60:
        v52 = 0;
        if (v18 >= v12 || (v29 = *v18, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v29 = v52;
          v30 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v30 = v18 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 7) = v29;
        *(this + 19) |= 8u;
        if (v30 >= v12 || *v30 != 40)
        {
          continue;
        }

        v14 = v30 + 1;
        *(a2 + 1) = v14;
LABEL_68:
        v52 = 0;
        if (v14 >= v12 || (v31 = *v14, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v31 = v52;
          v32 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v32 = v14 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 8) = v31;
        *(this + 19) |= 0x10u;
        if (v32 >= v12 || *v32 != 48)
        {
          continue;
        }

        v21 = v32 + 1;
        *(a2 + 1) = v21;
LABEL_76:
        v52 = 0;
        if (v21 >= v12 || (v33 = *v21, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v33 = v52;
          v34 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v34 = v21 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 9) = v33;
        *(this + 19) |= 0x20u;
        if (v34 >= v12 || *v34 != 56)
        {
          continue;
        }

        v23 = v34 + 1;
        *(a2 + 1) = v23;
LABEL_84:
        v52 = 0;
        if (v23 >= v12 || (v35 = *v23, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v35 = v52;
          v36 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v36 = v23 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 10) = v35;
        *(this + 19) |= 0x40u;
        if (v36 >= v12 || *v36 != 64)
        {
          continue;
        }

        v19 = v36 + 1;
        *(a2 + 1) = v19;
LABEL_92:
        v52 = 0;
        if (v19 >= v12 || (v37 = *v19, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v37 = v52;
          v38 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v38 = v19 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 11) = v37;
        *(this + 19) |= 0x80u;
        if (v38 >= v12 || *v38 != 72)
        {
          continue;
        }

        v25 = v38 + 1;
        *(a2 + 1) = v25;
LABEL_100:
        v52 = 0;
        if (v25 >= v12 || (v39 = *v25, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v39 = v52;
          v40 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v40 = v25 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 12) = v39;
        *(this + 19) |= 0x100u;
        if (v40 >= v12 || *v40 != 80)
        {
          continue;
        }

        v16 = v40 + 1;
        *(a2 + 1) = v16;
LABEL_108:
        v52 = 0;
        if (v16 >= v12 || (v41 = *v16, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v41 = v52;
          v42 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v42 = v16 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 13) = v41;
        *(this + 19) |= 0x200u;
        if (v42 >= v12 || *v42 != 88)
        {
          continue;
        }

        v24 = v42 + 1;
        *(a2 + 1) = v24;
LABEL_116:
        v52 = 0;
        if (v24 >= v12 || (v43 = *v24, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v43 = v52;
          v44 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v44 = v24 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 14) = v43;
        *(this + 19) |= 0x400u;
        if (v44 >= v12 || *v44 != 96)
        {
          continue;
        }

        v13 = v44 + 1;
        *(a2 + 1) = v13;
LABEL_124:
        v52 = 0;
        if (v13 >= v12 || (v45 = *v13, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v45 = v52;
          v46 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v46 = v13 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 15) = v45;
        *(this + 19) |= 0x800u;
        if (v46 >= v12 || *v46 != 104)
        {
          continue;
        }

        v15 = v46 + 1;
        *(a2 + 1) = v15;
LABEL_132:
        v52 = 0;
        if (v15 >= v12 || (v47 = *v15, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v47 = v52;
          v48 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v48 = v15 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 16) = v47;
        *(this + 19) |= 0x1000u;
        if (v48 >= v12 || *v48 != 112)
        {
          continue;
        }

        v22 = v48 + 1;
        *(a2 + 1) = v22;
LABEL_140:
        v52 = 0;
        if (v22 >= v12 || (v49 = *v22, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v49 = v52;
          v50 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v50 = v22 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 17) = v49;
        *(this + 19) |= 0x2000u;
        if (v50 != v12 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_52;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_60;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_68;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v21 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_76;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v23 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_84;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v19 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_92;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_100;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_108;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_116;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_124;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_132;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v22 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_140;
      default:
LABEL_37:
        if (v7 == 4)
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

uint64_t awd::metrics::LocationNetworkQueries::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 56), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 64), a2, a4);
    if ((*(v5 + 76) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 60), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v8 = *(v5 + 68);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, v8, a2, a4);
}

uint64_t awd::metrics::LocationNetworkQueries::ByteSize(awd::metrics::LocationNetworkQueries *this)
{
  v2 = *(this + 19);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_59;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 19);
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
    v2 = *(this + 19);
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
      v2 = *(this + 19);
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
    v2 = *(this + 19);
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
    v2 = *(this + 19);
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
    v2 = *(this + 19);
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
    v2 = *(this + 19);
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
      v2 = *(this + 19);
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
      v2 = *(this + 19);
    }

    else
    {
      v23 = 2;
    }

    v3 = (v23 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_62:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_79;
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
    v2 = *(this + 19);
  }

  else
  {
    v25 = 2;
  }

  v3 = (v25 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_63:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_85;
  }

LABEL_79:
  v26 = *(this + 14);
  if ((v26 & 0x80000000) != 0)
  {
    v27 = 11;
  }

  else if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v27 = 2;
  }

  v3 = (v27 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_64:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_91;
  }

LABEL_85:
  v28 = *(this + 15);
  if ((v28 & 0x80000000) != 0)
  {
    v29 = 11;
  }

  else if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v29 = 2;
  }

  v3 = (v29 + v3);
  if ((v2 & 0x1000) == 0)
  {
LABEL_65:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_97;
  }

LABEL_91:
  v30 = *(this + 16);
  if ((v30 & 0x80000000) != 0)
  {
    v31 = 11;
  }

  else if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v31 = 2;
  }

  v3 = (v31 + v3);
  if ((v2 & 0x2000) != 0)
  {
LABEL_97:
    v32 = *(this + 17);
    if ((v32 & 0x80000000) != 0)
    {
      v33 = 11;
    }

    else if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    }

    else
    {
      v33 = 2;
    }

    v3 = (v33 + v3);
  }

LABEL_103:
  *(this + 18) = v3;
  return v3;
}

void awd::metrics::LocationNetworkQueries::CheckTypeAndMergeFrom(awd::metrics::LocationNetworkQueries *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationNetworkQueries::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationNetworkQueries::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationNetworkQueries::CopyFrom(awd::metrics::LocationNetworkQueries *this, const awd::metrics::LocationNetworkQueries *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationNetworkQueries::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationNetworkQueries::Swap(uint64_t this, awd::metrics::LocationNetworkQueries *a2)
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
    LODWORD(v2) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationWifiUsage::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationWifiUsage *awd::metrics::LocationWifiUsage::LocationWifiUsage(awd::metrics::LocationWifiUsage *this, const awd::metrics::LocationWifiUsage *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4EBE8;
  *(this + 1) = 0;
  *(this + 12) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  awd::metrics::LocationWifiUsage::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationWifiUsage::MergeFrom(awd::metrics::LocationWifiUsage *this, const awd::metrics::LocationWifiUsage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v6 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 12);
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

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 12) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 12);
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
    v9 = *(a2 + 6);
    *(this + 12) |= 4u;
    *(this + 6) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 7);
    *(this + 12) |= 8u;
    *(this + 7) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 8);
    *(this + 12) |= 0x10u;
    *(this + 8) = v11;
    v4 = *(a2 + 12);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_20:
    v12 = *(a2 + 9);
    *(this + 12) |= 0x20u;
    *(this + 9) = v12;
    if ((*(a2 + 12) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 10);
    *(this + 12) |= 0x40u;
    *(this + 10) = v5;
  }
}

void sub_296407C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationWifiUsage::~LocationWifiUsage(awd::metrics::LocationWifiUsage *this)
{
  *this = &unk_2A1D4EBE8;
  awd::metrics::LocationWifiUsage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EBE8;
  awd::metrics::LocationWifiUsage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EBE8;
  awd::metrics::LocationWifiUsage::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationWifiUsage::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationWifiUsage::default_instance(awd::metrics::LocationWifiUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationWifiUsage::default_instance_;
  if (!awd::metrics::LocationWifiUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationWifiUsage::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationWifiUsage::Clear(uint64_t this)
{
  v1 = *(this + 48);
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::LocationWifiUsage::MergePartialFromCodedStream(awd::metrics::LocationWifiUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_31;
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

          v19 = *(this + 12) | 1;
          *(this + 12) = v19;
          if (v16 < v13 && *v16 == 18)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_46;
          }

          if (v8 != 2)
          {
            goto LABEL_31;
          }

          v19 = *(this + 12);
LABEL_40:
          *(this + 12) = v19 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v20 < v9 && *v20 == 24)
          {
            v11 = v20 + 1;
            *(a2 + 1) = v11;
LABEL_46:
            v32 = 0;
            if (v11 >= v9 || (v21 = *v11, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
              if (!result)
              {
                return result;
              }

              v21 = v32;
              v22 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v22 = v11 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 6) = v21;
            *(this + 12) |= 4u;
            if (v22 < v9 && *v22 == 32)
            {
              v17 = v22 + 1;
              *(a2 + 1) = v17;
              goto LABEL_54;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_70;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_78;
        }

        goto LABEL_31;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_31;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_54:
      v32 = 0;
      if (v17 >= v9 || (v23 = *v17, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
        if (!result)
        {
          return result;
        }

        v23 = v32;
        v24 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v24 = v17 + 1;
        *(a2 + 1) = v24;
      }

      *(this + 7) = v23;
      *(this + 12) |= 8u;
      if (v24 < v9 && *v24 == 40)
      {
        v10 = v24 + 1;
        *(a2 + 1) = v10;
LABEL_62:
        v32 = 0;
        if (v10 >= v9 || (v25 = *v10, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
          if (!result)
          {
            return result;
          }

          v25 = v32;
          v26 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v26 = v10 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 8) = v25;
        *(this + 12) |= 0x10u;
        if (v26 < v9 && *v26 == 48)
        {
          v18 = v26 + 1;
          *(a2 + 1) = v18;
LABEL_70:
          v32 = 0;
          if (v18 >= v9 || (v27 = *v18, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
            if (!result)
            {
              return result;
            }

            v27 = v32;
            v28 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v28 = v18 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 9) = v27;
          *(this + 12) |= 0x20u;
          if (v28 < v9 && *v28 == 56)
          {
            v12 = v28 + 1;
            *(a2 + 1) = v12;
LABEL_78:
            v32 = 0;
            if (v12 >= v9 || (v29 = *v12, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
              if (!result)
              {
                return result;
              }

              v29 = v32;
              v30 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v30 = v12 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 10) = v29;
            *(this + 12) |= 0x40u;
            if (v30 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_62;
    }

LABEL_31:
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

uint64_t awd::metrics::LocationWifiUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 36), a2, a4);
    if ((*(v5 + 48) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v8, a2, a4);
}

uint64_t awd::metrics::LocationWifiUsage::ByteSize(awd::metrics::LocationWifiUsage *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_52;
  }

  if (*(this + 48))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 12);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
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
    v2 = *(this + 12);
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
      v2 = *(this + 12);
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

      goto LABEL_34;
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
    v2 = *(this + 12);
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

    goto LABEL_40;
  }

LABEL_34:
  v14 = *(this + 8);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 12);
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
      goto LABEL_52;
    }

    goto LABEL_46;
  }

LABEL_40:
  v16 = *(this + 9);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x40) != 0)
  {
LABEL_46:
    v18 = *(this + 10);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
  }

LABEL_52:
  *(this + 11) = v3;
  return v3;
}

void awd::metrics::LocationWifiUsage::CheckTypeAndMergeFrom(awd::metrics::LocationWifiUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationWifiUsage::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationWifiUsage::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationWifiUsage::CopyFrom(awd::metrics::LocationWifiUsage *this, const awd::metrics::LocationWifiUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationWifiUsage::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationWifiUsage::Swap(uint64_t this, awd::metrics::LocationWifiUsage *a2)
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
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return this;
}

void *awd::metrics::LocationEmergencySession::SharedCtor(void *this)
{
  this[5] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  return this;
}

awd::metrics::LocationEmergencySession *awd::metrics::LocationEmergencySession::LocationEmergencySession(awd::metrics::LocationEmergencySession *this, const awd::metrics::LocationEmergencySession *a2)
{
  *this = &unk_2A1D4EC60;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  awd::metrics::LocationEmergencySession::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationEmergencySession::MergeFrom(awd::metrics::LocationEmergencySession *this, const awd::metrics::LocationEmergencySession *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 11);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 11) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v9 = *(a2 + 6);
    *(this + 11) |= 4u;
    *(this + 6) = v9;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 7);
    *(this + 11) |= 8u;
    *(this + 7) = v10;
    v4 = *(a2 + 11);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_18:
    v11 = *(a2 + 8);
    *(this + 11) |= 0x10u;
    *(this + 8) = v11;
    if ((*(a2 + 11) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 9);
    *(this + 11) |= 0x20u;
    *(this + 9) = v5;
  }
}

void sub_29640895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationEmergencySession::~LocationEmergencySession(awd::metrics::LocationEmergencySession *this)
{
  *this = &unk_2A1D4EC60;
  awd::metrics::LocationEmergencySession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EC60;
  awd::metrics::LocationEmergencySession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EC60;
  awd::metrics::LocationEmergencySession::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationEmergencySession::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationEmergencySession::default_instance(awd::metrics::LocationEmergencySession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationEmergencySession::default_instance_;
  if (!awd::metrics::LocationEmergencySession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationEmergencySession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationEmergencySession::Clear(uint64_t this)
{
  v1 = *(this + 44);
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
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::LocationEmergencySession::MergePartialFromCodedStream(awd::metrics::LocationEmergencySession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_50;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_58;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_66;
          }

          goto LABEL_27;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 >= v12 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        v17 = *(this + 11) | 1;
        *(this + 11) = v17;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_36;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_27;
      }

      v17 = *(this + 11);
LABEL_36:
      *(this + 11) = v17 | 2;
      if (*(this + 2) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v19 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v19 < v9 && *v19 == 24)
      {
        v10 = v19 + 1;
        *(a2 + 1) = v10;
LABEL_42:
        v29 = 0;
        if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v20 = v29;
          v21 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v21 = v10 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 6) = v20;
        *(this + 11) |= 4u;
        if (v21 < v9 && *v21 == 32)
        {
          v16 = v21 + 1;
          *(a2 + 1) = v16;
LABEL_50:
          v29 = 0;
          if (v16 >= v9 || (v22 = *v16, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
            if (!result)
            {
              return result;
            }

            v22 = v29;
            v23 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v23 = v16 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 7) = v22;
          *(this + 11) |= 8u;
          if (v23 < v9 && *v23 == 40)
          {
            v18 = v23 + 1;
            *(a2 + 1) = v18;
LABEL_58:
            v29 = 0;
            if (v18 >= v9 || (v24 = *v18, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
              if (!result)
              {
                return result;
              }

              v24 = v29;
              v25 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v25 = v18 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 8) = v24;
            *(this + 11) |= 0x10u;
            if (v25 < v9 && *v25 == 48)
            {
              v11 = v25 + 1;
              *(a2 + 1) = v11;
LABEL_66:
              v29 = 0;
              if (v11 >= v9 || (v26 = *v11, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
                if (!result)
                {
                  return result;
                }

                v26 = v29;
                v27 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v27 = v11 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 9) = v26;
              *(this + 11) |= 0x20u;
              if (v27 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_42;
    }

LABEL_27:
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

uint64_t awd::metrics::LocationEmergencySession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 44);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 44);
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
  v8 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v8, a2, a4);
}

uint64_t awd::metrics::LocationEmergencySession::ByteSize(awd::metrics::LocationEmergencySession *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_45;
  }

  if (*(this + 44))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 11);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 2) == 0)
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
    v2 = *(this + 11);
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
      v2 = *(this + 11);
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

      goto LABEL_33;
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
    v2 = *(this + 11);
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
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_33:
  v14 = *(this + 8);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x20) != 0)
  {
LABEL_39:
    v16 = *(this + 9);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_45:
  *(this + 10) = v3;
  return v3;
}

void awd::metrics::LocationEmergencySession::CheckTypeAndMergeFrom(awd::metrics::LocationEmergencySession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationEmergencySession::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationEmergencySession::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationEmergencySession::CopyFrom(awd::metrics::LocationEmergencySession *this, const awd::metrics::LocationEmergencySession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationEmergencySession::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationEmergencySession::Swap(uint64_t this, awd::metrics::LocationEmergencySession *a2)
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
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::SharedCtor(awd::metrics::LocationEmergencySessionStatistics *this)
{
  *(this + 24) = 0u;
  result = this + 24;
  *(result + 444) = 0;
  v2 = MEMORY[0x29EDC9758];
  *(result - 16) = 0;
  *(result - 8) = v2;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = v2;
  *(result + 264) = v2;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 304) = 0u;
  *(result + 319) = 0;
  *(result + 368) = 0u;
  *(result + 340) = 0u;
  *(result + 356) = 0u;
  *(result + 324) = 0u;
  *(result + 384) = v2;
  *(result + 392) = 0;
  *(result + 400) = v2;
  *(result + 448) = 0;
  *(result + 456) = 0;
  *(result + 440) = 0;
  *(result + 424) = 0u;
  *(result + 408) = 0u;
  return result;
}

awd::metrics::LocationEmergencySessionStatistics *awd::metrics::LocationEmergencySessionStatistics::LocationEmergencySessionStatistics(awd::metrics::LocationEmergencySessionStatistics *this, const awd::metrics::LocationEmergencySessionStatistics *a2)
{
  *(this + 117) = 0;
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4ECD8;
  *(this + 1) = 0;
  *(this + 2) = v3;
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
  *(this + 24) = 0u;
  *(this + 264) = 0u;
  *(this + 35) = v3;
  *(this + 36) = v3;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 343) = 0;
  *(this + 392) = 0u;
  *(this + 364) = 0u;
  *(this + 380) = 0u;
  *(this + 348) = 0u;
  *(this + 51) = v3;
  *(this + 52) = 0;
  *(this + 53) = v3;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 116) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  awd::metrics::LocationEmergencySessionStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationEmergencySessionStatistics::MergeFrom(awd::metrics::LocationEmergencySessionStatistics *this, const awd::metrics::LocationEmergencySessionStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v126);
  }

  v4 = *(a2 + 118);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 1);
      *(this + 118) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 118);
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
    *(this + 118) |= 2u;
    v7 = *(this + 2);
    if (v7 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 118);
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
    v8 = *(a2 + 3);
    *(this + 118) |= 4u;
    *(this + 3) = v8;
    v4 = *(a2 + 118);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = *(a2 + 4);
    *(this + 118) |= 8u;
    *(this + 4) = v9;
    v4 = *(a2 + 118);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = *(a2 + 5);
    *(this + 118) |= 0x10u;
    *(this + 5) = v10;
    v4 = *(a2 + 118);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_20:
    v11 = *(a2 + 12);
    *(this + 118) |= 0x20u;
    *(this + 12) = v11;
    v4 = *(a2 + 118);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_21:
    v12 = *(a2 + 13);
    *(this + 118) |= 0x40u;
    *(this + 13) = v12;
    v4 = *(a2 + 118);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    v13 = *(a2 + 14);
    if (v13 >= 0xB)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 118) |= 0x80u;
    *(this + 14) = v13;
    v4 = *(a2 + 118);
  }

LABEL_24:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_40;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 15);
    if (v14 >= 0xA)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 118) |= 0x100u;
    *(this + 15) = v14;
    v4 = *(a2 + 118);
  }

  if ((v4 & 0x200) != 0)
  {
    v15 = *(a2 + 16);
    if (v15 >= 9)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 118) |= 0x200u;
    *(this + 16) = v15;
    v4 = *(a2 + 118);
  }

  if ((v4 & 0x400) != 0)
  {
    v16 = *(a2 + 17);
    if (v16 >= 0xD)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 118) |= 0x400u;
    *(this + 17) = v16;
    v4 = *(a2 + 118);
  }

  if ((v4 & 0x800) != 0)
  {
    v30 = *(a2 + 18);
    *(this + 118) |= 0x800u;
    *(this + 18) = v30;
    v4 = *(a2 + 118);
    if ((v4 & 0x1000) == 0)
    {
LABEL_36:
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_95;
    }
  }

  else if ((v4 & 0x1000) == 0)
  {
    goto LABEL_36;
  }

  v31 = *(a2 + 19);
  *(this + 118) |= 0x1000u;
  *(this + 19) = v31;
  v4 = *(a2 + 118);
  if ((v4 & 0x2000) == 0)
  {
LABEL_37:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_96;
  }

LABEL_95:
  v32 = *(a2 + 20);
  *(this + 118) |= 0x2000u;
  *(this + 20) = v32;
  v4 = *(a2 + 118);
  if ((v4 & 0x4000) == 0)
  {
LABEL_38:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_96:
  v33 = *(a2 + 21);
  *(this + 118) |= 0x4000u;
  *(this + 21) = v33;
  v4 = *(a2 + 118);
  if ((v4 & 0x8000) != 0)
  {
LABEL_39:
    v17 = *(a2 + 11);
    *(this + 118) |= 0x8000u;
    *(this + 11) = v17;
    v4 = *(a2 + 118);
  }

LABEL_40:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_61;
  }

  if ((v4 & 0x10000) != 0)
  {
    v18 = *(a2 + 12);
    *(this + 118) |= 0x10000u;
    *(this + 12) = v18;
    v4 = *(a2 + 118);
  }

  if ((v4 & 0x20000) != 0)
  {
    v19 = *(a2 + 26);
    if (v19 >= 4)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 118) |= 0x20000u;
    *(this + 26) = v19;
    v4 = *(a2 + 118);
  }

  if ((v4 & 0x40000) != 0)
  {
    v20 = *(a2 + 27);
    *(this + 118) |= 0x40000u;
    *(this + 27) = v20;
    v4 = *(a2 + 118);
    if ((v4 & 0x80000) == 0)
    {
LABEL_48:
      if ((v4 & 0x100000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_55;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_48;
  }

  v21 = *(a2 + 28);
  *(this + 118) |= 0x80000u;
  *(this + 28) = v21;
  v4 = *(a2 + 118);
  if ((v4 & 0x100000) == 0)
  {
LABEL_49:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_57;
  }

LABEL_55:
  v22 = *(a2 + 29);
  if (v22 >= 0x24)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  *(this + 118) |= 0x100000u;
  *(this + 29) = v22;
  v4 = *(a2 + 118);
  if ((v4 & 0x200000) == 0)
  {
LABEL_50:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_58;
  }

LABEL_57:
  v23 = *(a2 + 132);
  *(this + 118) |= 0x200000u;
  *(this + 132) = v23;
  v4 = *(a2 + 118);
  if ((v4 & 0x400000) == 0)
  {
LABEL_51:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

LABEL_58:
  v24 = *(a2 + 133);
  *(this + 118) |= 0x400000u;
  *(this + 133) = v24;
  v4 = *(a2 + 118);
  if ((v4 & 0x800000) == 0)
  {
    goto LABEL_61;
  }

LABEL_59:
  v25 = *(a2 + 32);
  if (v25 >= 3)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  *(this + 118) |= 0x800000u;
  *(this + 32) = v25;
  v4 = *(a2 + 118);
LABEL_61:
  if (!HIBYTE(v4))
  {
    goto LABEL_70;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v60 = *(a2 + 15);
    *(this + 118) |= 0x1000000u;
    *(this + 15) = v60;
    v4 = *(a2 + 118);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_64:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_154;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_64;
  }

  v61 = *(a2 + 17);
  *(this + 118) |= 0x2000000u;
  *(this + 17) = v61;
  v4 = *(a2 + 118);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_65:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_155;
  }

LABEL_154:
  v62 = *(a2 + 36);
  *(this + 118) |= 0x4000000u;
  *(this + 36) = v62;
  v4 = *(a2 + 118);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_66:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_156;
  }

LABEL_155:
  v63 = *(a2 + 37);
  *(this + 118) |= 0x8000000u;
  *(this + 37) = v63;
  v4 = *(a2 + 118);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_67:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_157;
  }

LABEL_156:
  v64 = *(a2 + 134);
  *(this + 118) |= 0x10000000u;
  *(this + 134) = v64;
  v4 = *(a2 + 118);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_68:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_158:
    v66 = *(a2 + 164);
    *(this + 118) |= 0x40000000u;
    *(this + 164) = v66;
    if ((*(a2 + 118) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_159;
  }

LABEL_157:
  v65 = *(a2 + 135);
  *(this + 118) |= 0x20000000u;
  *(this + 135) = v65;
  v4 = *(a2 + 118);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_158;
  }

LABEL_69:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_70;
  }

LABEL_159:
  v67 = *(a2 + 19);
  *(this + 118) |= 0x80000000;
  *(this + 19) = v67;
LABEL_70:
  v26 = *(a2 + 119);
  if (!v26)
  {
    goto LABEL_83;
  }

  if (v26)
  {
    v27 = *(a2 + 165);
    *(this + 119) |= 1u;
    *(this + 165) = v27;
    v26 = *(a2 + 119);
  }

  if ((v26 & 2) != 0)
  {
    v28 = *(a2 + 40);
    if (v28 >= 5)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 119) |= 2u;
    *(this + 40) = v28;
    v26 = *(a2 + 119);
  }

  if ((v26 & 4) != 0)
  {
    v42 = *(a2 + 42);
    *(this + 119) |= 4u;
    *(this + 42) = v42;
    v26 = *(a2 + 119);
    if ((v26 & 8) == 0)
    {
LABEL_78:
      if ((v26 & 0x10) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_119;
    }
  }

  else if ((v26 & 8) == 0)
  {
    goto LABEL_78;
  }

  v43 = *(a2 + 166);
  *(this + 119) |= 8u;
  *(this + 166) = v43;
  v26 = *(a2 + 119);
  if ((v26 & 0x10) == 0)
  {
LABEL_79:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_120;
  }

LABEL_119:
  v44 = *(a2 + 167);
  *(this + 119) |= 0x10u;
  *(this + 167) = v44;
  v26 = *(a2 + 119);
  if ((v26 & 0x20) == 0)
  {
LABEL_80:
    if ((v26 & 0x40) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_121;
  }

LABEL_120:
  v45 = *(a2 + 43);
  *(this + 119) |= 0x20u;
  *(this + 43) = v45;
  v26 = *(a2 + 119);
  if ((v26 & 0x40) == 0)
  {
LABEL_81:
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_121:
  v46 = *(a2 + 44);
  *(this + 119) |= 0x40u;
  *(this + 44) = v46;
  v26 = *(a2 + 119);
  if ((v26 & 0x80) != 0)
  {
LABEL_82:
    v29 = *(a2 + 45);
    *(this + 119) |= 0x80u;
    *(this + 45) = v29;
    v26 = *(a2 + 119);
  }

LABEL_83:
  if ((v26 & 0xFF00) == 0)
  {
    goto LABEL_107;
  }

  if ((v26 & 0x100) != 0)
  {
    v34 = *(a2 + 212);
    *(this + 119) |= 0x100u;
    *(this + 212) = v34;
    v26 = *(a2 + 119);
    if ((v26 & 0x200) == 0)
    {
LABEL_86:
      if ((v26 & 0x400) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_100;
    }
  }

  else if ((v26 & 0x200) == 0)
  {
    goto LABEL_86;
  }

  v35 = *(a2 + 46);
  *(this + 119) |= 0x200u;
  *(this + 46) = v35;
  v26 = *(a2 + 119);
  if ((v26 & 0x400) == 0)
  {
LABEL_87:
    if ((v26 & 0x800) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_101;
  }

LABEL_100:
  v36 = *(a2 + 47);
  *(this + 119) |= 0x400u;
  *(this + 47) = v36;
  v26 = *(a2 + 119);
  if ((v26 & 0x800) == 0)
  {
LABEL_88:
    if ((v26 & 0x1000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_102;
  }

LABEL_101:
  v37 = *(a2 + 48);
  *(this + 119) |= 0x800u;
  *(this + 48) = v37;
  v26 = *(a2 + 119);
  if ((v26 & 0x1000) == 0)
  {
LABEL_89:
    if ((v26 & 0x2000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_103;
  }

LABEL_102:
  v38 = *(a2 + 49);
  *(this + 119) |= 0x1000u;
  *(this + 49) = v38;
  v26 = *(a2 + 119);
  if ((v26 & 0x2000) == 0)
  {
LABEL_90:
    if ((v26 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_104;
  }

LABEL_103:
  v39 = *(a2 + 50);
  *(this + 119) |= 0x2000u;
  *(this + 50) = v39;
  v26 = *(a2 + 119);
  if ((v26 & 0x4000) == 0)
  {
LABEL_91:
    if ((v26 & 0x8000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_105;
  }

LABEL_104:
  v40 = *(a2 + 51);
  *(this + 119) |= 0x4000u;
  *(this + 51) = v40;
  v26 = *(a2 + 119);
  if ((v26 & 0x8000) == 0)
  {
    goto LABEL_107;
  }

LABEL_105:
  v41 = *(a2 + 52);
  if (v41 >= 5)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  *(this + 119) |= 0x8000u;
  *(this + 52) = v41;
  v26 = *(a2 + 119);
LABEL_107:
  if ((v26 & 0xFF0000) == 0)
  {
    goto LABEL_132;
  }

  if ((v26 & 0x10000) != 0)
  {
    v47 = *(a2 + 213);
    *(this + 119) |= 0x10000u;
    *(this + 213) = v47;
    v26 = *(a2 + 119);
    if ((v26 & 0x20000) == 0)
    {
LABEL_110:
      if ((v26 & 0x40000) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_125;
    }
  }

  else if ((v26 & 0x20000) == 0)
  {
    goto LABEL_110;
  }

  v48 = *(a2 + 214);
  *(this + 119) |= 0x20000u;
  *(this + 214) = v48;
  v26 = *(a2 + 119);
  if ((v26 & 0x40000) == 0)
  {
LABEL_111:
    if ((v26 & 0x80000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

LABEL_125:
  v49 = *(a2 + 27);
  *(this + 119) |= 0x40000u;
  *(this + 27) = v49;
  v26 = *(a2 + 119);
  if ((v26 & 0x80000) == 0)
  {
LABEL_112:
    if ((v26 & 0x100000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_127;
  }

LABEL_126:
  v50 = *(a2 + 28);
  *(this + 119) |= 0x80000u;
  *(this + 28) = v50;
  v26 = *(a2 + 119);
  if ((v26 & 0x100000) == 0)
  {
LABEL_113:
    if ((v26 & 0x200000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_128;
  }

LABEL_127:
  v51 = *(a2 + 29);
  *(this + 119) |= 0x100000u;
  *(this + 29) = v51;
  v26 = *(a2 + 119);
  if ((v26 & 0x200000) == 0)
  {
LABEL_114:
    if ((v26 & 0x400000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_129;
  }

LABEL_128:
  v52 = *(a2 + 30);
  *(this + 119) |= 0x200000u;
  *(this + 30) = v52;
  v26 = *(a2 + 119);
  if ((v26 & 0x400000) == 0)
  {
LABEL_115:
    if ((v26 & 0x800000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_130;
  }

LABEL_129:
  v53 = *(a2 + 31);
  *(this + 119) |= 0x400000u;
  *(this + 31) = v53;
  v26 = *(a2 + 119);
  if ((v26 & 0x800000) == 0)
  {
    goto LABEL_132;
  }

LABEL_130:
  v54 = *(a2 + 64);
  if (v54 >= 3)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  *(this + 119) |= 0x800000u;
  *(this + 64) = v54;
  v26 = *(a2 + 119);
LABEL_132:
  if (!HIBYTE(v26))
  {
    goto LABEL_167;
  }

  if ((v26 & 0x1000000) != 0)
  {
    v55 = *(a2 + 65);
    if (v55 >= 5 && v55 - 6 >= 2)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 119) |= 0x1000000u;
    *(this + 65) = v55;
    v26 = *(a2 + 119);
  }

  if ((v26 & 0x2000000) != 0)
  {
    v56 = *(a2 + 215);
    *(this + 119) |= 0x2000000u;
    *(this + 215) = v56;
    v26 = *(a2 + 119);
  }

  if ((v26 & 0x4000000) != 0)
  {
    v57 = *(a2 + 66);
    if (v57 >= 0xC)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 119) |= 0x4000000u;
    *(this + 66) = v57;
    v26 = *(a2 + 119);
  }

  if ((v26 & 0x8000000) != 0)
  {
    v58 = *(a2 + 67);
    if (v58 >= 0xA)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 119) |= 0x8000000u;
    *(this + 67) = v58;
    v26 = *(a2 + 119);
  }

  if ((v26 & 0x10000000) != 0)
  {
    v59 = *(a2 + 68);
    if (v59 >= 3)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 119) |= 0x10000000u;
    *(this + 68) = v59;
    v26 = *(a2 + 119);
  }

  if ((v26 & 0x20000000) != 0)
  {
    v68 = *(a2 + 69);
    *(this + 119) |= 0x20000000u;
    *(this + 69) = v68;
    v26 = *(a2 + 119);
    if ((v26 & 0x40000000) == 0)
    {
LABEL_150:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_164;
    }
  }

  else if ((v26 & 0x40000000) == 0)
  {
    goto LABEL_150;
  }

  v69 = *(a2 + 35);
  *(this + 119) |= 0x40000000u;
  v70 = *(this + 35);
  if (v70 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v70, v69);
  if ((*(a2 + 119) & 0x80000000) != 0)
  {
LABEL_164:
    v71 = *(a2 + 36);
    *(this + 119) |= 0x80000000;
    v72 = *(this + 36);
    if (v72 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v72, v71);
  }

LABEL_167:
  v73 = *(a2 + 120);
  if (!v73)
  {
    goto LABEL_177;
  }

  if (v73)
  {
    v97 = *(a2 + 74);
    *(this + 120) |= 1u;
    *(this + 74) = v97;
    v73 = *(a2 + 120);
    if ((v73 & 2) == 0)
    {
LABEL_170:
      if ((v73 & 4) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_260;
    }
  }

  else if ((v73 & 2) == 0)
  {
    goto LABEL_170;
  }

  v98 = *(a2 + 75);
  *(this + 120) |= 2u;
  *(this + 75) = v98;
  v73 = *(a2 + 120);
  if ((v73 & 4) == 0)
  {
LABEL_171:
    if ((v73 & 8) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_261;
  }

LABEL_260:
  v99 = *(a2 + 304);
  *(this + 120) |= 4u;
  *(this + 304) = v99;
  v73 = *(a2 + 120);
  if ((v73 & 8) == 0)
  {
LABEL_172:
    if ((v73 & 0x10) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_262;
  }

LABEL_261:
  v100 = *(a2 + 305);
  *(this + 120) |= 8u;
  *(this + 305) = v100;
  v73 = *(a2 + 120);
  if ((v73 & 0x10) == 0)
  {
LABEL_173:
    if ((v73 & 0x20) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_263;
  }

LABEL_262:
  v101 = *(a2 + 306);
  *(this + 120) |= 0x10u;
  *(this + 306) = v101;
  v73 = *(a2 + 120);
  if ((v73 & 0x20) == 0)
  {
LABEL_174:
    if ((v73 & 0x40) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_264;
  }

LABEL_263:
  v102 = *(a2 + 77);
  *(this + 120) |= 0x20u;
  *(this + 77) = v102;
  v73 = *(a2 + 120);
  if ((v73 & 0x40) == 0)
  {
LABEL_175:
    if ((v73 & 0x80) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_176;
  }

LABEL_264:
  v103 = *(a2 + 78);
  *(this + 120) |= 0x40u;
  *(this + 78) = v103;
  v73 = *(a2 + 120);
  if ((v73 & 0x80) != 0)
  {
LABEL_176:
    v74 = *(a2 + 79);
    *(this + 120) |= 0x80u;
    *(this + 79) = v74;
    v73 = *(a2 + 120);
  }

LABEL_177:
  if ((v73 & 0xFF00) == 0)
  {
    goto LABEL_187;
  }

  if ((v73 & 0x100) != 0)
  {
    v104 = *(a2 + 80);
    *(this + 120) |= 0x100u;
    *(this + 80) = v104;
    v73 = *(a2 + 120);
    if ((v73 & 0x200) == 0)
    {
LABEL_180:
      if ((v73 & 0x400) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_268;
    }
  }

  else if ((v73 & 0x200) == 0)
  {
    goto LABEL_180;
  }

  v105 = *(a2 + 81);
  *(this + 120) |= 0x200u;
  *(this + 81) = v105;
  v73 = *(a2 + 120);
  if ((v73 & 0x400) == 0)
  {
LABEL_181:
    if ((v73 & 0x800) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_269;
  }

LABEL_268:
  v106 = *(a2 + 307);
  *(this + 120) |= 0x400u;
  *(this + 307) = v106;
  v73 = *(a2 + 120);
  if ((v73 & 0x800) == 0)
  {
LABEL_182:
    if ((v73 & 0x1000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_270;
  }

LABEL_269:
  v107 = *(a2 + 328);
  *(this + 120) |= 0x800u;
  *(this + 328) = v107;
  v73 = *(a2 + 120);
  if ((v73 & 0x1000) == 0)
  {
LABEL_183:
    if ((v73 & 0x2000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_271;
  }

LABEL_270:
  v108 = *(a2 + 329);
  *(this + 120) |= 0x1000u;
  *(this + 329) = v108;
  v73 = *(a2 + 120);
  if ((v73 & 0x2000) == 0)
  {
LABEL_184:
    if ((v73 & 0x4000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_272;
  }

LABEL_271:
  v109 = *(a2 + 330);
  *(this + 120) |= 0x2000u;
  *(this + 330) = v109;
  v73 = *(a2 + 120);
  if ((v73 & 0x4000) == 0)
  {
LABEL_185:
    if ((v73 & 0x8000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_186;
  }

LABEL_272:
  v110 = *(a2 + 331);
  *(this + 120) |= 0x4000u;
  *(this + 331) = v110;
  v73 = *(a2 + 120);
  if ((v73 & 0x8000) != 0)
  {
LABEL_186:
    v75 = *(a2 + 83);
    *(this + 120) |= 0x8000u;
    *(this + 83) = v75;
    v73 = *(a2 + 120);
  }

LABEL_187:
  if ((v73 & 0xFF0000) == 0)
  {
    goto LABEL_201;
  }

  if ((v73 & 0x10000) != 0)
  {
    v76 = *(a2 + 84);
    *(this + 120) |= 0x10000u;
    *(this + 84) = v76;
    v73 = *(a2 + 120);
  }

  if ((v73 & 0x20000) != 0)
  {
    v77 = *(a2 + 85);
    if (v77 >= 8)
    {
      awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
    }

    *(this + 120) |= 0x20000u;
    *(this + 85) = v77;
    v73 = *(a2 + 120);
  }

  if ((v73 & 0x40000) != 0)
  {
    v111 = *(a2 + 344);
    *(this + 120) |= 0x40000u;
    *(this + 344) = v111;
    v73 = *(a2 + 120);
    if ((v73 & 0x80000) == 0)
    {
LABEL_195:
      if ((v73 & 0x100000) == 0)
      {
        goto LABEL_196;
      }

      goto LABEL_276;
    }
  }

  else if ((v73 & 0x80000) == 0)
  {
    goto LABEL_195;
  }

  v112 = *(a2 + 345);
  *(this + 120) |= 0x80000u;
  *(this + 345) = v112;
  v73 = *(a2 + 120);
  if ((v73 & 0x100000) == 0)
  {
LABEL_196:
    if ((v73 & 0x200000) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_277;
  }

LABEL_276:
  v113 = *(a2 + 346);
  *(this + 120) |= 0x100000u;
  *(this + 346) = v113;
  v73 = *(a2 + 120);
  if ((v73 & 0x200000) == 0)
  {
LABEL_197:
    if ((v73 & 0x400000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_198;
  }

LABEL_277:
  v114 = *(a2 + 87);
  if (v114 >= 3)
  {
    awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
  }

  *(this + 120) |= 0x200000u;
  *(this + 87) = v114;
  v73 = *(a2 + 120);
  if ((v73 & 0x400000) == 0)
  {
    goto LABEL_199;
  }

LABEL_198:
  v78 = *(a2 + 88);
  *(this + 120) |= 0x400000u;
  *(this + 88) = v78;
  v73 = *(a2 + 120);
LABEL_199:
  if ((v73 & 0x800000) != 0)
  {
    v79 = *(a2 + 89);
    *(this + 120) |= 0x800000u;
    *(this + 89) = v79;
    v73 = *(a2 + 120);
  }

LABEL_201:
  if (HIBYTE(v73))
  {
    if ((v73 & 0x1000000) != 0)
    {
      v80 = *(a2 + 90);
      *(this + 120) |= 0x1000000u;
      *(this + 90) = v80;
      v73 = *(a2 + 120);
    }

    if ((v73 & 0x2000000) != 0)
    {
      v81 = *(a2 + 91);
      if (v81 >= 9)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 120) |= 0x2000000u;
      *(this + 91) = v81;
      v73 = *(a2 + 120);
    }

    if ((v73 & 0x4000000) != 0)
    {
      v82 = *(a2 + 92);
      if (v82 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 120) |= 0x4000000u;
      *(this + 92) = v82;
      v73 = *(a2 + 120);
    }

    if ((v73 & 0x8000000) != 0)
    {
      v83 = *(a2 + 93);
      if (v83 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 120) |= 0x8000000u;
      *(this + 93) = v83;
      v73 = *(a2 + 120);
    }

    if ((v73 & 0x10000000) != 0)
    {
      v84 = *(a2 + 94);
      if (v84 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 120) |= 0x10000000u;
      *(this + 94) = v84;
      v73 = *(a2 + 120);
    }

    if ((v73 & 0x20000000) != 0)
    {
      v85 = *(a2 + 95);
      if (v85 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 120) |= 0x20000000u;
      *(this + 95) = v85;
      v73 = *(a2 + 120);
    }

    if ((v73 & 0x40000000) != 0)
    {
      v86 = *(a2 + 96);
      if (v86 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 120) |= 0x40000000u;
      *(this + 96) = v86;
      v73 = *(a2 + 120);
    }

    if ((v73 & 0x80000000) != 0)
    {
      v87 = *(a2 + 97);
      if (v87 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 120) |= 0x80000000;
      *(this + 97) = v87;
    }
  }

  v88 = *(a2 + 121);
  if (v88)
  {
    if (v88)
    {
      v89 = *(a2 + 98);
      if (v89 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 121) |= 1u;
      *(this + 98) = v89;
      v88 = *(a2 + 121);
    }

    if ((v88 & 2) != 0)
    {
      v90 = *(a2 + 99);
      if (v90 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 121) |= 2u;
      *(this + 99) = v90;
      v88 = *(a2 + 121);
    }

    if ((v88 & 4) != 0)
    {
      v91 = *(a2 + 100);
      if (v91 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 121) |= 4u;
      *(this + 100) = v91;
      v88 = *(a2 + 121);
    }

    if ((v88 & 8) != 0)
    {
      v92 = *(a2 + 101);
      if (v92 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 121) |= 8u;
      *(this + 101) = v92;
      v88 = *(a2 + 121);
    }

    if ((v88 & 0x10) != 0)
    {
      v93 = *(a2 + 104);
      if (v93 >= 4)
      {
        awd::metrics::LocationEmergencySessionStatistics::MergeFrom();
      }

      *(this + 121) |= 0x10u;
      *(this + 104) = v93;
      v88 = *(a2 + 121);
    }

    if ((v88 & 0x20) != 0)
    {
      v122 = *(a2 + 51);
      *(this + 121) |= 0x20u;
      v123 = *(this + 51);
      if (v123 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v123, v122);
      v88 = *(a2 + 121);
      if ((v88 & 0x40) == 0)
      {
LABEL_243:
        if ((v88 & 0x80) == 0)
        {
          goto LABEL_245;
        }

        goto LABEL_244;
      }
    }

    else if ((v88 & 0x40) == 0)
    {
      goto LABEL_243;
    }

    v124 = *(a2 + 53);
    *(this + 121) |= 0x40u;
    v125 = *(this + 53);
    if (v125 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v125, v124);
    v88 = *(a2 + 121);
    if ((v88 & 0x80) != 0)
    {
LABEL_244:
      v94 = *(a2 + 105);
      *(this + 121) |= 0x80u;
      *(this + 105) = v94;
      v88 = *(a2 + 121);
    }
  }

LABEL_245:
  if ((v88 & 0xFF00) == 0)
  {
    goto LABEL_255;
  }

  if ((v88 & 0x100) != 0)
  {
    v115 = *(a2 + 108);
    *(this + 121) |= 0x100u;
    *(this + 108) = v115;
    v88 = *(a2 + 121);
    if ((v88 & 0x200) == 0)
    {
LABEL_248:
      if ((v88 & 0x400) == 0)
      {
        goto LABEL_249;
      }

      goto LABEL_282;
    }
  }

  else if ((v88 & 0x200) == 0)
  {
    goto LABEL_248;
  }

  v116 = *(a2 + 109);
  *(this + 121) |= 0x200u;
  *(this + 109) = v116;
  v88 = *(a2 + 121);
  if ((v88 & 0x400) == 0)
  {
LABEL_249:
    if ((v88 & 0x800) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_283;
  }

LABEL_282:
  v117 = *(a2 + 110);
  *(this + 121) |= 0x400u;
  *(this + 110) = v117;
  v88 = *(a2 + 121);
  if ((v88 & 0x800) == 0)
  {
LABEL_250:
    if ((v88 & 0x1000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_284;
  }

LABEL_283:
  v118 = *(a2 + 111);
  *(this + 121) |= 0x800u;
  *(this + 111) = v118;
  v88 = *(a2 + 121);
  if ((v88 & 0x1000) == 0)
  {
LABEL_251:
    if ((v88 & 0x2000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_285;
  }

LABEL_284:
  v119 = *(a2 + 112);
  *(this + 121) |= 0x1000u;
  *(this + 112) = v119;
  v88 = *(a2 + 121);
  if ((v88 & 0x2000) == 0)
  {
LABEL_252:
    if ((v88 & 0x4000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_286;
  }

LABEL_285:
  v120 = *(a2 + 113);
  *(this + 121) |= 0x2000u;
  *(this + 113) = v120;
  v88 = *(a2 + 121);
  if ((v88 & 0x4000) == 0)
  {
LABEL_253:
    if ((v88 & 0x8000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_254;
  }

LABEL_286:
  v121 = *(a2 + 114);
  *(this + 121) |= 0x4000u;
  *(this + 114) = v121;
  v88 = *(a2 + 121);
  if ((v88 & 0x8000) != 0)
  {
LABEL_254:
    v95 = *(a2 + 115);
    *(this + 121) |= 0x8000u;
    *(this + 115) = v95;
    v88 = *(a2 + 121);
  }

LABEL_255:
  if ((v88 & 0x10000) != 0)
  {
    v96 = *(a2 + 116);
    *(this + 121) |= 0x10000u;
    *(this + 116) = v96;
  }
}

void sub_29640A768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationEmergencySessionStatistics::~LocationEmergencySessionStatistics(awd::metrics::LocationEmergencySessionStatistics *this)
{
  *this = &unk_2A1D4ECD8;
  awd::metrics::LocationEmergencySessionStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ECD8;
  awd::metrics::LocationEmergencySessionStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ECD8;
  awd::metrics::LocationEmergencySessionStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationEmergencySessionStatistics::SharedDtor(void *this)
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

  v5 = v1[35];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C25A730](v5, 0x1012C40EC159624);
  }

  v7 = v1[36];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C25A730](v7, 0x1012C40EC159624);
  }

  v9 = v1[51];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C25A730](v9, 0x1012C40EC159624);
  }

  v11 = v1[53];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::default_instance(awd::metrics::LocationEmergencySessionStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationEmergencySessionStatistics::default_instance_;
  if (!awd::metrics::LocationEmergencySessionStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationEmergencySessionStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::Clear(uint64_t this)
{
  v1 = *(this + 472);
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

    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    v1 = *(this + 472);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 92) = 0;
    *(this + 76) = 0u;
    *(this + 60) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 132) = 0;
    *(this + 128) = 0;
    *(this + 104) = 0;
    *(this + 112) = 0;
    *(this + 96) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 120) = 0;
    *(this + 164) = 0;
    *(this + 134) = 0;
    *(this + 150) = 0;
    *(this + 142) = 0;
    *(this + 158) = 0;
  }

  v3 = *(this + 476);
  if (v3)
  {
    *(this + 160) = 0;
    *(this + 173) = 0;
    *(this + 165) = 0;
    *(this + 180) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 184) = 0;
    *(this + 192) = 0;
    *(this + 205) = 0;
    *(this + 200) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(this + 213) = 0;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 244) = 0u;
  }

  if (HIBYTE(v3))
  {
    *(this + 215) = 0;
    *(this + 276) = 0;
    *(this + 268) = 0;
    *(this + 260) = 0;
    if ((v3 & 0x40000000) != 0)
    {
      v4 = *(this + 280);
      if (v4 != MEMORY[0x29EDC9758])
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
    }

    if ((*(this + 476) & 0x80000000) != 0)
    {
      v8 = *(this + 288);
      if (v8 != MEMORY[0x29EDC9758])
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
  }

  v5 = *(this + 480);
  if (v5)
  {
    *(this + 308) = 0;
    *(this + 312) = 0;
    *(this + 296) = 0;
    *(this + 303) = 0;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(this + 307) = 0;
    *(this + 320) = 0;
    *(this + 328) = 0;
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(this + 348) = 0;
    *(this + 352) = 0;
    *(this + 336) = 0;
    *(this + 343) = 0;
  }

  if (HIBYTE(v5))
  {
    *(this + 360) = 0u;
    *(this + 376) = 0u;
  }

  v6 = *(this + 484);
  if (v6)
  {
    *(this + 416) = 0;
    *(this + 392) = 0;
    *(this + 400) = 0;
    if ((v6 & 0x20) != 0)
    {
      v7 = *(this + 408);
      if (v7 != MEMORY[0x29EDC9758])
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

    if ((*(this + 484) & 0x40) != 0)
    {
      v9 = *(this + 424);
      if (v9 != MEMORY[0x29EDC9758])
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

    *(this + 420) = 0;
    v6 = *(this + 484);
  }

  if ((v6 & 0xFF00) != 0)
  {
    *(this + 432) = 0u;
    *(this + 448) = 0u;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(this + 464) = 0;
  }

  *(this + 472) = 0;
  *(this + 480) = 0;
  return this;
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::MergePartialFromCodedStream(awd::metrics::LocationEmergencySessionStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = (this + 296);
  v5 = (this + 300);
  v6 = (this + 320);
  v7 = (this + 324);
  v8 = (this + 352);
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
          goto LABEL_235;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 >= v12 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        v85 = *(this + 118) | 1;
        *(this + 118) = v85;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_244;
        }

        continue;
      case 2u:
        if (v11 != 2)
        {
          goto LABEL_235;
        }

        v85 = *(this + 118);
LABEL_244:
        *(this + 118) = v85 | 2;
        if (*(this + 2) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v145 = *(a2 + 1);
        if (v145 >= *(a2 + 2) || *v145 != 25)
        {
          continue;
        }

        *(a2 + 1) = v145 + 1;
LABEL_250:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v352;
        *(this + 118) |= 4u;
        v146 = *(a2 + 1);
        if (v146 >= *(a2 + 2) || *v146 != 33)
        {
          continue;
        }

        *(a2 + 1) = v146 + 1;
LABEL_254:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v352;
        *(this + 118) |= 8u;
        v147 = *(a2 + 1);
        if (v147 >= *(a2 + 2) || *v147 != 41)
        {
          continue;
        }

        *(a2 + 1) = v147 + 1;
LABEL_258:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v352;
        *(this + 118) |= 0x10u;
        v148 = *(a2 + 1);
        v78 = *(a2 + 2);
        if (v148 >= v78 || *v148 != 48)
        {
          continue;
        }

        v88 = v148 + 1;
        *(a2 + 1) = v88;
LABEL_262:
        v352[0] = 0;
        if (v88 >= v78 || (v149 = *v88, (v149 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v149 = v352[0];
          v150 = *(a2 + 1);
          v78 = *(a2 + 2);
        }

        else
        {
          v150 = v88 + 1;
          *(a2 + 1) = v150;
        }

        *(this + 12) = v149;
        *(this + 118) |= 0x20u;
        if (v150 >= v78 || *v150 != 56)
        {
          continue;
        }

        v90 = v150 + 1;
        *(a2 + 1) = v90;
LABEL_270:
        if (v90 >= v78 || (v151 = *v90, v151 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v152 = *(a2 + 1);
          v78 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v151;
          v152 = v90 + 1;
          *(a2 + 1) = v152;
        }

        *(this + 118) |= 0x40u;
        if (v152 >= v78 || *v152 != 64)
        {
          continue;
        }

        v79 = v152 + 1;
        *(a2 + 1) = v79;
LABEL_278:
        v352[0] = 0;
        if (v79 >= v78 || (v153 = *v79, (v153 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v153 = v352[0];
        }

        else
        {
          *(a2 + 1) = v79 + 1;
        }

        if (v153 <= 0xA)
        {
          *(this + 118) |= 0x80u;
          *(this + 14) = v153;
        }

        v154 = *(a2 + 1);
        v83 = *(a2 + 2);
        if (v154 >= v83 || *v154 != 72)
        {
          continue;
        }

        v84 = v154 + 1;
        *(a2 + 1) = v84;
LABEL_288:
        v352[0] = 0;
        if (v84 >= v83 || (v155 = *v84, (v155 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v155 = v352[0];
        }

        else
        {
          *(a2 + 1) = v84 + 1;
        }

        if (v155 <= 9)
        {
          *(this + 118) |= 0x100u;
          *(this + 15) = v155;
        }

        v156 = *(a2 + 1);
        v69 = *(a2 + 2);
        if (v156 >= v69 || *v156 != 80)
        {
          continue;
        }

        v70 = v156 + 1;
        *(a2 + 1) = v70;
LABEL_298:
        v352[0] = 0;
        if (v70 >= v69 || (v157 = *v70, (v157 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v157 = v352[0];
        }

        else
        {
          *(a2 + 1) = v70 + 1;
        }

        if (v157 <= 8)
        {
          *(this + 118) |= 0x200u;
          *(this + 16) = v157;
        }

        v158 = *(a2 + 1);
        v81 = *(a2 + 2);
        if (v158 >= v81 || *v158 != 88)
        {
          continue;
        }

        v82 = v158 + 1;
        *(a2 + 1) = v82;
LABEL_308:
        v352[0] = 0;
        if (v82 >= v81 || (v159 = *v82, (v159 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v159 = v352[0];
        }

        else
        {
          *(a2 + 1) = v82 + 1;
        }

        if (v159 <= 0xC)
        {
          *(this + 118) |= 0x400u;
          *(this + 17) = v159;
        }

        v160 = *(a2 + 1);
        v73 = *(a2 + 2);
        if (v160 >= v73 || *v160 != 104)
        {
          continue;
        }

        v95 = v160 + 1;
        *(a2 + 1) = v95;
LABEL_318:
        v352[0] = 0;
        if (v95 >= v73 || (v161 = *v95, (v161 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v161 = v352[0];
          v162 = *(a2 + 1);
          v73 = *(a2 + 2);
        }

        else
        {
          v162 = v95 + 1;
          *(a2 + 1) = v162;
        }

        *(this + 18) = v161;
        *(this + 118) |= 0x800u;
        if (v162 >= v73 || *v162 != 112)
        {
          continue;
        }

        v93 = v162 + 1;
        *(a2 + 1) = v93;
LABEL_326:
        v352[0] = 0;
        if (v93 >= v73 || (v163 = *v93, (v163 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v163 = v352[0];
          v164 = *(a2 + 1);
          v73 = *(a2 + 2);
        }

        else
        {
          v164 = v93 + 1;
          *(a2 + 1) = v164;
        }

        *(this + 19) = v163;
        *(this + 118) |= 0x1000u;
        if (v164 >= v73 || *v164 != 120)
        {
          continue;
        }

        v74 = v164 + 1;
        *(a2 + 1) = v74;
LABEL_334:
        v352[0] = 0;
        if (v74 >= v73 || (v165 = *v74, (v165 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v165 = v352[0];
          v166 = *(a2 + 1);
          v73 = *(a2 + 2);
        }

        else
        {
          v166 = (v74 + 1);
          *(a2 + 1) = v166;
        }

        *(this + 20) = v165;
        *(this + 118) |= 0x2000u;
        if (v73 - v166 < 2 || *v166 != 128 || v166[1] != 1)
        {
          continue;
        }

        v103 = (v166 + 2);
        *(a2 + 1) = v103;
LABEL_343:
        v352[0] = 0;
        if (v103 >= v73 || (v167 = *v103, (v167 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v167 = v352[0];
          v168 = *(a2 + 1);
          v73 = *(a2 + 2);
        }

        else
        {
          v168 = (v103 + 1);
          *(a2 + 1) = v168;
        }

        *(this + 21) = v167;
        *(this + 118) |= 0x4000u;
        if (v73 - v168 < 2 || *v168 != 136 || v168[1] != 1)
        {
          continue;
        }

        v104 = (v168 + 2);
        *(a2 + 1) = v104;
LABEL_352:
        if (v104 >= v73 || (v169 = *v104, v169 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v170 = *(a2 + 1);
          v73 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v169;
          v170 = (v104 + 1);
          *(a2 + 1) = v170;
        }

        *(this + 118) |= 0x8000u;
        if (v73 - v170 < 2 || *v170 != 145 || v170[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v170 + 2;
LABEL_361:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v352;
        *(this + 118) |= 0x10000u;
        v171 = *(a2 + 1);
        v108 = *(a2 + 2);
        if (v108 - v171 < 2 || *v171 != 152 || v171[1] != 1)
        {
          continue;
        }

        v109 = (v171 + 2);
        *(a2 + 1) = v109;
LABEL_366:
        v352[0] = 0;
        if (v109 >= v108 || (v172 = *v109, (v172 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v172 = v352[0];
        }

        else
        {
          *(a2 + 1) = v109 + 1;
        }

        if (v172 <= 3)
        {
          *(this + 118) |= 0x20000u;
          *(this + 26) = v172;
        }

        v173 = *(a2 + 1);
        if (*(a2 + 4) - v173 < 2 || *v173 != 165 || v173[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v173 + 2;
LABEL_377:
        v352[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 27) = v352[0];
        *(this + 118) |= 0x40000u;
        v174 = *(a2 + 1);
        if (*(a2 + 4) - v174 < 2 || *v174 != 173 || v174[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v174 + 2;
LABEL_382:
        v352[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = v352[0];
        *(this + 118) |= 0x80000u;
        v175 = *(a2 + 1);
        v118 = *(a2 + 2);
        if (v118 - v175 < 2 || *v175 != 176 || v175[1] != 1)
        {
          continue;
        }

        v119 = (v175 + 2);
        *(a2 + 1) = v119;
LABEL_387:
        v352[0] = 0;
        if (v119 >= v118 || (v176 = *v119, (v176 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v176 = v352[0];
        }

        else
        {
          *(a2 + 1) = v119 + 1;
        }

        if (v176 <= 0x23)
        {
          *(this + 118) |= 0x100000u;
          *(this + 29) = v176;
        }

        v177 = *(a2 + 1);
        v71 = *(a2 + 2);
        if (v71 - v177 < 2 || *v177 != 184 || v177[1] != 1)
        {
          continue;
        }

        v72 = (v177 + 2);
        *(a2 + 1) = v72;
LABEL_398:
        v352[0] = 0;
        if (v72 >= v71 || (v178 = *v72, (v178 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v178 = v352[0];
          v179 = *(a2 + 1);
          v71 = *(a2 + 2);
        }

        else
        {
          v179 = (v72 + 1);
          *(a2 + 1) = v179;
        }

        *(this + 132) = v178 != 0;
        *(this + 118) |= 0x200000u;
        if (v71 - v179 < 2 || *v179 != 192 || v179[1] != 1)
        {
          continue;
        }

        v92 = (v179 + 2);
        *(a2 + 1) = v92;
LABEL_407:
        v352[0] = 0;
        if (v92 >= v71 || (v180 = *v92, (v180 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v180 = v352[0];
          v181 = *(a2 + 1);
          v71 = *(a2 + 2);
        }

        else
        {
          v181 = (v92 + 1);
          *(a2 + 1) = v181;
        }

        *(this + 133) = v180 != 0;
        *(this + 118) |= 0x400000u;
        if (v71 - v181 < 2 || *v181 != 200 || v181[1] != 1)
        {
          continue;
        }

        v77 = (v181 + 2);
        *(a2 + 1) = v77;
LABEL_416:
        v352[0] = 0;
        if (v77 >= v71 || (v182 = *v77, (v182 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v182 = v352[0];
        }

        else
        {
          *(a2 + 1) = v77 + 1;
        }

        if (v182 <= 2)
        {
          *(this + 118) |= 0x800000u;
          *(this + 32) = v182;
        }

        v183 = *(a2 + 1);
        if (*(a2 + 4) - v183 < 2 || *v183 != 209 || v183[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v183 + 2;
LABEL_427:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = *v352;
        *(this + 118) |= 0x1000000u;
        v184 = *(a2 + 1);
        if (*(a2 + 4) - v184 < 2 || *v184 != 217 || v184[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v184 + 2;
LABEL_432:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = *v352;
        *(this + 118) |= 0x2000000u;
        v185 = *(a2 + 1);
        v55 = *(a2 + 2);
        if (v55 - v185 < 2 || *v185 != 224 || v185[1] != 1)
        {
          continue;
        }

        v62 = (v185 + 2);
        *(a2 + 1) = v62;
LABEL_437:
        v352[0] = 0;
        if (v62 >= v55 || (v186 = *v62, (v186 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v186 = v352[0];
          v187 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          v187 = (v62 + 1);
          *(a2 + 1) = v187;
        }

        *(this + 36) = v186;
        *(this + 118) |= 0x4000000u;
        if (v55 - v187 < 2 || *v187 != 232 || v187[1] != 1)
        {
          continue;
        }

        v59 = (v187 + 2);
        *(a2 + 1) = v59;
LABEL_446:
        v352[0] = 0;
        if (v59 >= v55 || (v188 = *v59, (v188 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v188 = v352[0];
          v189 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          v189 = (v59 + 1);
          *(a2 + 1) = v189;
        }

        *(this + 37) = v188;
        *(this + 118) |= 0x8000000u;
        if (v55 - v189 < 2 || *v189 != 240 || v189[1] != 1)
        {
          continue;
        }

        v76 = (v189 + 2);
        *(a2 + 1) = v76;
LABEL_455:
        v352[0] = 0;
        if (v76 >= v55 || (v190 = *v76, (v190 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v190 = v352[0];
          v191 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          v191 = (v76 + 1);
          *(a2 + 1) = v191;
        }

        *(this + 134) = v190 != 0;
        *(this + 118) |= 0x10000000u;
        if (v55 - v191 < 2 || *v191 != 248 || v191[1] != 1)
        {
          continue;
        }

        v86 = (v191 + 2);
        *(a2 + 1) = v86;
LABEL_464:
        v352[0] = 0;
        if (v86 >= v55 || (v192 = *v86, (v192 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v192 = v352[0];
          v193 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          v193 = (v86 + 1);
          *(a2 + 1) = v193;
        }

        *(this + 135) = v192 != 0;
        *(this + 118) |= 0x20000000u;
        if (v55 - v193 < 2 || *v193 != 128 || v193[1] != 2)
        {
          continue;
        }

        v102 = (v193 + 2);
        *(a2 + 1) = v102;
LABEL_473:
        v352[0] = 0;
        if (v102 >= v55 || (v194 = *v102, (v194 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v194 = v352[0];
          v195 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          v195 = (v102 + 1);
          *(a2 + 1) = v195;
        }

        *(this + 164) = v194 != 0;
        *(this + 118) |= 0x40000000u;
        if (v55 - v195 < 2 || *v195 != 136 || v195[1] != 2)
        {
          continue;
        }

        v87 = (v195 + 2);
        *(a2 + 1) = v87;
LABEL_482:
        if (v87 >= v55 || (v196 = *v87, v196 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v197 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v196;
          v197 = (v87 + 1);
          *(a2 + 1) = v197;
        }

        *(this + 118) |= 0x80000000;
        if (v55 - v197 < 2 || *v197 != 144 || v197[1] != 2)
        {
          continue;
        }

        v56 = (v197 + 2);
        *(a2 + 1) = v56;
LABEL_491:
        v352[0] = 0;
        if (v56 >= v55 || (v198 = *v56, (v198 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v198 = v352[0];
          v199 = *(a2 + 1);
          v55 = *(a2 + 2);
        }

        else
        {
          v199 = (v56 + 1);
          *(a2 + 1) = v199;
        }

        *(this + 165) = v198 != 0;
        *(this + 119) |= 1u;
        if (v55 - v199 < 2 || *v199 != 152 || v199[1] != 2)
        {
          continue;
        }

        v68 = (v199 + 2);
        *(a2 + 1) = v68;
LABEL_500:
        v352[0] = 0;
        if (v68 >= v55 || (v200 = *v68, (v200 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v200 = v352[0];
        }

        else
        {
          *(a2 + 1) = v68 + 1;
        }

        if (v200 <= 4)
        {
          *(this + 119) |= 2u;
          *(this + 40) = v200;
        }

        v201 = *(a2 + 1);
        v48 = *(a2 + 2);
        if (v48 - v201 < 2 || *v201 != 160 || v201[1] != 2)
        {
          continue;
        }

        v105 = (v201 + 2);
        *(a2 + 1) = v105;
LABEL_511:
        if (v105 >= v48 || (v202 = *v105, v202 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v203 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v202;
          v203 = (v105 + 1);
          *(a2 + 1) = v203;
        }

        *(this + 119) |= 4u;
        if (v48 - v203 < 2 || *v203 != 168 || v203[1] != 2)
        {
          continue;
        }

        v122 = (v203 + 2);
        *(a2 + 1) = v122;
LABEL_520:
        v352[0] = 0;
        if (v122 >= v48 || (v204 = *v122, (v204 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v204 = v352[0];
          v205 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v205 = (v122 + 1);
          *(a2 + 1) = v205;
        }

        *(this + 166) = v204 != 0;
        *(this + 119) |= 8u;
        if (v48 - v205 < 2 || *v205 != 176 || v205[1] != 2)
        {
          continue;
        }

        v61 = (v205 + 2);
        *(a2 + 1) = v61;
LABEL_529:
        v352[0] = 0;
        if (v61 >= v48 || (v206 = *v61, (v206 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v206 = v352[0];
          v207 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v207 = (v61 + 1);
          *(a2 + 1) = v207;
        }

        *(this + 167) = v206 != 0;
        *(this + 119) |= 0x10u;
        if (v48 - v207 < 2 || *v207 != 184 || v207[1] != 2)
        {
          continue;
        }

        v101 = (v207 + 2);
        *(a2 + 1) = v101;
LABEL_538:
        v352[0] = 0;
        if (v101 >= v48 || (v208 = *v101, (v208 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v208 = v352[0];
          v209 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v209 = (v101 + 1);
          *(a2 + 1) = v209;
        }

        *(this + 43) = v208;
        *(this + 119) |= 0x20u;
        if (v48 - v209 < 2 || *v209 != 192 || v209[1] != 2)
        {
          continue;
        }

        v60 = (v209 + 2);
        *(a2 + 1) = v60;
LABEL_547:
        v352[0] = 0;
        if (v60 >= v48 || (v210 = *v60, (v210 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v210 = v352[0];
          v211 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v211 = (v60 + 1);
          *(a2 + 1) = v211;
        }

        *(this + 44) = v210;
        *(this + 119) |= 0x40u;
        if (v48 - v211 < 2 || *v211 != 200 || v211[1] != 2)
        {
          continue;
        }

        v57 = (v211 + 2);
        *(a2 + 1) = v57;
LABEL_556:
        if (v57 >= v48 || (v212 = *v57, v212 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
          if (!result)
          {
            return result;
          }

          v213 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          *(this + 45) = v212;
          v213 = (v57 + 1);
          *(a2 + 1) = v213;
        }

        *(this + 119) |= 0x80u;
        if (v48 - v213 < 2 || *v213 != 208 || v213[1] != 2)
        {
          continue;
        }

        v75 = (v213 + 2);
        *(a2 + 1) = v75;
LABEL_565:
        v352[0] = 0;
        if (v75 >= v48 || (v214 = *v75, (v214 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v214 = v352[0];
          v215 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v215 = (v75 + 1);
          *(a2 + 1) = v215;
        }

        *(this + 212) = v214 != 0;
        *(this + 119) |= 0x100u;
        if (v48 - v215 < 2 || *v215 != 216 || v215[1] != 2)
        {
          continue;
        }

        v91 = (v215 + 2);
        *(a2 + 1) = v91;
LABEL_574:
        if (v91 >= v48 || (v216 = *v91, v216 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
          if (!result)
          {
            return result;
          }

          v217 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          *(this + 46) = v216;
          v217 = (v91 + 1);
          *(a2 + 1) = v217;
        }

        *(this + 119) |= 0x200u;
        if (v48 - v217 < 2 || *v217 != 224 || v217[1] != 2)
        {
          continue;
        }

        v112 = (v217 + 2);
        *(a2 + 1) = v112;
LABEL_583:
        v352[0] = 0;
        if (v112 >= v48 || (v218 = *v112, (v218 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v218 = v352[0];
          v219 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v219 = (v112 + 1);
          *(a2 + 1) = v219;
        }

        *(this + 47) = v218;
        *(this + 119) |= 0x400u;
        if (v48 - v219 < 2 || *v219 != 232 || v219[1] != 2)
        {
          continue;
        }

        v49 = (v219 + 2);
        *(a2 + 1) = v49;
LABEL_592:
        v352[0] = 0;
        if (v49 >= v48 || (v220 = *v49, (v220 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v220 = v352[0];
          v221 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v221 = (v49 + 1);
          *(a2 + 1) = v221;
        }

        *(this + 48) = v220;
        *(this + 119) |= 0x800u;
        if (v48 - v221 < 2 || *v221 != 240 || v221[1] != 2)
        {
          continue;
        }

        v64 = (v221 + 2);
        *(a2 + 1) = v64;
LABEL_601:
        v352[0] = 0;
        if (v64 >= v48 || (v222 = *v64, (v222 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v222 = v352[0];
          v223 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v223 = (v64 + 1);
          *(a2 + 1) = v223;
        }

        *(this + 49) = v222;
        *(this + 119) |= 0x1000u;
        if (v48 - v223 < 2 || *v223 != 248 || v223[1] != 2)
        {
          continue;
        }

        v96 = (v223 + 2);
        *(a2 + 1) = v96;
LABEL_610:
        v352[0] = 0;
        if (v96 >= v48 || (v224 = *v96, (v224 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v224 = v352[0];
          v225 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v225 = (v96 + 1);
          *(a2 + 1) = v225;
        }

        *(this + 50) = v224;
        *(this + 119) |= 0x2000u;
        if (v48 - v225 < 2 || *v225 != 128 || v225[1] != 3)
        {
          continue;
        }

        v100 = (v225 + 2);
        *(a2 + 1) = v100;
LABEL_619:
        v352[0] = 0;
        if (v100 >= v48 || (v226 = *v100, (v226 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v226 = v352[0];
          v227 = *(a2 + 1);
          v48 = *(a2 + 2);
        }

        else
        {
          v227 = (v100 + 1);
          *(a2 + 1) = v227;
        }

        *(this + 51) = v226;
        *(this + 119) |= 0x4000u;
        if (v48 - v227 < 2 || *v227 != 136 || v227[1] != 3)
        {
          continue;
        }

        v124 = (v227 + 2);
        *(a2 + 1) = v124;
LABEL_628:
        v352[0] = 0;
        if (v124 >= v48 || (v228 = *v124, (v228 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v228 = v352[0];
        }

        else
        {
          *(a2 + 1) = v124 + 1;
        }

        if (v228 <= 4)
        {
          *(this + 119) |= 0x8000u;
          *(this + 52) = v228;
        }

        v229 = *(a2 + 1);
        v53 = *(a2 + 2);
        if (v53 - v229 < 2 || *v229 != 144 || v229[1] != 3)
        {
          continue;
        }

        v97 = (v229 + 2);
        *(a2 + 1) = v97;
LABEL_639:
        v352[0] = 0;
        if (v97 >= v53 || (v230 = *v97, (v230 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v230 = v352[0];
          v231 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          v231 = (v97 + 1);
          *(a2 + 1) = v231;
        }

        *(this + 213) = v230 != 0;
        *(this + 119) |= 0x10000u;
        if (v53 - v231 < 2 || *v231 != 152 || v231[1] != 3)
        {
          continue;
        }

        v54 = (v231 + 2);
        *(a2 + 1) = v54;
LABEL_648:
        v352[0] = 0;
        if (v54 >= v53 || (v232 = *v54, (v232 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
          if (!result)
          {
            return result;
          }

          v232 = v352[0];
          v233 = *(a2 + 1);
          v53 = *(a2 + 2);
        }

        else
        {
          v233 = (v54 + 1);
          *(a2 + 1) = v233;
        }

        *(this + 214) = v232 != 0;
        *(this + 119) |= 0x20000u;
        if (v53 - v233 < 2 || *v233 != 161 || v233[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v233 + 2;
LABEL_657:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 27) = *v352;
        *(this + 119) |= 0x40000u;
        v234 = *(a2 + 1);
        if (*(a2 + 4) - v234 < 2 || *v234 != 169 || v234[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v234 + 2;
LABEL_662:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = *v352;
        *(this + 119) |= 0x80000u;
        v235 = *(a2 + 1);
        if (*(a2 + 4) - v235 < 2 || *v235 != 177 || v235[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v235 + 2;
LABEL_667:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 29) = *v352;
        *(this + 119) |= 0x100000u;
        v236 = *(a2 + 1);
        if (*(a2 + 4) - v236 < 2 || *v236 != 185 || v236[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v236 + 2;
LABEL_672:
        *v352 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352) & 1) == 0)
        {
          return 0;
        }

        *(this + 30) = *v352;
        *(this + 119) |= 0x200000u;
        v237 = *(a2 + 1);
        if (*(a2 + 4) - v237 < 2 || *v237 != 193 || v237[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v237 + 2;
LABEL_677:
        *v352 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v352))
        {
          *(this + 31) = *v352;
          *(this + 119) |= 0x400000u;
          v238 = *(a2 + 1);
          v110 = *(a2 + 2);
          if (v110 - v238 >= 2 && *v238 == 200 && v238[1] == 3)
          {
            v111 = (v238 + 2);
            *(a2 + 1) = v111;
LABEL_682:
            v352[0] = 0;
            if (v111 >= v110 || (v239 = *v111, (v239 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
              if (!result)
              {
                return result;
              }

              v239 = v352[0];
            }

            else
            {
              *(a2 + 1) = v111 + 1;
            }

            if (v239 <= 2)
            {
              *(this + 119) |= 0x800000u;
              *(this + 64) = v239;
            }

            v240 = *(a2 + 1);
            v51 = *(a2 + 2);
            if (v51 - v240 >= 2 && *v240 == 208 && v240[1] == 3)
            {
              v52 = (v240 + 2);
              *(a2 + 1) = v52;
LABEL_693:
              v352[0] = 0;
              if (v52 >= v51 || (v241 = *v52, (v241 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                if (!result)
                {
                  return result;
                }

                v241 = v352[0];
              }

              else
              {
                *(a2 + 1) = v52 + 1;
              }

              if (v241 <= 7 && v241 != 5)
              {
                awd::metrics::LocationEmergencySessionStatistics::set_envtype(this, v241);
              }

              v243 = *(a2 + 1);
              v114 = *(a2 + 2);
              if (v114 - v243 >= 2 && *v243 == 216 && v243[1] == 3)
              {
                v117 = (v243 + 2);
                *(a2 + 1) = v117;
LABEL_707:
                v352[0] = 0;
                if (v117 >= v114 || (v244 = *v117, (v244 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                  if (!result)
                  {
                    return result;
                  }

                  v244 = v352[0];
                  v245 = *(a2 + 1);
                  v114 = *(a2 + 2);
                }

                else
                {
                  v245 = (v117 + 1);
                  *(a2 + 1) = v245;
                }

                *(this + 215) = v244 != 0;
                *(this + 119) |= 0x2000000u;
                if (v114 - v245 >= 2 && *v245 == 224 && v245[1] == 3)
                {
                  v115 = (v245 + 2);
                  *(a2 + 1) = v115;
LABEL_716:
                  v352[0] = 0;
                  if (v115 >= v114 || (v246 = *v115, (v246 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                    if (!result)
                    {
                      return result;
                    }

                    v246 = v352[0];
                  }

                  else
                  {
                    *(a2 + 1) = v115 + 1;
                  }

                  if (v246 <= 0xB)
                  {
                    *(this + 119) |= 0x4000000u;
                    *(this + 66) = v246;
                  }

                  v247 = *(a2 + 1);
                  v35 = *(a2 + 2);
                  if (v35 - v247 >= 2 && *v247 == 232 && v247[1] == 3)
                  {
                    v36 = (v247 + 2);
                    *(a2 + 1) = v36;
LABEL_727:
                    v352[0] = 0;
                    if (v36 >= v35 || (v248 = *v36, (v248 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                      if (!result)
                      {
                        return result;
                      }

                      v248 = v352[0];
                    }

                    else
                    {
                      *(a2 + 1) = v36 + 1;
                    }

                    if (v248 <= 9)
                    {
                      *(this + 119) |= 0x8000000u;
                      *(this + 67) = v248;
                    }

                    v249 = *(a2 + 1);
                    v125 = *(a2 + 2);
                    if (v125 - v249 >= 2 && *v249 == 240 && v249[1] == 3)
                    {
                      v126 = (v249 + 2);
                      *(a2 + 1) = v126;
LABEL_738:
                      v352[0] = 0;
                      if (v126 >= v125 || (v250 = *v126, (v250 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                        if (!result)
                        {
                          return result;
                        }

                        v250 = v352[0];
                      }

                      else
                      {
                        *(a2 + 1) = v126 + 1;
                      }

                      if (v250 <= 2)
                      {
                        *(this + 119) |= 0x10000000u;
                        *(this + 68) = v250;
                      }

                      v251 = *(a2 + 1);
                      v131 = *(a2 + 2);
                      if (v131 - v251 >= 2 && *v251 == 248 && v251[1] == 3)
                      {
                        v132 = (v251 + 2);
                        *(a2 + 1) = v132;
LABEL_749:
                        v352[0] = 0;
                        if (v132 >= v131 || (v252 = *v132, (v252 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                          if (!result)
                          {
                            return result;
                          }

                          v252 = v352[0];
                          v253 = *(a2 + 1);
                          v131 = *(a2 + 2);
                        }

                        else
                        {
                          v253 = (v132 + 1);
                          *(a2 + 1) = v253;
                        }

                        *(this + 69) = v252;
                        v113 = *(this + 119) | 0x20000000;
                        *(this + 119) = v113;
                        if (v131 - v253 >= 2 && *v253 == 130 && v253[1] == 4)
                        {
                          *(a2 + 1) = v253 + 2;
LABEL_758:
                          *(this + 119) = v113 | 0x40000000;
                          if (*(this + 35) == MEMORY[0x29EDC9758])
                          {
                            operator new();
                          }

                          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                          if (!result)
                          {
                            return result;
                          }

                          v254 = *(a2 + 1);
                          if (*(a2 + 4) - v254 >= 2 && *v254 == 138 && v254[1] == 4)
                          {
                            *(a2 + 1) = v254 + 2;
LABEL_765:
                            *(this + 119) |= 0x80000000;
                            if (*(this + 36) == MEMORY[0x29EDC9758])
                            {
                              operator new();
                            }

                            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                            if (!result)
                            {
                              return result;
                            }

                            v255 = *(a2 + 1);
                            v26 = *(a2 + 2);
                            if (v26 - v255 >= 2 && *v255 == 144 && v255[1] == 4)
                            {
                              v65 = (v255 + 2);
                              *(a2 + 1) = v65;
LABEL_772:
                              if (v65 >= v26 || (v256 = *v65, (v256 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
                                if (!result)
                                {
                                  return result;
                                }

                                v257 = *(a2 + 1);
                                v26 = *(a2 + 2);
                              }

                              else
                              {
                                *v4 = v256;
                                v257 = (v65 + 1);
                                *(a2 + 1) = v257;
                              }

                              *(this + 120) |= 1u;
                              if (v26 - v257 >= 2 && *v257 == 152 && v257[1] == 4)
                              {
                                v120 = (v257 + 2);
                                *(a2 + 1) = v120;
LABEL_781:
                                if (v120 >= v26 || (v258 = *v120, (v258 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v259 = *(a2 + 1);
                                  v26 = *(a2 + 2);
                                }

                                else
                                {
                                  *v5 = v258;
                                  v259 = (v120 + 1);
                                  *(a2 + 1) = v259;
                                }

                                *(this + 120) |= 2u;
                                if (v26 - v259 >= 2 && *v259 == 160 && v259[1] == 4)
                                {
                                  v37 = (v259 + 2);
                                  *(a2 + 1) = v37;
LABEL_790:
                                  v352[0] = 0;
                                  if (v37 >= v26 || (v260 = *v37, (v260 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v260 = v352[0];
                                    v261 = *(a2 + 1);
                                    v26 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    v261 = (v37 + 1);
                                    *(a2 + 1) = v261;
                                  }

                                  *(this + 304) = v260 != 0;
                                  *(this + 120) |= 4u;
                                  if (v26 - v261 >= 2 && *v261 == 168 && v261[1] == 4)
                                  {
                                    v123 = (v261 + 2);
                                    *(a2 + 1) = v123;
LABEL_799:
                                    v352[0] = 0;
                                    if (v123 >= v26 || (v262 = *v123, (v262 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v262 = v352[0];
                                      v263 = *(a2 + 1);
                                      v26 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      v263 = (v123 + 1);
                                      *(a2 + 1) = v263;
                                    }

                                    *(this + 305) = v262 != 0;
                                    *(this + 120) |= 8u;
                                    if (v26 - v263 >= 2 && *v263 == 176 && v263[1] == 4)
                                    {
                                      v129 = (v263 + 2);
                                      *(a2 + 1) = v129;
LABEL_808:
                                      v352[0] = 0;
                                      if (v129 >= v26 || (v264 = *v129, (v264 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v264 = v352[0];
                                        v265 = *(a2 + 1);
                                        v26 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        v265 = (v129 + 1);
                                        *(a2 + 1) = v265;
                                      }

                                      *(this + 306) = v264 != 0;
                                      *(this + 120) |= 0x10u;
                                      if (v26 - v265 >= 2 && *v265 == 184 && v265[1] == 4)
                                      {
                                        v80 = (v265 + 2);
                                        *(a2 + 1) = v80;
LABEL_817:
                                        v352[0] = 0;
                                        if (v80 >= v26 || (v266 = *v80, (v266 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v266 = v352[0];
                                          v267 = *(a2 + 1);
                                          v26 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          v267 = (v80 + 1);
                                          *(a2 + 1) = v267;
                                        }

                                        *(this + 77) = v266;
                                        *(this + 120) |= 0x20u;
                                        if (v26 - v267 >= 2 && *v267 == 192 && v267[1] == 4)
                                        {
                                          v134 = (v267 + 2);
                                          *(a2 + 1) = v134;
LABEL_826:
                                          v352[0] = 0;
                                          if (v134 >= v26 || (v268 = *v134, (v268 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v268 = v352[0];
                                            v269 = *(a2 + 1);
                                            v26 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v269 = (v134 + 1);
                                            *(a2 + 1) = v269;
                                          }

                                          *(this + 78) = v268;
                                          *(this + 120) |= 0x40u;
                                          if (v26 - v269 >= 2 && *v269 == 200 && v269[1] == 4)
                                          {
                                            v116 = (v269 + 2);
                                            *(a2 + 1) = v116;
LABEL_835:
                                            v352[0] = 0;
                                            if (v116 >= v26 || (v270 = *v116, (v270 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v270 = v352[0];
                                              v271 = *(a2 + 1);
                                              v26 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v271 = (v116 + 1);
                                              *(a2 + 1) = v271;
                                            }

                                            *(this + 79) = v270;
                                            *(this + 120) |= 0x80u;
                                            if (v26 - v271 >= 2 && *v271 == 208 && v271[1] == 4)
                                            {
                                              v39 = (v271 + 2);
                                              *(a2 + 1) = v39;
LABEL_844:
                                              if (v39 >= v26 || (v272 = *v39, (v272 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v273 = *(a2 + 1);
                                                v26 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v6 = v272;
                                                v273 = (v39 + 1);
                                                *(a2 + 1) = v273;
                                              }

                                              *(this + 120) |= 0x100u;
                                              if (v26 - v273 >= 2 && *v273 == 216 && v273[1] == 4)
                                              {
                                                v63 = (v273 + 2);
                                                *(a2 + 1) = v63;
LABEL_853:
                                                if (v63 >= v26 || (v274 = *v63, (v274 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v275 = *(a2 + 1);
                                                  v26 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v7 = v274;
                                                  v275 = (v63 + 1);
                                                  *(a2 + 1) = v275;
                                                }

                                                *(this + 120) |= 0x200u;
                                                if (v26 - v275 >= 2 && *v275 == 224 && v275[1] == 4)
                                                {
                                                  v98 = (v275 + 2);
                                                  *(a2 + 1) = v98;
LABEL_862:
                                                  v352[0] = 0;
                                                  if (v98 >= v26 || (v276 = *v98, (v276 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v276 = v352[0];
                                                    v277 = *(a2 + 1);
                                                    v26 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    v277 = (v98 + 1);
                                                    *(a2 + 1) = v277;
                                                  }

                                                  *(this + 307) = v276 != 0;
                                                  *(this + 120) |= 0x400u;
                                                  if (v26 - v277 >= 2 && *v277 == 232 && v277[1] == 4)
                                                  {
                                                    v44 = (v277 + 2);
                                                    *(a2 + 1) = v44;
LABEL_871:
                                                    v352[0] = 0;
                                                    if (v44 >= v26 || (v278 = *v44, (v278 & 0x80000000) != 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v278 = v352[0];
                                                      v279 = *(a2 + 1);
                                                      v26 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      v279 = (v44 + 1);
                                                      *(a2 + 1) = v279;
                                                    }

                                                    *(this + 328) = v278 != 0;
                                                    *(this + 120) |= 0x800u;
                                                    if (v26 - v279 >= 2 && *v279 == 240 && v279[1] == 4)
                                                    {
                                                      v137 = (v279 + 2);
                                                      *(a2 + 1) = v137;
LABEL_880:
                                                      v352[0] = 0;
                                                      if (v137 >= v26 || (v280 = *v137, (v280 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v280 = v352[0];
                                                        v281 = *(a2 + 1);
                                                        v26 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        v281 = (v137 + 1);
                                                        *(a2 + 1) = v281;
                                                      }

                                                      *(this + 329) = v280 != 0;
                                                      *(this + 120) |= 0x1000u;
                                                      if (v26 - v281 >= 2 && *v281 == 248 && v281[1] == 4)
                                                      {
                                                        v34 = (v281 + 2);
                                                        *(a2 + 1) = v34;
LABEL_889:
                                                        v352[0] = 0;
                                                        if (v34 >= v26 || (v282 = *v34, (v282 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v282 = v352[0];
                                                          v283 = *(a2 + 1);
                                                          v26 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          v283 = (v34 + 1);
                                                          *(a2 + 1) = v283;
                                                        }

                                                        *(this + 330) = v282 != 0;
                                                        *(this + 120) |= 0x2000u;
                                                        if (v26 - v283 >= 2 && *v283 == 128 && v283[1] == 5)
                                                        {
                                                          v67 = (v283 + 2);
                                                          *(a2 + 1) = v67;
LABEL_898:
                                                          v352[0] = 0;
                                                          if (v67 >= v26 || (v284 = *v67, (v284 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v284 = v352[0];
                                                            v285 = *(a2 + 1);
                                                            v26 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            v285 = (v67 + 1);
                                                            *(a2 + 1) = v285;
                                                          }

                                                          *(this + 331) = v284 != 0;
                                                          *(this + 120) |= 0x4000u;
                                                          if (v26 - v285 >= 2 && *v285 == 136 && v285[1] == 5)
                                                          {
                                                            v27 = (v285 + 2);
                                                            *(a2 + 1) = v27;
LABEL_907:
                                                            v352[0] = 0;
                                                            if (v27 >= v26 || (v286 = *v27, (v286 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v286 = v352[0];
                                                              v287 = *(a2 + 1);
                                                              v26 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              v287 = (v27 + 1);
                                                              *(a2 + 1) = v287;
                                                            }

                                                            *(this + 83) = v286;
                                                            *(this + 120) |= 0x8000u;
                                                            if (v26 - v287 >= 2 && *v287 == 144 && v287[1] == 5)
                                                            {
                                                              v31 = (v287 + 2);
                                                              *(a2 + 1) = v31;
LABEL_916:
                                                              v352[0] = 0;
                                                              if (v31 >= v26 || (v288 = *v31, (v288 & 0x80000000) != 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v288 = v352[0];
                                                                v289 = *(a2 + 1);
                                                                v26 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                v289 = (v31 + 1);
                                                                *(a2 + 1) = v289;
                                                              }

                                                              *(this + 84) = v288;
                                                              *(this + 120) |= 0x10000u;
                                                              if (v26 - v289 >= 2 && *v289 == 152 && v289[1] == 5)
                                                              {
                                                                v58 = (v289 + 2);
                                                                *(a2 + 1) = v58;
LABEL_925:
                                                                v352[0] = 0;
                                                                if (v58 >= v26 || (v290 = *v58, (v290 & 0x80000000) != 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v290 = v352[0];
                                                                }

                                                                else
                                                                {
                                                                  *(a2 + 1) = v58 + 1;
                                                                }

                                                                if (v290 <= 7)
                                                                {
                                                                  *(this + 120) |= 0x20000u;
                                                                  *(this + 85) = v290;
                                                                }

                                                                v291 = *(a2 + 1);
                                                                v24 = *(a2 + 2);
                                                                if (v24 - v291 >= 2 && *v291 == 160 && v291[1] == 5)
                                                                {
                                                                  v99 = (v291 + 2);
                                                                  *(a2 + 1) = v99;
LABEL_936:
                                                                  v352[0] = 0;
                                                                  if (v99 >= v24 || (v292 = *v99, (v292 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v292 = v352[0];
                                                                    v293 = *(a2 + 1);
                                                                    v24 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    v293 = (v99 + 1);
                                                                    *(a2 + 1) = v293;
                                                                  }

                                                                  *(this + 344) = v292 != 0;
                                                                  *(this + 120) |= 0x40000u;
                                                                  if (v24 - v293 >= 2 && *v293 == 168 && v293[1] == 5)
                                                                  {
                                                                    v38 = (v293 + 2);
                                                                    *(a2 + 1) = v38;
LABEL_945:
                                                                    v352[0] = 0;
                                                                    if (v38 >= v24 || (v294 = *v38, (v294 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v294 = v352[0];
                                                                      v295 = *(a2 + 1);
                                                                      v24 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      v295 = (v38 + 1);
                                                                      *(a2 + 1) = v295;
                                                                    }

                                                                    *(this + 345) = v294 != 0;
                                                                    *(this + 120) |= 0x80000u;
                                                                    if (v24 - v295 >= 2 && *v295 == 176 && v295[1] == 5)
                                                                    {
                                                                      v50 = (v295 + 2);
                                                                      *(a2 + 1) = v50;
LABEL_954:
                                                                      v352[0] = 0;
                                                                      if (v50 >= v24 || (v296 = *v50, (v296 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v296 = v352[0];
                                                                        v297 = *(a2 + 1);
                                                                        v24 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        v297 = (v50 + 1);
                                                                        *(a2 + 1) = v297;
                                                                      }

                                                                      *(this + 346) = v296 != 0;
                                                                      *(this + 120) |= 0x100000u;
                                                                      if (v24 - v297 >= 2 && *v297 == 184 && v297[1] == 5)
                                                                      {
                                                                        v25 = (v297 + 2);
                                                                        *(a2 + 1) = v25;
LABEL_963:
                                                                        v352[0] = 0;
                                                                        if (v25 >= v24 || (v298 = *v25, (v298 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v298 = v352[0];
                                                                        }

                                                                        else
                                                                        {
                                                                          *(a2 + 1) = v25 + 1;
                                                                        }

                                                                        if (v298 <= 2)
                                                                        {
                                                                          *(this + 120) |= 0x200000u;
                                                                          *(this + 87) = v298;
                                                                        }

                                                                        v299 = *(a2 + 1);
                                                                        v41 = *(a2 + 2);
                                                                        if (v41 - v299 >= 2 && *v299 == 192 && v299[1] == 5)
                                                                        {
                                                                          v130 = (v299 + 2);
                                                                          *(a2 + 1) = v130;
LABEL_974:
                                                                          if (v130 >= v41 || (v300 = *v130, (v300 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v301 = *(a2 + 1);
                                                                            v41 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v8 = v300;
                                                                            v301 = (v130 + 1);
                                                                            *(a2 + 1) = v301;
                                                                          }

                                                                          *(this + 120) |= 0x400000u;
                                                                          if (v41 - v301 >= 2 && *v301 == 200 && v301[1] == 5)
                                                                          {
                                                                            v66 = (v301 + 2);
                                                                            *(a2 + 1) = v66;
LABEL_983:
                                                                            v352[0] = 0;
                                                                            if (v66 >= v41 || (v302 = *v66, (v302 & 0x80000000) != 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v302 = v352[0];
                                                                              v303 = *(a2 + 1);
                                                                              v41 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              v303 = (v66 + 1);
                                                                              *(a2 + 1) = v303;
                                                                            }

                                                                            *(this + 89) = v302;
                                                                            *(this + 120) |= 0x800000u;
                                                                            if (v41 - v303 >= 2 && *v303 == 208 && v303[1] == 5)
                                                                            {
                                                                              v42 = (v303 + 2);
                                                                              *(a2 + 1) = v42;
LABEL_992:
                                                                              v352[0] = 0;
                                                                              if (v42 >= v41 || (v304 = *v42, (v304 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v304 = v352[0];
                                                                                v305 = *(a2 + 1);
                                                                                v41 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                v305 = (v42 + 1);
                                                                                *(a2 + 1) = v305;
                                                                              }

                                                                              *(this + 90) = v304;
                                                                              *(this + 120) |= 0x1000000u;
                                                                              if (v41 - v305 >= 2 && *v305 == 216 && v305[1] == 5)
                                                                              {
                                                                                v106 = (v305 + 2);
                                                                                *(a2 + 1) = v106;
LABEL_1001:
                                                                                v352[0] = 0;
                                                                                if (v106 >= v41 || (v306 = *v106, (v306 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v306 = v352[0];
                                                                                }

                                                                                else
                                                                                {
                                                                                  *(a2 + 1) = v106 + 1;
                                                                                }

                                                                                if (v306 <= 8)
                                                                                {
                                                                                  *(this + 120) |= 0x2000000u;
                                                                                  *(this + 91) = v306;
                                                                                }

                                                                                v307 = *(a2 + 1);
                                                                                v28 = *(a2 + 2);
                                                                                if (v28 - v307 >= 2 && *v307 == 224 && v307[1] == 5)
                                                                                {
                                                                                  v29 = (v307 + 2);
                                                                                  *(a2 + 1) = v29;
LABEL_1012:
                                                                                  v352[0] = 0;
                                                                                  if (v29 >= v28 || (v308 = *v29, (v308 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v308 = v352[0];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *(a2 + 1) = v29 + 1;
                                                                                  }

                                                                                  if (v308 <= 3)
                                                                                  {
                                                                                    *(this + 120) |= 0x4000000u;
                                                                                    *(this + 92) = v308;
                                                                                  }

                                                                                  v309 = *(a2 + 1);
                                                                                  v140 = *(a2 + 2);
                                                                                  if (v140 - v309 >= 2 && *v309 == 232 && v309[1] == 5)
                                                                                  {
                                                                                    v141 = (v309 + 2);
                                                                                    *(a2 + 1) = v141;
LABEL_1023:
                                                                                    v352[0] = 0;
                                                                                    if (v141 >= v140 || (v310 = *v141, (v310 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v310 = v352[0];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *(a2 + 1) = v141 + 1;
                                                                                    }

                                                                                    if (v310 <= 3)
                                                                                    {
                                                                                      *(this + 120) |= 0x8000000u;
                                                                                      *(this + 93) = v310;
                                                                                    }

                                                                                    v311 = *(a2 + 1);
                                                                                    v22 = *(a2 + 2);
                                                                                    if (v22 - v311 >= 2 && *v311 == 240 && v311[1] == 5)
                                                                                    {
                                                                                      v23 = (v311 + 2);
                                                                                      *(a2 + 1) = v23;
LABEL_1034:
                                                                                      v352[0] = 0;
                                                                                      if (v23 >= v22 || (v312 = *v23, (v312 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v312 = v352[0];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        *(a2 + 1) = v23 + 1;
                                                                                      }

                                                                                      if (v312 <= 3)
                                                                                      {
                                                                                        *(this + 120) |= 0x10000000u;
                                                                                        *(this + 94) = v312;
                                                                                      }

                                                                                      v313 = *(a2 + 1);
                                                                                      v32 = *(a2 + 2);
                                                                                      if (v32 - v313 >= 2 && *v313 == 248 && v313[1] == 5)
                                                                                      {
                                                                                        v33 = (v313 + 2);
                                                                                        *(a2 + 1) = v33;
LABEL_1045:
                                                                                        v352[0] = 0;
                                                                                        if (v33 >= v32 || (v314 = *v33, (v314 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v314 = v352[0];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *(a2 + 1) = v33 + 1;
                                                                                        }

                                                                                        if (v314 <= 3)
                                                                                        {
                                                                                          *(this + 120) |= 0x20000000u;
                                                                                          *(this + 95) = v314;
                                                                                        }

                                                                                        v315 = *(a2 + 1);
                                                                                        v45 = *(a2 + 2);
                                                                                        if (v45 - v315 >= 2 && *v315 == 128 && v315[1] == 6)
                                                                                        {
                                                                                          v46 = (v315 + 2);
                                                                                          *(a2 + 1) = v46;
LABEL_1056:
                                                                                          v352[0] = 0;
                                                                                          if (v46 >= v45 || (v316 = *v46, (v316 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v316 = v352[0];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            *(a2 + 1) = v46 + 1;
                                                                                          }

                                                                                          if (v316 <= 3)
                                                                                          {
                                                                                            *(this + 120) |= 0x40000000u;
                                                                                            *(this + 96) = v316;
                                                                                          }

                                                                                          v317 = *(a2 + 1);
                                                                                          v20 = *(a2 + 2);
                                                                                          if (v20 - v317 >= 2 && *v317 == 136 && v317[1] == 6)
                                                                                          {
                                                                                            v21 = (v317 + 2);
                                                                                            *(a2 + 1) = v21;
LABEL_1067:
                                                                                            v352[0] = 0;
                                                                                            if (v21 >= v20 || (v318 = *v21, (v318 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v318 = v352[0];
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *(a2 + 1) = v21 + 1;
                                                                                            }

                                                                                            if (v318 <= 3)
                                                                                            {
                                                                                              *(this + 120) |= 0x80000000;
                                                                                              *(this + 97) = v318;
                                                                                            }

                                                                                            v319 = *(a2 + 1);
                                                                                            v135 = *(a2 + 2);
                                                                                            if (v135 - v319 >= 2 && *v319 == 144 && v319[1] == 6)
                                                                                            {
                                                                                              v136 = (v319 + 2);
                                                                                              *(a2 + 1) = v136;
LABEL_1078:
                                                                                              v352[0] = 0;
                                                                                              if (v136 >= v135 || (v320 = *v136, (v320 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v320 = v352[0];
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                *(a2 + 1) = v136 + 1;
                                                                                              }

                                                                                              if (v320 <= 3)
                                                                                              {
                                                                                                *(this + 121) |= 1u;
                                                                                                *(this + 98) = v320;
                                                                                              }

                                                                                              v321 = *(a2 + 1);
                                                                                              v142 = *(a2 + 2);
                                                                                              if (v142 - v321 >= 2 && *v321 == 152 && v321[1] == 6)
                                                                                              {
                                                                                                v143 = (v321 + 2);
                                                                                                *(a2 + 1) = v143;
LABEL_1089:
                                                                                                v352[0] = 0;
                                                                                                if (v143 >= v142 || (v322 = *v143, (v322 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v322 = v352[0];
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  *(a2 + 1) = v143 + 1;
                                                                                                }

                                                                                                if (v322 <= 3)
                                                                                                {
                                                                                                  *(this + 121) |= 2u;
                                                                                                  *(this + 99) = v322;
                                                                                                }

                                                                                                v323 = *(a2 + 1);
                                                                                                v127 = *(a2 + 2);
                                                                                                if (v127 - v323 >= 2 && *v323 == 160 && v323[1] == 6)
                                                                                                {
                                                                                                  v128 = (v323 + 2);
                                                                                                  *(a2 + 1) = v128;
LABEL_1100:
                                                                                                  v352[0] = 0;
                                                                                                  if (v128 >= v127 || (v324 = *v128, (v324 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v324 = v352[0];
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    *(a2 + 1) = v128 + 1;
                                                                                                  }

                                                                                                  if (v324 <= 3)
                                                                                                  {
                                                                                                    *(this + 121) |= 4u;
                                                                                                    *(this + 100) = v324;
                                                                                                  }

                                                                                                  v325 = *(a2 + 1);
                                                                                                  v18 = *(a2 + 2);
                                                                                                  if (v18 - v325 >= 2 && *v325 == 168 && v325[1] == 6)
                                                                                                  {
                                                                                                    v19 = (v325 + 2);
                                                                                                    *(a2 + 1) = v19;
LABEL_1111:
                                                                                                    v352[0] = 0;
                                                                                                    if (v19 >= v18 || (v326 = *v19, (v326 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v326 = v352[0];
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *(a2 + 1) = v19 + 1;
                                                                                                    }

                                                                                                    if (v326 <= 3)
                                                                                                    {
                                                                                                      *(this + 121) |= 8u;
                                                                                                      *(this + 101) = v326;
                                                                                                    }

                                                                                                    v327 = *(a2 + 1);
                                                                                                    v138 = *(a2 + 2);
                                                                                                    if (v138 - v327 >= 2 && *v327 == 176 && v327[1] == 6)
                                                                                                    {
                                                                                                      v139 = (v327 + 2);
                                                                                                      *(a2 + 1) = v139;
LABEL_1122:
                                                                                                      v352[0] = 0;
                                                                                                      if (v139 >= v138 || (v328 = *v139, (v328 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v328 = v352[0];
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *(a2 + 1) = v139 + 1;
                                                                                                      }

                                                                                                      if (v328 <= 3)
                                                                                                      {
                                                                                                        *(this + 121) |= 0x10u;
                                                                                                        *(this + 104) = v328;
                                                                                                      }

                                                                                                      v329 = *(a2 + 1);
                                                                                                      if (*(a2 + 4) - v329 >= 2 && *v329 == 186 && v329[1] == 6)
                                                                                                      {
                                                                                                        *(a2 + 1) = v329 + 2;
LABEL_1133:
                                                                                                        *(this + 121) |= 0x20u;
                                                                                                        if (*(this + 51) == MEMORY[0x29EDC9758])
                                                                                                        {
                                                                                                          operator new();
                                                                                                        }

                                                                                                        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v330 = *(a2 + 1);
                                                                                                        if (*(a2 + 4) - v330 >= 2 && *v330 == 194 && v330[1] == 6)
                                                                                                        {
                                                                                                          *(a2 + 1) = v330 + 2;
LABEL_1140:
                                                                                                          *(this + 121) |= 0x40u;
                                                                                                          if (*(this + 53) == MEMORY[0x29EDC9758])
                                                                                                          {
                                                                                                            operator new();
                                                                                                          }

                                                                                                          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                                                                                          if (!result)
                                                                                                          {
                                                                                                            return result;
                                                                                                          }

                                                                                                          v331 = *(a2 + 1);
                                                                                                          v16 = *(a2 + 2);
                                                                                                          if (v16 - v331 >= 2 && *v331 == 200 && v331[1] == 6)
                                                                                                          {
                                                                                                            v43 = (v331 + 2);
                                                                                                            *(a2 + 1) = v43;
LABEL_1147:
                                                                                                            v352[0] = 0;
                                                                                                            if (v43 >= v16 || (v332 = *v43, (v332 & 0x80000000) != 0))
                                                                                                            {
                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                              if (!result)
                                                                                                              {
                                                                                                                return result;
                                                                                                              }

                                                                                                              v332 = v352[0];
                                                                                                              v333 = *(a2 + 1);
                                                                                                              v16 = *(a2 + 2);
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v333 = (v43 + 1);
                                                                                                              *(a2 + 1) = v333;
                                                                                                            }

                                                                                                            *(this + 105) = v332;
                                                                                                            *(this + 121) |= 0x80u;
                                                                                                            if (v16 - v333 >= 2 && *v333 == 208 && v333[1] == 6)
                                                                                                            {
                                                                                                              v133 = (v333 + 2);
                                                                                                              *(a2 + 1) = v133;
LABEL_1156:
                                                                                                              v352[0] = 0;
                                                                                                              if (v133 >= v16 || (v334 = *v133, (v334 & 0x80000000) != 0))
                                                                                                              {
                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                                if (!result)
                                                                                                                {
                                                                                                                  return result;
                                                                                                                }

                                                                                                                v334 = v352[0];
                                                                                                                v335 = *(a2 + 1);
                                                                                                                v16 = *(a2 + 2);
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v335 = (v133 + 1);
                                                                                                                *(a2 + 1) = v335;
                                                                                                              }

                                                                                                              *(this + 108) = v334;
                                                                                                              *(this + 121) |= 0x100u;
                                                                                                              if (v16 - v335 >= 2 && *v335 == 216 && v335[1] == 6)
                                                                                                              {
                                                                                                                v30 = (v335 + 2);
                                                                                                                *(a2 + 1) = v30;
LABEL_1165:
                                                                                                                v352[0] = 0;
                                                                                                                if (v30 >= v16 || (v336 = *v30, (v336 & 0x80000000) != 0))
                                                                                                                {
                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                                  if (!result)
                                                                                                                  {
                                                                                                                    return result;
                                                                                                                  }

                                                                                                                  v336 = v352[0];
                                                                                                                  v337 = *(a2 + 1);
                                                                                                                  v16 = *(a2 + 2);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v337 = (v30 + 1);
                                                                                                                  *(a2 + 1) = v337;
                                                                                                                }

                                                                                                                *(this + 109) = v336;
                                                                                                                *(this + 121) |= 0x200u;
                                                                                                                if (v16 - v337 >= 2 && *v337 == 224 && v337[1] == 6)
                                                                                                                {
                                                                                                                  v107 = (v337 + 2);
                                                                                                                  *(a2 + 1) = v107;
LABEL_1174:
                                                                                                                  v352[0] = 0;
                                                                                                                  if (v107 >= v16 || (v338 = *v107, (v338 & 0x80000000) != 0))
                                                                                                                  {
                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                                    if (!result)
                                                                                                                    {
                                                                                                                      return result;
                                                                                                                    }

                                                                                                                    v338 = v352[0];
                                                                                                                    v339 = *(a2 + 1);
                                                                                                                    v16 = *(a2 + 2);
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v339 = (v107 + 1);
                                                                                                                    *(a2 + 1) = v339;
                                                                                                                  }

                                                                                                                  *(this + 110) = v338;
                                                                                                                  *(this + 121) |= 0x400u;
                                                                                                                  if (v16 - v339 >= 2 && *v339 == 232 && v339[1] == 6)
                                                                                                                  {
                                                                                                                    v89 = (v339 + 2);
                                                                                                                    *(a2 + 1) = v89;
LABEL_1183:
                                                                                                                    v352[0] = 0;
                                                                                                                    if (v89 >= v16 || (v340 = *v89, (v340 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                                      if (!result)
                                                                                                                      {
                                                                                                                        return result;
                                                                                                                      }

                                                                                                                      v340 = v352[0];
                                                                                                                      v341 = *(a2 + 1);
                                                                                                                      v16 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v341 = (v89 + 1);
                                                                                                                      *(a2 + 1) = v341;
                                                                                                                    }

                                                                                                                    *(this + 111) = v340;
                                                                                                                    *(this + 121) |= 0x800u;
                                                                                                                    if (v16 - v341 >= 2 && *v341 == 240 && v341[1] == 6)
                                                                                                                    {
                                                                                                                      v47 = (v341 + 2);
                                                                                                                      *(a2 + 1) = v47;
LABEL_1192:
                                                                                                                      v352[0] = 0;
                                                                                                                      if (v47 >= v16 || (v342 = *v47, (v342 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                                        if (!result)
                                                                                                                        {
                                                                                                                          return result;
                                                                                                                        }

                                                                                                                        v342 = v352[0];
                                                                                                                        v343 = *(a2 + 1);
                                                                                                                        v16 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v343 = (v47 + 1);
                                                                                                                        *(a2 + 1) = v343;
                                                                                                                      }

                                                                                                                      *(this + 112) = v342;
                                                                                                                      *(this + 121) |= 0x1000u;
                                                                                                                      if (v16 - v343 >= 2 && *v343 == 248 && v343[1] == 6)
                                                                                                                      {
                                                                                                                        v121 = (v343 + 2);
                                                                                                                        *(a2 + 1) = v121;
LABEL_1201:
                                                                                                                        v352[0] = 0;
                                                                                                                        if (v121 >= v16 || (v344 = *v121, (v344 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                                          if (!result)
                                                                                                                          {
                                                                                                                            return result;
                                                                                                                          }

                                                                                                                          v344 = v352[0];
                                                                                                                          v345 = *(a2 + 1);
                                                                                                                          v16 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v345 = (v121 + 1);
                                                                                                                          *(a2 + 1) = v345;
                                                                                                                        }

                                                                                                                        *(this + 113) = v344;
                                                                                                                        *(this + 121) |= 0x2000u;
                                                                                                                        if (v16 - v345 >= 2 && *v345 == 128 && v345[1] == 7)
                                                                                                                        {
                                                                                                                          v94 = (v345 + 2);
                                                                                                                          *(a2 + 1) = v94;
LABEL_1210:
                                                                                                                          v352[0] = 0;
                                                                                                                          if (v94 >= v16 || (v346 = *v94, (v346 & 0x80000000) != 0))
                                                                                                                          {
                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                                            if (!result)
                                                                                                                            {
                                                                                                                              return result;
                                                                                                                            }

                                                                                                                            v346 = v352[0];
                                                                                                                            v347 = *(a2 + 1);
                                                                                                                            v16 = *(a2 + 2);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v347 = (v94 + 1);
                                                                                                                            *(a2 + 1) = v347;
                                                                                                                          }

                                                                                                                          *(this + 114) = v346;
                                                                                                                          *(this + 121) |= 0x4000u;
                                                                                                                          if (v16 - v347 >= 2 && *v347 == 136 && v347[1] == 7)
                                                                                                                          {
                                                                                                                            v17 = (v347 + 2);
                                                                                                                            *(a2 + 1) = v17;
LABEL_1219:
                                                                                                                            v352[0] = 0;
                                                                                                                            if (v17 >= v16 || (v348 = *v17, (v348 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                                              if (!result)
                                                                                                                              {
                                                                                                                                return result;
                                                                                                                              }

                                                                                                                              v348 = v352[0];
                                                                                                                              v349 = *(a2 + 1);
                                                                                                                              v16 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v349 = (v17 + 1);
                                                                                                                              *(a2 + 1) = v349;
                                                                                                                            }

                                                                                                                            *(this + 115) = v348;
                                                                                                                            *(this + 121) |= 0x8000u;
                                                                                                                            if (v16 - v349 >= 2 && *v349 == 144 && v349[1] == 7)
                                                                                                                            {
                                                                                                                              v40 = (v349 + 2);
                                                                                                                              *(a2 + 1) = v40;
LABEL_1228:
                                                                                                                              v352[0] = 0;
                                                                                                                              if (v40 >= v16 || (v350 = *v40, (v350 & 0x80000000) != 0))
                                                                                                                              {
                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v352);
                                                                                                                                if (!result)
                                                                                                                                {
                                                                                                                                  return result;
                                                                                                                                }

                                                                                                                                v350 = v352[0];
                                                                                                                                v351 = *(a2 + 1);
                                                                                                                                v16 = *(a2 + 2);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v351 = v40 + 1;
                                                                                                                                *(a2 + 1) = v351;
                                                                                                                              }

                                                                                                                              *(this + 116) = v350;
                                                                                                                              *(this + 121) |= 0x10000u;
                                                                                                                              if (v351 == v16 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

        return 0;
      case 3u:
        if (v11 == 1)
        {
          goto LABEL_250;
        }

        goto LABEL_235;
      case 4u:
        if (v11 == 1)
        {
          goto LABEL_254;
        }

        goto LABEL_235;
      case 5u:
        if (v11 == 1)
        {
          goto LABEL_258;
        }

        goto LABEL_235;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v88 = *(a2 + 1);
        v78 = *(a2 + 2);
        goto LABEL_262;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v90 = *(a2 + 1);
        v78 = *(a2 + 2);
        goto LABEL_270;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v79 = *(a2 + 1);
        v78 = *(a2 + 2);
        goto LABEL_278;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v84 = *(a2 + 1);
        v83 = *(a2 + 2);
        goto LABEL_288;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v70 = *(a2 + 1);
        v69 = *(a2 + 2);
        goto LABEL_298;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v82 = *(a2 + 1);
        v81 = *(a2 + 2);
        goto LABEL_308;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v95 = *(a2 + 1);
        v73 = *(a2 + 2);
        goto LABEL_318;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v93 = *(a2 + 1);
        v73 = *(a2 + 2);
        goto LABEL_326;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v74 = *(a2 + 1);
        v73 = *(a2 + 2);
        goto LABEL_334;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v103 = *(a2 + 1);
        v73 = *(a2 + 2);
        goto LABEL_343;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v104 = *(a2 + 1);
        v73 = *(a2 + 2);
        goto LABEL_352;
      case 0x12u:
        if (v11 == 1)
        {
          goto LABEL_361;
        }

        goto LABEL_235;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v109 = *(a2 + 1);
        v108 = *(a2 + 2);
        goto LABEL_366;
      case 0x14u:
        if (v11 == 5)
        {
          goto LABEL_377;
        }

        goto LABEL_235;
      case 0x15u:
        if (v11 == 5)
        {
          goto LABEL_382;
        }

        goto LABEL_235;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v119 = *(a2 + 1);
        v118 = *(a2 + 2);
        goto LABEL_387;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v72 = *(a2 + 1);
        v71 = *(a2 + 2);
        goto LABEL_398;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v92 = *(a2 + 1);
        v71 = *(a2 + 2);
        goto LABEL_407;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v77 = *(a2 + 1);
        v71 = *(a2 + 2);
        goto LABEL_416;
      case 0x1Au:
        if (v11 == 1)
        {
          goto LABEL_427;
        }

        goto LABEL_235;
      case 0x1Bu:
        if (v11 == 1)
        {
          goto LABEL_432;
        }

        goto LABEL_235;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v62 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_437;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v59 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_446;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v76 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_455;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v86 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_464;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v102 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_473;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v87 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_482;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v56 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_491;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v68 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_500;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v105 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_511;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v122 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_520;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v61 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_529;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v101 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_538;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v60 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_547;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v57 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_556;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v75 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_565;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v91 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_574;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v112 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_583;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v49 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_592;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v64 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_601;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v96 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_610;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v100 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_619;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v124 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_628;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v97 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_639;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v54 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_648;
      case 0x34u:
        if (v11 == 1)
        {
          goto LABEL_657;
        }

        goto LABEL_235;
      case 0x35u:
        if (v11 == 1)
        {
          goto LABEL_662;
        }

        goto LABEL_235;
      case 0x36u:
        if (v11 == 1)
        {
          goto LABEL_667;
        }

        goto LABEL_235;
      case 0x37u:
        if (v11 == 1)
        {
          goto LABEL_672;
        }

        goto LABEL_235;
      case 0x38u:
        if (v11 == 1)
        {
          goto LABEL_677;
        }

        goto LABEL_235;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v111 = *(a2 + 1);
        v110 = *(a2 + 2);
        goto LABEL_682;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v52 = *(a2 + 1);
        v51 = *(a2 + 2);
        goto LABEL_693;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v117 = *(a2 + 1);
        v114 = *(a2 + 2);
        goto LABEL_707;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v115 = *(a2 + 1);
        v114 = *(a2 + 2);
        goto LABEL_716;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v36 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_727;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v126 = *(a2 + 1);
        v125 = *(a2 + 2);
        goto LABEL_738;
      case 0x3Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v132 = *(a2 + 1);
        v131 = *(a2 + 2);
        goto LABEL_749;
      case 0x40u:
        if (v11 != 2)
        {
          goto LABEL_235;
        }

        v113 = *(this + 119);
        goto LABEL_758;
      case 0x41u:
        if (v11 == 2)
        {
          goto LABEL_765;
        }

        goto LABEL_235;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v65 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_772;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v120 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_781;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v37 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_790;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v123 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_799;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v129 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_808;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v80 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_817;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v134 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_826;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v116 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_835;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v39 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_844;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v63 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_853;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v98 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_862;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v44 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_871;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v137 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_880;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v34 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_889;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v67 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_898;
      case 0x51u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_907;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v31 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_916;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v58 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_925;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v99 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_936;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v38 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_945;
      case 0x56u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v50 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_954;
      case 0x57u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_963;
      case 0x58u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v130 = *(a2 + 1);
        v41 = *(a2 + 2);
        goto LABEL_974;
      case 0x59u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v66 = *(a2 + 1);
        v41 = *(a2 + 2);
        goto LABEL_983;
      case 0x5Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v42 = *(a2 + 1);
        v41 = *(a2 + 2);
        goto LABEL_992;
      case 0x5Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v106 = *(a2 + 1);
        v41 = *(a2 + 2);
        goto LABEL_1001;
      case 0x5Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_1012;
      case 0x5Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v141 = *(a2 + 1);
        v140 = *(a2 + 2);
        goto LABEL_1023;
      case 0x5Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1034;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_1045;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v46 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1056;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_1067;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v136 = *(a2 + 1);
        v135 = *(a2 + 2);
        goto LABEL_1078;
      case 0x63u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v143 = *(a2 + 1);
        v142 = *(a2 + 2);
        goto LABEL_1089;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v128 = *(a2 + 1);
        v127 = *(a2 + 2);
        goto LABEL_1100;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_1111;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v139 = *(a2 + 1);
        v138 = *(a2 + 2);
        goto LABEL_1122;
      case 0x67u:
        if (v11 == 2)
        {
          goto LABEL_1133;
        }

        goto LABEL_235;
      case 0x68u:
        if (v11 == 2)
        {
          goto LABEL_1140;
        }

        goto LABEL_235;
      case 0x69u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v43 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1147;
      case 0x6Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v133 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1156;
      case 0x6Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v30 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1165;
      case 0x6Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v107 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1174;
      case 0x6Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v89 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1183;
      case 0x6Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v47 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1192;
      case 0x6Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v121 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1201;
      case 0x70u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v94 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1210;
      case 0x71u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1219;
      case 0x72u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_235;
        }

        v40 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_1228;
      default:
LABEL_235:
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