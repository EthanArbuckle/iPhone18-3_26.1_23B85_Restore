uint64_t awd::metrics::protobuf_ShutdownFile_GCK_2eproto(awd::metrics *this)
{
  result = awd::metrics::GCKLinkStatusReport::default_instance_;
  if (awd::metrics::GCKLinkStatusReport::default_instance_)
  {
    return (*(*awd::metrics::GCKLinkStatusReport::default_instance_ + 8))();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_GCK_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_GCK_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_GCK_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "codegen/cpp/GCK.pb.cc", a4);
    operator new();
  }
}

double awd::metrics::GCKLinkStatusReport::GCKLinkStatusReport(awd::metrics::GCKLinkStatusReport *this)
{
  *this = &unk_2A1D4E6B8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_2A1D4E6B8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t awd::metrics::GCKLinkStatusReport::SharedCtor(uint64_t this)
{
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::GCKLinkStatusReport *awd::metrics::GCKLinkStatusReport::GCKLinkStatusReport(awd::metrics::GCKLinkStatusReport *this, const awd::metrics::GCKLinkStatusReport *a2)
{
  *this = &unk_2A1D4E6B8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::GCKLinkStatusReport::MergeFrom(this, a2);
  return this;
}

void sub_2963F9A64(_Unwind_Exception *a1)
{
  v3 = *(v1 + 3);
  if (v3)
  {
    MEMORY[0x29C25A3F0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::GCKLinkStatusReport::MergeFrom(awd::metrics::GCKLinkStatusReport *this, const awd::metrics::GCKLinkStatusReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 3, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v7 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v7;
      v5 = *(a2 + 12);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          return;
        }

        goto LABEL_9;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 4);
    *(this + 12) |= 2u;
    *(this + 4) = v8;
    if ((*(a2 + 12) & 4) == 0)
    {
      return;
    }

LABEL_9:
    v6 = *(a2 + 5);
    *(this + 12) |= 4u;
    *(this + 5) = v6;
  }
}

void sub_2963F9BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::GCKLinkStatusReport::~GCKLinkStatusReport(awd::metrics::GCKLinkStatusReport *this)
{
  *this = &unk_2A1D4E6B8;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x29C25A3F0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::GCKLinkStatusReport::~GCKLinkStatusReport(this);

  JUMPOUT(0x29C25A400);
}

uint64_t awd::metrics::GCKLinkStatusReport::default_instance(awd::metrics::GCKLinkStatusReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::GCKLinkStatusReport::default_instance_;
  if (!awd::metrics::GCKLinkStatusReport::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_GCK_2eproto(0, a2, a3, a4);
    return awd::metrics::GCKLinkStatusReport::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::GCKLinkStatusReport::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::GCKLinkStatusReport::MergePartialFromCodedStream(awd::metrics::GCKLinkStatusReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_40;
          }
        }

        else if (v6 == 4)
        {
          if ((TagFallback & 7) == 0)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x22u, a2, this + 24);
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          if (v7 == 2)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_48;
          }
        }

        goto LABEL_21;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 12) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_32:
        if (v9 >= v8 || (v16 = *v9, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v16;
          v17 = v9 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 12) |= 2u;
        if (v17 < v8 && *v17 == 24)
        {
          v14 = v17 + 1;
          *(a2 + 1) = v14;
LABEL_40:
          if (v14 >= v8 || (v18 = *v14, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v18;
            v19 = v14 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 12) |= 4u;
          if (v19 < v8 && *v19 == 34)
          {
            v10 = v19 + 1;
            *(a2 + 1) = v10;
LABEL_48:
            v25 = 0;
            if (v10 >= v8 || *v10 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
              {
                return 0;
              }
            }

            else
            {
              v25 = *v10;
              *(a2 + 1) = v10 + 1;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
            {
              v24 = 0;
              v20 = *(a2 + 1);
              if (v20 >= *(a2 + 2) || *v20 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
                {
                  return 0;
                }
              }

              else
              {
                v24 = *v20;
                *(a2 + 1) = v20 + 1;
              }

              v21 = *(this + 8);
              if (v21 == *(this + 9))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 3, v21 + 1);
                v21 = *(this + 8);
              }

              v22 = v24;
              v23 = *(this + 3);
              *(this + 8) = v21 + 1;
              *(v23 + 4 * v21) = v22;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_62:
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_32;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a4)
{
  v21 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || *v7 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v21 = *v7;
    *(this + 1) = v7 + 1;
  }

  v9 = *(a4 + 8);
  if (v9 == *(a4 + 12))
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(a4, v9 + 1);
    v9 = *(a4 + 8);
  }

  v10 = v21;
  v11 = *a4;
  *(a4 + 8) = v9 + 1;
  *(v11 + 4 * v9) = v10;
  v12 = *(a4 + 12) - *(a4 + 8);
  if (v12 >= 1)
  {
    v13 = v12 + 1;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v17 = *(this + 1);
        v14 = *(this + 2);
        if (v14 - v17 < 2 || (a2 & 0x7F | 0x80) != *v17 || a2 >> 7 != v17[1])
        {
          return 1;
        }

        v16 = (v17 + 2);
      }

      else
      {
        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 >= v14 || *v15 != a2)
        {
          return 1;
        }

        v16 = (v15 + 1);
      }

      *(this + 1) = v16;
      if (v16 >= v14 || *v16 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v21 = *v16;
        *(this + 1) = v16 + 1;
      }

      v18 = *(a4 + 8);
      if (v18 >= *(a4 + 12))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
        v18 = *(a4 + 8);
      }

      v19 = v21;
      v20 = *a4;
      *(a4 + 8) = v18 + 1;
      *(v20 + 4 * v18) = v19;
      --v13;
    }

    while (v13 > 1);
  }

  return 1;
}

void sub_2963FA21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::GCKLinkStatusReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 48) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v7 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 32) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(v5 + 24) + 4 * v8);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v8;
      }

      while (v8 < *(v5 + 32));
    }
  }

  return this;
}

uint64_t awd::metrics::GCKLinkStatusReport::ByteSize(awd::metrics::GCKLinkStatusReport *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 48))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 12);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 12);
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
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
  }

LABEL_16:
  v8 = *(this + 8);
  if (v8 < 1)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 0;
    do
    {
      v11 = *(*(this + 3) + 4 * v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 8);
      }

      else
      {
        v12 = 1;
      }

      v10 = (v12 + v10);
      ++v9;
    }

    while (v9 < v8);
    if (v10 > 0)
    {
      if (v10 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      }

      else
      {
        v13 = 2;
      }

      v3 += v13;
    }
  }

  result = (v3 + v10);
  *(this + 10) = v10;
  *(this + 11) = result;
  return result;
}

void awd::metrics::GCKLinkStatusReport::CheckTypeAndMergeFrom(awd::metrics::GCKLinkStatusReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::GCKLinkStatusReport::CheckTypeAndMergeFrom();
  }

  awd::metrics::GCKLinkStatusReport::MergeFrom(this, lpsrc);
}

void awd::metrics::GCKLinkStatusReport::CopyFrom(awd::metrics::GCKLinkStatusReport *this, const awd::metrics::GCKLinkStatusReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::GCKLinkStatusReport::MergeFrom(this, a2);
  }
}

double awd::metrics::GCKLinkStatusReport::Swap(awd::metrics::GCKLinkStatusReport *this, awd::metrics::GCKLinkStatusReport *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    result = *(a2 + 4);
    *(a2 + 3) = v3;
    v5 = *(this + 4);
    *(this + 4) = result;
    *(a2 + 4) = v5;
    LODWORD(v3) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v3;
    LODWORD(v3) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v3;
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}