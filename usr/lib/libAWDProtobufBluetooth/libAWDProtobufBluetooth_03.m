uint64_t awd::metrics::BluetoothLeDevicePaired::ByteSize(awd::metrics::BluetoothLeDevicePaired *this)
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

  v5 = *(this + 4);
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
LABEL_11:
  v4 = ((v2 >> 1) & 2) + v3;
  if ((v2 & 8) != 0)
  {
    v7 = *(this + 3);
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
      v2 = *(this + 15);
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

    v4 = (v4 + v12 + v8 + 1);
    if ((v2 & 0x10) == 0)
    {
LABEL_13:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v13 = *(this + 4);
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

  v4 = (v4 + v18 + v14 + 1);
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

LABEL_34:
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
  if ((v2 & 0x40) != 0)
  {
LABEL_43:
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

void awd::metrics::BluetoothLeDevicePaired::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeDevicePaired *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeDevicePaired::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeDevicePaired::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeDevicePaired::CopyFrom(awd::metrics::BluetoothLeDevicePaired *this, const awd::metrics::BluetoothLeDevicePaired *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeDevicePaired::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeDevicePaired::Swap(uint64_t this, awd::metrics::BluetoothLeDevicePaired *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v6) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v6;
    LODWORD(v6) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v6;
  }

  return this;
}

void *awd::metrics::BluetoothLeDeviceUnpaired::SharedCtor(void *this)
{
  this[5] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  return this;
}

awd::metrics::BluetoothLeDeviceUnpaired *awd::metrics::BluetoothLeDeviceUnpaired::BluetoothLeDeviceUnpaired(awd::metrics::BluetoothLeDeviceUnpaired *this, const awd::metrics::BluetoothLeDeviceUnpaired *a2)
{
  *this = &unk_2A1D4AD88;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = 0;
  awd::metrics::BluetoothLeDeviceUnpaired::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeDeviceUnpaired::MergeFrom(awd::metrics::BluetoothLeDeviceUnpaired *this, const awd::metrics::BluetoothLeDeviceUnpaired *a2)
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

void sub_296363688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeDeviceUnpaired::~BluetoothLeDeviceUnpaired(awd::metrics::BluetoothLeDeviceUnpaired *this)
{
  *this = &unk_2A1D4AD88;
  awd::metrics::BluetoothLeDeviceUnpaired::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AD88;
  awd::metrics::BluetoothLeDeviceUnpaired::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AD88;
  awd::metrics::BluetoothLeDeviceUnpaired::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::default_instance(awd::metrics::BluetoothLeDeviceUnpaired *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeDeviceUnpaired::default_instance_;
  if (!awd::metrics::BluetoothLeDeviceUnpaired::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeDeviceUnpaired::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::MergePartialFromCodedStream(awd::metrics::BluetoothLeDeviceUnpaired *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
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

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::ByteSize(awd::metrics::BluetoothLeDeviceUnpaired *this)
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

void awd::metrics::BluetoothLeDeviceUnpaired::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeDeviceUnpaired *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeDeviceUnpaired::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeDeviceUnpaired::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeDeviceUnpaired::CopyFrom(awd::metrics::BluetoothLeDeviceUnpaired *this, const awd::metrics::BluetoothLeDeviceUnpaired *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeDeviceUnpaired::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeDeviceUnpaired::Swap(uint64_t this, awd::metrics::BluetoothLeDeviceUnpaired *a2)
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

uint64_t awd::metrics::BluetoothHwFailure::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 32) = 0;
  *(this + 24) = v1;
  return this;
}

awd::metrics::BluetoothHwFailure *awd::metrics::BluetoothHwFailure::BluetoothHwFailure(awd::metrics::BluetoothHwFailure *this, const awd::metrics::BluetoothHwFailure *a2)
{
  *this = &unk_2A1D4AE00;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = MEMORY[0x29EDC9758];
  *(this + 4) = 0;
  *(this + 2) = v3;
  *(this + 10) = 0;
  awd::metrics::BluetoothHwFailure::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothHwFailure::MergeFrom(awd::metrics::BluetoothHwFailure *this, const awd::metrics::BluetoothHwFailure *a2)
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

    v6 = MEMORY[0x29EDC9758];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 10) |= 2u;
      v8 = *(this + 2);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 10);
      if ((v4 & 4) == 0)
      {
LABEL_8:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(a2 + 8);
    *(this + 10) |= 4u;
    *(this + 8) = v9;
    if ((*(a2 + 10) & 8) == 0)
    {
      return;
    }

LABEL_14:
    v10 = *(a2 + 3);
    *(this + 10) |= 8u;
    v11 = *(this + 3);
    if (v11 == v6)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
  }
}

void sub_29636422C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothHwFailure::~BluetoothHwFailure(awd::metrics::BluetoothHwFailure *this)
{
  *this = &unk_2A1D4AE00;
  awd::metrics::BluetoothHwFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AE00;
  awd::metrics::BluetoothHwFailure::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AE00;
  awd::metrics::BluetoothHwFailure::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothHwFailure::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothHwFailure::default_instance(awd::metrics::BluetoothHwFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothHwFailure::default_instance_;
  if (!awd::metrics::BluetoothHwFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothHwFailure::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothHwFailure::Clear(uint64_t this)
{
  v1 = *(this + 40);
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

uint64_t awd::metrics::BluetoothHwFailure::MergePartialFromCodedStream(awd::metrics::BluetoothHwFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
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

          v9 = *(this + 10) | 1;
          *(this + 10) = v9;
          if (v14 < v11 && *v14 == 18)
          {
            *(a2 + 1) = v14 + 1;
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
          v15 = *(a2 + 2);
          if (v17 < v15 && *v17 == 24)
          {
            v16 = v17 + 1;
            *(a2 + 1) = v16;
LABEL_36:
            if (v16 >= v15 || (v18 = *v16, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v18;
              v19 = v16 + 1;
              *(a2 + 1) = v19;
            }

            v10 = *(this + 10) | 4;
            *(this + 10) = v10;
            if (v19 < v15 && *v19 == 34)
            {
              *(a2 + 1) = v19 + 1;
              goto LABEL_44;
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
        goto LABEL_21;
      }

      v10 = *(this + 10);
LABEL_44:
      *(this + 10) = v10 | 8;
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

    if ((TagFallback & 7) == 0)
    {
      v16 = *(a2 + 1);
      v15 = *(a2 + 2);
      goto LABEL_36;
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

uint64_t awd::metrics::BluetoothHwFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothHwFailure::ByteSize(awd::metrics::BluetoothHwFailure *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v10 = *(this + 8);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 10);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_23:
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

    v3 = (v3 + v17 + v13 + 1);
  }

LABEL_32:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::BluetoothHwFailure::CheckTypeAndMergeFrom(awd::metrics::BluetoothHwFailure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothHwFailure::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothHwFailure::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothHwFailure::CopyFrom(awd::metrics::BluetoothHwFailure *this, const awd::metrics::BluetoothHwFailure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothHwFailure::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothHwFailure::Swap(uint64_t this, awd::metrics::BluetoothHwFailure *a2)
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

uint64_t awd::metrics::BluetoothMagnetConnection::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothMagnetConnection *awd::metrics::BluetoothMagnetConnection::BluetoothMagnetConnection(awd::metrics::BluetoothMagnetConnection *this, const awd::metrics::BluetoothMagnetConnection *a2)
{
  *this = &unk_2A1D4AE78;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothMagnetConnection::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetConnection::MergeFrom(awd::metrics::BluetoothMagnetConnection *this, const awd::metrics::BluetoothMagnetConnection *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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

    v7 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 2);
    *(this + 8) |= 4u;
    *(this + 2) = v5;
  }
}

void sub_296364C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetConnection::~BluetoothMagnetConnection(awd::metrics::BluetoothMagnetConnection *this)
{
  *this = &unk_2A1D4AE78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AE78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AE78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetConnection::default_instance(awd::metrics::BluetoothMagnetConnection *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetConnection::default_instance_;
  if (!awd::metrics::BluetoothMagnetConnection::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetConnection::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetConnection::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetConnection::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetConnection *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
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

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
          if (v16 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
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

uint64_t awd::metrics::BluetoothMagnetConnection::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetConnection::ByteSize(awd::metrics::BluetoothMagnetConnection *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (*(this + 32))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v4 = *(this + 6);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    goto LABEL_11;
  }

  v3 = 0;
  if ((*(this + 32) & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_13:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::BluetoothMagnetConnection::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetConnection *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothMagnetConnection::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetConnection::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetConnection::CopyFrom(awd::metrics::BluetoothMagnetConnection *this, const awd::metrics::BluetoothMagnetConnection *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetConnection::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetConnection::Swap(uint64_t this, awd::metrics::BluetoothMagnetConnection *a2)
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

double awd::metrics::BluetoothMagnetDisconnection::SharedCtor(awd::metrics::BluetoothMagnetDisconnection *this)
{
  *(this + 9) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothMagnetDisconnection *awd::metrics::BluetoothMagnetDisconnection::BluetoothMagnetDisconnection(awd::metrics::BluetoothMagnetDisconnection *this, const awd::metrics::BluetoothMagnetDisconnection *a2)
{
  *this = &unk_2A1D4AEF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  awd::metrics::BluetoothMagnetDisconnection::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetDisconnection::MergeFrom(awd::metrics::BluetoothMagnetDisconnection *this, const awd::metrics::BluetoothMagnetDisconnection *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
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

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 8);
  *(this + 19) |= 2u;
  *(this + 8) = v8;
  v4 = *(a2 + 19);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 2);
  *(this + 19) |= 4u;
  *(this + 2) = v9;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 3);
  *(this + 19) |= 8u;
  *(this + 3) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 6);
    *(this + 19) |= 0x20u;
    *(this + 6) = v12;
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

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 5);
  *(this + 19) |= 0x10u;
  *(this + 5) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 9);
  *(this + 19) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 7);
    *(this + 19) |= 0x80u;
    *(this + 7) = v5;
    v4 = *(a2 + 19);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 8);
    *(this + 19) |= 0x100u;
    *(this + 8) = v6;
  }
}

void sub_296365488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetDisconnection::~BluetoothMagnetDisconnection(awd::metrics::BluetoothMagnetDisconnection *this)
{
  *this = &unk_2A1D4AEF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AEF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AEF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::default_instance(awd::metrics::BluetoothMagnetDisconnection *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetDisconnection::default_instance_;
  if (!awd::metrics::BluetoothMagnetDisconnection::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetDisconnection::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetDisconnection *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v6 != 3)
            {
              if (v6 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v15 = *(a2 + 1);
            v7 = *(a2 + 2);
LABEL_54:
            if (v15 >= v7 || (v21 = *v15, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v22 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v21;
              v22 = v15 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 19) |= 4u;
            if (v22 < v7 && *v22 == 32)
            {
              v10 = v22 + 1;
              *(a2 + 1) = v10;
LABEL_62:
              if (v10 >= v7 || (v23 = *v10, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v24 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v23;
                v24 = v10 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 19) |= 8u;
              if (v24 < v7 && *v24 == 40)
              {
                v17 = v24 + 1;
                *(a2 + 1) = v17;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v9 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
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

            *(this + 19) |= 1u;
            if (v14 < v7 && *v14 == 16)
            {
              v9 = v14 + 1;
              *(a2 + 1) = v9;
LABEL_46:
              if (v9 >= v7 || (v19 = *v9, v19 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v20 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v19;
                v20 = v9 + 1;
                *(a2 + 1) = v20;
              }

              *(this + 19) |= 2u;
              if (v20 < v7 && *v20 == 24)
              {
                v15 = v20 + 1;
                *(a2 + 1) = v15;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 != 5)
        {
          if (v6 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v11 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_70:
        if (v17 >= v7 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v25;
          v26 = v17 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 19) |= 0x10u;
        if (v26 < v7 && *v26 == 48)
        {
          v11 = v26 + 1;
          *(a2 + 1) = v11;
LABEL_78:
          if (v11 >= v7 || (v27 = *v11, v27 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v28 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v27;
            v28 = v11 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 19) |= 0x20u;
          if (v28 < v7 && *v28 == 56)
          {
            v16 = v28 + 1;
            *(a2 + 1) = v16;
LABEL_86:
            if (v16 >= v7 || (v29 = *v16, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v30 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v29;
              v30 = v16 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 19) |= 0x40u;
            if (v30 < v7 && *v30 == 64)
            {
              v18 = v30 + 1;
              *(a2 + 1) = v18;
              goto LABEL_94;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_86;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_94:
      if (v18 >= v7 || (v31 = *v18, v31 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 7) = v31;
        v32 = v18 + 1;
        *(a2 + 1) = v32;
      }

      *(this + 19) |= 0x80u;
      if (v32 < v7 && *v32 == 72)
      {
        v8 = v32 + 1;
        *(a2 + 1) = v8;
LABEL_102:
        if (v8 >= v7 || (v33 = *v8, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v33;
          v34 = v8 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 19) |= 0x100u;
        if (v34 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 9 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_37:
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

uint64_t awd::metrics::BluetoothMagnetDisconnection::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 56), a2, a4);
    if ((*(v5 + 76) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::ByteSize(awd::metrics::BluetoothMagnetDisconnection *this)
{
  v2 = *(this + 19);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 19);
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = *(this + 8);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_12:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 19);
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 19);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v2 = *(this + 19);
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  v2 = *(this + 19);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    if ((*(this + 19) & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  v7 = *(this + 9);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v8 = 2;
  }

  v3 = (v8 + v3);
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v2 & 0x100) != 0)
  {
LABEL_19:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
  }

LABEL_20:
  *(this + 18) = v3;
  return v3;
}

void awd::metrics::BluetoothMagnetDisconnection::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetDisconnection *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothMagnetDisconnection::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetDisconnection::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetDisconnection::CopyFrom(awd::metrics::BluetoothMagnetDisconnection *this, const awd::metrics::BluetoothMagnetDisconnection *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetDisconnection::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetDisconnection::Swap(uint64_t this, awd::metrics::BluetoothMagnetDisconnection *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
    v7 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v8;
    LODWORD(v8) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v8;
    LODWORD(v8) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v8;
  }

  return this;
}

double awd::metrics::BluetoothMagnetUpgrade::SharedCtor(awd::metrics::BluetoothMagnetUpgrade *this)
{
  *(this + 9) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothMagnetUpgrade *awd::metrics::BluetoothMagnetUpgrade::BluetoothMagnetUpgrade(awd::metrics::BluetoothMagnetUpgrade *this, const awd::metrics::BluetoothMagnetUpgrade *a2)
{
  *this = &unk_2A1D4AF68;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  awd::metrics::BluetoothMagnetUpgrade::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetUpgrade::MergeFrom(awd::metrics::BluetoothMagnetUpgrade *this, const awd::metrics::BluetoothMagnetUpgrade *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
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

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 8);
  *(this + 19) |= 2u;
  *(this + 8) = v8;
  v4 = *(a2 + 19);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 2);
  *(this + 19) |= 4u;
  *(this + 2) = v9;
  v4 = *(a2 + 19);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 3);
  *(this + 19) |= 8u;
  *(this + 3) = v10;
  v4 = *(a2 + 19);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 6);
    *(this + 19) |= 0x20u;
    *(this + 6) = v12;
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

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 5);
  *(this + 19) |= 0x10u;
  *(this + 5) = v11;
  v4 = *(a2 + 19);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 9);
  *(this + 19) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 19);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 7);
    *(this + 19) |= 0x80u;
    *(this + 7) = v5;
    v4 = *(a2 + 19);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 8);
    *(this + 19) |= 0x100u;
    *(this + 8) = v6;
  }
}

void sub_296366158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetUpgrade::~BluetoothMagnetUpgrade(awd::metrics::BluetoothMagnetUpgrade *this)
{
  *this = &unk_2A1D4AF68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AF68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AF68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::default_instance(awd::metrics::BluetoothMagnetUpgrade *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetUpgrade::default_instance_;
  if (!awd::metrics::BluetoothMagnetUpgrade::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetUpgrade::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
  }

  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetUpgrade *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v6 != 3)
            {
              if (v6 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v15 = *(a2 + 1);
            v7 = *(a2 + 2);
LABEL_54:
            if (v15 >= v7 || (v21 = *v15, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v22 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v21;
              v22 = v15 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 19) |= 4u;
            if (v22 < v7 && *v22 == 32)
            {
              v10 = v22 + 1;
              *(a2 + 1) = v10;
LABEL_62:
              if (v10 >= v7 || (v23 = *v10, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v24 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v23;
                v24 = v10 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 19) |= 8u;
              if (v24 < v7 && *v24 == 40)
              {
                v17 = v24 + 1;
                *(a2 + 1) = v17;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v9 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
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

            *(this + 19) |= 1u;
            if (v14 < v7 && *v14 == 16)
            {
              v9 = v14 + 1;
              *(a2 + 1) = v9;
LABEL_46:
              if (v9 >= v7 || (v19 = *v9, v19 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v20 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v19;
                v20 = v9 + 1;
                *(a2 + 1) = v20;
              }

              *(this + 19) |= 2u;
              if (v20 < v7 && *v20 == 24)
              {
                v15 = v20 + 1;
                *(a2 + 1) = v15;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 != 5)
        {
          if (v6 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v11 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_70:
        if (v17 >= v7 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v25;
          v26 = v17 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 19) |= 0x10u;
        if (v26 < v7 && *v26 == 48)
        {
          v11 = v26 + 1;
          *(a2 + 1) = v11;
LABEL_78:
          if (v11 >= v7 || (v27 = *v11, v27 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v28 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v27;
            v28 = v11 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 19) |= 0x20u;
          if (v28 < v7 && *v28 == 56)
          {
            v16 = v28 + 1;
            *(a2 + 1) = v16;
LABEL_86:
            if (v16 >= v7 || (v29 = *v16, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v30 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v29;
              v30 = v16 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 19) |= 0x40u;
            if (v30 < v7 && *v30 == 64)
            {
              v18 = v30 + 1;
              *(a2 + 1) = v18;
              goto LABEL_94;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_86;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_94:
      if (v18 >= v7 || (v31 = *v18, v31 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 7) = v31;
        v32 = v18 + 1;
        *(a2 + 1) = v32;
      }

      *(this + 19) |= 0x80u;
      if (v32 < v7 && *v32 == 72)
      {
        v8 = v32 + 1;
        *(a2 + 1) = v8;
LABEL_102:
        if (v8 >= v7 || (v33 = *v8, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v33;
          v34 = v8 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 19) |= 0x100u;
        if (v34 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 9 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_37:
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

uint64_t awd::metrics::BluetoothMagnetUpgrade::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 56), a2, a4);
    if ((*(v5 + 76) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::ByteSize(awd::metrics::BluetoothMagnetUpgrade *this)
{
  v2 = *(this + 19);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 19);
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = *(this + 8);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_12:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 19);
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 19);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v2 = *(this + 19);
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  v2 = *(this + 19);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    if ((*(this + 19) & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  v7 = *(this + 9);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v8 = 2;
  }

  v3 = (v8 + v3);
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v2 & 0x100) != 0)
  {
LABEL_19:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
  }

LABEL_20:
  *(this + 18) = v3;
  return v3;
}

void awd::metrics::BluetoothMagnetUpgrade::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetUpgrade *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothMagnetUpgrade::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetUpgrade::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetUpgrade::CopyFrom(awd::metrics::BluetoothMagnetUpgrade *this, const awd::metrics::BluetoothMagnetUpgrade *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetUpgrade::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetUpgrade::Swap(uint64_t this, awd::metrics::BluetoothMagnetUpgrade *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
    v7 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v8;
    LODWORD(v8) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v8;
    LODWORD(v8) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v8;
  }

  return this;
}

uint64_t awd::metrics::BluetoothMagnetGenericError::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothMagnetGenericError *awd::metrics::BluetoothMagnetGenericError::BluetoothMagnetGenericError(awd::metrics::BluetoothMagnetGenericError *this, const awd::metrics::BluetoothMagnetGenericError *a2)
{
  *this = &unk_2A1D4AFE0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothMagnetGenericError::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetGenericError::MergeFrom(awd::metrics::BluetoothMagnetGenericError *this, const awd::metrics::BluetoothMagnetGenericError *a2)
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
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 8) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 8);
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
    v8 = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = v8;
    if ((*(a2 + 8) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = v5;
  }
}

void sub_296366D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetGenericError::~BluetoothMagnetGenericError(awd::metrics::BluetoothMagnetGenericError *this)
{
  *this = &unk_2A1D4AFE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AFE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4AFE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetGenericError::default_instance(awd::metrics::BluetoothMagnetGenericError *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetGenericError::default_instance_;
  if (!awd::metrics::BluetoothMagnetGenericError::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetGenericError::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetGenericError::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetGenericError::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetGenericError *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 8) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        if (v8 >= v7 || (v14 = *v8, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v14;
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          if (v13 >= v7 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            if (v9 >= v7 || (v18 = *v9, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v18;
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 8) |= 8u;
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

uint64_t awd::metrics::BluetoothMagnetGenericError::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[8];
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
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetGenericError::ByteSize(awd::metrics::BluetoothMagnetGenericError *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_22;
  }

  if (*(this + 32))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v6 = *(this + 5);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_18:
    v8 = *(this + 6);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
  }

LABEL_22:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::BluetoothMagnetGenericError::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetGenericError *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothMagnetGenericError::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetGenericError::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetGenericError::CopyFrom(awd::metrics::BluetoothMagnetGenericError *this, const awd::metrics::BluetoothMagnetGenericError *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetGenericError::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetGenericError::Swap(uint64_t this, awd::metrics::BluetoothMagnetGenericError *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return this;
}

double awd::metrics::BluetoothMagnetState::SharedCtor(awd::metrics::BluetoothMagnetState *this)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

awd::metrics::BluetoothMagnetState *awd::metrics::BluetoothMagnetState::BluetoothMagnetState(awd::metrics::BluetoothMagnetState *this, const awd::metrics::BluetoothMagnetState *a2)
{
  *this = &unk_2A1D4B058;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  awd::metrics::BluetoothMagnetState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetState::MergeFrom(awd::metrics::BluetoothMagnetState *this, const awd::metrics::BluetoothMagnetState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 1);
    *(this + 20) |= 1u;
    *(this + 1) = v8;
    v4 = *(a2 + 20);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 4);
  *(this + 20) |= 2u;
  *(this + 4) = v9;
  v4 = *(a2 + 20);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 20);
  *(this + 20) |= 4u;
  *(this + 20) = v10;
  v4 = *(a2 + 20);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 3);
  *(this + 20) |= 8u;
  *(this + 3) = v11;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 5);
    *(this + 20) |= 0x20u;
    *(this + 5) = v13;
    v4 = *(a2 + 20);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v12 = *(a2 + 4);
  *(this + 20) |= 0x10u;
  *(this + 4) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v14 = *(a2 + 18);
  *(this + 20) |= 0x40u;
  *(this + 18) = v14;
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 6);
    *(this + 20) |= 0x80u;
    *(this + 6) = v5;
    v4 = *(a2 + 20);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 7);
      *(this + 20) |= 0x100u;
      *(this + 7) = v6;
      v4 = *(a2 + 20);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 8);
      *(this + 20) |= 0x200u;
      *(this + 8) = v7;
    }
  }
}

void sub_296367694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetState::~BluetoothMagnetState(awd::metrics::BluetoothMagnetState *this)
{
  *this = &unk_2A1D4B058;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B058;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B058;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetState::default_instance(awd::metrics::BluetoothMagnetState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetState::default_instance_;
  if (!awd::metrics::BluetoothMagnetState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetState::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 72) = 0;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  *(this + 80) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetState::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v6 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v15 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_81;
              }
            }

            else if (v6 == 7 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_89;
            }
          }

          else if (v6 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_97;
            }
          }

          else if (v6 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_105;
            }
          }

          else if (v6 == 10 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
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

        *(this + 20) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v10 = v14 + 1;
          *(a2 + 1) = v10;
LABEL_49:
          if (v10 >= v7 || (v20 = *v10, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v20;
            v21 = v10 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 20) |= 2u;
          if (v21 < v7 && *v21 == 24)
          {
            v16 = v21 + 1;
            *(a2 + 1) = v16;
LABEL_57:
            v39 = 0;
            if (v16 >= v7 || (v22 = *v16, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v22 = v39;
              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v23 = v16 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 20) = v22 != 0;
            *(this + 20) |= 4u;
            if (v23 < v7 && *v23 == 32)
            {
              v18 = v23 + 1;
              *(a2 + 1) = v18;
              goto LABEL_65;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_57;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_65:
      if (v18 >= v7 || (v24 = *v18, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v24;
        v25 = v18 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 20) |= 8u;
      if (v25 < v7 && *v25 == 40)
      {
        v8 = v25 + 1;
        *(a2 + 1) = v8;
LABEL_73:
        if (v8 >= v7 || (v26 = *v8, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
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
          v27 = v8 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 20) |= 0x10u;
        if (v27 < v7 && *v27 == 48)
        {
          v15 = v27 + 1;
          *(a2 + 1) = v15;
LABEL_81:
          if (v15 >= v7 || (v28 = *v15, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
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
            v29 = v15 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 20) |= 0x20u;
          if (v29 < v7 && *v29 == 56)
          {
            v11 = v29 + 1;
            *(a2 + 1) = v11;
LABEL_89:
            if (v11 >= v7 || (v30 = *v11, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
              if (!result)
              {
                return result;
              }

              v31 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 18) = v30;
              v31 = v11 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 20) |= 0x40u;
            if (v31 < v7 && *v31 == 64)
            {
              v17 = v31 + 1;
              *(a2 + 1) = v17;
LABEL_97:
              if (v17 >= v7 || (v32 = *v17, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v33 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v32;
                v33 = v17 + 1;
                *(a2 + 1) = v33;
              }

              *(this + 20) |= 0x80u;
              if (v33 < v7 && *v33 == 72)
              {
                v19 = v33 + 1;
                *(a2 + 1) = v19;
LABEL_105:
                if (v19 >= v7 || (v34 = *v19, v34 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 7) = v34;
                  v35 = v19 + 1;
                  *(a2 + 1) = v35;
                }

                *(this + 20) |= 0x100u;
                if (v35 < v7 && *v35 == 80)
                {
                  v9 = v35 + 1;
                  *(a2 + 1) = v9;
LABEL_113:
                  v40 = 0;
                  if (v9 >= v7 || (v36 = *v9, (v36 & 0x8000000000000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v40);
                    if (!result)
                    {
                      return result;
                    }

                    v36 = v40;
                    v37 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    v37 = v9 + 1;
                    *(a2 + 1) = v37;
                  }

                  *(this + 8) = v36;
                  *(this + 20) |= 0x200u;
                  if (v37 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_73;
    }

LABEL_40:
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

uint64_t awd::metrics::BluetoothMagnetState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 72), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 56), a2, a4);
    if ((*(v5 + 80) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 80);
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
  v7 = *(v5 + 64);

  return MEMORY[0x2A1C715C8](10, v7, a2);
}

uint64_t awd::metrics::BluetoothMagnetState::ByteSize(awd::metrics::BluetoothMagnetState *this)
{
  v2 = *(this + 20);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 20);
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

  v5 = *(this + 4);
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
LABEL_11:
  v4 = ((v2 >> 1) & 2) + v3;
  if ((v2 & 8) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 20);
    if ((v2 & 0x10) == 0)
    {
LABEL_13:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v2 = *(this + 20);
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v2 = *(this + 20);
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_26:
  v8 = *(this + 18);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    v2 = *(this + 20);
  }

LABEL_17:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
      v2 = *(this + 20);
    }

    if ((v2 & 0x200) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
    }
  }

  *(this + 19) = v4;
  return v4;
}

void awd::metrics::BluetoothMagnetState::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothMagnetState::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetState::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetState::CopyFrom(awd::metrics::BluetoothMagnetState *this, const awd::metrics::BluetoothMagnetState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetState::Swap(uint64_t this, awd::metrics::BluetoothMagnetState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v5;
    v6 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v8;
    LODWORD(v8) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v8;
    LODWORD(v8) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v8;
  }

  return this;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, const awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4B0D0;
  *(this + 6) = 0;
  awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, const awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *a2)
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
      v6 = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 6);
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

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = v5;
  }
}

void sub_296368344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::~BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this)
{
  *this = &unk_2A1D4B0D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B0D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B0D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::default_instance(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::default_instance_;
  if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 9)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 8)
      {
        break;
      }

      if (v6 != 7 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 64)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 6) |= 2u;
        if (v14 < v7 && *v14 == 72)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
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
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 6) |= 4u;
          if (v16 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
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

unsigned int *awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, this[2], a2, a4);
  v6 = v5[6];
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
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this)
{
  LOBYTE(v2) = *(this + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(this + 24))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 6);
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
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 6);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
  }

LABEL_19:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::CopyFrom(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, const awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(this, a2);
  }
}

awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::Swap(awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *this, awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI *a2)
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
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return this;
}

double awd::metrics::BluetoothMagnetPhyStats::SharedCtor(awd::metrics::BluetoothMagnetPhyStats *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 27) = 0;
  return result;
}

awd::metrics::BluetoothMagnetPhyStats *awd::metrics::BluetoothMagnetPhyStats::BluetoothMagnetPhyStats(awd::metrics::BluetoothMagnetPhyStats *this, const awd::metrics::BluetoothMagnetPhyStats *a2)
{
  *this = &unk_2A1D4B148;
  *(this + 56) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 24) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 18) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  awd::metrics::BluetoothMagnetPhyStats::MergeFrom(this, a2);
  return this;
}

void sub_296368A88(_Unwind_Exception *a1)
{
  v10 = *(v1 + 25);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  awd::metrics::BluetoothMagnetPhyStats::BluetoothMagnetPhyStats(v8, v7, v6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(v5);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(v4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetPhyStats::MergeFrom(awd::metrics::BluetoothMagnetPhyStats *this, const awd::metrics::BluetoothMagnetPhyStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>((this + 56), a2 + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>((this + 80), a2 + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>((this + 104), a2 + 104);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>((this + 128), a2 + 128);
  v4 = *(a2 + 40);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 19, *(this + 40) + v4);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v5 = *(a2 + 44);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 21, *(this + 44) + v5);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, *(this + 48) + v6);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v7 = *(a2 + 52);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 25, *(this + 52) + v7);
    memcpy((*(this + 25) + 4 * *(this + 52)), *(a2 + 25), 4 * *(a2 + 52));
    *(this + 52) += *(a2 + 52);
  }

  v8 = *(a2 + 59);
  if (!v8)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v12 = *(a2 + 1);
    *(this + 59) |= 1u;
    *(this + 1) = v12;
    v8 = *(a2 + 59);
    if ((v8 & 2) == 0)
    {
LABEL_14:
      if ((v8 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(a2 + 4);
  *(this + 59) |= 2u;
  *(this + 4) = v13;
  v8 = *(a2 + 59);
  if ((v8 & 4) == 0)
  {
LABEL_15:
    if ((v8 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *(a2 + 5);
  *(this + 59) |= 4u;
  *(this + 5) = v14;
  v8 = *(a2 + 59);
  if ((v8 & 8) == 0)
  {
LABEL_16:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = *(a2 + 6);
  *(this + 59) |= 8u;
  *(this + 6) = v15;
  v8 = *(a2 + 59);
  if ((v8 & 0x10) == 0)
  {
LABEL_17:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_38:
    v17 = *(a2 + 8);
    *(this + 59) |= 0x20u;
    *(this + 8) = v17;
    v8 = *(a2 + 59);
    if ((v8 & 0x40) == 0)
    {
LABEL_19:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_37:
  v16 = *(a2 + 7);
  *(this + 59) |= 0x10u;
  *(this + 7) = v16;
  v8 = *(a2 + 59);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_18:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_39:
  v18 = *(a2 + 9);
  *(this + 59) |= 0x40u;
  *(this + 9) = v18;
  v8 = *(a2 + 59);
  if ((v8 & 0x80) != 0)
  {
LABEL_20:
    v9 = *(a2 + 10);
    *(this + 59) |= 0x80u;
    *(this + 10) = v9;
    v8 = *(a2 + 59);
  }

LABEL_21:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v8 & 0x100) != 0)
  {
    v19 = *(a2 + 11);
    *(this + 59) |= 0x100u;
    *(this + 11) = v19;
    v8 = *(a2 + 59);
    if ((v8 & 0x200) == 0)
    {
LABEL_24:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v20 = *(a2 + 12);
  *(this + 59) |= 0x200u;
  *(this + 12) = v20;
  v8 = *(a2 + 59);
  if ((v8 & 0x400) != 0)
  {
LABEL_25:
    v10 = *(a2 + 13);
    *(this + 59) |= 0x400u;
    *(this + 13) = v10;
    v8 = *(a2 + 59);
  }

LABEL_26:
  if ((v8 & 0x7F80000) == 0)
  {
    return;
  }

  if ((v8 & 0x80000) != 0)
  {
    v21 = *(a2 + 54);
    *(this + 59) |= 0x80000u;
    *(this + 54) = v21;
    v8 = *(a2 + 59);
    if ((v8 & 0x100000) == 0)
    {
LABEL_29:
      if ((v8 & 0x200000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_46;
    }
  }

  else if ((v8 & 0x100000) == 0)
  {
    goto LABEL_29;
  }

  v22 = *(a2 + 55);
  *(this + 59) |= 0x100000u;
  *(this + 55) = v22;
  v8 = *(a2 + 59);
  if ((v8 & 0x200000) == 0)
  {
LABEL_30:
    if ((v8 & 0x400000) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_46:
  v23 = *(a2 + 56);
  *(this + 59) |= 0x200000u;
  *(this + 56) = v23;
  if ((*(a2 + 59) & 0x400000) == 0)
  {
    return;
  }

LABEL_31:
  v11 = *(a2 + 57);
  *(this + 59) |= 0x400000u;
  *(this + 57) = v11;
}

void sub_296368EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetPhyStats::~BluetoothMagnetPhyStats(awd::metrics::BluetoothMagnetPhyStats *this)
{
  *this = &unk_2A1D4B148;
  v2 = *(this + 25);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 23);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 21);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 19);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 7);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothMagnetPhyStats::~BluetoothMagnetPhyStats(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::default_instance(awd::metrics::BluetoothMagnetPhyStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetPhyStats::default_instance_;
  if (!awd::metrics::BluetoothMagnetPhyStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetPhyStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::Clear(awd::metrics::BluetoothMagnetPhyStats *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    *(this + 10) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 6) = 0;
    *(this + 11) = 0;
  }

  if ((v2 & 0x7F80000) != 0)
  {
    *(this + 27) = 0;
    *(this + 28) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 80);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 104);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(this + 128);
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 59) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetPhyStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
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

        *(this + 59) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v21 = v10 + 1;
          *(a2 + 1) = v21;
          goto LABEL_75;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_75:
        if (v21 >= v7 || (v31 = *v21, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v31;
          v32 = v21 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 59) |= 2u;
        if (v32 >= v7 || *v32 != 24)
        {
          continue;
        }

        v15 = v32 + 1;
        *(a2 + 1) = v15;
LABEL_83:
        if (v15 >= v7 || (v33 = *v15, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v33;
          v34 = v15 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 59) |= 4u;
        if (v34 >= v7 || *v34 != 32)
        {
          continue;
        }

        v20 = v34 + 1;
        *(a2 + 1) = v20;
LABEL_91:
        if (v20 >= v7 || (v35 = *v20, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v35;
          v36 = v20 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 59) |= 8u;
        if (v36 >= v7 || *v36 != 40)
        {
          continue;
        }

        v16 = v36 + 1;
        *(a2 + 1) = v16;
LABEL_99:
        if (v16 >= v7 || (v37 = *v16, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v37;
          v38 = v16 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 59) |= 0x10u;
        if (v38 >= v7 || *v38 != 48)
        {
          continue;
        }

        v19 = v38 + 1;
        *(a2 + 1) = v19;
LABEL_107:
        if (v19 >= v7 || (v39 = *v19, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v39;
          v40 = v19 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 59) |= 0x20u;
        if (v40 >= v7 || *v40 != 80)
        {
          continue;
        }

        v22 = v40 + 1;
        *(a2 + 1) = v22;
LABEL_115:
        if (v22 >= v7 || (v41 = *v22, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v41;
          v42 = v22 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 59) |= 0x40u;
        if (v42 >= v7 || *v42 != 88)
        {
          continue;
        }

        v23 = v42 + 1;
        *(a2 + 1) = v23;
LABEL_123:
        if (v23 >= v7 || (v43 = *v23, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v43;
          v44 = v23 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 59) |= 0x80u;
        if (v44 >= v7 || *v44 != 96)
        {
          continue;
        }

        v25 = v44 + 1;
        *(a2 + 1) = v25;
LABEL_131:
        if (v25 >= v7 || (v45 = *v25, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v45;
          v46 = v25 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 59) |= 0x100u;
        if (v46 >= v7 || *v46 != 104)
        {
          continue;
        }

        v24 = v46 + 1;
        *(a2 + 1) = v24;
LABEL_139:
        if (v24 >= v7 || (v47 = *v24, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v47;
          v48 = v24 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 59) |= 0x200u;
        if (v48 >= v7 || *v48 != 112)
        {
          continue;
        }

        v14 = v48 + 1;
        *(a2 + 1) = v14;
LABEL_147:
        if (v14 >= v7 || (v49 = *v14, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v49;
          v50 = (v14 + 1);
          *(a2 + 1) = v50;
        }

        *(this + 59) |= 0x400u;
        if (v50 >= v7 || *v50 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v50 + 1;
LABEL_155:
          v51 = *(this + 17);
          v52 = *(this + 16);
          if (v52 >= v51)
          {
            if (v51 == *(this + 18))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
              v51 = *(this + 17);
            }

            *(this + 17) = v51 + 1;
            operator new();
          }

          v53 = *(this + 7);
          *(this + 16) = v52 + 1;
          v54 = *(v53 + 8 * v52);
          v147[0] = 0;
          v55 = *(a2 + 1);
          if (v55 >= *(a2 + 2) || *v55 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v147))
            {
              return 0;
            }
          }

          else
          {
            v147[0] = *v55;
            *(a2 + 1) = v55 + 1;
          }

          v56 = *(a2 + 14);
          v57 = *(a2 + 15);
          *(a2 + 14) = v56 + 1;
          if (v56 >= v57)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(v54, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v58 = *(a2 + 14);
          v59 = __OFSUB__(v58, 1);
          v60 = v58 - 1;
          if (v60 < 0 == v59)
          {
            *(a2 + 14) = v60;
          }

          v50 = *(a2 + 1);
          v61 = *(a2 + 2);
        }

        while (v50 < v61 && *v50 == 122);
        if (v61 - v50 < 2 || *v50 != 130 || v50[1] != 1)
        {
          continue;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_83;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_91;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_99;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_107;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_115;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_123;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_131;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_139;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_147;
      case 0xFu:
        if (v6 == 2)
        {
          goto LABEL_155;
        }

        goto LABEL_62;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_175;
        }

        goto LABEL_62;
      case 0x11u:
        if (v6 == 2)
        {
          goto LABEL_196;
        }

        goto LABEL_62;
      case 0x12u:
        if (v6 == 2)
        {
          goto LABEL_217;
        }

        goto LABEL_62;
      case 0x13u:
        if ((TagFallback & 7) == 0)
        {
          v28 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_238;
        }

        if (v6 != 2)
        {
          goto LABEL_62;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 152);
        if (!result)
        {
          return result;
        }

        goto LABEL_256;
      case 0x14u:
        if ((TagFallback & 7) == 0)
        {
          v30 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_263;
        }

        if (v6 != 2)
        {
          goto LABEL_62;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)17>(a2, this + 168);
        if (!result)
        {
          return result;
        }

        goto LABEL_283;
      case 0x15u:
        if ((TagFallback & 7) == 0)
        {
          v29 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_290;
        }

        if (v6 != 2)
        {
          goto LABEL_62;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 184);
        if (!result)
        {
          return result;
        }

        goto LABEL_308;
      case 0x16u:
        if ((TagFallback & 7) == 0)
        {
          v27 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_315;
        }

        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)17>(a2, this + 200);
          if (!result)
          {
            return result;
          }

          goto LABEL_335;
        }

LABEL_62:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_342;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_351;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_360;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_62;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_369;
      default:
        goto LABEL_62;
    }

    while (1)
    {
      *(a2 + 1) = v50 + 2;
LABEL_175:
      v62 = *(this + 23);
      v63 = *(this + 22);
      if (v63 >= v62)
      {
        if (v62 == *(this + 24))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 80));
          v62 = *(this + 23);
        }

        *(this + 23) = v62 + 1;
        operator new();
      }

      v64 = *(this + 10);
      *(this + 22) = v63 + 1;
      v65 = *(v64 + 8 * v63);
      v147[0] = 0;
      v66 = *(a2 + 1);
      if (v66 >= *(a2 + 2) || *v66 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v147))
        {
          return 0;
        }
      }

      else
      {
        v147[0] = *v66;
        *(a2 + 1) = v66 + 1;
      }

      v67 = *(a2 + 14);
      v68 = *(a2 + 15);
      *(a2 + 14) = v67 + 1;
      if (v67 >= v68)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(v65, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v69 = *(a2 + 14);
      v59 = __OFSUB__(v69, 1);
      v70 = v69 - 1;
      if (v70 < 0 == v59)
      {
        *(a2 + 14) = v70;
      }

      v50 = *(a2 + 1);
      if (*(a2 + 4) - v50 <= 1)
      {
        goto LABEL_1;
      }

      v71 = *v50;
      if (v71 == 138)
      {
        break;
      }

      if (v71 != 130 || v50[1] != 1)
      {
        goto LABEL_1;
      }
    }

    if (v50[1] == 1)
    {
      while (1)
      {
        *(a2 + 1) = v50 + 2;
LABEL_196:
        v72 = *(this + 29);
        v73 = *(this + 28);
        if (v73 >= v72)
        {
          if (v72 == *(this + 30))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
            v72 = *(this + 29);
          }

          *(this + 29) = v72 + 1;
          operator new();
        }

        v74 = *(this + 13);
        *(this + 28) = v73 + 1;
        v75 = *(v74 + 8 * v73);
        v147[0] = 0;
        v76 = *(a2 + 1);
        if (v76 >= *(a2 + 2) || *v76 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v147))
          {
            return 0;
          }
        }

        else
        {
          v147[0] = *v76;
          *(a2 + 1) = v76 + 1;
        }

        v77 = *(a2 + 14);
        v78 = *(a2 + 15);
        *(a2 + 14) = v77 + 1;
        if (v77 >= v78)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(v75, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v79 = *(a2 + 14);
        v59 = __OFSUB__(v79, 1);
        v80 = v79 - 1;
        if (v80 < 0 == v59)
        {
          *(a2 + 14) = v80;
        }

        v50 = *(a2 + 1);
        if (*(a2 + 4) - v50 <= 1)
        {
          goto LABEL_1;
        }

        v81 = *v50;
        if (v81 == 146)
        {
          break;
        }

        if (v81 != 138 || v50[1] != 1)
        {
          goto LABEL_1;
        }
      }

      if (v50[1] == 1)
      {
        break;
      }
    }
  }

  while (1)
  {
    *(a2 + 1) = v50 + 2;
LABEL_217:
    v82 = *(this + 35);
    v83 = *(this + 34);
    if (v83 >= v82)
    {
      if (v82 == *(this + 36))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 128));
        v82 = *(this + 35);
      }

      *(this + 35) = v82 + 1;
      operator new();
    }

    v84 = *(this + 16);
    *(this + 34) = v83 + 1;
    v85 = *(v84 + 8 * v83);
    v147[0] = 0;
    v86 = *(a2 + 1);
    if (v86 >= *(a2 + 2) || *v86 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v147))
      {
        return 0;
      }
    }

    else
    {
      v147[0] = *v86;
      *(a2 + 1) = v86 + 1;
    }

    v87 = *(a2 + 14);
    v88 = *(a2 + 15);
    *(a2 + 14) = v87 + 1;
    if (v87 >= v88)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergePartialFromCodedStream(v85, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v89 = *(a2 + 14);
    v59 = __OFSUB__(v89, 1);
    v90 = v89 - 1;
    if (v90 < 0 == v59)
    {
      *(a2 + 14) = v90;
    }

    v50 = *(a2 + 1);
    v12 = *(a2 + 2);
    if (v12 - v50 <= 1)
    {
      goto LABEL_1;
    }

    v91 = *v50;
    if (v91 == 152)
    {
      if (v50[1] == 1)
      {
        while (1)
        {
          v28 = (v50 + 2);
          *(a2 + 1) = v28;
LABEL_238:
          v146 = 0;
          if (v28 >= v12 || *v28 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v146))
            {
              return 0;
            }
          }

          else
          {
            v146 = *v28;
            *(a2 + 1) = v28 + 1;
          }

          v92 = *(this + 40);
          if (v92 == *(this + 41))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 19, v92 + 1);
            v92 = *(this + 40);
          }

          v93 = v146;
          v94 = *(this + 19);
          *(this + 40) = v92 + 1;
          *(v94 + 4 * v92) = v93;
          v95 = *(this + 41) - *(this + 40);
          if (v95 >= 1)
          {
            v96 = v95 + 1;
            do
            {
              v97 = *(a2 + 1);
              v98 = *(a2 + 2);
              if (v98 - v97 < 2 || *v97 != 152 || v97[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v97 + 2;
              if ((v97 + 2) >= v98 || v97[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v146))
                {
                  return 0;
                }
              }

              else
              {
                v146 = v97[2];
                *(a2 + 1) = v97 + 3;
              }

              v99 = *(this + 40);
              if (v99 >= *(this + 41))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v147);
                v99 = *(this + 40);
              }

              v100 = v146;
              v101 = *(this + 19);
              *(this + 40) = v99 + 1;
              *(v101 + 4 * v99) = v100;
              --v96;
            }

            while (v96 > 1);
          }

LABEL_256:
          v50 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v12 - v50 < 2)
          {
            break;
          }

          v102 = *v50;
          if (v102 == 160)
          {
            if (v50[1] == 1)
            {
              while (1)
              {
                v30 = (v50 + 2);
                *(a2 + 1) = v30;
LABEL_263:
                v147[0] = 0;
                if (v30 >= v12 || (v103 = *v30, (v103 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v147);
                  if (!result)
                  {
                    return result;
                  }

                  v103 = v147[0];
                }

                else
                {
                  *(a2 + 1) = v30 + 1;
                }

                v104 = -(v103 & 1) ^ (v103 >> 1);
                v105 = *(this + 44);
                if (v105 == *(this + 45))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 21, v105 + 1);
                  v105 = *(this + 44);
                }

                v106 = *(this + 21);
                *(this + 44) = v105 + 1;
                *(v106 + 4 * v105) = v104;
                v107 = *(this + 45) - *(this + 44);
                if (v107 >= 1)
                {
                  v108 = v107 + 1;
                  do
                  {
                    v109 = *(a2 + 1);
                    v110 = *(a2 + 2);
                    if (v110 - v109 < 2 || *v109 != 160 || v109[1] != 1)
                    {
                      break;
                    }

                    *(a2 + 1) = v109 + 2;
                    v147[0] = 0;
                    if ((v109 + 2) >= v110 || (v111 = v109[2], (v111 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v147);
                      if (!result)
                      {
                        return result;
                      }

                      v111 = v147[0];
                    }

                    else
                    {
                      *(a2 + 1) = v109 + 3;
                    }

                    v112 = *(this + 44);
                    if (v112 >= *(this + 45))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v147);
                      v112 = *(this + 44);
                    }

                    v113 = *(this + 21);
                    *(this + 44) = v112 + 1;
                    *(v113 + 4 * v112) = -(v111 & 1) ^ (v111 >> 1);
                    --v108;
                  }

                  while (v108 > 1);
                }

LABEL_283:
                v50 = *(a2 + 1);
                v12 = *(a2 + 2);
                if (v12 - v50 <= 1)
                {
                  break;
                }

                v114 = *v50;
                if (v114 == 168)
                {
                  if (v50[1] == 1)
                  {
                    while (1)
                    {
                      v29 = (v50 + 2);
                      *(a2 + 1) = v29;
LABEL_290:
                      v146 = 0;
                      if (v29 >= v12 || *v29 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v146))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v146 = *v29;
                        *(a2 + 1) = v29 + 1;
                      }

                      v115 = *(this + 48);
                      if (v115 == *(this + 49))
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, v115 + 1);
                        v115 = *(this + 48);
                      }

                      v116 = v146;
                      v117 = *(this + 23);
                      *(this + 48) = v115 + 1;
                      *(v117 + 4 * v115) = v116;
                      v118 = *(this + 49) - *(this + 48);
                      if (v118 >= 1)
                      {
                        v119 = v118 + 1;
                        do
                        {
                          v120 = *(a2 + 1);
                          v121 = *(a2 + 2);
                          if (v121 - v120 < 2 || *v120 != 168 || v120[1] != 1)
                          {
                            break;
                          }

                          *(a2 + 1) = v120 + 2;
                          if ((v120 + 2) >= v121 || v120[2] < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v146))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v146 = v120[2];
                            *(a2 + 1) = v120 + 3;
                          }

                          v122 = *(this + 48);
                          if (v122 >= *(this + 49))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v147);
                            v122 = *(this + 48);
                          }

                          v123 = v146;
                          v124 = *(this + 23);
                          *(this + 48) = v122 + 1;
                          *(v124 + 4 * v122) = v123;
                          --v119;
                        }

                        while (v119 > 1);
                      }

LABEL_308:
                      v50 = *(a2 + 1);
                      v12 = *(a2 + 2);
                      if (v12 - v50 < 2)
                      {
                        break;
                      }

                      v125 = *v50;
                      if (v125 == 176)
                      {
                        if (v50[1] == 1)
                        {
                          while (1)
                          {
                            v27 = (v50 + 2);
                            *(a2 + 1) = v27;
LABEL_315:
                            v147[0] = 0;
                            if (v27 >= v12 || (v126 = *v27, (v126 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v147);
                              if (!result)
                              {
                                return result;
                              }

                              v126 = v147[0];
                            }

                            else
                            {
                              *(a2 + 1) = v27 + 1;
                            }

                            v127 = -(v126 & 1) ^ (v126 >> 1);
                            v128 = *(this + 52);
                            if (v128 == *(this + 53))
                            {
                              wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 25, v128 + 1);
                              v128 = *(this + 52);
                            }

                            v129 = *(this + 25);
                            *(this + 52) = v128 + 1;
                            *(v129 + 4 * v128) = v127;
                            v130 = *(this + 53) - *(this + 52);
                            if (v130 >= 1)
                            {
                              v131 = v130 + 1;
                              do
                              {
                                v132 = *(a2 + 1);
                                v133 = *(a2 + 2);
                                if (v133 - v132 < 2 || *v132 != 176 || v132[1] != 1)
                                {
                                  break;
                                }

                                *(a2 + 1) = v132 + 2;
                                v147[0] = 0;
                                if ((v132 + 2) >= v133 || (v134 = v132[2], (v134 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v147);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v134 = v147[0];
                                }

                                else
                                {
                                  *(a2 + 1) = v132 + 3;
                                }

                                v135 = *(this + 52);
                                if (v135 >= *(this + 53))
                                {
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v147);
                                  v135 = *(this + 52);
                                }

                                v136 = *(this + 25);
                                *(this + 52) = v135 + 1;
                                *(v136 + 4 * v135) = -(v134 & 1) ^ (v134 >> 1);
                                --v131;
                              }

                              while (v131 > 1);
                            }

LABEL_335:
                            v50 = *(a2 + 1);
                            v12 = *(a2 + 2);
                            if (v12 - v50 <= 1)
                            {
                              break;
                            }

                            v137 = *v50;
                            if (v137 == 184)
                            {
                              if (v50[1] == 1)
                              {
                                v18 = (v50 + 2);
                                *(a2 + 1) = v18;
LABEL_342:
                                if (v18 >= v12 || (v138 = *v18, v138 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 54);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v139 = *(a2 + 1);
                                  v12 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 54) = v138;
                                  v139 = (v18 + 1);
                                  *(a2 + 1) = v139;
                                }

                                *(this + 59) |= 0x80000u;
                                if (v12 - v139 >= 2 && *v139 == 192 && v139[1] == 1)
                                {
                                  v26 = (v139 + 2);
                                  *(a2 + 1) = v26;
LABEL_351:
                                  if (v26 >= v12 || (v140 = *v26, v140 < 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 55);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v141 = *(a2 + 1);
                                    v12 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *(this + 55) = v140;
                                    v141 = (v26 + 1);
                                    *(a2 + 1) = v141;
                                  }

                                  *(this + 59) |= 0x100000u;
                                  if (v12 - v141 >= 2 && *v141 == 200 && v141[1] == 1)
                                  {
                                    v13 = (v141 + 2);
                                    *(a2 + 1) = v13;
LABEL_360:
                                    if (v13 >= v12 || (v142 = *v13, v142 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 56);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v143 = *(a2 + 1);
                                      v12 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 56) = v142;
                                      v143 = (v13 + 1);
                                      *(a2 + 1) = v143;
                                    }

                                    *(this + 59) |= 0x200000u;
                                    if (v12 - v143 >= 2 && *v143 == 208 && v143[1] == 1)
                                    {
                                      v17 = (v143 + 2);
                                      *(a2 + 1) = v17;
LABEL_369:
                                      if (v17 >= v12 || (v144 = *v17, v144 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 57);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v145 = *(a2 + 1);
                                        v12 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 57) = v144;
                                        v145 = v17 + 1;
                                        *(a2 + 1) = v145;
                                      }

                                      *(this + 59) |= 0x400000u;
                                      if (v145 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

                              goto LABEL_1;
                            }

                            if (v137 != 176 || v50[1] != 1)
                            {
                              goto LABEL_1;
                            }
                          }
                        }

                        goto LABEL_1;
                      }

                      if (v125 != 168 || v50[1] != 1)
                      {
                        goto LABEL_1;
                      }
                    }
                  }

                  goto LABEL_1;
                }

                if (v114 != 160 || v50[1] != 1)
                {
                  goto LABEL_1;
                }
              }
            }

            goto LABEL_1;
          }

          if (v102 != 152 || v50[1] != 1)
          {
            goto LABEL_1;
          }
        }
      }

      goto LABEL_1;
    }

    if (v91 != 146 || v50[1] != 1)
    {
      goto LABEL_1;
    }
  }
}

void sub_29636A548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)17>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
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
      *(v9 + 4 * v8) = -(v7 & 1) ^ (v7 >> 1);
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 236);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 236);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 36), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 40), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 44), a2, a4);
  v6 = *(v5 + 236);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 48), a2, a4);
  if ((*(v5 + 236) & 0x400) != 0)
  {
LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 52), a2, a4);
  }

LABEL_13:
  if (*(v5 + 64) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 56) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 64));
  }

  if (*(v5 + 88) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 80) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 88));
  }

  if (*(v5 + 112) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, *(*(v5 + 104) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 112));
  }

  if (*(v5 + 136) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, *(*(v5 + 128) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 136));
  }

  if (*(v5 + 160) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(*(v5 + 152) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x14, *(*(v5 + 168) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 176));
  }

  if (*(v5 + 192) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 184) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 192));
  }

  if (*(v5 + 208) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x16, *(*(v5 + 200) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 208));
  }

  v15 = *(v5 + 236);
  if ((v15 & 0x80000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 216), a2, a4);
    v15 = *(v5 + 236);
    if ((v15 & 0x100000) == 0)
    {
LABEL_39:
      if ((v15 & 0x200000) == 0)
      {
        goto LABEL_40;
      }

LABEL_55:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 224), a2, a4);
      if ((*(v5 + 236) & 0x400000) == 0)
      {
        return this;
      }

      goto LABEL_56;
    }
  }

  else if ((v15 & 0x100000) == 0)
  {
    goto LABEL_39;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 220), a2, a4);
  v15 = *(v5 + 236);
  if ((v15 & 0x200000) != 0)
  {
    goto LABEL_55;
  }

LABEL_40:
  if ((v15 & 0x400000) == 0)
  {
    return this;
  }

LABEL_56:
  v16 = *(v5 + 228);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, v16, a2, a4);
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::ByteSize(awd::metrics::BluetoothMagnetPhyStats *this)
{
  v2 = *(this + 59);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 59);
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
    v2 = *(this + 59);
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
      v2 = *(this + 59);
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
    v2 = *(this + 59);
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
    v2 = *(this + 59);
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
    v2 = *(this + 59);
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
    v2 = *(this + 59);
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
      v2 = *(this + 59);
    }

    else
    {
      v17 = 2;
    }

    v3 += v17;
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_59;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 59);
    }

    else
    {
      v19 = 2;
    }

    v3 += v19;
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 59);
  }

  else
  {
    v21 = 2;
  }

  v3 += v21;
  if ((v2 & 0x400) != 0)
  {
LABEL_55:
    v22 = *(this + 13);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v2 = *(this + 59);
    }

    else
    {
      v23 = 2;
    }

    v3 += v23;
  }

LABEL_59:
  if ((v2 & 0x7F80000) == 0)
  {
    goto LABEL_81;
  }

  if ((v2 & 0x80000) != 0)
  {
    v24 = *(this + 54);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 2;
      v2 = *(this + 59);
    }

    else
    {
      v25 = 3;
    }

    v3 += v25;
    if ((v2 & 0x100000) == 0)
    {
LABEL_62:
      if ((v2 & 0x200000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_73;
    }
  }

  else if ((v2 & 0x100000) == 0)
  {
    goto LABEL_62;
  }

  v26 = *(this + 55);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 2;
    v2 = *(this + 59);
  }

  else
  {
    v27 = 3;
  }

  v3 += v27;
  if ((v2 & 0x200000) == 0)
  {
LABEL_63:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

LABEL_73:
  v28 = *(this + 56);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 2;
    v2 = *(this + 59);
  }

  else
  {
    v29 = 3;
  }

  v3 += v29;
  if ((v2 & 0x400000) != 0)
  {
LABEL_77:
    v30 = *(this + 57);
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
    }

    else
    {
      v31 = 3;
    }

    v3 += v31;
  }

LABEL_81:
  v32 = *(this + 16);
  v33 = v32 + v3;
  if (v32 >= 1)
  {
    v34 = 0;
    do
    {
      v35 = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(*(*(this + 7) + 8 * v34));
      v36 = v35;
      if (v35 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      }

      else
      {
        v37 = 1;
      }

      v33 += v36 + v37;
      ++v34;
    }

    while (v34 < *(this + 16));
  }

  v38 = *(this + 22);
  v39 = v33 + 2 * v38;
  if (v38 >= 1)
  {
    v40 = 0;
    do
    {
      v41 = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(*(*(this + 10) + 8 * v40));
      v42 = v41;
      if (v41 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
      }

      else
      {
        v43 = 1;
      }

      v39 += v42 + v43;
      ++v40;
    }

    while (v40 < *(this + 22));
  }

  v44 = *(this + 28);
  v45 = v39 + 2 * v44;
  if (v44 >= 1)
  {
    v46 = 0;
    do
    {
      v47 = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(*(*(this + 13) + 8 * v46));
      v48 = v47;
      if (v47 >= 0x80)
      {
        v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47);
      }

      else
      {
        v49 = 1;
      }

      v45 += v48 + v49;
      ++v46;
    }

    while (v46 < *(this + 28));
  }

  v50 = *(this + 34);
  v51 = v45 + 2 * v50;
  if (v50 >= 1)
  {
    v52 = 0;
    do
    {
      v53 = awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::ByteSize(*(*(this + 16) + 8 * v52));
      v54 = v53;
      if (v53 >= 0x80)
      {
        v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
      }

      else
      {
        v55 = 1;
      }

      v51 += v54 + v55;
      ++v52;
    }

    while (v52 < *(this + 34));
  }

  v56 = *(this + 40);
  if (v56 < 1)
  {
    v58 = 0;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v59 = *(*(this + 19) + 4 * v57);
      if (v59 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59);
        v56 = *(this + 40);
      }

      else
      {
        v60 = 1;
      }

      v58 += v60;
      ++v57;
    }

    while (v57 < v56);
  }

  v61 = *(this + 44);
  if (v61 < 1)
  {
    v63 = 0;
  }

  else
  {
    v62 = 0;
    v63 = 0;
    do
    {
      v64 = *(*(this + 21) + 4 * v62);
      v65 = ((2 * v64) ^ (v64 >> 31));
      if (v65 >= 0x80)
      {
        v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
        v61 = *(this + 44);
      }

      else
      {
        v66 = 1;
      }

      v63 += v66;
      ++v62;
    }

    while (v62 < v61);
  }

  v67 = *(this + 48);
  if (v67 < 1)
  {
    v69 = 0;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    do
    {
      v70 = *(*(this + 23) + 4 * v68);
      if (v70 >= 0x80)
      {
        v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
        v67 = *(this + 48);
      }

      else
      {
        v71 = 1;
      }

      v69 += v71;
      ++v68;
    }

    while (v68 < v67);
  }

  v72 = *(this + 52);
  if (v72 < 1)
  {
    v74 = 0;
  }

  else
  {
    v73 = 0;
    v74 = 0;
    do
    {
      v75 = *(*(this + 25) + 4 * v73);
      v76 = ((2 * v75) ^ (v75 >> 31));
      if (v76 >= 0x80)
      {
        v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76);
        v72 = *(this + 52);
      }

      else
      {
        v77 = 1;
      }

      v74 += v77;
      ++v73;
    }

    while (v73 < v72);
  }

  result = (v58 + v51 + v63 + v69 + v74 + 2 * (v61 + v56 + v67 + v72));
  *(this + 58) = result;
  return result;
}

void awd::metrics::BluetoothMagnetPhyStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetPhyStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothMagnetPhyStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetPhyStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetPhyStats::CopyFrom(awd::metrics::BluetoothMagnetPhyStats *this, const awd::metrics::BluetoothMagnetPhyStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetPhyStats::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothMagnetPhyStats::Swap(awd::metrics::BluetoothMagnetPhyStats *this, awd::metrics::BluetoothMagnetPhyStats *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    LODWORD(v4) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    LODWORD(v4) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v4;
    LODWORD(v4) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    v6 = *(a2 + 20);
    *(a2 + 19) = v5;
    v7 = *(this + 20);
    *(this + 20) = v6;
    *(a2 + 20) = v7;
    v8 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v9 = *(a2 + 22);
    *(a2 + 21) = v8;
    v10 = *(this + 22);
    *(this + 22) = v9;
    *(a2 + 22) = v10;
    v11 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    v12 = *(a2 + 24);
    *(a2 + 23) = v11;
    v13 = *(this + 24);
    *(this + 24) = v12;
    *(a2 + 24) = v13;
    v14 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    result = *(a2 + 26);
    *(a2 + 25) = v14;
    v16 = *(this + 26);
    *(this + 26) = result;
    *(a2 + 26) = v16;
    LODWORD(v14) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v14;
    LODWORD(v14) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v14;
    LODWORD(v14) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v14;
    LODWORD(v14) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v14;
    LODWORD(v14) = *(this + 59);
    *(this + 59) = *(a2 + 59);
    *(a2 + 59) = v14;
    LODWORD(v14) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v14;
  }

  return result;
}

void *awd::metrics::BluetoothMagnetDisconnectData::SharedCtor(void *this)
{
  this[3] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  return this;
}

awd::metrics::BluetoothMagnetDisconnectData *awd::metrics::BluetoothMagnetDisconnectData::BluetoothMagnetDisconnectData(awd::metrics::BluetoothMagnetDisconnectData *this, const awd::metrics::BluetoothMagnetDisconnectData *a2)
{
  *this = &unk_2A1D4B1C0;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  awd::metrics::BluetoothMagnetDisconnectData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagnetDisconnectData::MergeFrom(awd::metrics::BluetoothMagnetDisconnectData *this, const awd::metrics::BluetoothMagnetDisconnectData *a2)
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

void sub_29636B4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagnetDisconnectData::~BluetoothMagnetDisconnectData(awd::metrics::BluetoothMagnetDisconnectData *this)
{
  *this = &unk_2A1D4B1C0;
  awd::metrics::BluetoothMagnetDisconnectData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B1C0;
  awd::metrics::BluetoothMagnetDisconnectData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B1C0;
  awd::metrics::BluetoothMagnetDisconnectData::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagnetDisconnectData::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothMagnetDisconnectData::default_instance(awd::metrics::BluetoothMagnetDisconnectData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagnetDisconnectData::default_instance_;
  if (!awd::metrics::BluetoothMagnetDisconnectData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagnetDisconnectData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagnetDisconnectData::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothMagnetDisconnectData::MergePartialFromCodedStream(awd::metrics::BluetoothMagnetDisconnectData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 != 6)
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
      if (v11 < v8 && *v11 == 50)
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

uint64_t awd::metrics::BluetoothMagnetDisconnectData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t awd::metrics::BluetoothMagnetDisconnectData::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
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

void awd::metrics::BluetoothMagnetDisconnectData::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagnetDisconnectData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothMagnetDisconnectData::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagnetDisconnectData::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagnetDisconnectData::CopyFrom(awd::metrics::BluetoothMagnetDisconnectData *this, const awd::metrics::BluetoothMagnetDisconnectData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagnetDisconnectData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagnetDisconnectData::Swap(uint64_t this, awd::metrics::BluetoothMagnetDisconnectData *a2)
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

void *awd::metrics::BluetoothCloudPairingInitiated::SharedCtor(void *this)
{
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  this[5] = v1;
  this[6] = 0;
  return this;
}

awd::metrics::BluetoothCloudPairingInitiated *awd::metrics::BluetoothCloudPairingInitiated::BluetoothCloudPairingInitiated(awd::metrics::BluetoothCloudPairingInitiated *this, const awd::metrics::BluetoothCloudPairingInitiated *a2)
{
  *(this + 6) = 0;
  *this = &unk_2A1D4B238;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = v3;
  awd::metrics::BluetoothCloudPairingInitiated::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothCloudPairingInitiated::MergeFrom(awd::metrics::BluetoothCloudPairingInitiated *this, const awd::metrics::BluetoothCloudPairingInitiated *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v5 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 13);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v9 = *(a2 + 3);
    *(this + 13) |= 4u;
    v10 = *(this + 3);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 13);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v7 = *(a2 + 2);
  *(this + 13) |= 2u;
  v8 = *(this + 2);
  if (v8 == v6)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  v11 = *(a2 + 4);
  *(this + 13) |= 8u;
  v12 = *(this + 4);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  if ((*(a2 + 13) & 0x10) != 0)
  {
LABEL_20:
    v13 = *(a2 + 5);
    *(this + 13) |= 0x10u;
    v14 = *(this + 5);
    if (v14 == v6)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
  }
}

void sub_29636BDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothCloudPairingInitiated::~BluetoothCloudPairingInitiated(awd::metrics::BluetoothCloudPairingInitiated *this)
{
  *this = &unk_2A1D4B238;
  awd::metrics::BluetoothCloudPairingInitiated::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B238;
  awd::metrics::BluetoothCloudPairingInitiated::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B238;
  awd::metrics::BluetoothCloudPairingInitiated::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothCloudPairingInitiated::SharedDtor(void *this)
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

  v7 = v1[4];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[5];
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

uint64_t awd::metrics::BluetoothCloudPairingInitiated::default_instance(awd::metrics::BluetoothCloudPairingInitiated *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothCloudPairingInitiated::default_instance_;
  if (!awd::metrics::BluetoothCloudPairingInitiated::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothCloudPairingInitiated::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothCloudPairingInitiated::Clear(uint64_t this)
{
  v1 = *(this + 52);
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

    if ((*(this + 52) & 4) != 0)
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

    if ((*(this + 52) & 8) != 0)
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

    if ((*(this + 52) & 0x10) != 0)
    {
      v6 = *(this + 40);
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

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothCloudPairingInitiated::MergePartialFromCodedStream(awd::metrics::BluetoothCloudPairingInitiated *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

          v9 = *(this + 13);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
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

        v9 = *(this + 13) | 1;
        *(this + 13) = v9;
        if (v13 < v10 && *v13 == 18)
        {
          *(a2 + 1) = v13 + 1;
LABEL_33:
          *(this + 13) = v9 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 26)
          {
            *(a2 + 1) = v14 + 1;
LABEL_39:
            *(this + 13) |= 4u;
            if (*(this + 3) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 34)
            {
              *(a2 + 1) = v15 + 1;
              goto LABEL_45;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

LABEL_45:
      *(this + 13) |= 8u;
      if (*(this + 4) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 42)
      {
        *(a2 + 1) = v16 + 1;
LABEL_51:
        *(this + 13) |= 0x10u;
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

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_51;
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

uint64_t awd::metrics::BluetoothCloudPairingInitiated::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 52);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v4 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v4 + 32);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v4 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 52);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v9 = *(v4 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothCloudPairingInitiated::ByteSize(awd::metrics::BluetoothCloudPairingInitiated *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
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
    v2 = *(this + 13);
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
      v2 = *(this + 13);
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

    v3 = (v3 + v15 + v11 + 1);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

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
    v2 = *(this + 13);
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
  if ((v2 & 0x10) != 0)
  {
LABEL_38:
    v22 = *(this + 5);
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
  }

LABEL_47:
  *(this + 12) = v3;
  return v3;
}