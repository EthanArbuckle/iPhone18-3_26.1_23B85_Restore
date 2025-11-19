uint64_t awd::metrics::BluetoothServiceDisconnectionResult::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::ByteSize(awd::metrics::BluetoothServiceDisconnectionResult *this)
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

void awd::metrics::BluetoothServiceDisconnectionResult::CheckTypeAndMergeFrom(awd::metrics::BluetoothServiceDisconnectionResult *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothServiceDisconnectionResult::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothServiceDisconnectionResult::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothServiceDisconnectionResult::CopyFrom(awd::metrics::BluetoothServiceDisconnectionResult *this, const awd::metrics::BluetoothServiceDisconnectionResult *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothServiceDisconnectionResult::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothServiceDisconnectionResult::Swap(uint64_t this, awd::metrics::BluetoothServiceDisconnectionResult *a2)
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

uint64_t awd::metrics::BluetoothLeSessionRegister::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  return this;
}

awd::metrics::BluetoothLeSessionRegister *awd::metrics::BluetoothLeSessionRegister::BluetoothLeSessionRegister(awd::metrics::BluetoothLeSessionRegister *this, const awd::metrics::BluetoothLeSessionRegister *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A1D4A860;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 28) = 0;
  awd::metrics::BluetoothLeSessionRegister::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeSessionRegister::MergeFrom(awd::metrics::BluetoothLeSessionRegister *this, const awd::metrics::BluetoothLeSessionRegister *a2)
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

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 9) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 9);
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
    v9 = *(a2 + 6);
    *(this + 9) |= 4u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 28);
    *(this + 9) |= 8u;
    *(this + 28) = v5;
  }
}

void sub_296359D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeSessionRegister::~BluetoothLeSessionRegister(awd::metrics::BluetoothLeSessionRegister *this)
{
  *this = &unk_2A1D4A860;
  awd::metrics::BluetoothLeSessionRegister::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A860;
  awd::metrics::BluetoothLeSessionRegister::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A860;
  awd::metrics::BluetoothLeSessionRegister::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeSessionRegister::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothLeSessionRegister::default_instance(awd::metrics::BluetoothLeSessionRegister *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeSessionRegister::default_instance_;
  if (!awd::metrics::BluetoothLeSessionRegister::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeSessionRegister::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeSessionRegister::Clear(uint64_t this)
{
  v1 = *(this + 36);
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
    *(this + 28) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeSessionRegister::MergePartialFromCodedStream(awd::metrics::BluetoothLeSessionRegister *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v9 = *(this + 9) | 1;
        *(this + 9) = v9;
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

        v9 = *(this + 9);
LABEL_30:
        *(this + 9) = v9 | 2;
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
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v18;
            v19 = v16 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 9) |= 4u;
          if (v19 < v10 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(a2 + 1) = v11;
LABEL_44:
            v23 = 0;
            if (v11 >= v10 || (v20 = *v11, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
              if (!result)
              {
                return result;
              }

              v20 = v23;
              v21 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v21 = v11 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 28) = v20 != 0;
            *(this + 9) |= 8u;
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

uint64_t awd::metrics::BluetoothLeSessionRegister::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  v8 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v8, a2, a4);
}

uint64_t awd::metrics::BluetoothLeSessionRegister::ByteSize(awd::metrics::BluetoothLeSessionRegister *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    result = 0;
    goto LABEL_22;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v2 = *(this + 9);
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
    goto LABEL_16;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 9);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 6);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

  result = ((v2 >> 2) & 2) + v3;
LABEL_22:
  *(this + 8) = result;
  return result;
}

void awd::metrics::BluetoothLeSessionRegister::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeSessionRegister *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeSessionRegister::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeSessionRegister::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeSessionRegister::CopyFrom(awd::metrics::BluetoothLeSessionRegister *this, const awd::metrics::BluetoothLeSessionRegister *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeSessionRegister::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeSessionRegister::Swap(uint64_t this, awd::metrics::BluetoothLeSessionRegister *a2)
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
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionUnregister::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

awd::metrics::BluetoothLeSessionUnregister *awd::metrics::BluetoothLeSessionUnregister::BluetoothLeSessionUnregister(awd::metrics::BluetoothLeSessionUnregister *this, const awd::metrics::BluetoothLeSessionUnregister *a2)
{
  *this = &unk_2A1D4A8D8;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothLeSessionUnregister::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeSessionUnregister::MergeFrom(awd::metrics::BluetoothLeSessionUnregister *this, const awd::metrics::BluetoothLeSessionUnregister *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 8) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_7:
      v5 = *(a2 + 6);
      *(this + 8) |= 4u;
      *(this + 6) = v5;
    }
  }
}

void sub_29635A78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeSessionUnregister::~BluetoothLeSessionUnregister(awd::metrics::BluetoothLeSessionUnregister *this)
{
  *this = &unk_2A1D4A8D8;
  awd::metrics::BluetoothLeSessionUnregister::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A8D8;
  awd::metrics::BluetoothLeSessionUnregister::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A8D8;
  awd::metrics::BluetoothLeSessionUnregister::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeSessionUnregister::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothLeSessionUnregister::default_instance(awd::metrics::BluetoothLeSessionUnregister *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeSessionUnregister::default_instance_;
  if (!awd::metrics::BluetoothLeSessionUnregister::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeSessionUnregister::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeSessionUnregister::Clear(uint64_t this)
{
  v1 = *(this + 32);
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
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeSessionUnregister::MergePartialFromCodedStream(awd::metrics::BluetoothLeSessionUnregister *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_17;
        }

        v13 = *(this + 8);
LABEL_26:
        *(this + 8) = v13 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v16 < v14 && *v16 == 24)
        {
          v15 = v16 + 1;
          *(a2 + 1) = v15;
LABEL_32:
          if (v15 >= v14 || (v17 = *v15, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v17;
            v18 = v15 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 8) |= 4u;
          if (v18 == v14 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

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
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v13 = *(this + 8) | 1;
        *(this + 8) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_26;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
      goto LABEL_32;
    }

LABEL_17:
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

uint64_t awd::metrics::BluetoothLeSessionUnregister::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v8, a2, a4);
}

uint64_t awd::metrics::BluetoothLeSessionUnregister::ByteSize(awd::metrics::BluetoothLeSessionUnregister *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if (*(this + 32))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v2 = *(this + 8);
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
    goto LABEL_16;
  }

  v3 = 0;
  if ((*(this + 32) & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
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

LABEL_21:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::BluetoothLeSessionUnregister::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeSessionUnregister *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeSessionUnregister::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeSessionUnregister::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeSessionUnregister::CopyFrom(awd::metrics::BluetoothLeSessionUnregister *this, const awd::metrics::BluetoothLeSessionUnregister *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeSessionUnregister::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeSessionUnregister::Swap(uint64_t this, awd::metrics::BluetoothLeSessionUnregister *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionScanStart::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 48) = 0;
  *(this + 52) = 0;
  return this;
}

awd::metrics::BluetoothLeSessionScanStart *awd::metrics::BluetoothLeSessionScanStart::BluetoothLeSessionScanStart(awd::metrics::BluetoothLeSessionScanStart *this, const awd::metrics::BluetoothLeSessionScanStart *a2)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 7) = 0;
  *this = &unk_2A1D4A950;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 12) = 0;
  *(this + 26) = 0;
  awd::metrics::BluetoothLeSessionScanStart::MergeFrom(this, a2);
  return this;
}

void sub_29635AFAC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void *awd::metrics::BluetoothLeSessionScanStart::MergeFrom(awd::metrics::BluetoothLeSessionScanStart *this, const awd::metrics::BluetoothLeSessionScanStart *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 24), a2 + 24);
  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
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

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
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

    result = std::string::operator=(v9, v8);
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v10 = *(a2 + 12);
    *(this + 15) |= 4u;
    *(this + 12) = v10;
    v5 = *(a2 + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_8:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 52);
    *(this + 15) |= 0x10u;
    *(this + 52) = v11;
    if ((*(a2 + 15) & 0x20) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 53);
    *(this + 15) |= 0x20u;
    *(this + 53) = v6;
  }

  return result;
}

void sub_29635B130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeSessionScanStart::~BluetoothLeSessionScanStart(awd::metrics::BluetoothLeSessionScanStart *this)
{
  *this = &unk_2A1D4A950;
  v2 = (this + 24);
  awd::metrics::BluetoothLeSessionScanStart::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothLeSessionScanStart::~BluetoothLeSessionScanStart(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeSessionScanStart::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothLeSessionScanStart::default_instance(awd::metrics::BluetoothLeSessionScanStart *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeSessionScanStart::default_instance_;
  if (!awd::metrics::BluetoothLeSessionScanStart::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeSessionScanStart::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeSessionScanStart::Clear(awd::metrics::BluetoothLeSessionScanStart *this)
{
  v2 = *(this + 60);
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

    *(this + 12) = 0;
    *(this + 26) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  *(this + 15) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothLeSessionScanStart::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
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
          if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v6 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v6;
            *(a2 + 1) = v5 + 1;
            if (!v6)
            {
              return 1;
            }
          }

          v7 = v6 >> 3;
          v8 = v6 & 7;
          if (v6 >> 3 <= 3)
          {
            break;
          }

          if (v7 != 4)
          {
            if (v7 == 5)
            {
              if ((v6 & 7) == 0)
              {
                v18 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_60;
              }
            }

            else if (v7 == 6 && (v6 & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_68;
            }

            goto LABEL_27;
          }

          if (v8 != 2)
          {
            goto LABEL_27;
          }

LABEL_50:
          v22 = *(v3 + 36);
          v23 = *(v3 + 32);
          if (v23 >= v22)
          {
            if (v22 == *(v3 + 40))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24));
              v22 = *(v3 + 36);
            }

            *(v3 + 36) = v22 + 1;
            v26 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v27 = *(v3 + 24);
            v28 = *(v3 + 32);
            *(v3 + 32) = v28 + 1;
            *(v27 + 8 * v28) = v26;
          }

          else
          {
            v24 = *(v3 + 24);
            *(v3 + 32) = v23 + 1;
            v25 = *(v24 + 8 * v23);
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v21 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v21 < v11)
          {
            v29 = *v21;
            if (v29 == 34)
            {
              goto LABEL_49;
            }

            if (v29 == 40)
            {
              v18 = v21 + 1;
              *(a2 + 1) = v18;
LABEL_60:
              v35 = 0;
              if (v18 >= v11 || (v30 = *v18, (v30 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
                if (!this)
                {
                  return this;
                }

                v30 = v35;
                v31 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v31 = v18 + 1;
                *(a2 + 1) = v31;
              }

              *(v3 + 52) = v30 != 0;
              *(v3 + 60) |= 0x10u;
              if (v31 < v11 && *v31 == 48)
              {
                v12 = v31 + 1;
                *(a2 + 1) = v12;
LABEL_68:
                v34 = 0;
                if (v12 >= v11 || (v32 = *v12, (v32 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
                  if (!this)
                  {
                    return this;
                  }

                  v32 = v34;
                  v33 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  v33 = v12 + 1;
                  *(a2 + 1) = v33;
                }

                *(v3 + 53) = v32 != 0;
                *(v3 + 60) |= 0x20u;
                if (v33 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  this = 1;
                  *(a2 + 36) = 1;
                  return this;
                }
              }
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((v6 & 7) != 0)
        {
          goto LABEL_27;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v14 >= v13 || (v15 = *v14, v15 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
          if (!this)
          {
            return this;
          }

          v16 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(v3 + 8) = v15;
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        v17 = *(v3 + 60) | 1;
        *(v3 + 60) = v17;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
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

      v17 = *(v3 + 60);
LABEL_36:
      *(v3 + 60) = v17 | 2;
      if (*(v3 + 16) == v4)
      {
        operator new();
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!this)
      {
        return this;
      }

      v19 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v19 < v9 && *v19 == 24)
      {
        v10 = v19 + 1;
        *(a2 + 1) = v10;
LABEL_42:
        if (v10 >= v9 || (v20 = *v10, v20 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 48));
          if (!this)
          {
            return this;
          }

          v21 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(v3 + 48) = v20;
          v21 = v10 + 1;
          *(a2 + 1) = v21;
        }

        *(v3 + 60) |= 4u;
        if (v21 < v9 && *v21 == 34)
        {
LABEL_49:
          *(a2 + 1) = v21 + 1;
          goto LABEL_50;
        }
      }
    }

    if (v7 == 3 && (v6 & 7) == 0)
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

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::BluetoothLeSessionScanStart::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  if ((*(v5 + 60) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 48), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v5 + 24) + 8 * v7);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v7;
    }

    while (v7 < *(v5 + 32));
  }

  v9 = *(v5 + 60);
  if ((v9 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 52), a2, a4);
    v9 = *(v5 + 60);
  }

  if ((v9 & 0x20) != 0)
  {
    v11 = *(v5 + 53);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v11, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionScanStart::ByteSize(awd::metrics::BluetoothLeSessionScanStart *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v2 = *(this + 15);
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
    goto LABEL_16;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 15);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 12);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

  v4 = ((v2 >> 3) & 2) + v3 + ((v2 >> 4) & 2);
LABEL_22:
  v13 = *(this + 8);
  v14 = (v13 + v4);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v16 = *(*(this + 3) + 8 * i);
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
        v13 = *(this + 8);
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

      v14 = (v21 + v14 + v17);
    }
  }

  *(this + 14) = v14;
  return v14;
}

void *awd::metrics::BluetoothLeSessionScanStart::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeSessionScanStart *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeSessionScanStart::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BluetoothLeSessionScanStart::MergeFrom(this, lpsrc);
}

const awd::metrics::BluetoothLeSessionScanStart *awd::metrics::BluetoothLeSessionScanStart::CopyFrom(const awd::metrics::BluetoothLeSessionScanStart *this, const awd::metrics::BluetoothLeSessionScanStart *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return awd::metrics::BluetoothLeSessionScanStart::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionScanStart::Swap(uint64_t this, awd::metrics::BluetoothLeSessionScanStart *a2)
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
    LODWORD(v4) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v7 = *(v3 + 52);
    *(v3 + 52) = *(a2 + 52);
    *(a2 + 52) = v7;
    v8 = *(v3 + 53);
    *(v3 + 53) = *(a2 + 53);
    *(a2 + 53) = v8;
    v9 = *(v3 + 60);
    *(v3 + 60) = *(a2 + 15);
    *(a2 + 15) = v9;
    v10 = *(v3 + 56);
    *(v3 + 56) = *(a2 + 14);
    *(a2 + 14) = v10;
  }

  return this;
}

double awd::metrics::BluetoothLeSessionScanStop::SharedCtor(awd::metrics::BluetoothLeSessionScanStop *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  return result;
}

awd::metrics::BluetoothLeSessionScanStop *awd::metrics::BluetoothLeSessionScanStop::BluetoothLeSessionScanStop(awd::metrics::BluetoothLeSessionScanStop *this, const awd::metrics::BluetoothLeSessionScanStop *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A1D4A9C8;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  awd::metrics::BluetoothLeSessionScanStop::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeSessionScanStop::MergeFrom(awd::metrics::BluetoothLeSessionScanStop *this, const awd::metrics::BluetoothLeSessionScanStop *a2)
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

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 9) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 9);
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
    v9 = *(a2 + 6);
    *(this + 9) |= 4u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 7);
    *(this + 9) |= 8u;
    *(this + 7) = v5;
  }
}

void sub_29635BD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeSessionScanStop::~BluetoothLeSessionScanStop(awd::metrics::BluetoothLeSessionScanStop *this)
{
  *this = &unk_2A1D4A9C8;
  awd::metrics::BluetoothLeSessionScanStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A9C8;
  awd::metrics::BluetoothLeSessionScanStop::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4A9C8;
  awd::metrics::BluetoothLeSessionScanStop::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeSessionScanStop::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothLeSessionScanStop::default_instance(awd::metrics::BluetoothLeSessionScanStop *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeSessionScanStop::default_instance_;
  if (!awd::metrics::BluetoothLeSessionScanStop::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeSessionScanStop::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeSessionScanStop::Clear(uint64_t this)
{
  v1 = *(this + 36);
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
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeSessionScanStop::MergePartialFromCodedStream(awd::metrics::BluetoothLeSessionScanStop *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v9 = *(this + 9) | 1;
        *(this + 9) = v9;
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

        v9 = *(this + 9);
LABEL_30:
        *(this + 9) = v9 | 2;
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
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v18;
            v19 = v16 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 9) |= 4u;
          if (v19 < v10 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(a2 + 1) = v11;
LABEL_44:
            if (v11 >= v10 || (v20 = *v11, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v21 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v20;
              v21 = v11 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 9) |= 8u;
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

uint64_t awd::metrics::BluetoothLeSessionScanStop::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  v8 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v8, a2, a4);
}

uint64_t awd::metrics::BluetoothLeSessionScanStop::ByteSize(awd::metrics::BluetoothLeSessionScanStop *this)
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
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
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

  v3 = (v3 + v9 + v5 + 1);
LABEL_16:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v10 = *(this + 6);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_23:
    v12 = *(this + 7);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v3 = (v13 + v3);
  }

LABEL_27:
  *(this + 8) = v3;
  return v3;
}

void awd::metrics::BluetoothLeSessionScanStop::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeSessionScanStop *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeSessionScanStop::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeSessionScanStop::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeSessionScanStop::CopyFrom(awd::metrics::BluetoothLeSessionScanStop *this, const awd::metrics::BluetoothLeSessionScanStop *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeSessionScanStop::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeSessionScanStop::Swap(uint64_t this, awd::metrics::BluetoothLeSessionScanStop *a2)
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
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionRequest::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 32) = 0;
  *(this + 24) = v1;
  *(this + 36) = 0;
  *(this + 40) = v1;
  *(this + 48) = v1;
  return this;
}

awd::metrics::BluetoothLeSessionDeviceConnectionRequest *awd::metrics::BluetoothLeSessionDeviceConnectionRequest::BluetoothLeSessionDeviceConnectionRequest(awd::metrics::BluetoothLeSessionDeviceConnectionRequest *this, const awd::metrics::BluetoothLeSessionDeviceConnectionRequest *a2)
{
  *(this + 7) = 0;
  *this = &unk_2A1D4AA40;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 36) = 0;
  *(this + 5) = v3;
  *(this + 6) = v3;
  awd::metrics::BluetoothLeSessionDeviceConnectionRequest::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeSessionDeviceConnectionRequest::MergeFrom(awd::metrics::BluetoothLeSessionDeviceConnectionRequest *this, const awd::metrics::BluetoothLeSessionDeviceConnectionRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 60))
  {
    v5 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 15);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 2);
    *(this + 15) |= 2u;
    v8 = *(this + 2);
    if (v8 == v6)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 15);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 8);
  *(this + 15) |= 4u;
  *(this + 8) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v12 = *(a2 + 36);
    *(this + 15) |= 0x10u;
    *(this + 36) = v12;
    v4 = *(a2 + 15);
    if ((v4 & 0x20) == 0)
    {
LABEL_11:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_17:
  v10 = *(a2 + 3);
  *(this + 15) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 15);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  v13 = *(a2 + 5);
  *(this + 15) |= 0x20u;
  v14 = *(this + 5);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  if ((*(a2 + 15) & 0x40) != 0)
  {
LABEL_24:
    v15 = *(a2 + 6);
    *(this + 15) |= 0x40u;
    v16 = *(this + 6);
    if (v16 == v6)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
  }
}

void sub_29635C870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeSessionDeviceConnectionRequest::~BluetoothLeSessionDeviceConnectionRequest(awd::metrics::BluetoothLeSessionDeviceConnectionRequest *this)
{
  *this = &unk_2A1D4AA40;
  awd::metrics::BluetoothLeSessionDeviceConnectionRequest::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AA40;
  awd::metrics::BluetoothLeSessionDeviceConnectionRequest::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AA40;
  awd::metrics::BluetoothLeSessionDeviceConnectionRequest::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothLeSessionDeviceConnectionRequest::SharedDtor(void *this)
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

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
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

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionRequest::default_instance(awd::metrics::BluetoothLeSessionDeviceConnectionRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeSessionDeviceConnectionRequest::default_instance_;
  if (!awd::metrics::BluetoothLeSessionDeviceConnectionRequest::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeSessionDeviceConnectionRequest::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionRequest::Clear(uint64_t this)
{
  v1 = *(this + 60);
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

    *(this + 32) = 0;
    if ((*(this + 60) & 8) != 0)
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

    *(this + 36) = 0;
    if ((*(this + 60) & 0x20) != 0)
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

    if ((*(this + 60) & 0x40) != 0)
    {
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
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionRequest::MergePartialFromCodedStream(awd::metrics::BluetoothLeSessionDeviceConnectionRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

            v19 = *(this + 15) | 1;
            *(this + 15) = v19;
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

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_46;
            }

            if (v8 != 2)
            {
              goto LABEL_31;
            }

            v19 = *(this + 15);
LABEL_40:
            *(this + 15) = v19 | 2;
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
            v11 = *(a2 + 2);
            if (v20 < v11 && *v20 == 24)
            {
              v12 = v20 + 1;
              *(a2 + 1) = v12;
LABEL_46:
              if (v12 >= v11 || (v21 = *v12, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v21;
                v22 = v12 + 1;
                *(a2 + 1) = v22;
              }

              v17 = *(this + 15) | 4;
              *(this + 15) = v17;
              if (v22 < v11 && *v22 == 34)
              {
                *(a2 + 1) = v22 + 1;
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
            goto LABEL_76;
          }

          goto LABEL_31;
        }

        if (v8 != 2)
        {
          goto LABEL_31;
        }

        v18 = *(this + 15);
LABEL_69:
        *(this + 15) = v18 | 0x20;
        if (*(this + 5) == v4)
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
LABEL_76:
          *(this + 15) |= 0x40u;
          if (*(this + 6) == v4)
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
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_31;
      }

      v17 = *(this + 15);
LABEL_54:
      *(this + 15) = v17 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v23 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v23 < v9 && *v23 == 40)
      {
        v10 = v23 + 1;
        *(a2 + 1) = v10;
LABEL_60:
        v28 = 0;
        if (v10 >= v9 || (v24 = *v10, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v24 = v28;
          v25 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v25 = (v10 + 1);
          *(a2 + 1) = v25;
        }

        *(this + 36) = v24 != 0;
        v18 = *(this + 15) | 0x10;
        *(this + 15) = v18;
        if (v9 - v25 >= 2 && *v25 == 130 && v25[1] == 16)
        {
          *(a2 + 1) = v25 + 2;
          goto LABEL_69;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_60;
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

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_11;
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

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
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
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 60) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
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
  v10 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionRequest::ByteSize(awd::metrics::BluetoothLeSessionDeviceConnectionRequest *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_52;
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
    v2 = *(this + 15);
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
    v11 = *(this + 8);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
    if ((v2 & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_23:
    v13 = *(this + 3);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v2 = *(this + 15);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v3 += v18 + v14 + 1;
    goto LABEL_32;
  }

  if ((v2 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_32:
  v4 = ((v2 >> 3) & 2) + v3;
  if ((v2 & 0x20) != 0)
  {
    v19 = *(this + 5);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v2 = *(this + 15);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 = (v4 + v24 + v20 + 2);
  }

  if ((v2 & 0x40) != 0)
  {
    v25 = *(this + 6);
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

    v4 = (v4 + v30 + v26 + 2);
  }

LABEL_52:
  *(this + 14) = v4;
  return v4;
}

void awd::metrics::BluetoothLeSessionDeviceConnectionRequest::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeSessionDeviceConnectionRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeSessionDeviceConnectionRequest::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeSessionDeviceConnectionRequest::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeSessionDeviceConnectionRequest::CopyFrom(awd::metrics::BluetoothLeSessionDeviceConnectionRequest *this, const awd::metrics::BluetoothLeSessionDeviceConnectionRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeSessionDeviceConnectionRequest::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionRequest::Swap(uint64_t this, awd::metrics::BluetoothLeSessionDeviceConnectionRequest *a2)
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
    LOBYTE(v5) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    LODWORD(v7) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v7;
    LODWORD(v7) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionResult::SharedCtor(uint64_t this)
{
  *(this + 60) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 32) = 0;
  *(this + 56) = 0;
  *(this + 40) = v1;
  *(this + 48) = v1;
  return this;
}

awd::metrics::BluetoothLeSessionDeviceConnectionResult *awd::metrics::BluetoothLeSessionDeviceConnectionResult::BluetoothLeSessionDeviceConnectionResult(awd::metrics::BluetoothLeSessionDeviceConnectionResult *this, const awd::metrics::BluetoothLeSessionDeviceConnectionResult *a2)
{
  *(this + 60) = 0;
  *this = &unk_2A1D4AAB8;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 56) = 0;
  *(this + 6) = v3;
  awd::metrics::BluetoothLeSessionDeviceConnectionResult::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeSessionDeviceConnectionResult::MergeFrom(awd::metrics::BluetoothLeSessionDeviceConnectionResult *this, const awd::metrics::BluetoothLeSessionDeviceConnectionResult *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
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

  v9 = *(a2 + 8);
  *(this + 16) |= 4u;
  *(this + 8) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(a2 + 3);
  *(this + 16) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v13 = *(a2 + 56);
    *(this + 16) |= 0x20u;
    *(this + 56) = v13;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_21:
  v12 = *(a2 + 9);
  *(this + 16) |= 0x10u;
  *(this + 9) = v12;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_23:
  v14 = *(a2 + 5);
  *(this + 16) |= 0x40u;
  v15 = *(this + 5);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  if ((*(a2 + 16) & 0x80) != 0)
  {
LABEL_26:
    v16 = *(a2 + 6);
    *(this + 16) |= 0x80u;
    v17 = *(this + 6);
    if (v17 == v6)
    {
      operator new();
    }

    std::string::operator=(v17, v16);
  }
}

void sub_29635D80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeSessionDeviceConnectionResult::~BluetoothLeSessionDeviceConnectionResult(awd::metrics::BluetoothLeSessionDeviceConnectionResult *this)
{
  *this = &unk_2A1D4AAB8;
  awd::metrics::BluetoothLeSessionDeviceConnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AAB8;
  awd::metrics::BluetoothLeSessionDeviceConnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AAB8;
  awd::metrics::BluetoothLeSessionDeviceConnectionResult::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothLeSessionDeviceConnectionResult::SharedDtor(void *this)
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

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
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

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionResult::default_instance(awd::metrics::BluetoothLeSessionDeviceConnectionResult *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeSessionDeviceConnectionResult::default_instance_;
  if (!awd::metrics::BluetoothLeSessionDeviceConnectionResult::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeSessionDeviceConnectionResult::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionResult::Clear(uint64_t this)
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

    *(this + 32) = 0;
    if ((*(this + 64) & 8) != 0)
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

    *(this + 36) = 0;
    *(this + 56) = 0;
    if ((*(this + 64) & 0x40) != 0)
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

    if ((*(this + 64) & 0x80) != 0)
    {
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
  }

  *(this + 64) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionResult::MergePartialFromCodedStream(awd::metrics::BluetoothLeSessionDeviceConnectionResult *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
                goto LABEL_64;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_72;
            }

            goto LABEL_35;
          }

          if (v7 != 256)
          {
            if (v7 == 257 && v8 == 2)
            {
              goto LABEL_88;
            }

            goto LABEL_35;
          }

          if (v8 != 2)
          {
            goto LABEL_35;
          }

          v20 = *(this + 16);
LABEL_81:
          *(this + 16) = v20 | 0x40;
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
LABEL_88:
            *(this + 16) |= 0x80u;
            if (*(this + 6) == v4)
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

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v18 = *(a2 + 2);
          if (v21 < v18 && *v21 == 24)
          {
            v19 = v21 + 1;
            *(a2 + 1) = v19;
LABEL_50:
            if (v19 >= v18 || (v22 = *v19, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v18 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v22;
              v23 = v19 + 1;
              *(a2 + 1) = v23;
            }

            v12 = *(this + 16) | 4;
            *(this + 16) = v12;
            if (v23 < v18 && *v23 == 34)
            {
              *(a2 + 1) = v23 + 1;
              goto LABEL_58;
            }
          }
        }
      }

      if (v7 == 3)
      {
        break;
      }

      if (v7 != 4 || v8 != 2)
      {
        goto LABEL_35;
      }

      v12 = *(this + 16);
LABEL_58:
      *(this + 16) = v12 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v24 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v24 < v10 && *v24 == 40)
      {
        v17 = v24 + 1;
        *(a2 + 1) = v17;
LABEL_64:
        if (v17 >= v10 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v25;
          v26 = v17 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 16) |= 0x10u;
        if (v26 < v10 && *v26 == 48)
        {
          v11 = v26 + 1;
          *(a2 + 1) = v11;
LABEL_72:
          v31 = 0;
          if (v11 >= v10 || (v27 = *v11, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
            if (!result)
            {
              return result;
            }

            v27 = v31;
            v28 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v28 = (v11 + 1);
            *(a2 + 1) = v28;
          }

          *(this + 56) = v27 != 0;
          v20 = *(this + 16) | 0x20;
          *(this + 16) = v20;
          if (v10 - v28 >= 2 && *v28 == 130 && v28[1] == 16)
          {
            *(a2 + 1) = v28 + 2;
            goto LABEL_81;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v19 = *(a2 + 1);
      v18 = *(a2 + 2);
      goto LABEL_50;
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

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionResult::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
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
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 64) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 56), a2, a4);
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
  v10 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionResult::ByteSize(awd::metrics::BluetoothLeSessionDeviceConnectionResult *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_57;
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

LABEL_24:
    v13 = *(this + 3);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v2 = *(this + 16);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v3 += v18 + v14 + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v11 = *(this + 8);
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
  if ((v2 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v2 & 0x10) != 0)
  {
LABEL_33:
    v19 = *(this + 9);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v20 = 2;
    }

    v3 += v20;
  }

LABEL_37:
  v4 = ((v2 >> 4) & 2) + v3;
  if ((v2 & 0x40) != 0)
  {
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
      v2 = *(this + 16);
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

  if ((v2 & 0x80) != 0)
  {
    v27 = *(this + 6);
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
  }

LABEL_57:
  *(this + 15) = v4;
  return v4;
}

void awd::metrics::BluetoothLeSessionDeviceConnectionResult::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeSessionDeviceConnectionResult *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeSessionDeviceConnectionResult::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeSessionDeviceConnectionResult::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeSessionDeviceConnectionResult::CopyFrom(awd::metrics::BluetoothLeSessionDeviceConnectionResult *this, const awd::metrics::BluetoothLeSessionDeviceConnectionResult *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeSessionDeviceConnectionResult::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeSessionDeviceConnectionResult::Swap(uint64_t this, awd::metrics::BluetoothLeSessionDeviceConnectionResult *a2)
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
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LOBYTE(v5) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    LODWORD(v7) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v7;
    LODWORD(v7) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 32) = 0;
  *(this + 24) = v1;
  *(this + 36) = 0;
  *(this + 40) = v1;
  *(this + 48) = v1;
  return this;
}

awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::BluetoothLeSessionDeviceDisconnectionRequest(awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *this, const awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *a2)
{
  *(this + 7) = 0;
  *this = &unk_2A1D4AB30;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 36) = 0;
  *(this + 5) = v3;
  *(this + 6) = v3;
  awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::MergeFrom(awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *this, const awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 60))
  {
    v5 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 15);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 2);
    *(this + 15) |= 2u;
    v8 = *(this + 2);
    if (v8 == v6)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 15);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 8);
  *(this + 15) |= 4u;
  *(this + 8) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v12 = *(a2 + 36);
    *(this + 15) |= 0x10u;
    *(this + 36) = v12;
    v4 = *(a2 + 15);
    if ((v4 & 0x20) == 0)
    {
LABEL_11:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_17:
  v10 = *(a2 + 3);
  *(this + 15) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 15);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  v13 = *(a2 + 5);
  *(this + 15) |= 0x20u;
  v14 = *(this + 5);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  if ((*(a2 + 15) & 0x40) != 0)
  {
LABEL_24:
    v15 = *(a2 + 6);
    *(this + 15) |= 0x40u;
    v16 = *(this + 6);
    if (v16 == v6)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
  }
}

void sub_29635E860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::~BluetoothLeSessionDeviceDisconnectionRequest(awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *this)
{
  *this = &unk_2A1D4AB30;
  awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AB30;
  awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AB30;
  awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::SharedDtor(void *this)
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

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
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

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::default_instance(awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::default_instance_;
  if (!awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::Clear(uint64_t this)
{
  v1 = *(this + 60);
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

    *(this + 32) = 0;
    if ((*(this + 60) & 8) != 0)
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

    *(this + 36) = 0;
    if ((*(this + 60) & 0x20) != 0)
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

    if ((*(this + 60) & 0x40) != 0)
    {
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
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::MergePartialFromCodedStream(awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

            v19 = *(this + 15) | 1;
            *(this + 15) = v19;
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

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_46;
            }

            if (v8 != 2)
            {
              goto LABEL_31;
            }

            v19 = *(this + 15);
LABEL_40:
            *(this + 15) = v19 | 2;
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
            v11 = *(a2 + 2);
            if (v20 < v11 && *v20 == 24)
            {
              v12 = v20 + 1;
              *(a2 + 1) = v12;
LABEL_46:
              if (v12 >= v11 || (v21 = *v12, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v21;
                v22 = v12 + 1;
                *(a2 + 1) = v22;
              }

              v17 = *(this + 15) | 4;
              *(this + 15) = v17;
              if (v22 < v11 && *v22 == 34)
              {
                *(a2 + 1) = v22 + 1;
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
            goto LABEL_76;
          }

          goto LABEL_31;
        }

        if (v8 != 2)
        {
          goto LABEL_31;
        }

        v18 = *(this + 15);
LABEL_69:
        *(this + 15) = v18 | 0x20;
        if (*(this + 5) == v4)
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
LABEL_76:
          *(this + 15) |= 0x40u;
          if (*(this + 6) == v4)
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
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_31;
      }

      v17 = *(this + 15);
LABEL_54:
      *(this + 15) = v17 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v23 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v23 < v9 && *v23 == 40)
      {
        v10 = v23 + 1;
        *(a2 + 1) = v10;
LABEL_60:
        v28 = 0;
        if (v10 >= v9 || (v24 = *v10, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v24 = v28;
          v25 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v25 = (v10 + 1);
          *(a2 + 1) = v25;
        }

        *(this + 36) = v24 != 0;
        v18 = *(this + 15) | 0x10;
        *(this + 15) = v18;
        if (v9 - v25 >= 2 && *v25 == 130 && v25[1] == 16)
        {
          *(a2 + 1) = v25 + 2;
          goto LABEL_69;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_60;
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

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_11;
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

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
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
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 60) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
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
  v10 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::ByteSize(awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_52;
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
    v2 = *(this + 15);
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
    v11 = *(this + 8);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
    if ((v2 & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_23:
    v13 = *(this + 3);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v2 = *(this + 15);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v3 += v18 + v14 + 1;
    goto LABEL_32;
  }

  if ((v2 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_32:
  v4 = ((v2 >> 3) & 2) + v3;
  if ((v2 & 0x20) != 0)
  {
    v19 = *(this + 5);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v2 = *(this + 15);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 = (v4 + v24 + v20 + 2);
  }

  if ((v2 & 0x40) != 0)
  {
    v25 = *(this + 6);
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

    v4 = (v4 + v30 + v26 + 2);
  }

LABEL_52:
  *(this + 14) = v4;
  return v4;
}

void awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::CopyFrom(awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *this, const awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest::Swap(uint64_t this, awd::metrics::BluetoothLeSessionDeviceDisconnectionRequest *a2)
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
    LOBYTE(v5) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    LODWORD(v7) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v7;
    LODWORD(v7) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::SharedCtor(uint64_t this)
{
  *(this + 60) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 32) = 0;
  *(this + 56) = 0;
  *(this + 40) = v1;
  *(this + 48) = v1;
  return this;
}

awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::BluetoothLeSessionDeviceDisconnectionResult(awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *this, const awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *a2)
{
  *(this + 60) = 0;
  *this = &unk_2A1D4ABA8;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 56) = 0;
  *(this + 6) = v3;
  awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::MergeFrom(awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *this, const awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
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

  v9 = *(a2 + 8);
  *(this + 16) |= 4u;
  *(this + 8) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(a2 + 3);
  *(this + 16) |= 8u;
  v11 = *(this + 3);
  if (v11 == v6)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v13 = *(a2 + 56);
    *(this + 16) |= 0x20u;
    *(this + 56) = v13;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_21:
  v12 = *(a2 + 9);
  *(this + 16) |= 0x10u;
  *(this + 9) = v12;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_23:
  v14 = *(a2 + 5);
  *(this + 16) |= 0x40u;
  v15 = *(this + 5);
  if (v15 == v6)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  if ((*(a2 + 16) & 0x80) != 0)
  {
LABEL_26:
    v16 = *(a2 + 6);
    *(this + 16) |= 0x80u;
    v17 = *(this + 6);
    if (v17 == v6)
    {
      operator new();
    }

    std::string::operator=(v17, v16);
  }
}

void sub_29635F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::~BluetoothLeSessionDeviceDisconnectionResult(awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *this)
{
  *this = &unk_2A1D4ABA8;
  awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ABA8;
  awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ABA8;
  awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::SharedDtor(void *this)
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

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
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

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::default_instance(awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::default_instance_;
  if (!awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::Clear(uint64_t this)
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

    *(this + 32) = 0;
    if ((*(this + 64) & 8) != 0)
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

    *(this + 36) = 0;
    *(this + 56) = 0;
    if ((*(this + 64) & 0x40) != 0)
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

    if ((*(this + 64) & 0x80) != 0)
    {
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
  }

  *(this + 64) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::MergePartialFromCodedStream(awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
                goto LABEL_64;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_72;
            }

            goto LABEL_35;
          }

          if (v7 != 256)
          {
            if (v7 == 257 && v8 == 2)
            {
              goto LABEL_88;
            }

            goto LABEL_35;
          }

          if (v8 != 2)
          {
            goto LABEL_35;
          }

          v20 = *(this + 16);
LABEL_81:
          *(this + 16) = v20 | 0x40;
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
LABEL_88:
            *(this + 16) |= 0x80u;
            if (*(this + 6) == v4)
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

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v18 = *(a2 + 2);
          if (v21 < v18 && *v21 == 24)
          {
            v19 = v21 + 1;
            *(a2 + 1) = v19;
LABEL_50:
            if (v19 >= v18 || (v22 = *v19, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v18 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v22;
              v23 = v19 + 1;
              *(a2 + 1) = v23;
            }

            v12 = *(this + 16) | 4;
            *(this + 16) = v12;
            if (v23 < v18 && *v23 == 34)
            {
              *(a2 + 1) = v23 + 1;
              goto LABEL_58;
            }
          }
        }
      }

      if (v7 == 3)
      {
        break;
      }

      if (v7 != 4 || v8 != 2)
      {
        goto LABEL_35;
      }

      v12 = *(this + 16);
LABEL_58:
      *(this + 16) = v12 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v24 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v24 < v10 && *v24 == 40)
      {
        v17 = v24 + 1;
        *(a2 + 1) = v17;
LABEL_64:
        if (v17 >= v10 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v25;
          v26 = v17 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 16) |= 0x10u;
        if (v26 < v10 && *v26 == 48)
        {
          v11 = v26 + 1;
          *(a2 + 1) = v11;
LABEL_72:
          v31 = 0;
          if (v11 >= v10 || (v27 = *v11, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
            if (!result)
            {
              return result;
            }

            v27 = v31;
            v28 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v28 = (v11 + 1);
            *(a2 + 1) = v28;
          }

          *(this + 56) = v27 != 0;
          v20 = *(this + 16) | 0x20;
          *(this + 16) = v20;
          if (v10 - v28 >= 2 && *v28 == 130 && v28[1] == 16)
          {
            *(a2 + 1) = v28 + 2;
            goto LABEL_81;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v19 = *(a2 + 1);
      v18 = *(a2 + 2);
      goto LABEL_50;
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

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
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
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 64) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 56), a2, a4);
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
  v10 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::ByteSize(awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_57;
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

LABEL_24:
    v13 = *(this + 3);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v2 = *(this + 16);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v3 += v18 + v14 + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v11 = *(this + 8);
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
  if ((v2 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v2 & 0x10) != 0)
  {
LABEL_33:
    v19 = *(this + 9);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v20 = 2;
    }

    v3 += v20;
  }

LABEL_37:
  v4 = ((v2 >> 4) & 2) + v3;
  if ((v2 & 0x40) != 0)
  {
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
      v2 = *(this + 16);
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

  if ((v2 & 0x80) != 0)
  {
    v27 = *(this + 6);
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
  }

LABEL_57:
  *(this + 15) = v4;
  return v4;
}

void awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::CopyFrom(awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *this, const awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDisconnectionResult::Swap(uint64_t this, awd::metrics::BluetoothLeSessionDeviceDisconnectionResult *a2)
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
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LOBYTE(v5) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    LODWORD(v7) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v7;
    LODWORD(v7) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v7;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDiscoverServices::SharedCtor(uint64_t this)
{
  *(this + 80) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 32) = 0;
  *(this + 24) = v1;
  *(this + 36) = 0;
  *(this + 64) = v1;
  *(this + 72) = v1;
  return this;
}

awd::metrics::BluetoothLeSessionDeviceDiscoverServices *awd::metrics::BluetoothLeSessionDeviceDiscoverServices::BluetoothLeSessionDeviceDiscoverServices(awd::metrics::BluetoothLeSessionDeviceDiscoverServices *this, const awd::metrics::BluetoothLeSessionDeviceDiscoverServices *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *this = &unk_2A1D4AC20;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 36) = 0;
  *(this + 8) = v3;
  *(this + 9) = v3;
  awd::metrics::BluetoothLeSessionDeviceDiscoverServices::MergeFrom(this, a2);
  return this;
}

void sub_29636062C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

std::string *awd::metrics::BluetoothLeSessionDeviceDiscoverServices::MergeFrom(awd::metrics::BluetoothLeSessionDeviceDiscoverServices *this, const awd::metrics::BluetoothLeSessionDeviceDiscoverServices *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 40), a2 + 40);
  LOBYTE(v5) = *(a2 + 84);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 84))
  {
    v6 = *(a2 + 1);
    *(this + 21) |= 1u;
    *(this + 1) = v6;
    v5 = *(a2 + 21);
  }

  v7 = MEMORY[0x29EDC9758];
  if ((v5 & 2) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 21) |= 2u;
    v9 = *(this + 2);
    if (v9 == v7)
    {
      operator new();
    }

    result = std::string::operator=(v9, v8);
    v5 = *(a2 + 21);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 8);
  *(this + 21) |= 4u;
  *(this + 8) = v10;
  v5 = *(a2 + 21);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v13 = *(a2 + 36);
    *(this + 21) |= 0x20u;
    *(this + 36) = v13;
    v5 = *(a2 + 21);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_17:
  v11 = *(a2 + 3);
  *(this + 21) |= 8u;
  v12 = *(this + 3);
  if (v12 == v7)
  {
    operator new();
  }

  result = std::string::operator=(v12, v11);
  v5 = *(a2 + 21);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  v14 = *(a2 + 8);
  *(this + 21) |= 0x40u;
  v15 = *(this + 8);
  if (v15 == v7)
  {
    operator new();
  }

  result = std::string::operator=(v15, v14);
  if ((*(a2 + 21) & 0x80) != 0)
  {
LABEL_24:
    v16 = *(a2 + 9);
    *(this + 21) |= 0x80u;
    v17 = *(this + 9);
    if (v17 == v7)
    {
      operator new();
    }

    return std::string::operator=(v17, v16);
  }

  return result;
}

void sub_296360888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeSessionDeviceDiscoverServices::~BluetoothLeSessionDeviceDiscoverServices(awd::metrics::BluetoothLeSessionDeviceDiscoverServices *this)
{
  *this = &unk_2A1D4AC20;
  v2 = (this + 40);
  awd::metrics::BluetoothLeSessionDeviceDiscoverServices::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothLeSessionDeviceDiscoverServices::~BluetoothLeSessionDeviceDiscoverServices(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothLeSessionDeviceDiscoverServices::SharedDtor(void *this)
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

  v5 = v1[3];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[8];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[9];
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

uint64_t awd::metrics::BluetoothLeSessionDeviceDiscoverServices::default_instance(awd::metrics::BluetoothLeSessionDeviceDiscoverServices *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeSessionDeviceDiscoverServices::default_instance_;
  if (!awd::metrics::BluetoothLeSessionDeviceDiscoverServices::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeSessionDeviceDiscoverServices::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDiscoverServices::Clear(awd::metrics::BluetoothLeSessionDeviceDiscoverServices *this)
{
  v2 = *(this + 84);
  if (v2)
  {
    *(this + 1) = 0;
    v3 = MEMORY[0x29EDC9758];
    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
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

    *(this + 8) = 0;
    if ((*(this + 84) & 8) != 0)
    {
      v5 = *(this + 3);
      if (v5 != v3)
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

    *(this + 36) = 0;
    if ((*(this + 84) & 0x40) != 0)
    {
      v6 = *(this + 8);
      if (v6 != v3)
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

    if ((*(this + 84) & 0x80) != 0)
    {
      v7 = *(this + 9);
      if (v7 != v3)
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
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  *(this + 21) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDiscoverServices::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
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
          if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v6 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v6;
            *(a2 + 1) = v5 + 1;
            if (!v6)
            {
              return 1;
            }
          }

          v7 = v6 >> 3;
          v8 = v6 & 7;
          if (v6 >> 3 <= 4)
          {
            break;
          }

          if (v6 >> 3 > 0xFF)
          {
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

            v19 = *(v3 + 84);
LABEL_83:
            *(v3 + 84) = v19 | 0x40;
            if (*(v3 + 64) == v4)
            {
              operator new();
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!this)
            {
              return this;
            }

            v34 = *(a2 + 1);
            if (*(a2 + 4) - v34 >= 2 && *v34 == 138 && v34[1] == 16)
            {
              *(a2 + 1) = v34 + 2;
LABEL_90:
              *(v3 + 84) |= 0x80u;
              if (*(v3 + 72) == v4)
              {
                operator new();
              }

              this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
              if (!this)
              {
                return this;
              }

              if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                this = 1;
                *(a2 + 36) = 1;
                return this;
              }
            }
          }

          else
          {
            if (v7 != 5)
            {
              if (v7 == 6 && (v6 & 7) == 0)
              {
                v11 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_74;
              }

              goto LABEL_35;
            }

            if (v8 != 2)
            {
              goto LABEL_35;
            }

LABEL_64:
            v24 = *(v3 + 52);
            v25 = *(v3 + 48);
            if (v25 >= v24)
            {
              if (v24 == *(v3 + 56))
              {
                this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 40));
                v24 = *(v3 + 52);
              }

              *(v3 + 52) = v24 + 1;
              v28 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
              v29 = *(v3 + 40);
              v30 = *(v3 + 48);
              *(v3 + 48) = v30 + 1;
              *(v29 + 8 * v30) = v28;
            }

            else
            {
              v26 = *(v3 + 40);
              *(v3 + 48) = v25 + 1;
              v27 = *(v26 + 8 * v25);
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!this)
            {
              return this;
            }

            v23 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v23 < v10)
            {
              v31 = *v23;
              if (v31 == 42)
              {
                goto LABEL_63;
              }

              if (v31 == 48)
              {
                v11 = v23 + 1;
                *(a2 + 1) = v11;
LABEL_74:
                v35 = 0;
                if (v11 >= v10 || (v32 = *v11, (v32 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
                  if (!this)
                  {
                    return this;
                  }

                  v32 = v35;
                  v33 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  v33 = (v11 + 1);
                  *(a2 + 1) = v33;
                }

                *(v3 + 36) = v32 != 0;
                v19 = *(v3 + 84) | 0x20;
                *(v3 + 84) = v19;
                if (v10 - v33 >= 2 && *v33 == 130 && v33[1] == 16)
                {
                  *(a2 + 1) = v33 + 2;
                  goto LABEL_83;
                }
              }
            }
          }
        }

        if (v6 >> 3 > 2)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((v6 & 7) != 0)
          {
            goto LABEL_35;
          }

          v14 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v14 >= v13 || (v15 = *v14, v15 < 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
            if (!this)
            {
              return this;
            }

            v16 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(v3 + 8) = v15;
            v16 = v14 + 1;
            *(a2 + 1) = v16;
          }

          v9 = *(v3 + 84) | 1;
          *(v3 + 84) = v9;
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

          v9 = *(v3 + 84);
LABEL_44:
          *(v3 + 84) = v9 | 2;
          if (*(v3 + 16) == v4)
          {
            operator new();
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v20 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v20 < v17 && *v20 == 24)
          {
            v18 = v20 + 1;
            *(a2 + 1) = v18;
LABEL_50:
            if (v18 >= v17 || (v21 = *v18, v21 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 32));
              if (!this)
              {
                return this;
              }

              v22 = *(a2 + 1);
              v17 = *(a2 + 2);
            }

            else
            {
              *(v3 + 32) = v21;
              v22 = v18 + 1;
              *(a2 + 1) = v22;
            }

            v12 = *(v3 + 84) | 4;
            *(v3 + 84) = v12;
            if (v22 < v17 && *v22 == 34)
            {
              *(a2 + 1) = v22 + 1;
              goto LABEL_58;
            }
          }
        }
      }

      if (v7 == 3)
      {
        break;
      }

      if (v7 != 4 || v8 != 2)
      {
        goto LABEL_35;
      }

      v12 = *(v3 + 84);
LABEL_58:
      *(v3 + 84) = v12 | 8;
      if (*(v3 + 24) == v4)
      {
        operator new();
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!this)
      {
        return this;
      }

      v23 = *(a2 + 1);
      if (v23 < *(a2 + 2) && *v23 == 42)
      {
LABEL_63:
        *(a2 + 1) = v23 + 1;
        goto LABEL_64;
      }
    }

    if ((v6 & 7) == 0)
    {
      v18 = *(a2 + 1);
      v17 = *(a2 + 2);
      goto LABEL_50;
    }

LABEL_35:
    if (v8 == 4)
    {
      return 1;
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDiscoverServices::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  if ((*(v5 + 84) & 8) != 0)
  {
LABEL_5:
    v7 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_6:
  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v5 + 40) + 8 * v8);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v8;
    }

    while (v8 < *(v5 + 48));
  }

  v10 = *(v5 + 84);
  if ((v10 & 0x20) == 0)
  {
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    v12 = *(v5 + 64);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 84) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 36), a2, a4);
  v10 = *(v5 + 84);
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v10 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v13 = *(v5 + 72);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDiscoverServices::ByteSize(awd::metrics::BluetoothLeSessionDeviceDiscoverServices *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_52;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 21);
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
    v2 = *(this + 21);
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
    v11 = *(this + 8);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 21);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
    if ((v2 & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_23:
    v13 = *(this + 3);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v2 = *(this + 21);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v3 += v18 + v14 + 1;
    goto LABEL_32;
  }

  if ((v2 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_32:
  v4 = ((v2 >> 4) & 2) + v3;
  if ((v2 & 0x40) != 0)
  {
    v19 = *(this + 8);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v2 = *(this + 21);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 += v24 + v20 + 2;
  }

  if ((v2 & 0x80) != 0)
  {
    v25 = *(this + 9);
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

    v4 += v30 + v26 + 2;
  }

LABEL_52:
  v31 = *(this + 12);
  v32 = (v31 + v4);
  if (v31 >= 1)
  {
    for (i = 0; i < v31; ++i)
    {
      v34 = *(*(this + 5) + 8 * i);
      v35 = *(v34 + 23);
      v36 = v35;
      v37 = *(v34 + 8);
      if ((v35 & 0x80u) == 0)
      {
        v38 = *(v34 + 23);
      }

      else
      {
        v38 = v37;
      }

      if (v38 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
        v35 = *(v34 + 23);
        v37 = *(v34 + 8);
        v31 = *(this + 12);
        v36 = *(v34 + 23);
      }

      else
      {
        v39 = 1;
      }

      if (v36 < 0)
      {
        v35 = v37;
      }

      v32 = (v39 + v32 + v35);
    }
  }

  *(this + 20) = v32;
  return v32;
}

std::string *awd::metrics::BluetoothLeSessionDeviceDiscoverServices::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeSessionDeviceDiscoverServices *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeSessionDeviceDiscoverServices::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BluetoothLeSessionDeviceDiscoverServices::MergeFrom(this, lpsrc);
}

std::string *awd::metrics::BluetoothLeSessionDeviceDiscoverServices::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    return awd::metrics::BluetoothLeSessionDeviceDiscoverServices::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeSessionDeviceDiscoverServices::Swap(uint64_t this, awd::metrics::BluetoothLeSessionDeviceDiscoverServices *a2)
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
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v8 = *(v3 + 36);
    *(v3 + 36) = *(a2 + 36);
    *(a2 + 36) = v8;
    v9 = *(v3 + 64);
    *(v3 + 64) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(v3 + 72);
    *(v3 + 72) = *(a2 + 9);
    *(a2 + 9) = v10;
    LODWORD(v10) = *(v3 + 84);
    *(v3 + 84) = *(a2 + 21);
    *(a2 + 21) = v10;
    LODWORD(v10) = *(v3 + 80);
    *(v3 + 80) = *(a2 + 20);
    *(a2 + 20) = v10;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeDeviceServicesDiscovered::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 68) = 0;
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 64) = 0;
  *(this + 48) = v1;
  *(this + 56) = v1;
  return this;
}

awd::metrics::BluetoothLeDeviceServicesDiscovered *awd::metrics::BluetoothLeDeviceServicesDiscovered::BluetoothLeDeviceServicesDiscovered(awd::metrics::BluetoothLeDeviceServicesDiscovered *this, const awd::metrics::BluetoothLeDeviceServicesDiscovered *a2)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 68) = 0;
  *this = &unk_2A1D4AC98;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 64) = 0;
  *(this + 6) = v3;
  *(this + 7) = v3;
  awd::metrics::BluetoothLeDeviceServicesDiscovered::MergeFrom(this, a2);
  return this;
}

void sub_296361728(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

std::string *awd::metrics::BluetoothLeDeviceServicesDiscovered::MergeFrom(awd::metrics::BluetoothLeDeviceServicesDiscovered *this, const awd::metrics::BluetoothLeDeviceServicesDiscovered *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 24), a2 + 24);
  LOBYTE(v5) = *(a2 + 72);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 72))
  {
    v6 = *(a2 + 1);
    *(this + 18) |= 1u;
    *(this + 1) = v6;
    v5 = *(a2 + 18);
  }

  v7 = MEMORY[0x29EDC9758];
  if ((v5 & 2) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 64);
    *(this + 18) |= 8u;
    *(this + 64) = v10;
    v5 = *(a2 + 18);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v8 = *(a2 + 2);
  *(this + 18) |= 2u;
  v9 = *(this + 2);
  if (v9 == v7)
  {
    operator new();
  }

  result = std::string::operator=(v9, v8);
  v5 = *(a2 + 18);
  if ((v5 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  v11 = *(a2 + 6);
  *(this + 18) |= 0x10u;
  v12 = *(this + 6);
  if (v12 == v7)
  {
    operator new();
  }

  result = std::string::operator=(v12, v11);
  if ((*(a2 + 18) & 0x20) != 0)
  {
LABEL_18:
    v13 = *(a2 + 7);
    *(this + 18) |= 0x20u;
    v14 = *(this + 7);
    if (v14 == v7)
    {
      operator new();
    }

    return std::string::operator=(v14, v13);
  }

  return result;
}

void sub_296361910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeDeviceServicesDiscovered::~BluetoothLeDeviceServicesDiscovered(awd::metrics::BluetoothLeDeviceServicesDiscovered *this)
{
  *this = &unk_2A1D4AC98;
  v2 = (this + 24);
  awd::metrics::BluetoothLeDeviceServicesDiscovered::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothLeDeviceServicesDiscovered::~BluetoothLeDeviceServicesDiscovered(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeDeviceServicesDiscovered::SharedDtor(uint64_t this)
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

  v5 = *(v1 + 48);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 56);
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

uint64_t awd::metrics::BluetoothLeDeviceServicesDiscovered::default_instance(awd::metrics::BluetoothLeDeviceServicesDiscovered *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeDeviceServicesDiscovered::default_instance_;
  if (!awd::metrics::BluetoothLeDeviceServicesDiscovered::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeDeviceServicesDiscovered::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeDeviceServicesDiscovered::Clear(awd::metrics::BluetoothLeDeviceServicesDiscovered *this)
{
  v2 = *(this + 72);
  if (v2)
  {
    *(this + 1) = 0;
    v3 = MEMORY[0x29EDC9758];
    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
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

    *(this + 64) = 0;
    if ((*(this + 72) & 0x10) != 0)
    {
      v5 = *(this + 6);
      if (v5 != v3)
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

    if ((*(this + 72) & 0x20) != 0)
    {
      v6 = *(this + 7);
      if (v6 != v3)
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

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  *(this + 18) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothLeDeviceServicesDiscovered::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
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
          if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v6 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v6;
            *(a2 + 1) = v5 + 1;
            if (!v6)
            {
              return 1;
            }
          }

          v7 = v6 >> 3;
          v8 = v6 & 7;
          if (v6 >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if ((v6 & 7) == 0)
            {
              v14 = *(a2 + 1);
              v13 = *(a2 + 2);
              goto LABEL_52;
            }

            goto LABEL_27;
          }

          if (v7 != 256)
          {
            if (v7 == 257 && v8 == 2)
            {
              goto LABEL_68;
            }

            goto LABEL_27;
          }

          if (v8 != 2)
          {
            goto LABEL_27;
          }

          v16 = *(v3 + 72);
LABEL_61:
          *(v3 + 72) = v16 | 0x10;
          if (*(v3 + 48) == v4)
          {
            operator new();
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v28 = *(a2 + 1);
          if (*(a2 + 4) - v28 >= 2 && *v28 == 138 && v28[1] == 16)
          {
            *(a2 + 1) = v28 + 2;
LABEL_68:
            *(v3 + 72) |= 0x20u;
            if (*(v3 + 56) == v4)
            {
              operator new();
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!this)
            {
              return this;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              this = 1;
              *(a2 + 36) = 1;
              return this;
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((v6 & 7) != 0)
        {
          goto LABEL_27;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
          if (!this)
          {
            return this;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(v3 + 8) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v15 = *(v3 + 72) | 1;
        *(v3 + 72) = v15;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
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

      v15 = *(v3 + 72);
LABEL_36:
      *(v3 + 72) = v15 | 2;
      if (*(v3 + 16) == v4)
      {
        operator new();
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!this)
      {
        return this;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 26)
      {
        while (2)
        {
          *(a2 + 1) = v17 + 1;
LABEL_42:
          v18 = *(v3 + 36);
          v19 = *(v3 + 32);
          if (v19 >= v18)
          {
            if (v18 == *(v3 + 40))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24));
              v18 = *(v3 + 36);
            }

            *(v3 + 36) = v18 + 1;
            v22 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v23 = *(v3 + 24);
            v24 = *(v3 + 32);
            *(v3 + 32) = v24 + 1;
            *(v23 + 8 * v24) = v22;
          }

          else
          {
            v20 = *(v3 + 24);
            *(v3 + 32) = v19 + 1;
            v21 = *(v20 + 8 * v19);
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v17 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v17 < v13)
          {
            v25 = *v17;
            if (v25 == 26)
            {
              continue;
            }

            if (v25 == 32)
            {
              v14 = v17 + 1;
              *(a2 + 1) = v14;
LABEL_52:
              v29 = 0;
              if (v14 >= v13 || (v26 = *v14, (v26 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
                if (!this)
                {
                  return this;
                }

                v26 = v29;
                v27 = *(a2 + 1);
                v13 = *(a2 + 2);
              }

              else
              {
                v27 = (v14 + 1);
                *(a2 + 1) = v27;
              }

              *(v3 + 64) = v26 != 0;
              v16 = *(v3 + 72) | 8;
              *(v3 + 72) = v16;
              if (v13 - v27 >= 2 && *v27 == 130 && v27[1] == 16)
              {
                *(a2 + 1) = v27 + 2;
                goto LABEL_61;
              }
            }
          }

          break;
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_42;
    }

LABEL_27:
    if (v8 == 4)
    {
      return 1;
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::BluetoothLeDeviceServicesDiscovered::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v5 + 24) + 8 * v8);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v8;
    }

    while (v8 < *(v5 + 32));
  }

  v10 = *(v5 + 72);
  if ((v10 & 8) == 0)
  {
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v11 = *(v5 + 48);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 72) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_14;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 64), a2, a4);
  v10 = *(v5 + 72);
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if ((v10 & 0x20) == 0)
  {
    return this;
  }

LABEL_14:
  v12 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothLeDeviceServicesDiscovered::ByteSize(awd::metrics::BluetoothLeDeviceServicesDiscovered *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v2 = *(this + 18);
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
    goto LABEL_16;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 18);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v4 = ((v2 >> 2) & 2) + v3;
  if ((v2 & 0x10) != 0)
  {
    v11 = *(this + 6);
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
      v2 = *(this + 18);
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

    v4 += v16 + v12 + 2;
  }

  if ((v2 & 0x20) != 0)
  {
    v17 = *(this + 7);
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

    v4 += v22 + v18 + 2;
  }

LABEL_36:
  v23 = *(this + 8);
  v24 = (v23 + v4);
  if (v23 >= 1)
  {
    for (i = 0; i < v23; ++i)
    {
      v26 = *(*(this + 3) + 8 * i);
      v27 = *(v26 + 23);
      v28 = v27;
      v29 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v30 = *(v26 + 23);
      }

      else
      {
        v30 = v29;
      }

      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(v26 + 23);
        v29 = *(v26 + 8);
        v23 = *(this + 8);
        v28 = *(v26 + 23);
      }

      else
      {
        v31 = 1;
      }

      if (v28 < 0)
      {
        v27 = v29;
      }

      v24 = (v31 + v24 + v27);
    }
  }

  *(this + 17) = v24;
  return v24;
}

std::string *awd::metrics::BluetoothLeDeviceServicesDiscovered::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeDeviceServicesDiscovered *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeDeviceServicesDiscovered::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BluetoothLeDeviceServicesDiscovered::MergeFrom(this, lpsrc);
}

std::string *awd::metrics::BluetoothLeDeviceServicesDiscovered::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    return awd::metrics::BluetoothLeDeviceServicesDiscovered::MergeFrom(v4, a2);
  }

  return this;
}

awd::metrics::BluetoothLeDeviceServicesDiscovered *awd::metrics::BluetoothLeDeviceServicesDiscovered::Swap(awd::metrics::BluetoothLeDeviceServicesDiscovered *this, awd::metrics::BluetoothLeDeviceServicesDiscovered *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    v5 = *(this + 2);
    v6 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v6;
    *(a2 + 1) = v4;
    *(a2 + 2) = v5;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v7 = *(v3 + 64);
    *(v3 + 64) = *(a2 + 64);
    *(a2 + 64) = v7;
    v8 = *(v3 + 6);
    *(v3 + 6) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(v3 + 7);
    *(v3 + 7) = *(a2 + 7);
    *(a2 + 7) = v9;
    LODWORD(v9) = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v9;
    LODWORD(v9) = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v9;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeDevicePaired::SharedCtor(uint64_t this)
{
  *(this + 56) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 24) = MEMORY[0x29EDC9758];
  *(this + 32) = v1;
  *(this + 40) = v1;
  *(this + 48) = v1;
  return this;
}

awd::metrics::BluetoothLeDevicePaired *awd::metrics::BluetoothLeDevicePaired::BluetoothLeDevicePaired(awd::metrics::BluetoothLeDevicePaired *this, const awd::metrics::BluetoothLeDevicePaired *a2)
{
  *(this + 7) = 0;
  *this = &unk_2A1D4AD10;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = MEMORY[0x29EDC9758];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  awd::metrics::BluetoothLeDevicePaired::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeDevicePaired::MergeFrom(awd::metrics::BluetoothLeDevicePaired *this, const awd::metrics::BluetoothLeDevicePaired *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 60))
  {
    v7 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 15);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 15) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 15);
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 20);
    *(this + 15) |= 4u;
    *(this + 20) = v5;
    v4 = *(a2 + 15);
  }

LABEL_8:
  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 8) == 0)
  {
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = *(a2 + 4);
    *(this + 15) |= 0x10u;
    v12 = *(this + 4);
    if (v12 == v6)
    {
      operator new();
    }

    std::string::operator=(v12, v11);
    v4 = *(a2 + 15);
    if ((v4 & 0x20) == 0)
    {
LABEL_11:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v9 = *(a2 + 3);
  *(this + 15) |= 8u;
  v10 = *(this + 3);
  if (v10 == v6)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 15);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 5);
  *(this + 15) |= 0x20u;
  v14 = *(this + 5);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  if ((*(a2 + 15) & 0x40) != 0)
  {
LABEL_25:
    v15 = *(a2 + 6);
    *(this + 15) |= 0x40u;
    v16 = *(this + 6);
    if (v16 == v6)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
  }
}

void sub_2963627A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeDevicePaired::~BluetoothLeDevicePaired(awd::metrics::BluetoothLeDevicePaired *this)
{
  *this = &unk_2A1D4AD10;
  awd::metrics::BluetoothLeDevicePaired::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AD10;
  awd::metrics::BluetoothLeDevicePaired::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AD10;
  awd::metrics::BluetoothLeDevicePaired::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothLeDevicePaired::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[3];
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

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
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

uint64_t awd::metrics::BluetoothLeDevicePaired::default_instance(awd::metrics::BluetoothLeDevicePaired *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeDevicePaired::default_instance_;
  if (!awd::metrics::BluetoothLeDevicePaired::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeDevicePaired::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeDevicePaired::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 8) != 0)
    {
      v3 = *(this + 24);
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

    if ((*(this + 60) & 0x10) != 0)
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

    if ((*(this + 60) & 0x20) != 0)
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

    if ((*(this + 60) & 0x40) != 0)
    {
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
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeDevicePaired::MergePartialFromCodedStream(awd::metrics::BluetoothLeDevicePaired *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

          *(this + 15) |= 1u;
          if (v13 < v9 && *v13 == 16)
          {
            v15 = v13 + 1;
            *(a2 + 1) = v15;
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

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_48;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_31;
          }

          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_40:
          if (v15 >= v9 || (v16 = *v15, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = v15 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 15) |= 2u;
          if (v17 < v9 && *v17 == 24)
          {
            v10 = v17 + 1;
            *(a2 + 1) = v10;
LABEL_48:
            v24 = 0;
            if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
              if (!result)
              {
                return result;
              }

              v18 = v24;
              v19 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v19 = v10 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 20) = v18 != 0;
            v14 = *(this + 15) | 4;
            *(this + 15) = v14;
            if (v19 < v9 && *v19 == 34)
            {
              *(a2 + 1) = v19 + 1;
              goto LABEL_56;
            }
          }
        }
      }

      if (TagFallback >> 3 > 0xFF)
      {
        if (v7 == 256)
        {
          if (v8 == 2)
          {
            goto LABEL_69;
          }
        }

        else if (v7 == 257 && v8 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_31;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_31;
      }

      v14 = *(this + 15);
LABEL_56:
      *(this + 15) = v14 | 8;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v20 = *(a2 + 1);
      if (v20 < *(a2 + 2) && *v20 == 42)
      {
        *(a2 + 1) = v20 + 1;
LABEL_62:
        *(this + 15) |= 0x10u;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        if (*(a2 + 4) - v21 >= 2 && *v21 == 130 && v21[1] == 16)
        {
          *(a2 + 1) = v21 + 2;
LABEL_69:
          *(this + 15) |= 0x20u;
          if (*(this + 5) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          if (*(a2 + 4) - v22 >= 2 && *v22 == 138 && v22[1] == 16)
          {
            *(a2 + 1) = v22 + 2;
LABEL_76:
            *(this + 15) |= 0x40u;
            if (*(this + 6) == v4)
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
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
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

uint64_t awd::metrics::BluetoothLeDevicePaired::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
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
  v7 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 60) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  v8 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 60);
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
  v10 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}