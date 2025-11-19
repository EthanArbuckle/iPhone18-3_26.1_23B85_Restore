std::string *awd::metrics::BluetoothAccessoryIdentification::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryIdentification *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAccessoryIdentification::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BluetoothAccessoryIdentification::MergeFrom(this, lpsrc);
}

std::string *awd::metrics::BluetoothAccessoryIdentification::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    return awd::metrics::BluetoothAccessoryIdentification::MergeFrom(v4, a2);
  }

  return this;
}

awd::metrics::BluetoothAccessoryIdentification *awd::metrics::BluetoothAccessoryIdentification::Swap(awd::metrics::BluetoothAccessoryIdentification *this, awd::metrics::BluetoothAccessoryIdentification *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v5;
    LODWORD(v5) = *(v3 + 19);
    *(v3 + 19) = *(a2 + 19);
    *(a2 + 19) = v5;
    LODWORD(v5) = *(v3 + 26);
    *(v3 + 26) = *(a2 + 26);
    *(a2 + 26) = v5;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 27);
    *(v3 + 27) = *(a2 + 27);
    *(a2 + 27) = v6;
    v7 = *(v3 + 34);
    *(v3 + 34) = *(a2 + 34);
    *(a2 + 34) = v7;
    v8 = *(v3 + 35);
    *(v3 + 35) = *(a2 + 35);
    *(a2 + 35) = v8;
    v9 = *(v3 + 36);
    *(v3 + 36) = *(a2 + 36);
    *(a2 + 36) = v9;
    v10 = *(v3 + 37);
    *(v3 + 37) = *(a2 + 37);
    *(a2 + 37) = v10;
    v11 = *(v3 + 38);
    *(v3 + 38) = *(a2 + 38);
    *(a2 + 38) = v11;
    v12 = *(v3 + 39);
    *(v3 + 39) = *(a2 + 39);
    *(a2 + 39) = v12;
    v13 = *(v3 + 40);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 40) = v13;
    v14 = *(v3 + 41);
    *(v3 + 41) = *(a2 + 41);
    *(a2 + 41) = v14;
    v15 = *(v3 + 42);
    *(v3 + 42) = *(a2 + 42);
    *(a2 + 42) = v15;
    v16 = *(v3 + 43);
    *(v3 + 43) = *(a2 + 43);
    *(a2 + 43) = v16;
    v17 = *(v3 + 44);
    *(v3 + 44) = *(a2 + 44);
    *(a2 + 44) = v17;
    v18 = *(v3 + 45);
    *(v3 + 45) = *(a2 + 45);
    *(a2 + 45) = v18;
    v19 = *(v3 + 46);
    *(v3 + 46) = *(a2 + 46);
    *(a2 + 46) = v19;
    v20 = *(v3 + 47);
    *(v3 + 47) = *(a2 + 47);
    *(a2 + 47) = v20;
    v21 = *(v3 + 48);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 48) = v21;
    v22 = *(v3 + 49);
    *(v3 + 49) = *(a2 + 49);
    *(a2 + 49) = v22;
    v23 = *(v3 + 50);
    *(v3 + 50) = *(a2 + 50);
    *(a2 + 50) = v23;
    v24 = *(v3 + 51);
    *(v3 + 51) = *(a2 + 51);
    *(a2 + 51) = v24;
    v25 = *(v3 + 52);
    *(v3 + 52) = *(a2 + 52);
    *(a2 + 52) = v25;
    v26 = *(v3 + 53);
    *(v3 + 53) = *(a2 + 53);
    *(a2 + 53) = v26;
    v27 = *(v3 + 27);
    *(v3 + 27) = *(a2 + 27);
    *(a2 + 27) = v27;
    v28 = *(v3 + 28);
    *(v3 + 28) = *(a2 + 28);
    *(a2 + 28) = v28;
    LOBYTE(v28) = *(v3 + 272);
    *(v3 + 272) = *(a2 + 272);
    *(a2 + 272) = v28;
    v29 = *(v3 + 29);
    *(v3 + 29) = *(a2 + 29);
    *(a2 + 29) = v29;
    v30 = *(v3 + 30);
    *(v3 + 30) = *(a2 + 30);
    *(a2 + 30) = v30;
    v31 = *(v3 + 31);
    *(v3 + 31) = *(a2 + 31);
    *(a2 + 31) = v31;
    v32 = *(v3 + 32);
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 32) = v32;
    v33 = *(v3 + 33);
    *(v3 + 33) = *(a2 + 33);
    *(a2 + 33) = v33;
    LODWORD(v33) = *(v3 + 70);
    *(v3 + 70) = *(a2 + 70);
    *(a2 + 70) = v33;
    LODWORD(v33) = *(v3 + 71);
    *(v3 + 71) = *(a2 + 71);
    *(a2 + 71) = v33;
    LODWORD(v33) = *(v3 + 69);
    *(v3 + 69) = *(a2 + 69);
    *(a2 + 69) = v33;
  }

  return this;
}

double awd::metrics::BluetoothContextualMetric::SharedCtor(awd::metrics::BluetoothContextualMetric *this)
{
  *(this + 156) = 0;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 5) = 0;
  *(this + 128) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 13) = MEMORY[0x29EDC9758];
  *(this + 14) = 0;
  *(this + 15) = v2;
  *(this + 33) = 0;
  *(this + 129) = 0;
  *(this + 17) = v2;
  *(this + 18) = 0;
  *(this + 38) = 0;
  return result;
}

awd::metrics::BluetoothContextualMetric *awd::metrics::BluetoothContextualMetric::BluetoothContextualMetric(awd::metrics::BluetoothContextualMetric *this, const awd::metrics::BluetoothContextualMetric *a2)
{
  *(this + 2) = 0;
  *(this + 128) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *this = &unk_2A1D4C5E8;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 13) = v3;
  *(this + 14) = 0;
  *(this + 15) = v3;
  *(this + 33) = 0;
  *(this + 129) = 0;
  *(this + 17) = v3;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  awd::metrics::BluetoothContextualMetric::MergeFrom(this, a2);
  return this;
}

void sub_2963B8064(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v1 + 12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void *awd::metrics::BluetoothContextualMetric::MergeFrom(awd::metrics::BluetoothContextualMetric *this, const awd::metrics::BluetoothContextualMetric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 16), a2 + 16);
  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 48), a2 + 48);
  v5 = *(a2 + 40);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    v9 = *(a2 + 1);
    *(this + 40) |= 1u;
    *(this + 1) = v9;
    v5 = *(a2 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 10);
  *(this + 40) |= 2u;
  *(this + 10) = v10;
  v5 = *(a2 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_34:
    v12 = *(a2 + 18);
    *(this + 40) |= 0x20u;
    *(this + 18) = v12;
    v5 = *(a2 + 40);
    if ((v5 & 0x40) == 0)
    {
LABEL_9:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_33:
  v11 = *(a2 + 11);
  *(this + 40) |= 0x10u;
  *(this + 11) = v11;
  v5 = *(a2 + 40);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_8:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_35:
  v13 = *(a2 + 19);
  *(this + 40) |= 0x40u;
  *(this + 19) = v13;
  v5 = *(a2 + 40);
  if ((v5 & 0x80) != 0)
  {
LABEL_10:
    v6 = *(a2 + 20);
    *(this + 40) |= 0x80u;
    *(this + 20) = v6;
    v5 = *(a2 + 40);
  }

LABEL_11:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v5 & 0x100) != 0)
  {
    v14 = *(a2 + 128);
    *(this + 40) |= 0x100u;
    *(this + 128) = v14;
    v5 = *(a2 + 40);
    if ((v5 & 0x200) == 0)
    {
LABEL_14:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a2 + 21);
  *(this + 40) |= 0x200u;
  *(this + 21) = v15;
  v5 = *(a2 + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v16 = *(a2 + 11);
  *(this + 40) |= 0x400u;
  *(this + 11) = v16;
  v5 = *(a2 + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = *(a2 + 24);
  *(this + 40) |= 0x800u;
  *(this + 24) = v17;
  v5 = *(a2 + 40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = *(a2 + 25);
  *(this + 40) |= 0x1000u;
  *(this + 25) = v18;
  v5 = *(a2 + 40);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_42:
  v19 = *(a2 + 13);
  *(this + 40) |= 0x2000u;
  v20 = *(this + 13);
  if (v20 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v20, v19);
  v5 = *(a2 + 40);
  if ((v5 & 0x4000) == 0)
  {
LABEL_19:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_45:
  v21 = *(a2 + 28);
  *(this + 40) |= 0x4000u;
  *(this + 28) = v21;
  v5 = *(a2 + 40);
  if ((v5 & 0x8000) != 0)
  {
LABEL_20:
    v7 = *(a2 + 29);
    *(this + 40) |= 0x8000u;
    *(this + 29) = v7;
    v5 = *(a2 + 40);
  }

LABEL_21:
  if ((v5 & 0xFF0000) == 0)
  {
    return result;
  }

  if ((v5 & 0x10000) != 0)
  {
    v22 = *(a2 + 15);
    *(this + 40) |= 0x10000u;
    v23 = *(this + 15);
    if (v23 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    result = std::string::operator=(v23, v22);
    v5 = *(a2 + 40);
    if ((v5 & 0x20000) == 0)
    {
LABEL_24:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_53;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  v24 = *(a2 + 17);
  *(this + 40) |= 0x20000u;
  v25 = *(this + 17);
  if (v25 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v25, v24);
  v5 = *(a2 + 40);
  if ((v5 & 0x40000) == 0)
  {
LABEL_25:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = *(a2 + 33);
  *(this + 40) |= 0x40000u;
  *(this + 33) = v26;
  v5 = *(a2 + 40);
  if ((v5 & 0x80000) == 0)
  {
LABEL_26:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = *(a2 + 129);
  *(this + 40) |= 0x80000u;
  *(this + 129) = v27;
  v5 = *(a2 + 40);
  if ((v5 & 0x100000) == 0)
  {
LABEL_27:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = *(a2 + 18);
  *(this + 40) |= 0x100000u;
  *(this + 18) = v28;
  v5 = *(a2 + 40);
  if ((v5 & 0x200000) == 0)
  {
LABEL_28:
    if ((v5 & 0x400000) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_56:
  v29 = *(a2 + 38);
  *(this + 40) |= 0x200000u;
  *(this + 38) = v29;
  if ((*(a2 + 40) & 0x400000) == 0)
  {
    return result;
  }

LABEL_29:
  v8 = *(a2 + 130);
  *(this + 40) |= 0x400000u;
  *(this + 130) = v8;
  return result;
}

void sub_2963B848C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothContextualMetric::~BluetoothContextualMetric(awd::metrics::BluetoothContextualMetric *this)
{
  *this = &unk_2A1D4C5E8;
  v2 = (this + 48);
  awd::metrics::BluetoothContextualMetric::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothContextualMetric::~BluetoothContextualMetric(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothContextualMetric::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 104);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 120);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 136);
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

uint64_t awd::metrics::BluetoothContextualMetric::default_instance(awd::metrics::BluetoothContextualMetric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothContextualMetric::default_instance_;
  if (!awd::metrics::BluetoothContextualMetric::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothContextualMetric::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothContextualMetric::Clear(awd::metrics::BluetoothContextualMetric *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 5) = 0;
    *(this + 9) = 0;
    *(this + 20) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 128) = 0;
    *(this + 92) = 0;
    *(this + 84) = 0;
    *(this + 25) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v3 = *(this + 13);
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

    *(this + 14) = 0;
    v2 = *(this + 40);
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v4 = *(this + 15);
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

    if ((*(this + 162) & 2) != 0)
    {
      v5 = *(this + 17);
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

    *(this + 33) = 0;
    *(this + 129) = 0;
    *(this + 18) = 0;
    *(this + 38) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 16);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48);
  *(this + 40) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothContextualMetric::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
  v4 = MEMORY[0x29EDC9758];
LABEL_2:
  while (2)
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

    v7 = v6 & 7;
    switch(v6 >> 3)
    {
      case 1u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 < v8)
        {
          v10 = *v9;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(v3 + 8) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
LABEL_61:
            *(v3 + 160) |= 1u;
            if (v11 < v8 && *v11 == 16)
            {
              v22 = v11 + 1;
              *(a2 + 1) = v22;
              goto LABEL_64;
            }

            continue;
          }
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
        if (this)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_61;
        }

        break;
      case 2u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_64:
        if (v22 >= v8 || (v34 = *v22, v34 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 40));
          if (!this)
          {
            return this;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(v3 + 40) = v34;
          v35 = v22 + 1;
          *(a2 + 1) = v35;
        }

        *(v3 + 160) |= 2u;
        if (v35 >= v8 || *v35 != 26)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v35 + 1;
LABEL_72:
          v36 = *(v3 + 28);
          v37 = *(v3 + 24);
          if (v37 >= v36)
          {
            if (v36 == *(v3 + 32))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 16));
              v36 = *(v3 + 28);
            }

            *(v3 + 28) = v36 + 1;
            v40 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v41 = *(v3 + 16);
            v42 = *(v3 + 24);
            *(v3 + 24) = v42 + 1;
            *(v41 + 8 * v42) = v40;
          }

          else
          {
            v38 = *(v3 + 16);
            *(v3 + 24) = v37 + 1;
            v39 = *(v38 + 8 * v37);
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v43 = *v35;
        }

        while (v43 == 26);
        if (v43 != 34)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v35 + 1;
LABEL_82:
          v44 = *(v3 + 60);
          v45 = *(v3 + 56);
          if (v45 >= v44)
          {
            if (v44 == *(v3 + 64))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 48));
              v44 = *(v3 + 60);
            }

            *(v3 + 60) = v44 + 1;
            v48 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v49 = *(v3 + 48);
            v50 = *(v3 + 56);
            *(v3 + 56) = v50 + 1;
            *(v49 + 8 * v50) = v48;
          }

          else
          {
            v46 = *(v3 + 48);
            *(v3 + 56) = v45 + 1;
            v47 = *(v46 + 8 * v45);
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v35 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v35 >= v15)
          {
            goto LABEL_2;
          }

          v51 = *v35;
        }

        while (v51 == 34);
        if (v51 != 40)
        {
          continue;
        }

        v17 = v35 + 1;
        *(a2 + 1) = v17;
LABEL_92:
        if (v17 >= v15 || (v52 = *v17, v52 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 44));
          if (!this)
          {
            return this;
          }

          v53 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 44) = v52;
          v53 = v17 + 1;
          *(a2 + 1) = v53;
        }

        *(v3 + 160) |= 0x10u;
        if (v53 >= v15 || *v53 != 48)
        {
          continue;
        }

        v25 = v53 + 1;
        *(a2 + 1) = v25;
LABEL_100:
        if (v25 >= v15 || (v54 = *v25, v54 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 72));
          if (!this)
          {
            return this;
          }

          v55 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 72) = v54;
          v55 = v25 + 1;
          *(a2 + 1) = v55;
        }

        *(v3 + 160) |= 0x20u;
        if (v55 >= v15 || *v55 != 56)
        {
          continue;
        }

        v28 = v55 + 1;
        *(a2 + 1) = v28;
LABEL_108:
        if (v28 >= v15 || (v56 = *v28, v56 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 76));
          if (!this)
          {
            return this;
          }

          v57 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 76) = v56;
          v57 = v28 + 1;
          *(a2 + 1) = v57;
        }

        *(v3 + 160) |= 0x40u;
        if (v57 >= v15 || *v57 != 64)
        {
          continue;
        }

        v21 = v57 + 1;
        *(a2 + 1) = v21;
LABEL_116:
        if (v21 >= v15 || (v58 = *v21, v58 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 80));
          if (!this)
          {
            return this;
          }

          v59 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 80) = v58;
          v59 = v21 + 1;
          *(a2 + 1) = v59;
        }

        *(v3 + 160) |= 0x80u;
        if (v59 >= v15 || *v59 != 72)
        {
          continue;
        }

        v31 = v59 + 1;
        *(a2 + 1) = v31;
LABEL_124:
        v89 = 0;
        if (v31 >= v15 || (v60 = *v31, (v60 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89);
          if (!this)
          {
            return this;
          }

          v60 = v89;
          v61 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v61 = v31 + 1;
          *(a2 + 1) = v61;
        }

        *(v3 + 128) = v60 != 0;
        *(v3 + 160) |= 0x100u;
        if (v61 >= v15 || *v61 != 80)
        {
          continue;
        }

        v19 = v61 + 1;
        *(a2 + 1) = v19;
LABEL_132:
        if (v19 >= v15 || (v62 = *v19, v62 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 84));
          if (!this)
          {
            return this;
          }

          v63 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 84) = v62;
          v63 = v19 + 1;
          *(a2 + 1) = v63;
        }

        *(v3 + 160) |= 0x200u;
        if (v63 >= v15 || *v63 != 88)
        {
          continue;
        }

        v30 = v63 + 1;
        *(a2 + 1) = v30;
LABEL_140:
        if (v30 >= v15 || (v64 = *v30, v64 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 88));
          if (!this)
          {
            return this;
          }

          v65 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 88) = v64;
          v65 = v30 + 1;
          *(a2 + 1) = v65;
        }

        *(v3 + 160) |= 0x400u;
        if (v65 >= v15 || *v65 != 96)
        {
          continue;
        }

        v16 = v65 + 1;
        *(a2 + 1) = v16;
LABEL_148:
        if (v16 >= v15 || (v66 = *v16, v66 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 96));
          if (!this)
          {
            return this;
          }

          v67 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 96) = v66;
          v67 = v16 + 1;
          *(a2 + 1) = v67;
        }

        *(v3 + 160) |= 0x800u;
        if (v67 >= v15 || *v67 != 104)
        {
          continue;
        }

        v18 = v67 + 1;
        *(a2 + 1) = v18;
LABEL_156:
        if (v18 >= v15 || (v68 = *v18, v68 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 100));
          if (!this)
          {
            return this;
          }

          v69 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(v3 + 100) = v68;
          v69 = v18 + 1;
          *(a2 + 1) = v69;
        }

        v27 = *(v3 + 160) | 0x1000;
        *(v3 + 160) = v27;
        if (v69 >= v15 || *v69 != 114)
        {
          continue;
        }

        *(a2 + 1) = v69 + 1;
LABEL_164:
        *(v3 + 160) = v27 | 0x2000;
        if (*(v3 + 104) == v4)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v70 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v70 >= v13 || *v70 != 120)
        {
          continue;
        }

        v14 = v70 + 1;
        *(a2 + 1) = v14;
LABEL_170:
        if (v14 >= v13 || (v71 = *v14, v71 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 112));
          if (!this)
          {
            return this;
          }

          v72 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(v3 + 112) = v71;
          v72 = (v14 + 1);
          *(a2 + 1) = v72;
        }

        *(v3 + 160) |= 0x4000u;
        if (v13 - v72 < 2 || *v72 != 128 || v72[1] != 1)
        {
          continue;
        }

        v20 = (v72 + 2);
        *(a2 + 1) = v20;
LABEL_179:
        if (v20 >= v13 || (v73 = *v20, v73 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 116));
          if (!this)
          {
            return this;
          }

          v74 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(v3 + 116) = v73;
          v74 = (v20 + 1);
          *(a2 + 1) = v74;
        }

        v12 = *(v3 + 160) | 0x8000;
        *(v3 + 160) = v12;
        if (v13 - v74 < 2 || *v74 != 138 || v74[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v74 + 2;
LABEL_188:
        *(v3 + 160) = v12 | 0x10000;
        if (*(v3 + 120) == v4)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v75 = *(a2 + 1);
        if (*(a2 + 4) - v75 < 2 || *v75 != 146 || v75[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v75 + 2;
LABEL_195:
        *(v3 + 160) |= 0x20000u;
        if (*(v3 + 136) == v4)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v76 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v23 - v76 < 2 || *v76 != 152 || v76[1] != 1)
        {
          continue;
        }

        v29 = (v76 + 2);
        *(a2 + 1) = v29;
LABEL_202:
        if (v29 >= v23 || (v77 = *v29, v77 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 132));
          if (!this)
          {
            return this;
          }

          v78 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *(v3 + 132) = v77;
          v78 = (v29 + 1);
          *(a2 + 1) = v78;
        }

        *(v3 + 160) |= 0x40000u;
        if (v23 - v78 < 2 || *v78 != 160 || v78[1] != 1)
        {
          continue;
        }

        v33 = (v78 + 2);
        *(a2 + 1) = v33;
LABEL_211:
        v88 = 0;
        if (v33 >= v23 || (v79 = *v33, (v79 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88);
          if (!this)
          {
            return this;
          }

          v79 = v88;
          v80 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v80 = (v33 + 1);
          *(a2 + 1) = v80;
        }

        *(v3 + 129) = v79 != 0;
        *(v3 + 160) |= 0x80000u;
        if (v23 - v80 < 2 || *v80 != 168 || v80[1] != 1)
        {
          continue;
        }

        v24 = (v80 + 2);
        *(a2 + 1) = v24;
LABEL_220:
        if (v24 >= v23 || (v81 = *v24, v81 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 144));
          if (!this)
          {
            return this;
          }

          v82 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *(v3 + 144) = v81;
          v82 = (v24 + 1);
          *(a2 + 1) = v82;
        }

        *(v3 + 160) |= 0x100000u;
        if (v23 - v82 < 2 || *v82 != 176 || v82[1] != 1)
        {
          continue;
        }

        v26 = (v82 + 2);
        *(a2 + 1) = v26;
LABEL_229:
        if (v26 >= v23 || (v83 = *v26, v83 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 152));
          if (!this)
          {
            return this;
          }

          v84 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *(v3 + 152) = v83;
          v84 = (v26 + 1);
          *(a2 + 1) = v84;
        }

        *(v3 + 160) |= 0x200000u;
        if (v23 - v84 < 2 || *v84 != 184 || v84[1] != 1)
        {
          continue;
        }

        v32 = (v84 + 2);
        *(a2 + 1) = v32;
LABEL_238:
        v87 = 0;
        if (v32 >= v23 || (v85 = *v32, (v85 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!this)
          {
            return this;
          }

          v85 = v87;
          v86 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v86 = v32 + 1;
          *(a2 + 1) = v86;
        }

        *(v3 + 130) = v85 != 0;
        *(v3 + 160) |= 0x400000u;
        if (v86 != v23 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        this = 1;
        *(a2 + 36) = 1;
        return this;
      case 3u:
        if (v7 == 2)
        {
          goto LABEL_72;
        }

        goto LABEL_55;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_82;
        }

        goto LABEL_55;
      case 5u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v17 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_92;
      case 6u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v25 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_100;
      case 7u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v28 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_108;
      case 8u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v21 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_116;
      case 9u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v31 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_124;
      case 0xAu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v19 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_132;
      case 0xBu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v30 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_140;
      case 0xCu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_148;
      case 0xDu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v18 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_156;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_55;
        }

        v27 = *(v3 + 160);
        goto LABEL_164;
      case 0xFu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_170;
      case 0x10u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v20 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_179;
      case 0x11u:
        if (v7 != 2)
        {
          goto LABEL_55;
        }

        v12 = *(v3 + 160);
        goto LABEL_188;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_195;
        }

        goto LABEL_55;
      case 0x13u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v29 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_202;
      case 0x14u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v33 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_211;
      case 0x15u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_220;
      case 0x16u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v26 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_229;
      case 0x17u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_55;
        }

        v32 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_238;
      default:
LABEL_55:
        if (v7 == 4)
        {
          return 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
        if (this)
        {
          continue;
        }

        return 0;
    }

    return this;
  }
}

uint64_t awd::metrics::BluetoothContextualMetric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 160);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 160);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 40), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v5 + 16) + 8 * v7);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v7;
    }

    while (v7 < *(v5 + 24));
  }

  if (*(v5 + 56) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v5 + 48) + 8 * v9);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v9;
    }

    while (v9 < *(v5 + 56));
  }

  v11 = *(v5 + 160);
  if ((v11 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 44), a2, a4);
    v11 = *(v5 + 160);
    if ((v11 & 0x20) == 0)
    {
LABEL_13:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 72), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x40) == 0)
  {
LABEL_14:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 76), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x80) == 0)
  {
LABEL_15:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 80), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x100) == 0)
  {
LABEL_16:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 128), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x200) == 0)
  {
LABEL_17:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 84), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x400) == 0)
  {
LABEL_18:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(v5 + 88), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x800) == 0)
  {
LABEL_19:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 96), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x1000) == 0)
  {
LABEL_20:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 100), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x2000) == 0)
  {
LABEL_21:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = *(v5 + 104);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v11 = *(v5 + 160);
  if ((v11 & 0x4000) == 0)
  {
LABEL_22:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 112), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x8000) == 0)
  {
LABEL_23:
    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 116), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x10000) == 0)
  {
LABEL_24:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  v13 = *(v5 + 120);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v11 = *(v5 + 160);
  if ((v11 & 0x20000) == 0)
  {
LABEL_25:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  v14 = *(v5 + 136);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v11 = *(v5 + 160);
  if ((v11 & 0x40000) == 0)
  {
LABEL_26:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 132), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x80000) == 0)
  {
LABEL_27:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x14, *(v5 + 129), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x100000) == 0)
  {
LABEL_28:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

LABEL_48:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 152), a2, a4);
    if ((*(v5 + 160) & 0x400000) == 0)
    {
      return this;
    }

    goto LABEL_49;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x15, *(v5 + 144), a2, a4);
  v11 = *(v5 + 160);
  if ((v11 & 0x200000) != 0)
  {
    goto LABEL_48;
  }

LABEL_29:
  if ((v11 & 0x400000) == 0)
  {
    return this;
  }

LABEL_49:
  v15 = *(v5 + 130);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x17, v15, a2, a4);
}

uint64_t awd::metrics::BluetoothContextualMetric::ByteSize(awd::metrics::BluetoothContextualMetric *this)
{
  v2 = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 40);
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

  v4 = *(this + 10);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 40);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(this + 11);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 40);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    if ((v2 & 0x20) == 0)
    {
LABEL_13:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 18);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 40);
  }

  else
  {
    v9 = 2;
  }

  v3 += v9;
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_24:
  v10 = *(this + 19);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 40);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 0x80) != 0)
  {
LABEL_28:
    v12 = *(this + 20);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v2 = *(this + 40);
    }

    else
    {
      v13 = 2;
    }

    v3 += v13;
  }

LABEL_32:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_71;
  }

  v3 += (v2 >> 7) & 2;
  if ((v2 & 0x200) != 0)
  {
    v14 = *(this + 21);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v2 = *(this + 40);
    }

    else
    {
      v15 = 2;
    }

    v3 += v15;
    if ((v2 & 0x400) == 0)
    {
LABEL_35:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_46;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_35;
  }

  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 11)) + 1;
  v2 = *(this + 40);
  if ((v2 & 0x800) == 0)
  {
LABEL_36:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_50;
  }

LABEL_46:
  v16 = *(this + 24);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 40);
  }

  else
  {
    v17 = 2;
  }

  v3 += v17;
  if ((v2 & 0x1000) == 0)
  {
LABEL_37:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_54;
  }

LABEL_50:
  v18 = *(this + 25);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 40);
  }

  else
  {
    v19 = 2;
  }

  v3 += v19;
  if ((v2 & 0x2000) == 0)
  {
LABEL_38:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_63;
  }

LABEL_54:
  v20 = *(this + 13);
  v21 = *(v20 + 23);
  v22 = v21;
  v23 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v24 = *(v20 + 23);
  }

  else
  {
    v24 = v23;
  }

  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
    v21 = *(v20 + 23);
    v23 = *(v20 + 8);
    v2 = *(this + 40);
    v22 = *(v20 + 23);
  }

  else
  {
    v25 = 1;
  }

  if (v22 < 0)
  {
    v21 = v23;
  }

  v3 += v25 + v21 + 1;
  if ((v2 & 0x4000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

LABEL_63:
  v26 = *(this + 28);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 40);
  }

  else
  {
    v27 = 2;
  }

  v3 += v27;
  if ((v2 & 0x8000) != 0)
  {
LABEL_67:
    v28 = *(this + 29);
    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 2;
      v2 = *(this + 40);
    }

    else
    {
      v29 = 3;
    }

    v3 += v29;
  }

LABEL_71:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_109;
  }

  if ((v2 & 0x10000) == 0)
  {
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_74;
    }

LABEL_85:
    v36 = *(this + 17);
    v37 = *(v36 + 23);
    v38 = v37;
    v39 = *(v36 + 8);
    if ((v37 & 0x80u) == 0)
    {
      v40 = *(v36 + 23);
    }

    else
    {
      v40 = v39;
    }

    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
      v37 = *(v36 + 23);
      v39 = *(v36 + 8);
      v2 = *(this + 40);
      v38 = *(v36 + 23);
    }

    else
    {
      v41 = 1;
    }

    if (v38 < 0)
    {
      v37 = v39;
    }

    v3 += v41 + v37 + 2;
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_94;
  }

  v30 = *(this + 15);
  v31 = *(v30 + 23);
  v32 = v31;
  v33 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v34 = *(v30 + 23);
  }

  else
  {
    v34 = v33;
  }

  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
    v31 = *(v30 + 23);
    v33 = *(v30 + 8);
    v2 = *(this + 40);
    v32 = *(v30 + 23);
  }

  else
  {
    v35 = 1;
  }

  if (v32 < 0)
  {
    v31 = v33;
  }

  v3 += v35 + v31 + 2;
  if ((v2 & 0x20000) != 0)
  {
    goto LABEL_85;
  }

LABEL_74:
  if ((v2 & 0x40000) != 0)
  {
LABEL_94:
    v42 = *(this + 33);
    if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
      v2 = *(this + 40);
    }

    else
    {
      v43 = 3;
    }

    v3 += v43;
  }

LABEL_98:
  if ((v2 & 0x80000) != 0)
  {
    v3 += 3;
  }

  if ((v2 & 0x100000) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 18)) + 2;
    v2 = *(this + 40);
  }

  if ((v2 & 0x200000) != 0)
  {
    v44 = *(this + 38);
    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
      v2 = *(this + 40);
    }

    else
    {
      v45 = 3;
    }

    v3 += v45;
  }

  if ((v2 & 0x400000) != 0)
  {
    v3 += 3;
  }

LABEL_109:
  v46 = *(this + 6);
  v47 = v46 + v3;
  if (v46 >= 1)
  {
    for (i = 0; i < v46; ++i)
    {
      v49 = *(*(this + 2) + 8 * i);
      v50 = *(v49 + 23);
      v51 = v50;
      v52 = *(v49 + 8);
      if ((v50 & 0x80u) == 0)
      {
        v53 = *(v49 + 23);
      }

      else
      {
        v53 = v52;
      }

      if (v53 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
        v50 = *(v49 + 23);
        v52 = *(v49 + 8);
        v46 = *(this + 6);
        v51 = *(v49 + 23);
      }

      else
      {
        v54 = 1;
      }

      if (v51 < 0)
      {
        v50 = v52;
      }

      v47 += v54 + v50;
    }
  }

  v55 = *(this + 14);
  v56 = (v55 + v47);
  if (v55 >= 1)
  {
    for (j = 0; j < v55; ++j)
    {
      v58 = *(*(this + 6) + 8 * j);
      v59 = *(v58 + 23);
      v60 = v59;
      v61 = *(v58 + 8);
      if ((v59 & 0x80u) == 0)
      {
        v62 = *(v58 + 23);
      }

      else
      {
        v62 = v61;
      }

      if (v62 >= 0x80)
      {
        v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62);
        v59 = *(v58 + 23);
        v61 = *(v58 + 8);
        v55 = *(this + 14);
        v60 = *(v58 + 23);
      }

      else
      {
        v63 = 1;
      }

      if (v60 < 0)
      {
        v59 = v61;
      }

      v56 = (v63 + v56 + v59);
    }
  }

  *(this + 39) = v56;
  return v56;
}

void *awd::metrics::BluetoothContextualMetric::CheckTypeAndMergeFrom(awd::metrics::BluetoothContextualMetric *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothContextualMetric::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BluetoothContextualMetric::MergeFrom(this, lpsrc);
}

const awd::metrics::BluetoothContextualMetric *awd::metrics::BluetoothContextualMetric::CopyFrom(const awd::metrics::BluetoothContextualMetric *this, const awd::metrics::BluetoothContextualMetric *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return awd::metrics::BluetoothContextualMetric::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::BluetoothContextualMetric::Swap(uint64_t this, awd::metrics::BluetoothContextualMetric *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 44);
    *(v3 + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 72);
    *(v3 + 72) = *(a2 + 18);
    *(a2 + 18) = v6;
    v7 = *(v3 + 76);
    *(v3 + 76) = *(a2 + 19);
    *(a2 + 19) = v7;
    v8 = *(v3 + 80);
    *(v3 + 80) = *(a2 + 20);
    *(a2 + 20) = v8;
    LOBYTE(v8) = *(v3 + 128);
    *(v3 + 128) = *(a2 + 128);
    *(a2 + 128) = v8;
    v9 = *(v3 + 84);
    *(v3 + 84) = *(a2 + 21);
    *(a2 + 21) = v9;
    v10 = *(v3 + 88);
    *(v3 + 88) = *(a2 + 11);
    *(a2 + 11) = v10;
    LODWORD(v10) = *(v3 + 96);
    *(v3 + 96) = *(a2 + 24);
    *(a2 + 24) = v10;
    LODWORD(v10) = *(v3 + 100);
    *(v3 + 100) = *(a2 + 25);
    *(a2 + 25) = v10;
    v11 = *(v3 + 104);
    *(v3 + 104) = *(a2 + 13);
    *(a2 + 13) = v11;
    LODWORD(v11) = *(v3 + 112);
    *(v3 + 112) = *(a2 + 28);
    *(a2 + 28) = v11;
    LODWORD(v11) = *(v3 + 116);
    *(v3 + 116) = *(a2 + 29);
    *(a2 + 29) = v11;
    v12 = *(v3 + 120);
    *(v3 + 120) = *(a2 + 15);
    *(a2 + 15) = v12;
    LODWORD(v12) = *(v3 + 132);
    *(v3 + 132) = *(a2 + 33);
    *(a2 + 33) = v12;
    LOBYTE(v12) = *(v3 + 129);
    *(v3 + 129) = *(a2 + 129);
    *(a2 + 129) = v12;
    v13 = *(v3 + 136);
    v14 = *(v3 + 144);
    v15 = *(a2 + 18);
    *(v3 + 136) = *(a2 + 17);
    *(v3 + 144) = v15;
    *(a2 + 17) = v13;
    *(a2 + 18) = v14;
    LODWORD(v13) = *(v3 + 152);
    *(v3 + 152) = *(a2 + 38);
    *(a2 + 38) = v13;
    LOBYTE(v13) = *(v3 + 130);
    *(v3 + 130) = *(a2 + 130);
    *(a2 + 130) = v13;
    LODWORD(v13) = *(v3 + 160);
    *(v3 + 160) = *(a2 + 40);
    *(a2 + 40) = v13;
    LODWORD(v13) = *(v3 + 156);
    *(v3 + 156) = *(a2 + 39);
    *(a2 + 39) = v13;
  }

  return this;
}

double awd::metrics::BluetoothExposureNotificationDetection::SharedCtor(awd::metrics::BluetoothExposureNotificationDetection *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothExposureNotificationDetection *awd::metrics::BluetoothExposureNotificationDetection::BluetoothExposureNotificationDetection(awd::metrics::BluetoothExposureNotificationDetection *this, const awd::metrics::BluetoothExposureNotificationDetection *a2)
{
  *this = &unk_2A1D4C660;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  awd::metrics::BluetoothExposureNotificationDetection::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothExposureNotificationDetection::MergeFrom(awd::metrics::BluetoothExposureNotificationDetection *this, const awd::metrics::BluetoothExposureNotificationDetection *a2)
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

void sub_2963BA084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationDetection::~BluetoothExposureNotificationDetection(awd::metrics::BluetoothExposureNotificationDetection *this)
{
  *this = &unk_2A1D4C660;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C660;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C660;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationDetection::default_instance(awd::metrics::BluetoothExposureNotificationDetection *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationDetection::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationDetection::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationDetection::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationDetection::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationDetection::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationDetection *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::BluetoothExposureNotificationDetection::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothExposureNotificationDetection::ByteSize(awd::metrics::BluetoothExposureNotificationDetection *this)
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

void awd::metrics::BluetoothExposureNotificationDetection::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationDetection *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothExposureNotificationDetection::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationDetection::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationDetection::CopyFrom(awd::metrics::BluetoothExposureNotificationDetection *this, const awd::metrics::BluetoothExposureNotificationDetection *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationDetection::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationDetection::Swap(uint64_t this, awd::metrics::BluetoothExposureNotificationDetection *a2)
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

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors(awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *this, const awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4C6D8;
  awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::MergeFrom(awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *this, const awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *a2)
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

void sub_2963BAAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::~BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors(awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *this)
{
  *this = &unk_2A1D4C6D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C6D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C6D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::default_instance(awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 9)
      {
        break;
      }

      if (TagFallback >> 3 != 8 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 72)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 5) |= 2u;
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

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::ByteSize(awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
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
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
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

LABEL_14:
  *(this + 4) = v3;
  return v3;
}

void awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::CopyFrom(awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *this, const awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::MergeFrom(this, a2);
  }
}

awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::Swap(awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *this, awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors *a2)
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

double awd::metrics::BluetoothExposureNotificationDaemonStats::SharedCtor(awd::metrics::BluetoothExposureNotificationDaemonStats *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

awd::metrics::BluetoothExposureNotificationDaemonStats *awd::metrics::BluetoothExposureNotificationDaemonStats::BluetoothExposureNotificationDaemonStats(awd::metrics::BluetoothExposureNotificationDaemonStats *this, const awd::metrics::BluetoothExposureNotificationDaemonStats *a2)
{
  *this = &unk_2A1D4C750;
  *(this + 8) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  awd::metrics::BluetoothExposureNotificationDaemonStats::MergeFrom(this, a2);
  return this;
}

void sub_2963BB094(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(v1 + 5);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationDaemonStats::MergeFrom(awd::metrics::BluetoothExposureNotificationDaemonStats *this, const awd::metrics::BluetoothExposureNotificationDaemonStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>((this + 40), a2 + 40);
  LOBYTE(v4) = *(a2 + 68);
  if (v4)
  {
    if (*(a2 + 68))
    {
      v6 = *(a2 + 1);
      *(this + 17) |= 1u;
      *(this + 1) = v6;
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

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 17) |= 2u;
    *(this + 4) = v7;
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
    v8 = *(a2 + 5);
    *(this + 17) |= 4u;
    *(this + 5) = v8;
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
    v9 = *(a2 + 6);
    *(this + 17) |= 8u;
    *(this + 6) = v9;
    v4 = *(a2 + 17);
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
    *(this + 17) |= 0x10u;
    *(this + 7) = v10;
    v4 = *(a2 + 17);
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
    *(this + 17) |= 0x20u;
    *(this + 8) = v11;
    if ((*(a2 + 17) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 9);
    *(this + 17) |= 0x40u;
    *(this + 9) = v5;
  }
}

void sub_2963BB214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationDaemonStats::~BluetoothExposureNotificationDaemonStats(awd::metrics::BluetoothExposureNotificationDaemonStats *this)
{
  *this = &unk_2A1D4C750;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(this + 5);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothExposureNotificationDaemonStats::~BluetoothExposureNotificationDaemonStats(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats::default_instance(awd::metrics::BluetoothExposureNotificationDaemonStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationDaemonStats::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationDaemonStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationDaemonStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats::Clear(awd::metrics::BluetoothExposureNotificationDaemonStats *this)
{
  if (*(this + 68))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(this + 40);
  *(this + 17) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationDaemonStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 4)
      {
        break;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_51;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      if (v6 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v12 >= v8 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 17) |= 1u;
        if (v14 < v8 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_43:
          if (v9 >= v8 || (v19 = *v9, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v19;
            v20 = v9 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 17) |= 2u;
          if (v20 < v8 && *v20 == 24)
          {
            v16 = v20 + 1;
            *(a2 + 1) = v16;
LABEL_51:
            if (v16 >= v8 || (v21 = *v16, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v22 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v21;
              v22 = v16 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 17) |= 4u;
            if (v22 < v8 && *v22 == 32)
            {
              v11 = v22 + 1;
              *(a2 + 1) = v11;
LABEL_59:
              if (v11 >= v8 || (v23 = *v11, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v24 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v23;
                v24 = v11 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 17) |= 8u;
              if (v24 < v8 && *v24 == 40)
              {
                v15 = v24 + 1;
                *(a2 + 1) = v15;
LABEL_67:
                if (v15 >= v8 || (v25 = *v15, v25 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 7) = v25;
                  v26 = v15 + 1;
                  *(a2 + 1) = v26;
                }

                *(this + 17) |= 0x10u;
                if (v26 < v8 && *v26 == 48)
                {
                  v10 = v26 + 1;
                  *(a2 + 1) = v10;
LABEL_75:
                  if (v10 >= v8 || (v27 = *v10, v27 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                    if (!result)
                    {
                      return result;
                    }

                    v28 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 8) = v27;
                    v28 = v10 + 1;
                    *(a2 + 1) = v28;
                  }

                  *(this + 17) |= 0x20u;
                  if (v28 < v8 && *v28 == 56)
                  {
                    v17 = v28 + 1;
                    *(a2 + 1) = v17;
LABEL_83:
                    if (v17 >= v8 || (v29 = *v17, v29 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                      if (!result)
                      {
                        return result;
                      }

                      v30 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 9) = v29;
                      v30 = v17 + 1;
                      *(a2 + 1) = v30;
                    }

                    *(this + 17) |= 0x40u;
                    if (v30 < v8 && *v30 == 82)
                    {
LABEL_90:
                      *(a2 + 1) = v30 + 1;
                      goto LABEL_91;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        if (v6 == 2 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_43;
        }

LABEL_34:
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

    if (TagFallback >> 3 <= 6)
    {
      if (v6 == 5)
      {
        if ((TagFallback & 7) == 0)
        {
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_67;
        }
      }

      else if (v6 == 6 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_75;
      }

      goto LABEL_34;
    }

    if (v6 == 7)
    {
      if ((TagFallback & 7) == 0)
      {
        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_83;
      }

      goto LABEL_34;
    }

    if (v6 != 10 || v7 != 2)
    {
      goto LABEL_34;
    }

LABEL_91:
    v31 = *(this + 13);
    v32 = *(this + 12);
    if (v32 >= v31)
    {
      if (v31 == *(this + 14))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
        v31 = *(this + 13);
      }

      *(this + 13) = v31 + 1;
      operator new();
    }

    v33 = *(this + 5);
    *(this + 12) = v32 + 1;
    v34 = *(v33 + 8 * v32);
    v42 = 0;
    v35 = *(a2 + 1);
    if (v35 >= *(a2 + 2) || *v35 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
      {
        return 0;
      }
    }

    else
    {
      v42 = *v35;
      *(a2 + 1) = v35 + 1;
    }

    v36 = *(a2 + 14);
    v37 = *(a2 + 15);
    *(a2 + 14) = v36 + 1;
    if (v36 >= v37)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::MergePartialFromCodedStream(v34, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v38 = *(a2 + 14);
    v39 = __OFSUB__(v38, 1);
    v40 = v38 - 1;
    if (v40 < 0 == v39)
    {
      *(a2 + 14) = v40;
    }

    v30 = *(a2 + 1);
    v41 = *(a2 + 2);
    if (v30 < v41 && *v30 == 82)
    {
      goto LABEL_90;
    }

    if (v30 == v41 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  if ((*(v5 + 68) & 0x40) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  }

LABEL_9:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats::ByteSize(awd::metrics::BluetoothExposureNotificationDaemonStats *this)
{
  LOBYTE(v2) = *(this + 68);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_37;
  }

  if (*(this + 68))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 17);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 68) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 17);
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
      v2 = *(this + 17);
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
    v2 = *(this + 17);
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

    goto LABEL_29;
  }

LABEL_25:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 17);
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
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
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

    v3 += v15;
  }

LABEL_37:
  v16 = *(this + 12);
  v17 = (v16 + v3);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::ByteSize(*(*(this + 5) + 8 * v18));
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

    while (v18 < *(this + 12));
  }

  *(this + 16) = v17;
  return v17;
}

void awd::metrics::BluetoothExposureNotificationDaemonStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationDaemonStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothExposureNotificationDaemonStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationDaemonStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationDaemonStats::CopyFrom(awd::metrics::BluetoothExposureNotificationDaemonStats *this, const awd::metrics::BluetoothExposureNotificationDaemonStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationDaemonStats::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationDaemonStats::Swap(uint64_t this, awd::metrics::BluetoothExposureNotificationDaemonStats *a2)
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
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 68);
    *(v3 + 68) = *(a2 + 17);
    *(a2 + 17) = v5;
    v6 = *(v3 + 64);
    *(v3 + 64) = *(a2 + 16);
    *(a2 + 16) = v6;
  }

  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents(awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *this, const awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4C7C8;
  awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::MergeFrom(awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *this, const awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *a2)
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

void sub_2963BBED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::~BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents(awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *this)
{
  *this = &unk_2A1D4C7C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C7C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C7C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::default_instance(awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 5)
      {
        break;
      }

      if (TagFallback >> 3 != 4 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 40)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 5) |= 2u;
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

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::ByteSize(awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
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
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
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

LABEL_14:
  *(this + 4) = v3;
  return v3;
}

void awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::CopyFrom(awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *this, const awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::MergeFrom(this, a2);
  }
}

awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::Swap(awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *this, awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents *a2)
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

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent::SharedCtor(uint64_t this)
{
  *(this + 52) = 0;
  *(this + 48) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  return this;
}

awd::metrics::BluetoothExposureNotificationFrameworkEvent *awd::metrics::BluetoothExposureNotificationFrameworkEvent::BluetoothExposureNotificationFrameworkEvent(awd::metrics::BluetoothExposureNotificationFrameworkEvent *this, const awd::metrics::BluetoothExposureNotificationFrameworkEvent *a2)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *this = &unk_2A1D4C840;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 14) = 0;
  awd::metrics::BluetoothExposureNotificationFrameworkEvent::MergeFrom(this, a2);
  return this;
}

void sub_2963BC4B8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationFrameworkEvent::MergeFrom(awd::metrics::BluetoothExposureNotificationFrameworkEvent *this, const awd::metrics::BluetoothExposureNotificationFrameworkEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>((this + 24), a2 + 24);
  LOBYTE(v4) = *(a2 + 56);
  if (v4)
  {
    if (*(a2 + 56))
    {
      v5 = *(a2 + 1);
      *(this + 14) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 14);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 56) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 12);
    *(this + 14) |= 2u;
    *(this + 12) = v6;
    if ((*(a2 + 14) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 2);
    *(this + 14) |= 4u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_2963BC5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationFrameworkEvent::~BluetoothExposureNotificationFrameworkEvent(awd::metrics::BluetoothExposureNotificationFrameworkEvent *this)
{
  *this = &unk_2A1D4C840;
  v2 = (this + 24);
  awd::metrics::BluetoothExposureNotificationFrameworkEvent::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothExposureNotificationFrameworkEvent::~BluetoothExposureNotificationFrameworkEvent(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent::default_instance(awd::metrics::BluetoothExposureNotificationFrameworkEvent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationFrameworkEvent::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationFrameworkEvent::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationFrameworkEvent::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent::Clear(awd::metrics::BluetoothExposureNotificationFrameworkEvent *this)
{
  v2 = *(this + 56);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 12) = 0;
    if ((v2 & 4) != 0)
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
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(this + 24);
  *(this + 14) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationFrameworkEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            goto LABEL_21;
          }

          v14 = *(this + 14);
LABEL_38:
          *(this + 14) = v14 | 4;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          if (v18 < *(a2 + 2) && *v18 == 50)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v7 != 6 || v8 != 2)
          {
            goto LABEL_21;
          }

          while (2)
          {
            v19 = *(this + 9);
            v20 = *(this + 8);
            if (v20 >= v19)
            {
              if (v19 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v19 = *(this + 9);
              }

              *(this + 9) = v19 + 1;
              operator new();
            }

            v21 = *(this + 3);
            *(this + 8) = v20 + 1;
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
            if (!awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
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
            if (v18 < v29 && *v18 == 50)
            {
LABEL_43:
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

      *(this + 14) |= 1u;
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_30:
        if (v10 >= v9 || (v16 = *v10, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v16;
          v17 = v10 + 1;
          *(a2 + 1) = v17;
        }

        v14 = *(this + 14) | 2;
        *(this + 14) = v14;
        if (v17 < v9 && *v17 == 26)
        {
          *(a2 + 1) = v17 + 1;
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

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 48), a2, a4);
  if ((*(v5 + 56) & 4) != 0)
  {
LABEL_4:
    v7 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent::ByteSize(awd::metrics::BluetoothExposureNotificationFrameworkEvent *this)
{
  LOBYTE(v2) = *(this + 56);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if (*(this + 56))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 14);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 56) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 12);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 2);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v3 += v11 + v7 + 1;
  }

LABEL_21:
  v12 = *(this + 8);
  v13 = (v12 + v3);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::ByteSize(*(*(this + 3) + 8 * v14));
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      }

      else
      {
        v17 = 1;
      }

      v13 = (v16 + v13 + v17);
      ++v14;
    }

    while (v14 < *(this + 8));
  }

  *(this + 13) = v13;
  return v13;
}

void awd::metrics::BluetoothExposureNotificationFrameworkEvent::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationFrameworkEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothExposureNotificationFrameworkEvent::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationFrameworkEvent::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationFrameworkEvent::CopyFrom(awd::metrics::BluetoothExposureNotificationFrameworkEvent *this, const awd::metrics::BluetoothExposureNotificationFrameworkEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationFrameworkEvent::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationFrameworkEvent::Swap(uint64_t this, awd::metrics::BluetoothExposureNotificationFrameworkEvent *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
    v5 = *(this + 8);
    v6 = *(this + 16);
    v7 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v7;
    *(a2 + 1) = v5;
    *(a2 + 2) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v8 = *(v3 + 56);
    *(v3 + 56) = *(a2 + 14);
    *(a2 + 14) = v8;
    v9 = *(v3 + 52);
    *(v3 + 52) = *(a2 + 13);
    *(a2 + 13) = v9;
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeAudioEasyPairing::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothLeAudioEasyPairing *awd::metrics::BluetoothLeAudioEasyPairing::BluetoothLeAudioEasyPairing(awd::metrics::BluetoothLeAudioEasyPairing *this, const awd::metrics::BluetoothLeAudioEasyPairing *a2)
{
  *this = &unk_2A1D4C8B8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothLeAudioEasyPairing::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeAudioEasyPairing::MergeFrom(awd::metrics::BluetoothLeAudioEasyPairing *this, const awd::metrics::BluetoothLeAudioEasyPairing *a2)
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

void sub_2963BD0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeAudioEasyPairing::~BluetoothLeAudioEasyPairing(awd::metrics::BluetoothLeAudioEasyPairing *this)
{
  *this = &unk_2A1D4C8B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C8B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C8B8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeAudioEasyPairing::default_instance(awd::metrics::BluetoothLeAudioEasyPairing *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeAudioEasyPairing::default_instance_;
  if (!awd::metrics::BluetoothLeAudioEasyPairing::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeAudioEasyPairing::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeAudioEasyPairing::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothLeAudioEasyPairing::MergePartialFromCodedStream(awd::metrics::BluetoothLeAudioEasyPairing *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::BluetoothLeAudioEasyPairing::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothLeAudioEasyPairing::ByteSize(awd::metrics::BluetoothLeAudioEasyPairing *this)
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

void awd::metrics::BluetoothLeAudioEasyPairing::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeAudioEasyPairing *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeAudioEasyPairing::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeAudioEasyPairing::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeAudioEasyPairing::CopyFrom(awd::metrics::BluetoothLeAudioEasyPairing *this, const awd::metrics::BluetoothLeAudioEasyPairing *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeAudioEasyPairing::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeAudioEasyPairing::Swap(uint64_t this, awd::metrics::BluetoothLeAudioEasyPairing *a2)
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

double awd::metrics::BluetoothLEScan::SharedCtor(awd::metrics::BluetoothLEScan *this)
{
  result = 0.0;
  *(this + 244) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothLEScan *awd::metrics::BluetoothLEScan::BluetoothLEScan(awd::metrics::BluetoothLEScan *this, const awd::metrics::BluetoothLEScan *a2)
{
  *this = &unk_2A1D4C930;
  *(this + 8) = 0u;
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
  *(this + 244) = 0u;
  awd::metrics::BluetoothLEScan::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLEScan::MergeFrom(awd::metrics::BluetoothLEScan *this, const awd::metrics::BluetoothLEScan *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v65);
  }

  v4 = *(a2 + 63);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v13 = *(a2 + 1);
    *(this + 63) |= 1u;
    *(this + 1) = v13;
    v4 = *(a2 + 63);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_80;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v14 = *(a2 + 4);
  *(this + 63) |= 2u;
  *(this + 4) = v14;
  v4 = *(a2 + 63);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_81;
  }

LABEL_80:
  v15 = *(a2 + 5);
  *(this + 63) |= 4u;
  *(this + 5) = v15;
  v4 = *(a2 + 63);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_82;
  }

LABEL_81:
  v16 = *(a2 + 6);
  *(this + 63) |= 8u;
  *(this + 6) = v16;
  v4 = *(a2 + 63);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_83:
    v18 = *(a2 + 8);
    *(this + 63) |= 0x20u;
    *(this + 8) = v18;
    v4 = *(a2 + 63);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_84;
  }

LABEL_82:
  v17 = *(a2 + 7);
  *(this + 63) |= 0x10u;
  *(this + 7) = v17;
  v4 = *(a2 + 63);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_83;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_84:
  v19 = *(a2 + 9);
  *(this + 63) |= 0x40u;
  *(this + 9) = v19;
  v4 = *(a2 + 63);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 63) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 63);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v20 = *(a2 + 11);
    *(this + 63) |= 0x100u;
    *(this + 11) = v20;
    v4 = *(a2 + 63);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_88;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v21 = *(a2 + 12);
  *(this + 63) |= 0x200u;
  *(this + 12) = v21;
  v4 = *(a2 + 63);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_89;
  }

LABEL_88:
  v22 = *(a2 + 13);
  *(this + 63) |= 0x400u;
  *(this + 13) = v22;
  v4 = *(a2 + 63);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_90;
  }

LABEL_89:
  v23 = *(a2 + 14);
  *(this + 63) |= 0x800u;
  *(this + 14) = v23;
  v4 = *(a2 + 63);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_91;
  }

LABEL_90:
  v24 = *(a2 + 15);
  *(this + 63) |= 0x1000u;
  *(this + 15) = v24;
  v4 = *(a2 + 63);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_92;
  }

LABEL_91:
  v25 = *(a2 + 16);
  *(this + 63) |= 0x2000u;
  *(this + 16) = v25;
  v4 = *(a2 + 63);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_92:
  v26 = *(a2 + 17);
  *(this + 63) |= 0x4000u;
  *(this + 17) = v26;
  v4 = *(a2 + 63);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 18);
    *(this + 63) |= 0x8000u;
    *(this + 18) = v6;
    v4 = *(a2 + 63);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v4 & 0x10000) != 0)
  {
    v27 = *(a2 + 19);
    *(this + 63) |= 0x10000u;
    *(this + 19) = v27;
    v4 = *(a2 + 63);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_96;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v28 = *(a2 + 20);
  *(this + 63) |= 0x20000u;
  *(this + 20) = v28;
  v4 = *(a2 + 63);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_97;
  }

LABEL_96:
  v29 = *(a2 + 21);
  *(this + 63) |= 0x40000u;
  *(this + 21) = v29;
  v4 = *(a2 + 63);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_98;
  }

LABEL_97:
  v30 = *(a2 + 22);
  *(this + 63) |= 0x80000u;
  *(this + 22) = v30;
  v4 = *(a2 + 63);
  if ((v4 & 0x100000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_99;
  }

LABEL_98:
  v31 = *(a2 + 23);
  *(this + 63) |= 0x100000u;
  *(this + 23) = v31;
  v4 = *(a2 + 63);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_100;
  }

LABEL_99:
  v32 = *(a2 + 24);
  *(this + 63) |= 0x200000u;
  *(this + 24) = v32;
  v4 = *(a2 + 63);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_100:
  v33 = *(a2 + 25);
  *(this + 63) |= 0x400000u;
  *(this + 25) = v33;
  v4 = *(a2 + 63);
  if ((v4 & 0x800000) != 0)
  {
LABEL_32:
    v7 = *(a2 + 26);
    *(this + 63) |= 0x800000u;
    *(this + 26) = v7;
    v4 = *(a2 + 63);
  }

LABEL_33:
  if (!HIBYTE(v4))
  {
    goto LABEL_42;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v55 = *(a2 + 27);
    *(this + 63) |= 0x1000000u;
    *(this + 27) = v55;
    v4 = *(a2 + 63);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_128;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v56 = *(a2 + 28);
  *(this + 63) |= 0x2000000u;
  *(this + 28) = v56;
  v4 = *(a2 + 63);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_129;
  }

LABEL_128:
  v57 = *(a2 + 29);
  *(this + 63) |= 0x4000000u;
  *(this + 29) = v57;
  v4 = *(a2 + 63);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_130;
  }

LABEL_129:
  v58 = *(a2 + 30);
  *(this + 63) |= 0x8000000u;
  *(this + 30) = v58;
  v4 = *(a2 + 63);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_131;
  }

LABEL_130:
  v59 = *(a2 + 31);
  *(this + 63) |= 0x10000000u;
  *(this + 31) = v59;
  v4 = *(a2 + 63);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_132:
    v61 = *(a2 + 33);
    *(this + 63) |= 0x40000000u;
    *(this + 33) = v61;
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_133;
  }

LABEL_131:
  v60 = *(a2 + 32);
  *(this + 63) |= 0x20000000u;
  *(this + 32) = v60;
  v4 = *(a2 + 63);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_132;
  }

LABEL_41:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_133:
  v62 = *(a2 + 34);
  *(this + 63) |= 0x80000000;
  *(this + 34) = v62;
LABEL_42:
  v8 = *(a2 + 64);
  if (!v8)
  {
    goto LABEL_52;
  }

  if (v8)
  {
    v34 = *(a2 + 35);
    *(this + 64) |= 1u;
    *(this + 35) = v34;
    v8 = *(a2 + 64);
    if ((v8 & 2) == 0)
    {
LABEL_45:
      if ((v8 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_104;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_45;
  }

  v35 = *(a2 + 36);
  *(this + 64) |= 2u;
  *(this + 36) = v35;
  v8 = *(a2 + 64);
  if ((v8 & 4) == 0)
  {
LABEL_46:
    if ((v8 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_105;
  }

LABEL_104:
  v36 = *(a2 + 37);
  *(this + 64) |= 4u;
  *(this + 37) = v36;
  v8 = *(a2 + 64);
  if ((v8 & 8) == 0)
  {
LABEL_47:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_106;
  }

LABEL_105:
  v37 = *(a2 + 38);
  *(this + 64) |= 8u;
  *(this + 38) = v37;
  v8 = *(a2 + 64);
  if ((v8 & 0x10) == 0)
  {
LABEL_48:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_107;
  }

LABEL_106:
  v38 = *(a2 + 39);
  *(this + 64) |= 0x10u;
  *(this + 39) = v38;
  v8 = *(a2 + 64);
  if ((v8 & 0x20) == 0)
  {
LABEL_49:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_108;
  }

LABEL_107:
  v39 = *(a2 + 40);
  *(this + 64) |= 0x20u;
  *(this + 40) = v39;
  v8 = *(a2 + 64);
  if ((v8 & 0x40) == 0)
  {
LABEL_50:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_108:
  v40 = *(a2 + 41);
  *(this + 64) |= 0x40u;
  *(this + 41) = v40;
  v8 = *(a2 + 64);
  if ((v8 & 0x80) != 0)
  {
LABEL_51:
    v9 = *(a2 + 42);
    *(this + 64) |= 0x80u;
    *(this + 42) = v9;
    v8 = *(a2 + 64);
  }

LABEL_52:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_62;
  }

  if ((v8 & 0x100) != 0)
  {
    v41 = *(a2 + 43);
    *(this + 64) |= 0x100u;
    *(this + 43) = v41;
    v8 = *(a2 + 64);
    if ((v8 & 0x200) == 0)
    {
LABEL_55:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_112;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_55;
  }

  v42 = *(a2 + 44);
  *(this + 64) |= 0x200u;
  *(this + 44) = v42;
  v8 = *(a2 + 64);
  if ((v8 & 0x400) == 0)
  {
LABEL_56:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_113;
  }

LABEL_112:
  v43 = *(a2 + 45);
  *(this + 64) |= 0x400u;
  *(this + 45) = v43;
  v8 = *(a2 + 64);
  if ((v8 & 0x800) == 0)
  {
LABEL_57:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_114;
  }

LABEL_113:
  v44 = *(a2 + 46);
  *(this + 64) |= 0x800u;
  *(this + 46) = v44;
  v8 = *(a2 + 64);
  if ((v8 & 0x1000) == 0)
  {
LABEL_58:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_115;
  }

LABEL_114:
  v45 = *(a2 + 47);
  *(this + 64) |= 0x1000u;
  *(this + 47) = v45;
  v8 = *(a2 + 64);
  if ((v8 & 0x2000) == 0)
  {
LABEL_59:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_116;
  }

LABEL_115:
  v46 = *(a2 + 48);
  *(this + 64) |= 0x2000u;
  *(this + 48) = v46;
  v8 = *(a2 + 64);
  if ((v8 & 0x4000) == 0)
  {
LABEL_60:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_116:
  v47 = *(a2 + 49);
  *(this + 64) |= 0x4000u;
  *(this + 49) = v47;
  v8 = *(a2 + 64);
  if ((v8 & 0x8000) != 0)
  {
LABEL_61:
    v10 = *(a2 + 50);
    *(this + 64) |= 0x8000u;
    *(this + 50) = v10;
    v8 = *(a2 + 64);
  }

LABEL_62:
  if ((v8 & 0xFF0000) == 0)
  {
    goto LABEL_72;
  }

  if ((v8 & 0x10000) != 0)
  {
    v48 = *(a2 + 51);
    *(this + 64) |= 0x10000u;
    *(this + 51) = v48;
    v8 = *(a2 + 64);
    if ((v8 & 0x20000) == 0)
    {
LABEL_65:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_120;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_65;
  }

  v49 = *(a2 + 52);
  *(this + 64) |= 0x20000u;
  *(this + 52) = v49;
  v8 = *(a2 + 64);
  if ((v8 & 0x40000) == 0)
  {
LABEL_66:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_121;
  }

LABEL_120:
  v50 = *(a2 + 53);
  *(this + 64) |= 0x40000u;
  *(this + 53) = v50;
  v8 = *(a2 + 64);
  if ((v8 & 0x80000) == 0)
  {
LABEL_67:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_122;
  }

LABEL_121:
  v51 = *(a2 + 54);
  *(this + 64) |= 0x80000u;
  *(this + 54) = v51;
  v8 = *(a2 + 64);
  if ((v8 & 0x100000) == 0)
  {
LABEL_68:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_123;
  }

LABEL_122:
  v52 = *(a2 + 55);
  *(this + 64) |= 0x100000u;
  *(this + 55) = v52;
  v8 = *(a2 + 64);
  if ((v8 & 0x200000) == 0)
  {
LABEL_69:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_124;
  }

LABEL_123:
  v53 = *(a2 + 56);
  *(this + 64) |= 0x200000u;
  *(this + 56) = v53;
  v8 = *(a2 + 64);
  if ((v8 & 0x400000) == 0)
  {
LABEL_70:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_124:
  v54 = *(a2 + 57);
  *(this + 64) |= 0x400000u;
  *(this + 57) = v54;
  v8 = *(a2 + 64);
  if ((v8 & 0x800000) != 0)
  {
LABEL_71:
    v11 = *(a2 + 58);
    *(this + 64) |= 0x800000u;
    *(this + 58) = v11;
    v8 = *(a2 + 64);
  }

LABEL_72:
  if (!HIBYTE(v8))
  {
    return;
  }

  if ((v8 & 0x1000000) != 0)
  {
    v63 = *(a2 + 59);
    *(this + 64) |= 0x1000000u;
    *(this + 59) = v63;
    v8 = *(a2 + 64);
    if ((v8 & 0x2000000) == 0)
    {
LABEL_75:
      if ((v8 & 0x4000000) == 0)
      {
        return;
      }

      goto LABEL_76;
    }
  }

  else if ((v8 & 0x2000000) == 0)
  {
    goto LABEL_75;
  }

  v64 = *(a2 + 60);
  *(this + 64) |= 0x2000000u;
  *(this + 60) = v64;
  if ((*(a2 + 64) & 0x4000000) == 0)
  {
    return;
  }

LABEL_76:
  v12 = *(a2 + 61);
  *(this + 64) |= 0x4000000u;
  *(this + 61) = v12;
}

void sub_2963BE0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLEScan::~BluetoothLEScan(awd::metrics::BluetoothLEScan *this)
{
  *this = &unk_2A1D4C930;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C930;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C930;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLEScan::default_instance(awd::metrics::BluetoothLEScan *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLEScan::default_instance_;
  if (!awd::metrics::BluetoothLEScan::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLEScan::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLEScan::Clear(uint64_t this)
{
  v1 = *(this + 252);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 60) = 0u;
    *(this + 44) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 92) = 0u;
    *(this + 76) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 124) = 0u;
    *(this + 108) = 0u;
  }

  v2 = *(this + 256);
  if (v2)
  {
    *(this + 156) = 0u;
    *(this + 140) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 188) = 0u;
    *(this + 172) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 220) = 0u;
    *(this + 204) = 0u;
  }

  if (HIBYTE(v2))
  {
    *(this + 240) = 0;
    *(this + 236) = 0;
  }

  *(this + 252) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLEScan::MergePartialFromCodedStream(awd::metrics::BluetoothLEScan *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v7 = *(a2 + 1);
        v6 = *(a2 + 2);
        if (v7 < v6)
        {
          v8 = *v7;
          if ((v8 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v8;
            v9 = v7 + 1;
            *(a2 + 1) = v9;
LABEL_132:
            *(this + 63) |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v40 = v9 + 1;
              *(a2 + 1) = v40;
              goto LABEL_135;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v9 = *(a2 + 1);
          v6 = *(a2 + 2);
          goto LABEL_132;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v40 = *(a2 + 1);
        v6 = *(a2 + 2);
LABEL_135:
        if (v40 >= v6 || (v70 = *v40, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v70;
          v71 = v40 + 1;
          *(a2 + 1) = v71;
        }

        *(this + 63) |= 2u;
        if (v71 >= v6 || *v71 != 24)
        {
          continue;
        }

        v36 = v71 + 1;
        *(a2 + 1) = v36;
LABEL_143:
        if (v36 >= v6 || (v72 = *v36, v72 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v73 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v72;
          v73 = v36 + 1;
          *(a2 + 1) = v73;
        }

        *(this + 63) |= 4u;
        if (v73 >= v6 || *v73 != 32)
        {
          continue;
        }

        v38 = v73 + 1;
        *(a2 + 1) = v38;
LABEL_151:
        if (v38 >= v6 || (v74 = *v38, v74 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v75 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v74;
          v75 = v38 + 1;
          *(a2 + 1) = v75;
        }

        *(this + 63) |= 8u;
        if (v75 >= v6 || *v75 != 40)
        {
          continue;
        }

        v30 = v75 + 1;
        *(a2 + 1) = v30;
LABEL_159:
        if (v30 >= v6 || (v76 = *v30, v76 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v77 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v76;
          v77 = v30 + 1;
          *(a2 + 1) = v77;
        }

        *(this + 63) |= 0x10u;
        if (v77 >= v6 || *v77 != 48)
        {
          continue;
        }

        v45 = v77 + 1;
        *(a2 + 1) = v45;
LABEL_167:
        if (v45 >= v6 || (v78 = *v45, v78 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v79 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v78;
          v79 = v45 + 1;
          *(a2 + 1) = v79;
        }

        *(this + 63) |= 0x20u;
        if (v79 >= v6 || *v79 != 56)
        {
          continue;
        }

        v48 = v79 + 1;
        *(a2 + 1) = v48;
LABEL_175:
        if (v48 >= v6 || (v80 = *v48, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v80;
          v81 = v48 + 1;
          *(a2 + 1) = v81;
        }

        *(this + 63) |= 0x40u;
        if (v81 >= v6 || *v81 != 64)
        {
          continue;
        }

        v39 = v81 + 1;
        *(a2 + 1) = v39;
LABEL_183:
        if (v39 >= v6 || (v82 = *v39, v82 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v83 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v82;
          v83 = v39 + 1;
          *(a2 + 1) = v83;
        }

        *(this + 63) |= 0x80u;
        if (v83 >= v6 || *v83 != 72)
        {
          continue;
        }

        v51 = v83 + 1;
        *(a2 + 1) = v51;
LABEL_191:
        if (v51 >= v6 || (v84 = *v51, v84 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v85 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v84;
          v85 = v51 + 1;
          *(a2 + 1) = v85;
        }

        *(this + 63) |= 0x100u;
        if (v85 >= v6 || *v85 != 80)
        {
          continue;
        }

        v33 = v85 + 1;
        *(a2 + 1) = v33;
LABEL_199:
        if (v33 >= v6 || (v86 = *v33, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v87 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v86;
          v87 = v33 + 1;
          *(a2 + 1) = v87;
        }

        *(this + 63) |= 0x200u;
        if (v87 >= v6 || *v87 != 88)
        {
          continue;
        }

        v50 = v87 + 1;
        *(a2 + 1) = v50;
LABEL_207:
        if (v50 >= v6 || (v88 = *v50, v88 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v89 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v88;
          v89 = v50 + 1;
          *(a2 + 1) = v89;
        }

        *(this + 63) |= 0x400u;
        if (v89 >= v6 || *v89 != 96)
        {
          continue;
        }

        v28 = v89 + 1;
        *(a2 + 1) = v28;
LABEL_215:
        if (v28 >= v6 || (v90 = *v28, v90 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v91 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v90;
          v91 = v28 + 1;
          *(a2 + 1) = v91;
        }

        *(this + 63) |= 0x800u;
        if (v91 >= v6 || *v91 != 104)
        {
          continue;
        }

        v32 = v91 + 1;
        *(a2 + 1) = v32;
LABEL_223:
        if (v32 >= v6 || (v92 = *v32, v92 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v93 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v92;
          v93 = v32 + 1;
          *(a2 + 1) = v93;
        }

        *(this + 63) |= 0x1000u;
        if (v93 >= v6 || *v93 != 112)
        {
          continue;
        }

        v47 = v93 + 1;
        *(a2 + 1) = v47;
LABEL_231:
        if (v47 >= v6 || (v94 = *v47, v94 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v95 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v94;
          v95 = v47 + 1;
          *(a2 + 1) = v95;
        }

        *(this + 63) |= 0x2000u;
        if (v95 >= v6 || *v95 != 120)
        {
          continue;
        }

        v24 = v95 + 1;
        *(a2 + 1) = v24;
LABEL_239:
        if (v24 >= v6 || (v96 = *v24, v96 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v97 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v96;
          v97 = (v24 + 1);
          *(a2 + 1) = v97;
        }

        *(this + 63) |= 0x4000u;
        if (v6 - v97 < 2 || *v97 != 128 || v97[1] != 1)
        {
          continue;
        }

        v37 = (v97 + 2);
        *(a2 + 1) = v37;
LABEL_248:
        if (v37 >= v6 || (v98 = *v37, v98 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v99 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v98;
          v99 = (v37 + 1);
          *(a2 + 1) = v99;
        }

        *(this + 63) |= 0x8000u;
        if (v6 - v99 < 2 || *v99 != 136 || v99[1] != 1)
        {
          continue;
        }

        v22 = (v99 + 2);
        *(a2 + 1) = v22;
LABEL_257:
        if (v22 >= v6 || (v100 = *v22, v100 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v101 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v100;
          v101 = (v22 + 1);
          *(a2 + 1) = v101;
        }

        *(this + 63) |= 0x10000u;
        if (v6 - v101 < 2 || *v101 != 144 || v101[1] != 1)
        {
          continue;
        }

        v42 = (v101 + 2);
        *(a2 + 1) = v42;
LABEL_266:
        if (v42 >= v6 || (v102 = *v42, v102 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v103 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v102;
          v103 = (v42 + 1);
          *(a2 + 1) = v103;
        }

        *(this + 63) |= 0x20000u;
        if (v6 - v103 < 2 || *v103 != 152 || v103[1] != 1)
        {
          continue;
        }

        v49 = (v103 + 2);
        *(a2 + 1) = v49;
LABEL_275:
        if (v49 >= v6 || (v104 = *v49, v104 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v105 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v104;
          v105 = (v49 + 1);
          *(a2 + 1) = v105;
        }

        *(this + 63) |= 0x40000u;
        if (v6 - v105 < 2 || *v105 != 160 || v105[1] != 1)
        {
          continue;
        }

        v57 = (v105 + 2);
        *(a2 + 1) = v57;
LABEL_284:
        if (v57 >= v6 || (v106 = *v57, v106 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v107 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v106;
          v107 = (v57 + 1);
          *(a2 + 1) = v107;
        }

        *(this + 63) |= 0x80000u;
        if (v6 - v107 < 2 || *v107 != 168 || v107[1] != 1)
        {
          continue;
        }

        v44 = (v107 + 2);
        *(a2 + 1) = v44;
LABEL_293:
        if (v44 >= v6 || (v108 = *v44, v108 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v109 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v108;
          v109 = (v44 + 1);
          *(a2 + 1) = v109;
        }

        *(this + 63) |= 0x100000u;
        if (v6 - v109 < 2 || *v109 != 176 || v109[1] != 1)
        {
          continue;
        }

        v46 = (v109 + 2);
        *(a2 + 1) = v46;
LABEL_302:
        if (v46 >= v6 || (v110 = *v46, v110 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v111 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v110;
          v111 = (v46 + 1);
          *(a2 + 1) = v111;
        }

        *(this + 63) |= 0x200000u;
        if (v6 - v111 < 2 || *v111 != 184 || v111[1] != 1)
        {
          continue;
        }

        v55 = (v111 + 2);
        *(a2 + 1) = v55;
LABEL_311:
        if (v55 >= v6 || (v112 = *v55, v112 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v113 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v112;
          v113 = (v55 + 1);
          *(a2 + 1) = v113;
        }

        *(this + 63) |= 0x400000u;
        if (v6 - v113 < 2 || *v113 != 192 || v113[1] != 1)
        {
          continue;
        }

        v60 = (v113 + 2);
        *(a2 + 1) = v60;
LABEL_320:
        if (v60 >= v6 || (v114 = *v60, v114 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v115 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v114;
          v115 = (v60 + 1);
          *(a2 + 1) = v115;
        }

        *(this + 63) |= 0x800000u;
        if (v6 - v115 < 2 || *v115 != 200 || v115[1] != 1)
        {
          continue;
        }

        v35 = (v115 + 2);
        *(a2 + 1) = v35;
LABEL_329:
        v12 = *(a2 + 2);
        if (v35 >= v12 || (v116 = *v35, v116 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v117 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v116;
          v117 = (v35 + 1);
          *(a2 + 1) = v117;
        }

        *(this + 63) |= 0x1000000u;
        if (v12 - v117 < 2 || *v117 != 208 || v117[1] != 1)
        {
          continue;
        }

        v34 = (v117 + 2);
        *(a2 + 1) = v34;
LABEL_338:
        if (v34 >= v12 || (v118 = *v34, v118 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v119 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v118;
          v119 = (v34 + 1);
          *(a2 + 1) = v119;
        }

        *(this + 63) |= 0x2000000u;
        if (v12 - v119 < 2 || *v119 != 216 || v119[1] != 1)
        {
          continue;
        }

        v64 = (v119 + 2);
        *(a2 + 1) = v64;
LABEL_347:
        if (v64 >= v12 || (v120 = *v64, v120 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v121 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v120;
          v121 = (v64 + 1);
          *(a2 + 1) = v121;
        }

        *(this + 63) |= 0x4000000u;
        if (v12 - v121 < 2 || *v121 != 224 || v121[1] != 1)
        {
          continue;
        }

        v20 = (v121 + 2);
        *(a2 + 1) = v20;
LABEL_356:
        if (v20 >= v12 || (v122 = *v20, v122 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v123 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v122;
          v123 = (v20 + 1);
          *(a2 + 1) = v123;
        }

        *(this + 63) |= 0x8000000u;
        if (v12 - v123 < 2 || *v123 != 232 || v123[1] != 1)
        {
          continue;
        }

        v61 = (v123 + 2);
        *(a2 + 1) = v61;
LABEL_365:
        if (v61 >= v12 || (v124 = *v61, v124 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
          if (!result)
          {
            return result;
          }

          v125 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v124;
          v125 = (v61 + 1);
          *(a2 + 1) = v125;
        }

        *(this + 63) |= 0x10000000u;
        if (v12 - v125 < 2 || *v125 != 240 || v125[1] != 1)
        {
          continue;
        }

        v62 = (v125 + 2);
        *(a2 + 1) = v62;
LABEL_374:
        if (v62 >= v12 || (v126 = *v62, v126 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v127 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v126;
          v127 = (v62 + 1);
          *(a2 + 1) = v127;
        }

        *(this + 63) |= 0x20000000u;
        if (v12 - v127 < 2 || *v127 != 248 || v127[1] != 1)
        {
          continue;
        }

        v52 = (v127 + 2);
        *(a2 + 1) = v52;
LABEL_383:
        if (v52 >= v12 || (v128 = *v52, v128 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
          if (!result)
          {
            return result;
          }

          v129 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 33) = v128;
          v129 = (v52 + 1);
          *(a2 + 1) = v129;
        }

        *(this + 63) |= 0x40000000u;
        if (v12 - v129 < 2 || *v129 != 128 || v129[1] != 2)
        {
          continue;
        }

        v41 = (v129 + 2);
        *(a2 + 1) = v41;
LABEL_392:
        if (v41 >= v12 || (v130 = *v41, v130 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
          if (!result)
          {
            return result;
          }

          v131 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 34) = v130;
          v131 = (v41 + 1);
          *(a2 + 1) = v131;
        }

        *(this + 63) |= 0x80000000;
        if (v12 - v131 < 2 || *v131 != 136 || v131[1] != 2)
        {
          continue;
        }

        v53 = (v131 + 2);
        *(a2 + 1) = v53;
LABEL_401:
        if (v53 >= v12 || (v132 = *v53, v132 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
          if (!result)
          {
            return result;
          }

          v133 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 35) = v132;
          v133 = (v53 + 1);
          *(a2 + 1) = v133;
        }

        *(this + 64) |= 1u;
        if (v12 - v133 < 2 || *v133 != 144 || v133[1] != 2)
        {
          continue;
        }

        v25 = (v133 + 2);
        *(a2 + 1) = v25;
LABEL_410:
        if (v25 >= v12 || (v134 = *v25, v134 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
          if (!result)
          {
            return result;
          }

          v135 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 36) = v134;
          v135 = (v25 + 1);
          *(a2 + 1) = v135;
        }

        *(this + 64) |= 2u;
        if (v12 - v135 < 2 || *v135 != 152 || v135[1] != 2)
        {
          continue;
        }

        v21 = (v135 + 2);
        *(a2 + 1) = v21;
LABEL_419:
        if (v21 >= v12 || (v136 = *v21, v136 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 37);
          if (!result)
          {
            return result;
          }

          v137 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 37) = v136;
          v137 = (v21 + 1);
          *(a2 + 1) = v137;
        }

        *(this + 64) |= 4u;
        if (v12 - v137 < 2 || *v137 != 160 || v137[1] != 2)
        {
          continue;
        }

        v18 = (v137 + 2);
        *(a2 + 1) = v18;
LABEL_428:
        if (v18 >= v12 || (v138 = *v18, v138 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
          if (!result)
          {
            return result;
          }

          v139 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 38) = v138;
          v139 = (v18 + 1);
          *(a2 + 1) = v139;
        }

        *(this + 64) |= 8u;
        if (v12 - v139 < 2 || *v139 != 168 || v139[1] != 2)
        {
          continue;
        }

        v19 = (v139 + 2);
        *(a2 + 1) = v19;
LABEL_437:
        if (v19 >= v12 || (v140 = *v19, v140 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
          if (!result)
          {
            return result;
          }

          v141 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 39) = v140;
          v141 = (v19 + 1);
          *(a2 + 1) = v141;
        }

        *(this + 64) |= 0x10u;
        if (v12 - v141 < 2 || *v141 != 176 || v141[1] != 2)
        {
          continue;
        }

        v14 = (v141 + 2);
        *(a2 + 1) = v14;
LABEL_446:
        if (v14 >= v12 || (v142 = *v14, v142 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 40);
          if (!result)
          {
            return result;
          }

          v143 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 40) = v142;
          v143 = (v14 + 1);
          *(a2 + 1) = v143;
        }

        *(this + 64) |= 0x20u;
        if (v12 - v143 < 2 || *v143 != 184 || v143[1] != 2)
        {
          continue;
        }

        v63 = (v143 + 2);
        *(a2 + 1) = v63;
LABEL_455:
        if (v63 >= v12 || (v144 = *v63, v144 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 41);
          if (!result)
          {
            return result;
          }

          v145 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 41) = v144;
          v145 = (v63 + 1);
          *(a2 + 1) = v145;
        }

        *(this + 64) |= 0x40u;
        if (v12 - v145 < 2 || *v145 != 192 || v145[1] != 2)
        {
          continue;
        }

        v56 = (v145 + 2);
        *(a2 + 1) = v56;
LABEL_464:
        if (v56 >= v12 || (v146 = *v56, v146 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v147 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v146;
          v147 = (v56 + 1);
          *(a2 + 1) = v147;
        }

        *(this + 64) |= 0x80u;
        if (v12 - v147 < 2 || *v147 != 200 || v147[1] != 2)
        {
          continue;
        }

        v31 = (v147 + 2);
        *(a2 + 1) = v31;
LABEL_473:
        if (v31 >= v12 || (v148 = *v31, v148 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
          if (!result)
          {
            return result;
          }

          v149 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 43) = v148;
          v149 = (v31 + 1);
          *(a2 + 1) = v149;
        }

        *(this + 64) |= 0x100u;
        if (v12 - v149 < 2 || *v149 != 208 || v149[1] != 2)
        {
          continue;
        }

        v43 = (v149 + 2);
        *(a2 + 1) = v43;
LABEL_482:
        if (v43 >= v12 || (v150 = *v43, v150 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 44);
          if (!result)
          {
            return result;
          }

          v151 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 44) = v150;
          v151 = (v43 + 1);
          *(a2 + 1) = v151;
        }

        *(this + 64) |= 0x200u;
        if (v12 - v151 < 2 || *v151 != 216 || v151[1] != 2)
        {
          continue;
        }

        v59 = (v151 + 2);
        *(a2 + 1) = v59;
LABEL_491:
        if (v59 >= v12 || (v152 = *v59, v152 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
          if (!result)
          {
            return result;
          }

          v153 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 45) = v152;
          v153 = (v59 + 1);
          *(a2 + 1) = v153;
        }

        *(this + 64) |= 0x400u;
        if (v12 - v153 < 2 || *v153 != 224 || v153[1] != 2)
        {
          continue;
        }

        v13 = (v153 + 2);
        *(a2 + 1) = v13;
LABEL_500:
        if (v13 >= v12 || (v154 = *v13, v154 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
          if (!result)
          {
            return result;
          }

          v155 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 46) = v154;
          v155 = (v13 + 1);
          *(a2 + 1) = v155;
        }

        *(this + 64) |= 0x800u;
        if (v12 - v155 < 2 || *v155 != 232 || v155[1] != 2)
        {
          continue;
        }

        v23 = (v155 + 2);
        *(a2 + 1) = v23;
LABEL_509:
        if (v23 >= v12 || (v156 = *v23, v156 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 47);
          if (!result)
          {
            return result;
          }

          v157 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 47) = v156;
          v157 = (v23 + 1);
          *(a2 + 1) = v157;
        }

        *(this + 64) |= 0x1000u;
        if (v12 - v157 < 2 || *v157 != 240 || v157[1] != 2)
        {
          continue;
        }

        v54 = (v157 + 2);
        *(a2 + 1) = v54;
LABEL_518:
        if (v54 >= v12 || (v158 = *v54, v158 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v159 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v158;
          v159 = (v54 + 1);
          *(a2 + 1) = v159;
        }

        *(this + 64) |= 0x2000u;
        if (v12 - v159 < 2 || *v159 != 248 || v159[1] != 2)
        {
          continue;
        }

        v68 = (v159 + 2);
        *(a2 + 1) = v68;
LABEL_527:
        if (v68 >= v12 || (v160 = *v68, v160 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
          if (!result)
          {
            return result;
          }

          v161 = *(a2 + 1);
        }

        else
        {
          *(this + 49) = v160;
          v161 = (v68 + 1);
          *(a2 + 1) = v161;
        }

        *(this + 64) |= 0x4000u;
        v10 = *(a2 + 2);
        if (v10 - v161 < 2 || *v161 != 128 || v161[1] != 3)
        {
          continue;
        }

        v16 = (v161 + 2);
        *(a2 + 1) = v16;
LABEL_536:
        if (v16 >= v10 || (v162 = *v16, v162 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
          if (!result)
          {
            return result;
          }

          v163 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 50) = v162;
          v163 = (v16 + 1);
          *(a2 + 1) = v163;
        }

        *(this + 64) |= 0x8000u;
        if (v10 - v163 < 2 || *v163 != 136 || v163[1] != 3)
        {
          continue;
        }

        v26 = (v163 + 2);
        *(a2 + 1) = v26;
LABEL_545:
        if (v26 >= v10 || (v164 = *v26, v164 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
          if (!result)
          {
            return result;
          }

          v165 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 51) = v164;
          v165 = (v26 + 1);
          *(a2 + 1) = v165;
        }

        *(this + 64) |= 0x10000u;
        if (v10 - v165 < 2 || *v165 != 144 || v165[1] != 3)
        {
          continue;
        }

        v29 = (v165 + 2);
        *(a2 + 1) = v29;
LABEL_554:
        if (v29 >= v10 || (v166 = *v29, v166 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v167 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v166;
          v167 = (v29 + 1);
          *(a2 + 1) = v167;
        }

        *(this + 64) |= 0x20000u;
        if (v10 - v167 < 2 || *v167 != 152 || v167[1] != 3)
        {
          continue;
        }

        v11 = (v167 + 2);
        *(a2 + 1) = v11;
LABEL_563:
        if (v11 >= v10 || (v168 = *v11, v168 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 53);
          if (!result)
          {
            return result;
          }

          v169 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 53) = v168;
          v169 = (v11 + 1);
          *(a2 + 1) = v169;
        }

        *(this + 64) |= 0x40000u;
        if (v10 - v169 < 2 || *v169 != 160 || v169[1] != 3)
        {
          continue;
        }

        v69 = (v169 + 2);
        *(a2 + 1) = v69;
LABEL_572:
        if (v69 >= v10 || (v170 = *v69, v170 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 54);
          if (!result)
          {
            return result;
          }

          v171 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 54) = v170;
          v171 = (v69 + 1);
          *(a2 + 1) = v171;
        }

        *(this + 64) |= 0x80000u;
        if (v10 - v171 < 2 || *v171 != 168 || v171[1] != 3)
        {
          continue;
        }

        v67 = (v171 + 2);
        *(a2 + 1) = v67;
LABEL_581:
        if (v67 >= v10 || (v172 = *v67, v172 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 55);
          if (!result)
          {
            return result;
          }

          v173 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 55) = v172;
          v173 = (v67 + 1);
          *(a2 + 1) = v173;
        }

        *(this + 64) |= 0x100000u;
        if (v10 - v173 < 2 || *v173 != 176 || v173[1] != 3)
        {
          continue;
        }

        v15 = (v173 + 2);
        *(a2 + 1) = v15;
LABEL_590:
        if (v15 >= v10 || (v174 = *v15, v174 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 56);
          if (!result)
          {
            return result;
          }

          v175 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 56) = v174;
          v175 = (v15 + 1);
          *(a2 + 1) = v175;
        }

        *(this + 64) |= 0x200000u;
        if (v10 - v175 < 2 || *v175 != 184 || v175[1] != 3)
        {
          continue;
        }

        v65 = (v175 + 2);
        *(a2 + 1) = v65;
LABEL_599:
        if (v65 >= v10 || (v176 = *v65, v176 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 57);
          if (!result)
          {
            return result;
          }

          v177 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 57) = v176;
          v177 = (v65 + 1);
          *(a2 + 1) = v177;
        }

        *(this + 64) |= 0x400000u;
        if (v10 - v177 < 2 || *v177 != 192 || v177[1] != 3)
        {
          continue;
        }

        v66 = (v177 + 2);
        *(a2 + 1) = v66;
LABEL_608:
        if (v66 >= v10 || (v178 = *v66, v178 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 58);
          if (!result)
          {
            return result;
          }

          v179 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 58) = v178;
          v179 = (v66 + 1);
          *(a2 + 1) = v179;
        }

        *(this + 64) |= 0x800000u;
        if (v10 - v179 < 2 || *v179 != 200 || v179[1] != 3)
        {
          continue;
        }

        v17 = (v179 + 2);
        *(a2 + 1) = v17;
LABEL_617:
        if (v17 >= v10 || (v180 = *v17, v180 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 59);
          if (!result)
          {
            return result;
          }

          v181 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 59) = v180;
          v181 = (v17 + 1);
          *(a2 + 1) = v181;
        }

        *(this + 64) |= 0x1000000u;
        if (v10 - v181 < 2 || *v181 != 208 || v181[1] != 3)
        {
          continue;
        }

        v58 = (v181 + 2);
        *(a2 + 1) = v58;
LABEL_626:
        if (v58 >= v10 || (v182 = *v58, v182 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 60);
          if (!result)
          {
            return result;
          }

          v183 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 60) = v182;
          v183 = (v58 + 1);
          *(a2 + 1) = v183;
        }

        *(this + 64) |= 0x2000000u;
        if (v10 - v183 < 2 || *v183 != 216 || v183[1] != 3)
        {
          continue;
        }

        v27 = (v183 + 2);
        *(a2 + 1) = v27;
LABEL_635:
        if (v27 >= v10 || (v184 = *v27, v184 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 61);
          if (!result)
          {
            return result;
          }

          v185 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 61) = v184;
          v185 = v27 + 1;
          *(a2 + 1) = v185;
        }

        *(this + 64) |= 0x4000000u;
        if (v185 != v10 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_126;
        }

        v36 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_143;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v38 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_151;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v30 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_159;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v45 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_167;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v48 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_175;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v39 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_183;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v51 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_191;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v33 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_199;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v50 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_207;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v28 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_215;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v32 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_223;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v47 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_231;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v24 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_239;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v37 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_248;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v22 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_257;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v42 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_266;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v49 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_275;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v57 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_284;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v44 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_293;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v46 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_302;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v55 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_311;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v60 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_320;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v35 = *(a2 + 1);
        goto LABEL_329;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v34 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_338;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v64 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_347;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_356;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v61 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_365;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v62 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_374;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v52 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_383;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v41 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_392;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v53 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_401;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_410;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v21 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_419;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_428;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v19 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_437;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_446;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v63 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_455;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v56 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_464;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v31 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_473;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v43 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_482;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v59 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_491;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_500;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v23 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_509;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v54 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_518;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v68 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_527;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_536;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v26 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_545;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v29 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_554;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_563;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v69 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_572;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v67 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_581;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_590;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v65 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_599;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v66 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_608;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_617;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v58 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_626;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_126;
        }

        v27 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_635;
      default:
LABEL_126:
        if ((TagFallback & 7) == 4)
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

uint64_t awd::metrics::BluetoothLEScan::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 252);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[63];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_63;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[63];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[63];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[14], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[15], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v5[16], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v5[17], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[18], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v5[19], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, v5[20], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, v5[21], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, v5[22], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, v5[23], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, v5[24], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, v5[25], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, v5[26], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, v5[27], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, v5[28], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, v5[29], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, v5[30], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, v5[31], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_91:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, v5[33], a2, a4);
    if ((v5[63] & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_92;
  }

LABEL_90:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, v5[32], a2, a4);
  v6 = v5[63];
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_91;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_92:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, v5[34], a2, a4);
LABEL_33:
  v7 = v5[64];
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, v5[35], a2, a4);
    v7 = v5[64];
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_95;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, v5[36], a2, a4);
  v7 = v5[64];
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_96;
  }

LABEL_95:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, v5[37], a2, a4);
  v7 = v5[64];
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, v5[38], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_98;
  }

LABEL_97:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, v5[39], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x20) == 0)
  {
LABEL_39:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_99;
  }

LABEL_98:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, v5[40], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x40) == 0)
  {
LABEL_40:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_100;
  }

LABEL_99:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, v5[41], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x80) == 0)
  {
LABEL_41:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_101;
  }

LABEL_100:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, v5[42], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x100) == 0)
  {
LABEL_42:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_102;
  }

LABEL_101:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, v5[43], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x200) == 0)
  {
LABEL_43:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_103;
  }

LABEL_102:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, v5[44], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x400) == 0)
  {
LABEL_44:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_104;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, v5[45], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x800) == 0)
  {
LABEL_45:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_105;
  }

LABEL_104:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, v5[46], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x1000) == 0)
  {
LABEL_46:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_106;
  }

LABEL_105:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, v5[47], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x2000) == 0)
  {
LABEL_47:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_107;
  }

LABEL_106:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2E, v5[48], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x4000) == 0)
  {
LABEL_48:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_108;
  }

LABEL_107:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, v5[49], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x8000) == 0)
  {
LABEL_49:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, v5[50], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x10000) == 0)
  {
LABEL_50:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, v5[51], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x20000) == 0)
  {
LABEL_51:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, v5[52], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x40000) == 0)
  {
LABEL_52:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, v5[53], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x80000) == 0)
  {
LABEL_53:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, v5[54], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x100000) == 0)
  {
LABEL_54:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_114;
  }

LABEL_113:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, v5[55], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x200000) == 0)
  {
LABEL_55:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_115;
  }

LABEL_114:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, v5[56], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x400000) == 0)
  {
LABEL_56:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_116;
  }

LABEL_115:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, v5[57], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x800000) == 0)
  {
LABEL_57:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_117;
  }

LABEL_116:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x38, v5[58], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x1000000) == 0)
  {
LABEL_58:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_118:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3A, v5[60], a2, a4);
    if ((v5[64] & 0x4000000) == 0)
    {
      return this;
    }

    goto LABEL_119;
  }

LABEL_117:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x39, v5[59], a2, a4);
  v7 = v5[64];
  if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_118;
  }

LABEL_59:
  if ((v7 & 0x4000000) == 0)
  {
    return this;
  }

LABEL_119:
  v8 = v5[61];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3B, v8, a2, a4);
}