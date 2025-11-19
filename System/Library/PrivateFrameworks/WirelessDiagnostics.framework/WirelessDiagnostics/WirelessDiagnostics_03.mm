void awd::profile::LogParameter::CopyFrom(awd::profile::LogParameter *this, const awd::profile::LogParameter *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::LogParameter::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::LogParameter::Swap(uint64_t this, awd::profile::LogParameter *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

awd::profile::Log *awd::profile::Log::Log(awd::profile::Log *this, const awd::profile::Log *a2)
{
  *this = &unk_288352CB0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  awd::profile::Log::MergeFrom(this, a2);
  return this;
}

void sub_27431179C(_Unwind_Exception *a1)
{
  sub_27431C008(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::Log::~Log(awd::profile::Log *this)
{
  *this = &unk_288352CB0;
  sub_27431C008(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Log::~Log(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::Log::MergePartialFromCodedStream(awd::profile::Log *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v4 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v6 = *(this + 5);
        v7 = *(this + 4);
        if (v7 >= v6)
        {
          if (v6 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v6 = *(this + 5);
          }

          *(this + 5) = v6 + 1;
          operator new();
        }

        v8 = *(this + 1);
        *(this + 4) = v7 + 1;
        v9 = *(v8 + 8 * v7);
        v19 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
          {
            return 0;
          }
        }

        else
        {
          v19 = *v10;
          *(a2 + 1) = v10 + 1;
        }

        v11 = *(a2 + 14);
        v12 = *(a2 + 15);
        *(a2 + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::profile::LogParameter::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v13 = *(a2 + 14);
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v15 < 0 == v14)
        {
          *(a2 + 14) = v15;
        }

        v16 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v16 >= v17 || *v16 != 10)
        {
          if (v16 == v17 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v16 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::Log::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::profile::Log::ByteSize(awd::profile::Log *this)
{
  v2 = *(this + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = awd::profile::LogParameter::ByteSize(*(*(this + 1) + 8 * v3));
      v5 = v4;
      if (v4 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
      }

      else
      {
        v6 = 1;
      }

      v2 = (v5 + v2 + v6);
      ++v3;
    }

    while (v3 < *(this + 4));
  }

  *(this + 8) = v2;
  return v2;
}

void awd::profile::Log::CopyFrom(awd::profile::Log *this, const awd::profile::Log *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::Log::MergeFrom(this, a2);
  }
}

awd::profile::Log *awd::profile::Log::Swap(awd::profile::Log *this, awd::profile::Log *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

double awd::profile::ConfigurationParameter::SharedCtor(__n128 *this, __n128 a2)
{
  a2.n128_u64[0] = 0;
  this->n128_u64[1] = MEMORY[0x277D82C30];
  this[1] = a2;
  return a2.n128_f64[0];
}

uint64_t awd::profile::TypeVariant::default_instance(awd::profile::TypeVariant *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::TypeVariant::default_instance_;
  if (!awd::profile::TypeVariant::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::TypeVariant::default_instance_;
  }

  return result;
}

__n128 *awd::profile::ConfigurationParameter::ConfigurationParameter(__n128 *this, const awd::profile::ConfigurationParameter *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v4 = MEMORY[0x277D82C30];
  this->n128_u64[0] = &unk_288352D28;
  this->n128_u64[1] = v4;
  this[1] = a3;
  awd::profile::ConfigurationParameter::MergeFrom(this, a2);
  return this;
}

void awd::profile::ConfigurationParameter::MergeFrom(awd::profile::ConfigurationParameter *this, const awd::profile::ConfigurationParameter *a2)
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
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      v6 = *(this + 1);
      if (v6 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v7 = *(this + 2);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 2);
      if (!v8)
      {
        v8 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
      }

      awd::profile::TypeVariant::MergeFrom(v7, v8);
    }
  }
}

void sub_274311EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ConfigurationParameter::~ConfigurationParameter(awd::profile::ConfigurationParameter *this)
{
  *this = &unk_288352D28;
  awd::profile::ConfigurationParameter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352D28;
  awd::profile::ConfigurationParameter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352D28;
  awd::profile::ConfigurationParameter::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2743E9A90);
}

void *awd::profile::ConfigurationParameter::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[1];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2743E9A90](v2, 0x1012C40EC159624);
  }

  if (awd::profile::ConfigurationParameter::default_instance_ != v1)
  {
    this = v1[2];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t awd::profile::ConfigurationParameter::default_instance(awd::profile::ConfigurationParameter *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::ConfigurationParameter::default_instance_;
  if (!awd::profile::ConfigurationParameter::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::ConfigurationParameter::default_instance_;
  }

  return result;
}

uint64_t awd::profile::ConfigurationParameter::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x277D82C30])
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

    if ((*(this + 28) & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t awd::profile::TypeVariant::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    if ((v1 & 0x40) != 0)
    {
      v2 = *(this + 48);
      if (v2 != MEMORY[0x277D82C30])
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

    *(this + 44) = 0;
    v1 = *(this + 72);
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v3 = *(this + 56);
      if (v3 != MEMORY[0x277D82C30])
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

    *(this + 64) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::profile::ConfigurationParameter::MergePartialFromCodedStream(awd::profile::ConfigurationParameter *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v7 != 2)
        {
          goto LABEL_17;
        }

        *(this + 7) |= 1u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 18)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_20;
        }
      }

      if (v7 == 2)
      {
        break;
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

LABEL_20:
    *(this + 7) |= 2u;
    v10 = *(this + 2);
    if (!v10)
    {
      operator new();
    }

    v17 = 0;
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17))
      {
        return 0;
      }
    }

    else
    {
      v17 = *v11;
      *(a2 + 1) = v11 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v14 = *(a2 + 14);
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v16 < 0 == v15)
    {
      *(a2 + 14) = v16;
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

uint64_t awd::profile::ConfigurationParameter::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t awd::profile::ConfigurationParameter::ByteSize(awd::profile::ConfigurationParameter *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_21;
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
    v2 = *(this + 7);
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
    v11 = *(this + 2);
    if (!v11)
    {
      v11 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
    }

    v12 = awd::profile::TypeVariant::ByteSize(v11);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v3 = (v3 + v13 + v14 + 1);
  }

LABEL_21:
  *(this + 6) = v3;
  return v3;
}

void awd::profile::TypeVariant::MergeFrom(awd::profile::TypeVariant *this, const awd::profile::TypeVariant *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 18);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 4);
    *(this + 18) |= 1u;
    *(this + 4) = v9;
    v4 = *(a2 + 18);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 1);
  *(this + 18) |= 2u;
  *(this + 1) = v10;
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 5);
  *(this + 18) |= 4u;
  *(this + 5) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 3);
  *(this + 18) |= 8u;
  *(this + 3) = v12;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v14 = *(a2 + 4);
    *(this + 18) |= 0x20u;
    *(this + 4) = v14;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v13 = *(a2 + 10);
  *(this + 18) |= 0x10u;
  *(this + 10) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v15 = *(a2 + 6);
  *(this + 18) |= 0x40u;
  v16 = *(this + 6);
  if (v16 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v16, v15);
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 44);
    *(this + 18) |= 0x80u;
    *(this + 44) = v5;
    v4 = *(a2 + 18);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 7);
      *(this + 18) |= 0x100u;
      v7 = *(this + 7);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 18);
    }

    if ((v4 & 0x200) != 0)
    {
      v8 = *(a2 + 16);
      *(this + 18) |= 0x200u;
      *(this + 16) = v8;
    }
  }
}

void sub_2743128B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ConfigurationParameter::CopyFrom(awd::profile::ConfigurationParameter *this, const awd::profile::ConfigurationParameter *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::ConfigurationParameter::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::ConfigurationParameter::Swap(uint64_t this, awd::profile::ConfigurationParameter *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

double awd::profile::ComponentConfiguration::SharedCtor(awd::profile::ComponentConfiguration *this)
{
  result = 0.0;
  *(this + 7) = 0;
  *(this + 11) = 0;
  return result;
}

awd::profile::ComponentConfiguration *awd::profile::ComponentConfiguration::ComponentConfiguration(awd::profile::ComponentConfiguration *this, const awd::profile::ComponentConfiguration *a2)
{
  *this = &unk_288352DA0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 11) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 20) = 0;
  awd::profile::ComponentConfiguration::MergeFrom(this, a2);
  return this;
}

void sub_274312A64(_Unwind_Exception *a1)
{
  sub_27431C008(v1 + 8);
  sub_27431C008(v3);
  sub_27431C008(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::ComponentConfiguration::MergeFrom(awd::profile::ComponentConfiguration *this, const awd::profile::ComponentConfiguration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  sub_27431C268((this + 8), a2 + 8);
  v4 = *(this + 10);
  v5 = *(a2 + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
  if (*(a2 + 10) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 4) + 8 * v6);
      v8 = *(this + 11);
      v9 = *(this + 10);
      if (v9 >= v8)
      {
        if (v8 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
          v8 = *(this + 11);
        }

        *(this + 11) = v8 + 1;
        operator new();
      }

      v10 = *(this + 4);
      *(this + 10) = v9 + 1;
      awd::profile::TriggerSource::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 10));
  }

  v11 = *(this + 18);
  v12 = *(a2 + 18);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
  if (*(a2 + 18) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(a2 + 8) + 8 * v13);
      v15 = *(this + 19);
      v16 = *(this + 18);
      if (v16 >= v15)
      {
        if (v15 == *(this + 20))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
          v15 = *(this + 19);
        }

        *(this + 19) = v15 + 1;
        operator new();
      }

      v17 = *(this + 8);
      *(this + 18) = v16 + 1;
      awd::profile::ConfigurationParameter::MergeFrom(*(v17 + 8 * v16), v14);
      ++v13;
    }

    while (v13 < *(a2 + 18));
  }

  LOBYTE(v18) = *(a2 + 92);
  if (v18)
  {
    if (*(a2 + 92))
    {
      v19 = *(a2 + 14);
      *(this + 23) |= 1u;
      *(this + 14) = v19;
      v18 = *(a2 + 23);
    }

    if ((v18 & 0x10) != 0)
    {
      v20 = *(a2 + 15);
      *(this + 23) |= 0x10u;
      *(this + 15) = v20;
    }
  }
}

void sub_274312D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ComponentConfiguration::~ComponentConfiguration(awd::profile::ComponentConfiguration *this)
{
  *this = &unk_288352DA0;
  sub_27431C008(this + 8);
  sub_27431C008(this + 4);
  sub_27431C008(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ComponentConfiguration::~ComponentConfiguration(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::ComponentConfiguration::default_instance(awd::profile::ComponentConfiguration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::ComponentConfiguration::default_instance_;
  if (!awd::profile::ComponentConfiguration::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::ComponentConfiguration::default_instance_;
  }

  return result;
}

uint64_t awd::profile::ComponentConfiguration::Clear(awd::profile::ComponentConfiguration *this)
{
  if (*(this + 92))
  {
    *(this + 7) = 0;
  }

  sub_27431BF48(this + 8);
  sub_27431BF48(this + 32);
  result = sub_27431BF48(this + 64);
  *(this + 23) = 0;
  return result;
}

uint64_t awd::profile::ComponentConfiguration::MergePartialFromCodedStream(awd::profile::ComponentConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v47 = 0;
        v10 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v10 >= v11 || (v12 = *v10, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
          if (!result)
          {
            return result;
          }

          v12 = v47;
          v13 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v13 = (v10 + 1);
          *(a2 + 1) = v13;
        }

        *(this + 14) = v12;
        *(this + 23) |= 1u;
        if (v13 < v11 && *v13 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v13 + 1;
LABEL_32:
            v15 = *(this + 5);
            v16 = *(this + 4);
            if (v16 >= v15)
            {
              if (v15 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                v15 = *(this + 5);
              }

              *(this + 5) = v15 + 1;
              operator new();
            }

            v17 = *(this + 1);
            *(this + 4) = v16 + 1;
            v18 = *(v17 + 8 * v16);
            v47 = 0;
            v19 = *(a2 + 1);
            if (v19 >= *(a2 + 2) || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v19;
              *(a2 + 1) = v19 + 1;
            }

            v20 = *(a2 + 14);
            v21 = *(a2 + 15);
            *(a2 + 14) = v20 + 1;
            if (v20 >= v21)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::profile::Profile::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v22 = *(a2 + 14);
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v24 < 0 == v23)
            {
              *(a2 + 14) = v24;
            }

            v13 = *(a2 + 1);
            if (v13 >= *(a2 + 2))
            {
              break;
            }

            v25 = *v13;
            if (v25 != 18)
            {
              if (v25 == 26)
              {
                while (1)
                {
                  *(a2 + 1) = v13 + 1;
LABEL_50:
                  v26 = *(this + 11);
                  v27 = *(this + 10);
                  if (v27 >= v26)
                  {
                    if (v26 == *(this + 12))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
                      v26 = *(this + 11);
                    }

                    *(this + 11) = v26 + 1;
                    operator new();
                  }

                  v28 = *(this + 4);
                  *(this + 10) = v27 + 1;
                  v29 = *(v28 + 8 * v27);
                  v47 = 0;
                  v30 = *(a2 + 1);
                  if (v30 >= *(a2 + 2) || *v30 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v47 = *v30;
                    *(a2 + 1) = v30 + 1;
                  }

                  v31 = *(a2 + 14);
                  v32 = *(a2 + 15);
                  *(a2 + 14) = v31 + 1;
                  if (v31 >= v32)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!awd::profile::TriggerSource::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v33 = *(a2 + 14);
                  v23 = __OFSUB__(v33, 1);
                  v34 = v33 - 1;
                  if (v34 < 0 == v23)
                  {
                    *(a2 + 14) = v34;
                  }

                  v13 = *(a2 + 1);
                  if (v13 >= *(a2 + 2))
                  {
                    break;
                  }

                  v35 = *v13;
                  if (v35 != 26)
                  {
                    if (v35 != 34)
                    {
                      goto LABEL_1;
                    }

                    goto LABEL_67;
                  }
                }
              }

              goto LABEL_1;
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

        goto LABEL_50;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v36 = *(this + 19);
        v37 = *(this + 18);
        if (v37 >= v36)
        {
          if (v36 == *(this + 20))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
            v36 = *(this + 19);
          }

          *(this + 19) = v36 + 1;
          operator new();
        }

        v38 = *(this + 8);
        *(this + 18) = v37 + 1;
        v39 = *(v38 + 8 * v37);
        v47 = 0;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
          {
            return 0;
          }
        }

        else
        {
          v47 = *v40;
          *(a2 + 1) = v40 + 1;
        }

        v41 = *(a2 + 14);
        v42 = *(a2 + 15);
        *(a2 + 14) = v41 + 1;
        if (v41 >= v42)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::profile::ConfigurationParameter::MergePartialFromCodedStream(v39, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v43 = *(a2 + 14);
        v23 = __OFSUB__(v43, 1);
        v44 = v43 - 1;
        if (v44 < 0 == v23)
        {
          *(a2 + 14) = v44;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v13 >= v9 || *v13 != 34)
        {
          break;
        }

LABEL_67:
        *(a2 + 1) = v13 + 1;
      }

      if (v9 - v13 >= 2 && *v13 == 160 && v13[1] == 1)
      {
        v8 = (v13 + 2);
        *(a2 + 1) = v8;
LABEL_88:
        if (v8 >= v9 || (v45 = *v8, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v45;
          v46 = v8 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 23) |= 0x10u;
        if (v46 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 20 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_88;
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

uint64_t awd::profile::ComponentConfiguration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 92))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 56), a2, a4);
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

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 72) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 64) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 72));
  }

  if ((*(v5 + 92) & 0x10) != 0)
  {
    v9 = *(v5 + 60);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, v9, a2, a4);
  }

  return this;
}

uint64_t awd::profile::ComponentConfiguration::ByteSize(awd::profile::ComponentConfiguration *this)
{
  v2 = *(this + 92);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if (*(this + 92))
  {
    v4 = *(this + 14);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      if ((*(this + 23) & 0x10) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 92) & 0x10) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = *(this + 15);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 2;
  }

  else
  {
    v6 = 3;
  }

  v3 += v6;
LABEL_17:
  v7 = *(this + 4);
  v8 = v7 + v3;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = awd::profile::Profile::ByteSize(*(*(this + 1) + 8 * v9));
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      }

      else
      {
        v12 = 1;
      }

      v8 += v11 + v12;
      ++v9;
    }

    while (v9 < *(this + 4));
  }

  v13 = *(this + 10);
  v14 = v13 + v8;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = awd::profile::TriggerSource::ByteSize(*(*(this + 4) + 8 * v15));
      v17 = v16;
      if (v16 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      }

      else
      {
        v18 = 1;
      }

      v14 += v17 + v18;
      ++v15;
    }

    while (v15 < *(this + 10));
  }

  v19 = *(this + 18);
  v20 = (v19 + v14);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = awd::profile::ConfigurationParameter::ByteSize(*(*(this + 8) + 8 * v21));
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(this + 18));
  }

  *(this + 22) = v20;
  return v20;
}

void awd::profile::ComponentConfiguration::CopyFrom(awd::profile::ComponentConfiguration *this, const awd::profile::ComponentConfiguration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::ComponentConfiguration::MergeFrom(this, a2);
  }
}

awd::profile::ComponentConfiguration *awd::profile::ComponentConfiguration::Swap(awd::profile::ComponentConfiguration *this, awd::profile::ComponentConfiguration *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 15);
    *(v3 + 15) = *(a2 + 15);
    *(a2 + 15) = v5;
    v6 = *(v3 + 23);
    *(v3 + 23) = *(a2 + 23);
    *(a2 + 23) = v6;
    v7 = *(v3 + 22);
    *(v3 + 22) = *(a2 + 22);
    *(a2 + 22) = v7;
  }

  return this;
}

uint64_t awd::profile::TimerSpec::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::profile::TimerSpec *awd::profile::TimerSpec::TimerSpec(awd::profile::TimerSpec *this, const awd::profile::TimerSpec *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_288352E18;
  *(this + 6) = 0;
  awd::profile::TimerSpec::MergeFrom(this, a2);
  return this;
}

void awd::profile::TimerSpec::MergeFrom(awd::profile::TimerSpec *this, const awd::profile::TimerSpec *a2)
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
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_274313A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TimerSpec::~TimerSpec(awd::profile::TimerSpec *this)
{
  *this = &unk_288352E18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352E18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352E18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::TimerSpec::default_instance(awd::profile::TimerSpec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::TimerSpec::default_instance_;
  if (!awd::profile::TimerSpec::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::TimerSpec::default_instance_;
  }

  return result;
}

uint64_t awd::profile::TimerSpec::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::profile::TimerSpec::MergePartialFromCodedStream(awd::profile::TimerSpec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v11;
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

uint64_t awd::profile::TimerSpec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::profile::TimerSpec::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = *(this + 4);
    if (v3 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v4 = 2;
    }

    v2 = (v4 + v2);
  }

  else
  {
    v2 = 0;
  }

LABEL_11:
  *(this + 5) = v2;
  return v2;
}

void awd::profile::TimerSpec::CopyFrom(awd::profile::TimerSpec *this, const awd::profile::TimerSpec *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::TimerSpec::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::TimerSpec::Swap(uint64_t this, awd::profile::TimerSpec *a2)
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

double awd::profile::TypeVariant::SharedCtor(awd::profile::TypeVariant *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 6) = v2;
  *(this + 7) = v2;
  *(this + 8) = 0;
  *(this + 18) = 0;
  return result;
}

awd::profile::TypeVariant *awd::profile::TypeVariant::TypeVariant(awd::profile::TypeVariant *this, const awd::profile::TypeVariant *a2)
{
  *this = &unk_288352E90;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v3 = MEMORY[0x277D82C30];
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 6) = v3;
  *(this + 7) = v3;
  *(this + 8) = 0;
  *(this + 18) = 0;
  awd::profile::TypeVariant::MergeFrom(this, a2);
  return this;
}

void awd::profile::TypeVariant::~TypeVariant(awd::profile::TypeVariant *this)
{
  *this = &unk_288352E90;
  awd::profile::TypeVariant::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352E90;
  awd::profile::TypeVariant::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352E90;
  awd::profile::TypeVariant::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::TypeVariant::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2743E9A90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 56);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x2743E9A90);
  }

  return this;
}

uint64_t awd::profile::TypeVariant::MergePartialFromCodedStream(awd::profile::TypeVariant *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  do
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_41;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_50;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_41;
            }

            v36[0] = 0;
            v14 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v14 >= v11 || (v15 = *v14, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v36);
              if (!result)
              {
                return result;
              }

              v15 = v36[0];
              v16 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v16 = v14 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 4) = v15;
            *(this + 18) |= 1u;
            if (v16 < v11 && *v16 == 16)
            {
              v12 = v16 + 1;
              *(a2 + 1) = v12;
LABEL_50:
              *v36 = 0;
              if (v12 >= v11 || (v23 = *v12, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v36);
                if (!result)
                {
                  return result;
                }

                v23 = *v36;
                v24 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v24 = v12 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 1) = v23;
              *(this + 18) |= 2u;
              if (v24 < v11 && *v24 == 24)
              {
                v17 = v24 + 1;
                *(a2 + 1) = v17;
LABEL_58:
                if (v17 >= v11 || (v25 = *v17, v25 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v25;
                  v26 = v17 + 1;
                  *(a2 + 1) = v26;
                }

                *(this + 18) |= 4u;
                if (v26 < v11 && *v26 == 32)
                {
                  v20 = v26 + 1;
                  *(a2 + 1) = v20;
                  goto LABEL_66;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_41;
              }

              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_58;
            }

            if (v7 == 4)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_41;
              }

              v20 = *(a2 + 1);
              v11 = *(a2 + 2);
LABEL_66:
              if (v20 >= v11 || (v27 = *v20, v27 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v28 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v27;
                v28 = v20 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 18) |= 8u;
              if (v28 < v11 && *v28 == 45)
              {
                *(a2 + 1) = v28 + 1;
LABEL_74:
                v36[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v36) & 1) == 0)
                {
                  return 0;
                }

                *(this + 10) = v36[0];
                *(this + 18) |= 0x10u;
                v29 = *(a2 + 1);
                if (v29 < *(a2 + 2) && *v29 == 49)
                {
                  *(a2 + 1) = v29 + 1;
LABEL_78:
                  *v36 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v36) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 4) = *v36;
                  v13 = *(this + 18) | 0x20;
                  *(this + 18) = v13;
                  v30 = *(a2 + 1);
                  if (v30 < *(a2 + 2) && *v30 == 58)
                  {
                    *(a2 + 1) = v30 + 1;
                    goto LABEL_82;
                  }
                }
              }
            }

            else
            {
              if (v7 == 5 && v8 == 5)
              {
                goto LABEL_74;
              }

LABEL_41:
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
        }

        if (TagFallback >> 3 > 7)
        {
          break;
        }

        if (v7 == 6)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_41;
        }

        if (v7 != 7 || v8 != 2)
        {
          goto LABEL_41;
        }

        v13 = *(this + 18);
LABEL_82:
        *(this + 18) = v13 | 0x40;
        if (*(this + 6) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v31 < v18 && *v31 == 64)
        {
          v19 = v31 + 1;
          *(a2 + 1) = v19;
LABEL_88:
          v36[0] = 0;
          if (v19 >= v18 || (v32 = *v19, (v32 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v36);
            if (!result)
            {
              return result;
            }

            v32 = v36[0];
            v33 = *(a2 + 1);
            v18 = *(a2 + 2);
          }

          else
          {
            v33 = v19 + 1;
            *(a2 + 1) = v33;
          }

          *(this + 44) = v32 != 0;
          v21 = *(this + 18) | 0x80;
          *(this + 18) = v21;
          if (v33 < v18 && *v33 == 74)
          {
            *(a2 + 1) = v33 + 1;
            goto LABEL_96;
          }
        }
      }

      if (v7 == 8)
      {
        if ((TagFallback & 7) == 0)
        {
          v19 = *(a2 + 1);
          v18 = *(a2 + 2);
          goto LABEL_88;
        }

        goto LABEL_41;
      }

      if (v7 != 9)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_41;
      }

      v21 = *(this + 18);
LABEL_96:
      *(this + 18) = v21 | 0x100;
      if (*(this + 7) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v34 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v34 < v9 && *v34 == 80)
      {
        v10 = v34 + 1;
        *(a2 + 1) = v10;
        goto LABEL_102;
      }
    }

    if (v7 != 10 || (TagFallback & 7) != 0)
    {
      goto LABEL_41;
    }

    v10 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_102:
    v36[0] = 0;
    if (v10 >= v9 || (v35 = *v10, v35 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v36);
      if (!result)
      {
        return result;
      }

      if (!v36[0])
      {
LABEL_105:
        *(this + 18) |= 0x200u;
        *(this + 16) = 0;
      }
    }

    else
    {
      *(a2 + 1) = v10 + 1;
      if (!v35)
      {
        goto LABEL_105;
      }
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::profile::TypeVariant::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
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
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
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
  v7 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v8 = *(v5 + 56);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 72) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
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
  v9 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, v9, a2, a4);
}

uint64_t awd::profile::TypeVariant::ByteSize(awd::profile::TypeVariant *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 18);
    goto LABEL_12;
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v3 = 11;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v5 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 18);
    if ((v2 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v14 = *(this + 5);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v15 = 2;
    }

    v3 += v15;
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v2 & 8) != 0)
  {
LABEL_14:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 18);
  }

LABEL_15:
  v6 = v3 + 5;
  if ((v2 & 0x10) == 0)
  {
    v6 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v7 = v6 + 9;
  }

  else
  {
    v7 = v6;
  }

  if ((v2 & 0x40) != 0)
  {
    v8 = *(this + 6);
    v9 = *(v8 + 23);
    v10 = v9;
    v11 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      v9 = *(v8 + 23);
      v11 = *(v8 + 8);
      v2 = *(this + 18);
      v10 = *(v8 + 23);
    }

    else
    {
      v13 = 1;
    }

    if (v10 < 0)
    {
      v9 = v11;
    }

    v7 += v13 + v9 + 1;
  }

  v4 = ((v2 >> 6) & 2) + v7;
LABEL_33:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v16 = *(this + 7);
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
        v2 = *(this + 18);
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

      v4 = (v4 + v21 + v17 + 1);
    }

    if ((v2 & 0x200) != 0)
    {
      v22 = *(this + 16);
      if ((v22 & 0x80000000) != 0)
      {
        v23 = 11;
      }

      else if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      }

      else
      {
        v23 = 2;
      }

      v4 = (v23 + v4);
    }
  }

  *(this + 17) = v4;
  return v4;
}

void awd::profile::TypeVariant::CopyFrom(awd::profile::TypeVariant *this, const awd::profile::TypeVariant *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::TypeVariant::MergeFrom(this, a2);
  }
}

double awd::profile::TypeVariant::Swap(awd::profile::TypeVariant *this, awd::profile::TypeVariant *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    LOBYTE(v7) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v8;
    LODWORD(v8) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v8;
    LODWORD(v8) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v8;
  }

  return result;
}

uint64_t awd::profile::Condition::SharedCtor(uint64_t this)
{
  *(this + 64) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 21) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 48) = 0;
  *(this + 56) = v1;
  *(this + 29) = 0;
  return this;
}

awd::profile::Condition *awd::profile::Condition::Condition(awd::profile::Condition *this, const awd::profile::Condition *a2)
{
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_288352F08;
  *(this + 21) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v3 = MEMORY[0x277D82C30];
  *(this + 6) = 0;
  *(this + 7) = v3;
  *(this + 29) = 0;
  awd::profile::Condition::MergeFrom(this, a2);
  return this;
}

void awd::profile::Condition::MergeFrom(awd::profile::Condition *this, const awd::profile::Condition *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_37;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    *(this + 17) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 17);
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

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 3);
  *(this + 17) |= 2u;
  *(this + 3) = v6;
  v4 = *(a2 + 17);
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
  v7 = *(a2 + 6);
  *(this + 17) |= 4u;
  *(this + 6) = v7;
  v4 = *(a2 + 17);
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
  v8 = *(a2 + 28);
  *(this + 17) |= 8u;
  *(this + 28) = v8;
  v4 = *(a2 + 17);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    *(this + 17) |= 0x20u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      v12 = *(awd::profile::Condition::default_instance_ + 32);
    }

    awd::profile::TypeVariant::MergeFrom(v11, v12);
    v4 = *(a2 + 17);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_17:
  *(this + 17) |= 0x10u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    v10 = *(awd::profile::Condition::default_instance_ + 16);
  }

  awd::profile::TypeVariant::MergeFrom(v9, v10);
  v4 = *(a2 + 17);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  *(this + 17) |= 0x40u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    v14 = *(awd::profile::Condition::default_instance_ + 40);
  }

  awd::profile::TypeVariant::MergeFrom(v13, v14);
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
LABEL_32:
    *(this + 17) |= 0x80u;
    v15 = *(this + 6);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 6);
    if (!v16)
    {
      v16 = *(awd::profile::Condition::default_instance_ + 48);
    }

    awd::profile::TypeVariant::MergeFrom(v15, v16);
    v4 = *(a2 + 17);
  }

LABEL_37:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v17 = *(a2 + 7);
      *(this + 17) |= 0x100u;
      v18 = *(this + 7);
      if (v18 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v18, v17);
      v4 = *(a2 + 17);
    }

    if ((v4 & 0x200) != 0)
    {
      v19 = *(a2 + 29);
      *(this + 17) |= 0x200u;
      *(this + 29) = v19;
    }
  }
}

void sub_2743150BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Condition::~Condition(awd::profile::Condition *this)
{
  *this = &unk_288352F08;
  awd::profile::Condition::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352F08;
  awd::profile::Condition::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352F08;
  awd::profile::Condition::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2743E9A90);
}

void *awd::profile::Condition::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[7];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2743E9A90](v2, 0x1012C40EC159624);
  }

  if (awd::profile::Condition::default_instance_ != v1)
  {
    v4 = v1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    this = v1[6];
    if (this)
    {
      v7 = *(*this + 8);

      return v7();
    }
  }

  return this;
}

uint64_t awd::profile::Condition::default_instance(awd::profile::Condition *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::Condition::default_instance_;
  if (!awd::profile::Condition::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::Condition::default_instance_;
  }

  return result;
}

uint64_t awd::profile::Condition::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 24) = 0;
    *(this + 28) = 0;
    if ((v2 & 0x10) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = awd::profile::TypeVariant::Clear(this);
        v2 = *(v1 + 68);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 = *(v1 + 56);
      if (v3 != MEMORY[0x277D82C30])
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

    *(v1 + 29) = 0;
  }

  *(v1 + 68) = 0;
  return this;
}

uint64_t awd::profile::Condition::MergePartialFromCodedStream(awd::profile::Condition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
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
            if (TagFallback >> 3 > 0x11)
            {
              if (TagFallback >> 3 <= 0x13)
              {
                if (v7 == 18)
                {
                  if (v8 == 2)
                  {
                    goto LABEL_98;
                  }
                }

                else if (v7 == 19 && (TagFallback & 7) == 0)
                {
                  v14 = *(a2 + 1);
                  v13 = *(a2 + 2);
                  goto LABEL_105;
                }
              }

              else if (v7 == 20)
              {
                if (v8 == 2)
                {
                  v19 = *(this + 17);
                  goto LABEL_114;
                }
              }

              else if (v7 == 32)
              {
                if (v8 == 2)
                {
                  goto LABEL_129;
                }
              }

              else if (v7 == 33 && (TagFallback & 7) == 0)
              {
                v10 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_144;
              }

              goto LABEL_41;
            }

            if (TagFallback >> 3 > 2)
            {
              break;
            }

            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_41;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_49;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_41;
            }

            v15 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v15 >= v11 || (v16 = *v15, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v16;
              v17 = v15 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 17) |= 1u;
            if (v17 < v11 && *v17 == 16)
            {
              v12 = v17 + 1;
              *(a2 + 1) = v12;
LABEL_49:
              if (v12 >= v11 || (v21 = *v12, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v21;
                v22 = v12 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 17) |= 2u;
              if (v22 < v11 && *v22 == 24)
              {
                v18 = v22 + 1;
                *(a2 + 1) = v18;
                goto LABEL_57;
              }
            }
          }

          if (v7 != 3)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_41;
          }

          v18 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_57:
          v59 = 0;
          if (v18 >= v11 || (v23 = *v18, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59);
            if (!result)
            {
              return result;
            }

            if (v59)
            {
              goto LABEL_61;
            }
          }

          else
          {
            *(a2 + 1) = v18 + 1;
            if (v23)
            {
              goto LABEL_61;
            }
          }

          *(this + 17) |= 4u;
          *(this + 6) = 0;
LABEL_61:
          v24 = *(a2 + 1);
          if (*(a2 + 4) - v24 >= 2 && *v24 == 130 && v24[1] == 1)
          {
            *(a2 + 1) = v24 + 2;
            goto LABEL_65;
          }
        }

        if (v7 == 16)
        {
          break;
        }

        if (v7 == 17 && v8 == 2)
        {
          goto LABEL_83;
        }

LABEL_41:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (v8 != 2)
      {
        goto LABEL_41;
      }

LABEL_65:
      *(this + 17) |= 0x20u;
      v25 = *(this + 4);
      if (!v25)
      {
        operator new();
      }

      v59 = 0;
      v26 = *(a2 + 1);
      if (v26 >= *(a2 + 2) || *v26 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
        {
          return 0;
        }
      }

      else
      {
        v59 = *v26;
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
      if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v29 = *(a2 + 14);
      v30 = __OFSUB__(v29, 1);
      v31 = v29 - 1;
      if (v31 < 0 == v30)
      {
        *(a2 + 14) = v31;
      }

      v32 = *(a2 + 1);
      if (*(a2 + 4) - v32 > 1 && *v32 == 138 && v32[1] == 1)
      {
        *(a2 + 1) = v32 + 2;
LABEL_83:
        *(this + 17) |= 0x40u;
        v33 = *(this + 5);
        if (!v33)
        {
          operator new();
        }

        v59 = 0;
        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
          {
            return 0;
          }
        }

        else
        {
          v59 = *v34;
          *(a2 + 1) = v34 + 1;
        }

        v35 = *(a2 + 14);
        v36 = *(a2 + 15);
        *(a2 + 14) = v35 + 1;
        if (v35 >= v36)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v33, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v37 = *(a2 + 14);
        v30 = __OFSUB__(v37, 1);
        v38 = v37 - 1;
        if (v38 < 0 == v30)
        {
          *(a2 + 14) = v38;
        }

        v39 = *(a2 + 1);
        if (*(a2 + 4) - v39 > 1 && *v39 == 146 && v39[1] == 1)
        {
          *(a2 + 1) = v39 + 2;
LABEL_98:
          *(this + 17) |= 0x100u;
          if (*(this + 7) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v13 - v40 >= 2 && *v40 == 152 && v40[1] == 1)
          {
            v14 = (v40 + 2);
            *(a2 + 1) = v14;
LABEL_105:
            v59 = 0;
            if (v14 >= v13 || (v41 = *v14, (v41 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59);
              if (!result)
              {
                return result;
              }

              v41 = v59;
              v42 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              v42 = (v14 + 1);
              *(a2 + 1) = v42;
            }

            *(this + 28) = v41 != 0;
            v19 = *(this + 17) | 8;
            *(this + 17) = v19;
            if (v13 - v42 >= 2 && *v42 == 162 && v42[1] == 1)
            {
              *(a2 + 1) = v42 + 2;
LABEL_114:
              *(this + 17) = v19 | 0x10;
              v43 = *(this + 2);
              if (!v43)
              {
                operator new();
              }

              v59 = 0;
              v44 = *(a2 + 1);
              if (v44 >= *(a2 + 2) || *v44 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
                {
                  return 0;
                }
              }

              else
              {
                v59 = *v44;
                *(a2 + 1) = v44 + 1;
              }

              v45 = *(a2 + 14);
              v46 = *(a2 + 15);
              *(a2 + 14) = v45 + 1;
              if (v45 >= v46)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v43, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v47 = *(a2 + 14);
              v30 = __OFSUB__(v47, 1);
              v48 = v47 - 1;
              if (v48 < 0 == v30)
              {
                *(a2 + 14) = v48;
              }

              v49 = *(a2 + 1);
              if (*(a2 + 4) - v49 > 1 && *v49 == 130 && v49[1] == 2)
              {
                break;
              }
            }
          }
        }
      }
    }

    *(a2 + 1) = v49 + 2;
LABEL_129:
    *(this + 17) |= 0x80u;
    v50 = *(this + 6);
    if (!v50)
    {
      operator new();
    }

    v59 = 0;
    v51 = *(a2 + 1);
    if (v51 >= *(a2 + 2) || *v51 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
      {
        return 0;
      }
    }

    else
    {
      v59 = *v51;
      *(a2 + 1) = v51 + 1;
    }

    v52 = *(a2 + 14);
    v53 = *(a2 + 15);
    *(a2 + 14) = v52 + 1;
    if (v52 >= v53)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::profile::TypeVariant::MergePartialFromCodedStream(v50, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v54 = *(a2 + 14);
    v30 = __OFSUB__(v54, 1);
    v55 = v54 - 1;
    if (v55 < 0 == v30)
    {
      *(a2 + 14) = v55;
    }

    v56 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v9 - v56 > 1 && *v56 == 136 && v56[1] == 2)
    {
      v10 = (v56 + 2);
      *(a2 + 1) = v10;
LABEL_144:
      v59 = 0;
      if (v10 >= v9 || (v57 = *v10, (v57 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59);
        if (!result)
        {
          return result;
        }

        v57 = v59;
        v58 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v58 = v10 + 1;
        *(a2 + 1) = v58;
      }

      *(this + 29) = v57 != 0;
      *(this + 17) |= 0x200u;
      if (v58 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t awd::profile::Condition::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v7 = *(v5 + 32);
  if (!v7)
  {
    v7 = *(awd::profile::Condition::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v7, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v8 = *(v5 + 40);
  if (!v8)
  {
    v8 = *(awd::profile::Condition::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v8, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x100) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x13, *(v5 + 28), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_23:
  v10 = *(v5 + 16);
  if (!v10)
  {
    v10 = *(awd::profile::Condition::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v10, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_26:
  v11 = *(v5 + 48);
  if (!v11)
  {
    v11 = *(awd::profile::Condition::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v11, a2, a4);
  if ((*(v5 + 68) & 0x200) != 0)
  {
LABEL_29:
    v12 = *(v5 + 29);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, v12, a2, a4);
  }

  return this;
}

uint64_t awd::profile::Condition::ByteSize(awd::profile::Condition *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_53;
  }

  if (v2)
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      LODWORD(v3) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 17);
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      LODWORD(v3) = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v6 = 2;
  }

  LODWORD(v3) = v6 + v3;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 6);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 17);
    }

    else
    {
      v8 = 2;
    }

    LODWORD(v3) = v8 + v3;
  }

  if ((v2 & 8) != 0)
  {
    v3 = (v3 + 3);
  }

  else
  {
    v3 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(awd::profile::Condition::default_instance_ + 16);
    }

    v10 = awd::profile::TypeVariant::ByteSize(v9);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v3 = (v3 + v11 + v12 + 2);
    v2 = *(this + 17);
    if ((v2 & 0x20) == 0)
    {
LABEL_26:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  v13 = *(this + 4);
  if (!v13)
  {
    v13 = *(awd::profile::Condition::default_instance_ + 32);
  }

  v14 = awd::profile::TypeVariant::ByteSize(v13);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
  }

  else
  {
    v16 = 1;
  }

  v3 = (v3 + v15 + v16 + 2);
  v2 = *(this + 17);
  if ((v2 & 0x40) == 0)
  {
LABEL_27:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

LABEL_41:
  v17 = *(this + 5);
  if (!v17)
  {
    v17 = *(awd::profile::Condition::default_instance_ + 40);
  }

  v18 = awd::profile::TypeVariant::ByteSize(v17);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v3 = (v3 + v19 + v20 + 2);
  v2 = *(this + 17);
  if ((v2 & 0x80) != 0)
  {
LABEL_47:
    v21 = *(this + 6);
    if (!v21)
    {
      v21 = *(awd::profile::Condition::default_instance_ + 48);
    }

    v22 = awd::profile::TypeVariant::ByteSize(v21);
    v23 = v22;
    if (v22 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    }

    else
    {
      v24 = 1;
    }

    v3 = (v3 + v23 + v24 + 2);
    v2 = *(this + 17);
  }

LABEL_53:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v25 = *(this + 7);
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
        v2 = *(this + 17);
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

      LODWORD(v3) = v3 + v30 + v26 + 2;
    }

    if ((v2 & 0x200) != 0)
    {
      v3 = (v3 + 3);
    }

    else
    {
      v3 = v3;
    }
  }

  *(this + 16) = v3;
  return v3;
}

void awd::profile::Condition::CopyFrom(awd::profile::Condition *this, const awd::profile::Condition *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::Condition::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::Condition::Swap(uint64_t this, awd::profile::Condition *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
    LOBYTE(v4) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v9;
    LOBYTE(v9) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v9;
    LODWORD(v9) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v9;
    LODWORD(v9) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v9;
  }

  return this;
}

awd::profile::ConditionClause *awd::profile::ConditionClause::ConditionClause(awd::profile::ConditionClause *this, const awd::profile::ConditionClause *a2)
{
  *this = &unk_288352F80;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  awd::profile::ConditionClause::MergeFrom(this, a2);
  return this;
}

void sub_274316380(_Unwind_Exception *a1)
{
  sub_27431C008(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::ConditionClause::MergeFrom(awd::profile::ConditionClause *this, const awd::profile::ConditionClause *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  sub_27431C3A0((this + 8), a2 + 8);
}

void sub_27431641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ConditionClause::~ConditionClause(awd::profile::ConditionClause *this)
{
  *this = &unk_288352F80;
  sub_27431C008(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ConditionClause::~ConditionClause(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::ConditionClause::default_instance(awd::profile::ConditionClause *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::ConditionClause::default_instance_;
  if (!awd::profile::ConditionClause::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::ConditionClause::default_instance_;
  }

  return result;
}

uint64_t awd::profile::ConditionClause::Clear(awd::profile::ConditionClause *this)
{
  result = sub_27431BF48(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t awd::profile::ConditionClause::MergePartialFromCodedStream(awd::profile::ConditionClause *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v4 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v6 = *(this + 5);
        v7 = *(this + 4);
        if (v7 >= v6)
        {
          if (v6 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v6 = *(this + 5);
          }

          *(this + 5) = v6 + 1;
          operator new();
        }

        v8 = *(this + 1);
        *(this + 4) = v7 + 1;
        v9 = *(v8 + 8 * v7);
        v19 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
          {
            return 0;
          }
        }

        else
        {
          v19 = *v10;
          *(a2 + 1) = v10 + 1;
        }

        v11 = *(a2 + 14);
        v12 = *(a2 + 15);
        *(a2 + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::profile::Condition::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v13 = *(a2 + 14);
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v15 < 0 == v14)
        {
          *(a2 + 14) = v15;
        }

        v16 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v16 >= v17 || *v16 != 10)
        {
          if (v16 == v17 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v16 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::ConditionClause::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::profile::ConditionClause::ByteSize(awd::profile::ConditionClause *this)
{
  v2 = *(this + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = awd::profile::Condition::ByteSize(*(*(this + 1) + 8 * v3));
      v5 = v4;
      if (v4 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
      }

      else
      {
        v6 = 1;
      }

      v2 = (v5 + v2 + v6);
      ++v3;
    }

    while (v3 < *(this + 4));
  }

  *(this + 8) = v2;
  return v2;
}

void awd::profile::ConditionClause::CopyFrom(awd::profile::ConditionClause *this, const awd::profile::ConditionClause *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::ConditionClause::MergeFrom(this, a2);
  }
}

awd::profile::ConditionClause *awd::profile::ConditionClause::Swap(awd::profile::ConditionClause *this, awd::profile::ConditionClause *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

double awd::profile::TriggerSource::SharedCtor(awd::profile::TriggerSource *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 6) = MEMORY[0x277D82C30];
  *(this + 7) = 0;
  return result;
}

awd::profile::TriggerSource *awd::profile::TriggerSource::TriggerSource(awd::profile::TriggerSource *this, const awd::profile::TriggerSource *a2)
{
  *this = &unk_288352FF8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 6) = MEMORY[0x277D82C30];
  *(this + 7) = 0;
  awd::profile::TriggerSource::MergeFrom(this, a2);
  return this;
}

void sub_274316A48(_Unwind_Exception *a1)
{
  sub_27431C008(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::TriggerSource::MergeFrom(awd::profile::TriggerSource *this, const awd::profile::TriggerSource *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(this + 8);
  v5 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  if (*(a2 + 8) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 3) + 8 * v6);
      v8 = *(this + 9);
      v9 = *(this + 8);
      if (v9 >= v8)
      {
        if (v8 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v8 = *(this + 9);
        }

        *(this + 9) = v8 + 1;
        operator new();
      }

      v10 = *(this + 3);
      *(this + 8) = v9 + 1;
      awd::profile::ConditionClause::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 8));
  }

  LOBYTE(v11) = *(a2 + 60);
  if (v11)
  {
    if (*(a2 + 60))
    {
      v12 = *(a2 + 4);
      *(this + 15) |= 1u;
      *(this + 4) = v12;
      v11 = *(a2 + 15);
      if ((v11 & 2) == 0)
      {
LABEL_14:
        if ((v11 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_14;
    }

    v13 = *(a2 + 1);
    *(this + 15) |= 2u;
    *(this + 1) = v13;
    v11 = *(a2 + 15);
    if ((v11 & 4) == 0)
    {
LABEL_15:
      if ((v11 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    v14 = *(a2 + 5);
    *(this + 15) |= 4u;
    *(this + 5) = v14;
    if ((*(a2 + 15) & 0x10) == 0)
    {
      return;
    }

LABEL_20:
    v15 = *(a2 + 6);
    *(this + 15) |= 0x10u;
    v16 = *(this + 6);
    if (v16 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v16, v15);
  }
}

void sub_274316C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TriggerSource::~TriggerSource(awd::profile::TriggerSource *this)
{
  *this = &unk_288352FF8;
  v2 = (this + 24);
  awd::profile::TriggerSource::SharedDtor(this);
  sub_27431C008(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TriggerSource::~TriggerSource(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::TriggerSource::SharedDtor(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x2743E9A90);
  }

  return this;
}

uint64_t awd::profile::TriggerSource::default_instance(awd::profile::TriggerSource *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::TriggerSource::default_instance_;
  if (!awd::profile::TriggerSource::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::TriggerSource::default_instance_;
  }

  return result;
}

uint64_t awd::profile::TriggerSource::Clear(awd::profile::TriggerSource *this)
{
  v2 = *(this + 60);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
    if ((v2 & 0x10) != 0)
    {
      v3 = *(this + 6);
      if (v3 != MEMORY[0x277D82C30])
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
  }

  result = sub_27431BF48(this + 24);
  *(this + 15) = 0;
  return result;
}

uint64_t awd::profile::TriggerSource::MergePartialFromCodedStream(awd::profile::TriggerSource *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
LABEL_2:
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
        if (v7 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_33;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_22;
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

      *(this + 15) |= 2u;
      if (v14 < v9 && *v14 == 16)
      {
        v10 = v14 + 1;
        *(a2 + 1) = v10;
LABEL_33:
        if (v10 >= v9 || (v16 = *v10, v16 < 0))
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
          v17 = v10 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 15) |= 1u;
        if (v17 < v9 && *v17 == 24)
        {
          v11 = v17 + 1;
          *(a2 + 1) = v11;
LABEL_41:
          if (v11 >= v9 || (v18 = *v11, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v18;
            v19 = (v11 + 1);
            *(a2 + 1) = v19;
          }

          *(this + 15) |= 4u;
          if (v9 - v19 >= 2 && *v19 == 130 && v19[1] == 1)
          {
            while (1)
            {
              *(a2 + 1) = v19 + 2;
LABEL_50:
              v20 = *(this + 9);
              v21 = *(this + 8);
              if (v21 >= v20)
              {
                if (v20 == *(this + 10))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                  v20 = *(this + 9);
                }

                *(this + 9) = v20 + 1;
                operator new();
              }

              v22 = *(this + 3);
              *(this + 8) = v21 + 1;
              v23 = *(v22 + 8 * v21);
              v31 = 0;
              v24 = *(a2 + 1);
              if (v24 >= *(a2 + 2) || *v24 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
                {
                  return 0;
                }
              }

              else
              {
                v31 = *v24;
                *(a2 + 1) = v24 + 1;
              }

              v25 = *(a2 + 14);
              v26 = *(a2 + 15);
              *(a2 + 14) = v25 + 1;
              if (v25 >= v26)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::profile::ConditionClause::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v27 = *(a2 + 14);
              v28 = __OFSUB__(v27, 1);
              v29 = v27 - 1;
              if (v29 < 0 == v28)
              {
                *(a2 + 14) = v29;
              }

              v19 = *(a2 + 1);
              if (*(a2 + 4) - v19 <= 1 || *v19 != 130)
              {
                break;
              }

              v30 = v19[1];
              if (v30 != 1)
              {
                if (v30 == 2)
                {
                  *(a2 + 1) = v19 + 2;
LABEL_69:
                  *(this + 15) |= 0x10u;
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

                goto LABEL_2;
              }
            }
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
      v9 = *(a2 + 2);
      goto LABEL_41;
    }

    if (v7 == 16)
    {
      if (v8 != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_50;
    }

    if (v7 == 32 && v8 == 2)
    {
      goto LABEL_69;
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

uint64_t awd::profile::TriggerSource::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  if ((*(v5 + 60) & 4) != 0)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  if ((*(v5 + 60) & 0x10) != 0)
  {
    v8 = *(v5 + 48);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::TriggerSource::ByteSize(awd::profile::TriggerSource *this)
{
  LOBYTE(v2) = *(this + 60);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_27;
  }

  if ((*(this + 60) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 15);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_10:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 15);
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v5 = *(this + 5);
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
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_27;
  }

  v7 = *(this + 6);
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

  v3 += v12 + v8 + 2;
LABEL_27:
  v13 = *(this + 8);
  v14 = (v3 + 2 * v13);
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = awd::profile::ConditionClause::ByteSize(*(*(this + 3) + 8 * v15));
      v17 = v16;
      if (v16 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      }

      else
      {
        v18 = 1;
      }

      v14 = (v17 + v14 + v18);
      ++v15;
    }

    while (v15 < *(this + 8));
  }

  *(this + 14) = v14;
  return v14;
}

void awd::profile::TriggerSource::CopyFrom(awd::profile::TriggerSource *this, const awd::profile::TriggerSource *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::TriggerSource::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::TriggerSource::Swap(uint64_t this, awd::profile::TriggerSource *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v5;
    LODWORD(v5) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 48);
    *(v3 + 48) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v6) = *(v3 + 60);
    *(v3 + 60) = *(a2 + 15);
    *(a2 + 15) = v6;
    LODWORD(v6) = *(v3 + 56);
    *(v3 + 56) = *(a2 + 14);
    *(a2 + 14) = v6;
  }

  return this;
}

uint64_t awd::profile::TriggerProcessingRule::SharedCtor(uint64_t this)
{
  *(this + 72) = 0;
  *(this + 80) = 0;
  return this;
}

awd::profile::TriggerProcessingRule *awd::profile::TriggerProcessingRule::TriggerProcessingRule(awd::profile::TriggerProcessingRule *this, const awd::profile::TriggerProcessingRule *a2)
{
  *this = &unk_288353070;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 10) = 0;
  awd::profile::TriggerProcessingRule::MergeFrom(this, a2);
  return this;
}

void sub_274317738(_Unwind_Exception *a1)
{
  v5 = v4;
  sub_27431C008(v5);
  sub_27431C008(v3);
  sub_2742E9F44(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::TriggerProcessingRule::MergeFrom(awd::profile::TriggerProcessingRule *this, const awd::profile::TriggerProcessingRule *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    sub_27431BDF8(this + 1, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }

  v5 = *(this + 8);
  v6 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  if (*(a2 + 8) >= 1)
  {
    v7 = 0;
    do
    {
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
      awd::profile::ConditionClause::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
    }

    while (v7 < *(a2 + 8));
  }

  v12 = *(this + 14);
  v13 = *(a2 + 14);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
  if (*(a2 + 14) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(a2 + 6) + 8 * v14);
      v16 = *(this + 15);
      v17 = *(this + 14);
      if (v17 >= v16)
      {
        if (v16 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
          v16 = *(this + 15);
        }

        *(this + 15) = v16 + 1;
        operator new();
      }

      v18 = *(this + 6);
      *(this + 14) = v17 + 1;
      awd::profile::ConditionClause::MergeFrom(*(v18 + 8 * v17), v15);
      ++v14;
    }

    while (v14 < *(a2 + 14));
  }

  if (*(a2 + 80))
  {
    v19 = *(a2 + 18);
    *(this + 20) |= 1u;
    *(this + 18) = v19;
  }
}

void sub_274317A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TriggerProcessingRule::~TriggerProcessingRule(awd::profile::TriggerProcessingRule *this)
{
  *this = &unk_288353070;
  sub_27431C008(this + 6);
  sub_27431C008(this + 3);
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x2743E9A70](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TriggerProcessingRule::~TriggerProcessingRule(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::TriggerProcessingRule::default_instance(awd::profile::TriggerProcessingRule *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::TriggerProcessingRule::default_instance_;
  if (!awd::profile::TriggerProcessingRule::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::TriggerProcessingRule::default_instance_;
  }

  return result;
}

uint64_t awd::profile::TriggerProcessingRule::Clear(awd::profile::TriggerProcessingRule *this)
{
  if (*(this + 80))
  {
    *(this + 18) = 0;
  }

  *(this + 4) = 0;
  sub_27431BF48(this + 24);
  result = sub_27431BF48(this + 48);
  *(this + 20) = 0;
  return result;
}

uint64_t awd::profile::TriggerProcessingRule::MergePartialFromCodedStream(awd::profile::TriggerProcessingRule *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if ((TagFallback & 7) != 0)
          {
            if (v7 == 2)
            {
              result = sub_274310430(a2, this + 8);
              if (!result)
              {
                return result;
              }

              goto LABEL_66;
            }

            goto LABEL_21;
          }

          v14 = *(a2 + 1);
          v13 = *(a2 + 2);
LABEL_50:
          v45 = 0;
          if (v14 >= v13 || *v14 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
            {
              return 0;
            }
          }

          else
          {
            v45 = *v14;
            *(a2 + 1) = v14 + 1;
          }

          v26 = *(this + 4);
          if (v26 == *(this + 5))
          {
            sub_27431BDF8(this + 1, v26 + 1);
            v26 = *(this + 4);
          }

          v27 = v45;
          v28 = *(this + 1);
          *(this + 4) = v26 + 1;
          *(v28 + 4 * v26) = v27;
          v29 = *(this + 5) - *(this + 4);
          if (v29 >= 1)
          {
            v30 = v29 + 1;
            do
            {
              v31 = *(a2 + 1);
              v32 = *(a2 + 2);
              if (v31 >= v32 || *v31 != 24)
              {
                break;
              }

              *(a2 + 1) = v31 + 1;
              if ((v31 + 1) >= v32 || (v33 = v31[1], (v33 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
                {
                  return 0;
                }

                v33 = v45;
                v28 = *(this + 1);
              }

              else
              {
                v45 = v31[1];
                *(a2 + 1) = v31 + 2;
              }

              v34 = *(this + 4);
              *(this + 4) = v34 + 1;
              *(v28 + 4 * v34) = v33;
              --v30;
            }

            while (v30 > 1);
          }

LABEL_66:
          v11 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v11 < v13)
          {
            v25 = *v11;
            if (v25 == 34)
            {
              goto LABEL_68;
            }

            goto LABEL_48;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 2)
          {
            goto LABEL_21;
          }

          while (2)
          {
            v35 = *(this + 9);
            v36 = *(this + 8);
            if (v36 >= v35)
            {
              if (v35 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v35 = *(this + 9);
              }

              *(this + 9) = v35 + 1;
              operator new();
            }

            v37 = *(this + 3);
            *(this + 8) = v36 + 1;
            v38 = *(v37 + 8 * v36);
            v47 = 0;
            v39 = *(a2 + 1);
            if (v39 >= *(a2 + 2) || *v39 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v39;
              *(a2 + 1) = v39 + 1;
            }

            v40 = *(a2 + 14);
            v41 = *(a2 + 15);
            *(a2 + 14) = v40 + 1;
            if (v40 >= v41)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::profile::ConditionClause::MergePartialFromCodedStream(v38, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v42 = *(a2 + 14);
            v23 = __OFSUB__(v42, 1);
            v43 = v42 - 1;
            if (v43 < 0 == v23)
            {
              *(a2 + 14) = v43;
            }

            v11 = *(a2 + 1);
            v44 = *(a2 + 2);
            if (v11 < v44 && *v11 == 34)
            {
LABEL_68:
              *(a2 + 1) = v11 + 1;
              continue;
            }

            break;
          }

          if (v11 == v44 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 18) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 20) |= 1u;
      if (v11 < v8 && *v11 == 18)
      {
        while (2)
        {
          *(a2 + 1) = v11 + 1;
LABEL_32:
          v15 = *(this + 15);
          v16 = *(this + 14);
          if (v16 >= v15)
          {
            if (v15 == *(this + 16))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
              v15 = *(this + 15);
            }

            *(this + 15) = v15 + 1;
            operator new();
          }

          v17 = *(this + 6);
          *(this + 14) = v16 + 1;
          v18 = *(v17 + 8 * v16);
          v46 = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
            {
              return 0;
            }
          }

          else
          {
            v46 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v20 = *(a2 + 14);
          v21 = *(a2 + 15);
          *(a2 + 14) = v20 + 1;
          if (v20 >= v21)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::profile::ConditionClause::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v22 = *(a2 + 14);
          v23 = __OFSUB__(v22, 1);
          v24 = v22 - 1;
          if (v24 < 0 == v23)
          {
            *(a2 + 14) = v24;
          }

          v11 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v11 < v13)
          {
            v25 = *v11;
            if (v25 == 18)
            {
              continue;
            }

LABEL_48:
            if (v25 == 24)
            {
              v14 = v11 + 1;
              *(a2 + 1) = v14;
              goto LABEL_50;
            }
          }

          break;
        }
      }
    }

    if (v6 == 2 && v7 == 2)
    {
      goto LABEL_32;
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

uint64_t awd::profile::TriggerProcessingRule::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 80))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 72), a2, a4);
  }

  if (*(v5 + 56) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 48) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 56));
  }

  if (*(v5 + 16) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 8) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 16));
  }

  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::profile::TriggerProcessingRule::ByteSize(awd::profile::TriggerProcessingRule *this)
{
  if (*(this + 80))
  {
    v3 = *(this + 18);
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
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(this + 1) + 4 * v5);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
        v4 = *(this + 4);
      }

      else
      {
        v8 = 1;
      }

      v6 += v8;
      ++v5;
    }

    while (v5 < v4);
  }

  v9 = *(this + 8);
  v10 = v6 + v2 + v4 + v9;
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = awd::profile::ConditionClause::ByteSize(*(*(this + 3) + 8 * v11));
      v13 = v12;
      if (v12 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
      }

      else
      {
        v14 = 1;
      }

      v10 += v13 + v14;
      ++v11;
    }

    while (v11 < *(this + 8));
  }

  v15 = *(this + 14);
  v16 = (v15 + v10);
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = awd::profile::ConditionClause::ByteSize(*(*(this + 6) + 8 * v17));
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

    while (v17 < *(this + 14));
  }

  *(this + 19) = v16;
  return v16;
}

void awd::profile::TriggerProcessingRule::CopyFrom(awd::profile::TriggerProcessingRule *this, const awd::profile::TriggerProcessingRule *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::TriggerProcessingRule::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::TriggerProcessingRule::Swap(uint64_t this, awd::profile::TriggerProcessingRule *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    v6 = *(a2 + 2);
    *(a2 + 1) = v5;
    v7 = *(this + 16);
    *(this + 16) = v6;
    *(a2 + 2) = v7;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v8 = *(v3 + 80);
    *(v3 + 80) = *(a2 + 20);
    *(a2 + 20) = v8;
    v9 = *(v3 + 76);
    *(v3 + 76) = *(a2 + 19);
    *(a2 + 19) = v9;
  }

  return this;
}

uint64_t awd::profile::AggregationSpec::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 24) = 0;
  return this;
}

awd::profile::AggregationSpec *awd::profile::AggregationSpec::AggregationSpec(awd::profile::AggregationSpec *this, const awd::profile::AggregationSpec *a2)
{
  *(this + 2) = 0;
  v3 = MEMORY[0x277D82C30];
  *this = &unk_2883530E8;
  *(this + 1) = v3;
  *(this + 6) = 0;
  awd::profile::AggregationSpec::MergeFrom(this, a2);
  return this;
}

void awd::profile::AggregationSpec::MergeFrom(awd::profile::AggregationSpec *this, const awd::profile::AggregationSpec *a2)
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
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_274318604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::AggregationSpec::~AggregationSpec(awd::profile::AggregationSpec *this)
{
  *this = &unk_2883530E8;
  awd::profile::AggregationSpec::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2883530E8;
  awd::profile::AggregationSpec::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2883530E8;
  awd::profile::AggregationSpec::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::AggregationSpec::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x2743E9A90);
  }

  return this;
}

uint64_t awd::profile::AggregationSpec::default_instance(awd::profile::AggregationSpec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::AggregationSpec::default_instance_;
  if (!awd::profile::AggregationSpec::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::AggregationSpec::default_instance_;
  }

  return result;
}

uint64_t awd::profile::AggregationSpec::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x277D82C30])
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

  *(this + 24) = 0;
  return this;
}

uint64_t awd::profile::AggregationSpec::MergePartialFromCodedStream(awd::profile::AggregationSpec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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

        v12 = *(this + 6);
LABEL_23:
        *(this + 6) = v12 | 2;
        if (*(this + 1) == v4)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      v12 = *(this + 6) | 1;
      *(this + 6) = v12;
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

uint64_t awd::profile::AggregationSpec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 24);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::AggregationSpec::ByteSize(awd::profile::AggregationSpec *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v4 = *(this + 4);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
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
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

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
  }

  else
  {
    v3 = 0;
  }

LABEL_19:
  *(this + 5) = v3;
  return v3;
}

void awd::profile::AggregationSpec::CopyFrom(awd::profile::AggregationSpec *this, const awd::profile::AggregationSpec *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::AggregationSpec::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::AggregationSpec::Swap(uint64_t this, awd::profile::AggregationSpec *a2)
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

double awd::profile::MetricFileSpec::SharedCtor(awd::profile::MetricFileSpec *this)
{
  *&result = 0x100000000;
  *(this + 1) = 0x100000000;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  return result;
}

awd::profile::MetricFileSpec *awd::profile::MetricFileSpec::MetricFileSpec(awd::profile::MetricFileSpec *this, const awd::profile::MetricFileSpec *a2)
{
  *this = &unk_288353160;
  *(this + 1) = 0x100000000;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  awd::profile::MetricFileSpec::MergeFrom(this, a2);
  return this;
}

void awd::profile::MetricFileSpec::MergeFrom(awd::profile::MetricFileSpec *this, const awd::profile::MetricFileSpec *a2)
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
      v6 = *(a2 + 2);
      *(this + 9) |= 1u;
      *(this + 2) = v6;
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

    v7 = *(a2 + 3);
    *(this + 9) |= 2u;
    *(this + 3) = v7;
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
    v8 = *(a2 + 4);
    *(this + 9) |= 4u;
    *(this + 4) = v8;
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
    v9 = *(a2 + 20);
    *(this + 9) |= 8u;
    *(this + 20) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 3);
    *(this + 9) |= 0x10u;
    *(this + 3) = v5;
  }
}

void sub_274318E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::MetricFileSpec::~MetricFileSpec(awd::profile::MetricFileSpec *this)
{
  *this = &unk_288353160;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288353160;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288353160;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::MetricFileSpec::default_instance(awd::profile::MetricFileSpec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::MetricFileSpec::default_instance_;
  if (!awd::profile::MetricFileSpec::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::MetricFileSpec::default_instance_;
  }

  return result;
}

uint64_t awd::profile::MetricFileSpec::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0x100000000;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::profile::MetricFileSpec::MergePartialFromCodedStream(awd::profile::MetricFileSpec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) |= 1u;
        if (v15 < v9 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          v26 = 0;
          if (v10 >= v9 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
            if (!result)
            {
              return result;
            }

            v16 = v26;
          }

          else
          {
            *(a2 + 1) = v10 + 1;
          }

          if (v16 - 1 <= 2)
          {
            *(this + 9) |= 2u;
            *(this + 3) = v16;
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
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v18;
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 9) |= 4u;
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
      v25 = 0;
      if (v12 >= v7 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v20 = v25;
        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v21 = (v12 + 1);
        *(a2 + 1) = v21;
      }

      *(this + 20) = v20 != 0;
      *(this + 9) |= 8u;
      if (v7 - v21 >= 2 && *v21 == 128 && v21[1] == 1)
      {
        v8 = (v21 + 2);
        *(a2 + 1) = v8;
LABEL_59:
        if (v8 >= v7 || (v22 = *v8, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v22;
          v23 = v8 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 9) |= 0x10u;
        if (v23 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 16 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_59;
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

uint64_t awd::profile::MetricFileSpec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 20), a2, a4);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x10, v7, a2, a4);
}

uint64_t awd::profile::MetricFileSpec::ByteSize(awd::profile::MetricFileSpec *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v6 = *(this + 3);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    goto LABEL_16;
  }

  v5 = *(this + 2);
  if (v5 < 0x80)
  {
    v3 = 2;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
  v2 = *(this + 9);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
  }

  v4 = ((v2 >> 2) & 2) + v3;
  if ((v2 & 0x10) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 2;
  }

LABEL_23:
  *(this + 8) = v4;
  return v4;
}

void awd::profile::MetricFileSpec::CopyFrom(awd::profile::MetricFileSpec *this, const awd::profile::MetricFileSpec *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::MetricFileSpec::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::MetricFileSpec::Swap(uint64_t this, awd::profile::MetricFileSpec *a2)
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
    LOBYTE(v4) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

awd::profile::TaskingCriteria *awd::profile::TaskingCriteria::TaskingCriteria(awd::profile::TaskingCriteria *this, const awd::profile::TaskingCriteria *a2)
{
  *this = &unk_2883531D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::profile::TaskingCriteria::MergeFrom(this, a2);
  return this;
}

void sub_2743195C4(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x2743E9A70](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::TaskingCriteria::MergeFrom(awd::profile::TaskingCriteria *this, const awd::profile::TaskingCriteria *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    sub_27431BDF8(this + 1, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }
}

void sub_2743196AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::TaskingCriteria::~TaskingCriteria(awd::profile::TaskingCriteria *this)
{
  *this = &unk_2883531D8;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x2743E9A70](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::TaskingCriteria::~TaskingCriteria(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::TaskingCriteria::default_instance(awd::profile::TaskingCriteria *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::TaskingCriteria::default_instance_;
  if (!awd::profile::TaskingCriteria::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::TaskingCriteria::default_instance_;
  }

  return result;
}

uint64_t awd::profile::TaskingCriteria::Clear(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t awd::profile::TaskingCriteria::MergePartialFromCodedStream(awd::profile::TaskingCriteria *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if ((TagFallback & 0xFFFFFFF8) == 8)
      {
        break;
      }

LABEL_9:
      if (v6 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v8 = *(a2 + 1);
    v7 = *(a2 + 2);
    while (1)
    {
      v14 = 0;
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v9 = v14;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 - 1 <= 3)
      {
        v10 = *(this + 4);
        if (v10 == *(this + 5))
        {
          sub_27431BDF8(this + 1, v10 + 1);
          v10 = *(this + 4);
        }

        v11 = *(this + 1);
        *(this + 4) = v10 + 1;
        *(v11 + 4 * v10) = v9;
      }

LABEL_24:
      v12 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v12 >= v7 || *v12 != 8)
      {
        break;
      }

      v8 = v12 + 1;
      *(a2 + 1) = v8;
    }

    if (v12 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }

  if (v6 != 2)
  {
    goto LABEL_9;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
  if (result)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t awd::profile::TaskingCriteria::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(*(v5 + 8) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t awd::profile::TaskingCriteria::ByteSize(awd::profile::TaskingCriteria *this)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(this + 1) + 4 * v3);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 10;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
        v2 = *(this + 4);
      }

      else
      {
        v6 = 1;
      }

      v4 += v6;
      ++v3;
    }

    while (v3 < v2);
  }

  result = (v2 + v4);
  *(this + 6) = result;
  return result;
}

void awd::profile::TaskingCriteria::CopyFrom(awd::profile::TaskingCriteria *this, const awd::profile::TaskingCriteria *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::TaskingCriteria::MergeFrom(this, a2);
  }
}

double awd::profile::TaskingCriteria::Swap(awd::profile::TaskingCriteria *this, awd::profile::TaskingCriteria *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    result = *(a2 + 2);
    *(a2 + 1) = v2;
    v4 = *(this + 2);
    *(this + 2) = result;
    *(a2 + 2) = v4;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

uint64_t awd::profile::DeviceConfiguration::SharedCtor(uint64_t this)
{
  *(this + 204) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 200) = 0;
  *(this + 64) = MEMORY[0x277D82C30];
  *(this + 144) = 0;
  return this;
}

awd::profile::DeviceConfiguration *awd::profile::DeviceConfiguration::DeviceConfiguration(awd::profile::DeviceConfiguration *this, const awd::profile::DeviceConfiguration *a2)
{
  *this = &unk_288353250;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 19) = 0;
  *(this + 42) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 25) = 0;
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 18) = 0;
  *(this + 52) = 0;
  awd::profile::DeviceConfiguration::MergeFrom(this, a2);
  return this;
}

void sub_274319CF0(_Unwind_Exception *a1)
{
  v9 = v6;
  sub_27431C008(v9);
  sub_27431C008(v8);
  sub_27431C008(v7);
  sub_27431C008(v5);
  sub_27431C008(v4);
  sub_27431C008(v3);
  sub_27431C008(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::DeviceConfiguration::MergeFrom(awd::profile::DeviceConfiguration *this, const awd::profile::DeviceConfiguration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v54);
  }

  v4 = *(this + 4);
  v5 = *(a2 + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  if (*(a2 + 4) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 1) + 8 * v6);
      v8 = *(this + 5);
      v9 = *(this + 4);
      if (v9 >= v8)
      {
        if (v8 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v8 = *(this + 5);
        }

        *(this + 5) = v8 + 1;
        operator new();
      }

      v10 = *(this + 1);
      *(this + 4) = v9 + 1;
      awd::profile::ComponentConfiguration::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 4));
  }

  v11 = *(this + 12);
  v12 = *(a2 + 12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
  if (*(a2 + 12) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(a2 + 5) + 8 * v13);
      v15 = *(this + 13);
      v16 = *(this + 12);
      if (v16 >= v15)
      {
        if (v15 == *(this + 14))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
          v15 = *(this + 13);
        }

        *(this + 13) = v15 + 1;
        operator new();
      }

      v17 = *(this + 5);
      *(this + 12) = v16 + 1;
      awd::profile::TimerSpec::MergeFrom(*(v17 + 8 * v16), v14);
      ++v13;
    }

    while (v13 < *(a2 + 12));
  }

  sub_27431C4C8((this + 72), a2 + 72);
  v18 = *(this + 26);
  v19 = *(a2 + 26);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
  if (*(a2 + 26) >= 1)
  {
    v20 = 0;
    do
    {
      v21 = *(*(a2 + 12) + 8 * v20);
      v22 = *(this + 27);
      v23 = *(this + 26);
      if (v23 >= v22)
      {
        if (v22 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
          v22 = *(this + 27);
        }

        *(this + 27) = v22 + 1;
        operator new();
      }

      v24 = *(this + 12);
      *(this + 26) = v23 + 1;
      awd::profile::TriggerSource::MergeFrom(*(v24 + 8 * v23), v21);
      ++v20;
    }

    while (v20 < *(a2 + 26));
  }

  v25 = *(this + 32);
  v26 = *(a2 + 32);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120));
  if (*(a2 + 32) >= 1)
  {
    v27 = 0;
    do
    {
      v28 = *(*(a2 + 15) + 8 * v27);
      v29 = *(this + 33);
      v30 = *(this + 32);
      if (v30 >= v29)
      {
        if (v29 == *(this + 34))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120));
          v29 = *(this + 33);
        }

        *(this + 33) = v29 + 1;
        operator new();
      }

      v31 = *(this + 15);
      *(this + 32) = v30 + 1;
      awd::profile::TriggerProcessingRule::MergeFrom(*(v31 + 8 * v30), v28);
      ++v27;
    }

    while (v27 < *(a2 + 32));
  }

  v32 = *(this + 40);
  v33 = *(a2 + 40);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152));
  if (*(a2 + 40) >= 1)
  {
    v34 = 0;
    do
    {
      v35 = *(*(a2 + 19) + 8 * v34);
      v36 = *(this + 41);
      v37 = *(this + 40);
      if (v37 >= v36)
      {
        if (v36 == *(this + 42))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152));
          v36 = *(this + 41);
        }

        *(this + 41) = v36 + 1;
        operator new();
      }

      v38 = *(this + 19);
      *(this + 40) = v37 + 1;
      awd::profile::AggregationSpec::MergeFrom(*(v38 + 8 * v37), v35);
      ++v34;
    }

    while (v34 < *(a2 + 40));
  }

  v39 = *(this + 46);
  v40 = *(a2 + 46);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
  if (*(a2 + 46) >= 1)
  {
    v41 = 0;
    do
    {
      v42 = *(*(a2 + 22) + 8 * v41);
      v43 = *(this + 47);
      v44 = *(this + 46);
      if (v44 >= v43)
      {
        if (v43 == *(this + 48))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
          v43 = *(this + 47);
        }

        *(this + 47) = v43 + 1;
        sub_27431BEA8();
      }

      v45 = *(this + 22);
      *(this + 46) = v44 + 1;
      awd::profile::DeviceConfiguration::MergeFrom(*(v45 + 8 * v44), v42);
      ++v41;
    }

    while (v41 < *(a2 + 46));
  }

  v46 = *(a2 + 52);
  if (!v46)
  {
    goto LABEL_56;
  }

  if (v46)
  {
    v47 = *(a2 + 8);
    *(this + 52) |= 1u;
    *(this + 8) = v47;
    v46 = *(a2 + 52);
    if ((v46 & 8) == 0)
    {
LABEL_54:
      if ((v46 & 0x10) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_60;
    }
  }

  else if ((v46 & 8) == 0)
  {
    goto LABEL_54;
  }

  v48 = *(a2 + 36);
  *(this + 52) |= 8u;
  *(this + 36) = v48;
  v46 = *(a2 + 52);
  if ((v46 & 0x10) != 0)
  {
LABEL_60:
    v49 = *(a2 + 50);
    *(this + 52) |= 0x10u;
    *(this + 50) = v49;
    v46 = *(a2 + 52);
    if ((v46 & 0x20) != 0)
    {
      goto LABEL_61;
    }

LABEL_56:
    if ((v46 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_64;
  }

LABEL_55:
  if ((v46 & 0x20) == 0)
  {
    goto LABEL_56;
  }

LABEL_61:
  v50 = *(a2 + 8);
  *(this + 52) |= 0x20u;
  v51 = *(this + 8);
  if (v51 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v51, v50);
  if ((*(a2 + 52) & 0x200) != 0)
  {
LABEL_64:
    *(this + 52) |= 0x200u;
    v52 = *(this + 18);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 18);
    if (!v53)
    {
      v53 = *(awd::profile::DeviceConfiguration::default_instance_ + 144);
    }

    awd::profile::TaskingCriteria::MergeFrom(v52, v53);
  }
}

void sub_27431A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::DeviceConfiguration::~DeviceConfiguration(awd::profile::DeviceConfiguration *this)
{
  *this = &unk_288353250;
  v2 = (this + 176);
  awd::profile::DeviceConfiguration::SharedDtor(this);
  sub_27431C008(v2);
  sub_27431C008(this + 19);
  sub_27431C008(this + 15);
  sub_27431C008(this + 12);
  sub_27431C008(this + 9);
  sub_27431C008(this + 5);
  sub_27431C008(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::DeviceConfiguration::~DeviceConfiguration(this);

  JUMPOUT(0x2743E9A90);
}

void *awd::profile::DeviceConfiguration::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[8];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2743E9A90](v2, 0x1012C40EC159624);
  }

  if (awd::profile::DeviceConfiguration::default_instance_ != v1)
  {
    this = v1[18];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t awd::profile::DeviceConfiguration::default_instance(awd::profile::DeviceConfiguration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::DeviceConfiguration::default_instance_;
  if (!awd::profile::DeviceConfiguration::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::DeviceConfiguration::default_instance_;
  }

  return result;
}

uint64_t awd::profile::DeviceConfiguration::Clear(awd::profile::DeviceConfiguration *this)
{
  v2 = *(this + 208);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 36) = 0;
    *(this + 50) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
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
  }

  if ((*(this + 209) & 2) != 0)
  {
    v4 = *(this + 18);
    if (v4)
    {
      *(v4 + 16) = 0;
      *(v4 + 28) = 0;
    }
  }

  sub_27431BF48(this + 8);
  sub_27431BF48(this + 40);
  sub_27431BF48(this + 72);
  sub_27431BF48(this + 96);
  sub_27431BF48(this + 120);
  sub_27431BF48(this + 152);
  result = sub_27431BF48(this + 176);
  *(this + 52) = 0;
  return result;
}

uint64_t awd::profile::DeviceConfiguration::MergePartialFromCodedStream(awd::profile::DeviceConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
LABEL_2:
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

            if (TagFallback >> 3 > 9)
            {
              if (v7 == 10)
              {
                if ((TagFallback & 7) == 0)
                {
                  v16 = *(a2 + 1);
                  v15 = *(a2 + 2);
                  goto LABEL_173;
                }

                goto LABEL_47;
              }

              if (v7 == 11)
              {
                if (v8 == 2)
                {
                  goto LABEL_183;
                }

                goto LABEL_47;
              }

              if (v7 != 16 || v8 != 2)
              {
                goto LABEL_47;
              }

              while (2)
              {
                v92 = *(this + 47);
                v93 = *(this + 46);
                if (v93 >= v92)
                {
                  if (v92 == *(this + 48))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 176));
                    v92 = *(this + 47);
                  }

                  *(this + 47) = v92 + 1;
                  sub_27431BEA8();
                }

                v94 = *(this + 22);
                *(this + 46) = v93 + 1;
                v95 = *(v94 + 8 * v93);
                v102 = 0;
                v96 = *(a2 + 1);
                if (v96 >= *(a2 + 2) || *v96 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
                  {
                    return 0;
                  }
                }

                else
                {
                  v102 = *v96;
                  *(a2 + 1) = v96 + 1;
                }

                v97 = *(a2 + 14);
                v98 = *(a2 + 15);
                *(a2 + 14) = v97 + 1;
                if (v97 >= v98)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!awd::profile::DeviceConfiguration::MergePartialFromCodedStream(v95, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v99 = *(a2 + 14);
                v27 = __OFSUB__(v99, 1);
                v100 = v99 - 1;
                if (v100 < 0 == v27)
                {
                  *(a2 + 14) = v100;
                }

                v81 = *(a2 + 1);
                v101 = *(a2 + 2);
                if (v101 - v81 > 1 && *v81 == 130 && v81[1] == 1)
                {
LABEL_202:
                  *(a2 + 1) = v81 + 2;
                  continue;
                }

                break;
              }

              if (v81 == v101 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }

            else if (v7 == 7)
            {
              if (v8 != 2)
              {
                goto LABEL_47;
              }

              while (2)
              {
                v53 = *(this + 27);
                v54 = *(this + 26);
                if (v54 >= v53)
                {
                  if (v53 == *(this + 28))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
                    v53 = *(this + 27);
                  }

                  *(this + 27) = v53 + 1;
                  operator new();
                }

                v55 = *(this + 12);
                *(this + 26) = v54 + 1;
                v56 = *(v55 + 8 * v54);
                v102 = 0;
                v57 = *(a2 + 1);
                if (v57 >= *(a2 + 2) || *v57 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
                  {
                    return 0;
                  }
                }

                else
                {
                  v102 = *v57;
                  *(a2 + 1) = v57 + 1;
                }

                v58 = *(a2 + 14);
                v59 = *(a2 + 15);
                *(a2 + 14) = v58 + 1;
                if (v58 >= v59)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!awd::profile::TriggerSource::MergePartialFromCodedStream(v56, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v60 = *(a2 + 14);
                v27 = __OFSUB__(v60, 1);
                v61 = v60 - 1;
                if (v61 < 0 == v27)
                {
                  *(a2 + 14) = v61;
                }

                v42 = *(a2 + 1);
                if (v42 < *(a2 + 2))
                {
                  v62 = *v42;
                  if (v62 == 58)
                  {
LABEL_122:
                    *(a2 + 1) = v42 + 1;
                    continue;
                  }

                  if (v62 == 66)
                  {
                    goto LABEL_140;
                  }
                }

                break;
              }
            }

            else
            {
              if (v7 != 8)
              {
                if (v7 == 9 && v8 == 2)
                {
                  goto LABEL_159;
                }

                goto LABEL_47;
              }

              if (v8 != 2)
              {
                goto LABEL_47;
              }

              while (2)
              {
                v63 = *(this + 33);
                v64 = *(this + 32);
                if (v64 >= v63)
                {
                  if (v63 == *(this + 34))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120));
                    v63 = *(this + 33);
                  }

                  *(this + 33) = v63 + 1;
                  operator new();
                }

                v65 = *(this + 15);
                *(this + 32) = v64 + 1;
                v66 = *(v65 + 8 * v64);
                v102 = 0;
                v67 = *(a2 + 1);
                if (v67 >= *(a2 + 2) || *v67 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
                  {
                    return 0;
                  }
                }

                else
                {
                  v102 = *v67;
                  *(a2 + 1) = v67 + 1;
                }

                v68 = *(a2 + 14);
                v69 = *(a2 + 15);
                *(a2 + 14) = v68 + 1;
                if (v68 >= v69)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!awd::profile::TriggerProcessingRule::MergePartialFromCodedStream(v66, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v70 = *(a2 + 14);
                v27 = __OFSUB__(v70, 1);
                v71 = v70 - 1;
                if (v71 < 0 == v27)
                {
                  *(a2 + 14) = v71;
                }

                v42 = *(a2 + 1);
                if (v42 < *(a2 + 2))
                {
                  v72 = *v42;
                  if (v72 == 66)
                  {
LABEL_140:
                    *(a2 + 1) = v42 + 1;
                    continue;
                  }

                  if (v72 == 74)
                  {
                    *(a2 + 1) = v42 + 1;
LABEL_159:
                    *(this + 52) |= 0x200u;
                    v73 = *(this + 18);
                    if (!v73)
                    {
                      operator new();
                    }

                    v102 = 0;
                    v74 = *(a2 + 1);
                    if (v74 >= *(a2 + 2) || *v74 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v102 = *v74;
                      *(a2 + 1) = v74 + 1;
                    }

                    v75 = *(a2 + 14);
                    v76 = *(a2 + 15);
                    *(a2 + 14) = v75 + 1;
                    if (v75 >= v76)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!awd::profile::TaskingCriteria::MergePartialFromCodedStream(v73, a2) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v77 = *(a2 + 14);
                    v27 = __OFSUB__(v77, 1);
                    v78 = v77 - 1;
                    if (v78 < 0 == v27)
                    {
                      *(a2 + 14) = v78;
                    }

                    v79 = *(a2 + 1);
                    v15 = *(a2 + 2);
                    if (v79 < v15 && *v79 == 80)
                    {
                      v16 = v79 + 1;
                      *(a2 + 1) = v16;
LABEL_173:
                      v102 = 0;
                      if (v16 >= v15 || (v80 = *v16, (v80 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102);
                        if (!result)
                        {
                          return result;
                        }

                        v80 = v102;
                      }

                      else
                      {
                        *(a2 + 1) = v16 + 1;
                      }

                      if (v80 <= 3)
                      {
                        *(this + 52) |= 0x10u;
                        *(this + 50) = v80;
                      }

                      v81 = *(a2 + 1);
                      if (v81 < *(a2 + 2) && *v81 == 90)
                      {
                        do
                        {
                          *(a2 + 1) = v81 + 1;
LABEL_183:
                          v82 = *(this + 41);
                          v83 = *(this + 40);
                          if (v83 >= v82)
                          {
                            if (v82 == *(this + 42))
                            {
                              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 152));
                              v82 = *(this + 41);
                            }

                            *(this + 41) = v82 + 1;
                            operator new();
                          }

                          v84 = *(this + 19);
                          *(this + 40) = v83 + 1;
                          v85 = *(v84 + 8 * v83);
                          v102 = 0;
                          v86 = *(a2 + 1);
                          if (v86 >= *(a2 + 2) || *v86 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v102 = *v86;
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
                          if (!awd::profile::AggregationSpec::MergePartialFromCodedStream(v85, a2) || *(a2 + 36) != 1)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                          v89 = *(a2 + 14);
                          v27 = __OFSUB__(v89, 1);
                          v90 = v89 - 1;
                          if (v90 < 0 == v27)
                          {
                            *(a2 + 14) = v90;
                          }

                          v81 = *(a2 + 1);
                          v91 = *(a2 + 2);
                        }

                        while (v81 < v91 && *v81 == 90);
                        if (v91 - v81 >= 2 && *v81 == 130 && v81[1] == 1)
                        {
                          goto LABEL_202;
                        }
                      }
                    }
                  }
                }

                break;
              }
            }
          }

          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v14 = *(a2 + 2);
              goto LABEL_91;
            }

            goto LABEL_47;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_47;
            }

            v17 = *(this + 52);
LABEL_99:
            *(this + 52) = v17 | 0x20;
            if (*(this + 8) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v42 = *(a2 + 1);
            if (v42 < *(a2 + 2) && *v42 == 50)
            {
LABEL_104:
              *(a2 + 1) = v42 + 1;
              goto LABEL_105;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_47;
            }

LABEL_105:
            v43 = *(this + 21);
            v44 = *(this + 20);
            if (v44 >= v43)
            {
              if (v43 == *(this + 22))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
                v43 = *(this + 21);
              }

              *(this + 21) = v43 + 1;
              operator new();
            }

            v45 = *(this + 9);
            *(this + 20) = v44 + 1;
            v46 = *(v45 + 8 * v44);
            v102 = 0;
            v47 = *(a2 + 1);
            if (v47 >= *(a2 + 2) || *v47 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
              {
                return 0;
              }
            }

            else
            {
              v102 = *v47;
              *(a2 + 1) = v47 + 1;
            }

            v48 = *(a2 + 14);
            v49 = *(a2 + 15);
            *(a2 + 14) = v48 + 1;
            if (v48 >= v49)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::profile::MetricFileSpec::MergePartialFromCodedStream(v46, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v50 = *(a2 + 14);
            v27 = __OFSUB__(v50, 1);
            v51 = v50 - 1;
            if (v51 < 0 == v27)
            {
              *(a2 + 14) = v51;
            }

            v42 = *(a2 + 1);
            if (v42 < *(a2 + 2))
            {
              v52 = *v42;
              if (v52 == 50)
              {
                goto LABEL_104;
              }

              if (v52 == 58)
              {
                goto LABEL_122;
              }
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v102 = 0;
        v9 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v9 >= v10 || (v11 = *v9, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102);
          if (!result)
          {
            return result;
          }

          v11 = v102;
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) = v11;
        *(this + 52) |= 1u;
        if (v12 < v10 && *v12 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v12 + 1;
LABEL_55:
            v19 = *(this + 5);
            v20 = *(this + 4);
            if (v20 >= v19)
            {
              if (v19 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                v19 = *(this + 5);
              }

              *(this + 5) = v19 + 1;
              operator new();
            }

            v21 = *(this + 1);
            *(this + 4) = v20 + 1;
            v22 = *(v21 + 8 * v20);
            v102 = 0;
            v23 = *(a2 + 1);
            if (v23 >= *(a2 + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
              {
                return 0;
              }
            }

            else
            {
              v102 = *v23;
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
            if (!awd::profile::ComponentConfiguration::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
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

            v12 = *(a2 + 1);
            if (v12 >= *(a2 + 2))
            {
              break;
            }

            v29 = *v12;
            if (v29 != 18)
            {
              if (v29 == 26)
              {
                goto LABEL_72;
              }

              goto LABEL_2;
            }
          }
        }
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          break;
        }

        goto LABEL_55;
      }

      if (v7 != 3 || v8 != 2)
      {
        break;
      }

      while (1)
      {
        v30 = *(this + 13);
        v31 = *(this + 12);
        if (v31 >= v30)
        {
          if (v30 == *(this + 14))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
            v30 = *(this + 13);
          }

          *(this + 13) = v30 + 1;
          operator new();
        }

        v32 = *(this + 5);
        *(this + 12) = v31 + 1;
        v33 = *(v32 + 8 * v31);
        v102 = 0;
        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v34;
          *(a2 + 1) = v34 + 1;
        }

        v35 = *(a2 + 14);
        v36 = *(a2 + 15);
        *(a2 + 14) = v35 + 1;
        if (v35 >= v36)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::profile::TimerSpec::MergePartialFromCodedStream(v33, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v37 = *(a2 + 14);
        v27 = __OFSUB__(v37, 1);
        v38 = v37 - 1;
        if (v38 < 0 == v27)
        {
          *(a2 + 14) = v38;
        }

        v12 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v12 >= v14)
        {
          break;
        }

        v39 = *v12;
        if (v39 != 26)
        {
          if (v39 == 32)
          {
            v13 = v12 + 1;
            *(a2 + 1) = v13;
LABEL_91:
            v102 = 0;
            if (v13 >= v14 || (v40 = *v13, (v40 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v102);
              if (!result)
              {
                return result;
              }

              v40 = v102;
              v41 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            else
            {
              v41 = v13 + 1;
              *(a2 + 1) = v41;
            }

            *(this + 36) = v40 != 0;
            v17 = *(this + 52) | 8;
            *(this + 52) = v17;
            if (v41 < v14 && *v41 == 42)
            {
              *(a2 + 1) = v41 + 1;
              goto LABEL_99;
            }
          }

          goto LABEL_2;
        }

LABEL_72:
        *(a2 + 1) = v12 + 1;
      }
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

uint64_t awd::profile::DeviceConfiguration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 208))
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

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  v8 = *(v5 + 208);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 36), a2, a4);
    v8 = *(v5 + 208);
  }

  if ((v8 & 0x20) != 0)
  {
    v9 = *(v5 + 64);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 80) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 72) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 80));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 96) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 128) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 120) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 128));
  }

  v13 = *(v5 + 208);
  if ((v13 & 0x200) != 0)
  {
    v14 = *(v5 + 144);
    if (!v14)
    {
      v14 = *(awd::profile::DeviceConfiguration::default_instance_ + 144);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
    v13 = *(v5 + 208);
  }

  if ((v13 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 200), a2, a4);
  }

  if (*(v5 + 160) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, *(*(v5 + 152) + 8 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 160));
  }

  if (*(v5 + 184) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 176) + 8 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 184));
  }

  return this;
}

uint64_t awd::profile::DeviceConfiguration::ByteSize(awd::profile::DeviceConfiguration *this)
{
  v2 = *(this + 52);
  if (!v2)
  {
    v4 = 0;
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (v2)
  {
    v5 = *(this + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 52);
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = ((v2 >> 2) & 2) + v3;
  if ((v2 & 0x10) != 0)
  {
    v6 = *(this + 50);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 52);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    if ((v2 & 0x20) == 0)
    {
LABEL_13:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 8);
  v9 = *(v8 + 23);
  v10 = v9;
  v11 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    v9 = *(v8 + 23);
    v11 = *(v8 + 8);
    v2 = *(this + 52);
    v10 = *(v8 + 23);
  }

  else
  {
    v13 = 1;
  }

  if (v10 < 0)
  {
    v9 = v11;
  }

  v4 += v13 + v9 + 1;
  if ((v2 & 0x200) != 0)
  {
LABEL_30:
    v14 = *(this + 18);
    if (!v14)
    {
      v14 = *(awd::profile::DeviceConfiguration::default_instance_ + 144);
    }

    v15 = awd::profile::TaskingCriteria::ByteSize(v14);
    v16 = v15;
    if (v15 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    }

    else
    {
      v17 = 1;
    }

    v4 += v16 + v17 + 1;
  }

LABEL_36:
  v18 = *(this + 4);
  v19 = v18 + v4;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = awd::profile::ComponentConfiguration::ByteSize(*(*(this + 1) + 8 * v20));
      v22 = v21;
      if (v21 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      }

      else
      {
        v23 = 1;
      }

      v19 += v22 + v23;
      ++v20;
    }

    while (v20 < *(this + 4));
  }

  v24 = *(this + 12);
  v25 = v24 + v19;
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = awd::profile::TimerSpec::ByteSize(*(*(this + 5) + 8 * v26));
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      }

      else
      {
        v29 = 1;
      }

      v25 += v28 + v29;
      ++v26;
    }

    while (v26 < *(this + 12));
  }

  v30 = *(this + 20);
  v31 = v30 + v25;
  if (v30 >= 1)
  {
    v32 = 0;
    do
    {
      v33 = awd::profile::MetricFileSpec::ByteSize(*(*(this + 9) + 8 * v32));
      v34 = v33;
      if (v33 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      }

      else
      {
        v35 = 1;
      }

      v31 += v34 + v35;
      ++v32;
    }

    while (v32 < *(this + 20));
  }

  v36 = *(this + 26);
  v37 = v36 + v31;
  if (v36 >= 1)
  {
    v38 = 0;
    do
    {
      v39 = awd::profile::TriggerSource::ByteSize(*(*(this + 12) + 8 * v38));
      v40 = v39;
      if (v39 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
      }

      else
      {
        v41 = 1;
      }

      v37 += v40 + v41;
      ++v38;
    }

    while (v38 < *(this + 26));
  }

  v42 = *(this + 32);
  v43 = v42 + v37;
  if (v42 >= 1)
  {
    v44 = 0;
    do
    {
      v45 = awd::profile::TriggerProcessingRule::ByteSize(*(*(this + 15) + 8 * v44));
      v46 = v45;
      if (v45 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
      }

      else
      {
        v47 = 1;
      }

      v43 += v46 + v47;
      ++v44;
    }

    while (v44 < *(this + 32));
  }

  v48 = *(this + 40);
  v49 = v48 + v43;
  if (v48 >= 1)
  {
    v50 = 0;
    do
    {
      v51 = awd::profile::AggregationSpec::ByteSize(*(*(this + 19) + 8 * v50));
      v52 = v51;
      if (v51 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
      }

      else
      {
        v53 = 1;
      }

      v49 += v52 + v53;
      ++v50;
    }

    while (v50 < *(this + 40));
  }

  v54 = *(this + 46);
  v55 = (v49 + 2 * v54);
  if (v54 >= 1)
  {
    v56 = 0;
    do
    {
      v57 = awd::profile::DeviceConfiguration::ByteSize(*(*(this + 22) + 8 * v56));
      v58 = v57;
      if (v57 >= 0x80)
      {
        v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
      }

      else
      {
        v59 = 1;
      }

      v55 = (v58 + v55 + v59);
      ++v56;
    }

    while (v56 < *(this + 46));
  }

  *(this + 51) = v55;
  return v55;
}

void awd::profile::DeviceConfiguration::CopyFrom(awd::profile::DeviceConfiguration *this, const awd::profile::DeviceConfiguration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::DeviceConfiguration::MergeFrom(this, a2);
  }
}

awd::profile::DeviceConfiguration *awd::profile::DeviceConfiguration::Swap(awd::profile::DeviceConfiguration *this, awd::profile::DeviceConfiguration *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 36);
    *(v3 + 36) = *(a2 + 36);
    *(a2 + 36) = v5;
    v6 = *(v3 + 50);
    *(v3 + 50) = *(a2 + 50);
    *(a2 + 50) = v6;
    v7 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v8 = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v8;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v9 = *(v3 + 52);
    *(v3 + 52) = *(a2 + 52);
    *(a2 + 52) = v9;
    v10 = *(v3 + 51);
    *(v3 + 51) = *(a2 + 51);
    *(a2 + 51) = v10;
  }

  return this;
}

uint64_t *sub_27431BDF8(uint64_t *result, int a2)
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

uint64_t sub_27431BF48(uint64_t result)
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

uint64_t sub_27431BFB8(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
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

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t sub_27431C008(uint64_t *a1)
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

    JUMPOUT(0x2743E9A70);
  }

  return result;
}

uint64_t sub_27431C0AC(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x2743E9A70);
  }

  return result;
}

void sub_27431C12C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*a2 + 8 * v5);
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
      awd::profile::Metric::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void sub_27431C268(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*a2 + 8 * v5);
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
      awd::profile::Profile::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void sub_27431C3A0(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*a2 + 8 * v5);
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
      awd::profile::Condition::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void sub_27431C4C8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*a2 + 8 * v5);
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
      awd::profile::MetricFileSpec::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void sub_27431C5F0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_2742E7000, a2, OS_LOG_TYPE_DEBUG, "server.conn:#D Calling callback on metric: 0x%x", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_27431C690(void *a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x277D85DE8];
  __cxa_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a3;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "metric.buffer:#E Not able to buffer metric 0x%x", v5, 8u);
  }

  __cxa_end_catch();
  v4 = *MEMORY[0x277D85DE8];
}

void sub_27431C7D4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_27430A4DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_27431C848(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  sub_27430A4DC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_27431C8C0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_27430A4DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_27431C940()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_27430A4DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_27431C9B4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void sub_27431C9E0(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_weak(*a2);
  }
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2821F6A60]();
}

{
  return MEMORY[0x2821F6A70]();
}

{
  return MEMORY[0x2821F6A80]();
}

{
  return MEMORY[0x2821F6A88]();
}

{
  return MEMORY[0x2821F6A98]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
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