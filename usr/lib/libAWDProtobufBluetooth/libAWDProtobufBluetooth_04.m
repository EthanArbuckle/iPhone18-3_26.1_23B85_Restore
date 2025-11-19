void awd::metrics::BluetoothCloudPairingInitiated::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingInitiated *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothCloudPairingInitiated::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingInitiated::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingInitiated::CopyFrom(awd::metrics::BluetoothCloudPairingInitiated *this, const awd::metrics::BluetoothCloudPairingInitiated *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingInitiated::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingInitiated::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingInitiated *a2)
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
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    LODWORD(v7) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v7;
    LODWORD(v7) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothCloudPairingSendFailure *awd::metrics::BluetoothCloudPairingSendFailure::BluetoothCloudPairingSendFailure(awd::metrics::BluetoothCloudPairingSendFailure *this, const awd::metrics::BluetoothCloudPairingSendFailure *a2)
{
  *this = &unk_2A1D4B2B0;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v3;
  *(this + 10) = 0;
  awd::metrics::BluetoothCloudPairingSendFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingSendFailure::MergeFrom(awd::metrics::BluetoothCloudPairingSendFailure *this, const awd::metrics::BluetoothCloudPairingSendFailure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 10);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 8);
    *(this + 10) |= 4u;
    *(this + 8) = v9;
    if ((*(a2 + 10) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 3);
    *(this + 10) |= 8u;
    *(this + 3) = v5;
  }
}

void sub_29636CA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingSendFailure::~BluetoothCloudPairingSendFailure(awd::metrics::BluetoothCloudPairingSendFailure *this)
{
  *this = &unk_2A1D4B2B0;
  awd::metrics::BluetoothCloudPairingSendFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B2B0;
  awd::metrics::BluetoothCloudPairingSendFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B2B0;
  awd::metrics::BluetoothCloudPairingSendFailure::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::default_instance(awd::metrics::BluetoothCloudPairingSendFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingSendFailure::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingSendFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingSendFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::Clear(uint64_t this)
{
  v1 = *(this + 40);
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

    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingSendFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
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

        v9 = *(this + 10) | 1;
        *(this + 10) = v9;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (v7 != 2 || v8 != 2)
        {
          goto LABEL_21;
        }

        v9 = *(this + 10);
LABEL_30:
        *(this + 10) = v9 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v17 < v10 && *v17 == 24)
        {
          v16 = v17 + 1;
          *(a2 + 1) = v16;
LABEL_36:
          if (v16 >= v10 || (v18 = *v16, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v18;
            v19 = v16 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 10) |= 4u;
          if (v19 < v10 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(a2 + 1) = v11;
LABEL_44:
            if (v11 >= v10 || (v20 = *v11, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v21 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v20;
              v21 = v11 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 10) |= 8u;
            if (v21 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_36;
      }
    }

    else if (v7 == 4 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_44;
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

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
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
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v8, a2, a4);
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::ByteSize(awd::metrics::BluetoothCloudPairingSendFailure *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(this + 40))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 10);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
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
    v2 = *(this + 10);
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
    v11 = *(this + 8);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
    if ((v2 & 8) != 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v2 & 8) != 0)
  {
LABEL_18:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_19:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::BluetoothCloudPairingSendFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingSendFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothCloudPairingSendFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingSendFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingSendFailure::CopyFrom(awd::metrics::BluetoothCloudPairingSendFailure *this, const awd::metrics::BluetoothCloudPairingSendFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingSendFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingSendFailure::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingSendFailure *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
  }

  return this;
}

void *awd::metrics::BluetoothCloudPairingReceiveFailure::SharedCtor(void *this)
{
  this[3] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  return this;
}

awd::metrics::BluetoothCloudPairingReceiveFailure *awd::metrics::BluetoothCloudPairingReceiveFailure::BluetoothCloudPairingReceiveFailure(awd::metrics::BluetoothCloudPairingReceiveFailure *this, const awd::metrics::BluetoothCloudPairingReceiveFailure *a2)
{
  *this = &unk_2A1D4B328;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  awd::metrics::BluetoothCloudPairingReceiveFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingReceiveFailure::MergeFrom(awd::metrics::BluetoothCloudPairingReceiveFailure *this, const awd::metrics::BluetoothCloudPairingReceiveFailure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 2u;
      v7 = *(this + 2);
      if (v7 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_29636D424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingReceiveFailure::~BluetoothCloudPairingReceiveFailure(awd::metrics::BluetoothCloudPairingReceiveFailure *this)
{
  *this = &unk_2A1D4B328;
  awd::metrics::BluetoothCloudPairingReceiveFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B328;
  awd::metrics::BluetoothCloudPairingReceiveFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B328;
  awd::metrics::BluetoothCloudPairingReceiveFailure::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::default_instance(awd::metrics::BluetoothCloudPairingReceiveFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingReceiveFailure::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingReceiveFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingReceiveFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::Clear(uint64_t this)
{
  v1 = *(this + 28);
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
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingReceiveFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v7 != 2)
        {
          goto LABEL_14;
        }

        v12 = *(this + 7);
LABEL_23:
        *(this + 7) = v12 | 2;
        if (*(this + 2) == v4)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
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

      v12 = *(this + 7) | 1;
      *(this + 7) = v12;
      if (v11 < v8 && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
        goto LABEL_23;
      }
    }

LABEL_14:
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

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((*(this + 7) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v2 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v3 = this[2];
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 1);
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
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 1);
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 1;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    v2 = (v2 + v8 + v4 + 1);
  }

  else
  {
    v2 = 0;
  }

LABEL_16:
  *(this + 6) = v2;
  return v2;
}

void awd::metrics::BluetoothCloudPairingReceiveFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingReceiveFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothCloudPairingReceiveFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingReceiveFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingReceiveFailure::CopyFrom(awd::metrics::BluetoothCloudPairingReceiveFailure *this, const awd::metrics::BluetoothCloudPairingReceiveFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingReceiveFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingReceiveFailure::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingReceiveFailure *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::BluetoothCloudPairingRoleFailure *awd::metrics::BluetoothCloudPairingRoleFailure::BluetoothCloudPairingRoleFailure(awd::metrics::BluetoothCloudPairingRoleFailure *this, const awd::metrics::BluetoothCloudPairingRoleFailure *a2)
{
  *(this + 20) = 0;
  *this = &unk_2A1D4B3A0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  awd::metrics::BluetoothCloudPairingRoleFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingRoleFailure::MergeFrom(awd::metrics::BluetoothCloudPairingRoleFailure *this, const awd::metrics::BluetoothCloudPairingRoleFailure *a2)
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
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(this + 6) |= 2u;
      *(this + 16) = v6;
    }
  }
}

void sub_29636DBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingRoleFailure::~BluetoothCloudPairingRoleFailure(awd::metrics::BluetoothCloudPairingRoleFailure *this)
{
  *this = &unk_2A1D4B3A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B3A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B3A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::default_instance(awd::metrics::BluetoothCloudPairingRoleFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingRoleFailure::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingRoleFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingRoleFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingRoleFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 6) |= 1u;
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

        *(this + 16) = v11 != 0;
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

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::ByteSize(awd::metrics::BluetoothCloudPairingRoleFailure *this)
{
  LOBYTE(v2) = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 6);
    }

    else
    {
      v3 = 0;
    }

    result = (v2 & 2u) + v3;
  }

  else
  {
    result = 0;
  }

  *(this + 5) = result;
  return result;
}

void awd::metrics::BluetoothCloudPairingRoleFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingRoleFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothCloudPairingRoleFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingRoleFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingRoleFailure::CopyFrom(awd::metrics::BluetoothCloudPairingRoleFailure *this, const awd::metrics::BluetoothCloudPairingRoleFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingRoleFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingRoleFailure::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingRoleFailure *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  return this;
}

awd::metrics::BluetoothCloudPairingPairFailure *awd::metrics::BluetoothCloudPairingPairFailure::BluetoothCloudPairingPairFailure(awd::metrics::BluetoothCloudPairingPairFailure *this, const awd::metrics::BluetoothCloudPairingPairFailure *a2)
{
  *(this + 36) = 0;
  *this = &unk_2A1D4B418;
  *(this + 1) = 0;
  *(this + 32) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  awd::metrics::BluetoothCloudPairingPairFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingPairFailure::MergeFrom(awd::metrics::BluetoothCloudPairingPairFailure *this, const awd::metrics::BluetoothCloudPairingPairFailure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 10);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 32);
      *(this + 10) |= 2u;
      *(this + 32) = v6;
      v4 = *(a2 + 10);
    }

    v7 = MEMORY[0x29EDC9758];
    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 10) |= 4u;
      v9 = *(this + 2);
      if (v9 == v7)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v4 = *(a2 + 10);
    }

    if ((v4 & 8) != 0)
    {
      v10 = *(a2 + 3);
      *(this + 10) |= 8u;
      v11 = *(this + 3);
      if (v11 == v7)
      {
        operator new();
      }

      std::string::operator=(v11, v10);
    }
  }
}

void sub_29636E304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingPairFailure::~BluetoothCloudPairingPairFailure(awd::metrics::BluetoothCloudPairingPairFailure *this)
{
  *this = &unk_2A1D4B418;
  awd::metrics::BluetoothCloudPairingPairFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B418;
  awd::metrics::BluetoothCloudPairingPairFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B418;
  awd::metrics::BluetoothCloudPairingPairFailure::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::SharedDtor(uint64_t this)
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

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::default_instance(awd::metrics::BluetoothCloudPairingPairFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingPairFailure::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingPairFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingPairFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 32) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 4) != 0)
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

    if ((*(this + 40) & 8) != 0)
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
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingPairFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && v8 == 2)
          {
            goto LABEL_44;
          }

          goto LABEL_21;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

        v14 = *(this + 10);
LABEL_38:
        *(this + 10) = v14 | 4;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 34)
        {
          *(a2 + 1) = v17 + 1;
LABEL_44:
          *(this + 10) |= 8u;
          if (*(this + 3) == v4)
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

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 >= v9 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 10) |= 1u;
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_30:
        v19 = 0;
        if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
          if (!result)
          {
            return result;
          }

          v15 = v19;
          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v16 = v10 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 32) = v15 != 0;
        v14 = *(this + 10) | 2;
        *(this + 10) = v14;
        if (v16 < v9 && *v16 == 26)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_30;
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

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v5 + 16);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      if ((*(v5 + 40) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
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
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::ByteSize(awd::metrics::BluetoothCloudPairingPairFailure *this)
{
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    if (*(this + 40))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v3 = 0;
    }

    v4 = (v2 & 2u) + v3;
    if ((v2 & 4) != 0)
    {
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
        v2 = *(this + 10);
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

      v4 = (v4 + v10 + v6 + 1);
    }

    if ((v2 & 8) != 0)
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

      v4 = (v4 + v16 + v12 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 9) = v4;
  return v4;
}

void awd::metrics::BluetoothCloudPairingPairFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothCloudPairingPairFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothCloudPairingPairFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothCloudPairingPairFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothCloudPairingPairFailure::CopyFrom(awd::metrics::BluetoothCloudPairingPairFailure *this, const awd::metrics::BluetoothCloudPairingPairFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothCloudPairingPairFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothCloudPairingPairFailure::Swap(uint64_t this, awd::metrics::BluetoothCloudPairingPairFailure *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    v3 = *(this + 8);
    v4 = *(this + 16);
    v5 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v5;
    *(a2 + 1) = v3;
    *(a2 + 2) = v4;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::SharedCtor(awd::metrics::BluetoothA2DPAudioLinkInfo *this)
{
  *(this + 88) = 0u;
  result = this + 88;
  *(result + 220) = 0;
  *(result - 80) = 0;
  *(result - 72) = 0;
  *(result - 68) = 0;
  *(result - 32) = 0;
  *(result - 8) = MEMORY[0x29EDC9758];
  *(result + 224) = 0;
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
  *(result + 204) = 0u;
  return result;
}

awd::metrics::BluetoothA2DPAudioLinkInfo *awd::metrics::BluetoothA2DPAudioLinkInfo::BluetoothA2DPAudioLinkInfo(awd::metrics::BluetoothA2DPAudioLinkInfo *this, const awd::metrics::BluetoothA2DPAudioLinkInfo *a2)
{
  *(this + 77) = 0;
  *this = &unk_2A1D4B490;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = MEMORY[0x29EDC9758];
  *(this + 39) = 0;
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
  *(this + 88) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 292) = 0u;
  awd::metrics::BluetoothA2DPAudioLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_29636ED38(_Unwind_Exception *a1)
{
  v3 = v1[8];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothA2DPAudioLinkInfo::BluetoothA2DPAudioLinkInfo((v1 + 5), v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPAudioLinkInfo::MergeFrom(awd::metrics::BluetoothA2DPAudioLinkInfo *this, const awd::metrics::BluetoothA2DPAudioLinkInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v63);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 3, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 5, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(a2 + 78);
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    v15 = *(a2 + 1);
    *(this + 78) |= 1u;
    *(this + 1) = v15;
    v7 = *(a2 + 78);
    if ((v7 & 2) == 0)
    {
LABEL_12:
      if ((v7 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_78:
      v17 = *(a2 + 5);
      *(this + 78) |= 4u;
      *(this + 5) = v17;
      v7 = *(a2 + 78);
      if ((v7 & 0x20) == 0)
      {
LABEL_14:
        if ((v7 & 0x40) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_79;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_12;
  }

  v16 = *(a2 + 16);
  *(this + 78) |= 2u;
  *(this + 16) = v16;
  v7 = *(a2 + 78);
  if ((v7 & 4) != 0)
  {
    goto LABEL_78;
  }

LABEL_13:
  if ((v7 & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_79:
  v18 = *(a2 + 14);
  *(this + 78) |= 0x20u;
  *(this + 14) = v18;
  v7 = *(a2 + 78);
  if ((v7 & 0x40) != 0)
  {
LABEL_15:
    v8 = *(a2 + 15);
    *(this + 78) |= 0x40u;
    *(this + 15) = v8;
    v7 = *(a2 + 78);
  }

LABEL_16:
  if ((v7 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v7 & 0x100) != 0)
  {
    v19 = *(a2 + 10);
    *(this + 78) |= 0x100u;
    v20 = *(this + 10);
    if (v20 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v20, v19);
    v7 = *(a2 + 78);
    if ((v7 & 0x200) == 0)
    {
LABEL_19:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_85;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v21 = *(a2 + 22);
  *(this + 78) |= 0x200u;
  *(this + 22) = v21;
  v7 = *(a2 + 78);
  if ((v7 & 0x400) == 0)
  {
LABEL_20:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_86;
  }

LABEL_85:
  v22 = *(a2 + 23);
  *(this + 78) |= 0x400u;
  *(this + 23) = v22;
  v7 = *(a2 + 78);
  if ((v7 & 0x800) == 0)
  {
LABEL_21:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_87;
  }

LABEL_86:
  v23 = *(a2 + 24);
  *(this + 78) |= 0x800u;
  *(this + 24) = v23;
  v7 = *(a2 + 78);
  if ((v7 & 0x1000) == 0)
  {
LABEL_22:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_88;
  }

LABEL_87:
  v24 = *(a2 + 25);
  *(this + 78) |= 0x1000u;
  *(this + 25) = v24;
  v7 = *(a2 + 78);
  if ((v7 & 0x2000) == 0)
  {
LABEL_23:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_89;
  }

LABEL_88:
  v25 = *(a2 + 26);
  *(this + 78) |= 0x2000u;
  *(this + 26) = v25;
  v7 = *(a2 + 78);
  if ((v7 & 0x4000) == 0)
  {
LABEL_24:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_89:
  v26 = *(a2 + 27);
  *(this + 78) |= 0x4000u;
  *(this + 27) = v26;
  v7 = *(a2 + 78);
  if ((v7 & 0x8000) != 0)
  {
LABEL_25:
    v9 = *(a2 + 28);
    *(this + 78) |= 0x8000u;
    *(this + 28) = v9;
    v7 = *(a2 + 78);
  }

LABEL_26:
  if ((v7 & 0xFF0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v7 & 0x10000) != 0)
  {
    v27 = *(a2 + 29);
    *(this + 78) |= 0x10000u;
    *(this + 29) = v27;
    v7 = *(a2 + 78);
    if ((v7 & 0x20000) == 0)
    {
LABEL_29:
      if ((v7 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_93;
    }
  }

  else if ((v7 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v28 = *(a2 + 30);
  *(this + 78) |= 0x20000u;
  *(this + 30) = v28;
  v7 = *(a2 + 78);
  if ((v7 & 0x40000) == 0)
  {
LABEL_30:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_94;
  }

LABEL_93:
  v29 = *(a2 + 31);
  *(this + 78) |= 0x40000u;
  *(this + 31) = v29;
  v7 = *(a2 + 78);
  if ((v7 & 0x80000) == 0)
  {
LABEL_31:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_95;
  }

LABEL_94:
  v30 = *(a2 + 32);
  *(this + 78) |= 0x80000u;
  *(this + 32) = v30;
  v7 = *(a2 + 78);
  if ((v7 & 0x100000) == 0)
  {
LABEL_32:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_96;
  }

LABEL_95:
  v31 = *(a2 + 33);
  *(this + 78) |= 0x100000u;
  *(this + 33) = v31;
  v7 = *(a2 + 78);
  if ((v7 & 0x200000) == 0)
  {
LABEL_33:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_97;
  }

LABEL_96:
  v32 = *(a2 + 34);
  *(this + 78) |= 0x200000u;
  *(this + 34) = v32;
  v7 = *(a2 + 78);
  if ((v7 & 0x400000) == 0)
  {
LABEL_34:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_97:
  v33 = *(a2 + 35);
  *(this + 78) |= 0x400000u;
  *(this + 35) = v33;
  v7 = *(a2 + 78);
  if ((v7 & 0x800000) != 0)
  {
LABEL_35:
    v10 = *(a2 + 36);
    *(this + 78) |= 0x800000u;
    *(this + 36) = v10;
    v7 = *(a2 + 78);
  }

LABEL_36:
  if (!HIBYTE(v7))
  {
    goto LABEL_45;
  }

  if ((v7 & 0x1000000) != 0)
  {
    v55 = *(a2 + 37);
    *(this + 78) |= 0x1000000u;
    *(this + 37) = v55;
    v7 = *(a2 + 78);
    if ((v7 & 0x2000000) == 0)
    {
LABEL_39:
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_125;
    }
  }

  else if ((v7 & 0x2000000) == 0)
  {
    goto LABEL_39;
  }

  v56 = *(a2 + 38);
  *(this + 78) |= 0x2000000u;
  *(this + 38) = v56;
  v7 = *(a2 + 78);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_126;
  }

LABEL_125:
  v57 = *(a2 + 39);
  *(this + 78) |= 0x4000000u;
  *(this + 39) = v57;
  v7 = *(a2 + 78);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_127;
  }

LABEL_126:
  v58 = *(a2 + 40);
  *(this + 78) |= 0x8000000u;
  *(this + 40) = v58;
  v7 = *(a2 + 78);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_128;
  }

LABEL_127:
  v59 = *(a2 + 41);
  *(this + 78) |= 0x10000000u;
  *(this + 41) = v59;
  v7 = *(a2 + 78);
  if ((v7 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_129:
    v61 = *(a2 + 43);
    *(this + 78) |= 0x40000000u;
    *(this + 43) = v61;
    if ((*(a2 + 78) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_130;
  }

LABEL_128:
  v60 = *(a2 + 42);
  *(this + 78) |= 0x20000000u;
  *(this + 42) = v60;
  v7 = *(a2 + 78);
  if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_129;
  }

LABEL_44:
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_130:
  v62 = *(a2 + 44);
  *(this + 78) |= 0x80000000;
  *(this + 44) = v62;
LABEL_45:
  v11 = *(a2 + 79);
  if (!v11)
  {
    goto LABEL_55;
  }

  if (v11)
  {
    v34 = *(a2 + 45);
    *(this + 79) |= 1u;
    *(this + 45) = v34;
    v11 = *(a2 + 79);
    if ((v11 & 2) == 0)
    {
LABEL_48:
      if ((v11 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_101;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_48;
  }

  v35 = *(a2 + 23);
  *(this + 79) |= 2u;
  *(this + 23) = v35;
  v11 = *(a2 + 79);
  if ((v11 & 4) == 0)
  {
LABEL_49:
    if ((v11 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_102;
  }

LABEL_101:
  v36 = *(a2 + 24);
  *(this + 79) |= 4u;
  *(this + 24) = v36;
  v11 = *(a2 + 79);
  if ((v11 & 8) == 0)
  {
LABEL_50:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_103;
  }

LABEL_102:
  v37 = *(a2 + 50);
  *(this + 79) |= 8u;
  *(this + 50) = v37;
  v11 = *(a2 + 79);
  if ((v11 & 0x10) == 0)
  {
LABEL_51:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_104;
  }

LABEL_103:
  v38 = *(a2 + 51);
  *(this + 79) |= 0x10u;
  *(this + 51) = v38;
  v11 = *(a2 + 79);
  if ((v11 & 0x20) == 0)
  {
LABEL_52:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_105;
  }

LABEL_104:
  v39 = *(a2 + 52);
  *(this + 79) |= 0x20u;
  *(this + 52) = v39;
  v11 = *(a2 + 79);
  if ((v11 & 0x40) == 0)
  {
LABEL_53:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_105:
  v40 = *(a2 + 53);
  *(this + 79) |= 0x40u;
  *(this + 53) = v40;
  v11 = *(a2 + 79);
  if ((v11 & 0x80) != 0)
  {
LABEL_54:
    v12 = *(a2 + 54);
    *(this + 79) |= 0x80u;
    *(this + 54) = v12;
    v11 = *(a2 + 79);
  }

LABEL_55:
  if ((v11 & 0xFF00) == 0)
  {
    goto LABEL_65;
  }

  if ((v11 & 0x100) != 0)
  {
    v41 = *(a2 + 55);
    *(this + 79) |= 0x100u;
    *(this + 55) = v41;
    v11 = *(a2 + 79);
    if ((v11 & 0x200) == 0)
    {
LABEL_58:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_109;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  v42 = *(a2 + 28);
  *(this + 79) |= 0x200u;
  *(this + 28) = v42;
  v11 = *(a2 + 79);
  if ((v11 & 0x400) == 0)
  {
LABEL_59:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_110;
  }

LABEL_109:
  v43 = *(a2 + 29);
  *(this + 79) |= 0x400u;
  *(this + 29) = v43;
  v11 = *(a2 + 79);
  if ((v11 & 0x800) == 0)
  {
LABEL_60:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_111;
  }

LABEL_110:
  v44 = *(a2 + 30);
  *(this + 79) |= 0x800u;
  *(this + 30) = v44;
  v11 = *(a2 + 79);
  if ((v11 & 0x1000) == 0)
  {
LABEL_61:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_112;
  }

LABEL_111:
  v45 = *(a2 + 31);
  *(this + 79) |= 0x1000u;
  *(this + 31) = v45;
  v11 = *(a2 + 79);
  if ((v11 & 0x2000) == 0)
  {
LABEL_62:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_113;
  }

LABEL_112:
  v46 = *(a2 + 32);
  *(this + 79) |= 0x2000u;
  *(this + 32) = v46;
  v11 = *(a2 + 79);
  if ((v11 & 0x4000) == 0)
  {
LABEL_63:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_113:
  v47 = *(a2 + 33);
  *(this + 79) |= 0x4000u;
  *(this + 33) = v47;
  v11 = *(a2 + 79);
  if ((v11 & 0x8000) != 0)
  {
LABEL_64:
    v13 = *(a2 + 68);
    *(this + 79) |= 0x8000u;
    *(this + 68) = v13;
    v11 = *(a2 + 79);
  }

LABEL_65:
  if ((v11 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v11 & 0x10000) != 0)
  {
    v48 = *(a2 + 69);
    *(this + 79) |= 0x10000u;
    *(this + 69) = v48;
    v11 = *(a2 + 79);
    if ((v11 & 0x20000) == 0)
    {
LABEL_68:
      if ((v11 & 0x40000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_117;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_68;
  }

  v49 = *(a2 + 70);
  *(this + 79) |= 0x20000u;
  *(this + 70) = v49;
  v11 = *(a2 + 79);
  if ((v11 & 0x40000) == 0)
  {
LABEL_69:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_118;
  }

LABEL_117:
  v50 = *(a2 + 71);
  *(this + 79) |= 0x40000u;
  *(this + 71) = v50;
  v11 = *(a2 + 79);
  if ((v11 & 0x80000) == 0)
  {
LABEL_70:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_119;
  }

LABEL_118:
  v51 = *(a2 + 72);
  *(this + 79) |= 0x80000u;
  *(this + 72) = v51;
  v11 = *(a2 + 79);
  if ((v11 & 0x100000) == 0)
  {
LABEL_71:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_120;
  }

LABEL_119:
  v52 = *(a2 + 73);
  *(this + 79) |= 0x100000u;
  *(this + 73) = v52;
  v11 = *(a2 + 79);
  if ((v11 & 0x200000) == 0)
  {
LABEL_72:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_121;
  }

LABEL_120:
  v53 = *(a2 + 74);
  *(this + 79) |= 0x200000u;
  *(this + 74) = v53;
  v11 = *(a2 + 79);
  if ((v11 & 0x400000) == 0)
  {
LABEL_73:
    if ((v11 & 0x800000) == 0)
    {
      return;
    }

    goto LABEL_74;
  }

LABEL_121:
  v54 = *(a2 + 75);
  *(this + 79) |= 0x400000u;
  *(this + 75) = v54;
  if ((*(a2 + 79) & 0x800000) != 0)
  {
LABEL_74:
    v14 = *(a2 + 76);
    *(this + 79) |= 0x800000u;
    *(this + 76) = v14;
  }
}

void sub_29636F5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPAudioLinkInfo::~BluetoothA2DPAudioLinkInfo(awd::metrics::BluetoothA2DPAudioLinkInfo *this)
{
  *this = &unk_2A1D4B490;
  awd::metrics::BluetoothA2DPAudioLinkInfo::SharedDtor(this);
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothA2DPAudioLinkInfo::~BluetoothA2DPAudioLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::SharedDtor(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::default_instance(awd::metrics::BluetoothA2DPAudioLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothA2DPAudioLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothA2DPAudioLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothA2DPAudioLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 312);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 56) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 = *(this + 80);
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

    *(this + 88) = 0;
    *(this + 96) = 0;
    *(this + 112) = 0;
    *(this + 104) = 0;
    v1 = *(this + 312);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 132) = 0u;
    *(this + 116) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 164) = 0u;
    *(this + 148) = 0u;
  }

  v3 = *(this + 316);
  if (v3)
  {
    *(this + 212) = 0;
    *(this + 196) = 0u;
    *(this + 180) = 0u;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 220) = 0u;
    *(this + 268) = 0;
    *(this + 236) = 0u;
    *(this + 252) = 0u;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(this + 276) = 0u;
    *(this + 292) = 0u;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 312) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothA2DPAudioLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = (this + 272);
  v5 = (this + 276);
  v6 = (this + 280);
  v7 = (this + 284);
  v8 = (this + 288);
  v9 = (this + 292);
  v10 = (this + 296);
  v219 = (this + 304);
  v220 = (this + 300);
LABEL_2:
  while (2)
  {
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || (TagFallback = *v11, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v11 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v13 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
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

        *(this + 78) |= 1u;
        if (v17 < v14 && *v17 == 16)
        {
          v50 = v17 + 1;
          *(a2 + 1) = v50;
          goto LABEL_139;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v50 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_139:
        v222[0] = 0;
        if (v50 >= v14 || (v82 = *v50, (v82 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
          if (!result)
          {
            return result;
          }

          v82 = v222[0];
          v83 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v83 = v50 + 1;
          *(a2 + 1) = v83;
        }

        *(this + 16) = v82 != 0;
        *(this + 78) |= 2u;
        if (v83 >= v14 || *v83 != 24)
        {
          continue;
        }

        v48 = v83 + 1;
        *(a2 + 1) = v48;
LABEL_147:
        if (v48 >= v14 || (v84 = *v48, v84 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v85 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v84;
          v85 = (v48 + 1);
          *(a2 + 1) = v85;
        }

        *(this + 78) |= 4u;
        if (v85 >= v14)
        {
          continue;
        }

        v86 = *v85;
        goto LABEL_174;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v48 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_147;
      case 4u:
        if ((TagFallback & 7) == 0)
        {
          v80 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_155;
        }

        if (v13 != 2)
        {
          goto LABEL_127;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
        if (!result)
        {
          return result;
        }

        while (2)
        {
          v85 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v85 < v14)
          {
            v86 = *v85;
            if (v86 == 40)
            {
              while (1)
              {
                v79 = (v85 + 1);
                *(a2 + 1) = v79;
LABEL_177:
                v222[0] = 0;
                v218 = v10;
                if (v79 >= v14 || (v97 = *v79, (v97 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                  if (!result)
                  {
                    return result;
                  }

                  v36 = v9;
                  v37 = v8;
                  v38 = v7;
                  v39 = v6;
                  v40 = v5;
                  v97 = v222[0];
                }

                else
                {
                  v36 = v9;
                  v37 = v8;
                  v38 = v7;
                  v39 = v6;
                  v40 = v5;
                  *(a2 + 1) = v79 + 1;
                }

                v41 = v4;
                v98 = *(this + 12);
                if (v98 == *(this + 13))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 5, v98 + 1);
                  v98 = *(this + 12);
                }

                v99 = *(this + 5);
                *(this + 12) = v98 + 1;
                *(v99 + 4 * v98) = v97;
                v100 = *(this + 13) - *(this + 12);
                if (v100 >= 1)
                {
                  v101 = v100 + 1;
                  do
                  {
                    v102 = *(a2 + 1);
                    v103 = *(a2 + 2);
                    if (v102 >= v103 || *v102 != 40)
                    {
                      break;
                    }

                    *(a2 + 1) = v102 + 1;
                    v222[0] = 0;
                    if ((v102 + 1) >= v103 || (v104 = v102[1], (v104 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                      if (!result)
                      {
                        return result;
                      }

                      v104 = v222[0];
                    }

                    else
                    {
                      *(a2 + 1) = v102 + 2;
                    }

                    v105 = *(this + 12);
                    if (v105 >= *(this + 13))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v222);
                      v105 = *(this + 12);
                    }

                    v106 = *(this + 5);
                    *(this + 12) = v105 + 1;
                    *(v106 + 4 * v105) = v104;
                    --v101;
                  }

                  while (v101 > 1);
                }

LABEL_196:
                v85 = *(a2 + 1);
                v14 = *(a2 + 2);
                v4 = v41;
                v5 = v40;
                v6 = v39;
                v7 = v38;
                v8 = v37;
                v9 = v36;
                v10 = v218;
                if (v85 >= v14)
                {
                  break;
                }

                v107 = *v85;
                if (v107 == 48)
                {
                  v55 = (v85 + 1);
                  *(a2 + 1) = v55;
LABEL_201:
                  if (v55 >= v14 || (v108 = *v55, v108 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                    if (!result)
                    {
                      return result;
                    }

                    v109 = *(a2 + 1);
                    v14 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 14) = v108;
                    v109 = v55 + 1;
                    *(a2 + 1) = v109;
                  }

                  *(this + 78) |= 0x20u;
                  if (v109 < v14 && *v109 == 56)
                  {
                    v58 = v109 + 1;
                    *(a2 + 1) = v58;
LABEL_209:
                    if (v58 >= v14 || (v110 = *v58, v110 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                      if (!result)
                      {
                        return result;
                      }

                      v111 = *(a2 + 1);
                      v14 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 15) = v110;
                      v111 = (v58 + 1);
                      *(a2 + 1) = v111;
                    }

                    *(this + 78) |= 0x40u;
                    if (v111 < v14)
                    {
                      v112 = *v111;
                      goto LABEL_235;
                    }
                  }

                  goto LABEL_2;
                }

                if (v107 != 40)
                {
                  goto LABEL_2;
                }
              }
            }

            else
            {
LABEL_174:
              if (v86 == 32)
              {
                v80 = (v85 + 1);
                *(a2 + 1) = v80;
LABEL_155:
                v221 = 0;
                if (v80 >= v14 || *v80 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v221))
                  {
                    return 0;
                  }
                }

                else
                {
                  v221 = *v80;
                  *(a2 + 1) = v80 + 1;
                }

                v87 = *(this + 8);
                if (v87 == *(this + 9))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 3, v87 + 1);
                  v87 = *(this + 8);
                }

                v88 = v221;
                v89 = *(this + 3);
                *(this + 8) = v87 + 1;
                *(v89 + 4 * v87) = v88;
                v90 = *(this + 9) - *(this + 8);
                if (v90 >= 1)
                {
                  v91 = v90 + 1;
                  do
                  {
                    v92 = *(a2 + 1);
                    v93 = *(a2 + 2);
                    if (v92 >= v93 || *v92 != 32)
                    {
                      break;
                    }

                    *(a2 + 1) = v92 + 1;
                    if ((v92 + 1) >= v93 || v92[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v221))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v221 = v92[1];
                      *(a2 + 1) = v92 + 2;
                    }

                    v94 = *(this + 8);
                    if (v94 >= *(this + 9))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v222);
                      v94 = *(this + 8);
                    }

                    v95 = v221;
                    v96 = *(this + 3);
                    *(this + 8) = v94 + 1;
                    *(v96 + 4 * v94) = v95;
                    --v91;
                  }

                  while (v91 > 1);
                }

                continue;
              }
            }
          }

          goto LABEL_2;
        }

      case 5u:
        if ((TagFallback & 7) == 0)
        {
          v79 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_177;
        }

        if (v13 != 2)
        {
          goto LABEL_127;
        }

        v218 = v10;
        v36 = v9;
        v37 = v8;
        v38 = v7;
        v39 = v6;
        v40 = v5;
        v41 = v4;
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 40);
        if (!result)
        {
          return result;
        }

        goto LABEL_196;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v55 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_201;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v58 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_209;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v13 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
            if (!result)
            {
              return result;
            }

            goto LABEL_233;
          }

LABEL_127:
          if (v13 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v81 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_216:
        v221 = 0;
        if (v81 < v14 && (*v81 & 0x80000000) == 0)
        {
          v221 = *v81;
          *(a2 + 1) = v81 + 1;
          goto LABEL_220;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v221))
        {
LABEL_220:
          v113 = *(this + 18);
          if (v113 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v113 + 1);
            v113 = *(this + 18);
          }

          v114 = v221;
          v115 = *(this + 8);
          *(this + 18) = v113 + 1;
          *(v115 + 4 * v113) = v114;
          v116 = *(this + 19) - *(this + 18);
          if (v116 >= 1)
          {
            v117 = v116 + 1;
            do
            {
              v118 = *(a2 + 1);
              v119 = *(a2 + 2);
              if (v118 >= v119 || *v118 != 64)
              {
                break;
              }

              *(a2 + 1) = v118 + 1;
              if ((v118 + 1) >= v119 || v118[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v221))
                {
                  return 0;
                }
              }

              else
              {
                v221 = v118[1];
                *(a2 + 1) = v118 + 2;
              }

              v120 = *(this + 18);
              if (v120 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v222);
                v120 = *(this + 18);
              }

              v121 = v221;
              v122 = *(this + 8);
              *(this + 18) = v120 + 1;
              *(v122 + 4 * v120) = v121;
              --v117;
            }

            while (v117 > 1);
          }

LABEL_233:
          v111 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v111 >= v14)
          {
            continue;
          }

          v112 = *v111;
          if (v112 != 74)
          {
LABEL_235:
            if (v112 != 64)
            {
              continue;
            }

            v81 = (v111 + 1);
            *(a2 + 1) = v81;
            goto LABEL_216;
          }

          *(a2 + 1) = v111 + 1;
LABEL_238:
          *(this + 78) |= 0x100u;
          if (*(this + 10) == MEMORY[0x29EDC9758])
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v123 = *(a2 + 1);
          v26 = *(a2 + 2);
          if (v123 < v26 && *v123 == 80)
          {
            v45 = v123 + 1;
            *(a2 + 1) = v45;
LABEL_244:
            if (v45 >= v26 || (v124 = *v45, v124 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
              if (!result)
              {
                return result;
              }

              v125 = *(a2 + 1);
              v26 = *(a2 + 2);
            }

            else
            {
              *(this + 22) = v124;
              v125 = v45 + 1;
              *(a2 + 1) = v125;
            }

            *(this + 78) |= 0x200u;
            if (v125 < v26 && *v125 == 88)
            {
              v60 = v125 + 1;
              *(a2 + 1) = v60;
LABEL_252:
              if (v60 >= v26 || (v126 = *v60, v126 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
                if (!result)
                {
                  return result;
                }

                v127 = *(a2 + 1);
                v26 = *(a2 + 2);
              }

              else
              {
                *(this + 23) = v126;
                v127 = v60 + 1;
                *(a2 + 1) = v127;
              }

              *(this + 78) |= 0x400u;
              if (v127 < v26 && *v127 == 96)
              {
                v34 = v127 + 1;
                *(a2 + 1) = v34;
LABEL_260:
                if (v34 >= v26 || (v128 = *v34, v128 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
                  if (!result)
                  {
                    return result;
                  }

                  v129 = *(a2 + 1);
                  v26 = *(a2 + 2);
                }

                else
                {
                  *(this + 24) = v128;
                  v129 = v34 + 1;
                  *(a2 + 1) = v129;
                }

                *(this + 78) |= 0x800u;
                if (v129 < v26 && *v129 == 104)
                {
                  v44 = v129 + 1;
                  *(a2 + 1) = v44;
LABEL_268:
                  if (v44 >= v26 || (v130 = *v44, v130 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
                    if (!result)
                    {
                      return result;
                    }

                    v131 = *(a2 + 1);
                    v26 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 25) = v130;
                    v131 = v44 + 1;
                    *(a2 + 1) = v131;
                  }

                  *(this + 78) |= 0x1000u;
                  if (v131 < v26 && *v131 == 112)
                  {
                    v57 = v131 + 1;
                    *(a2 + 1) = v57;
LABEL_276:
                    if (v57 >= v26 || (v132 = *v57, v132 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
                      if (!result)
                      {
                        return result;
                      }

                      v133 = *(a2 + 1);
                      v26 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 26) = v132;
                      v133 = v57 + 1;
                      *(a2 + 1) = v133;
                    }

                    *(this + 78) |= 0x2000u;
                    if (v133 < v26 && *v133 == 120)
                    {
                      v31 = v133 + 1;
                      *(a2 + 1) = v31;
LABEL_284:
                      if (v31 >= v26 || (v134 = *v31, v134 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                        if (!result)
                        {
                          return result;
                        }

                        v135 = *(a2 + 1);
                        v26 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 27) = v134;
                        v135 = (v31 + 1);
                        *(a2 + 1) = v135;
                      }

                      *(this + 78) |= 0x4000u;
                      if (v26 - v135 >= 2 && *v135 == 128 && v135[1] == 1)
                      {
                        v49 = (v135 + 2);
                        *(a2 + 1) = v49;
LABEL_293:
                        v222[0] = 0;
                        if (v49 >= v26 || (v136 = *v49, (v136 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                          if (!result)
                          {
                            return result;
                          }

                          v136 = v222[0];
                          v137 = *(a2 + 1);
                          v26 = *(a2 + 2);
                        }

                        else
                        {
                          v137 = (v49 + 1);
                          *(a2 + 1) = v137;
                        }

                        *(this + 28) = -(v136 & 1) ^ (v136 >> 1);
                        *(this + 78) |= 0x8000u;
                        if (v26 - v137 >= 2 && *v137 == 136 && v137[1] == 1)
                        {
                          v29 = (v137 + 2);
                          *(a2 + 1) = v29;
LABEL_302:
                          v222[0] = 0;
                          if (v29 >= v26 || (v138 = *v29, (v138 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                            if (!result)
                            {
                              return result;
                            }

                            v138 = v222[0];
                            v139 = *(a2 + 1);
                            v26 = *(a2 + 2);
                          }

                          else
                          {
                            v139 = (v29 + 1);
                            *(a2 + 1) = v139;
                          }

                          *(this + 29) = -(v138 & 1) ^ (v138 >> 1);
                          *(this + 78) |= 0x10000u;
                          if (v26 - v139 >= 2 && *v139 == 144 && v139[1] == 1)
                          {
                            v52 = (v139 + 2);
                            *(a2 + 1) = v52;
LABEL_311:
                            v222[0] = 0;
                            if (v52 >= v26 || (v140 = *v52, (v140 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                              if (!result)
                              {
                                return result;
                              }

                              v140 = v222[0];
                              v141 = *(a2 + 1);
                              v26 = *(a2 + 2);
                            }

                            else
                            {
                              v141 = (v52 + 1);
                              *(a2 + 1) = v141;
                            }

                            *(this + 30) = -(v140 & 1) ^ (v140 >> 1);
                            *(this + 78) |= 0x20000u;
                            if (v26 - v141 >= 2 && *v141 == 152 && v141[1] == 1)
                            {
                              v59 = (v141 + 2);
                              *(a2 + 1) = v59;
LABEL_320:
                              v222[0] = 0;
                              if (v59 >= v26 || (v142 = *v59, (v142 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                                if (!result)
                                {
                                  return result;
                                }

                                v142 = v222[0];
                                v143 = *(a2 + 1);
                                v26 = *(a2 + 2);
                              }

                              else
                              {
                                v143 = (v59 + 1);
                                *(a2 + 1) = v143;
                              }

                              *(this + 31) = -(v142 & 1) ^ (v142 >> 1);
                              *(this + 78) |= 0x40000u;
                              if (v26 - v143 >= 2 && *v143 == 160 && v143[1] == 1)
                              {
                                v66 = (v143 + 2);
                                *(a2 + 1) = v66;
LABEL_329:
                                v222[0] = 0;
                                if (v66 >= v26 || (v144 = *v66, (v144 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v144 = v222[0];
                                  v145 = *(a2 + 1);
                                  v26 = *(a2 + 2);
                                }

                                else
                                {
                                  v145 = (v66 + 1);
                                  *(a2 + 1) = v145;
                                }

                                *(this + 32) = -(v144 & 1) ^ (v144 >> 1);
                                *(this + 78) |= 0x80000u;
                                if (v26 - v145 >= 2 && *v145 == 168 && v145[1] == 1)
                                {
                                  v54 = (v145 + 2);
                                  *(a2 + 1) = v54;
LABEL_338:
                                  v222[0] = 0;
                                  if (v54 >= v26 || (v146 = *v54, (v146 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v146 = v222[0];
                                    v147 = *(a2 + 1);
                                    v26 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    v147 = (v54 + 1);
                                    *(a2 + 1) = v147;
                                  }

                                  *(this + 33) = -(v146 & 1) ^ (v146 >> 1);
                                  *(this + 78) |= 0x100000u;
                                  if (v26 - v147 >= 2 && *v147 == 176 && v147[1] == 1)
                                  {
                                    v56 = (v147 + 2);
                                    *(a2 + 1) = v56;
LABEL_347:
                                    if (v56 >= v26 || (v148 = *v56, v148 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v149 = *(a2 + 1);
                                      v26 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 34) = v148;
                                      v149 = (v56 + 1);
                                      *(a2 + 1) = v149;
                                    }

                                    *(this + 78) |= 0x200000u;
                                    if (v26 - v149 >= 2 && *v149 == 184 && v149[1] == 1)
                                    {
                                      v64 = (v149 + 2);
                                      *(a2 + 1) = v64;
LABEL_356:
                                      if (v64 >= v26 || (v150 = *v64, v150 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v151 = *(a2 + 1);
                                        v26 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 35) = v150;
                                        v151 = (v64 + 1);
                                        *(a2 + 1) = v151;
                                      }

                                      *(this + 78) |= 0x400000u;
                                      if (v26 - v151 >= 2 && *v151 == 192 && v151[1] == 1)
                                      {
                                        v68 = (v151 + 2);
                                        *(a2 + 1) = v68;
LABEL_365:
                                        if (v68 >= v26 || (v152 = *v68, v152 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v153 = *(a2 + 1);
                                          v26 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 36) = v152;
                                          v153 = (v68 + 1);
                                          *(a2 + 1) = v153;
                                        }

                                        *(this + 78) |= 0x800000u;
                                        if (v26 - v153 >= 2 && *v153 == 200 && v153[1] == 1)
                                        {
                                          v47 = (v153 + 2);
                                          *(a2 + 1) = v47;
LABEL_374:
                                          if (v47 >= v26 || (v154 = *v47, v154 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 37);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v155 = *(a2 + 1);
                                            v26 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 37) = v154;
                                            v155 = (v47 + 1);
                                            *(a2 + 1) = v155;
                                          }

                                          *(this + 78) |= 0x1000000u;
                                          if (v26 - v155 >= 2 && *v155 == 208 && v155[1] == 1)
                                          {
                                            v46 = (v155 + 2);
                                            *(a2 + 1) = v46;
LABEL_383:
                                            if (v46 >= v26 || (v156 = *v46, v156 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v157 = *(a2 + 1);
                                              v26 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *(this + 38) = v156;
                                              v157 = (v46 + 1);
                                              *(a2 + 1) = v157;
                                            }

                                            *(this + 78) |= 0x2000000u;
                                            if (v26 - v157 >= 2 && *v157 == 216 && v157[1] == 1)
                                            {
                                              v72 = (v157 + 2);
                                              *(a2 + 1) = v72;
LABEL_392:
                                              if (v72 >= v26 || (v158 = *v72, v158 < 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v159 = *(a2 + 1);
                                                v26 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *(this + 39) = v158;
                                                v159 = (v72 + 1);
                                                *(a2 + 1) = v159;
                                              }

                                              *(this + 78) |= 0x4000000u;
                                              if (v26 - v159 >= 2 && *v159 == 224 && v159[1] == 1)
                                              {
                                                v27 = (v159 + 2);
                                                *(a2 + 1) = v27;
LABEL_401:
                                                if (v27 >= v26 || (v160 = *v27, v160 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 40);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v161 = *(a2 + 1);
                                                  v26 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *(this + 40) = v160;
                                                  v161 = (v27 + 1);
                                                  *(a2 + 1) = v161;
                                                }

                                                *(this + 78) |= 0x8000000u;
                                                if (v26 - v161 >= 2 && *v161 == 232 && v161[1] == 1)
                                                {
                                                  v69 = (v161 + 2);
                                                  *(a2 + 1) = v69;
LABEL_410:
                                                  if (v69 >= v26 || (v162 = *v69, v162 < 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 41);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v163 = *(a2 + 1);
                                                    v26 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *(this + 41) = v162;
                                                    v163 = (v69 + 1);
                                                    *(a2 + 1) = v163;
                                                  }

                                                  *(this + 78) |= 0x10000000u;
                                                  if (v26 - v163 >= 2 && *v163 == 240 && v163[1] == 1)
                                                  {
                                                    v70 = (v163 + 2);
                                                    *(a2 + 1) = v70;
LABEL_419:
                                                    if (v70 >= v26 || (v164 = *v70, v164 < 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v165 = *(a2 + 1);
                                                      v26 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *(this + 42) = v164;
                                                      v165 = (v70 + 1);
                                                      *(a2 + 1) = v165;
                                                    }

                                                    *(this + 78) |= 0x20000000u;
                                                    if (v26 - v165 >= 2 && *v165 == 248 && v165[1] == 1)
                                                    {
                                                      v61 = (v165 + 2);
                                                      *(a2 + 1) = v61;
LABEL_428:
                                                      if (v61 >= v26 || (v166 = *v61, v166 < 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v167 = *(a2 + 1);
                                                        v26 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *(this + 43) = v166;
                                                        v167 = (v61 + 1);
                                                        *(a2 + 1) = v167;
                                                      }

                                                      *(this + 78) |= 0x40000000u;
                                                      if (v26 - v167 >= 2 && *v167 == 128 && v167[1] == 2)
                                                      {
                                                        v51 = (v167 + 2);
                                                        *(a2 + 1) = v51;
LABEL_437:
                                                        if (v51 >= v26 || (v168 = *v51, v168 < 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 44);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v169 = *(a2 + 1);
                                                        }

                                                        else
                                                        {
                                                          *(this + 44) = v168;
                                                          v169 = (v51 + 1);
                                                          *(a2 + 1) = v169;
                                                        }

                                                        *(this + 78) |= 0x80000000;
                                                        v18 = *(a2 + 2);
                                                        if (v18 - v169 >= 2 && *v169 == 136 && v169[1] == 2)
                                                        {
                                                          v62 = (v169 + 2);
                                                          *(a2 + 1) = v62;
LABEL_446:
                                                          if (v62 >= v18 || (v170 = *v62, v170 < 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v171 = *(a2 + 1);
                                                            v18 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *(this + 45) = v170;
                                                            v171 = (v62 + 1);
                                                            *(a2 + 1) = v171;
                                                          }

                                                          *(this + 79) |= 1u;
                                                          if (v18 - v171 >= 2 && *v171 == 144 && v171[1] == 2)
                                                          {
                                                            v32 = (v171 + 2);
                                                            *(a2 + 1) = v32;
LABEL_455:
                                                            if (v32 >= v18 || (v172 = *v32, v172 < 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 23);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v173 = *(a2 + 1);
                                                              v18 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *(this + 23) = v172;
                                                              v173 = (v32 + 1);
                                                              *(a2 + 1) = v173;
                                                            }

                                                            *(this + 79) |= 2u;
                                                            if (v18 - v173 >= 2 && *v173 == 152 && v173[1] == 2)
                                                            {
                                                              v28 = (v173 + 2);
                                                              *(a2 + 1) = v28;
LABEL_464:
                                                              if (v28 >= v18 || (v174 = *v28, v174 < 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 24);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v175 = *(a2 + 1);
                                                                v18 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *(this + 24) = v174;
                                                                v175 = (v28 + 1);
                                                                *(a2 + 1) = v175;
                                                              }

                                                              *(this + 79) |= 4u;
                                                              if (v18 - v175 >= 2 && *v175 == 160 && v175[1] == 2)
                                                              {
                                                                v24 = (v175 + 2);
                                                                *(a2 + 1) = v24;
LABEL_473:
                                                                if (v24 >= v18 || (v176 = *v24, v176 < 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v177 = *(a2 + 1);
                                                                  v18 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *(this + 50) = v176;
                                                                  v177 = (v24 + 1);
                                                                  *(a2 + 1) = v177;
                                                                }

                                                                *(this + 79) |= 8u;
                                                                if (v18 - v177 >= 2 && *v177 == 168 && v177[1] == 2)
                                                                {
                                                                  v25 = (v177 + 2);
                                                                  *(a2 + 1) = v25;
LABEL_482:
                                                                  if (v25 >= v18 || (v178 = *v25, v178 < 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v179 = *(a2 + 1);
                                                                    v18 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    *(this + 51) = v178;
                                                                    v179 = (v25 + 1);
                                                                    *(a2 + 1) = v179;
                                                                  }

                                                                  *(this + 79) |= 0x10u;
                                                                  if (v18 - v179 >= 2 && *v179 == 176 && v179[1] == 2)
                                                                  {
                                                                    v21 = (v179 + 2);
                                                                    *(a2 + 1) = v21;
LABEL_491:
                                                                    v222[0] = 0;
                                                                    if (v21 >= v18 || (v180 = *v21, (v180 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v180 = v222[0];
                                                                      v181 = *(a2 + 1);
                                                                      v18 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      v181 = (v21 + 1);
                                                                      *(a2 + 1) = v181;
                                                                    }

                                                                    *(this + 52) = v180;
                                                                    *(this + 79) |= 0x20u;
                                                                    if (v18 - v181 >= 2 && *v181 == 184 && v181[1] == 2)
                                                                    {
                                                                      v71 = (v181 + 2);
                                                                      *(a2 + 1) = v71;
LABEL_500:
                                                                      v222[0] = 0;
                                                                      if (v71 >= v18 || (v182 = *v71, (v182 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v182 = v222[0];
                                                                        v183 = *(a2 + 1);
                                                                        v18 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        v183 = (v71 + 1);
                                                                        *(a2 + 1) = v183;
                                                                      }

                                                                      *(this + 53) = v182;
                                                                      *(this + 79) |= 0x40u;
                                                                      if (v18 - v183 >= 2 && *v183 == 192 && v183[1] == 2)
                                                                      {
                                                                        v65 = (v183 + 2);
                                                                        *(a2 + 1) = v65;
LABEL_509:
                                                                        v222[0] = 0;
                                                                        if (v65 >= v18 || (v184 = *v65, (v184 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v184 = v222[0];
                                                                          v185 = *(a2 + 1);
                                                                          v18 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          v185 = (v65 + 1);
                                                                          *(a2 + 1) = v185;
                                                                        }

                                                                        *(this + 54) = v184;
                                                                        *(this + 79) |= 0x80u;
                                                                        if (v18 - v185 >= 2 && *v185 == 200 && v185[1] == 2)
                                                                        {
                                                                          v43 = (v185 + 2);
                                                                          *(a2 + 1) = v43;
LABEL_518:
                                                                          v222[0] = 0;
                                                                          if (v43 >= v18 || (v186 = *v43, (v186 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v222);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v186 = v222[0];
                                                                            v187 = *(a2 + 1);
                                                                            v18 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            v187 = (v43 + 1);
                                                                            *(a2 + 1) = v187;
                                                                          }

                                                                          *(this + 55) = v186;
                                                                          *(this + 79) |= 0x100u;
                                                                          if (v18 - v187 >= 2 && *v187 == 208 && v187[1] == 2)
                                                                          {
                                                                            v53 = (v187 + 2);
                                                                            *(a2 + 1) = v53;
LABEL_527:
                                                                            if (v53 >= v18 || (v188 = *v53, v188 < 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 28);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v189 = *(a2 + 1);
                                                                              v18 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              *(this + 28) = v188;
                                                                              v189 = (v53 + 1);
                                                                              *(a2 + 1) = v189;
                                                                            }

                                                                            *(this + 79) |= 0x200u;
                                                                            if (v18 - v189 >= 2 && *v189 == 216 && v189[1] == 2)
                                                                            {
                                                                              v67 = (v189 + 2);
                                                                              *(a2 + 1) = v67;
LABEL_536:
                                                                              if (v67 >= v18 || (v190 = *v67, v190 < 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 29);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v191 = *(a2 + 1);
                                                                                v18 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *(this + 29) = v190;
                                                                                v191 = (v67 + 1);
                                                                                *(a2 + 1) = v191;
                                                                              }

                                                                              *(this + 79) |= 0x400u;
                                                                              if (v18 - v191 >= 2 && *v191 == 224 && v191[1] == 2)
                                                                              {
                                                                                v20 = (v191 + 2);
                                                                                *(a2 + 1) = v20;
LABEL_545:
                                                                                if (v20 >= v18 || (v192 = *v20, v192 < 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 30);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v193 = *(a2 + 1);
                                                                                  v18 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *(this + 30) = v192;
                                                                                  v193 = (v20 + 1);
                                                                                  *(a2 + 1) = v193;
                                                                                }

                                                                                *(this + 79) |= 0x800u;
                                                                                if (v18 - v193 >= 2 && *v193 == 232 && v193[1] == 2)
                                                                                {
                                                                                  v30 = (v193 + 2);
                                                                                  *(a2 + 1) = v30;
LABEL_554:
                                                                                  if (v30 >= v18 || (v194 = *v30, v194 < 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 31);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v195 = *(a2 + 1);
                                                                                    v18 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *(this + 31) = v194;
                                                                                    v195 = (v30 + 1);
                                                                                    *(a2 + 1) = v195;
                                                                                  }

                                                                                  *(this + 79) |= 0x1000u;
                                                                                  if (v18 - v195 >= 2 && *v195 == 240 && v195[1] == 2)
                                                                                  {
                                                                                    v63 = (v195 + 2);
                                                                                    *(a2 + 1) = v63;
LABEL_563:
                                                                                    if (v63 >= v18 || (v196 = *v63, v196 < 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 32);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v197 = *(a2 + 1);
                                                                                      v18 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *(this + 32) = v196;
                                                                                      v197 = (v63 + 1);
                                                                                      *(a2 + 1) = v197;
                                                                                    }

                                                                                    *(this + 79) |= 0x2000u;
                                                                                    if (v18 - v197 >= 2 && *v197 == 248 && v197[1] == 2)
                                                                                    {
                                                                                      v77 = (v197 + 2);
                                                                                      *(a2 + 1) = v77;
LABEL_572:
                                                                                      if (v77 >= v18 || (v198 = *v77, v198 < 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 33);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v199 = *(a2 + 1);
                                                                                        v18 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        *(this + 33) = v198;
                                                                                        v199 = (v77 + 1);
                                                                                        *(a2 + 1) = v199;
                                                                                      }

                                                                                      *(this + 79) |= 0x4000u;
                                                                                      if (v18 - v199 >= 2 && *v199 == 128 && v199[1] == 3)
                                                                                      {
                                                                                        v23 = (v199 + 2);
                                                                                        *(a2 + 1) = v23;
LABEL_581:
                                                                                        if (v23 >= v18 || (v200 = *v23, (v200 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v201 = *(a2 + 1);
                                                                                          v18 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *v4 = v200;
                                                                                          v201 = (v23 + 1);
                                                                                          *(a2 + 1) = v201;
                                                                                        }

                                                                                        *(this + 79) |= 0x8000u;
                                                                                        if (v18 - v201 >= 2 && *v201 == 136 && v201[1] == 3)
                                                                                        {
                                                                                          v33 = (v201 + 2);
                                                                                          *(a2 + 1) = v33;
LABEL_590:
                                                                                          if (v33 >= v18 || (v202 = *v33, (v202 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v203 = *(a2 + 1);
                                                                                            v18 = *(a2 + 2);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            *v5 = v202;
                                                                                            v203 = (v33 + 1);
                                                                                            *(a2 + 1) = v203;
                                                                                          }

                                                                                          *(this + 79) |= 0x10000u;
                                                                                          if (v18 - v203 >= 2 && *v203 == 144 && v203[1] == 3)
                                                                                          {
                                                                                            v35 = (v203 + 2);
                                                                                            *(a2 + 1) = v35;
LABEL_599:
                                                                                            if (v35 >= v18 || (v204 = *v35, (v204 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v205 = *(a2 + 1);
                                                                                              v18 = *(a2 + 2);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *v6 = v204;
                                                                                              v205 = (v35 + 1);
                                                                                              *(a2 + 1) = v205;
                                                                                            }

                                                                                            *(this + 79) |= 0x20000u;
                                                                                            if (v18 - v205 >= 2 && *v205 == 152 && v205[1] == 3)
                                                                                            {
                                                                                              v19 = (v205 + 2);
                                                                                              *(a2 + 1) = v19;
LABEL_608:
                                                                                              if (v19 >= v18 || (v206 = *v19, (v206 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v207 = *(a2 + 1);
                                                                                                v18 = *(a2 + 2);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                *v7 = v206;
                                                                                                v207 = (v19 + 1);
                                                                                                *(a2 + 1) = v207;
                                                                                              }

                                                                                              *(this + 79) |= 0x40000u;
                                                                                              if (v18 - v207 >= 2 && *v207 == 160 && v207[1] == 3)
                                                                                              {
                                                                                                v78 = (v207 + 2);
                                                                                                *(a2 + 1) = v78;
LABEL_617:
                                                                                                if (v78 >= v18 || (v208 = *v78, (v208 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v209 = *(a2 + 1);
                                                                                                  v18 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  *v8 = v208;
                                                                                                  v209 = (v78 + 1);
                                                                                                  *(a2 + 1) = v209;
                                                                                                }

                                                                                                *(this + 79) |= 0x80000u;
                                                                                                if (v18 - v209 >= 2 && *v209 == 168 && v209[1] == 3)
                                                                                                {
                                                                                                  v76 = (v209 + 2);
                                                                                                  *(a2 + 1) = v76;
LABEL_626:
                                                                                                  if (v76 >= v18 || (v210 = *v76, (v210 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v211 = *(a2 + 1);
                                                                                                    v18 = *(a2 + 2);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    *v9 = v210;
                                                                                                    v211 = (v76 + 1);
                                                                                                    *(a2 + 1) = v211;
                                                                                                  }

                                                                                                  *(this + 79) |= 0x100000u;
                                                                                                  if (v18 - v211 >= 2 && *v211 == 176 && v211[1] == 3)
                                                                                                  {
                                                                                                    v22 = (v211 + 2);
                                                                                                    *(a2 + 1) = v22;
LABEL_635:
                                                                                                    if (v22 >= v18 || (v212 = *v22, (v212 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v213 = *(a2 + 1);
                                                                                                      v18 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *v10 = v212;
                                                                                                      v213 = (v22 + 1);
                                                                                                      *(a2 + 1) = v213;
                                                                                                    }

                                                                                                    *(this + 79) |= 0x200000u;
                                                                                                    if (v18 - v213 >= 2 && *v213 == 184 && v213[1] == 3)
                                                                                                    {
                                                                                                      v73 = (v213 + 2);
                                                                                                      *(a2 + 1) = v73;
LABEL_644:
                                                                                                      v74 = *(a2 + 2);
                                                                                                      if (v73 >= v74 || (v214 = *v73, (v214 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v220);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v215 = *(a2 + 1);
                                                                                                        v74 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *v220 = v214;
                                                                                                        v215 = (v73 + 1);
                                                                                                        *(a2 + 1) = v215;
                                                                                                      }

                                                                                                      *(this + 79) |= 0x400000u;
                                                                                                      if (v74 - v215 >= 2 && *v215 == 192 && v215[1] == 3)
                                                                                                      {
                                                                                                        v75 = (v215 + 2);
                                                                                                        *(a2 + 1) = v75;
LABEL_653:
                                                                                                        if (v75 >= v74 || (v216 = *v75, (v216 & 0x80000000) != 0))
                                                                                                        {
                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v219);
                                                                                                          if (!result)
                                                                                                          {
                                                                                                            return result;
                                                                                                          }

                                                                                                          v217 = *(a2 + 1);
                                                                                                          v74 = *(a2 + 2);
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          *v219 = v216;
                                                                                                          v217 = v75 + 1;
                                                                                                          *(a2 + 1) = v217;
                                                                                                        }

                                                                                                        *(this + 79) |= 0x800000u;
                                                                                                        if (v217 == v74 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          continue;
        }

        return 0;
      case 9u:
        if (v13 == 2)
        {
          goto LABEL_238;
        }

        goto LABEL_127;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v45 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_244;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v60 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_252;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v34 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_260;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v44 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_268;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v57 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_276;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v31 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_284;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v49 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_293;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v29 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_302;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v52 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_311;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v59 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_320;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v66 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_329;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v54 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_338;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v56 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_347;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v64 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_356;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v68 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_365;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v47 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_374;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v46 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_383;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v72 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_392;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_401;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v69 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_410;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v70 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_419;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v61 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_428;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v51 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_437;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v62 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_446;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v32 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_455;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v28 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_464;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v24 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_473;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v25 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_482;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v21 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_491;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v71 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_500;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v65 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_509;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v43 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_518;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v53 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_527;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v67 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_536;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v20 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_545;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v30 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_554;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v63 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_563;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v77 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_572;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v23 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_581;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v33 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_590;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v35 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_599;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_608;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v78 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_617;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v76 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_626;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v22 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_635;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v73 = *(a2 + 1);
        goto LABEL_644;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_127;
        }

        v75 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_653;
      default:
        goto LABEL_127;
    }
  }
}

void sub_2963717F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v10 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v11 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(this + 1) = v6 + 1;
      }

      v8 = *(a2 + 8);
      if (v8 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(a2, v8 + 1);
        v8 = *(a2 + 8);
      }

      v9 = *a2;
      *(a2 + 8) = v8 + 1;
      *(v9 + 4 * v8) = v7;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 312);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 312);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  if ((*(v5 + 312) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 24) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(*(v5 + 40) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  v9 = *(v5 + 312);
  if ((v9 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 56), a2, a4);
    v9 = *(v5 + 312);
  }

  if ((v9 & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 60), a2, a4);
  }

  if (*(v5 + 72) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 64) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 72));
  }

  v11 = *(v5 + 312);
  if ((v11 & 0x100) != 0)
  {
    v13 = *(v5 + 80);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v11 = *(v5 + 312);
    if ((v11 & 0x200) == 0)
    {
LABEL_20:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_72;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 88), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x400) == 0)
  {
LABEL_21:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 92), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x800) == 0)
  {
LABEL_22:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 96), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x1000) == 0)
  {
LABEL_23:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 100), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x2000) == 0)
  {
LABEL_24:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 104), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x4000) == 0)
  {
LABEL_25:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 108), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x8000) == 0)
  {
LABEL_26:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x10, *(v5 + 112), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x10000) == 0)
  {
LABEL_27:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x11, *(v5 + 116), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x20000) == 0)
  {
LABEL_28:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x12, *(v5 + 120), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x40000) == 0)
  {
LABEL_29:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x13, *(v5 + 124), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x80000) == 0)
  {
LABEL_30:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x14, *(v5 + 128), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x100000) == 0)
  {
LABEL_31:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x15, *(v5 + 132), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x200000) == 0)
  {
LABEL_32:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 136), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x400000) == 0)
  {
LABEL_33:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 140), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x800000) == 0)
  {
LABEL_34:
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 144), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 148), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 152), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 156), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 160), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 164), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_92:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 172), a2, a4);
    if ((*(v5 + 312) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_93;
  }

LABEL_91:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 168), a2, a4);
  v11 = *(v5 + 312);
  if ((v11 & 0x40000000) != 0)
  {
    goto LABEL_92;
  }

LABEL_41:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_93:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 176), a2, a4);
LABEL_42:
  v12 = *(v5 + 316);
  if (v12)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 180), a2, a4);
    v12 = *(v5 + 316);
    if ((v12 & 2) == 0)
    {
LABEL_44:
      if ((v12 & 4) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_96;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_44;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x22, *(v5 + 184), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 4) == 0)
  {
LABEL_45:
    if ((v12 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x23, *(v5 + 192), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 8) == 0)
  {
LABEL_46:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_98;
  }

LABEL_97:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 200), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x10) == 0)
  {
LABEL_47:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_99;
  }

LABEL_98:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 204), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x20) == 0)
  {
LABEL_48:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_100;
  }

LABEL_99:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x26, *(v5 + 208), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x40) == 0)
  {
LABEL_49:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_101;
  }

LABEL_100:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x27, *(v5 + 212), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x80) == 0)
  {
LABEL_50:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_102;
  }

LABEL_101:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x28, *(v5 + 216), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x100) == 0)
  {
LABEL_51:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_103;
  }

LABEL_102:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x29, *(v5 + 220), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x200) == 0)
  {
LABEL_52:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_104;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2A, *(v5 + 224), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x400) == 0)
  {
LABEL_53:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_105;
  }

LABEL_104:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2B, *(v5 + 232), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x800) == 0)
  {
LABEL_54:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_106;
  }

LABEL_105:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2C, *(v5 + 240), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x1000) == 0)
  {
LABEL_55:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_107;
  }

LABEL_106:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2D, *(v5 + 248), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x2000) == 0)
  {
LABEL_56:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_108;
  }

LABEL_107:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2E, *(v5 + 256), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x4000) == 0)
  {
LABEL_57:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2F, *(v5 + 264), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x8000) == 0)
  {
LABEL_58:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(v5 + 272), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x10000) == 0)
  {
LABEL_59:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(v5 + 276), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x20000) == 0)
  {
LABEL_60:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 280), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x40000) == 0)
  {
LABEL_61:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(v5 + 284), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x80000) == 0)
  {
LABEL_62:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_114;
  }

LABEL_113:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 288), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x100000) == 0)
  {
LABEL_63:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_115;
  }

LABEL_114:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, *(v5 + 292), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x200000) == 0)
  {
LABEL_64:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_65;
    }

LABEL_116:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, *(v5 + 300), a2, a4);
    if ((*(v5 + 316) & 0x800000) == 0)
    {
      return this;
    }

    goto LABEL_117;
  }

LABEL_115:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 296), a2, a4);
  v12 = *(v5 + 316);
  if ((v12 & 0x400000) != 0)
  {
    goto LABEL_116;
  }

LABEL_65:
  if ((v12 & 0x800000) == 0)
  {
    return this;
  }

LABEL_117:
  v14 = *(v5 + 304);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x38, v14, a2, a4);
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::ByteSize(awd::metrics::BluetoothA2DPAudioLinkInfo *this)
{
  v2 = *(this + 78);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 78);
  }

  else
  {
    v3 = 0;
  }

  v4 = (v2 & 2) + v3;
  if ((v2 & 4) != 0)
  {
    v5 = *(this + 5);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 78);
    }

    else
    {
      v6 = 2;
    }

    v4 += v6;
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(this + 14);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 78);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v2 & 0x40) != 0)
  {
LABEL_18:
    v9 = *(this + 15);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 78);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_22:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v2 & 0x100) != 0)
  {
    v11 = *(this + 10);
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
      v2 = *(this + 78);
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

    v4 += v16 + v12 + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_25:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(this + 22);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(this + 78);
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
  if ((v2 & 0x400) == 0)
  {
LABEL_26:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_45:
  v19 = *(this + 23);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(this + 78);
  }

  else
  {
    v20 = 2;
  }

  v4 += v20;
  if ((v2 & 0x800) == 0)
  {
LABEL_27:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_49:
  v21 = *(this + 24);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 78);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v2 & 0x1000) == 0)
  {
LABEL_28:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

LABEL_53:
  v23 = *(this + 25);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 78);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v2 & 0x2000) == 0)
  {
LABEL_29:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_57:
  v25 = *(this + 26);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 78);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v2 & 0x4000) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

LABEL_61:
  v27 = *(this + 27);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = *(this + 78);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v2 & 0x8000) != 0)
  {
LABEL_65:
    v29 = ((2 * *(this + 28)) ^ (*(this + 28) >> 31));
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
      v2 = *(this + 78);
    }

    else
    {
      v30 = 3;
    }

    v4 += v30;
  }

LABEL_69:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_111;
  }

  if ((v2 & 0x10000) != 0)
  {
    v31 = ((2 * *(this + 29)) ^ (*(this + 29) >> 31));
    if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
      v2 = *(this + 78);
    }

    else
    {
      v32 = 3;
    }

    v4 += v32;
    if ((v2 & 0x20000) == 0)
    {
LABEL_72:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_87;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_72;
  }

  v33 = ((2 * *(this + 30)) ^ (*(this + 30) >> 31));
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v34 = 3;
  }

  v4 += v34;
  if ((v2 & 0x40000) == 0)
  {
LABEL_73:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_91;
  }

LABEL_87:
  v35 = ((2 * *(this + 31)) ^ (*(this + 31) >> 31));
  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v36 = 3;
  }

  v4 += v36;
  if ((v2 & 0x80000) == 0)
  {
LABEL_74:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_95;
  }

LABEL_91:
  v37 = ((2 * *(this + 32)) ^ (*(this + 32) >> 31));
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v2 & 0x100000) == 0)
  {
LABEL_75:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_99;
  }

LABEL_95:
  v39 = ((2 * *(this + 33)) ^ (*(this + 33) >> 31));
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
  if ((v2 & 0x200000) == 0)
  {
LABEL_76:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_103;
  }

LABEL_99:
  v41 = *(this + 34);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
  if ((v2 & 0x400000) == 0)
  {
LABEL_77:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_107;
  }

LABEL_103:
  v43 = *(this + 35);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v44 = 3;
  }

  v4 += v44;
  if ((v2 & 0x800000) != 0)
  {
LABEL_107:
    v45 = *(this + 36);
    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
      v2 = *(this + 78);
    }

    else
    {
      v46 = 3;
    }

    v4 += v46;
  }

LABEL_111:
  if (!HIBYTE(v2))
  {
    goto LABEL_153;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v47 = *(this + 37);
    if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
      v2 = *(this + 78);
    }

    else
    {
      v48 = 3;
    }

    v4 += v48;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_114:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_129;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_114;
  }

  v49 = *(this + 38);
  if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v50 = 3;
  }

  v4 += v50;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_115:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_133;
  }

LABEL_129:
  v51 = *(this + 39);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v52 = 3;
  }

  v4 += v52;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_116:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_137;
  }

LABEL_133:
  v53 = *(this + 40);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v54 = 3;
  }

  v4 += v54;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_117:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_141;
  }

LABEL_137:
  v55 = *(this + 41);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v56 = 3;
  }

  v4 += v56;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_118:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_145;
  }

LABEL_141:
  v57 = *(this + 42);
  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v58 = 3;
  }

  v4 += v58;
  if ((v2 & 0x40000000) == 0)
  {
LABEL_119:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_149;
  }

LABEL_145:
  v59 = *(this + 43);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    v2 = *(this + 78);
  }

  else
  {
    v60 = 3;
  }

  v4 += v60;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_149:
    v61 = *(this + 44);
    if (v61 >= 0x80)
    {
      v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
    }

    else
    {
      v62 = 3;
    }

    v4 += v62;
  }

LABEL_153:
  v63 = *(this + 79);
  if (!v63)
  {
    goto LABEL_195;
  }

  if (v63)
  {
    v64 = *(this + 45);
    if (v64 >= 0x80)
    {
      v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
      v63 = *(this + 79);
    }

    else
    {
      v65 = 3;
    }

    v4 += v65;
    if ((v63 & 2) == 0)
    {
LABEL_156:
      if ((v63 & 4) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_168;
    }
  }

  else if ((v63 & 2) == 0)
  {
    goto LABEL_156;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 23)) + 2;
  v63 = *(this + 79);
  if ((v63 & 4) == 0)
  {
LABEL_157:
    if ((v63 & 8) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_169;
  }

LABEL_168:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 24)) + 2;
  v63 = *(this + 79);
  if ((v63 & 8) == 0)
  {
LABEL_158:
    if ((v63 & 0x10) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_173;
  }

LABEL_169:
  v66 = *(this + 50);
  if (v66 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v67 = 3;
  }

  v4 += v67;
  if ((v63 & 0x10) == 0)
  {
LABEL_159:
    if ((v63 & 0x20) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_177;
  }

LABEL_173:
  v68 = *(this + 51);
  if (v68 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v69 = 3;
  }

  v4 += v69;
  if ((v63 & 0x20) == 0)
  {
LABEL_160:
    if ((v63 & 0x40) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_183;
  }

LABEL_177:
  v70 = *(this + 52);
  if ((v70 & 0x80000000) != 0)
  {
    v71 = 12;
  }

  else if (v70 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v71 = 3;
  }

  v4 += v71;
  if ((v63 & 0x40) == 0)
  {
LABEL_161:
    if ((v63 & 0x80) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_189;
  }

LABEL_183:
  v72 = *(this + 53);
  if ((v72 & 0x80000000) != 0)
  {
    v73 = 12;
  }

  else if (v72 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v73 = 3;
  }

  v4 += v73;
  if ((v63 & 0x80) != 0)
  {
LABEL_189:
    v74 = *(this + 54);
    if ((v74 & 0x80000000) != 0)
    {
      v75 = 12;
    }

    else if (v74 >= 0x80)
    {
      v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74) + 2;
      v63 = *(this + 79);
    }

    else
    {
      v75 = 3;
    }

    v4 += v75;
  }

LABEL_195:
  if ((v63 & 0xFF00) == 0)
  {
    goto LABEL_221;
  }

  if ((v63 & 0x100) != 0)
  {
    v76 = *(this + 55);
    if ((v76 & 0x80000000) != 0)
    {
      v77 = 12;
    }

    else if (v76 >= 0x80)
    {
      v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
      v63 = *(this + 79);
    }

    else
    {
      v77 = 3;
    }

    v4 += v77;
    if ((v63 & 0x200) == 0)
    {
LABEL_198:
      if ((v63 & 0x400) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_212;
    }
  }

  else if ((v63 & 0x200) == 0)
  {
    goto LABEL_198;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 28)) + 2;
  v63 = *(this + 79);
  if ((v63 & 0x400) == 0)
  {
LABEL_199:
    if ((v63 & 0x800) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_213;
  }

LABEL_212:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 29)) + 2;
  v63 = *(this + 79);
  if ((v63 & 0x800) == 0)
  {
LABEL_200:
    if ((v63 & 0x1000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_214;
  }

LABEL_213:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 30)) + 2;
  v63 = *(this + 79);
  if ((v63 & 0x1000) == 0)
  {
LABEL_201:
    if ((v63 & 0x2000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_215;
  }

LABEL_214:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 31)) + 2;
  v63 = *(this + 79);
  if ((v63 & 0x2000) == 0)
  {
LABEL_202:
    if ((v63 & 0x4000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_216;
  }

LABEL_215:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 32)) + 2;
  v63 = *(this + 79);
  if ((v63 & 0x4000) == 0)
  {
LABEL_203:
    if ((v63 & 0x8000) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_217;
  }

LABEL_216:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 33)) + 2;
  v63 = *(this + 79);
  if ((v63 & 0x8000) == 0)
  {
    goto LABEL_221;
  }

LABEL_217:
  v78 = *(this + 68);
  if (v78 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v79 = 3;
  }

  v4 += v79;
LABEL_221:
  if ((v63 & 0xFF0000) == 0)
  {
    goto LABEL_263;
  }

  if ((v63 & 0x10000) != 0)
  {
    v80 = *(this + 69);
    if (v80 >= 0x80)
    {
      v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
      v63 = *(this + 79);
    }

    else
    {
      v81 = 3;
    }

    v4 += v81;
    if ((v63 & 0x20000) == 0)
    {
LABEL_224:
      if ((v63 & 0x40000) == 0)
      {
        goto LABEL_225;
      }

      goto LABEL_239;
    }
  }

  else if ((v63 & 0x20000) == 0)
  {
    goto LABEL_224;
  }

  v82 = *(this + 70);
  if (v82 >= 0x80)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v83 = 3;
  }

  v4 += v83;
  if ((v63 & 0x40000) == 0)
  {
LABEL_225:
    if ((v63 & 0x80000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_243;
  }

LABEL_239:
  v84 = *(this + 71);
  if (v84 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v85 = 3;
  }

  v4 += v85;
  if ((v63 & 0x80000) == 0)
  {
LABEL_226:
    if ((v63 & 0x100000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_247;
  }

LABEL_243:
  v86 = *(this + 72);
  if (v86 >= 0x80)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v87 = 3;
  }

  v4 += v87;
  if ((v63 & 0x100000) == 0)
  {
LABEL_227:
    if ((v63 & 0x200000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_251;
  }

LABEL_247:
  v88 = *(this + 73);
  if (v88 >= 0x80)
  {
    v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v89 = 3;
  }

  v4 += v89;
  if ((v63 & 0x200000) == 0)
  {
LABEL_228:
    if ((v63 & 0x400000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_255;
  }

LABEL_251:
  v90 = *(this + 74);
  if (v90 >= 0x80)
  {
    v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v91 = 3;
  }

  v4 += v91;
  if ((v63 & 0x400000) == 0)
  {
LABEL_229:
    if ((v63 & 0x800000) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_259;
  }

LABEL_255:
  v92 = *(this + 75);
  if (v92 >= 0x80)
  {
    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92) + 2;
    v63 = *(this + 79);
  }

  else
  {
    v93 = 3;
  }

  v4 += v93;
  if ((v63 & 0x800000) != 0)
  {
LABEL_259:
    v94 = *(this + 76);
    if (v94 >= 0x80)
    {
      v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
    }

    else
    {
      v95 = 3;
    }

    v4 += v95;
  }

LABEL_263:
  v96 = *(this + 8);
  if (v96 < 1)
  {
    v98 = 0;
  }

  else
  {
    v97 = 0;
    v98 = 0;
    do
    {
      v99 = *(*(this + 3) + 4 * v97);
      if (v99 >= 0x80)
      {
        v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99);
        v96 = *(this + 8);
      }

      else
      {
        v100 = 1;
      }

      v98 += v100;
      ++v97;
    }

    while (v97 < v96);
  }

  v101 = *(this + 12);
  if (v101 < 1)
  {
    v103 = 0;
  }

  else
  {
    v102 = 0;
    v103 = 0;
    do
    {
      v104 = *(*(this + 5) + 4 * v102);
      if ((v104 & 0x80000000) != 0)
      {
        v105 = 10;
      }

      else if (v104 >= 0x80)
      {
        v105 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104);
        v101 = *(this + 12);
      }

      else
      {
        v105 = 1;
      }

      v103 += v105;
      ++v102;
    }

    while (v102 < v101);
  }

  v106 = *(this + 18);
  if (v106 < 1)
  {
    v108 = 0;
  }

  else
  {
    v107 = 0;
    v108 = 0;
    do
    {
      v109 = *(*(this + 8) + 4 * v107);
      if (v109 >= 0x80)
      {
        v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109);
        v106 = *(this + 18);
      }

      else
      {
        v110 = 1;
      }

      v108 += v110;
      ++v107;
    }

    while (v107 < v106);
  }

  result = (v98 + v4 + v96 + v103 + v101 + v108 + v106);
  *(this + 77) = result;
  return result;
}

void awd::metrics::BluetoothA2DPAudioLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothA2DPAudioLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothA2DPAudioLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothA2DPAudioLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothA2DPAudioLinkInfo::CopyFrom(awd::metrics::BluetoothA2DPAudioLinkInfo *this, const awd::metrics::BluetoothA2DPAudioLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothA2DPAudioLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothA2DPAudioLinkInfo::Swap(awd::metrics::BluetoothA2DPAudioLinkInfo *this, awd::metrics::BluetoothA2DPAudioLinkInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    v4 = *(a2 + 4);
    *(a2 + 3) = v3;
    v5 = *(this + 4);
    *(this + 4) = v4;
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v7 = *(a2 + 6);
    *(a2 + 5) = v6;
    v8 = *(this + 6);
    *(this + 6) = v7;
    *(a2 + 6) = v8;
    LODWORD(v6) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v6;
    LODWORD(v6) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v6;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    result = *(a2 + 9);
    *(a2 + 8) = v9;
    v11 = *(this + 9);
    *(this + 9) = result;
    *(a2 + 9) = v11;
    v12 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v12;
    LODWORD(v12) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v12;
    LODWORD(v12) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    LODWORD(v12) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v12;
    LODWORD(v12) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v12;
    LODWORD(v12) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v12;
    LODWORD(v12) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v12;
    LODWORD(v12) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v12;
    LODWORD(v12) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v12;
    LODWORD(v12) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v12;
    LODWORD(v12) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v12;
    LODWORD(v12) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v12;
    LODWORD(v12) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v12;
    LODWORD(v12) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v12;
    LODWORD(v12) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v12;
    LODWORD(v12) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v12;
    LODWORD(v12) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v12;
    LODWORD(v12) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v12;
    LODWORD(v12) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v12;
    LODWORD(v12) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v12;
    LODWORD(v12) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v12;
    LODWORD(v12) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v12;
    LODWORD(v12) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v12;
    LODWORD(v12) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v12;
    v13 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v13;
    v14 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v14;
    LODWORD(v14) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v14;
    LODWORD(v14) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v14;
    LODWORD(v14) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v14;
    LODWORD(v14) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v14;
    LODWORD(v14) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v14;
    LODWORD(v14) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v14;
    v15 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v15;
    v16 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v16;
    v17 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v17;
    v18 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v18;
    v19 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v19;
    v20 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v20;
    LODWORD(v20) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v20;
    LODWORD(v20) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v20;
    LODWORD(v20) = *(this + 70);
    *(this + 70) = *(a2 + 70);
    *(a2 + 70) = v20;
    LODWORD(v20) = *(this + 71);
    *(this + 71) = *(a2 + 71);
    *(a2 + 71) = v20;
    LODWORD(v20) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v20;
    LODWORD(v20) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v20;
    LODWORD(v20) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v20;
    LODWORD(v20) = *(this + 75);
    *(this + 75) = *(a2 + 75);
    *(a2 + 75) = v20;
    LODWORD(v20) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v20;
    LODWORD(v20) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v20;
    LODWORD(v20) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v20;
    LODWORD(v20) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v20;
  }

  return result;
}

double awd::metrics::BluetoothHFPAudioLinkInfo::SharedCtor(awd::metrics::BluetoothHFPAudioLinkInfo *this)
{
  *(this + 53) = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 12) = MEMORY[0x29EDC9758];
  *(this + 27) = 0;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

awd::metrics::BluetoothHFPAudioLinkInfo *awd::metrics::BluetoothHFPAudioLinkInfo::BluetoothHFPAudioLinkInfo(awd::metrics::BluetoothHFPAudioLinkInfo *this, const awd::metrics::BluetoothHFPAudioLinkInfo *a2)
{
  *(this + 53) = 0;
  *this = &unk_2A1D4B508;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = MEMORY[0x29EDC9758];
  *(this + 27) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  awd::metrics::BluetoothHFPAudioLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_29637316C(_Unwind_Exception *a1)
{
  v3 = v1[10];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothHFPAudioLinkInfo::BluetoothHFPAudioLinkInfo((v1 + 8), v1 + 5, v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothHFPAudioLinkInfo::MergeFrom(awd::metrics::BluetoothHFPAudioLinkInfo *this, const awd::metrics::BluetoothHFPAudioLinkInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 3, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 5, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(a2 + 22);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v7);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v8 = *(a2 + 54);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v14 = *(a2 + 1);
    *(this + 54) |= 1u;
    *(this + 1) = v14;
    v8 = *(a2 + 54);
    if ((v8 & 2) == 0)
    {
LABEL_14:
      if ((v8 & 4) == 0)
      {
        goto LABEL_15;
      }

LABEL_56:
      v16 = *(a2 + 5);
      *(this + 54) |= 4u;
      *(this + 5) = v16;
      v8 = *(a2 + 54);
      if ((v8 & 0x20) == 0)
      {
LABEL_16:
        if ((v8 & 0x40) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      goto LABEL_57;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a2 + 16);
  *(this + 54) |= 2u;
  *(this + 16) = v15;
  v8 = *(a2 + 54);
  if ((v8 & 4) != 0)
  {
    goto LABEL_56;
  }

LABEL_15:
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_57:
  v17 = *(a2 + 14);
  *(this + 54) |= 0x20u;
  *(this + 14) = v17;
  v8 = *(a2 + 54);
  if ((v8 & 0x40) != 0)
  {
LABEL_17:
    v9 = *(a2 + 15);
    *(this + 54) |= 0x40u;
    *(this + 15) = v9;
    v8 = *(a2 + 54);
  }

LABEL_18:
  if ((v8 & 0x1FE00) == 0)
  {
    goto LABEL_27;
  }

  if ((v8 & 0x200) != 0)
  {
    v18 = *(a2 + 12);
    *(this + 54) |= 0x200u;
    v19 = *(this + 12);
    if (v19 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v19, v18);
    v8 = *(a2 + 54);
    if ((v8 & 0x400) == 0)
    {
LABEL_21:
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_63;
    }
  }

  else if ((v8 & 0x400) == 0)
  {
    goto LABEL_21;
  }

  v20 = *(a2 + 26);
  *(this + 54) |= 0x400u;
  *(this + 26) = v20;
  v8 = *(a2 + 54);
  if ((v8 & 0x800) == 0)
  {
LABEL_22:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a2 + 27);
  *(this + 54) |= 0x800u;
  *(this + 27) = v21;
  v8 = *(a2 + 54);
  if ((v8 & 0x1000) == 0)
  {
LABEL_23:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a2 + 28);
  *(this + 54) |= 0x1000u;
  *(this + 28) = v22;
  v8 = *(a2 + 54);
  if ((v8 & 0x2000) == 0)
  {
LABEL_24:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  v23 = *(a2 + 29);
  *(this + 54) |= 0x2000u;
  *(this + 29) = v23;
  v8 = *(a2 + 54);
  if ((v8 & 0x4000) == 0)
  {
LABEL_25:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_66:
  v24 = *(a2 + 30);
  *(this + 54) |= 0x4000u;
  *(this + 30) = v24;
  v8 = *(a2 + 54);
  if ((v8 & 0x8000) != 0)
  {
LABEL_26:
    v10 = *(a2 + 31);
    *(this + 54) |= 0x8000u;
    *(this + 31) = v10;
    v8 = *(a2 + 54);
  }

LABEL_27:
  if ((v8 & 0xFF0000) == 0)
  {
    goto LABEL_37;
  }

  if ((v8 & 0x10000) != 0)
  {
    v25 = *(a2 + 32);
    *(this + 54) |= 0x10000u;
    *(this + 32) = v25;
    v8 = *(a2 + 54);
    if ((v8 & 0x20000) == 0)
    {
LABEL_30:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_70;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_30;
  }

  v26 = *(a2 + 33);
  *(this + 54) |= 0x20000u;
  *(this + 33) = v26;
  v8 = *(a2 + 54);
  if ((v8 & 0x40000) == 0)
  {
LABEL_31:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  v27 = *(a2 + 34);
  *(this + 54) |= 0x40000u;
  *(this + 34) = v27;
  v8 = *(a2 + 54);
  if ((v8 & 0x80000) == 0)
  {
LABEL_32:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  v28 = *(a2 + 35);
  *(this + 54) |= 0x80000u;
  *(this + 35) = v28;
  v8 = *(a2 + 54);
  if ((v8 & 0x100000) == 0)
  {
LABEL_33:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  v29 = *(a2 + 36);
  *(this + 54) |= 0x100000u;
  *(this + 36) = v29;
  v8 = *(a2 + 54);
  if ((v8 & 0x200000) == 0)
  {
LABEL_34:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  v30 = *(a2 + 37);
  *(this + 54) |= 0x200000u;
  *(this + 37) = v30;
  v8 = *(a2 + 54);
  if ((v8 & 0x400000) == 0)
  {
LABEL_35:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_74:
  v31 = *(a2 + 38);
  *(this + 54) |= 0x400000u;
  *(this + 38) = v31;
  v8 = *(a2 + 54);
  if ((v8 & 0x800000) != 0)
  {
LABEL_36:
    v11 = *(a2 + 39);
    *(this + 54) |= 0x800000u;
    *(this + 39) = v11;
    v8 = *(a2 + 54);
  }

LABEL_37:
  if (!HIBYTE(v8))
  {
    goto LABEL_46;
  }

  if ((v8 & 0x1000000) != 0)
  {
    v36 = *(a2 + 40);
    *(this + 54) |= 0x1000000u;
    *(this + 40) = v36;
    v8 = *(a2 + 54);
    if ((v8 & 0x2000000) == 0)
    {
LABEL_40:
      if ((v8 & 0x4000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_83;
    }
  }

  else if ((v8 & 0x2000000) == 0)
  {
    goto LABEL_40;
  }

  v37 = *(a2 + 41);
  *(this + 54) |= 0x2000000u;
  *(this + 41) = v37;
  v8 = *(a2 + 54);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_41:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_84;
  }

LABEL_83:
  v38 = *(a2 + 42);
  *(this + 54) |= 0x4000000u;
  *(this + 42) = v38;
  v8 = *(a2 + 54);
  if ((v8 & 0x8000000) == 0)
  {
LABEL_42:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_85;
  }

LABEL_84:
  v39 = *(a2 + 43);
  *(this + 54) |= 0x8000000u;
  *(this + 43) = v39;
  v8 = *(a2 + 54);
  if ((v8 & 0x10000000) == 0)
  {
LABEL_43:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_86;
  }

LABEL_85:
  v40 = *(a2 + 44);
  *(this + 54) |= 0x10000000u;
  *(this + 44) = v40;
  v8 = *(a2 + 54);
  if ((v8 & 0x20000000) == 0)
  {
LABEL_44:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_87:
    v42 = *(a2 + 46);
    *(this + 54) |= 0x40000000u;
    *(this + 46) = v42;
    if ((*(a2 + 54) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_88;
  }

LABEL_86:
  v41 = *(a2 + 45);
  *(this + 54) |= 0x20000000u;
  *(this + 45) = v41;
  v8 = *(a2 + 54);
  if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_45:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_88:
  v43 = *(a2 + 47);
  *(this + 54) |= 0x80000000;
  *(this + 47) = v43;
LABEL_46:
  LOBYTE(v12) = *(a2 + 220);
  if (!v12)
  {
    return;
  }

  if (*(a2 + 220))
  {
    v32 = *(a2 + 48);
    *(this + 55) |= 1u;
    *(this + 48) = v32;
    v12 = *(a2 + 55);
    if ((v12 & 2) == 0)
    {
LABEL_49:
      if ((v12 & 4) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_78;
    }
  }

  else if ((*(a2 + 220) & 2) == 0)
  {
    goto LABEL_49;
  }

  v33 = *(a2 + 49);
  *(this + 55) |= 2u;
  *(this + 49) = v33;
  v12 = *(a2 + 55);
  if ((v12 & 4) == 0)
  {
LABEL_50:
    if ((v12 & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_79;
  }

LABEL_78:
  v34 = *(a2 + 50);
  *(this + 55) |= 4u;
  *(this + 50) = v34;
  v12 = *(a2 + 55);
  if ((v12 & 8) == 0)
  {
LABEL_51:
    if ((v12 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_52;
  }

LABEL_79:
  v35 = *(a2 + 51);
  *(this + 55) |= 8u;
  *(this + 51) = v35;
  if ((*(a2 + 55) & 0x10) != 0)
  {
LABEL_52:
    v13 = *(a2 + 52);
    *(this + 55) |= 0x10u;
    *(this + 52) = v13;
  }
}

void sub_2963737B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothHFPAudioLinkInfo::~BluetoothHFPAudioLinkInfo(awd::metrics::BluetoothHFPAudioLinkInfo *this)
{
  *this = &unk_2A1D4B508;
  awd::metrics::BluetoothHFPAudioLinkInfo::SharedDtor(this);
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothHFPAudioLinkInfo::~BluetoothHFPAudioLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::SharedDtor(uint64_t this)
{
  v1 = *(this + 96);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::default_instance(awd::metrics::BluetoothHFPAudioLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothHFPAudioLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothHFPAudioLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothHFPAudioLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 216);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 56) = 0;
  }

  if ((v1 & 0x1FE00) != 0)
  {
    if ((v1 & 0x200) != 0)
    {
      v2 = *(this + 96);
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

    *(this + 104) = 0;
    *(this + 112) = 0;
    *(this + 120) = 0;
    v1 = *(this + 216);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 128) = 0u;
    *(this + 144) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 160) = 0u;
    *(this + 176) = 0u;
  }

  if (*(this + 220))
  {
    *(this + 192) = 0;
    *(this + 200) = 0;
    *(this + 208) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 216) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothHFPAudioLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_90;
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

        *(this + 54) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v27 = v10 + 1;
          *(a2 + 1) = v27;
          goto LABEL_103;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_103:
        v157[0] = 0;
        if (v27 >= v7 || (v49 = *v27, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v157);
          if (!result)
          {
            return result;
          }

          v49 = v157[0];
          v50 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v50 = v27 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 16) = v49 != 0;
        *(this + 54) |= 2u;
        if (v50 >= v7 || *v50 != 24)
        {
          continue;
        }

        v25 = v50 + 1;
        *(a2 + 1) = v25;
LABEL_111:
        if (v25 >= v7 || (v51 = *v25, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v51;
          v52 = (v25 + 1);
          *(a2 + 1) = v52;
        }

        *(this + 54) |= 4u;
        if (v52 >= v7)
        {
          continue;
        }

        v53 = *v52;
        goto LABEL_118;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_111;
      case 4u:
        if ((TagFallback & 7) == 0)
        {
          v46 = *(a2 + 1);
          v7 = *(a2 + 2);
LABEL_120:
          v156 = 0;
          if (v46 >= v7 || *v46 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v46;
            *(a2 + 1) = v46 + 1;
          }

          v54 = *(this + 8);
          if (v54 == *(this + 9))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 3, v54 + 1);
            v54 = *(this + 8);
          }

          v55 = v156;
          v56 = *(this + 3);
          *(this + 8) = v54 + 1;
          *(v56 + 4 * v54) = v55;
          v57 = *(this + 9) - *(this + 8);
          if (v57 >= 1)
          {
            v58 = v57 + 1;
            do
            {
              v59 = *(a2 + 1);
              v60 = *(a2 + 2);
              if (v59 >= v60 || *v59 != 32)
              {
                break;
              }

              *(a2 + 1) = v59 + 1;
              if ((v59 + 1) >= v60 || v59[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v59[1];
                *(a2 + 1) = v59 + 2;
              }

              v61 = *(this + 8);
              if (v61 >= *(this + 9))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v61 = *(this + 8);
              }

              v62 = v156;
              v63 = *(this + 3);
              *(this + 8) = v61 + 1;
              *(v63 + 4 * v61) = v62;
              --v58;
            }

            while (v58 > 1);
          }

          goto LABEL_137;
        }

        if (v6 != 2)
        {
          goto LABEL_90;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
        if (!result)
        {
          return result;
        }

LABEL_137:
        v52 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v52 < v7)
        {
          v53 = *v52;
          if (v53 == 40)
          {
            while (1)
            {
              v45 = (v52 + 1);
              *(a2 + 1) = v45;
LABEL_140:
              v157[0] = 0;
              if (v45 >= v7 || (v64 = *v45, (v64 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v157);
                if (!result)
                {
                  return result;
                }

                v64 = v157[0];
              }

              else
              {
                *(a2 + 1) = v45 + 1;
              }

              v65 = *(this + 12);
              if (v65 == *(this + 13))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 5, v65 + 1);
                v65 = *(this + 12);
              }

              v66 = *(this + 5);
              *(this + 12) = v65 + 1;
              *(v66 + 4 * v65) = v64;
              v67 = *(this + 13) - *(this + 12);
              if (v67 >= 1)
              {
                v68 = v67 + 1;
                do
                {
                  v69 = *(a2 + 1);
                  v70 = *(a2 + 2);
                  if (v69 >= v70 || *v69 != 40)
                  {
                    break;
                  }

                  *(a2 + 1) = v69 + 1;
                  v157[0] = 0;
                  if ((v69 + 1) >= v70 || (v71 = v69[1], (v71 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v157);
                    if (!result)
                    {
                      return result;
                    }

                    v71 = v157[0];
                  }

                  else
                  {
                    *(a2 + 1) = v69 + 2;
                  }

                  v72 = *(this + 12);
                  if (v72 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                    v72 = *(this + 12);
                  }

                  v73 = *(this + 5);
                  *(this + 12) = v72 + 1;
                  *(v73 + 4 * v72) = v71;
                  --v68;
                }

                while (v68 > 1);
              }

LABEL_159:
              v52 = *(a2 + 1);
              v7 = *(a2 + 2);
              if (v52 >= v7)
              {
                break;
              }

              v74 = *v52;
              if (v74 == 48)
              {
                v31 = (v52 + 1);
                *(a2 + 1) = v31;
LABEL_164:
                if (v31 >= v7 || (v75 = *v31, v75 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                  if (!result)
                  {
                    return result;
                  }

                  v76 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 14) = v75;
                  v76 = v31 + 1;
                  *(a2 + 1) = v76;
                }

                *(this + 54) |= 0x20u;
                if (v76 < v7 && *v76 == 56)
                {
                  v34 = v76 + 1;
                  *(a2 + 1) = v34;
LABEL_172:
                  if (v34 >= v7 || (v77 = *v34, v77 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                    if (!result)
                    {
                      return result;
                    }

                    v78 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 15) = v77;
                    v78 = (v34 + 1);
                    *(a2 + 1) = v78;
                  }

                  *(this + 54) |= 0x40u;
                  if (v78 < v7)
                  {
                    v79 = *v78;
                    goto LABEL_179;
                  }
                }

                goto LABEL_1;
              }

              if (v74 != 40)
              {
                goto LABEL_1;
              }
            }
          }

          else
          {
LABEL_118:
            if (v53 == 32)
            {
              v46 = (v52 + 1);
              *(a2 + 1) = v46;
              goto LABEL_120;
            }
          }
        }

        continue;
      case 5u:
        if ((TagFallback & 7) == 0)
        {
          v45 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_140;
        }

        if (v6 != 2)
        {
          goto LABEL_90;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 40);
        if (!result)
        {
          return result;
        }

        goto LABEL_159;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v31 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_164;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v34 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_172;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
            if (!result)
            {
              return result;
            }

            goto LABEL_198;
          }

          goto LABEL_90;
        }

        v47 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v47 >= v7 || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v47;
            *(a2 + 1) = v47 + 1;
          }

          v80 = *(this + 18);
          if (v80 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v80 + 1);
            v80 = *(this + 18);
          }

          v81 = v156;
          v82 = *(this + 8);
          *(this + 18) = v80 + 1;
          *(v82 + 4 * v80) = v81;
          v83 = *(this + 19) - *(this + 18);
          if (v83 >= 1)
          {
            v84 = v83 + 1;
            do
            {
              v85 = *(a2 + 1);
              v86 = *(a2 + 2);
              if (v85 >= v86 || *v85 != 64)
              {
                break;
              }

              *(a2 + 1) = v85 + 1;
              if ((v85 + 1) >= v86 || v85[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v85[1];
                *(a2 + 1) = v85 + 2;
              }

              v87 = *(this + 18);
              if (v87 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v87 = *(this + 18);
              }

              v88 = v156;
              v89 = *(this + 8);
              *(this + 18) = v87 + 1;
              *(v89 + 4 * v87) = v88;
              --v84;
            }

            while (v84 > 1);
          }

LABEL_198:
          v78 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v78 >= v7)
          {
            goto LABEL_1;
          }

          v79 = *v78;
          if (v79 == 72)
          {
            goto LABEL_200;
          }

LABEL_179:
          if (v79 != 64)
          {
            goto LABEL_1;
          }

          v47 = (v78 + 1);
          *(a2 + 1) = v47;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_218;
          }

LABEL_90:
          if (v6 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v48 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_201:
        v156 = 0;
        if (v48 < v7 && (*v48 & 0x80000000) == 0)
        {
          v156 = *v48;
          *(a2 + 1) = v48 + 1;
          goto LABEL_205;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
        {
LABEL_205:
          v90 = *(this + 22);
          if (v90 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v90 + 1);
            v90 = *(this + 22);
          }

          v91 = v156;
          v92 = *(this + 10);
          *(this + 22) = v90 + 1;
          *(v92 + 4 * v90) = v91;
          v93 = *(this + 23) - *(this + 22);
          if (v93 >= 1)
          {
            v94 = v93 + 1;
            do
            {
              v95 = *(a2 + 1);
              v96 = *(a2 + 2);
              if (v95 >= v96 || *v95 != 72)
              {
                break;
              }

              *(a2 + 1) = v95 + 1;
              if ((v95 + 1) >= v96 || v95[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v95[1];
                *(a2 + 1) = v95 + 2;
              }

              v97 = *(this + 22);
              if (v97 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v97 = *(this + 22);
              }

              v98 = v156;
              v99 = *(this + 10);
              *(this + 22) = v97 + 1;
              *(v99 + 4 * v97) = v98;
              --v94;
            }

            while (v94 > 1);
          }

LABEL_218:
          v78 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v78 >= v7)
          {
            continue;
          }

          v100 = *v78;
          if (v100 != 82)
          {
            if (v100 != 72)
            {
              continue;
            }

LABEL_200:
            v48 = (v78 + 1);
            *(a2 + 1) = v48;
            goto LABEL_201;
          }

          *(a2 + 1) = v78 + 1;
LABEL_223:
          *(this + 54) |= 0x200u;
          if (*(this + 12) == MEMORY[0x29EDC9758])
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v101 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v101 < v14 && *v101 == 88)
          {
            v36 = v101 + 1;
            *(a2 + 1) = v36;
LABEL_229:
            if (v36 >= v14 || (v102 = *v36, v102 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
              if (!result)
              {
                return result;
              }

              v103 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            else
            {
              *(this + 26) = v102;
              v103 = v36 + 1;
              *(a2 + 1) = v103;
            }

            *(this + 54) |= 0x400u;
            if (v103 < v14 && *v103 == 96)
            {
              v20 = v103 + 1;
              *(a2 + 1) = v20;
LABEL_237:
              if (v20 >= v14 || (v104 = *v20, v104 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                if (!result)
                {
                  return result;
                }

                v105 = *(a2 + 1);
                v14 = *(a2 + 2);
              }

              else
              {
                *(this + 27) = v104;
                v105 = v20 + 1;
                *(a2 + 1) = v105;
              }

              *(this + 54) |= 0x800u;
              if (v105 < v14 && *v105 == 104)
              {
                v22 = v105 + 1;
                *(a2 + 1) = v22;
LABEL_245:
                if (v22 >= v14 || (v106 = *v22, v106 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
                  if (!result)
                  {
                    return result;
                  }

                  v107 = *(a2 + 1);
                  v14 = *(a2 + 2);
                }

                else
                {
                  *(this + 28) = v106;
                  v107 = v22 + 1;
                  *(a2 + 1) = v107;
                }

                *(this + 54) |= 0x1000u;
                if (v107 < v14 && *v107 == 112)
                {
                  v33 = v107 + 1;
                  *(a2 + 1) = v33;
LABEL_253:
                  if (v33 >= v14 || (v108 = *v33, v108 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
                    if (!result)
                    {
                      return result;
                    }

                    v109 = *(a2 + 1);
                    v14 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 29) = v108;
                    v109 = v33 + 1;
                    *(a2 + 1) = v109;
                  }

                  *(this + 54) |= 0x2000u;
                  if (v109 < v14 && *v109 == 120)
                  {
                    v18 = v109 + 1;
                    *(a2 + 1) = v18;
LABEL_261:
                    if (v18 >= v14 || (v110 = *v18, v110 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                      if (!result)
                      {
                        return result;
                      }

                      v111 = *(a2 + 1);
                      v14 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 30) = v110;
                      v111 = (v18 + 1);
                      *(a2 + 1) = v111;
                    }

                    *(this + 54) |= 0x4000u;
                    if (v14 - v111 >= 2 && *v111 == 128 && v111[1] == 1)
                    {
                      v26 = (v111 + 2);
                      *(a2 + 1) = v26;
LABEL_270:
                      if (v26 >= v14 || (v112 = *v26, v112 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                        if (!result)
                        {
                          return result;
                        }

                        v113 = *(a2 + 1);
                        v14 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 31) = v112;
                        v113 = (v26 + 1);
                        *(a2 + 1) = v113;
                      }

                      *(this + 54) |= 0x8000u;
                      if (v14 - v113 >= 2 && *v113 == 136 && v113[1] == 1)
                      {
                        v17 = (v113 + 2);
                        *(a2 + 1) = v17;
LABEL_279:
                        if (v17 >= v14 || (v114 = *v17, v114 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                          if (!result)
                          {
                            return result;
                          }

                          v115 = *(a2 + 1);
                          v14 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 32) = v114;
                          v115 = (v17 + 1);
                          *(a2 + 1) = v115;
                        }

                        *(this + 54) |= 0x10000u;
                        if (v14 - v115 >= 2 && *v115 == 144 && v115[1] == 1)
                        {
                          v29 = (v115 + 2);
                          *(a2 + 1) = v29;
LABEL_288:
                          if (v29 >= v14 || (v116 = *v29, v116 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                            if (!result)
                            {
                              return result;
                            }

                            v117 = *(a2 + 1);
                            v14 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 33) = v116;
                            v117 = (v29 + 1);
                            *(a2 + 1) = v117;
                          }

                          *(this + 54) |= 0x20000u;
                          if (v14 - v117 >= 2 && *v117 == 152 && v117[1] == 1)
                          {
                            v35 = (v117 + 2);
                            *(a2 + 1) = v35;
LABEL_297:
                            if (v35 >= v14 || (v118 = *v35, v118 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
                              if (!result)
                              {
                                return result;
                              }

                              v119 = *(a2 + 1);
                              v14 = *(a2 + 2);
                            }

                            else
                            {
                              *(this + 34) = v118;
                              v119 = (v35 + 1);
                              *(a2 + 1) = v119;
                            }

                            *(this + 54) |= 0x40000u;
                            if (v14 - v119 >= 2 && *v119 == 160 && v119[1] == 1)
                            {
                              v40 = (v119 + 2);
                              *(a2 + 1) = v40;
LABEL_306:
                              if (v40 >= v14 || (v120 = *v40, v120 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
                                if (!result)
                                {
                                  return result;
                                }

                                v121 = *(a2 + 1);
                                v14 = *(a2 + 2);
                              }

                              else
                              {
                                *(this + 35) = v120;
                                v121 = (v40 + 1);
                                *(a2 + 1) = v121;
                              }

                              *(this + 54) |= 0x80000u;
                              if (v14 - v121 >= 2 && *v121 == 168 && v121[1] == 1)
                              {
                                v30 = (v121 + 2);
                                *(a2 + 1) = v30;
LABEL_315:
                                if (v30 >= v14 || (v122 = *v30, v122 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v123 = *(a2 + 1);
                                  v14 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 36) = v122;
                                  v123 = (v30 + 1);
                                  *(a2 + 1) = v123;
                                }

                                *(this + 54) |= 0x100000u;
                                if (v14 - v123 >= 2 && *v123 == 176 && v123[1] == 1)
                                {
                                  v32 = (v123 + 2);
                                  *(a2 + 1) = v32;
LABEL_324:
                                  v157[0] = 0;
                                  if (v32 >= v14 || (v124 = *v32, (v124 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v157);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v124 = v157[0];
                                    v125 = *(a2 + 1);
                                    v14 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    v125 = (v32 + 1);
                                    *(a2 + 1) = v125;
                                  }

                                  *(this + 37) = -(v124 & 1) ^ (v124 >> 1);
                                  *(this + 54) |= 0x200000u;
                                  if (v14 - v125 >= 2 && *v125 == 184 && v125[1] == 1)
                                  {
                                    v39 = (v125 + 2);
                                    *(a2 + 1) = v39;
LABEL_333:
                                    v157[0] = 0;
                                    if (v39 >= v14 || (v126 = *v39, (v126 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v157);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v126 = v157[0];
                                      v127 = *(a2 + 1);
                                      v14 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      v127 = (v39 + 1);
                                      *(a2 + 1) = v127;
                                    }

                                    *(this + 38) = -(v126 & 1) ^ (v126 >> 1);
                                    *(this + 54) |= 0x400000u;
                                    if (v14 - v127 >= 2 && *v127 == 192 && v127[1] == 1)
                                    {
                                      v41 = (v127 + 2);
                                      *(a2 + 1) = v41;
LABEL_342:
                                      v157[0] = 0;
                                      if (v41 >= v14 || (v128 = *v41, (v128 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v157);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v128 = v157[0];
                                        v129 = *(a2 + 1);
                                        v14 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        v129 = (v41 + 1);
                                        *(a2 + 1) = v129;
                                      }

                                      *(this + 39) = -(v128 & 1) ^ (v128 >> 1);
                                      *(this + 54) |= 0x800000u;
                                      if (v14 - v129 >= 2 && *v129 == 200 && v129[1] == 1)
                                      {
                                        v24 = (v129 + 2);
                                        *(a2 + 1) = v24;
LABEL_351:
                                        v157[0] = 0;
                                        if (v24 >= v14 || (v130 = *v24, (v130 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v157);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v130 = v157[0];
                                          v131 = *(a2 + 1);
                                          v14 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          v131 = (v24 + 1);
                                          *(a2 + 1) = v131;
                                        }

                                        *(this + 40) = -(v130 & 1) ^ (v130 >> 1);
                                        *(this + 54) |= 0x1000000u;
                                        if (v14 - v131 >= 2 && *v131 == 208 && v131[1] == 1)
                                        {
                                          v23 = (v131 + 2);
                                          *(a2 + 1) = v23;
LABEL_360:
                                          v157[0] = 0;
                                          if (v23 >= v14 || (v132 = *v23, (v132 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v157);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v132 = v157[0];
                                            v133 = *(a2 + 1);
                                            v14 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v133 = (v23 + 1);
                                            *(a2 + 1) = v133;
                                          }

                                          *(this + 41) = -(v132 & 1) ^ (v132 >> 1);
                                          *(this + 54) |= 0x2000000u;
                                          if (v14 - v133 >= 2 && *v133 == 216 && v133[1] == 1)
                                          {
                                            v44 = (v133 + 2);
                                            *(a2 + 1) = v44;
LABEL_369:
                                            v157[0] = 0;
                                            if (v44 >= v14 || (v134 = *v44, (v134 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v157);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v134 = v157[0];
                                              v135 = *(a2 + 1);
                                              v14 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v135 = (v44 + 1);
                                              *(a2 + 1) = v135;
                                            }

                                            *(this + 42) = -(v134 & 1) ^ (v134 >> 1);
                                            *(this + 54) |= 0x4000000u;
                                            if (v14 - v135 >= 2 && *v135 == 224 && v135[1] == 1)
                                            {
                                              v15 = (v135 + 2);
                                              *(a2 + 1) = v15;
LABEL_378:
                                              if (v15 >= v14 || (v136 = *v15, v136 < 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v137 = *(a2 + 1);
                                                v14 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *(this + 43) = v136;
                                                v137 = (v15 + 1);
                                                *(a2 + 1) = v137;
                                              }

                                              *(this + 54) |= 0x8000000u;
                                              if (v14 - v137 >= 2 && *v137 == 232 && v137[1] == 1)
                                              {
                                                v42 = (v137 + 2);
                                                *(a2 + 1) = v42;
LABEL_387:
                                                if (v42 >= v14 || (v138 = *v42, v138 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 44);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v139 = *(a2 + 1);
                                                  v14 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *(this + 44) = v138;
                                                  v139 = (v42 + 1);
                                                  *(a2 + 1) = v139;
                                                }

                                                *(this + 54) |= 0x10000000u;
                                                if (v14 - v139 >= 2 && *v139 == 240 && v139[1] == 1)
                                                {
                                                  v43 = (v139 + 2);
                                                  *(a2 + 1) = v43;
LABEL_396:
                                                  if (v43 >= v14 || (v140 = *v43, v140 < 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v141 = *(a2 + 1);
                                                    v14 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *(this + 45) = v140;
                                                    v141 = (v43 + 1);
                                                    *(a2 + 1) = v141;
                                                  }

                                                  *(this + 54) |= 0x20000000u;
                                                  if (v14 - v141 >= 2 && *v141 == 248 && v141[1] == 1)
                                                  {
                                                    v37 = (v141 + 2);
                                                    *(a2 + 1) = v37;
LABEL_405:
                                                    if (v37 >= v14 || (v142 = *v37, v142 < 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v143 = *(a2 + 1);
                                                      v14 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *(this + 46) = v142;
                                                      v143 = (v37 + 1);
                                                      *(a2 + 1) = v143;
                                                    }

                                                    *(this + 54) |= 0x40000000u;
                                                    if (v14 - v143 >= 2 && *v143 == 128 && v143[1] == 2)
                                                    {
                                                      v28 = (v143 + 2);
                                                      *(a2 + 1) = v28;
LABEL_414:
                                                      if (v28 >= v14 || (v144 = *v28, v144 < 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 47);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v145 = *(a2 + 1);
                                                        v14 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *(this + 47) = v144;
                                                        v145 = (v28 + 1);
                                                        *(a2 + 1) = v145;
                                                      }

                                                      *(this + 54) |= 0x80000000;
                                                      if (v14 - v145 >= 2 && *v145 == 136 && v145[1] == 2)
                                                      {
                                                        v38 = (v145 + 2);
                                                        *(a2 + 1) = v38;
LABEL_423:
                                                        if (v38 >= v14 || (v146 = *v38, v146 < 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v147 = *(a2 + 1);
                                                        }

                                                        else
                                                        {
                                                          *(this + 48) = v146;
                                                          v147 = (v38 + 1);
                                                          *(a2 + 1) = v147;
                                                        }

                                                        *(this + 55) |= 1u;
                                                        v11 = *(a2 + 2);
                                                        if (v11 - v147 >= 2 && *v147 == 144 && v147[1] == 2)
                                                        {
                                                          v19 = (v147 + 2);
                                                          *(a2 + 1) = v19;
LABEL_432:
                                                          if (v19 >= v11 || (v148 = *v19, v148 < 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v149 = *(a2 + 1);
                                                            v11 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *(this + 49) = v148;
                                                            v149 = (v19 + 1);
                                                            *(a2 + 1) = v149;
                                                          }

                                                          *(this + 55) |= 2u;
                                                          if (v11 - v149 >= 2 && *v149 == 152 && v149[1] == 2)
                                                          {
                                                            v16 = (v149 + 2);
                                                            *(a2 + 1) = v16;
LABEL_441:
                                                            if (v16 >= v11 || (v150 = *v16, v150 < 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v151 = *(a2 + 1);
                                                              v11 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *(this + 50) = v150;
                                                              v151 = (v16 + 1);
                                                              *(a2 + 1) = v151;
                                                            }

                                                            *(this + 55) |= 4u;
                                                            if (v11 - v151 >= 2 && *v151 == 160 && v151[1] == 2)
                                                            {
                                                              v12 = (v151 + 2);
                                                              *(a2 + 1) = v12;
LABEL_450:
                                                              if (v12 >= v11 || (v152 = *v12, v152 < 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v153 = *(a2 + 1);
                                                                v11 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *(this + 51) = v152;
                                                                v153 = (v12 + 1);
                                                                *(a2 + 1) = v153;
                                                              }

                                                              *(this + 55) |= 8u;
                                                              if (v11 - v153 >= 2 && *v153 == 168 && v153[1] == 2)
                                                              {
                                                                v13 = (v153 + 2);
                                                                *(a2 + 1) = v13;
LABEL_459:
                                                                if (v13 >= v11 || (v154 = *v13, v154 < 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v155 = *(a2 + 1);
                                                                  v11 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *(this + 52) = v154;
                                                                  v155 = v13 + 1;
                                                                  *(a2 + 1) = v155;
                                                                }

                                                                *(this + 55) |= 0x10u;
                                                                if (v155 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          continue;
        }

        return 0;
      case 0xAu:
        if (v6 == 2)
        {
          goto LABEL_223;
        }

        goto LABEL_90;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v36 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_229;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_237;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_245;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v33 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_253;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v18 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_261;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v26 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_270;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v17 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_279;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v29 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_288;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v35 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_297;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v40 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_306;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v30 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_315;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v32 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_324;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v39 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_333;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v41 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_342;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v24 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_351;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_360;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v44 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_369;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_378;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v42 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_387;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v43 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_396;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v37 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_405;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v28 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_414;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v38 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_423;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_432;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v16 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_441;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_450;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_90;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_459;
      default:
        goto LABEL_90;
    }
  }
}