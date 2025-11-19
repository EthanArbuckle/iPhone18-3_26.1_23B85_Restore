void sub_29634FC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPAudioStart::~BluetoothA2DPAudioStart(awd::metrics::BluetoothA2DPAudioStart *this)
{
  *this = &unk_2A1D4A3B0;
  awd::metrics::BluetoothA2DPAudioStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A3B0;
  awd::metrics::BluetoothA2DPAudioStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A3B0;
  awd::metrics::BluetoothA2DPAudioStart::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 32);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 40);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::default_instance(awd::metrics::BluetoothA2DPAudioStart *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothA2DPAudioStart::default_instance_;
  if (!awd::metrics::BluetoothA2DPAudioStart::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothA2DPAudioStart::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 48) = 0;
    if ((*(this + 56) & 0x20) != 0)
    {
      v4 = *(this + 32);
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
    }

    if ((*(this + 56) & 0x40) != 0)
    {
      v5 = *(this + 40);
      if (v5 != v2)
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
  }

  *(this + 56) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::MergePartialFromCodedStream(awd::metrics::BluetoothA2DPAudioStart *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

            v18 = *(this + 14) | 1;
            *(this + 14) = v18;
            if (v15 < v12 && *v15 == 18)
            {
              *(a2 + 1) = v15 + 1;
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

            v18 = *(this + 14);
LABEL_40:
            *(this + 14) = v18 | 2;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v19 < v9 && *v19 == 24)
            {
              v11 = v19 + 1;
              *(a2 + 1) = v11;
LABEL_46:
              if (v11 >= v9 || (v20 = *v11, v20 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v21 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v20;
                v21 = v11 + 1;
                *(a2 + 1) = v21;
              }

              *(this + 14) |= 4u;
              if (v21 < v9 && *v21 == 32)
              {
                v16 = v21 + 1;
                *(a2 + 1) = v16;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 0xFF)
        {
          break;
        }

        if (v7 != 256)
        {
          if (v7 == 257 && v8 == 2)
          {
            goto LABEL_78;
          }

          goto LABEL_31;
        }

        if (v8 != 2)
        {
          goto LABEL_31;
        }

        v17 = *(this + 14);
LABEL_71:
        *(this + 14) = v17 | 0x20;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v26 = *(a2 + 1);
        if (*(a2 + 4) - v26 >= 2 && *v26 == 138 && v26[1] == 16)
        {
          *(a2 + 1) = v26 + 2;
LABEL_78:
          *(this + 14) |= 0x40u;
          if (*(this + 5) == v4)
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

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_31;
      }

      v16 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_54:
      v28 = 0;
      if (v16 >= v9 || (v22 = *v16, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
        if (!result)
        {
          return result;
        }

        v22 = v28;
        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v23 = v16 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 28) = v22 != 0;
      *(this + 14) |= 8u;
      if (v23 < v9 && *v23 == 40)
      {
        v10 = v23 + 1;
        *(a2 + 1) = v10;
LABEL_62:
        if (v10 >= v9 || (v24 = *v10, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v24;
          v25 = (v10 + 1);
          *(a2 + 1) = v25;
        }

        v17 = *(this + 14) | 0x10;
        *(this + 14) = v17;
        if (v9 - v25 >= 2 && *v25 == 130 && v25[1] == 16)
        {
          *(a2 + 1) = v25 + 2;
          goto LABEL_71;
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

uint64_t awd::metrics::BluetoothA2DPAudioStart::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v8 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 56) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
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
  v9 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::ByteSize(awd::metrics::BluetoothA2DPAudioStart *this)
{
  v2 = *(this + 14);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 14);
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
    v2 = *(this + 14);
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
    v11 = *(this + 6);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

  v4 = ((v2 >> 2) & 2) + v3;
  if ((v2 & 0x10) != 0)
  {
    v13 = *(this + 12);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
    if ((v2 & 0x20) == 0)
    {
LABEL_23:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(this + 4);
  v16 = *(v15 + 23);
  v17 = v16;
  v18 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v2 = *(this + 14);
    v17 = *(v15 + 23);
  }

  else
  {
    v20 = 1;
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  v4 = (v4 + v20 + v16 + 2);
  if ((v2 & 0x40) != 0)
  {
LABEL_38:
    v21 = *(this + 5);
    v22 = *(v21 + 23);
    v23 = v22;
    v24 = *(v21 + 8);
    if ((v22 & 0x80u) == 0)
    {
      v25 = *(v21 + 23);
    }

    else
    {
      v25 = v24;
    }

    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      v22 = *(v21 + 23);
      v24 = *(v21 + 8);
      v23 = *(v21 + 23);
    }

    else
    {
      v26 = 1;
    }

    if (v23 < 0)
    {
      v22 = v24;
    }

    v4 = (v4 + v26 + v22 + 2);
  }

LABEL_47:
  *(this + 13) = v4;
  return v4;
}

void awd::metrics::BluetoothA2DPAudioStart::CheckTypeAndMergeFrom(awd::metrics::BluetoothA2DPAudioStart *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothA2DPAudioStart::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothA2DPAudioStart::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothA2DPAudioStart::CopyFrom(awd::metrics::BluetoothA2DPAudioStart *this, const awd::metrics::BluetoothA2DPAudioStart *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothA2DPAudioStart::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothA2DPAudioStart::Swap(uint64_t this, awd::metrics::BluetoothA2DPAudioStart *a2)
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
    LOBYTE(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    LODWORD(v6) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::SharedCtor(uint64_t this)
{
  *(this + 60) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 56) = 0;
  *(this + 32) = 0;
  *(this + 40) = v1;
  *(this + 48) = v1;
  return this;
}

awd::metrics::BluetoothA2DPAudioStop *awd::metrics::BluetoothA2DPAudioStop::BluetoothA2DPAudioStop(awd::metrics::BluetoothA2DPAudioStop *this, const awd::metrics::BluetoothA2DPAudioStop *a2)
{
  *this = &unk_2A1D4A428;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = 0;
  *(this + 16) = 0;
  awd::metrics::BluetoothA2DPAudioStop::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothA2DPAudioStop::MergeFrom(awd::metrics::BluetoothA2DPAudioStop *this, const awd::metrics::BluetoothA2DPAudioStop *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 1);
    *(this + 16) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 16);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 2);
    *(this + 16) |= 2u;
    v8 = *(this + 2);
    if (v8 == v6)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 16);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 6);
  *(this + 16) |= 4u;
  *(this + 6) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 28);
  *(this + 16) |= 8u;
  *(this + 28) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    v12 = *(a2 + 4);
    *(this + 16) |= 0x20u;
    *(this + 4) = v12;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_19:
  v11 = *(a2 + 14);
  *(this + 16) |= 0x10u;
  *(this + 14) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_21:
  v13 = *(a2 + 5);
  *(this + 16) |= 0x40u;
  v14 = *(this + 5);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  if ((*(a2 + 16) & 0x80) != 0)
  {
LABEL_24:
    v15 = *(a2 + 6);
    *(this + 16) |= 0x80u;
    v16 = *(this + 6);
    if (v16 == v6)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
  }
}

void sub_296350AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPAudioStop::~BluetoothA2DPAudioStop(awd::metrics::BluetoothA2DPAudioStop *this)
{
  *this = &unk_2A1D4A428;
  awd::metrics::BluetoothA2DPAudioStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A428;
  awd::metrics::BluetoothA2DPAudioStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A428;
  awd::metrics::BluetoothA2DPAudioStop::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 40);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 48);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::default_instance(awd::metrics::BluetoothA2DPAudioStop *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothA2DPAudioStop::default_instance_;
  if (!awd::metrics::BluetoothA2DPAudioStop::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothA2DPAudioStop::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 56) = 0;
    *(this + 32) = 0;
    if ((*(this + 64) & 0x40) != 0)
    {
      v4 = *(this + 40);
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
    }

    if ((*(this + 64) & 0x80) != 0)
    {
      v5 = *(this + 48);
      if (v5 != v2)
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
  }

  *(this + 64) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::MergePartialFromCodedStream(awd::metrics::BluetoothA2DPAudioStop *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 0xFF)
        {
          if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_66;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_74;
          }

          goto LABEL_35;
        }

        if (v7 != 256)
        {
          if (v7 == 257 && v8 == 2)
          {
            goto LABEL_90;
          }

          goto LABEL_35;
        }

        if (v8 != 2)
        {
          goto LABEL_35;
        }

        v19 = *(this + 16);
LABEL_83:
        *(this + 16) = v19 | 0x40;
        if (*(this + 5) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v29 = *(a2 + 1);
        if (*(a2 + 4) - v29 >= 2 && *v29 == 138 && v29[1] == 16)
        {
          *(a2 + 1) = v29 + 2;
LABEL_90:
          *(this + 16) |= 0x80u;
          if (*(this + 6) == v4)
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

      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v7 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
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

        v9 = *(this + 16) | 1;
        *(this + 16) = v9;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_44;
        }
      }

      else
      {
        if (v7 != 2 || v8 != 2)
        {
          goto LABEL_35;
        }

        v9 = *(this + 16);
LABEL_44:
        *(this + 16) = v9 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v20 < v10 && *v20 == 24)
        {
          v18 = v20 + 1;
          *(a2 + 1) = v18;
LABEL_50:
          if (v18 >= v10 || (v21 = *v18, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v21;
            v22 = v18 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 16) |= 4u;
          if (v22 < v10 && *v22 == 32)
          {
            v12 = v22 + 1;
            *(a2 + 1) = v12;
LABEL_58:
            v31 = 0;
            if (v12 >= v10 || (v23 = *v12, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
              if (!result)
              {
                return result;
              }

              v23 = v31;
              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v24 = v12 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 28) = v23 != 0;
            *(this + 16) |= 8u;
            if (v24 < v10 && *v24 == 40)
            {
              v17 = v24 + 1;
              *(a2 + 1) = v17;
LABEL_66:
              if (v17 >= v10 || (v25 = *v17, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 14) = v25;
                v26 = v17 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 16) |= 0x10u;
              if (v26 < v10 && *v26 == 48)
              {
                v11 = v26 + 1;
                *(a2 + 1) = v11;
LABEL_74:
                if (v11 >= v10 || (v27 = *v11, v27 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v28 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v27;
                  v28 = (v11 + 1);
                  *(a2 + 1) = v28;
                }

                v19 = *(this + 16) | 0x20;
                *(this + 16) = v19;
                if (v10 - v28 >= 2 && *v28 == 130 && v28[1] == 16)
                {
                  *(a2 + 1) = v28 + 2;
                  goto LABEL_83;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_50;
      }
    }

    else if (v7 == 4 && (TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_58;
    }

LABEL_35:
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

uint64_t awd::metrics::BluetoothA2DPAudioStop::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 64) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v9 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::ByteSize(awd::metrics::BluetoothA2DPAudioStop *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_49;
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
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 6);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

  v4 = ((v2 >> 2) & 2) + v3;
  if ((v2 & 0x10) != 0)
  {
    v13 = *(this + 14);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
    if ((v2 & 0x20) == 0)
    {
LABEL_23:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v2 = *(this + 16);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

LABEL_31:
  v15 = *(this + 5);
  v16 = *(v15 + 23);
  v17 = v16;
  v18 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v2 = *(this + 16);
    v17 = *(v15 + 23);
  }

  else
  {
    v20 = 1;
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  v4 = (v4 + v20 + v16 + 2);
  if ((v2 & 0x80) != 0)
  {
LABEL_40:
    v21 = *(this + 6);
    v22 = *(v21 + 23);
    v23 = v22;
    v24 = *(v21 + 8);
    if ((v22 & 0x80u) == 0)
    {
      v25 = *(v21 + 23);
    }

    else
    {
      v25 = v24;
    }

    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      v22 = *(v21 + 23);
      v24 = *(v21 + 8);
      v23 = *(v21 + 23);
    }

    else
    {
      v26 = 1;
    }

    if (v23 < 0)
    {
      v22 = v24;
    }

    v4 = (v4 + v26 + v22 + 2);
  }

LABEL_49:
  *(this + 15) = v4;
  return v4;
}

void awd::metrics::BluetoothA2DPAudioStop::CheckTypeAndMergeFrom(awd::metrics::BluetoothA2DPAudioStop *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothA2DPAudioStop::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothA2DPAudioStop::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothA2DPAudioStop::CopyFrom(awd::metrics::BluetoothA2DPAudioStop *this, const awd::metrics::BluetoothA2DPAudioStop *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothA2DPAudioStop::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothA2DPAudioStop::Swap(uint64_t this, awd::metrics::BluetoothA2DPAudioStop *a2)
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
    LOBYTE(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    v5 = *(this + 32);
    v6 = *(this + 40);
    v7 = *(a2 + 5);
    *(this + 32) = *(a2 + 4);
    *(this + 40) = v7;
    *(a2 + 4) = v5;
    *(a2 + 5) = v6;
    v8 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v8;
    LODWORD(v8) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v8;
    LODWORD(v8) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v8;
  }

  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 44) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 40) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  return this;
}

awd::metrics::BluetoothATPhonebookTransferStart *awd::metrics::BluetoothATPhonebookTransferStart::BluetoothATPhonebookTransferStart(awd::metrics::BluetoothATPhonebookTransferStart *this, const awd::metrics::BluetoothATPhonebookTransferStart *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A4A0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 12) = 0;
  awd::metrics::BluetoothATPhonebookTransferStart::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothATPhonebookTransferStart::MergeFrom(awd::metrics::BluetoothATPhonebookTransferStart *this, const awd::metrics::BluetoothATPhonebookTransferStart *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 1);
    *(this + 12) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 10);
    *(this + 12) |= 4u;
    *(this + 10) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 2);
  *(this + 12) |= 2u;
  v8 = *(this + 2);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = *(a2 + 3);
  *(this + 12) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_18:
    v12 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v13 = *(this + 4);
    if (v13 == v6)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
  }
}

void sub_296351A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothATPhonebookTransferStart::~BluetoothATPhonebookTransferStart(awd::metrics::BluetoothATPhonebookTransferStart *this)
{
  *this = &unk_2A1D4A4A0;
  awd::metrics::BluetoothATPhonebookTransferStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A4A0;
  awd::metrics::BluetoothATPhonebookTransferStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A4A0;
  awd::metrics::BluetoothATPhonebookTransferStart::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 32);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::default_instance(awd::metrics::BluetoothATPhonebookTransferStart *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothATPhonebookTransferStart::default_instance_;
  if (!awd::metrics::BluetoothATPhonebookTransferStart::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothATPhonebookTransferStart::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0;
    if ((*(this + 48) & 8) != 0)
    {
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
    }

    if ((*(this + 48) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::MergePartialFromCodedStream(awd::metrics::BluetoothATPhonebookTransferStart *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_22;
          }

          v9 = *(this + 12);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
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

        v9 = *(this + 12) | 1;
        *(this + 12) = v9;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
LABEL_33:
          *(this + 12) = v9 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v17 < v10 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_39:
            if (v11 >= v10 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v18;
              v19 = (v11 + 1);
              *(a2 + 1) = v19;
            }

            v12 = *(this + 12) | 4;
            *(this + 12) = v12;
            if (v10 - v19 >= 2 && *v19 == 130 && v19[1] == 16)
            {
              *(a2 + 1) = v19 + 2;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_39;
      }

      if (v7 != 256)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      v12 = *(this + 12);
LABEL_48:
      *(this + 12) = v12 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v20 = *(a2 + 1);
      if (*(a2 + 4) - v20 >= 2 && *v20 == 138 && v20[1] == 16)
      {
        *(a2 + 1) = v20 + 2;
LABEL_55:
        *(this + 12) |= 0x10u;
        if (*(this + 4) == v4)
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

    if (v7 == 257 && v8 == 2)
    {
      goto LABEL_55;
    }

LABEL_22:
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

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
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
  v9 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::ByteSize(awd::metrics::BluetoothATPhonebookTransferStart *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
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
    v10 = *(this + 10);
    if (v10 >= 0x80)
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
        goto LABEL_42;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 3);
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
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v2 = *(this + 12);
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

  v3 = (v3 + v17 + v13 + 2);
  if ((v2 & 0x10) != 0)
  {
LABEL_33:
    v18 = *(this + 4);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v3 = (v3 + v23 + v19 + 2);
  }

LABEL_42:
  *(this + 11) = v3;
  return v3;
}

void awd::metrics::BluetoothATPhonebookTransferStart::CheckTypeAndMergeFrom(awd::metrics::BluetoothATPhonebookTransferStart *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothATPhonebookTransferStart::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothATPhonebookTransferStart::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothATPhonebookTransferStart::CopyFrom(awd::metrics::BluetoothATPhonebookTransferStart *this, const awd::metrics::BluetoothATPhonebookTransferStart *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothATPhonebookTransferStart::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStart::Swap(uint64_t this, awd::metrics::BluetoothATPhonebookTransferStart *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 44) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 40) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  return this;
}

awd::metrics::BluetoothATPhonebookTransferStop *awd::metrics::BluetoothATPhonebookTransferStop::BluetoothATPhonebookTransferStop(awd::metrics::BluetoothATPhonebookTransferStop *this, const awd::metrics::BluetoothATPhonebookTransferStop *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A518;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 12) = 0;
  awd::metrics::BluetoothATPhonebookTransferStop::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothATPhonebookTransferStop::MergeFrom(awd::metrics::BluetoothATPhonebookTransferStop *this, const awd::metrics::BluetoothATPhonebookTransferStop *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 1);
    *(this + 12) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 10);
    *(this + 12) |= 4u;
    *(this + 10) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 2);
  *(this + 12) |= 2u;
  v8 = *(this + 2);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = *(a2 + 3);
  *(this + 12) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_18:
    v12 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v13 = *(this + 4);
    if (v13 == v6)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
  }
}

void sub_2963526DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothATPhonebookTransferStop::~BluetoothATPhonebookTransferStop(awd::metrics::BluetoothATPhonebookTransferStop *this)
{
  *this = &unk_2A1D4A518;
  awd::metrics::BluetoothATPhonebookTransferStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A518;
  awd::metrics::BluetoothATPhonebookTransferStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A518;
  awd::metrics::BluetoothATPhonebookTransferStop::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 32);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::default_instance(awd::metrics::BluetoothATPhonebookTransferStop *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothATPhonebookTransferStop::default_instance_;
  if (!awd::metrics::BluetoothATPhonebookTransferStop::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothATPhonebookTransferStop::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0;
    if ((*(this + 48) & 8) != 0)
    {
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
    }

    if ((*(this + 48) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::MergePartialFromCodedStream(awd::metrics::BluetoothATPhonebookTransferStop *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_22;
          }

          v9 = *(this + 12);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
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

        v9 = *(this + 12) | 1;
        *(this + 12) = v9;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
LABEL_33:
          *(this + 12) = v9 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v17 < v10 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_39:
            if (v11 >= v10 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v18;
              v19 = (v11 + 1);
              *(a2 + 1) = v19;
            }

            v12 = *(this + 12) | 4;
            *(this + 12) = v12;
            if (v10 - v19 >= 2 && *v19 == 130 && v19[1] == 16)
            {
              *(a2 + 1) = v19 + 2;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_39;
      }

      if (v7 != 256)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      v12 = *(this + 12);
LABEL_48:
      *(this + 12) = v12 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v20 = *(a2 + 1);
      if (*(a2 + 4) - v20 >= 2 && *v20 == 138 && v20[1] == 16)
      {
        *(a2 + 1) = v20 + 2;
LABEL_55:
        *(this + 12) |= 0x10u;
        if (*(this + 4) == v4)
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

    if (v7 == 257 && v8 == 2)
    {
      goto LABEL_55;
    }

LABEL_22:
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

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
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
  v9 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::ByteSize(awd::metrics::BluetoothATPhonebookTransferStop *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
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
    v10 = *(this + 10);
    if (v10 >= 0x80)
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
        goto LABEL_42;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 3);
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
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v2 = *(this + 12);
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

  v3 = (v3 + v17 + v13 + 2);
  if ((v2 & 0x10) != 0)
  {
LABEL_33:
    v18 = *(this + 4);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v3 = (v3 + v23 + v19 + 2);
  }

LABEL_42:
  *(this + 11) = v3;
  return v3;
}

void awd::metrics::BluetoothATPhonebookTransferStop::CheckTypeAndMergeFrom(awd::metrics::BluetoothATPhonebookTransferStop *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothATPhonebookTransferStop::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothATPhonebookTransferStop::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothATPhonebookTransferStop::CopyFrom(awd::metrics::BluetoothATPhonebookTransferStop *this, const awd::metrics::BluetoothATPhonebookTransferStop *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothATPhonebookTransferStop::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothATPhonebookTransferStop::Swap(uint64_t this, awd::metrics::BluetoothATPhonebookTransferStop *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 44) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 40) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  return this;
}

awd::metrics::BluetoothPBAPPhonebookTransferStart *awd::metrics::BluetoothPBAPPhonebookTransferStart::BluetoothPBAPPhonebookTransferStart(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, const awd::metrics::BluetoothPBAPPhonebookTransferStart *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A590;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 12) = 0;
  awd::metrics::BluetoothPBAPPhonebookTransferStart::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothPBAPPhonebookTransferStart::MergeFrom(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, const awd::metrics::BluetoothPBAPPhonebookTransferStart *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 1);
    *(this + 12) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 12);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 10);
    *(this + 12) |= 4u;
    *(this + 10) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 2);
  *(this + 12) |= 2u;
  v8 = *(this + 2);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v10 = *(a2 + 3);
  *(this + 12) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_18:
    v12 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    v13 = *(this + 4);
    if (v13 == v6)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
  }
}

void sub_2963533A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothPBAPPhonebookTransferStart::~BluetoothPBAPPhonebookTransferStart(awd::metrics::BluetoothPBAPPhonebookTransferStart *this)
{
  *this = &unk_2A1D4A590;
  awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A590;
  awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A590;
  awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 32);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::default_instance(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothPBAPPhonebookTransferStart::default_instance_;
  if (!awd::metrics::BluetoothPBAPPhonebookTransferStart::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothPBAPPhonebookTransferStart::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0;
    if ((*(this + 48) & 8) != 0)
    {
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
    }

    if ((*(this + 48) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::MergePartialFromCodedStream(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_22;
          }

          v9 = *(this + 12);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
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

        v9 = *(this + 12) | 1;
        *(this + 12) = v9;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
LABEL_33:
          *(this + 12) = v9 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v17 < v10 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_39:
            if (v11 >= v10 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v18;
              v19 = (v11 + 1);
              *(a2 + 1) = v19;
            }

            v12 = *(this + 12) | 4;
            *(this + 12) = v12;
            if (v10 - v19 >= 2 && *v19 == 130 && v19[1] == 16)
            {
              *(a2 + 1) = v19 + 2;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_39;
      }

      if (v7 != 256)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

      v12 = *(this + 12);
LABEL_48:
      *(this + 12) = v12 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v20 = *(a2 + 1);
      if (*(a2 + 4) - v20 >= 2 && *v20 == 138 && v20[1] == 16)
      {
        *(a2 + 1) = v20 + 2;
LABEL_55:
        *(this + 12) |= 0x10u;
        if (*(this + 4) == v4)
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

    if (v7 == 257 && v8 == 2)
    {
      goto LABEL_55;
    }

LABEL_22:
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

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
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
  v9 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::ByteSize(awd::metrics::BluetoothPBAPPhonebookTransferStart *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
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
    v10 = *(this + 10);
    if (v10 >= 0x80)
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
        goto LABEL_42;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 3);
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
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v2 = *(this + 12);
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

  v3 = (v3 + v17 + v13 + 2);
  if ((v2 & 0x10) != 0)
  {
LABEL_33:
    v18 = *(this + 4);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v3 = (v3 + v23 + v19 + 2);
  }

LABEL_42:
  *(this + 11) = v3;
  return v3;
}

void awd::metrics::BluetoothPBAPPhonebookTransferStart::CheckTypeAndMergeFrom(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothPBAPPhonebookTransferStart::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothPBAPPhonebookTransferStart::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothPBAPPhonebookTransferStart::CopyFrom(awd::metrics::BluetoothPBAPPhonebookTransferStart *this, const awd::metrics::BluetoothPBAPPhonebookTransferStart *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothPBAPPhonebookTransferStart::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStart::Swap(uint64_t this, awd::metrics::BluetoothPBAPPhonebookTransferStart *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
  }

  return this;
}

void *awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedCtor(void *this)
{
  this[5] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  return this;
}

awd::metrics::BluetoothPBAPPhonebookTransferStop *awd::metrics::BluetoothPBAPPhonebookTransferStop::BluetoothPBAPPhonebookTransferStop(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, const awd::metrics::BluetoothPBAPPhonebookTransferStop *a2)
{
  *this = &unk_2A1D4A608;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  awd::metrics::BluetoothPBAPPhonebookTransferStop::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothPBAPPhonebookTransferStop::MergeFrom(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, const awd::metrics::BluetoothPBAPPhonebookTransferStop *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 11);
    }

    v6 = MEMORY[0x29EDC9758];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 11) |= 2u;
      v8 = *(this + 2);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 11);
      if ((v4 & 4) == 0)
      {
LABEL_8:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(a2 + 3);
    *(this + 11) |= 4u;
    v10 = *(this + 3);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 11) & 8) != 0)
    {
LABEL_16:
      v11 = *(a2 + 4);
      *(this + 11) |= 8u;
      v12 = *(this + 4);
      if (v12 == v6)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_296354040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothPBAPPhonebookTransferStop::~BluetoothPBAPPhonebookTransferStop(awd::metrics::BluetoothPBAPPhonebookTransferStop *this)
{
  *this = &unk_2A1D4A608;
  awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A608;
  awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A608;
  awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 32);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::default_instance(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothPBAPPhonebookTransferStop::default_instance_;
  if (!awd::metrics::BluetoothPBAPPhonebookTransferStop::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothPBAPPhonebookTransferStop::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(this + 44) & 4) != 0)
    {
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
    }

    if ((*(this + 44) & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::MergePartialFromCodedStream(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 0xFF)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v11 >= v10 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          v9 = *(this + 11) | 1;
          *(this + 11) = v9;
          if (v13 < v10 && *v13 == 18)
          {
            *(a2 + 1) = v13 + 1;
            goto LABEL_29;
          }
        }

        else
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_21;
          }

          v9 = *(this + 11);
LABEL_29:
          *(this + 11) = v9 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          if (*(a2 + 4) - v14 >= 2 && *v14 == 130 && v14[1] == 16)
          {
            *(a2 + 1) = v14 + 2;
            goto LABEL_36;
          }
        }
      }

      if (v7 != 256)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

LABEL_36:
      *(this + 11) |= 4u;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v15 = *(a2 + 1);
      if (*(a2 + 4) - v15 >= 2 && *v15 == 138 && v15[1] == 16)
      {
        *(a2 + 1) = v15 + 2;
LABEL_43:
        *(this + 11) |= 8u;
        if (*(this + 4) == v4)
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

    if (v7 == 257 && v8 == 2)
    {
      goto LABEL_43;
    }

LABEL_21:
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

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 44);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v4 + 24);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      if ((*(v4 + 44) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v4 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v4 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::ByteSize(awd::metrics::BluetoothPBAPPhonebookTransferStop *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_37;
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v10 = *(this + 3);
  v11 = *(v10 + 23);
  v12 = v11;
  v13 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = v13;
  }

  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    v11 = *(v10 + 23);
    v13 = *(v10 + 8);
    v2 = *(this + 11);
    v12 = *(v10 + 23);
  }

  else
  {
    v15 = 1;
  }

  if (v12 < 0)
  {
    v11 = v13;
  }

  v3 = (v3 + v15 + v11 + 2);
  if ((v2 & 8) != 0)
  {
LABEL_28:
    v16 = *(this + 4);
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

    v3 = (v3 + v21 + v17 + 2);
  }

LABEL_37:
  *(this + 10) = v3;
  return v3;
}

void awd::metrics::BluetoothPBAPPhonebookTransferStop::CheckTypeAndMergeFrom(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothPBAPPhonebookTransferStop::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothPBAPPhonebookTransferStop::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothPBAPPhonebookTransferStop::CopyFrom(awd::metrics::BluetoothPBAPPhonebookTransferStop *this, const awd::metrics::BluetoothPBAPPhonebookTransferStop *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothPBAPPhonebookTransferStop::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothPBAPPhonebookTransferStop::Swap(uint64_t this, awd::metrics::BluetoothPBAPPhonebookTransferStop *a2)
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
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 64) = MEMORY[0x29EDC9758];
  *(this + 72) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = v1;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = v1;
  return this;
}

awd::metrics::BluetoothServiceConnectionAttempt *awd::metrics::BluetoothServiceConnectionAttempt::BluetoothServiceConnectionAttempt(awd::metrics::BluetoothServiceConnectionAttempt *this, const awd::metrics::BluetoothServiceConnectionAttempt *a2)
{
  *(this + 9) = 0;
  *this = &unk_2A1D4A680;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = v3;
  *(this + 8) = v3;
  awd::metrics::BluetoothServiceConnectionAttempt::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothServiceConnectionAttempt::MergeFrom(awd::metrics::BluetoothServiceConnectionAttempt *this, const awd::metrics::BluetoothServiceConnectionAttempt *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 19);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 19) |= 2u;
    v9 = *(this + 2);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 19);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 6);
  *(this + 19) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 28);
  *(this + 19) |= 8u;
  *(this + 28) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v13 = *(a2 + 10);
    *(this + 19) |= 0x20u;
    *(this + 10) = v13;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 29);
  *(this + 19) |= 0x10u;
  *(this + 29) = v12;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v14 = *(a2 + 4);
  *(this + 19) |= 0x40u;
  v15 = *(this + 4);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 11);
    *(this + 19) |= 0x80u;
    *(this + 11) = v7;
    v4 = *(a2 + 19);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 12);
    *(this + 19) |= 0x100u;
    *(this + 12) = v16;
    v4 = *(a2 + 19);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(a2 + 13);
  *(this + 19) |= 0x200u;
  *(this + 13) = v17;
  v4 = *(a2 + 19);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_33:
  v18 = *(a2 + 7);
  *(this + 19) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  if ((*(a2 + 19) & 0x800) != 0)
  {
LABEL_36:
    v20 = *(a2 + 8);
    *(this + 19) |= 0x800u;
    v21 = *(this + 8);
    if (v21 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v21, v20);
  }
}

void sub_296354D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothServiceConnectionAttempt::~BluetoothServiceConnectionAttempt(awd::metrics::BluetoothServiceConnectionAttempt *this)
{
  *this = &unk_2A1D4A680;
  awd::metrics::BluetoothServiceConnectionAttempt::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A680;
  awd::metrics::BluetoothServiceConnectionAttempt::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A680;
  awd::metrics::BluetoothServiceConnectionAttempt::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothServiceConnectionAttempt::SharedDtor(void *this)
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

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[4];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::default_instance(awd::metrics::BluetoothServiceConnectionAttempt *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothServiceConnectionAttempt::default_instance_;
  if (!awd::metrics::BluetoothServiceConnectionAttempt::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothServiceConnectionAttempt::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 40) = 0;
    if ((*(this + 76) & 0x40) != 0)
    {
      v4 = *(this + 32);
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
    }

    *(this + 44) = 0;
    v1 = *(this + 76);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    if ((v1 & 0x400) != 0)
    {
      v5 = *(this + 56);
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

    if ((*(this + 77) & 8) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x29EDC9758])
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
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::MergePartialFromCodedStream(awd::metrics::BluetoothServiceConnectionAttempt *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 0xA)
          {
            if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v20 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_116;
              }

              goto LABEL_47;
            }

            if (v7 != 256)
            {
              if (v7 == 257 && v8 == 2)
              {
                goto LABEL_132;
              }

              goto LABEL_47;
            }

            if (v8 != 2)
            {
              goto LABEL_47;
            }

            v24 = *(this + 19);
LABEL_125:
            *(this + 19) = v24 | 0x400;
            if (*(this + 7) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v41 = *(a2 + 1);
            if (*(a2 + 4) - v41 >= 2 && *v41 == 138 && v41[1] == 16)
            {
              *(a2 + 1) = v41 + 2;
LABEL_132:
              *(this + 19) |= 0x800u;
              if (*(this + 8) == v4)
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

          else
          {
            if (v7 != 7)
            {
              if (v7 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v22 = *(a2 + 1);
                  v11 = *(a2 + 2);
                  goto LABEL_100;
                }
              }

              else if (v7 == 10 && (TagFallback & 7) == 0)
              {
                v12 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_108;
              }

              goto LABEL_47;
            }

            if (v8 != 2)
            {
              goto LABEL_47;
            }

            v18 = *(this + 19);
LABEL_94:
            *(this + 19) = v18 | 0x40;
            if (*(this + 4) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v34 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v34 < v11 && *v34 == 72)
            {
              v22 = v34 + 1;
              *(a2 + 1) = v22;
LABEL_100:
              if (v22 >= v11 || (v35 = *v22, v35 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                if (!result)
                {
                  return result;
                }

                v36 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 11) = v35;
                v36 = v22 + 1;
                *(a2 + 1) = v36;
              }

              *(this + 19) |= 0x80u;
              if (v36 < v11 && *v36 == 80)
              {
                v12 = v36 + 1;
                *(a2 + 1) = v12;
LABEL_108:
                if (v12 >= v11 || (v37 = *v12, v37 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  v38 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 12) = v37;
                  v38 = v12 + 1;
                  *(a2 + 1) = v38;
                }

                *(this + 19) |= 0x100u;
                if (v38 < v11 && *v38 == 88)
                {
                  v20 = v38 + 1;
                  *(a2 + 1) = v20;
LABEL_116:
                  if (v20 >= v11 || (v39 = *v20, v39 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                    if (!result)
                    {
                      return result;
                    }

                    v40 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v39;
                    v40 = (v20 + 1);
                    *(a2 + 1) = v40;
                  }

                  v24 = *(this + 19) | 0x200;
                  *(this + 19) = v24;
                  if (v11 - v40 >= 2 && *v40 == 130 && v40[1] == 16)
                  {
                    *(a2 + 1) = v40 + 2;
                    goto LABEL_125;
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_70;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_78;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_47;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v15 >= v14 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        v21 = *(this + 19) | 1;
        *(this + 19) = v21;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_47;
      }

      v21 = *(this + 19);
LABEL_56:
      *(this + 19) = v21 | 2;
      if (*(this + 2) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v25 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v25 < v9 && *v25 == 24)
      {
        v10 = v25 + 1;
        *(a2 + 1) = v10;
LABEL_62:
        if (v10 >= v9 || (v26 = *v10, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v26;
          v27 = v10 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 19) |= 4u;
        if (v27 < v9 && *v27 == 32)
        {
          v19 = v27 + 1;
          *(a2 + 1) = v19;
LABEL_70:
          v44 = 0;
          if (v19 >= v9 || (v28 = *v19, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
            if (!result)
            {
              return result;
            }

            v28 = v44;
            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v29 = v19 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 28) = v28 != 0;
          *(this + 19) |= 8u;
          if (v29 < v9 && *v29 == 40)
          {
            v23 = v29 + 1;
            *(a2 + 1) = v23;
LABEL_78:
            v43 = 0;
            if (v23 >= v9 || (v30 = *v23, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
              if (!result)
              {
                return result;
              }

              v30 = v43;
              v31 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v31 = v23 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 29) = v30 != 0;
            *(this + 19) |= 0x10u;
            if (v31 < v9 && *v31 == 48)
            {
              v13 = v31 + 1;
              *(a2 + 1) = v13;
LABEL_86:
              if (v13 >= v9 || (v32 = *v13, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v33 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v32;
                v33 = v13 + 1;
                *(a2 + 1) = v33;
              }

              v18 = *(this + 19) | 0x20;
              *(this + 19) = v18;
              if (v33 < v9 && *v33 == 58)
              {
                *(a2 + 1) = v33 + 1;
                goto LABEL_94;
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
      goto LABEL_62;
    }

LABEL_47:
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

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v9 = *(v5 + 56);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 76) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v10 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::ByteSize(awd::metrics::BluetoothServiceConnectionAttempt *this)
{
  v2 = *(this + 19);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_42;
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
    v2 = *(this + 19);
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
    v11 = *(this + 6);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 19);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

  v4 = ((v2 >> 2) & 2) + v3 + ((v2 >> 3) & 2);
  if ((v2 & 0x20) != 0)
  {
    v13 = *(this + 10);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 19);
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
    if ((v2 & 0x40) == 0)
    {
LABEL_23:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(this + 4);
  v16 = *(v15 + 23);
  v17 = v16;
  v18 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v2 = *(this + 19);
    v17 = *(v15 + 23);
  }

  else
  {
    v20 = 1;
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  v4 = (v4 + v20 + v16 + 1);
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v21 = *(this + 11);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v2 = *(this + 19);
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v2 & 0x100) != 0)
  {
    v23 = *(this + 12);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v2 = *(this + 19);
    }

    else
    {
      v24 = 2;
    }

    v4 = (v24 + v4);
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v25 = *(this + 13);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_65;
  }

LABEL_56:
  v27 = *(this + 7);
  v28 = *(v27 + 23);
  v29 = v28;
  v30 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v31 = *(v27 + 23);
  }

  else
  {
    v31 = v30;
  }

  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
    v28 = *(v27 + 23);
    v30 = *(v27 + 8);
    v2 = *(this + 19);
    v29 = *(v27 + 23);
  }

  else
  {
    v32 = 1;
  }

  if (v29 < 0)
  {
    v28 = v30;
  }

  v4 = (v4 + v32 + v28 + 2);
  if ((v2 & 0x800) != 0)
  {
LABEL_65:
    v33 = *(this + 8);
    v34 = *(v33 + 23);
    v35 = v34;
    v36 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v37 = *(v33 + 23);
    }

    else
    {
      v37 = v36;
    }

    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
      v34 = *(v33 + 23);
      v36 = *(v33 + 8);
      v35 = *(v33 + 23);
    }

    else
    {
      v38 = 1;
    }

    if (v35 < 0)
    {
      v34 = v36;
    }

    v4 = (v4 + v38 + v34 + 2);
  }

LABEL_74:
  *(this + 18) = v4;
  return v4;
}

void awd::metrics::BluetoothServiceConnectionAttempt::CheckTypeAndMergeFrom(awd::metrics::BluetoothServiceConnectionAttempt *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothServiceConnectionAttempt::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothServiceConnectionAttempt::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothServiceConnectionAttempt::CopyFrom(awd::metrics::BluetoothServiceConnectionAttempt *this, const awd::metrics::BluetoothServiceConnectionAttempt *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothServiceConnectionAttempt::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothServiceConnectionAttempt::Swap(uint64_t this, awd::metrics::BluetoothServiceConnectionAttempt *a2)
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
    LOBYTE(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LOBYTE(v2) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v7;
    LODWORD(v7) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v7;
    LODWORD(v7) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 76) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 36) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = v1;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 56) = v1;
  *(this + 64) = v1;
  return this;
}

awd::metrics::BluetoothServiceConnectionResult *awd::metrics::BluetoothServiceConnectionResult::BluetoothServiceConnectionResult(awd::metrics::BluetoothServiceConnectionResult *this, const awd::metrics::BluetoothServiceConnectionResult *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A6F8;
  *(this + 1) = 0;
  *(this + 9) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = v3;
  *(this + 6) = 0;
  *(this + 8) = v3;
  *(this + 9) = 0;
  *(this + 7) = v3;
  *(this + 20) = 0;
  awd::metrics::BluetoothServiceConnectionResult::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothServiceConnectionResult::MergeFrom(awd::metrics::BluetoothServiceConnectionResult *this, const awd::metrics::BluetoothServiceConnectionResult *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 20) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 20);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 20) |= 2u;
    v9 = *(this + 2);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 20);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 6);
  *(this + 20) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 20);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 20) |= 8u;
  *(this + 7) = v11;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v13 = *(a2 + 9);
    *(this + 20) |= 0x20u;
    *(this + 9) = v13;
    v4 = *(a2 + 20);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 32);
  *(this + 20) |= 0x10u;
  *(this + 32) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v14 = *(a2 + 5);
  *(this + 20) |= 0x40u;
  v15 = *(this + 5);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 12);
    *(this + 20) |= 0x80u;
    *(this + 12) = v7;
    v4 = *(a2 + 20);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 13);
    *(this + 20) |= 0x100u;
    *(this + 13) = v16;
    v4 = *(a2 + 20);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(a2 + 18);
  *(this + 20) |= 0x200u;
  *(this + 18) = v17;
  v4 = *(a2 + 20);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_33:
  v18 = *(a2 + 7);
  *(this + 20) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  if ((*(a2 + 20) & 0x800) != 0)
  {
LABEL_36:
    v20 = *(a2 + 8);
    *(this + 20) |= 0x800u;
    v21 = *(this + 8);
    if (v21 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v21, v20);
  }
}

void sub_296356200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothServiceConnectionResult::~BluetoothServiceConnectionResult(awd::metrics::BluetoothServiceConnectionResult *this)
{
  *this = &unk_2A1D4A6F8;
  awd::metrics::BluetoothServiceConnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A6F8;
  awd::metrics::BluetoothServiceConnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A6F8;
  awd::metrics::BluetoothServiceConnectionResult::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothServiceConnectionResult::SharedDtor(void *this)
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

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::default_instance(awd::metrics::BluetoothServiceConnectionResult *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothServiceConnectionResult::default_instance_;
  if (!awd::metrics::BluetoothServiceConnectionResult::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothServiceConnectionResult::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 36) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    if ((*(this + 80) & 0x40) != 0)
    {
      v4 = *(this + 40);
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
    }

    *(this + 48) = 0;
    v1 = *(this + 80);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 72) = 0;
    if ((v1 & 0x400) != 0)
    {
      v5 = *(this + 56);
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

    if ((*(this + 81) & 8) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x29EDC9758])
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
  }

  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::MergePartialFromCodedStream(awd::metrics::BluetoothServiceConnectionResult *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 0xA)
          {
            if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v20 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_116;
              }

              goto LABEL_47;
            }

            if (v7 != 256)
            {
              if (v7 == 257 && v8 == 2)
              {
                goto LABEL_132;
              }

              goto LABEL_47;
            }

            if (v8 != 2)
            {
              goto LABEL_47;
            }

            v24 = *(this + 20);
LABEL_125:
            *(this + 20) = v24 | 0x400;
            if (*(this + 7) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v41 = *(a2 + 1);
            if (*(a2 + 4) - v41 >= 2 && *v41 == 138 && v41[1] == 16)
            {
              *(a2 + 1) = v41 + 2;
LABEL_132:
              *(this + 20) |= 0x800u;
              if (*(this + 8) == v4)
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

          else
          {
            if (v7 != 7)
            {
              if (v7 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v22 = *(a2 + 1);
                  v11 = *(a2 + 2);
                  goto LABEL_100;
                }
              }

              else if (v7 == 10 && (TagFallback & 7) == 0)
              {
                v12 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_108;
              }

              goto LABEL_47;
            }

            if (v8 != 2)
            {
              goto LABEL_47;
            }

            v18 = *(this + 20);
LABEL_94:
            *(this + 20) = v18 | 0x40;
            if (*(this + 5) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v34 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v34 < v11 && *v34 == 72)
            {
              v22 = v34 + 1;
              *(a2 + 1) = v22;
LABEL_100:
              if (v22 >= v11 || (v35 = *v22, v35 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                if (!result)
                {
                  return result;
                }

                v36 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 12) = v35;
                v36 = v22 + 1;
                *(a2 + 1) = v36;
              }

              *(this + 20) |= 0x80u;
              if (v36 < v11 && *v36 == 80)
              {
                v12 = v36 + 1;
                *(a2 + 1) = v12;
LABEL_108:
                if (v12 >= v11 || (v37 = *v12, v37 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                  if (!result)
                  {
                    return result;
                  }

                  v38 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 13) = v37;
                  v38 = v12 + 1;
                  *(a2 + 1) = v38;
                }

                *(this + 20) |= 0x100u;
                if (v38 < v11 && *v38 == 88)
                {
                  v20 = v38 + 1;
                  *(a2 + 1) = v20;
LABEL_116:
                  if (v20 >= v11 || (v39 = *v20, v39 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
                    if (!result)
                    {
                      return result;
                    }

                    v40 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 18) = v39;
                    v40 = (v20 + 1);
                    *(a2 + 1) = v40;
                  }

                  v24 = *(this + 20) | 0x200;
                  *(this + 20) = v24;
                  if (v11 - v40 >= 2 && *v40 == 130 && v40[1] == 16)
                  {
                    *(a2 + 1) = v40 + 2;
                    goto LABEL_125;
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_70;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_78;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_47;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v15 >= v14 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        v21 = *(this + 20) | 1;
        *(this + 20) = v21;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_47;
      }

      v21 = *(this + 20);
LABEL_56:
      *(this + 20) = v21 | 2;
      if (*(this + 2) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v25 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v25 < v9 && *v25 == 24)
      {
        v10 = v25 + 1;
        *(a2 + 1) = v10;
LABEL_62:
        if (v10 >= v9 || (v26 = *v10, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v26;
          v27 = v10 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 20) |= 4u;
        if (v27 < v9 && *v27 == 32)
        {
          v19 = v27 + 1;
          *(a2 + 1) = v19;
LABEL_70:
          if (v19 >= v9 || (v28 = *v19, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v28;
            v29 = v19 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 20) |= 8u;
          if (v29 < v9 && *v29 == 40)
          {
            v23 = v29 + 1;
            *(a2 + 1) = v23;
LABEL_78:
            v43 = 0;
            if (v23 >= v9 || (v30 = *v23, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
              if (!result)
              {
                return result;
              }

              v30 = v43;
              v31 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v31 = v23 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 32) = v30 != 0;
            *(this + 20) |= 0x10u;
            if (v31 < v9 && *v31 == 48)
            {
              v13 = v31 + 1;
              *(a2 + 1) = v13;
LABEL_86:
              if (v13 >= v9 || (v32 = *v13, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                v33 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 9) = v32;
                v33 = v13 + 1;
                *(a2 + 1) = v33;
              }

              v18 = *(this + 20) | 0x20;
              *(this + 20) = v18;
              if (v33 < v9 && *v33 == 58)
              {
                *(a2 + 1) = v33 + 1;
                goto LABEL_94;
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
      goto LABEL_62;
    }

LABEL_47:
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

uint64_t awd::metrics::BluetoothServiceConnectionResult::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 80);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v9 = *(v5 + 56);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 80) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 72), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v10 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::ByteSize(awd::metrics::BluetoothServiceConnectionResult *this)
{
  v2 = *(this + 20);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_48;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 20);
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
    v2 = *(this + 20);
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
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v12 = 2;
  }

  v3 += v12;
  if ((v2 & 8) != 0)
  {
LABEL_23:
    v13 = *(this + 7);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 20);
    }

    else
    {
      v14 = 2;
    }

    v3 += v14;
  }

LABEL_27:
  v4 = ((v2 >> 3) & 2) + v3;
  if ((v2 & 0x20) != 0)
  {
    v15 = *(this + 9);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 20);
    }

    else
    {
      v16 = 2;
    }

    v4 = (v16 + v4);
    if ((v2 & 0x40) == 0)
    {
LABEL_29:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_29;
  }

  v17 = *(this + 5);
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
    v2 = *(this + 20);
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

  v4 = (v4 + v22 + v18 + 1);
  if ((v2 & 0x80) != 0)
  {
LABEL_44:
    v23 = *(this + 12);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v2 = *(this + 20);
    }

    else
    {
      v24 = 2;
    }

    v4 = (v24 + v4);
  }

LABEL_48:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_80;
  }

  if ((v2 & 0x100) != 0)
  {
    v25 = *(this + 13);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
      v2 = *(this + 20);
    }

    else
    {
      v26 = 2;
    }

    v4 = (v26 + v4);
    if ((v2 & 0x200) == 0)
    {
LABEL_51:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_51;
  }

  v27 = *(this + 18);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v28 = 2;
  }

  v4 = (v28 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_52:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_71;
  }

LABEL_62:
  v29 = *(this + 7);
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
    v2 = *(this + 20);
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

  v4 = (v4 + v34 + v30 + 2);
  if ((v2 & 0x800) != 0)
  {
LABEL_71:
    v35 = *(this + 8);
    v36 = *(v35 + 23);
    v37 = v36;
    v38 = *(v35 + 8);
    if ((v36 & 0x80u) == 0)
    {
      v39 = *(v35 + 23);
    }

    else
    {
      v39 = v38;
    }

    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
      v36 = *(v35 + 23);
      v38 = *(v35 + 8);
      v37 = *(v35 + 23);
    }

    else
    {
      v40 = 1;
    }

    if (v37 < 0)
    {
      v36 = v38;
    }

    v4 = (v4 + v40 + v36 + 2);
  }

LABEL_80:
  *(this + 19) = v4;
  return v4;
}

void awd::metrics::BluetoothServiceConnectionResult::CheckTypeAndMergeFrom(awd::metrics::BluetoothServiceConnectionResult *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothServiceConnectionResult::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothServiceConnectionResult::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothServiceConnectionResult::CopyFrom(awd::metrics::BluetoothServiceConnectionResult *this, const awd::metrics::BluetoothServiceConnectionResult *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothServiceConnectionResult::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothServiceConnectionResult::Swap(uint64_t this, awd::metrics::BluetoothServiceConnectionResult *a2)
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
    LOBYTE(v2) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v5;
    v6 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v7;
    LODWORD(v7) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v7;
    LODWORD(v7) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 64) = MEMORY[0x29EDC9758];
  *(this + 72) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = v1;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = v1;
  return this;
}

awd::metrics::BluetoothServiceDisconnectionAttempt *awd::metrics::BluetoothServiceDisconnectionAttempt::BluetoothServiceDisconnectionAttempt(awd::metrics::BluetoothServiceDisconnectionAttempt *this, const awd::metrics::BluetoothServiceDisconnectionAttempt *a2)
{
  *(this + 9) = 0;
  *this = &unk_2A1D4A770;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = v3;
  *(this + 8) = v3;
  awd::metrics::BluetoothServiceDisconnectionAttempt::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothServiceDisconnectionAttempt::MergeFrom(awd::metrics::BluetoothServiceDisconnectionAttempt *this, const awd::metrics::BluetoothServiceDisconnectionAttempt *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 19);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 19);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 19) |= 2u;
    v9 = *(this + 2);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 19);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 6);
  *(this + 19) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 28);
  *(this + 19) |= 8u;
  *(this + 28) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v13 = *(a2 + 10);
    *(this + 19) |= 0x20u;
    *(this + 10) = v13;
    v4 = *(a2 + 19);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 29);
  *(this + 19) |= 0x10u;
  *(this + 29) = v12;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v14 = *(a2 + 4);
  *(this + 19) |= 0x40u;
  v15 = *(this + 4);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 11);
    *(this + 19) |= 0x80u;
    *(this + 11) = v7;
    v4 = *(a2 + 19);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 12);
    *(this + 19) |= 0x100u;
    *(this + 12) = v16;
    v4 = *(a2 + 19);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(a2 + 13);
  *(this + 19) |= 0x200u;
  *(this + 13) = v17;
  v4 = *(a2 + 19);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_33:
  v18 = *(a2 + 7);
  *(this + 19) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  if ((*(a2 + 19) & 0x800) != 0)
  {
LABEL_36:
    v20 = *(a2 + 8);
    *(this + 19) |= 0x800u;
    v21 = *(this + 8);
    if (v21 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v21, v20);
  }
}

void sub_296357680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothServiceDisconnectionAttempt::~BluetoothServiceDisconnectionAttempt(awd::metrics::BluetoothServiceDisconnectionAttempt *this)
{
  *this = &unk_2A1D4A770;
  awd::metrics::BluetoothServiceDisconnectionAttempt::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A770;
  awd::metrics::BluetoothServiceDisconnectionAttempt::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A770;
  awd::metrics::BluetoothServiceDisconnectionAttempt::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothServiceDisconnectionAttempt::SharedDtor(void *this)
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

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[4];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::default_instance(awd::metrics::BluetoothServiceDisconnectionAttempt *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothServiceDisconnectionAttempt::default_instance_;
  if (!awd::metrics::BluetoothServiceDisconnectionAttempt::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothServiceDisconnectionAttempt::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 24) = 0;
    *(this + 28) = 0;
    *(this + 40) = 0;
    if ((*(this + 76) & 0x40) != 0)
    {
      v4 = *(this + 32);
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
    }

    *(this + 44) = 0;
    v1 = *(this + 76);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    if ((v1 & 0x400) != 0)
    {
      v5 = *(this + 56);
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

    if ((*(this + 77) & 8) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x29EDC9758])
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
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::MergePartialFromCodedStream(awd::metrics::BluetoothServiceDisconnectionAttempt *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 0xA)
          {
            if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v20 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_116;
              }

              goto LABEL_47;
            }

            if (v7 != 256)
            {
              if (v7 == 257 && v8 == 2)
              {
                goto LABEL_132;
              }

              goto LABEL_47;
            }

            if (v8 != 2)
            {
              goto LABEL_47;
            }

            v24 = *(this + 19);
LABEL_125:
            *(this + 19) = v24 | 0x400;
            if (*(this + 7) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v41 = *(a2 + 1);
            if (*(a2 + 4) - v41 >= 2 && *v41 == 138 && v41[1] == 16)
            {
              *(a2 + 1) = v41 + 2;
LABEL_132:
              *(this + 19) |= 0x800u;
              if (*(this + 8) == v4)
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

          else
          {
            if (v7 != 7)
            {
              if (v7 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v22 = *(a2 + 1);
                  v11 = *(a2 + 2);
                  goto LABEL_100;
                }
              }

              else if (v7 == 10 && (TagFallback & 7) == 0)
              {
                v12 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_108;
              }

              goto LABEL_47;
            }

            if (v8 != 2)
            {
              goto LABEL_47;
            }

            v18 = *(this + 19);
LABEL_94:
            *(this + 19) = v18 | 0x40;
            if (*(this + 4) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v34 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v34 < v11 && *v34 == 72)
            {
              v22 = v34 + 1;
              *(a2 + 1) = v22;
LABEL_100:
              if (v22 >= v11 || (v35 = *v22, v35 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                if (!result)
                {
                  return result;
                }

                v36 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 11) = v35;
                v36 = v22 + 1;
                *(a2 + 1) = v36;
              }

              *(this + 19) |= 0x80u;
              if (v36 < v11 && *v36 == 80)
              {
                v12 = v36 + 1;
                *(a2 + 1) = v12;
LABEL_108:
                if (v12 >= v11 || (v37 = *v12, v37 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  v38 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 12) = v37;
                  v38 = v12 + 1;
                  *(a2 + 1) = v38;
                }

                *(this + 19) |= 0x100u;
                if (v38 < v11 && *v38 == 88)
                {
                  v20 = v38 + 1;
                  *(a2 + 1) = v20;
LABEL_116:
                  if (v20 >= v11 || (v39 = *v20, v39 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                    if (!result)
                    {
                      return result;
                    }

                    v40 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v39;
                    v40 = (v20 + 1);
                    *(a2 + 1) = v40;
                  }

                  v24 = *(this + 19) | 0x200;
                  *(this + 19) = v24;
                  if (v11 - v40 >= 2 && *v40 == 130 && v40[1] == 16)
                  {
                    *(a2 + 1) = v40 + 2;
                    goto LABEL_125;
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_70;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_78;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_47;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v15 >= v14 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        v21 = *(this + 19) | 1;
        *(this + 19) = v21;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_47;
      }

      v21 = *(this + 19);
LABEL_56:
      *(this + 19) = v21 | 2;
      if (*(this + 2) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v25 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v25 < v9 && *v25 == 24)
      {
        v10 = v25 + 1;
        *(a2 + 1) = v10;
LABEL_62:
        if (v10 >= v9 || (v26 = *v10, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v26;
          v27 = v10 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 19) |= 4u;
        if (v27 < v9 && *v27 == 32)
        {
          v19 = v27 + 1;
          *(a2 + 1) = v19;
LABEL_70:
          v44 = 0;
          if (v19 >= v9 || (v28 = *v19, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
            if (!result)
            {
              return result;
            }

            v28 = v44;
            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v29 = v19 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 28) = v28 != 0;
          *(this + 19) |= 8u;
          if (v29 < v9 && *v29 == 40)
          {
            v23 = v29 + 1;
            *(a2 + 1) = v23;
LABEL_78:
            v43 = 0;
            if (v23 >= v9 || (v30 = *v23, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
              if (!result)
              {
                return result;
              }

              v30 = v43;
              v31 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v31 = v23 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 29) = v30 != 0;
            *(this + 19) |= 0x10u;
            if (v31 < v9 && *v31 == 48)
            {
              v13 = v31 + 1;
              *(a2 + 1) = v13;
LABEL_86:
              if (v13 >= v9 || (v32 = *v13, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v33 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v32;
                v33 = v13 + 1;
                *(a2 + 1) = v33;
              }

              v18 = *(this + 19) | 0x20;
              *(this + 19) = v18;
              if (v33 < v9 && *v33 == 58)
              {
                *(a2 + 1) = v33 + 1;
                goto LABEL_94;
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
      goto LABEL_62;
    }

LABEL_47:
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

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 29), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v9 = *(v5 + 56);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 76) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v10 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::ByteSize(awd::metrics::BluetoothServiceDisconnectionAttempt *this)
{
  v2 = *(this + 19);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_42;
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
    v2 = *(this + 19);
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
    v11 = *(this + 6);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 19);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

  v4 = ((v2 >> 2) & 2) + v3 + ((v2 >> 3) & 2);
  if ((v2 & 0x20) != 0)
  {
    v13 = *(this + 10);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 19);
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
    if ((v2 & 0x40) == 0)
    {
LABEL_23:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(this + 4);
  v16 = *(v15 + 23);
  v17 = v16;
  v18 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v2 = *(this + 19);
    v17 = *(v15 + 23);
  }

  else
  {
    v20 = 1;
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  v4 = (v4 + v20 + v16 + 1);
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v21 = *(this + 11);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v2 = *(this + 19);
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v2 & 0x100) != 0)
  {
    v23 = *(this + 12);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v2 = *(this + 19);
    }

    else
    {
      v24 = 2;
    }

    v4 = (v24 + v4);
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v25 = *(this + 13);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_65;
  }

LABEL_56:
  v27 = *(this + 7);
  v28 = *(v27 + 23);
  v29 = v28;
  v30 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v31 = *(v27 + 23);
  }

  else
  {
    v31 = v30;
  }

  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
    v28 = *(v27 + 23);
    v30 = *(v27 + 8);
    v2 = *(this + 19);
    v29 = *(v27 + 23);
  }

  else
  {
    v32 = 1;
  }

  if (v29 < 0)
  {
    v28 = v30;
  }

  v4 = (v4 + v32 + v28 + 2);
  if ((v2 & 0x800) != 0)
  {
LABEL_65:
    v33 = *(this + 8);
    v34 = *(v33 + 23);
    v35 = v34;
    v36 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v37 = *(v33 + 23);
    }

    else
    {
      v37 = v36;
    }

    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
      v34 = *(v33 + 23);
      v36 = *(v33 + 8);
      v35 = *(v33 + 23);
    }

    else
    {
      v38 = 1;
    }

    if (v35 < 0)
    {
      v34 = v36;
    }

    v4 = (v4 + v38 + v34 + 2);
  }

LABEL_74:
  *(this + 18) = v4;
  return v4;
}

void awd::metrics::BluetoothServiceDisconnectionAttempt::CheckTypeAndMergeFrom(awd::metrics::BluetoothServiceDisconnectionAttempt *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothServiceDisconnectionAttempt::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothServiceDisconnectionAttempt::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothServiceDisconnectionAttempt::CopyFrom(awd::metrics::BluetoothServiceDisconnectionAttempt *this, const awd::metrics::BluetoothServiceDisconnectionAttempt *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothServiceDisconnectionAttempt::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothServiceDisconnectionAttempt::Swap(uint64_t this, awd::metrics::BluetoothServiceDisconnectionAttempt *a2)
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
    LOBYTE(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LOBYTE(v2) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v7;
    LODWORD(v7) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v7;
    LODWORD(v7) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 76) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 36) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = v1;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 56) = v1;
  *(this + 64) = v1;
  return this;
}

awd::metrics::BluetoothServiceDisconnectionResult *awd::metrics::BluetoothServiceDisconnectionResult::BluetoothServiceDisconnectionResult(awd::metrics::BluetoothServiceDisconnectionResult *this, const awd::metrics::BluetoothServiceDisconnectionResult *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4A7E8;
  *(this + 1) = 0;
  *(this + 9) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = v3;
  *(this + 6) = 0;
  *(this + 8) = v3;
  *(this + 9) = 0;
  *(this + 7) = v3;
  *(this + 20) = 0;
  awd::metrics::BluetoothServiceDisconnectionResult::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothServiceDisconnectionResult::MergeFrom(awd::metrics::BluetoothServiceDisconnectionResult *this, const awd::metrics::BluetoothServiceDisconnectionResult *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 20) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 20);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 20) |= 2u;
    v9 = *(this + 2);
    if (v9 == v6)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 20);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 6);
  *(this + 20) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 20);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 20) |= 8u;
  *(this + 7) = v11;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    v13 = *(a2 + 9);
    *(this + 20) |= 0x20u;
    *(this + 9) = v13;
    v4 = *(a2 + 20);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 32);
  *(this + 20) |= 0x10u;
  *(this + 32) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v14 = *(a2 + 5);
  *(this + 20) |= 0x40u;
  v15 = *(this + 5);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 12);
    *(this + 20) |= 0x80u;
    *(this + 12) = v7;
    v4 = *(a2 + 20);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 13);
    *(this + 20) |= 0x100u;
    *(this + 13) = v16;
    v4 = *(a2 + 20);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v17 = *(a2 + 18);
  *(this + 20) |= 0x200u;
  *(this + 18) = v17;
  v4 = *(a2 + 20);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_33:
  v18 = *(a2 + 7);
  *(this + 20) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  if ((*(a2 + 20) & 0x800) != 0)
  {
LABEL_36:
    v20 = *(a2 + 8);
    *(this + 20) |= 0x800u;
    v21 = *(this + 8);
    if (v21 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v21, v20);
  }
}

void sub_296358AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothServiceDisconnectionResult::~BluetoothServiceDisconnectionResult(awd::metrics::BluetoothServiceDisconnectionResult *this)
{
  *this = &unk_2A1D4A7E8;
  awd::metrics::BluetoothServiceDisconnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A7E8;
  awd::metrics::BluetoothServiceDisconnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A7E8;
  awd::metrics::BluetoothServiceDisconnectionResult::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothServiceDisconnectionResult::SharedDtor(void *this)
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

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[8];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::default_instance(awd::metrics::BluetoothServiceDisconnectionResult *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothServiceDisconnectionResult::default_instance_;
  if (!awd::metrics::BluetoothServiceDisconnectionResult::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothServiceDisconnectionResult::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
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
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 36) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    if ((*(this + 80) & 0x40) != 0)
    {
      v4 = *(this + 40);
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
    }

    *(this + 48) = 0;
    v1 = *(this + 80);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 72) = 0;
    if ((v1 & 0x400) != 0)
    {
      v5 = *(this + 56);
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

    if ((*(this + 81) & 8) != 0)
    {
      v6 = *(this + 64);
      if (v6 != MEMORY[0x29EDC9758])
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
  }

  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::MergePartialFromCodedStream(awd::metrics::BluetoothServiceDisconnectionResult *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 0xA)
          {
            if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v20 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_116;
              }

              goto LABEL_47;
            }

            if (v7 != 256)
            {
              if (v7 == 257 && v8 == 2)
              {
                goto LABEL_132;
              }

              goto LABEL_47;
            }

            if (v8 != 2)
            {
              goto LABEL_47;
            }

            v24 = *(this + 20);
LABEL_125:
            *(this + 20) = v24 | 0x400;
            if (*(this + 7) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v41 = *(a2 + 1);
            if (*(a2 + 4) - v41 >= 2 && *v41 == 138 && v41[1] == 16)
            {
              *(a2 + 1) = v41 + 2;
LABEL_132:
              *(this + 20) |= 0x800u;
              if (*(this + 8) == v4)
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

          else
          {
            if (v7 != 7)
            {
              if (v7 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v22 = *(a2 + 1);
                  v11 = *(a2 + 2);
                  goto LABEL_100;
                }
              }

              else if (v7 == 10 && (TagFallback & 7) == 0)
              {
                v12 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_108;
              }

              goto LABEL_47;
            }

            if (v8 != 2)
            {
              goto LABEL_47;
            }

            v18 = *(this + 20);
LABEL_94:
            *(this + 20) = v18 | 0x40;
            if (*(this + 5) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v34 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v34 < v11 && *v34 == 72)
            {
              v22 = v34 + 1;
              *(a2 + 1) = v22;
LABEL_100:
              if (v22 >= v11 || (v35 = *v22, v35 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                if (!result)
                {
                  return result;
                }

                v36 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 12) = v35;
                v36 = v22 + 1;
                *(a2 + 1) = v36;
              }

              *(this + 20) |= 0x80u;
              if (v36 < v11 && *v36 == 80)
              {
                v12 = v36 + 1;
                *(a2 + 1) = v12;
LABEL_108:
                if (v12 >= v11 || (v37 = *v12, v37 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                  if (!result)
                  {
                    return result;
                  }

                  v38 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 13) = v37;
                  v38 = v12 + 1;
                  *(a2 + 1) = v38;
                }

                *(this + 20) |= 0x100u;
                if (v38 < v11 && *v38 == 88)
                {
                  v20 = v38 + 1;
                  *(a2 + 1) = v20;
LABEL_116:
                  if (v20 >= v11 || (v39 = *v20, v39 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
                    if (!result)
                    {
                      return result;
                    }

                    v40 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 18) = v39;
                    v40 = (v20 + 1);
                    *(a2 + 1) = v40;
                  }

                  v24 = *(this + 20) | 0x200;
                  *(this + 20) = v24;
                  if (v11 - v40 >= 2 && *v40 == 130 && v40[1] == 16)
                  {
                    *(a2 + 1) = v40 + 2;
                    goto LABEL_125;
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_70;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v23 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_78;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_47;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v15 >= v14 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v16;
          v17 = v15 + 1;
          *(a2 + 1) = v17;
        }

        v21 = *(this + 20) | 1;
        *(this + 20) = v21;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_47;
      }

      v21 = *(this + 20);
LABEL_56:
      *(this + 20) = v21 | 2;
      if (*(this + 2) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v25 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v25 < v9 && *v25 == 24)
      {
        v10 = v25 + 1;
        *(a2 + 1) = v10;
LABEL_62:
        if (v10 >= v9 || (v26 = *v10, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v26;
          v27 = v10 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 20) |= 4u;
        if (v27 < v9 && *v27 == 32)
        {
          v19 = v27 + 1;
          *(a2 + 1) = v19;
LABEL_70:
          if (v19 >= v9 || (v28 = *v19, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v28;
            v29 = v19 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 20) |= 8u;
          if (v29 < v9 && *v29 == 40)
          {
            v23 = v29 + 1;
            *(a2 + 1) = v23;
LABEL_78:
            v43 = 0;
            if (v23 >= v9 || (v30 = *v23, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
              if (!result)
              {
                return result;
              }

              v30 = v43;
              v31 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v31 = v23 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 32) = v30 != 0;
            *(this + 20) |= 0x10u;
            if (v31 < v9 && *v31 == 48)
            {
              v13 = v31 + 1;
              *(a2 + 1) = v13;
LABEL_86:
              if (v13 >= v9 || (v32 = *v13, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                v33 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 9) = v32;
                v33 = v13 + 1;
                *(a2 + 1) = v33;
              }

              v18 = *(this + 20) | 0x20;
              *(this + 20) = v18;
              if (v33 < v9 && *v33 == 58)
              {
                *(a2 + 1) = v33 + 1;
                goto LABEL_94;
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
      goto LABEL_62;
    }

LABEL_47:
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