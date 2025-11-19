void awd::metrics::LocationTileFileUsage::CheckTypeAndMergeFrom(awd::metrics::LocationTileFileUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationTileFileUsage::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationTileFileUsage::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationTileFileUsage::CopyFrom(awd::metrics::LocationTileFileUsage *this, const awd::metrics::LocationTileFileUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationTileFileUsage::MergeFrom(this, a2);
  }
}

double awd::metrics::LocationTileFileUsage::Swap(awd::metrics::LocationTileFileUsage *this, awd::metrics::LocationTileFileUsage *a2)
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
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    v14 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v14;
    v15 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v15;
    v16 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v16;
    v17 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v18;
    v19 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v19;
    v20 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v20;
    v21 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v22 = *(a2 + 11);
    *(a2 + 10) = v21;
    v23 = *(this + 11);
    *(this + 11) = v22;
    *(a2 + 11) = v23;
    v24 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    result = *(a2 + 14);
    *(a2 + 13) = v24;
    v26 = *(this + 14);
    *(this + 14) = result;
    *(a2 + 14) = v26;
    LODWORD(v24) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v24;
    LODWORD(v24) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v24;
    LODWORD(v24) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v24;
    LODWORD(v24) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v24;
    LODWORD(v24) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v24;
    LODWORD(v24) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v24;
    LODWORD(v24) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v24;
  }

  return result;
}

double awd::metrics::LocationTileFile::SharedCtor(awd::metrics::LocationTileFile *this)
{
  result = 0.0;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  return result;
}

awd::metrics::LocationTileFile *awd::metrics::LocationTileFile::LocationTileFile(awd::metrics::LocationTileFile *this, const awd::metrics::LocationTileFile *a2)
{
  *(this + 5) = 0;
  *(this + 12) = 0;
  *this = &unk_2A1D51FC0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::LocationTileFile::MergeFrom(this, a2);
  return this;
}

void sub_29647D1F4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFileUsage>::TypeHandler>(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationTileFile::MergeFrom(awd::metrics::LocationTileFile *this, const awd::metrics::LocationTileFile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFileUsage>::TypeHandler>((this + 16), a2 + 16);
  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v6 = *(a2 + 2);
      *(this + 12) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 12);
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

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 12) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 12) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 10);
    *(this + 12) |= 4u;
    *(this + 10) = v5;
  }
}

void sub_29647D2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationTileFile::~LocationTileFile(awd::metrics::LocationTileFile *this)
{
  *this = &unk_2A1D51FC0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFileUsage>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationTileFile::~LocationTileFile(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationTileFile::default_instance(awd::metrics::LocationTileFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationTileFile::default_instance_;
  if (!awd::metrics::LocationTileFile::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationTileFile::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationTileFile::Clear(awd::metrics::LocationTileFile *this)
{
  if (*(this + 48))
  {
    *(this + 1) = 0;
    *(this + 10) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFileUsage>::TypeHandler>(this + 16);
  *(this + 12) = 0;
  return result;
}

uint64_t awd::metrics::LocationTileFile::MergePartialFromCodedStream(awd::metrics::LocationTileFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_20;
        }

        if (v6 != 4 || v7 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v19 = *(this + 7);
          v20 = *(this + 6);
          if (v20 >= v19)
          {
            if (v19 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v19 = *(this + 7);
            }

            *(this + 7) = v19 + 1;
            operator new();
          }

          v21 = *(this + 2);
          *(this + 6) = v20 + 1;
          v22 = *(v21 + 8 * v20);
          v30 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v24 = *(a2 + 14);
          v25 = *(a2 + 15);
          *(a2 + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationTileFileUsage::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(a2 + 14) = v28;
          }

          v18 = *(a2 + 1);
          v29 = *(a2 + 2);
          if (v18 < v29 && *v18 == 34)
          {
LABEL_44:
            *(a2 + 1) = v18 + 1;
            continue;
          }

          break;
        }

        if (v18 == v29 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v30 = 0;
      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 >= v8 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
        if (!result)
        {
          return result;
        }

        v11 = v30;
        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 2) = v11;
      *(this + 12) |= 1u;
      if (v12 < v8 && *v12 == 16)
      {
        v9 = v12 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v30 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
          if (!result)
          {
            return result;
          }

          v15 = v30;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 3) = v15;
        *(this + 12) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          v30 = 0;
          if (v13 >= v8 || (v17 = *v13, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
            if (!result)
            {
              return result;
            }

            v17 = v30;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v13 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) = v17;
          *(this + 12) |= 4u;
          if (v18 < v8 && *v18 == 34)
          {
            goto LABEL_44;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t awd::metrics::LocationTileFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 48) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 40), a2, a4);
  }

LABEL_5:
  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::LocationTileFile::ByteSize(awd::metrics::LocationTileFile *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if (*(this + 48))
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
      v2 = *(this + 12);
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
    if ((*(this + 48) & 2) == 0)
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
    v2 = *(this + 12);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 10);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
  }

LABEL_26:
  v9 = *(this + 6);
  v10 = (v9 + v3);
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = awd::metrics::LocationTileFileUsage::ByteSize(*(*(this + 2) + 8 * v11));
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      }

      else
      {
        v14 = 1;
      }

      v10 = (v13 + v10 + v14);
      ++v11;
    }

    while (v11 < *(this + 6));
  }

  *(this + 11) = v10;
  return v10;
}

void awd::metrics::LocationTileFile::CheckTypeAndMergeFrom(awd::metrics::LocationTileFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationTileFile::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationTileFile::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationTileFile::CopyFrom(awd::metrics::LocationTileFile *this, const awd::metrics::LocationTileFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationTileFile::MergeFrom(this, a2);
  }
}

awd::metrics::LocationTileFile *awd::metrics::LocationTileFile::Swap(awd::metrics::LocationTileFile *this, awd::metrics::LocationTileFile *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v7 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
  }

  return this;
}

uint64_t awd::metrics::LocationWifiAPLocationProviderSession::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

awd::metrics::LocationWifiAPLocationProviderSession *awd::metrics::LocationWifiAPLocationProviderSession::LocationWifiAPLocationProviderSession(awd::metrics::LocationWifiAPLocationProviderSession *this, const awd::metrics::LocationWifiAPLocationProviderSession *a2)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *this = &unk_2A1D52038;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::LocationWifiAPLocationProviderSession::MergeFrom(this, a2);
  return this;
}

void sub_29647DC78(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFile>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSessionDay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationWifiAPLocationProviderSession::MergeFrom(awd::metrics::LocationWifiAPLocationProviderSession *this, const awd::metrics::LocationWifiAPLocationProviderSession *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSessionDay>::TypeHandler>((this + 16), a2 + 16);
  v4 = *(this + 12);
  v5 = *(a2 + 12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
  LODWORD(v6) = *(a2 + 12);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
      }

      v8 = *(*(a2 + 5) + 8 * v7);
      v9 = *(this + 13);
      v10 = *(this + 12);
      if (v10 >= v9)
      {
        if (v9 == *(this + 14))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
          v9 = *(this + 13);
        }

        *(this + 13) = v9 + 1;
        operator new();
      }

      v11 = *(this + 5);
      *(this + 12) = v10 + 1;
      awd::metrics::LocationTileFile::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 12);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 72);
  if (v12)
  {
    if (*(a2 + 72))
    {
      v13 = *(a2 + 1);
      *(this + 18) |= 1u;
      *(this + 1) = v13;
      v12 = *(a2 + 18);
    }

    if ((v12 & 2) != 0)
    {
      v14 = *(a2 + 16);
      *(this + 18) |= 2u;
      *(this + 16) = v14;
    }
  }
}

void sub_29647DEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationWifiAPLocationProviderSession::~LocationWifiAPLocationProviderSession(awd::metrics::LocationWifiAPLocationProviderSession *this)
{
  *this = &unk_2A1D52038;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFile>::TypeHandler>(this + 5);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSessionDay>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationWifiAPLocationProviderSession::~LocationWifiAPLocationProviderSession(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationWifiAPLocationProviderSession::default_instance(awd::metrics::LocationWifiAPLocationProviderSession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationWifiAPLocationProviderSession::default_instance_;
  if (!awd::metrics::LocationWifiAPLocationProviderSession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationWifiAPLocationProviderSession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationWifiAPLocationProviderSession::Clear(awd::metrics::LocationWifiAPLocationProviderSession *this)
{
  if (*(this + 72))
  {
    *(this + 1) = 0;
    *(this + 16) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSessionDay>::TypeHandler>(this + 16);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFile>::TypeHandler>(this + 40);
  *(this + 18) = 0;
  return result;
}

uint64_t awd::metrics::LocationWifiAPLocationProviderSession::MergePartialFromCodedStream(awd::metrics::LocationWifiAPLocationProviderSession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 == 2)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

        if (v6 != 4 || v7 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v27 = *(this + 13);
          v28 = *(this + 12);
          if (v28 >= v27)
          {
            if (v27 == *(this + 14))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
              v27 = *(this + 13);
            }

            *(this + 13) = v27 + 1;
            operator new();
          }

          v29 = *(this + 5);
          *(this + 12) = v28 + 1;
          v30 = *(v29 + 8 * v28);
          v38 = 0;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
            {
              return 0;
            }
          }

          else
          {
            v38 = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v32 = *(a2 + 14);
          v33 = *(a2 + 15);
          *(a2 + 14) = v32 + 1;
          if (v32 >= v33)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationTileFile::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v34 = *(a2 + 14);
          v24 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v24)
          {
            *(a2 + 14) = v35;
          }

          v15 = *(a2 + 1);
          v36 = *(a2 + 2);
          if (v15 < v36 && *v15 == 34)
          {
LABEL_53:
            *(a2 + 1) = v15 + 1;
            continue;
          }

          break;
        }

        if (v15 == v36 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
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
      v8 = *(a2 + 2);
      if (v10 >= v8 || (v11 = *v10, v11 < 0))
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
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 18) |= 1u;
      if (v12 < v8 && *v12 == 16)
      {
        v9 = v12 + 1;
        *(a2 + 1) = v9;
LABEL_28:
        if (v9 >= v8 || (v14 = *v9, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v14;
          v15 = v9 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 18) |= 2u;
        if (v15 < v8 && *v15 == 26)
        {
          while (1)
          {
            *(a2 + 1) = v15 + 1;
LABEL_36:
            v16 = *(this + 7);
            v17 = *(this + 6);
            if (v17 >= v16)
            {
              if (v16 == *(this + 8))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                v16 = *(this + 7);
              }

              *(this + 7) = v16 + 1;
              operator new();
            }

            v18 = *(this + 2);
            *(this + 6) = v17 + 1;
            v19 = *(v18 + 8 * v17);
            v37 = 0;
            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
              {
                return 0;
              }
            }

            else
            {
              v37 = *v20;
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
            if (!awd::metrics::LocationSessionDay::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
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

            v15 = *(a2 + 1);
            if (v15 >= *(a2 + 2))
            {
              break;
            }

            v26 = *v15;
            if (v26 != 26)
            {
              if (v26 == 34)
              {
                goto LABEL_53;
              }

              goto LABEL_1;
            }
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_28;
    }

LABEL_20:
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

uint64_t awd::metrics::LocationWifiAPLocationProviderSession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 64), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 40) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  return this;
}

uint64_t awd::metrics::LocationWifiAPLocationProviderSession::ByteSize(awd::metrics::LocationWifiAPLocationProviderSession *this)
{
  if (!*(this + 72))
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (*(this + 72))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 18) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(this + 16);
  if (v3 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
  }

  else
  {
    v4 = 2;
  }

  v2 += v4;
LABEL_11:
  v5 = *(this + 6);
  v6 = v5 + v2;
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = awd::metrics::LocationSessionDay::ByteSize(*(*(this + 2) + 8 * v7));
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v6 += v9 + v10;
      ++v7;
    }

    while (v7 < *(this + 6));
  }

  v11 = *(this + 12);
  v12 = (v11 + v6);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = awd::metrics::LocationTileFile::ByteSize(*(*(this + 5) + 8 * v13));
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(this + 12));
  }

  *(this + 17) = v12;
  return v12;
}

void awd::metrics::LocationWifiAPLocationProviderSession::CheckTypeAndMergeFrom(awd::metrics::LocationWifiAPLocationProviderSession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationWifiAPLocationProviderSession::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationWifiAPLocationProviderSession::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationWifiAPLocationProviderSession::CopyFrom(awd::metrics::LocationWifiAPLocationProviderSession *this, const awd::metrics::LocationWifiAPLocationProviderSession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationWifiAPLocationProviderSession::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationWifiAPLocationProviderSession::Swap(uint64_t this, awd::metrics::LocationWifiAPLocationProviderSession *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 72);
    *(v3 + 72) = *(a2 + 18);
    *(a2 + 18) = v5;
    v6 = *(v3 + 68);
    *(v3 + 68) = *(a2 + 17);
    *(a2 + 17) = v6;
  }

  return this;
}

double awd::metrics::LocationWifiTileSync::SharedCtor(awd::metrics::LocationWifiTileSync *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationWifiTileSync *awd::metrics::LocationWifiTileSync::LocationWifiTileSync(awd::metrics::LocationWifiTileSync *this, const awd::metrics::LocationWifiTileSync *a2)
{
  *this = &unk_2A1D520B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  awd::metrics::LocationWifiTileSync::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationWifiTileSync::MergeFrom(awd::metrics::LocationWifiTileSync *this, const awd::metrics::LocationWifiTileSync *a2)
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

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 11) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v8 = *(a2 + 5);
    *(this + 11) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v9 = *(a2 + 6);
    *(this + 11) |= 8u;
    *(this + 6) = v9;
    v4 = *(a2 + 11);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 7);
    *(this + 11) |= 0x10u;
    *(this + 7) = v10;
    v4 = *(a2 + 11);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_18:
    v11 = *(a2 + 8);
    *(this + 11) |= 0x20u;
    *(this + 8) = v11;
    if ((*(a2 + 11) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 9);
    *(this + 11) |= 0x40u;
    *(this + 9) = v5;
  }
}

void sub_29647EA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationWifiTileSync::~LocationWifiTileSync(awd::metrics::LocationWifiTileSync *this)
{
  *this = &unk_2A1D520B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D520B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D520B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationWifiTileSync::default_instance(awd::metrics::LocationWifiTileSync *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationWifiTileSync::default_instance_;
  if (!awd::metrics::LocationWifiTileSync::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationAlsCacheTiles_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationWifiTileSync::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationWifiTileSync::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::LocationWifiTileSync::MergePartialFromCodedStream(awd::metrics::LocationWifiTileSync *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v11 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v11 >= v7 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          *(this + 11) |= 1u;
          if (v13 < v7 && *v13 == 16)
          {
            v16 = v13 + 1;
            *(a2 + 1) = v16;
            goto LABEL_39;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(a2 + 1);
          v7 = *(a2 + 2);
LABEL_39:
          if (v16 >= v7 || (v17 = *v16, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v17;
            v18 = v16 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 11) |= 2u;
          if (v18 < v7 && *v18 == 24)
          {
            v9 = v18 + 1;
            *(a2 + 1) = v9;
LABEL_47:
            if (v9 >= v7 || (v19 = *v9, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v19;
              v20 = v9 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 11) |= 4u;
            if (v20 < v7 && *v20 == 32)
            {
              v14 = v20 + 1;
              *(a2 + 1) = v14;
              goto LABEL_55;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v6 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_71;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_79;
        }

        goto LABEL_30;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_55:
      if (v14 >= v7 || (v21 = *v14, v21 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v21;
        v22 = v14 + 1;
        *(a2 + 1) = v22;
      }

      *(this + 11) |= 8u;
      if (v22 < v7 && *v22 == 40)
      {
        v8 = v22 + 1;
        *(a2 + 1) = v8;
LABEL_63:
        if (v8 >= v7 || (v23 = *v8, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v23;
          v24 = v8 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 11) |= 0x10u;
        if (v24 < v7 && *v24 == 48)
        {
          v15 = v24 + 1;
          *(a2 + 1) = v15;
LABEL_71:
          if (v15 >= v7 || (v25 = *v15, v25 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v26 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v25;
            v26 = v15 + 1;
            *(a2 + 1) = v26;
          }

          *(this + 11) |= 0x20u;
          if (v26 < v7 && *v26 == 56)
          {
            v10 = v26 + 1;
            *(a2 + 1) = v10;
LABEL_79:
            if (v10 >= v7 || (v27 = *v10, v27 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v28 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v27;
              v28 = v10 + 1;
              *(a2 + 1) = v28;
            }

            *(this + 11) |= 0x40u;
            if (v28 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_30:
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

uint64_t awd::metrics::LocationWifiTileSync::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[11];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[11];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[11];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
    if ((v5[11] & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[11];
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
  v7 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v7, a2, a4);
}

uint64_t awd::metrics::LocationWifiTileSync::ByteSize(awd::metrics::LocationWifiTileSync *this)
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
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 11);
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
      v2 = *(this + 11);
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
        goto LABEL_14;
      }

      goto LABEL_25;
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
    v2 = *(this + 11);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_25:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) != 0)
  {
LABEL_33:
    v14 = *(this + 9);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v3 = (v15 + v3);
  }

LABEL_37:
  *(this + 10) = v3;
  return v3;
}

void awd::metrics::LocationWifiTileSync::CheckTypeAndMergeFrom(awd::metrics::LocationWifiTileSync *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationWifiTileSync::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationWifiTileSync::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationWifiTileSync::CopyFrom(awd::metrics::LocationWifiTileSync *this, const awd::metrics::LocationWifiTileSync *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationWifiTileSync::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationWifiTileSync::Swap(uint64_t this, awd::metrics::LocationWifiTileSync *a2)
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

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFileUsage>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_29647F440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSessionDay>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_29647F4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFileUsage>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSessionDay>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFile>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFileUsage>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFileUsage>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFileUsage>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationTileFileUsage::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSessionDay>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationTileFile>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSessionDay>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSessionDay>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationSessionDay::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_MicroLocation_2eproto(awd::metrics *this)
{
  if (awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_ + 8))(awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_ + 8))(awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance_ + 8))(awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationEventHistogram::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationEventHistogram::default_instance_ + 8))(awd::metrics::LocationMicroLocationEventHistogram::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationClusteringByModel::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationClusteringByModel::default_instance_ + 8))(awd::metrics::LocationMicroLocationClusteringByModel::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationMetaData::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationMetaData::default_instance_ + 8))(awd::metrics::LocationMicroLocationMetaData::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationMeasurementStatistics::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationMeasurementStatistics::default_instance_ + 8))(awd::metrics::LocationMicroLocationMeasurementStatistics::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationUserEventStatistics::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationUserEventStatistics::default_instance_ + 8))(awd::metrics::LocationMicroLocationUserEventStatistics::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationEventClusteringStatistics::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationEventClusteringStatistics::default_instance_ + 8))(awd::metrics::LocationMicroLocationEventClusteringStatistics::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationLocalizationStatistics::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationLocalizationStatistics::default_instance_ + 8))(awd::metrics::LocationMicroLocationLocalizationStatistics::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationModelState::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationModelState::default_instance_ + 8))(awd::metrics::LocationMicroLocationModelState::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 8))(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationLearningState::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationLearningState::default_instance_ + 8))(awd::metrics::LocationMicroLocationLearningState::default_instance_);
  }

  if (awd::metrics::LocationMicroLocationAnalyticsState::default_instance_)
  {
    (*(*awd::metrics::LocationMicroLocationAnalyticsState::default_instance_ + 8))(awd::metrics::LocationMicroLocationAnalyticsState::default_instance_);
  }

  result = awd::metrics::LocationMicroLocationStatistics::default_instance_;
  if (awd::metrics::LocationMicroLocationStatistics::default_instance_)
  {
    v2 = *(*awd::metrics::LocationMicroLocationStatistics::default_instance_ + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "codegen/cpp/MicroLocation.pb.cc", a4);
    operator new();
  }
}

double awd::metrics::LocationMicroLocationSignificanceMetric::LocationMicroLocationSignificanceMetric(awd::metrics::LocationMicroLocationSignificanceMetric *this)
{
  *this = &unk_2A1D521E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_2A1D521E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double awd::metrics::LocationMicroLocationEventSignificanceMetric::LocationMicroLocationEventSignificanceMetric(awd::metrics::LocationMicroLocationEventSignificanceMetric *this)
{
  *this = &unk_2A1D52260;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_2A1D52260;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double awd::metrics::LocationMicroLocationEventTypeAndCount::LocationMicroLocationEventTypeAndCount(awd::metrics::LocationMicroLocationEventTypeAndCount *this)
{
  *&result = 1;
  *(this + 3) = 1;
  v2 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D522D8;
  *(this + 1) = v2;
  *(this + 2) = 0;
  *(this + 8) = 0;
  return result;
}

{
  *&result = 1;
  *(this + 3) = 1;
  v2 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D522D8;
  *(this + 1) = v2;
  *(this + 2) = 0;
  *(this + 8) = 0;
  return result;
}

double awd::metrics::LocationMicroLocationEventHistogram::LocationMicroLocationEventHistogram(awd::metrics::LocationMicroLocationEventHistogram *this)
{
  *this = &unk_2A1D52350;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_2A1D52350;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double awd::metrics::LocationMicroLocationClusteringByModel::LocationMicroLocationClusteringByModel(awd::metrics::LocationMicroLocationClusteringByModel *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D523C8;
  *(this + 6) = 0;
  result = NAN;
  *(this + 2) = xmmword_29649C1C0;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D523C8;
  *(this + 6) = 0;
  result = NAN;
  *(this + 2) = xmmword_29649C1C0;
  return result;
}

void *awd::metrics::LocationMicroLocationMetaData::LocationMicroLocationMetaData(void *this)
{
  *this = &unk_2A1D52440;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[5] = 0;
  this[6] = 0;
  this[4] = v1;
  return this;
}

{
  *this = &unk_2A1D52440;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[5] = 0;
  this[6] = 0;
  this[4] = v1;
  return this;
}

double awd::metrics::LocationMicroLocationMeasurementStatistics::LocationMicroLocationMeasurementStatistics(awd::metrics::LocationMicroLocationMeasurementStatistics *this)
{
  *this = &unk_2A1D524B8;
  *(this + 1) = 0;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

{
  *this = &unk_2A1D524B8;
  *(this + 1) = 0;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

double awd::metrics::LocationMicroLocationUserEventStatistics::LocationMicroLocationUserEventStatistics(awd::metrics::LocationMicroLocationUserEventStatistics *this)
{
  *this = &unk_2A1D52530;
  *(this + 1) = 0;
  *(this + 12) = -1;
  *(this + 23) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0;
  return result;
}

{
  *this = &unk_2A1D52530;
  *(this + 1) = 0;
  *(this + 12) = -1;
  *(this + 23) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0;
  return result;
}

double awd::metrics::LocationMicroLocationEventClusteringStatistics::LocationMicroLocationEventClusteringStatistics(awd::metrics::LocationMicroLocationEventClusteringStatistics *this)
{
  *this = &unk_2A1D525A8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *&result = 0xFFFFFFFFLL;
  *(this + 1) = 0xFFFFFFFFLL;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_2A1D525A8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *&result = 0xFFFFFFFFLL;
  *(this + 1) = 0xFFFFFFFFLL;
  *(this + 5) = 0;
  return result;
}

uint64_t awd::metrics::LocationMicroLocationLocalizationStatistics::LocationMicroLocationLocalizationStatistics(uint64_t this)
{
  *this = &unk_2A1D52620;
  *(this + 8) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0xFFFFFFFFLL;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_2A1D52620;
  *(this + 8) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0xFFFFFFFFLL;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationModelState::LocationMicroLocationModelState(uint64_t this)
{
  *(this + 44) = 0;
  *this = &unk_2A1D52698;
  *(this + 8) = 0;
  *(this + 16) = -1;
  *(this + 20) = 0;
  *(this + 36) = 0;
  *(this + 28) = 0;
  return this;
}

{
  *(this + 44) = 0;
  *this = &unk_2A1D52698;
  *(this + 8) = 0;
  *(this + 16) = -1;
  *(this + 20) = 0;
  *(this + 36) = 0;
  *(this + 28) = 0;
  return this;
}

double awd::metrics::LocationMicroLocationClusteringStatistics::LocationMicroLocationClusteringStatistics(awd::metrics::LocationMicroLocationClusteringStatistics *this)
{
  *this = &unk_2A1D52710;
  *(this + 1) = 0;
  *(this + 12) = -1;
  *(this + 21) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 76) = 0;
  return result;
}

{
  *this = &unk_2A1D52710;
  *(this + 1) = 0;
  *(this + 12) = -1;
  *(this + 21) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 76) = 0;
  return result;
}

uint64_t awd::metrics::LocationMicroLocationLearningState::LocationMicroLocationLearningState(uint64_t this)
{
  *this = &unk_2A1D52788;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFFLL;
  *(this + 40) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_2A1D52788;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFFLL;
  *(this + 40) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationAnalyticsState::LocationMicroLocationAnalyticsState(uint64_t this)
{
  *this = &unk_2A1D52800;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFFLL;
  *(this + 40) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_2A1D52800;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFFLL;
  *(this + 40) = 0;
  *(this + 16) = 0;
  return this;
}

double awd::metrics::LocationMicroLocationStatistics::LocationMicroLocationStatistics(awd::metrics::LocationMicroLocationStatistics *this)
{
  *this = &unk_2A1D52878;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 46) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 30) = 0;
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

{
  *this = &unk_2A1D52878;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 46) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 30) = 0;
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

void awd::metrics::LocationMicroLocationEventSignificanceMetric::InitAsDefaultInstance(awd::metrics::LocationMicroLocationEventSignificanceMetric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance_;
  if (!awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(this, a2, a3, a4);
    v5 = awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance_;
  }

  *(this + 4) = v5;
}

void *awd::metrics::LocationMicroLocationClusteringStatistics::InitAsDefaultInstance(void *this)
{
  v1 = this;
  v2 = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  if (awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_)
  {
    this[2] = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
LABEL_4:
    v1[3] = v2;
LABEL_5:
    v1[4] = v2;
LABEL_6:
    v1[5] = v2;
LABEL_7:
    v1[7] = v2;
LABEL_8:
    v1[8] = v2;
    goto LABEL_9;
  }

  this = awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(this);
  v2 = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  v1[2] = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  if (v2)
  {
    goto LABEL_4;
  }

  this = awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(this);
  v2 = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  v1[3] = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  if (v2)
  {
    goto LABEL_5;
  }

  this = awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(this);
  v2 = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  v1[4] = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  if (v2)
  {
    goto LABEL_6;
  }

  this = awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(this);
  v2 = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  v1[5] = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  if (v2)
  {
    goto LABEL_7;
  }

  this = awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(this);
  v2 = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  v1[7] = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  if (v2)
  {
    goto LABEL_8;
  }

  this = awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(this);
  v2 = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  v1[8] = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  if (!v2)
  {
    this = awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(this);
    v2 = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  }

LABEL_9:
  v1[9] = v2;
  return this;
}

void awd::metrics::LocationMicroLocationStatistics::InitAsDefaultInstance(awd::metrics::LocationMicroLocationStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = awd::metrics::LocationMicroLocationMetaData::default_instance_;
  if (!awd::metrics::LocationMicroLocationMetaData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(this, a2, a3, a4);
    v5 = awd::metrics::LocationMicroLocationMetaData::default_instance_;
  }

  *(this + 2) = v5;
}

double awd::metrics::LocationMicroLocationSignificanceMetric::SharedCtor(awd::metrics::LocationMicroLocationSignificanceMetric *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationMicroLocationSignificanceMetric *awd::metrics::LocationMicroLocationSignificanceMetric::LocationMicroLocationSignificanceMetric(awd::metrics::LocationMicroLocationSignificanceMetric *this, const awd::metrics::LocationMicroLocationSignificanceMetric *a2)
{
  *this = &unk_2A1D521E8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(awd::metrics::LocationMicroLocationSignificanceMetric *this, const awd::metrics::LocationMicroLocationSignificanceMetric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v7;
    if ((*(a2 + 9) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = v5;
  }
}

void sub_296480984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationSignificanceMetric::~LocationMicroLocationSignificanceMetric(awd::metrics::LocationMicroLocationSignificanceMetric *this)
{
  *this = &unk_2A1D521E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D521E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D521E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationSignificanceMetric::default_instance(awd::metrics::LocationMicroLocationSignificanceMetric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  if (!awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationSignificanceMetric::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationSignificanceMetric::Clear(uint64_t this)
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

uint64_t awd::metrics::LocationMicroLocationSignificanceMetric::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationSignificanceMetric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 9) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 9) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 9) |= 4u;
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

uint64_t awd::metrics::LocationMicroLocationSignificanceMetric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::LocationMicroLocationSignificanceMetric::ByteSize(awd::metrics::LocationMicroLocationSignificanceMetric *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_7:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 9);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_10:
  *(this + 8) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationSignificanceMetric::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationSignificanceMetric *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationSignificanceMetric::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationSignificanceMetric::CopyFrom(awd::metrics::LocationMicroLocationSignificanceMetric *this, const awd::metrics::LocationMicroLocationSignificanceMetric *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMicroLocationSignificanceMetric::Swap(uint64_t this, awd::metrics::LocationMicroLocationSignificanceMetric *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return this;
}

double awd::metrics::LocationMicroLocationEventSignificanceMetric::SharedCtor(awd::metrics::LocationMicroLocationEventSignificanceMetric *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

uint64_t awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance(awd::metrics::LocationMicroLocationEventTypeAndCount *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance_;
  if (!awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationEventTypeAndCount::default_instance_;
  }

  return result;
}

awd::metrics::LocationMicroLocationEventSignificanceMetric *awd::metrics::LocationMicroLocationEventSignificanceMetric::LocationMicroLocationEventSignificanceMetric(awd::metrics::LocationMicroLocationEventSignificanceMetric *this, const awd::metrics::LocationMicroLocationEventSignificanceMetric *a2)
{
  *this = &unk_2A1D52260;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  awd::metrics::LocationMicroLocationEventSignificanceMetric::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationEventSignificanceMetric::MergeFrom(awd::metrics::LocationMicroLocationEventSignificanceMetric *this, const awd::metrics::LocationMicroLocationEventSignificanceMetric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v8 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v8;
      v4 = *(a2 + 12);
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

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 2);
    *(this + 12) |= 2u;
    *(this + 2) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_18:
    v10 = *(a2 + 10);
    if (v10 >= 5)
    {
      awd::metrics::LocationMicroLocationEventSignificanceMetric::MergeFrom();
    }

    *(this + 12) |= 4u;
    *(this + 10) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v5 = *(a2 + 3);
    *(this + 12) |= 8u;
    *(this + 3) = v5;
    v4 = *(a2 + 12);
LABEL_9:
    if ((v4 & 0x10) != 0)
    {
      *(this + 12) |= 0x10u;
      v6 = *(this + 4);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 4);
      if (!v7)
      {
        v7 = *(awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_ + 32);
      }

      awd::metrics::LocationMicroLocationEventTypeAndCount::MergeFrom(v6, v7);
    }
  }
}

void sub_2964811A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationEventSignificanceMetric::~LocationMicroLocationEventSignificanceMetric(awd::metrics::LocationMicroLocationEventSignificanceMetric *this)
{
  *this = &unk_2A1D52260;
  if (awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_ != this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationMicroLocationEventSignificanceMetric::~LocationMicroLocationEventSignificanceMetric(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationMicroLocationEventSignificanceMetric::SharedDtor(void *this)
{
  if (awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_ != this)
  {
    this = this[4];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance(awd::metrics::LocationMicroLocationEventSignificanceMetric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_;
  if (!awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationEventSignificanceMetric::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (v2)
  {
    *(this + 40) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    if ((v2 & 0x10) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = awd::metrics::LocationMicroLocationEventTypeAndCount::Clear(this);
      }
    }
  }

  *(v1 + 48) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationEventTypeAndCount::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 24) = 1;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
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

    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationEventSignificanceMetric::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationEventSignificanceMetric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 12) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(a2 + 1) = v10;
LABEL_32:
            if (v10 >= v9 || (v16 = *v10, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v16;
              v17 = v10 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 12) |= 2u;
            if (v17 < v9 && *v17 == 24)
            {
              v11 = v17 + 1;
              *(a2 + 1) = v11;
LABEL_40:
              v28[0] = 0;
              if (v11 >= v9 || (v18 = *v11, (v18 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
                if (!result)
                {
                  return result;
                }

                v18 = v28[0];
              }

              else
              {
                *(a2 + 1) = v11 + 1;
              }

              if (v18 <= 4)
              {
                *(this + 12) |= 4u;
                *(this + 10) = v18;
              }

              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 33)
              {
                *(a2 + 1) = v19 + 1;
                goto LABEL_50;
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

          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_40;
        }

        if (v6 == 4)
        {
          break;
        }

        if (v6 == 5 && v7 == 2)
        {
          v8 = *(this + 12);
          goto LABEL_54;
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

      if (v7 != 1)
      {
        goto LABEL_21;
      }

LABEL_50:
      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v28) & 1) == 0)
      {
        return 0;
      }

      *(this + 3) = *v28;
      v8 = *(this + 12) | 8;
      *(this + 12) = v8;
      v20 = *(a2 + 1);
    }

    while (v20 >= *(a2 + 2) || *v20 != 42);
    *(a2 + 1) = v20 + 1;
LABEL_54:
    *(this + 12) = v8 | 0x10;
    v21 = *(this + 4);
    if (!v21)
    {
      operator new();
    }

    v28[0] = 0;
    v22 = *(a2 + 1);
    if (v22 >= *(a2 + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v22;
      *(a2 + 1) = v22 + 1;
    }

    v23 = *(a2 + 14);
    v24 = *(a2 + 15);
    *(a2 + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::LocationMicroLocationEventTypeAndCount::MergePartialFromCodedStream(v21, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v25 = *(a2 + 14);
    v26 = __OFSUB__(v25, 1);
    v27 = v25 - 1;
    if (v27 < 0 == v26)
    {
      *(a2 + 14) = v27;
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

uint64_t awd::metrics::LocationMicroLocationEventSignificanceMetric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 40), a2, a4);
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
  v7 = *(v5 + 32);
  if (!v7)
  {
    v7 = *(awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_ + 32);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v7, a2, a4);
}

uint64_t awd::metrics::LocationMicroLocationEventSignificanceMetric::ByteSize(awd::metrics::LocationMicroLocationEventSignificanceMetric *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if ((*(this + 48) & 1) == 0)
  {
    LODWORD(v3) = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LODWORD(v3) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 12);
  if ((v2 & 2) != 0)
  {
LABEL_7:
    LODWORD(v3) = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 12);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v4 = *(this + 10);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v5 = 2;
    }

    LODWORD(v3) = v5 + v3;
  }

  if ((v2 & 8) != 0)
  {
    v3 = (v3 + 9);
  }

  else
  {
    v3 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v6 = *(this + 4);
    if (!v6)
    {
      v6 = *(awd::metrics::LocationMicroLocationEventSignificanceMetric::default_instance_ + 32);
    }

    v7 = awd::metrics::LocationMicroLocationEventTypeAndCount::ByteSize(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v3 = (v3 + v8 + v9 + 1);
  }

LABEL_25:
  *(this + 11) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationEventSignificanceMetric::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationEventSignificanceMetric *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationEventSignificanceMetric::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationEventSignificanceMetric::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationEventTypeAndCount::MergeFrom(awd::metrics::LocationMicroLocationEventTypeAndCount *this, const awd::metrics::LocationMicroLocationEventTypeAndCount *a2)
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
      v5 = *(a2 + 6);
      if ((v5 - 1) >= 0xA)
      {
        awd::metrics::LocationMicroLocationEventTypeAndCount::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v8;
    }
  }
}

void sub_296481B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationEventSignificanceMetric::CopyFrom(awd::metrics::LocationMicroLocationEventSignificanceMetric *this, const awd::metrics::LocationMicroLocationEventSignificanceMetric *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationEventSignificanceMetric::MergeFrom(this, a2);
  }
}

double awd::metrics::LocationMicroLocationEventSignificanceMetric::Swap(awd::metrics::LocationMicroLocationEventSignificanceMetric *this, awd::metrics::LocationMicroLocationEventSignificanceMetric *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
  }

  return result;
}

double awd::metrics::LocationMicroLocationEventTypeAndCount::SharedCtor(awd::metrics::LocationMicroLocationEventTypeAndCount *this)
{
  *&result = 1;
  *(this + 3) = 1;
  *(this + 1) = MEMORY[0x29EDC9758];
  *(this + 2) = 0;
  *(this + 8) = 0;
  return result;
}

awd::metrics::LocationMicroLocationEventTypeAndCount *awd::metrics::LocationMicroLocationEventTypeAndCount::LocationMicroLocationEventTypeAndCount(awd::metrics::LocationMicroLocationEventTypeAndCount *this, const awd::metrics::LocationMicroLocationEventTypeAndCount *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = 1;
  *this = &unk_2A1D522D8;
  *(this + 1) = v3;
  *(this + 2) = 0;
  *(this + 8) = 0;
  awd::metrics::LocationMicroLocationEventTypeAndCount::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationEventTypeAndCount::~LocationMicroLocationEventTypeAndCount(awd::metrics::LocationMicroLocationEventTypeAndCount *this)
{
  *this = &unk_2A1D522D8;
  awd::metrics::LocationMicroLocationEventTypeAndCount::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D522D8;
  awd::metrics::LocationMicroLocationEventTypeAndCount::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D522D8;
  awd::metrics::LocationMicroLocationEventTypeAndCount::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationEventTypeAndCount::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationMicroLocationEventTypeAndCount::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationEventTypeAndCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_34;
        }

        goto LABEL_17;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v18 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
        if (!result)
        {
          return result;
        }

        v10 = v18;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 1 <= 9)
      {
        *(this + 8) |= 1u;
        *(this + 6) = v10;
      }

      v13 = *(a2 + 1);
      if (v13 < *(a2 + 2) && *v13 == 18)
      {
        *(a2 + 1) = v13 + 1;
LABEL_28:
        *(this + 8) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v14 < v11 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_34:
          if (v12 >= v11 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 4u;
          if (v16 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_28;
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

uint64_t awd::metrics::LocationMicroLocationEventTypeAndCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(v5 + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v8, a2, a4);
}

uint64_t awd::metrics::LocationMicroLocationEventTypeAndCount::ByteSize(awd::metrics::LocationMicroLocationEventTypeAndCount *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
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
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v2 = *(this + 8);
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

    v3 = (v3 + v10 + v6 + 1);
    goto LABEL_22;
  }

  v4 = *(this + 6);
  if ((v4 & 0x80000000) != 0)
  {
    v3 = 11;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_24:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationEventTypeAndCount::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationEventTypeAndCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationEventTypeAndCount::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationEventTypeAndCount::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationEventTypeAndCount::CopyFrom(awd::metrics::LocationMicroLocationEventTypeAndCount *this, const awd::metrics::LocationMicroLocationEventTypeAndCount *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationEventTypeAndCount::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMicroLocationEventTypeAndCount::Swap(uint64_t this, awd::metrics::LocationMicroLocationEventTypeAndCount *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 8);
    v4 = *(this + 16);
    v5 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v5;
    *(a2 + 1) = v3;
    *(a2 + 2) = v4;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

void *awd::metrics::LocationMicroLocationEventHistogram::SharedCtor(void *this)
{
  this[6] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

awd::metrics::LocationMicroLocationEventHistogram *awd::metrics::LocationMicroLocationEventHistogram::LocationMicroLocationEventHistogram(awd::metrics::LocationMicroLocationEventHistogram *this, const awd::metrics::LocationMicroLocationEventHistogram *a2)
{
  *this = &unk_2A1D52350;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::LocationMicroLocationEventHistogram::MergeFrom(this, a2);
  return this;
}

void sub_296482494(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventTypeAndCount>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationEventHistogram::MergeFrom(awd::metrics::LocationMicroLocationEventHistogram *this, const awd::metrics::LocationMicroLocationEventHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(this + 8);
  v5 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v6) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
      }

      v8 = *(*(a2 + 3) + 8 * v7);
      v9 = *(this + 9);
      v10 = *(this + 8);
      if (v10 >= v9)
      {
        if (v9 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v9 = *(this + 9);
        }

        *(this + 9) = v9 + 1;
        operator new();
      }

      v11 = *(this + 3);
      *(this + 8) = v10 + 1;
      awd::metrics::LocationMicroLocationEventTypeAndCount::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 52);
  if (v12)
  {
    if (*(a2 + 52))
    {
      v13 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v13;
      v12 = *(a2 + 13);
    }

    if ((v12 & 2) != 0)
    {
      v14 = *(a2 + 2);
      *(this + 13) |= 2u;
      *(this + 2) = v14;
    }
  }
}

void sub_2964826C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationEventHistogram::~LocationMicroLocationEventHistogram(awd::metrics::LocationMicroLocationEventHistogram *this)
{
  *this = &unk_2A1D52350;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventTypeAndCount>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationMicroLocationEventHistogram::~LocationMicroLocationEventHistogram(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationEventHistogram::default_instance(awd::metrics::LocationMicroLocationEventHistogram *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationEventHistogram::default_instance_;
  if (!awd::metrics::LocationMicroLocationEventHistogram::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationEventHistogram::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationEventHistogram::Clear(awd::metrics::LocationMicroLocationEventHistogram *this)
{
  if (*(this + 52))
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventTypeAndCount>::TypeHandler>(this + 24);
  *(this + 13) = 0;
  return result;
}

uint64_t awd::metrics::LocationMicroLocationEventHistogram::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationEventHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 2)
        {
          goto LABEL_32;
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

      *(this + 13) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_24:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 13) |= 2u;
        if (v15 < v8 && *v15 == 26)
        {
          do
          {
            *(a2 + 1) = v15 + 1;
LABEL_32:
            v16 = *(this + 9);
            v17 = *(this + 8);
            if (v17 >= v16)
            {
              if (v16 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v16 = *(this + 9);
              }

              *(this + 9) = v16 + 1;
              operator new();
            }

            v18 = *(this + 3);
            *(this + 8) = v17 + 1;
            v19 = *(v18 + 8 * v17);
            v27 = 0;
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
            if (!awd::metrics::LocationMicroLocationEventTypeAndCount::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
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

            v15 = *(a2 + 1);
            v26 = *(a2 + 2);
          }

          while (v15 < v26 && *v15 == 26);
          if (v15 == v26 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_16:
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

uint64_t awd::metrics::LocationMicroLocationEventHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationEventHistogram::ByteSize(awd::metrics::LocationMicroLocationEventHistogram *this)
{
  if (!*(this + 52))
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (*(this + 52))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 13) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((*(this + 52) & 2) != 0)
  {
LABEL_7:
    v2 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_8:
  v3 = *(this + 8);
  v4 = (v3 + v2);
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = awd::metrics::LocationMicroLocationEventTypeAndCount::ByteSize(*(*(this + 3) + 8 * v5));
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v4 = (v7 + v4 + v8);
      ++v5;
    }

    while (v5 < *(this + 8));
  }

  *(this + 12) = v4;
  return v4;
}

void awd::metrics::LocationMicroLocationEventHistogram::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationEventHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationEventHistogram::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationEventHistogram::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationEventHistogram::CopyFrom(awd::metrics::LocationMicroLocationEventHistogram *this, const awd::metrics::LocationMicroLocationEventHistogram *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationEventHistogram::MergeFrom(this, a2);
  }
}

awd::metrics::LocationMicroLocationEventHistogram *awd::metrics::LocationMicroLocationEventHistogram::Swap(awd::metrics::LocationMicroLocationEventHistogram *this, awd::metrics::LocationMicroLocationEventHistogram *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v6;
    v7 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
  }

  return this;
}

double awd::metrics::LocationMicroLocationClusteringByModel::SharedCtor(awd::metrics::LocationMicroLocationClusteringByModel *this)
{
  result = NAN;
  *(this + 2) = xmmword_29649C1C0;
  return result;
}

awd::metrics::LocationMicroLocationClusteringByModel *awd::metrics::LocationMicroLocationClusteringByModel::LocationMicroLocationClusteringByModel(awd::metrics::LocationMicroLocationClusteringByModel *this, const awd::metrics::LocationMicroLocationClusteringByModel *a2)
{
  *(this + 1) = 0;
  *this = &unk_2A1D523C8;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 2) = xmmword_29649C1C0;
  awd::metrics::LocationMicroLocationClusteringByModel::MergeFrom(this, a2);
  return this;
}

void sub_296482F04(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventHistogram>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationClusteringByModel::MergeFrom(awd::metrics::LocationMicroLocationClusteringByModel *this, const awd::metrics::LocationMicroLocationClusteringByModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventHistogram>::TypeHandler>((this + 8), a2 + 8);
  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 8);
      if (v5 >= 2)
      {
        awd::metrics::LocationMicroLocationClusteringByModel::MergeFrom();
      }

      *(this + 11) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 4) != 0)
    {
      v6 = *(a2 + 9);
      if ((v6 + 1) >= 3)
      {
        awd::metrics::LocationMicroLocationClusteringByModel::MergeFrom();
      }

      *(this + 11) |= 4u;
      *(this + 9) = v6;
    }
  }
}

void sub_296482FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationClusteringByModel::~LocationMicroLocationClusteringByModel(awd::metrics::LocationMicroLocationClusteringByModel *this)
{
  *this = &unk_2A1D523C8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventHistogram>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationMicroLocationClusteringByModel::~LocationMicroLocationClusteringByModel(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationClusteringByModel::default_instance(awd::metrics::LocationMicroLocationClusteringByModel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationClusteringByModel::default_instance_;
  if (!awd::metrics::LocationMicroLocationClusteringByModel::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationClusteringByModel::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationClusteringByModel::Clear(awd::metrics::LocationMicroLocationClusteringByModel *this)
{
  if (*(this + 44))
  {
    *(this + 4) = 0xFFFFFFFF00000000;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventHistogram>::TypeHandler>(this + 8);
  *(this + 11) = 0;
  return result;
}

uint64_t awd::metrics::LocationMicroLocationClusteringByModel::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationClusteringByModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_45;
        }

LABEL_16:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v27 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
        if (!result)
        {
          return result;
        }

        v9 = v27;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 <= 1)
      {
        *(this + 11) |= 1u;
        *(this + 8) = v9;
      }

      v13 = *(a2 + 1);
      if (v13 < *(a2 + 2) && *v13 == 18)
      {
LABEL_48:
        *(a2 + 1) = v13 + 1;
        goto LABEL_27;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_16;
    }

LABEL_27:
    v14 = *(this + 5);
    v15 = *(this + 4);
    if (v15 >= v14)
    {
      if (v14 == *(this + 6))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
        v14 = *(this + 5);
      }

      *(this + 5) = v14 + 1;
      operator new();
    }

    v16 = *(this + 1);
    *(this + 4) = v15 + 1;
    v17 = *(v16 + 8 * v15);
    v28 = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
      {
        return 0;
      }
    }

    else
    {
      v28 = *v18;
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
    if (!awd::metrics::LocationMicroLocationEventHistogram::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
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

    v13 = *(a2 + 1);
    v11 = *(a2 + 2);
    if (v13 < v11)
    {
      v24 = *v13;
      if (v24 == 18)
      {
        goto LABEL_48;
      }

      if (v24 == 24)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_45:
        v26 = 0;
        if (v10 >= v11 || (v25 = *v10, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
          if (!result)
          {
            return result;
          }

          v25 = v26;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v25 + 1 <= 2)
        {
          *(this + 11) |= 4u;
          *(this + 9) = v25;
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

uint64_t awd::metrics::LocationMicroLocationClusteringByModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 32), a2, a4);
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

  if ((*(v5 + 44) & 4) != 0)
  {
    v7 = *(v5 + 36);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationClusteringByModel::ByteSize(awd::metrics::LocationMicroLocationClusteringByModel *this)
{
  v2 = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(this + 44))
  {
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 4) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      if ((*(this + 11) & 4) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 4) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 4) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(this + 9);
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

  v3 += v6;
LABEL_19:
  v7 = *(this + 4);
  v8 = (v7 + v3);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = awd::metrics::LocationMicroLocationEventHistogram::ByteSize(*(*(this + 1) + 8 * v9));
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      }

      else
      {
        v12 = 1;
      }

      v8 = (v11 + v8 + v12);
      ++v9;
    }

    while (v9 < *(this + 4));
  }

  *(this + 10) = v8;
  return v8;
}

void awd::metrics::LocationMicroLocationClusteringByModel::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationClusteringByModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationClusteringByModel::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationClusteringByModel::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationClusteringByModel::CopyFrom(awd::metrics::LocationMicroLocationClusteringByModel *this, const awd::metrics::LocationMicroLocationClusteringByModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationClusteringByModel::MergeFrom(this, a2);
  }
}

awd::metrics::LocationMicroLocationClusteringByModel *awd::metrics::LocationMicroLocationClusteringByModel::Swap(awd::metrics::LocationMicroLocationClusteringByModel *this, awd::metrics::LocationMicroLocationClusteringByModel *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
    v7 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
  }

  return this;
}

double awd::metrics::LocationMicroLocationMetaData::SharedCtor(awd::metrics::LocationMicroLocationMetaData *this, __n128 a2)
{
  a2.n128_u64[0] = 0;
  *(this + 1) = 0;
  *(this + 4) = MEMORY[0x29EDC9758];
  *(this + 40) = a2;
  return a2.n128_f64[0];
}

awd::metrics::LocationMicroLocationMetaData *awd::metrics::LocationMicroLocationMetaData::LocationMicroLocationMetaData(awd::metrics::LocationMicroLocationMetaData *this, const awd::metrics::LocationMicroLocationMetaData *a2)
{
  *this = &unk_2A1D52440;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = v3;
  awd::metrics::LocationMicroLocationMetaData::MergeFrom(this, a2);
  return this;
}

void sub_2964838A0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationMetaData::MergeFrom(awd::metrics::LocationMicroLocationMetaData *this, const awd::metrics::LocationMicroLocationMetaData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
    {
      v7 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v7;
      v5 = *(a2 + 13);
      if ((v5 & 4) == 0)
      {
LABEL_8:
        if ((v5 & 8) == 0)
        {
          return;
        }

        goto LABEL_9;
      }
    }

    else if ((*(a2 + 52) & 4) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 4);
    *(this + 13) |= 4u;
    v9 = *(this + 4);
    if (v9 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    if ((*(a2 + 13) & 8) != 0)
    {
LABEL_9:
      v6 = *(a2 + 5);
      *(this + 13) |= 8u;
      *(this + 5) = v6;
    }
  }
}

void sub_296483A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationMetaData::~LocationMicroLocationMetaData(awd::metrics::LocationMicroLocationMetaData *this)
{
  *this = &unk_2A1D52440;
  awd::metrics::LocationMicroLocationMetaData::SharedDtor(this);
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationMicroLocationMetaData::~LocationMicroLocationMetaData(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationMetaData::SharedDtor(uint64_t this)
{
  v1 = *(this + 32);
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

uint64_t awd::metrics::LocationMicroLocationMetaData::default_instance(awd::metrics::LocationMicroLocationMetaData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationMetaData::default_instance_;
  if (!awd::metrics::LocationMicroLocationMetaData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationMetaData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationMetaData::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 32);
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

    *(this + 40) = 0;
  }

  *(this + 24) = 0;
  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationMetaData::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationMetaData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v7 == 3)
        {
          if (v8 != 2)
          {
            goto LABEL_23;
          }

LABEL_45:
          *(this + 13) |= 4u;
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
          v10 = *(a2 + 2);
          if (v21 < v10 && *v21 == 32)
          {
            v11 = v21 + 1;
            *(a2 + 1) = v11;
            goto LABEL_51;
          }
        }

        else
        {
          if (v7 != 4 || (TagFallback & 7) != 0)
          {
            goto LABEL_23;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_51:
          if (v11 >= v10 || (v22 = *v11, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v23 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v22;
            v23 = v11 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 13) |= 8u;
          if (v23 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        goto LABEL_23;
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
        v15 = (v13 + 1);
        *(a2 + 1) = v15;
      }

      *(this + 13) |= 1u;
      if (v15 < v12)
      {
        v17 = *v15;
        while (v17 == 16)
        {
          v16 = (v15 + 1);
          *(a2 + 1) = v16;
LABEL_33:
          v24 = 0;
          if (v16 >= v12 || (v18 = *v16, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
            if (!result)
            {
              return result;
            }

            v18 = v24;
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          if (v18 + 1 <= 2)
          {
            v19 = *(this + 6);
            if (v19 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 2, v19 + 1);
              v19 = *(this + 6);
            }

            v20 = *(this + 2);
            *(this + 6) = v19 + 1;
            *(v20 + 4 * v19) = v18;
          }

LABEL_42:
          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v15 >= v12)
          {
            break;
          }

          v17 = *v15;
          if (v17 == 26)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_45;
          }
        }
      }
    }

    if (v7 == 2)
    {
      if ((TagFallback & 7) == 0)
      {
        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_33;
      }

      if (v8 == 2)
      {
        break;
      }
    }

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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
  if (result)
  {
    goto LABEL_42;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationMetaData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 52))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 52);
  if ((v7 & 4) != 0)
  {
    v8 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v7 = *(v5 + 52);
  }

  if ((v7 & 8) != 0)
  {
    v9 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v9, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationMetaData::ByteSize(awd::metrics::LocationMicroLocationMetaData *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
    if ((v2 & 4) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
    v4 = *(this + 4);
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

    v3 += v9 + v5 + 1;
    goto LABEL_16;
  }

  v3 = 0;
  if ((*(this + 52) & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v2 & 8) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  }

LABEL_18:
  v10 = *(this + 6);
  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*(this + 2) + 4 * v11);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 10;
      }

      else if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
        v10 = *(this + 6);
      }

      else
      {
        v14 = 1;
      }

      v12 += v14;
      ++v11;
    }

    while (v11 < v10);
  }

  result = (v12 + v3 + v10);
  *(this + 12) = result;
  return result;
}

void awd::metrics::LocationMicroLocationMetaData::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationMetaData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationMetaData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationMetaData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationMetaData::CopyFrom(awd::metrics::LocationMicroLocationMetaData *this, const awd::metrics::LocationMicroLocationMetaData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationMetaData::MergeFrom(this, a2);
  }
}

double awd::metrics::LocationMicroLocationMetaData::Swap(awd::metrics::LocationMicroLocationMetaData *this, awd::metrics::LocationMicroLocationMetaData *a2)
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
    v5 = *(this + 4);
    v6 = *(this + 5);
    v7 = *(a2 + 5);
    *(this + 4) = *(a2 + 4);
    *(this + 5) = v7;
    result = *(a2 + 3);
    v9 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v9;
    *(a2 + 4) = v5;
    *(a2 + 5) = v6;
    LODWORD(v5) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return result;
}

double awd::metrics::LocationMicroLocationMeasurementStatistics::SharedCtor(awd::metrics::LocationMicroLocationMeasurementStatistics *this)
{
  *(this + 1) = 0;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

awd::metrics::LocationMicroLocationMeasurementStatistics *awd::metrics::LocationMicroLocationMeasurementStatistics::LocationMicroLocationMeasurementStatistics(awd::metrics::LocationMicroLocationMeasurementStatistics *this, const awd::metrics::LocationMicroLocationMeasurementStatistics *a2)
{
  *this = &unk_2A1D524B8;
  *(this + 1) = 0;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 18) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  awd::metrics::LocationMicroLocationMeasurementStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationMeasurementStatistics::MergeFrom(awd::metrics::LocationMicroLocationMeasurementStatistics *this, const awd::metrics::LocationMicroLocationMeasurementStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 72);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 72))
  {
    v5 = *(a2 + 1);
    *(this + 18) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 18);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 16);
    if ((v6 + 1) >= 3)
    {
      awd::metrics::LocationMicroLocationMeasurementStatistics::MergeFrom();
    }

    *(this + 18) |= 2u;
    *(this + 16) = v6;
    v4 = *(a2 + 18);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 18) |= 4u;
    *(this + 2) = v8;
    v4 = *(a2 + 18);
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(a2 + 3);
  *(this + 18) |= 8u;
  *(this + 3) = v9;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    v11 = *(a2 + 5);
    *(this + 18) |= 0x20u;
    *(this + 5) = v11;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_19:
  v10 = *(a2 + 4);
  *(this + 18) |= 0x10u;
  *(this + 4) = v10;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v12 = *(a2 + 6);
  *(this + 18) |= 0x40u;
  *(this + 6) = v12;
  if ((*(a2 + 18) & 0x80) != 0)
  {
LABEL_15:
    v7 = *(a2 + 7);
    *(this + 18) |= 0x80u;
    *(this + 7) = v7;
  }
}

void sub_2964844D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationMeasurementStatistics::~LocationMicroLocationMeasurementStatistics(awd::metrics::LocationMicroLocationMeasurementStatistics *this)
{
  *this = &unk_2A1D524B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D524B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D524B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationMeasurementStatistics::default_instance(awd::metrics::LocationMicroLocationMeasurementStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationMeasurementStatistics::default_instance_;
  if (!awd::metrics::LocationMicroLocationMeasurementStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationMeasurementStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationMeasurementStatistics::Clear(uint64_t this)
{
  if (*(this + 72))
  {
    *(this + 8) = 0;
    *(this + 64) = -1;
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    *(this + 48) = 0u;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationMeasurementStatistics::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationMeasurementStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 6)
        {
          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_85;
            }
          }

          else if (v6 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_93;
          }
        }

        else if (v6 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_69;
          }
        }

        else if (v6 == 6 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_77;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_53;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_61;
        }

        goto LABEL_34;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v13 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v13 >= v7 || (v14 = *v13, v14 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v14;
        v15 = v13 + 1;
        *(a2 + 1) = v15;
      }

      *(this + 18) |= 1u;
      if (v15 < v7 && *v15 == 16)
      {
        v8 = v15 + 1;
        *(a2 + 1) = v8;
LABEL_43:
        v34 = 0;
        if (v8 >= v7 || (v19 = *v8, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
          if (!result)
          {
            return result;
          }

          v19 = v34;
        }

        else
        {
          *(a2 + 1) = v8 + 1;
        }

        if (v19 + 1 <= 2)
        {
          *(this + 18) |= 2u;
          *(this + 16) = v19;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v20 < v9 && *v20 == 24)
        {
          v17 = v20 + 1;
          *(a2 + 1) = v17;
LABEL_53:
          if (v17 >= v9 || (v21 = *v17, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v21;
            v22 = v17 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 18) |= 4u;
          if (v22 < v9 && *v22 == 32)
          {
            v11 = v22 + 1;
            *(a2 + 1) = v11;
LABEL_61:
            if (v11 >= v9 || (v23 = *v11, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v23;
              v24 = v11 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 18) |= 8u;
            if (v24 < v9 && *v24 == 40)
            {
              v16 = v24 + 1;
              *(a2 + 1) = v16;
LABEL_69:
              if (v16 >= v9 || (v25 = *v16, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v25;
                v26 = v16 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 18) |= 0x10u;
              if (v26 < v9 && *v26 == 48)
              {
                v10 = v26 + 1;
                *(a2 + 1) = v10;
LABEL_77:
                if (v10 >= v9 || (v27 = *v10, v27 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v28 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v27;
                  v28 = v10 + 1;
                  *(a2 + 1) = v28;
                }

                *(this + 18) |= 0x20u;
                if (v28 < v9 && *v28 == 56)
                {
                  v18 = v28 + 1;
                  *(a2 + 1) = v18;
LABEL_85:
                  if (v18 >= v9 || (v29 = *v18, v29 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
                    if (!result)
                    {
                      return result;
                    }

                    v30 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 6) = v29;
                    v30 = v18 + 1;
                    *(a2 + 1) = v30;
                  }

                  *(this + 18) |= 0x40u;
                  if (v30 < v9 && *v30 == 64)
                  {
                    v12 = v30 + 1;
                    *(a2 + 1) = v12;
LABEL_93:
                    if (v12 >= v9 || (v31 = *v12, v31 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                      if (!result)
                      {
                        return result;
                      }

                      v32 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 7) = v31;
                      v32 = v12 + 1;
                      *(a2 + 1) = v32;
                    }

                    *(this + 18) |= 0x80u;
                    if (v32 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_34:
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

uint64_t awd::metrics::LocationMicroLocationMeasurementStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 48), a2, a4);
    if ((*(v5 + 72) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
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
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, v7, a2, a4);
}

uint64_t awd::metrics::LocationMicroLocationMeasurementStatistics::ByteSize(awd::metrics::LocationMicroLocationMeasurementStatistics *this)
{
  LOBYTE(v2) = *(this + 72);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_20;
  }

  if (*(this + 72))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 18);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 16);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_13:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 18);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 18);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v2 = *(this + 18);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    if ((*(this + 18) & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_24:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v2 = *(this + 18);
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  if ((v2 & 0x80) != 0)
  {
LABEL_19:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

LABEL_20:
  *(this + 17) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationMeasurementStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationMeasurementStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationMeasurementStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationMeasurementStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationMeasurementStatistics::CopyFrom(awd::metrics::LocationMicroLocationMeasurementStatistics *this, const awd::metrics::LocationMicroLocationMeasurementStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationMeasurementStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMicroLocationMeasurementStatistics::Swap(uint64_t this, awd::metrics::LocationMicroLocationMeasurementStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v8;
    LODWORD(v8) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v8;
  }

  return this;
}

double awd::metrics::LocationMicroLocationUserEventStatistics::SharedCtor(awd::metrics::LocationMicroLocationUserEventStatistics *this)
{
  *(this + 1) = 0;
  *(this + 12) = -1;
  *(this + 23) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 84) = 0;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  return result;
}

awd::metrics::LocationMicroLocationUserEventStatistics *awd::metrics::LocationMicroLocationUserEventStatistics::LocationMicroLocationUserEventStatistics(awd::metrics::LocationMicroLocationUserEventStatistics *this, const awd::metrics::LocationMicroLocationUserEventStatistics *a2)
{
  *this = &unk_2A1D52530;
  *(this + 1) = 0;
  *(this + 12) = -1;
  *(this + 23) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0;
  awd::metrics::LocationMicroLocationUserEventStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationUserEventStatistics::MergeFrom(awd::metrics::LocationMicroLocationUserEventStatistics *this, const awd::metrics::LocationMicroLocationUserEventStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 23);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 23) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 23);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 12);
    if ((v6 + 1) >= 3)
    {
      awd::metrics::LocationMicroLocationUserEventStatistics::MergeFrom();
    }

    *(this + 23) |= 2u;
    *(this + 12) = v6;
    v4 = *(a2 + 23);
  }

  if ((v4 & 4) != 0)
  {
    v11 = *(a2 + 2);
    *(this + 23) |= 4u;
    *(this + 2) = v11;
    v4 = *(a2 + 23);
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

  v12 = *(a2 + 3);
  *(this + 23) |= 8u;
  *(this + 3) = v12;
  v4 = *(a2 + 23);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    v14 = *(a2 + 5);
    *(this + 23) |= 0x20u;
    *(this + 5) = v14;
    v4 = *(a2 + 23);
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_28:
  v13 = *(a2 + 4);
  *(this + 23) |= 0x10u;
  *(this + 4) = v13;
  v4 = *(a2 + 23);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_30:
  v15 = *(a2 + 7);
  *(this + 23) |= 0x40u;
  *(this + 7) = v15;
  v4 = *(a2 + 23);
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v7 = *(a2 + 8);
    *(this + 23) |= 0x80u;
    *(this + 8) = v7;
    v4 = *(a2 + 23);
  }

LABEL_16:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v9 = *(a2 + 10);
    *(this + 23) |= 0x200u;
    *(this + 10) = v9;
    if ((*(a2 + 23) & 0x400) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

  v8 = *(a2 + 9);
  *(this + 23) |= 0x100u;
  *(this + 9) = v8;
  v4 = *(a2 + 23);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if ((v4 & 0x400) == 0)
  {
    return;
  }

LABEL_23:
  v10 = *(a2 + 13);
  if (v10 >= 2)
  {
    awd::metrics::LocationMicroLocationUserEventStatistics::MergeFrom();
  }

  *(this + 23) |= 0x400u;
  *(this + 13) = v10;
}

void sub_296485170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationUserEventStatistics::~LocationMicroLocationUserEventStatistics(awd::metrics::LocationMicroLocationUserEventStatistics *this)
{
  *this = &unk_2A1D52530;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52530;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52530;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationUserEventStatistics::default_instance(awd::metrics::LocationMicroLocationUserEventStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationUserEventStatistics::default_instance_;
  if (!awd::metrics::LocationMicroLocationUserEventStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationUserEventStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationUserEventStatistics::Clear(uint64_t this)
{
  v1 = *(this + 92);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 48) = -1;
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 72) = 0;
    *(this + 80) = 0;
  }

  *(this + 92) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationUserEventStatistics::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationUserEventStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v6 != 1)
          {
            if (v6 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_52;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v13 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v13 >= v11 || (v14 = *v13, v14 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v14;
            v15 = v13 + 1;
            *(a2 + 1) = v15;
          }

          *(this + 23) |= 1u;
          if (v15 < v11 && *v15 == 16)
          {
            v12 = v15 + 1;
            *(a2 + 1) = v12;
LABEL_52:
            v43 = 0;
            if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v43);
              if (!result)
              {
                return result;
              }

              v22 = v43;
            }

            else
            {
              *(a2 + 1) = v12 + 1;
            }

            if (v22 + 1 <= 2)
            {
              *(this + 23) |= 2u;
              *(this + 12) = v22;
            }

            v23 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v23 < v7 && *v23 == 24)
            {
              v19 = v23 + 1;
              *(a2 + 1) = v19;
LABEL_62:
              if (v19 >= v7 || (v24 = *v19, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 2) = v24;
                v25 = v19 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 23) |= 4u;
              if (v25 < v7 && *v25 == 32)
              {
                v16 = v25 + 1;
                *(a2 + 1) = v16;
                goto LABEL_70;
              }
            }
          }
        }

        else
        {
          if (v6 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_62;
          }

          if (v6 != 4)
          {
            if (v6 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_78;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v16 = *(a2 + 1);
          v7 = *(a2 + 2);
LABEL_70:
          if (v16 >= v7 || (v26 = *v16, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v26;
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 23) |= 8u;
          if (v27 < v7 && *v27 == 40)
          {
            v9 = v27 + 1;
            *(a2 + 1) = v9;
LABEL_78:
            if (v9 >= v7 || (v28 = *v9, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v28;
              v29 = v9 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 23) |= 0x10u;
            if (v29 < v7 && *v29 == 48)
            {
              v20 = v29 + 1;
              *(a2 + 1) = v20;
LABEL_86:
              if (v20 >= v7 || (v30 = *v20, v30 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
                if (!result)
                {
                  return result;
                }

                v31 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 5) = v30;
                v31 = v20 + 1;
                *(a2 + 1) = v31;
              }

              *(this + 23) |= 0x20u;
              if (v31 < v7 && *v31 == 56)
              {
                v17 = v31 + 1;
                *(a2 + 1) = v17;
                goto LABEL_94;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v6 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_110;
          }
        }

        else if (v6 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_118;
          }
        }

        else if (v6 == 11 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_126;
        }

        goto LABEL_43;
      }

      if (v6 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_86;
      }

      if (v6 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v17 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_94:
      if (v17 >= v7 || (v32 = *v17, v32 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 7) = v32;
        v33 = v17 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 23) |= 0x40u;
      if (v33 < v7 && *v33 == 64)
      {
        v8 = v33 + 1;
        *(a2 + 1) = v8;
LABEL_102:
        if (v8 >= v7 || (v34 = *v8, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v34;
          v35 = v8 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 23) |= 0x80u;
        if (v35 < v7 && *v35 == 72)
        {
          v21 = v35 + 1;
          *(a2 + 1) = v21;
LABEL_110:
          if (v21 >= v7 || (v36 = *v21, v36 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v37 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v36;
            v37 = v21 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 23) |= 0x100u;
          if (v37 < v7 && *v37 == 80)
          {
            v18 = v37 + 1;
            *(a2 + 1) = v18;
LABEL_118:
            if (v18 >= v7 || (v38 = *v18, v38 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v39 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v38;
              v39 = v18 + 1;
              *(a2 + 1) = v39;
            }

            *(this + 23) |= 0x200u;
            if (v39 < v7 && *v39 == 88)
            {
              v10 = v39 + 1;
              *(a2 + 1) = v10;
LABEL_126:
              v42 = 0;
              if (v10 >= v7 || (v40 = *v10, (v40 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42);
                if (!result)
                {
                  return result;
                }

                v40 = v42;
              }

              else
              {
                *(a2 + 1) = v10 + 1;
              }

              if (v40 <= 1)
              {
                *(this + 23) |= 0x400u;
                *(this + 13) = v40;
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

    if (v6 == 8 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_43:
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

uint64_t awd::metrics::LocationMicroLocationUserEventStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 92);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 48), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 64), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, *(v5 + 80), a2, a4);
    if ((*(v5 + 92) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 72), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v7 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, v7, a2, a4);
}

uint64_t awd::metrics::LocationMicroLocationUserEventStatistics::ByteSize(awd::metrics::LocationMicroLocationUserEventStatistics *this)
{
  v2 = *(this + 23);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_20;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 23);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 12);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 23);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_13:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 23);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 23);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v2 = *(this + 23);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v2 = *(this + 23);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_29:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  v2 = *(this + 23);
  if ((v2 & 0x80) != 0)
  {
LABEL_19:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 8)) + 1;
    v2 = *(this + 23);
  }

LABEL_20:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_39;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_23;
    }

LABEL_32:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 1;
    if ((*(this + 23) & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 9)) + 1;
  v2 = *(this + 23);
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_32;
  }

LABEL_23:
  if ((v2 & 0x400) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v6 = *(this + 13);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
LABEL_39:
  *(this + 22) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationUserEventStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationUserEventStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationUserEventStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationUserEventStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationUserEventStatistics::CopyFrom(awd::metrics::LocationMicroLocationUserEventStatistics *this, const awd::metrics::LocationMicroLocationUserEventStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationUserEventStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMicroLocationUserEventStatistics::Swap(uint64_t this, awd::metrics::LocationMicroLocationUserEventStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v10;
    LODWORD(v10) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v10;
    LODWORD(v10) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v10;
    LODWORD(v10) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v10;
  }

  return this;
}

double awd::metrics::LocationMicroLocationEventClusteringStatistics::SharedCtor(awd::metrics::LocationMicroLocationEventClusteringStatistics *this)
{
  *&result = 0xFFFFFFFFLL;
  *(this + 1) = 0xFFFFFFFFLL;
  *(this + 5) = 0;
  return result;
}

awd::metrics::LocationMicroLocationEventClusteringStatistics *awd::metrics::LocationMicroLocationEventClusteringStatistics::LocationMicroLocationEventClusteringStatistics(awd::metrics::LocationMicroLocationEventClusteringStatistics *this, const awd::metrics::LocationMicroLocationEventClusteringStatistics *a2)
{
  *this = &unk_2A1D525A8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0xFFFFFFFFLL;
  *(this + 5) = 0;
  awd::metrics::LocationMicroLocationEventClusteringStatistics::MergeFrom(this, a2);
  return this;
}

void sub_296485E5C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventSignificanceMetric>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationEventClusteringStatistics::MergeFrom(awd::metrics::LocationMicroLocationEventClusteringStatistics *this, const awd::metrics::LocationMicroLocationEventClusteringStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventSignificanceMetric>::TypeHandler>((this + 16), a2 + 16);
  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 2);
      if ((v5 + 1) >= 3)
      {
        awd::metrics::LocationMicroLocationEventClusteringStatistics::MergeFrom();
      }

      *(this + 11) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 2)
      {
        awd::metrics::LocationMicroLocationEventClusteringStatistics::MergeFrom();
      }

      *(this + 11) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_296485F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationEventClusteringStatistics::~LocationMicroLocationEventClusteringStatistics(awd::metrics::LocationMicroLocationEventClusteringStatistics *this)
{
  *this = &unk_2A1D525A8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventSignificanceMetric>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationMicroLocationEventClusteringStatistics::~LocationMicroLocationEventClusteringStatistics(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationEventClusteringStatistics::default_instance(awd::metrics::LocationMicroLocationEventClusteringStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationEventClusteringStatistics::default_instance_;
  if (!awd::metrics::LocationMicroLocationEventClusteringStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationEventClusteringStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationEventClusteringStatistics::Clear(awd::metrics::LocationMicroLocationEventClusteringStatistics *this)
{
  if (*(this + 44))
  {
    *(this + 1) = 0xFFFFFFFFLL;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventSignificanceMetric>::TypeHandler>(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t awd::metrics::LocationMicroLocationEventClusteringStatistics::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationEventClusteringStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 2)
        {
          goto LABEL_36;
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

      v28 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
        if (!result)
        {
          return result;
        }

        v9 = v28;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 + 1 <= 2)
      {
        *(this + 11) |= 1u;
        *(this + 2) = v9;
      }

      v13 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v13 < v10 && *v13 == 16)
      {
        v11 = v13 + 1;
        *(a2 + 1) = v11;
LABEL_26:
        v27 = 0;
        if (v11 >= v10 || (v14 = *v11, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
          if (!result)
          {
            return result;
          }

          v14 = v27;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v14 <= 1)
        {
          *(this + 11) |= 2u;
          *(this + 3) = v14;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 26)
        {
          do
          {
            *(a2 + 1) = v15 + 1;
LABEL_36:
            v16 = *(this + 7);
            v17 = *(this + 6);
            if (v17 >= v16)
            {
              if (v16 == *(this + 8))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                v16 = *(this + 7);
              }

              *(this + 7) = v16 + 1;
              operator new();
            }

            v18 = *(this + 2);
            *(this + 6) = v17 + 1;
            v19 = *(v18 + 8 * v17);
            v29 = 0;
            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
              {
                return 0;
              }
            }

            else
            {
              v29 = *v20;
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
            if (!awd::metrics::LocationMicroLocationEventSignificanceMetric::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
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

            v15 = *(a2 + 1);
            v26 = *(a2 + 2);
          }

          while (v15 < v26 && *v15 == 26);
          if (v15 == v26 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v10 = *(a2 + 2);
      goto LABEL_26;
    }

LABEL_16:
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

uint64_t awd::metrics::LocationMicroLocationEventClusteringStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationEventClusteringStatistics::ByteSize(awd::metrics::LocationMicroLocationEventClusteringStatistics *this)
{
  v2 = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(this + 44))
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
      if ((*(this + 11) & 2) == 0)
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
    if ((*(this + 44) & 2) == 0)
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

  v3 += v6;
LABEL_19:
  v7 = *(this + 6);
  v8 = (v7 + v3);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = awd::metrics::LocationMicroLocationEventSignificanceMetric::ByteSize(*(*(this + 2) + 8 * v9));
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      }

      else
      {
        v12 = 1;
      }

      v8 = (v11 + v8 + v12);
      ++v9;
    }

    while (v9 < *(this + 6));
  }

  *(this + 10) = v8;
  return v8;
}

void awd::metrics::LocationMicroLocationEventClusteringStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationEventClusteringStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationEventClusteringStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationEventClusteringStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationEventClusteringStatistics::CopyFrom(awd::metrics::LocationMicroLocationEventClusteringStatistics *this, const awd::metrics::LocationMicroLocationEventClusteringStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationEventClusteringStatistics::MergeFrom(this, a2);
  }
}

awd::metrics::LocationMicroLocationEventClusteringStatistics *awd::metrics::LocationMicroLocationEventClusteringStatistics::Swap(awd::metrics::LocationMicroLocationEventClusteringStatistics *this, awd::metrics::LocationMicroLocationEventClusteringStatistics *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
    v7 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationLocalizationStatistics::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0xFFFFFFFFLL;
  *(this + 48) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationMicroLocationLocalizationStatistics *awd::metrics::LocationMicroLocationLocalizationStatistics::LocationMicroLocationLocalizationStatistics(awd::metrics::LocationMicroLocationLocalizationStatistics *this, const awd::metrics::LocationMicroLocationLocalizationStatistics *a2)
{
  *this = &unk_2A1D52620;
  *(this + 1) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::LocationMicroLocationLocalizationStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationLocalizationStatistics::MergeFrom(awd::metrics::LocationMicroLocationLocalizationStatistics *this, const awd::metrics::LocationMicroLocationLocalizationStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v5 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 12);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 10);
      if ((v6 + 1) >= 3)
      {
        awd::metrics::LocationMicroLocationLocalizationStatistics::MergeFrom();
      }

      *(this + 12) |= 2u;
      *(this + 10) = v6;
      v4 = *(a2 + 12);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 12) |= 4u;
      *(this + 2) = v8;
      v4 = *(a2 + 12);
      if ((v4 & 8) == 0)
      {
LABEL_11:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    v9 = *(a2 + 3);
    *(this + 12) |= 8u;
    *(this + 3) = v9;
    if ((*(a2 + 12) & 0x10) != 0)
    {
LABEL_12:
      v7 = *(a2 + 4);
      *(this + 12) |= 0x10u;
      *(this + 4) = v7;
    }
  }
}

void sub_296486900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationLocalizationStatistics::~LocationMicroLocationLocalizationStatistics(awd::metrics::LocationMicroLocationLocalizationStatistics *this)
{
  *this = &unk_2A1D52620;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52620;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52620;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationLocalizationStatistics::default_instance(awd::metrics::LocationMicroLocationLocalizationStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationLocalizationStatistics::default_instance_;
  if (!awd::metrics::LocationMicroLocationLocalizationStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationLocalizationStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationLocalizationStatistics::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 40) = -1;
    *(this + 24) = 0;
    *(this + 32) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationLocalizationStatistics::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationLocalizationStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v13 >= v9 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 12) |= 1u;
        if (v15 < v9 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          v25 = 0;
          if (v10 >= v9 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
          }

          else
          {
            *(a2 + 1) = v10 + 1;
          }

          if (v16 + 1 <= 2)
          {
            *(this + 12) |= 2u;
            *(this + 10) = v16;
          }

          v17 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v17 < v7 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_42:
            if (v11 >= v7 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v18;
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 12) |= 4u;
            if (v19 < v7 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(a2 + 1) = v12;
              goto LABEL_50;
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

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_42;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_50:
      if (v12 >= v7 || (v20 = *v12, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v20;
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 12) |= 8u;
      if (v21 < v7 && *v21 == 40)
      {
        v8 = v21 + 1;
        *(a2 + 1) = v8;
LABEL_58:
        if (v8 >= v7 || (v22 = *v8, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v22;
          v23 = v8 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 12) |= 0x10u;
        if (v23 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_58;
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

uint64_t awd::metrics::LocationMicroLocationLocalizationStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v7, a2, a4);
}

uint64_t awd::metrics::LocationMicroLocationLocalizationStatistics::ByteSize(awd::metrics::LocationMicroLocationLocalizationStatistics *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if (*(this + 48))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 12);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 10);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_13:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    if ((*(this + 12) & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  v2 = *(this + 12);
  if ((v2 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((v2 & 0x10) != 0)
  {
LABEL_16:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  }

LABEL_17:
  *(this + 11) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationLocalizationStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationLocalizationStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationLocalizationStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationLocalizationStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationLocalizationStatistics::CopyFrom(awd::metrics::LocationMicroLocationLocalizationStatistics *this, const awd::metrics::LocationMicroLocationLocalizationStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationLocalizationStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMicroLocationLocalizationStatistics::Swap(uint64_t this, awd::metrics::LocationMicroLocationLocalizationStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationModelState::SharedCtor(uint64_t this)
{
  *(this + 44) = 0;
  *(this + 8) = 0;
  *(this + 16) = -1;
  *(this + 20) = 0;
  *(this + 36) = 0;
  *(this + 28) = 0;
  return this;
}

awd::metrics::LocationMicroLocationModelState *awd::metrics::LocationMicroLocationModelState::LocationMicroLocationModelState(awd::metrics::LocationMicroLocationModelState *this, const awd::metrics::LocationMicroLocationModelState *a2)
{
  *(this + 44) = 0;
  *this = &unk_2A1D52698;
  *(this + 1) = 0;
  *(this + 4) = -1;
  *(this + 20) = 0;
  *(this + 36) = 0;
  *(this + 28) = 0;
  awd::metrics::LocationMicroLocationModelState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationModelState::MergeFrom(awd::metrics::LocationMicroLocationModelState *this, const awd::metrics::LocationMicroLocationModelState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v5 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 12);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      if ((v6 + 1) >= 3)
      {
        awd::metrics::LocationMicroLocationModelState::MergeFrom();
      }

      *(this + 12) |= 2u;
      *(this + 4) = v6;
      v4 = *(a2 + 12);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 5);
      if (v7 >= 4)
      {
        awd::metrics::LocationMicroLocationModelState::MergeFrom();
      }

      *(this + 12) |= 4u;
      *(this + 5) = v7;
      v4 = *(a2 + 12);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 3);
      *(this + 12) |= 8u;
      *(this + 3) = v8;
      v4 = *(a2 + 12);
      if ((v4 & 0x10) == 0)
      {
LABEL_14:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

LABEL_18:
        v10 = *(a2 + 10);
        if (v10 >= 2)
        {
          awd::metrics::LocationMicroLocationModelState::MergeFrom();
        }

        *(this + 12) |= 0x20u;
        *(this + 10) = v10;
        return;
      }
    }

    else if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    v9 = *(a2 + 4);
    *(this + 12) |= 0x10u;
    *(this + 4) = v9;
    if ((*(a2 + 12) & 0x20) == 0)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_296487294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationModelState::~LocationMicroLocationModelState(awd::metrics::LocationMicroLocationModelState *this)
{
  *this = &unk_2A1D52698;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52698;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52698;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationModelState::default_instance(awd::metrics::LocationMicroLocationModelState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationModelState::default_instance_;
  if (!awd::metrics::LocationMicroLocationModelState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationModelState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationModelState::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 8) = 0;
    *(this + 16) = -1;
    *(this + 20) = 0;
    *(this + 36) = 0;
    *(this + 28) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationModelState::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationModelState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_55;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_63;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_71;
          }

          goto LABEL_26;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
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

        *(this + 12) |= 1u;
        if (v14 < v11 && *v14 == 16)
        {
          v16 = v14 + 1;
          *(a2 + 1) = v16;
          goto LABEL_35;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v16 = *(a2 + 1);
      v11 = *(a2 + 2);
LABEL_35:
      v30 = 0;
      if (v16 >= v11 || (v18 = *v16, (v18 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
        if (!result)
        {
          return result;
        }

        v18 = v30;
      }

      else
      {
        *(a2 + 1) = v16 + 1;
      }

      if (v18 + 1 <= 2)
      {
        *(this + 12) |= 2u;
        *(this + 4) = v18;
      }

      v19 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v19 < v7 && *v19 == 24)
      {
        v8 = v19 + 1;
        *(a2 + 1) = v8;
LABEL_45:
        v29 = 0;
        if (v8 >= v7 || (v20 = *v8, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v20 = v29;
        }

        else
        {
          *(a2 + 1) = v8 + 1;
        }

        if (v20 <= 3)
        {
          *(this + 12) |= 4u;
          *(this + 5) = v20;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v21 < v9 && *v21 == 32)
        {
          v15 = v21 + 1;
          *(a2 + 1) = v15;
LABEL_55:
          if (v15 >= v9 || (v22 = *v15, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v23 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v22;
            v23 = v15 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 12) |= 8u;
          if (v23 < v9 && *v23 == 40)
          {
            v17 = v23 + 1;
            *(a2 + 1) = v17;
LABEL_63:
            if (v17 >= v9 || (v24 = *v17, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v24;
              v25 = v17 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 12) |= 0x10u;
            if (v25 < v9 && *v25 == 48)
            {
              v10 = v25 + 1;
              *(a2 + 1) = v10;
LABEL_71:
              v28 = 0;
              if (v10 >= v9 || (v26 = *v10, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
                if (!result)
                {
                  return result;
                }

                v26 = v28;
              }

              else
              {
                *(a2 + 1) = v10 + 1;
              }

              if (v26 <= 1)
              {
                *(this + 12) |= 0x20u;
                *(this + 10) = v26;
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

    if (v6 == 3 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_45;
    }

LABEL_26:
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

uint64_t awd::metrics::LocationMicroLocationModelState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 48);
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
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, v7, a2, a4);
}

uint64_t awd::metrics::LocationMicroLocationModelState::ByteSize(awd::metrics::LocationMicroLocationModelState *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if (*(this + 48))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 12);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 4);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_13:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
      if ((*(this + 12) & 0x20) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 12);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v8 = *(this + 10);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
LABEL_32:
  *(this + 11) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationModelState::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationModelState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationModelState::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationModelState::MergeFrom(this, lpsrc);
}